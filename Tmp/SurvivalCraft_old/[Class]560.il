.class public auto ansi beforefieldinit Game.RecipaediaScreen
       extends Game.Screen
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass12_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public valuetype [System.Runtime]System.Nullable`1<int32> 'value'
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
    // 代码大小       261 (0x105)
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
    IL_0024:  ldarg.0
    IL_0025:  ldloc.0
    IL_0026:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_002b:  ldarg.0
    IL_002c:  ldarg.0
    IL_002d:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0032:  ldstr      "BlocksList"
    IL_0037:  ldc.i4.1
    IL_0038:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ListPanelWidget>(string,
                                                                                         bool)
    IL_003d:  stfld      class Game.ListPanelWidget Game.RecipaediaScreen::m_blocksList
    IL_0042:  ldarg.0
    IL_0043:  ldarg.0
    IL_0044:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0049:  ldstr      "Category"
    IL_004e:  ldc.i4.1
    IL_004f:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0054:  stfld      class Game.LabelWidget Game.RecipaediaScreen::m_categoryLabel
    IL_0059:  ldarg.0
    IL_005a:  ldarg.0
    IL_005b:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0060:  ldstr      "PreviousCategory"
    IL_0065:  ldc.i4.1
    IL_0066:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_006b:  stfld      class Game.ButtonWidget Game.RecipaediaScreen::m_prevCategoryButton
    IL_0070:  ldarg.0
    IL_0071:  ldarg.0
    IL_0072:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0077:  ldstr      "NextCategory"
    IL_007c:  ldc.i4.1
    IL_007d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0082:  stfld      class Game.ButtonWidget Game.RecipaediaScreen::m_nextCategoryButton
    IL_0087:  ldarg.0
    IL_0088:  ldarg.0
    IL_0089:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_008e:  ldstr      "DetailsButton"
    IL_0093:  ldc.i4.1
    IL_0094:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0099:  stfld      class Game.ButtonWidget Game.RecipaediaScreen::m_detailsButton
    IL_009e:  ldarg.0
    IL_009f:  ldarg.0
    IL_00a0:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00a5:  ldstr      "RecipesButton"
    IL_00aa:  ldc.i4.1
    IL_00ab:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_00b0:  stfld      class Game.ButtonWidget Game.RecipaediaScreen::m_recipesButton
    IL_00b5:  ldarg.0
    IL_00b6:  ldfld      class [System.Collections]System.Collections.Generic.List`1<string> Game.RecipaediaScreen::m_categories
    IL_00bb:  ldnull
    IL_00bc:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_00c1:  ldarg.0
    IL_00c2:  ldfld      class [System.Collections]System.Collections.Generic.List`1<string> Game.RecipaediaScreen::m_categories
    IL_00c7:  call       valuetype [Engine]Engine.ReadOnlyList`1<string> Game.BlocksManager::get_Categories()
    IL_00cc:  box        valuetype [Engine]Engine.ReadOnlyList`1<string>
    IL_00d1:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::AddRange(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
    IL_00d6:  ldarg.0
    IL_00d7:  ldfld      class Game.ListPanelWidget Game.RecipaediaScreen::m_blocksList
    IL_00dc:  ldarg.0
    IL_00dd:  ldftn      instance class Game.Widget Game.RecipaediaScreen::'<.ctor>b__10_0'(object)
    IL_00e3:  newobj     instance void class [System.Runtime]System.Func`2<object,class Game.Widget>::.ctor(object,
                                                                                                            native int)
    IL_00e8:  callvirt   instance void Game.ListPanelWidget::set_ItemWidgetFactory(class [System.Runtime]System.Func`2<object,class Game.Widget>)
    IL_00ed:  ldarg.0
    IL_00ee:  ldfld      class Game.ListPanelWidget Game.RecipaediaScreen::m_blocksList
    IL_00f3:  ldarg.0
    IL_00f4:  ldftn      instance void Game.RecipaediaScreen::'<.ctor>b__10_1'(class Game.ListPanelWidget,
                                                                               object)
    IL_00fa:  newobj     instance void class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object>::.ctor(object,
                                                                                                                       native int)
    IL_00ff:  callvirt   instance void Game.ListPanelWidget::add_ItemClicked(class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object>)
    IL_0104:  ret
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
    // 代码大小       696 (0x2b8)
    .maxstack  7
    .locals init (class Game.RecipaediaScreen/'<>c__DisplayClass12_0' V_0,
             string V_1,
             int32 V_2,
             valuetype [Engine]Engine.ReadOnlyList`1<object> V_3)
    IL_0000:  newobj     instance void Game.RecipaediaScreen/'<>c__DisplayClass12_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldfld      int32 Game.RecipaediaScreen::m_listCategoryIndex
    IL_000c:  ldarg.0
    IL_000d:  ldfld      int32 Game.RecipaediaScreen::m_categoryIndex
    IL_0012:  beq.s      IL_001a

    IL_0014:  ldarg.0
    IL_0015:  call       instance void Game.RecipaediaScreen::PopulateBlocksList()
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class [System.Collections]System.Collections.Generic.List`1<string> Game.RecipaediaScreen::m_categories
    IL_0020:  ldarg.0
    IL_0021:  ldfld      int32 Game.RecipaediaScreen::m_categoryIndex
    IL_0026:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<string>::get_Item(int32)
    IL_002b:  dup
    IL_002c:  brtrue.s   IL_0034

    IL_002e:  pop
    IL_002f:  ldstr      "All Blocks"
    IL_0034:  stloc.1
    IL_0035:  ldarg.0
    IL_0036:  ldfld      class Game.LabelWidget Game.RecipaediaScreen::m_categoryLabel
    IL_003b:  ldstr      "{0} ({1})"
    IL_0040:  ldc.i4.2
    IL_0041:  newarr     [System.Runtime]System.Object
    IL_0046:  dup
    IL_0047:  ldc.i4.0
    IL_0048:  ldloc.1
    IL_0049:  stelem.ref
    IL_004a:  dup
    IL_004b:  ldc.i4.1
    IL_004c:  ldarg.0
    IL_004d:  ldfld      class Game.ListPanelWidget Game.RecipaediaScreen::m_blocksList
    IL_0052:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<object> Game.ListPanelWidget::get_Items()
    IL_0057:  stloc.3
    IL_0058:  ldloca.s   V_3
    IL_005a:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<object>::get_Count()
    IL_005f:  box        [System.Runtime]System.Int32
    IL_0064:  stelem.ref
    IL_0065:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_006a:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_006f:  ldarg.0
    IL_0070:  ldfld      class Game.ButtonWidget Game.RecipaediaScreen::m_prevCategoryButton
    IL_0075:  ldarg.0
    IL_0076:  ldfld      int32 Game.RecipaediaScreen::m_categoryIndex
    IL_007b:  ldc.i4.0
    IL_007c:  cgt
    IL_007e:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0083:  ldarg.0
    IL_0084:  ldfld      class Game.ButtonWidget Game.RecipaediaScreen::m_nextCategoryButton
    IL_0089:  ldarg.0
    IL_008a:  ldfld      int32 Game.RecipaediaScreen::m_categoryIndex
    IL_008f:  ldarg.0
    IL_0090:  ldfld      class [System.Collections]System.Collections.Generic.List`1<string> Game.RecipaediaScreen::m_categories
    IL_0095:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<string>::get_Count()
    IL_009a:  ldc.i4.1
    IL_009b:  sub
    IL_009c:  clt
    IL_009e:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_00a3:  ldloc.0
    IL_00a4:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.RecipaediaScreen/'<>c__DisplayClass12_0'::'value'
    IL_00a9:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_00af:  ldc.i4.0
    IL_00b0:  stloc.2
    IL_00b1:  ldarg.0
    IL_00b2:  ldfld      class Game.ListPanelWidget Game.RecipaediaScreen::m_blocksList
    IL_00b7:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_00bc:  isinst     [System.Runtime]System.Int32
    IL_00c1:  brfalse.s  IL_00fa

    IL_00c3:  ldloc.0
    IL_00c4:  ldarg.0
    IL_00c5:  ldfld      class Game.ListPanelWidget Game.RecipaediaScreen::m_blocksList
    IL_00ca:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_00cf:  unbox.any  [System.Runtime]System.Int32
    IL_00d4:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_00d9:  stfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.RecipaediaScreen/'<>c__DisplayClass12_0'::'value'
    IL_00de:  call       valuetype [Engine]Engine.ReadOnlyList`1<class Game.CraftingRecipe> Game.CraftingRecipesManager::get_Recipes()
    IL_00e3:  box        valuetype [Engine]Engine.ReadOnlyList`1<class Game.CraftingRecipe>
    IL_00e8:  ldloc.0
    IL_00e9:  ldftn      instance bool Game.RecipaediaScreen/'<>c__DisplayClass12_0'::'<Update>b__0'(class Game.CraftingRecipe)
    IL_00ef:  newobj     instance void class [System.Runtime]System.Func`2<class Game.CraftingRecipe,bool>::.ctor(object,
                                                                                                                  native int)
    IL_00f4:  call       int32 [System.Linq]System.Linq.Enumerable::Count<class Game.CraftingRecipe>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                     class [System.Runtime]System.Func`2<!!0,bool>)
    IL_00f9:  stloc.2
    IL_00fa:  ldloc.2
    IL_00fb:  ldc.i4.0
    IL_00fc:  ble.s      IL_0143

    IL_00fe:  ldarg.0
    IL_00ff:  ldfld      class Game.ButtonWidget Game.RecipaediaScreen::m_recipesButton
    IL_0104:  ldstr      "{0} {1}"
    IL_0109:  ldc.i4.2
    IL_010a:  newarr     [System.Runtime]System.Object
    IL_010f:  dup
    IL_0110:  ldc.i4.0
    IL_0111:  ldloc.2
    IL_0112:  box        [System.Runtime]System.Int32
    IL_0117:  stelem.ref
    IL_0118:  dup
    IL_0119:  ldc.i4.1
    IL_011a:  ldloc.2
    IL_011b:  ldc.i4.1
    IL_011c:  beq.s      IL_0125

    IL_011e:  ldstr      "recipes"
    IL_0123:  br.s       IL_012a

    IL_0125:  ldstr      "recipe"
    IL_012a:  stelem.ref
    IL_012b:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0130:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_0135:  ldarg.0
    IL_0136:  ldfld      class Game.ButtonWidget Game.RecipaediaScreen::m_recipesButton
    IL_013b:  ldc.i4.1
    IL_013c:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0141:  br.s       IL_015f

    IL_0143:  ldarg.0
    IL_0144:  ldfld      class Game.ButtonWidget Game.RecipaediaScreen::m_recipesButton
    IL_0149:  ldstr      "No recipes"
    IL_014e:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_0153:  ldarg.0
    IL_0154:  ldfld      class Game.ButtonWidget Game.RecipaediaScreen::m_recipesButton
    IL_0159:  ldc.i4.0
    IL_015a:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_015f:  ldarg.0
    IL_0160:  ldfld      class Game.ButtonWidget Game.RecipaediaScreen::m_detailsButton
    IL_0165:  ldloc.0
    IL_0166:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.RecipaediaScreen/'<>c__DisplayClass12_0'::'value'
    IL_016b:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0170:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0175:  ldarg.0
    IL_0176:  ldfld      class Game.ButtonWidget Game.RecipaediaScreen::m_prevCategoryButton
    IL_017b:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0180:  brtrue.s   IL_018f

    IL_0182:  ldarg.0
    IL_0183:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0188:  callvirt   instance bool Game.WidgetInput::get_Left()
    IL_018d:  brfalse.s  IL_01a3

    IL_018f:  ldarg.0
    IL_0190:  ldarg.0
    IL_0191:  ldfld      int32 Game.RecipaediaScreen::m_categoryIndex
    IL_0196:  ldc.i4.1
    IL_0197:  sub
    IL_0198:  ldc.i4.0
    IL_0199:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_019e:  stfld      int32 Game.RecipaediaScreen::m_categoryIndex
    IL_01a3:  ldarg.0
    IL_01a4:  ldfld      class Game.ButtonWidget Game.RecipaediaScreen::m_nextCategoryButton
    IL_01a9:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_01ae:  brtrue.s   IL_01bd

    IL_01b0:  ldarg.0
    IL_01b1:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_01b6:  callvirt   instance bool Game.WidgetInput::get_Right()
    IL_01bb:  brfalse.s  IL_01dd

    IL_01bd:  ldarg.0
    IL_01be:  ldarg.0
    IL_01bf:  ldfld      int32 Game.RecipaediaScreen::m_categoryIndex
    IL_01c4:  ldc.i4.1
    IL_01c5:  add
    IL_01c6:  ldarg.0
    IL_01c7:  ldfld      class [System.Collections]System.Collections.Generic.List`1<string> Game.RecipaediaScreen::m_categories
    IL_01cc:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<string>::get_Count()
    IL_01d1:  ldc.i4.1
    IL_01d2:  sub
    IL_01d3:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_01d8:  stfld      int32 Game.RecipaediaScreen::m_categoryIndex
    IL_01dd:  ldloc.0
    IL_01de:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.RecipaediaScreen/'<>c__DisplayClass12_0'::'value'
    IL_01e3:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_01e8:  brfalse.s  IL_0237

    IL_01ea:  ldarg.0
    IL_01eb:  ldfld      class Game.ButtonWidget Game.RecipaediaScreen::m_detailsButton
    IL_01f0:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_01f5:  brfalse.s  IL_0237

    IL_01f7:  ldstr      "RecipaediaDescription"
    IL_01fc:  ldc.i4.2
    IL_01fd:  newarr     [System.Runtime]System.Object
    IL_0202:  dup
    IL_0203:  ldc.i4.0
    IL_0204:  ldloc.0
    IL_0205:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.RecipaediaScreen/'<>c__DisplayClass12_0'::'value'
    IL_020a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_020f:  box        [System.Runtime]System.Int32
    IL_0214:  stelem.ref
    IL_0215:  dup
    IL_0216:  ldc.i4.1
    IL_0217:  ldarg.0
    IL_0218:  ldfld      class Game.ListPanelWidget Game.RecipaediaScreen::m_blocksList
    IL_021d:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<object> Game.ListPanelWidget::get_Items()
    IL_0222:  box        valuetype [Engine]Engine.ReadOnlyList`1<object>
    IL_0227:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Cast<int32>(class [System.Runtime]System.Collections.IEnumerable)
    IL_022c:  call       class [System.Collections]System.Collections.Generic.List`1<!!0> [System.Linq]System.Linq.Enumerable::ToList<int32>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0231:  stelem.ref
    IL_0232:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_0237:  ldloc.0
    IL_0238:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.RecipaediaScreen/'<>c__DisplayClass12_0'::'value'
    IL_023d:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0242:  brfalse.s  IL_0274

    IL_0244:  ldarg.0
    IL_0245:  ldfld      class Game.ButtonWidget Game.RecipaediaScreen::m_recipesButton
    IL_024a:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_024f:  brfalse.s  IL_0274

    IL_0251:  ldstr      "RecipaediaRecipes"
    IL_0256:  ldc.i4.1
    IL_0257:  newarr     [System.Runtime]System.Object
    IL_025c:  dup
    IL_025d:  ldc.i4.0
    IL_025e:  ldloc.0
    IL_025f:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.RecipaediaScreen/'<>c__DisplayClass12_0'::'value'
    IL_0264:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0269:  box        [System.Runtime]System.Int32
    IL_026e:  stelem.ref
    IL_026f:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_0274:  ldarg.0
    IL_0275:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_027a:  callvirt   instance bool Game.WidgetInput::get_Back()
    IL_027f:  brtrue.s   IL_02a6

    IL_0281:  ldarg.0
    IL_0282:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0287:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_028c:  brtrue.s   IL_02a6

    IL_028e:  ldarg.0
    IL_028f:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0294:  ldstr      "TopBar.Back"
    IL_0299:  ldc.i4.1
    IL_029a:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_029f:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_02a4:  brfalse.s  IL_02b7

    IL_02a6:  ldarg.0
    IL_02a7:  ldfld      class Game.Screen Game.RecipaediaScreen::m_previousScreen
    IL_02ac:  ldc.i4.0
    IL_02ad:  newarr     [System.Runtime]System.Object
    IL_02b2:  call       void Game.ScreensManager::SwitchScreen(class Game.Screen,
                                                                object[])
    IL_02b7:  ret
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
    // 代码大小       129 (0x81)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             class Game.Block V_2,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_3)
    IL_0000:  ldarg.1
    IL_0001:  unbox.any  [System.Runtime]System.Int32
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_000d:  stloc.1
    IL_000e:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0013:  ldloc.1
    IL_0014:  ldelem.ref
    IL_0015:  stloc.2
    IL_0016:  ldstr      "Widgets/RecipaediaItem"
    IL_001b:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0020:  stloc.3
    IL_0021:  ldarg.0
    IL_0022:  ldloc.3
    IL_0023:  ldnull
    IL_0024:  call       class Game.Widget Game.WidgetsManager::LoadWidget(object,
                                                                           class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                           class Game.ContainerWidget)
    IL_0029:  castclass  Game.ContainerWidget
    IL_002e:  dup
    IL_002f:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0034:  ldstr      "RecipaediaItem.Icon"
    IL_0039:  ldc.i4.1
    IL_003a:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.BlockIconWidget>(string,
                                                                                         bool)
    IL_003f:  ldloc.0
    IL_0040:  callvirt   instance void Game.BlockIconWidget::set_Value(int32)
    IL_0045:  dup
    IL_0046:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_004b:  ldstr      "RecipaediaItem.Text"
    IL_0050:  ldc.i4.1
    IL_0051:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0056:  ldloc.2
    IL_0057:  ldnull
    IL_0058:  ldloc.0
    IL_0059:  callvirt   instance string Game.Block::GetDisplayName(class Game.SubsystemTerrain,
                                                                    int32)
    IL_005e:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0063:  dup
    IL_0064:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0069:  ldstr      "RecipaediaItem.Details"
    IL_006e:  ldc.i4.1
    IL_006f:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0074:  ldloc.2
    IL_0075:  ldloc.0
    IL_0076:  callvirt   instance string Game.Block::GetDescription(int32)
    IL_007b:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0080:  ret
  } // end of method RecipaediaScreen::'<.ctor>b__10_0'

  .method private hidebysig instance void 
          '<.ctor>b__10_1'(class Game.ListPanelWidget sender,
                           object item) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       72 (0x48)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ListPanelWidget Game.RecipaediaScreen::m_blocksList
    IL_0006:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_000b:  ldarg.2
    IL_000c:  bne.un.s   IL_0047

    IL_000e:  ldarg.2
    IL_000f:  isinst     [System.Runtime]System.Int32
    IL_0014:  brfalse.s  IL_0047

    IL_0016:  ldstr      "RecipaediaDescription"
    IL_001b:  ldc.i4.2
    IL_001c:  newarr     [System.Runtime]System.Object
    IL_0021:  dup
    IL_0022:  ldc.i4.0
    IL_0023:  ldarg.2
    IL_0024:  stelem.ref
    IL_0025:  dup
    IL_0026:  ldc.i4.1
    IL_0027:  ldarg.0
    IL_0028:  ldfld      class Game.ListPanelWidget Game.RecipaediaScreen::m_blocksList
    IL_002d:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<object> Game.ListPanelWidget::get_Items()
    IL_0032:  box        valuetype [Engine]Engine.ReadOnlyList`1<object>
    IL_0037:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Cast<int32>(class [System.Runtime]System.Collections.IEnumerable)
    IL_003c:  call       class [System.Collections]System.Collections.Generic.List`1<!!0> [System.Linq]System.Linq.Enumerable::ToList<int32>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0041:  stelem.ref
    IL_0042:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_0047:  ret
  } // end of method RecipaediaScreen::'<.ctor>b__10_1'

} // end of class Game.RecipaediaScreen