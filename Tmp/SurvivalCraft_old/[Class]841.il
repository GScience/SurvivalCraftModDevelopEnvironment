.class public auto ansi beforefieldinit Game.FurnitureInventoryPanel
       extends Game.CanvasWidget
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.FurnitureInventoryPanel/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<object,string> '<>9__18_2'
    .field public static class [System.Runtime]System.Action`1<object> '<>9__18_3'
    .field public static class [System.Runtime]System.Func`2<object,string> '<>9__18_10'
    .field public static class [System.Runtime]System.Action`1<object> '<>9__18_11'
    .field public static class [System.Runtime]System.Func`2<class Game.Widget,class Game.InventorySlotWidget> '<>9__22_0'
    .field public static class [System.Runtime]System.Func`2<class Game.InventorySlotWidget,bool> '<>9__22_1'
    .field public static class [System.Runtime]System.Func`2<object,string> '<>9__27_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.FurnitureInventoryPanel/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.FurnitureInventoryPanel/'<>c' Game.FurnitureInventoryPanel/'<>c'::'<>9'
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

    .method assembly hidebysig instance string 
            '<Update>b__18_2'(object t) cil managed
    {
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  castclass  class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>
      IL_0006:  callvirt   instance !0 class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>::get_Item1()
      IL_000b:  ret
    } // end of method '<>c'::'<Update>b__18_2'

    .method assembly hidebysig instance void 
            '<Update>b__18_3'(object t) cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  castclass  class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>
      IL_0006:  callvirt   instance !1 class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>::get_Item2()
      IL_000b:  callvirt   instance void [System.Runtime]System.Action::Invoke()
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__18_3'

    .method assembly hidebysig instance string 
            '<Update>b__18_10'(object t) cil managed
    {
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  castclass  class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>
      IL_0006:  callvirt   instance !0 class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>::get_Item1()
      IL_000b:  ret
    } // end of method '<>c'::'<Update>b__18_10'

    .method assembly hidebysig instance void 
            '<Update>b__18_11'(object t) cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  castclass  class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>
      IL_0006:  callvirt   instance !1 class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>::get_Item2()
      IL_000b:  callvirt   instance void [System.Runtime]System.Action::Invoke()
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__18_11'

    .method assembly hidebysig instance class Game.InventorySlotWidget 
            '<AssignInventorySlots>b__22_0'(class Game.Widget w) cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  isinst     Game.InventorySlotWidget
      IL_0006:  ret
    } // end of method '<>c'::'<AssignInventorySlots>b__22_0'

    .method assembly hidebysig instance bool 
            '<AssignInventorySlots>b__22_1'(class Game.InventorySlotWidget w) cil managed
    {
      // 代码大小       5 (0x5)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldnull
      IL_0002:  cgt.un
      IL_0004:  ret
    } // end of method '<>c'::'<AssignInventorySlots>b__22_1'

    .method assembly hidebysig instance string 
            '<ImportFurnitureSet>b__27_0'(object s) cil managed
    {
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  castclass  [System.Runtime]System.String
      IL_0006:  call       string Game.FurniturePacksManager::GetDisplayName(string)
      IL_000b:  ret
    } // end of method '<>c'::'<ImportFurnitureSet>b__27_0'

  } // end of class '<>c'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass25_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class Game.FurnitureSet furnitureSet
    .field public class Game.FurnitureInventoryPanel '<>4__this'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass25_0'::.ctor

    .method assembly hidebysig instance void 
            '<RenameFurnitureSet>b__0'(string s) cil managed
    {
      // 代码大小       27 (0x1b)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  brfalse.s  IL_001a

      IL_0003:  ldarg.0
      IL_0004:  ldfld      class Game.FurnitureSet Game.FurnitureInventoryPanel/'<>c__DisplayClass25_0'::furnitureSet
      IL_0009:  ldarg.1
      IL_000a:  stfld      string Game.FurnitureSet::Name
      IL_000f:  ldarg.0
      IL_0010:  ldfld      class Game.FurnitureInventoryPanel Game.FurnitureInventoryPanel/'<>c__DisplayClass25_0'::'<>4__this'
      IL_0015:  call       instance void Game.FurnitureInventoryPanel::Invalidate()
      IL_001a:  ret
    } // end of method '<>c__DisplayClass25_0'::'<RenameFurnitureSet>b__0'

  } // end of class '<>c__DisplayClass25_0'

  .field private class Game.CreativeInventoryWidget m_creativeInventoryWidget
  .field private class Game.ListPanelWidget m_furnitureSetList
  .field private class Game.GridPanelWidget m_inventoryGrid
  .field private class Game.ButtonWidget m_addButton
  .field private class Game.ButtonWidget m_moreButton
  .field private int32 m_pagesCount
  .field private int32 m_assignedPage
  .field private bool m_ignoreSelectionChanged
  .field private bool m_populateNeeded
  .field private class Game.ComponentFurnitureInventory '<ComponentFurnitureInventory>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.SubsystemFurnitureBlockBehavior '<SubsystemFurnitureBlockBehavior>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.CreativeInventoryWidget creativeInventoryWidget) cil managed
  {
    // 代码大小       321 (0x141)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0,
             int32 V_1,
             int32 V_2,
             class Game.InventorySlotWidget V_3)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.CanvasWidget::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      class Game.CreativeInventoryWidget Game.FurnitureInventoryPanel::m_creativeInventoryWidget
    IL_000d:  ldarg.0
    IL_000e:  ldarg.1
    IL_000f:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity Game.CreativeInventoryWidget::get_Entity()
    IL_0014:  ldc.i4.1
    IL_0015:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentFurnitureInventory>(bool)
    IL_001a:  call       instance void Game.FurnitureInventoryPanel::set_ComponentFurnitureInventory(class Game.ComponentFurnitureInventory)
    IL_001f:  ldarg.0
    IL_0020:  ldarg.0
    IL_0021:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_0026:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemFurnitureBlockBehavior>(bool)
    IL_0031:  call       instance void Game.FurnitureInventoryPanel::set_SubsystemFurnitureBlockBehavior(class Game.SubsystemFurnitureBlockBehavior)
    IL_0036:  ldstr      "Widgets/FurnitureInventoryPanel"
    IL_003b:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0040:  stloc.0
    IL_0041:  ldarg.0
    IL_0042:  ldarg.0
    IL_0043:  ldloc.0
    IL_0044:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0049:  ldarg.0
    IL_004a:  ldarg.0
    IL_004b:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0050:  ldstr      "FurnitureSetList"
    IL_0055:  ldc.i4.1
    IL_0056:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ListPanelWidget>(string,
                                                                                              bool)
    IL_005b:  stfld      class Game.ListPanelWidget Game.FurnitureInventoryPanel::m_furnitureSetList
    IL_0060:  ldarg.0
    IL_0061:  ldarg.0
    IL_0062:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0067:  ldstr      "InventoryGrid"
    IL_006c:  ldc.i4.1
    IL_006d:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.GridPanelWidget>(string,
                                                                                              bool)
    IL_0072:  stfld      class Game.GridPanelWidget Game.FurnitureInventoryPanel::m_inventoryGrid
    IL_0077:  ldarg.0
    IL_0078:  ldarg.0
    IL_0079:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_007e:  ldstr      "AddButton"
    IL_0083:  ldc.i4.1
    IL_0084:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0089:  stfld      class Game.ButtonWidget Game.FurnitureInventoryPanel::m_addButton
    IL_008e:  ldarg.0
    IL_008f:  ldarg.0
    IL_0090:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0095:  ldstr      "MoreButton"
    IL_009a:  ldc.i4.1
    IL_009b:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00a0:  stfld      class Game.ButtonWidget Game.FurnitureInventoryPanel::m_moreButton
    IL_00a5:  ldc.i4.0
    IL_00a6:  stloc.1
    IL_00a7:  br.s       IL_00ed

    IL_00a9:  ldc.i4.0
    IL_00aa:  stloc.2
    IL_00ab:  br.s       IL_00db

    IL_00ad:  newobj     instance void Game.InventorySlotWidget::.ctor()
    IL_00b2:  stloc.3
    IL_00b3:  ldarg.0
    IL_00b4:  ldfld      class Game.GridPanelWidget Game.FurnitureInventoryPanel::m_inventoryGrid
    IL_00b9:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00be:  ldloc.3
    IL_00bf:  callvirt   instance void Game.WidgetsContainer::Add(class Game.Widget)
    IL_00c4:  ldarg.0
    IL_00c5:  ldfld      class Game.GridPanelWidget Game.FurnitureInventoryPanel::m_inventoryGrid
    IL_00ca:  ldloc.3
    IL_00cb:  ldloc.2
    IL_00cc:  ldloc.1
    IL_00cd:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_00d2:  callvirt   instance void Game.GridPanelWidget::SetWidgetCell(class Game.Widget,
                                                                           valuetype [Engine]Engine.Point2)
    IL_00d7:  ldloc.2
    IL_00d8:  ldc.i4.1
    IL_00d9:  add
    IL_00da:  stloc.2
    IL_00db:  ldloc.2
    IL_00dc:  ldarg.0
    IL_00dd:  ldfld      class Game.GridPanelWidget Game.FurnitureInventoryPanel::m_inventoryGrid
    IL_00e2:  callvirt   instance int32 Game.GridPanelWidget::get_ColumnsCount()
    IL_00e7:  blt.s      IL_00ad

    IL_00e9:  ldloc.1
    IL_00ea:  ldc.i4.1
    IL_00eb:  add
    IL_00ec:  stloc.1
    IL_00ed:  ldloc.1
    IL_00ee:  ldarg.0
    IL_00ef:  ldfld      class Game.GridPanelWidget Game.FurnitureInventoryPanel::m_inventoryGrid
    IL_00f4:  callvirt   instance int32 Game.GridPanelWidget::get_RowsCount()
    IL_00f9:  blt.s      IL_00a9

    IL_00fb:  ldarg.0
    IL_00fc:  ldfld      class Game.ListPanelWidget Game.FurnitureInventoryPanel::m_furnitureSetList
    IL_0101:  dup
    IL_0102:  callvirt   instance class [System.Runtime]System.Func`2<object,class Game.Widget> Game.ListPanelWidget::get_ItemWidgetFactory()
    IL_0107:  ldarg.0
    IL_0108:  ldftn      instance class Game.Widget Game.FurnitureInventoryPanel::'<.ctor>b__9_0'(object)
    IL_010e:  newobj     instance void class [System.Runtime]System.Func`2<object,class Game.Widget>::.ctor(object,
                                                                                                            native int)
    IL_0113:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Combine(class [System.Runtime]System.Delegate,
                                                                                                        class [System.Runtime]System.Delegate)
    IL_0118:  castclass  class [System.Runtime]System.Func`2<object,class Game.Widget>
    IL_011d:  callvirt   instance void Game.ListPanelWidget::set_ItemWidgetFactory(class [System.Runtime]System.Func`2<object,class Game.Widget>)
    IL_0122:  ldarg.0
    IL_0123:  ldfld      class Game.ListPanelWidget Game.FurnitureInventoryPanel::m_furnitureSetList
    IL_0128:  ldarg.0
    IL_0129:  ldftn      instance void Game.FurnitureInventoryPanel::'<.ctor>b__9_1'(class Game.ListPanelWidget)
    IL_012f:  newobj     instance void class [System.Runtime]System.Action`1<class Game.ListPanelWidget>::.ctor(object,
                                                                                                                native int)
    IL_0134:  callvirt   instance void Game.ListPanelWidget::add_SelectionChanged(class [System.Runtime]System.Action`1<class Game.ListPanelWidget>)
    IL_0139:  ldarg.0
    IL_013a:  ldc.i4.1
    IL_013b:  stfld      bool Game.FurnitureInventoryPanel::m_populateNeeded
    IL_0140:  ret
  } // end of method FurnitureInventoryPanel::.ctor

  .method public hidebysig specialname instance class Game.ComponentFurnitureInventory 
          get_ComponentFurnitureInventory() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::'<ComponentFurnitureInventory>k__BackingField'
    IL_0006:  ret
  } // end of method FurnitureInventoryPanel::get_ComponentFurnitureInventory

  .method private hidebysig specialname instance void 
          set_ComponentFurnitureInventory(class Game.ComponentFurnitureInventory 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::'<ComponentFurnitureInventory>k__BackingField'
    IL_0007:  ret
  } // end of method FurnitureInventoryPanel::set_ComponentFurnitureInventory

  .method public hidebysig specialname instance class Game.SubsystemFurnitureBlockBehavior 
          get_SubsystemFurnitureBlockBehavior() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemFurnitureBlockBehavior Game.FurnitureInventoryPanel::'<SubsystemFurnitureBlockBehavior>k__BackingField'
    IL_0006:  ret
  } // end of method FurnitureInventoryPanel::get_SubsystemFurnitureBlockBehavior

  .method private hidebysig specialname instance void 
          set_SubsystemFurnitureBlockBehavior(class Game.SubsystemFurnitureBlockBehavior 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.SubsystemFurnitureBlockBehavior Game.FurnitureInventoryPanel::'<SubsystemFurnitureBlockBehavior>k__BackingField'
    IL_0007:  ret
  } // end of method FurnitureInventoryPanel::set_SubsystemFurnitureBlockBehavior

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       867 (0x363)
    .maxstack  7
    .locals init (valuetype Game.InputState V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             int32 V_2,
             class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>> V_3,
             class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>> V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.FurnitureInventoryPanel::m_populateNeeded
    IL_0006:  brfalse.s  IL_0015

    IL_0008:  ldarg.0
    IL_0009:  call       instance void Game.FurnitureInventoryPanel::Populate()
    IL_000e:  ldarg.0
    IL_000f:  ldc.i4.0
    IL_0010:  stfld      bool Game.FurnitureInventoryPanel::m_populateNeeded
    IL_0015:  ldarg.0
    IL_0016:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_001b:  callvirt   instance int32 Game.ComponentFurnitureInventory::get_PageIndex()
    IL_0020:  ldarg.0
    IL_0021:  ldfld      int32 Game.FurnitureInventoryPanel::m_assignedPage
    IL_0026:  beq.s      IL_002e

    IL_0028:  ldarg.0
    IL_0029:  call       instance void Game.FurnitureInventoryPanel::AssignInventorySlots()
    IL_002e:  ldarg.0
    IL_002f:  ldfld      class Game.CreativeInventoryWidget Game.FurnitureInventoryPanel::m_creativeInventoryWidget
    IL_0034:  callvirt   instance class Game.ButtonWidget Game.CreativeInventoryWidget::get_PageUpButton()
    IL_0039:  ldarg.0
    IL_003a:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_003f:  callvirt   instance int32 Game.ComponentFurnitureInventory::get_PageIndex()
    IL_0044:  ldc.i4.0
    IL_0045:  cgt
    IL_0047:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_004c:  ldarg.0
    IL_004d:  ldfld      class Game.CreativeInventoryWidget Game.FurnitureInventoryPanel::m_creativeInventoryWidget
    IL_0052:  callvirt   instance class Game.ButtonWidget Game.CreativeInventoryWidget::get_PageDownButton()
    IL_0057:  ldarg.0
    IL_0058:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_005d:  callvirt   instance int32 Game.ComponentFurnitureInventory::get_PageIndex()
    IL_0062:  ldarg.0
    IL_0063:  ldfld      int32 Game.FurnitureInventoryPanel::m_pagesCount
    IL_0068:  ldc.i4.1
    IL_0069:  sub
    IL_006a:  clt
    IL_006c:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0071:  ldarg.0
    IL_0072:  ldfld      class Game.CreativeInventoryWidget Game.FurnitureInventoryPanel::m_creativeInventoryWidget
    IL_0077:  callvirt   instance class Game.LabelWidget Game.CreativeInventoryWidget::get_PageLabel()
    IL_007c:  ldstr      "{0}/{1}"
    IL_0081:  ldc.i4.2
    IL_0082:  newarr     [System.Runtime]System.Object
    IL_0087:  dup
    IL_0088:  ldc.i4.0
    IL_0089:  ldarg.0
    IL_008a:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_008f:  callvirt   instance int32 Game.ComponentFurnitureInventory::get_PageIndex()
    IL_0094:  ldc.i4.1
    IL_0095:  add
    IL_0096:  box        [System.Runtime]System.Int32
    IL_009b:  stelem.ref
    IL_009c:  dup
    IL_009d:  ldc.i4.1
    IL_009e:  ldarg.0
    IL_009f:  ldfld      int32 Game.FurnitureInventoryPanel::m_pagesCount
    IL_00a4:  box        [System.Runtime]System.Int32
    IL_00a9:  stelem.ref
    IL_00aa:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00af:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00b4:  ldarg.0
    IL_00b5:  ldfld      class Game.ButtonWidget Game.FurnitureInventoryPanel::m_moreButton
    IL_00ba:  ldarg.0
    IL_00bb:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_00c0:  callvirt   instance class Game.FurnitureSet Game.ComponentFurnitureInventory::get_FurnitureSet()
    IL_00c5:  ldnull
    IL_00c6:  cgt.un
    IL_00c8:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_00cd:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_00d2:  stloc.0
    IL_00d3:  ldloca.s   V_0
    IL_00d5:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.InputState::Scroll
    IL_00da:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_00df:  brfalse.s  IL_0137

    IL_00e1:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_00e6:  stloc.0
    IL_00e7:  ldloca.s   V_0
    IL_00e9:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.InputState::Scroll
    IL_00ee:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_00f3:  stloc.1
    IL_00f4:  ldloca.s   V_1
    IL_00f6:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XY()
    IL_00fb:  call       class Game.Widget Game.WidgetsManager::HitTest(valuetype [Engine]Engine.Vector2)
    IL_0100:  ldarg.0
    IL_0101:  ldfld      class Game.GridPanelWidget Game.FurnitureInventoryPanel::m_inventoryGrid
    IL_0106:  callvirt   instance bool Game.Widget::IsChildWidgetOf(class Game.ContainerWidget)
    IL_010b:  brfalse.s  IL_0137

    IL_010d:  ldarg.0
    IL_010e:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_0113:  dup
    IL_0114:  callvirt   instance int32 Game.ComponentFurnitureInventory::get_PageIndex()
    IL_0119:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_011e:  stloc.0
    IL_011f:  ldloca.s   V_0
    IL_0121:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.InputState::Scroll
    IL_0126:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_012b:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0130:  conv.i4
    IL_0131:  sub
    IL_0132:  callvirt   instance void Game.ComponentFurnitureInventory::set_PageIndex(int32)
    IL_0137:  ldarg.0
    IL_0138:  ldfld      class Game.CreativeInventoryWidget Game.FurnitureInventoryPanel::m_creativeInventoryWidget
    IL_013d:  callvirt   instance class Game.ButtonWidget Game.CreativeInventoryWidget::get_PageUpButton()
    IL_0142:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0147:  brfalse.s  IL_015e

    IL_0149:  ldarg.0
    IL_014a:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_014f:  dup
    IL_0150:  callvirt   instance int32 Game.ComponentFurnitureInventory::get_PageIndex()
    IL_0155:  ldc.i4.1
    IL_0156:  sub
    IL_0157:  stloc.2
    IL_0158:  ldloc.2
    IL_0159:  callvirt   instance void Game.ComponentFurnitureInventory::set_PageIndex(int32)
    IL_015e:  ldarg.0
    IL_015f:  ldfld      class Game.CreativeInventoryWidget Game.FurnitureInventoryPanel::m_creativeInventoryWidget
    IL_0164:  callvirt   instance class Game.ButtonWidget Game.CreativeInventoryWidget::get_PageDownButton()
    IL_0169:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_016e:  brfalse.s  IL_0185

    IL_0170:  ldarg.0
    IL_0171:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_0176:  dup
    IL_0177:  callvirt   instance int32 Game.ComponentFurnitureInventory::get_PageIndex()
    IL_017c:  ldc.i4.1
    IL_017d:  add
    IL_017e:  stloc.2
    IL_017f:  ldloc.2
    IL_0180:  callvirt   instance void Game.ComponentFurnitureInventory::set_PageIndex(int32)
    IL_0185:  ldarg.0
    IL_0186:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_018b:  ldarg.0
    IL_018c:  ldfld      int32 Game.FurnitureInventoryPanel::m_pagesCount
    IL_0191:  ldc.i4.0
    IL_0192:  bgt.s      IL_0197

    IL_0194:  ldc.i4.0
    IL_0195:  br.s       IL_01b0

    IL_0197:  ldarg.0
    IL_0198:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_019d:  callvirt   instance int32 Game.ComponentFurnitureInventory::get_PageIndex()
    IL_01a2:  ldc.i4.0
    IL_01a3:  ldarg.0
    IL_01a4:  ldfld      int32 Game.FurnitureInventoryPanel::m_pagesCount
    IL_01a9:  ldc.i4.1
    IL_01aa:  sub
    IL_01ab:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_01b0:  callvirt   instance void Game.ComponentFurnitureInventory::set_PageIndex(int32)
    IL_01b5:  ldarg.0
    IL_01b6:  ldfld      class Game.ButtonWidget Game.FurnitureInventoryPanel::m_addButton
    IL_01bb:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_01c0:  brfalse    IL_0256

    IL_01c5:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>>::.ctor()
    IL_01ca:  stloc.3
    IL_01cb:  ldloc.3
    IL_01cc:  ldstr      "New"
    IL_01d1:  ldarg.0
    IL_01d2:  ldftn      instance void Game.FurnitureInventoryPanel::'<Update>b__18_0'()
    IL_01d8:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01dd:  newobj     instance void class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>::.ctor(!0,
                                                                                                                               !1)
    IL_01e2:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>>::Add(!0)
    IL_01e7:  ldloc.3
    IL_01e8:  ldstr      "Import From Content"
    IL_01ed:  ldarg.0
    IL_01ee:  ldftn      instance void Game.FurnitureInventoryPanel::'<Update>b__18_1'()
    IL_01f4:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01f9:  newobj     instance void class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>::.ctor(!0,
                                                                                                                               !1)
    IL_01fe:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>>::Add(!0)
    IL_0203:  ldstr      "Add Furniture Set"
    IL_0208:  ldloc.3
    IL_0209:  ldc.r4     64.
    IL_020e:  ldsfld     class [System.Runtime]System.Func`2<object,string> Game.FurnitureInventoryPanel/'<>c'::'<>9__18_2'
    IL_0213:  dup
    IL_0214:  brtrue.s   IL_022d

    IL_0216:  pop
    IL_0217:  ldsfld     class Game.FurnitureInventoryPanel/'<>c' Game.FurnitureInventoryPanel/'<>c'::'<>9'
    IL_021c:  ldftn      instance string Game.FurnitureInventoryPanel/'<>c'::'<Update>b__18_2'(object)
    IL_0222:  newobj     instance void class [System.Runtime]System.Func`2<object,string>::.ctor(object,
                                                                                                 native int)
    IL_0227:  dup
    IL_0228:  stsfld     class [System.Runtime]System.Func`2<object,string> Game.FurnitureInventoryPanel/'<>c'::'<>9__18_2'
    IL_022d:  ldsfld     class [System.Runtime]System.Action`1<object> Game.FurnitureInventoryPanel/'<>c'::'<>9__18_3'
    IL_0232:  dup
    IL_0233:  brtrue.s   IL_024c

    IL_0235:  pop
    IL_0236:  ldsfld     class Game.FurnitureInventoryPanel/'<>c' Game.FurnitureInventoryPanel/'<>c'::'<>9'
    IL_023b:  ldftn      instance void Game.FurnitureInventoryPanel/'<>c'::'<Update>b__18_3'(object)
    IL_0241:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_0246:  dup
    IL_0247:  stsfld     class [System.Runtime]System.Action`1<object> Game.FurnitureInventoryPanel/'<>c'::'<>9__18_3'
    IL_024c:  newobj     instance void Game.ListSelectionDialog::.ctor(string,
                                                                       class [System.Runtime]System.Collections.IEnumerable,
                                                                       float32,
                                                                       class [System.Runtime]System.Func`2<object,string>,
                                                                       class [System.Runtime]System.Action`1<object>)
    IL_0251:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_0256:  ldarg.0
    IL_0257:  ldfld      class Game.ButtonWidget Game.FurnitureInventoryPanel::m_moreButton
    IL_025c:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0261:  brfalse    IL_0362

    IL_0266:  ldarg.0
    IL_0267:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_026c:  callvirt   instance class Game.FurnitureSet Game.ComponentFurnitureInventory::get_FurnitureSet()
    IL_0271:  brfalse    IL_0362

    IL_0276:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>>::.ctor()
    IL_027b:  stloc.s    V_4
    IL_027d:  ldloc.s    V_4
    IL_027f:  ldstr      "Rename"
    IL_0284:  ldarg.0
    IL_0285:  ldftn      instance void Game.FurnitureInventoryPanel::'<Update>b__18_4'()
    IL_028b:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0290:  newobj     instance void class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>::.ctor(!0,
                                                                                                                               !1)
    IL_0295:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>>::Add(!0)
    IL_029a:  ldloc.s    V_4
    IL_029c:  ldstr      "Delete"
    IL_02a1:  ldarg.0
    IL_02a2:  ldftn      instance void Game.FurnitureInventoryPanel::'<Update>b__18_5'()
    IL_02a8:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_02ad:  newobj     instance void class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>::.ctor(!0,
                                                                                                                               !1)
    IL_02b2:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>>::Add(!0)
    IL_02b7:  ldloc.s    V_4
    IL_02b9:  ldstr      "Move Up"
    IL_02be:  ldarg.0
    IL_02bf:  ldftn      instance void Game.FurnitureInventoryPanel::'<Update>b__18_7'()
    IL_02c5:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_02ca:  newobj     instance void class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>::.ctor(!0,
                                                                                                                               !1)
    IL_02cf:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>>::Add(!0)
    IL_02d4:  ldloc.s    V_4
    IL_02d6:  ldstr      "Move Down"
    IL_02db:  ldarg.0
    IL_02dc:  ldftn      instance void Game.FurnitureInventoryPanel::'<Update>b__18_8'()
    IL_02e2:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_02e7:  newobj     instance void class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>::.ctor(!0,
                                                                                                                               !1)
    IL_02ec:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>>::Add(!0)
    IL_02f1:  ldloc.s    V_4
    IL_02f3:  ldstr      "Export To Content"
    IL_02f8:  ldarg.0
    IL_02f9:  ldftn      instance void Game.FurnitureInventoryPanel::'<Update>b__18_9'()
    IL_02ff:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0304:  newobj     instance void class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>::.ctor(!0,
                                                                                                                               !1)
    IL_0309:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>>::Add(!0)
    IL_030e:  ldstr      "Furniture Set Action"
    IL_0313:  ldloc.s    V_4
    IL_0315:  ldc.r4     64.
    IL_031a:  ldsfld     class [System.Runtime]System.Func`2<object,string> Game.FurnitureInventoryPanel/'<>c'::'<>9__18_10'
    IL_031f:  dup
    IL_0320:  brtrue.s   IL_0339

    IL_0322:  pop
    IL_0323:  ldsfld     class Game.FurnitureInventoryPanel/'<>c' Game.FurnitureInventoryPanel/'<>c'::'<>9'
    IL_0328:  ldftn      instance string Game.FurnitureInventoryPanel/'<>c'::'<Update>b__18_10'(object)
    IL_032e:  newobj     instance void class [System.Runtime]System.Func`2<object,string>::.ctor(object,
                                                                                                 native int)
    IL_0333:  dup
    IL_0334:  stsfld     class [System.Runtime]System.Func`2<object,string> Game.FurnitureInventoryPanel/'<>c'::'<>9__18_10'
    IL_0339:  ldsfld     class [System.Runtime]System.Action`1<object> Game.FurnitureInventoryPanel/'<>c'::'<>9__18_11'
    IL_033e:  dup
    IL_033f:  brtrue.s   IL_0358

    IL_0341:  pop
    IL_0342:  ldsfld     class Game.FurnitureInventoryPanel/'<>c' Game.FurnitureInventoryPanel/'<>c'::'<>9'
    IL_0347:  ldftn      instance void Game.FurnitureInventoryPanel/'<>c'::'<Update>b__18_11'(object)
    IL_034d:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_0352:  dup
    IL_0353:  stsfld     class [System.Runtime]System.Action`1<object> Game.FurnitureInventoryPanel/'<>c'::'<>9__18_11'
    IL_0358:  newobj     instance void Game.ListSelectionDialog::.ctor(string,
                                                                       class [System.Runtime]System.Collections.IEnumerable,
                                                                       float32,
                                                                       class [System.Runtime]System.Func`2<object,string>,
                                                                       class [System.Runtime]System.Action`1<object>)
    IL_035d:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_0362:  ret
  } // end of method FurnitureInventoryPanel::Update

  .method public hidebysig virtual instance void 
          UpdateCeases() cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.ContainerWidget::UpdateCeases()
    IL_0006:  ldarg.0
    IL_0007:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_000c:  callvirt   instance void Game.ComponentFurnitureInventory::ClearSlots()
    IL_0011:  ldarg.0
    IL_0012:  ldc.i4.1
    IL_0013:  stfld      bool Game.FurnitureInventoryPanel::m_populateNeeded
    IL_0018:  ret
  } // end of method FurnitureInventoryPanel::UpdateCeases

  .method public hidebysig instance void 
          Invalidate() cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  stfld      bool Game.FurnitureInventoryPanel::m_populateNeeded
    IL_0007:  ret
  } // end of method FurnitureInventoryPanel::Invalidate

  .method private hidebysig instance void 
          Populate() cil managed
  {
    // 代码大小       145 (0x91)
    .maxstack  2
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.FurnitureSet> V_0,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.FurnitureSet> V_1,
             class Game.FurnitureSet V_2)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_0006:  callvirt   instance void Game.ComponentFurnitureInventory::FillSlots()
    .try
    {
      IL_000b:  ldarg.0
      IL_000c:  ldc.i4.1
      IL_000d:  stfld      bool Game.FurnitureInventoryPanel::m_ignoreSelectionChanged
      IL_0012:  ldarg.0
      IL_0013:  ldfld      class Game.ListPanelWidget Game.FurnitureInventoryPanel::m_furnitureSetList
      IL_0018:  callvirt   instance void Game.ListPanelWidget::ClearItems()
      IL_001d:  ldarg.0
      IL_001e:  ldfld      class Game.ListPanelWidget Game.FurnitureInventoryPanel::m_furnitureSetList
      IL_0023:  ldnull
      IL_0024:  callvirt   instance void Game.ListPanelWidget::AddItem(object)
      IL_0029:  ldarg.0
      IL_002a:  call       instance class Game.SubsystemFurnitureBlockBehavior Game.FurnitureInventoryPanel::get_SubsystemFurnitureBlockBehavior()
      IL_002f:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.FurnitureSet> Game.SubsystemFurnitureBlockBehavior::get_FurnitureSets()
      IL_0034:  stloc.1
      IL_0035:  ldloca.s   V_1
      IL_0037:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.FurnitureSet>::GetEnumerator()
      IL_003c:  stloc.0
      .try
      {
        IL_003d:  br.s       IL_0053

        IL_003f:  ldloca.s   V_0
        IL_0041:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.FurnitureSet>::get_Current()
        IL_0046:  stloc.2
        IL_0047:  ldarg.0
        IL_0048:  ldfld      class Game.ListPanelWidget Game.FurnitureInventoryPanel::m_furnitureSetList
        IL_004d:  ldloc.2
        IL_004e:  callvirt   instance void Game.ListPanelWidget::AddItem(object)
        IL_0053:  ldloca.s   V_0
        IL_0055:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.FurnitureSet>::MoveNext()
        IL_005a:  brtrue.s   IL_003f

        IL_005c:  leave.s    IL_0074

      }  // end .try
      finally
      {
        IL_005e:  ldloca.s   V_0
        IL_0060:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.FurnitureSet>
        IL_0066:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_006b:  endfinally
      }  // end handler
    }  // end .try
    finally
    {
      IL_006c:  ldarg.0
      IL_006d:  ldc.i4.0
      IL_006e:  stfld      bool Game.FurnitureInventoryPanel::m_ignoreSelectionChanged
      IL_0073:  endfinally
    }  // end handler
    IL_0074:  ldarg.0
    IL_0075:  ldfld      class Game.ListPanelWidget Game.FurnitureInventoryPanel::m_furnitureSetList
    IL_007a:  ldarg.0
    IL_007b:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_0080:  callvirt   instance class Game.FurnitureSet Game.ComponentFurnitureInventory::get_FurnitureSet()
    IL_0085:  callvirt   instance void Game.ListPanelWidget::set_SelectedItem(object)
    IL_008a:  ldarg.0
    IL_008b:  call       instance void Game.FurnitureInventoryPanel::AssignInventorySlots()
    IL_0090:  ret
  } // end of method FurnitureInventoryPanel::Populate

  .method private hidebysig instance void 
          AssignInventorySlots() cil managed
  {
    // 代码大小       378 (0x17a)
    .maxstack  4
    .locals init (class [System.Collections]System.Collections.Generic.List`1<int32> V_0,
             class [System.Collections]System.Collections.Generic.List`1<class Game.InventorySlotWidget> V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             class Game.FurnitureDesign V_7,
             int32 V_8)
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<int32>::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldc.i4.0
    IL_0007:  stloc.3
    IL_0008:  br.s       IL_007d

    IL_000a:  ldarg.0
    IL_000b:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_0010:  ldloc.3
    IL_0011:  callvirt   instance int32 Game.ComponentFurnitureInventory::GetSlotValue(int32)
    IL_0016:  stloc.s    V_4
    IL_0018:  ldarg.0
    IL_0019:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_001e:  ldloc.3
    IL_001f:  callvirt   instance int32 Game.ComponentFurnitureInventory::GetSlotCount(int32)
    IL_0024:  stloc.s    V_5
    IL_0026:  ldloc.s    V_4
    IL_0028:  brfalse.s  IL_0079

    IL_002a:  ldloc.s    V_5
    IL_002c:  ldc.i4.0
    IL_002d:  ble.s      IL_0079

    IL_002f:  ldloc.s    V_4
    IL_0031:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0036:  ldc.i4     0xe3
    IL_003b:  bne.un.s   IL_0079

    IL_003d:  ldloc.s    V_4
    IL_003f:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0044:  call       int32 Game.FurnitureBlock::GetDesignIndex(int32)
    IL_0049:  stloc.s    V_6
    IL_004b:  ldarg.0
    IL_004c:  call       instance class Game.SubsystemFurnitureBlockBehavior Game.FurnitureInventoryPanel::get_SubsystemFurnitureBlockBehavior()
    IL_0051:  ldloc.s    V_6
    IL_0053:  callvirt   instance class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior::GetDesign(int32)
    IL_0058:  stloc.s    V_7
    IL_005a:  ldloc.s    V_7
    IL_005c:  brfalse.s  IL_0079

    IL_005e:  ldloc.s    V_7
    IL_0060:  callvirt   instance class Game.FurnitureSet Game.FurnitureDesign::get_FurnitureSet()
    IL_0065:  ldarg.0
    IL_0066:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_006b:  callvirt   instance class Game.FurnitureSet Game.ComponentFurnitureInventory::get_FurnitureSet()
    IL_0070:  bne.un.s   IL_0079

    IL_0072:  ldloc.0
    IL_0073:  ldloc.3
    IL_0074:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_0079:  ldloc.3
    IL_007a:  ldc.i4.1
    IL_007b:  add
    IL_007c:  stloc.3
    IL_007d:  ldloc.3
    IL_007e:  ldarg.0
    IL_007f:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_0084:  callvirt   instance int32 Game.ComponentFurnitureInventory::get_SlotsCount()
    IL_0089:  blt        IL_000a

    IL_008e:  ldarg.0
    IL_008f:  ldfld      class Game.GridPanelWidget Game.FurnitureInventoryPanel::m_inventoryGrid
    IL_0094:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0099:  ldsfld     class [System.Runtime]System.Func`2<class Game.Widget,class Game.InventorySlotWidget> Game.FurnitureInventoryPanel/'<>c'::'<>9__22_0'
    IL_009e:  dup
    IL_009f:  brtrue.s   IL_00b8

    IL_00a1:  pop
    IL_00a2:  ldsfld     class Game.FurnitureInventoryPanel/'<>c' Game.FurnitureInventoryPanel/'<>c'::'<>9'
    IL_00a7:  ldftn      instance class Game.InventorySlotWidget Game.FurnitureInventoryPanel/'<>c'::'<AssignInventorySlots>b__22_0'(class Game.Widget)
    IL_00ad:  newobj     instance void class [System.Runtime]System.Func`2<class Game.Widget,class Game.InventorySlotWidget>::.ctor(object,
                                                                                                                                    native int)
    IL_00b2:  dup
    IL_00b3:  stsfld     class [System.Runtime]System.Func`2<class Game.Widget,class Game.InventorySlotWidget> Game.FurnitureInventoryPanel/'<>c'::'<>9__22_0'
    IL_00b8:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!1> [System.Linq]System.Linq.Enumerable::Select<class Game.Widget,class Game.InventorySlotWidget>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                           class [System.Runtime]System.Func`2<!!0,!!1>)
    IL_00bd:  ldsfld     class [System.Runtime]System.Func`2<class Game.InventorySlotWidget,bool> Game.FurnitureInventoryPanel/'<>c'::'<>9__22_1'
    IL_00c2:  dup
    IL_00c3:  brtrue.s   IL_00dc

    IL_00c5:  pop
    IL_00c6:  ldsfld     class Game.FurnitureInventoryPanel/'<>c' Game.FurnitureInventoryPanel/'<>c'::'<>9'
    IL_00cb:  ldftn      instance bool Game.FurnitureInventoryPanel/'<>c'::'<AssignInventorySlots>b__22_1'(class Game.InventorySlotWidget)
    IL_00d1:  newobj     instance void class [System.Runtime]System.Func`2<class Game.InventorySlotWidget,bool>::.ctor(object,
                                                                                                                       native int)
    IL_00d6:  dup
    IL_00d7:  stsfld     class [System.Runtime]System.Func`2<class Game.InventorySlotWidget,bool> Game.FurnitureInventoryPanel/'<>c'::'<>9__22_1'
    IL_00dc:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class Game.InventorySlotWidget>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                        class [System.Runtime]System.Func`2<!!0,bool>)
    IL_00e1:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Cast<class Game.InventorySlotWidget>(class [System.Runtime]System.Collections.IEnumerable)
    IL_00e6:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.InventorySlotWidget>::.ctor(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
    IL_00eb:  stloc.1
    IL_00ec:  ldarg.0
    IL_00ed:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_00f2:  callvirt   instance int32 Game.ComponentFurnitureInventory::get_PageIndex()
    IL_00f7:  ldloc.1
    IL_00f8:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.InventorySlotWidget>::get_Count()
    IL_00fd:  mul
    IL_00fe:  stloc.2
    IL_00ff:  ldc.i4.0
    IL_0100:  stloc.s    V_8
    IL_0102:  br.s       IL_0142

    IL_0104:  ldloc.2
    IL_0105:  ldloc.0
    IL_0106:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Count()
    IL_010b:  bge.s      IL_0129

    IL_010d:  ldloc.1
    IL_010e:  ldloc.s    V_8
    IL_0110:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.InventorySlotWidget>::get_Item(int32)
    IL_0115:  ldarg.0
    IL_0116:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_011b:  ldloc.0
    IL_011c:  ldloc.2
    IL_011d:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Item(int32)
    IL_0122:  callvirt   instance void Game.InventorySlotWidget::AssignInventorySlot(class Game.IInventory,
                                                                                     int32)
    IL_0127:  br.s       IL_0138

    IL_0129:  ldloc.1
    IL_012a:  ldloc.s    V_8
    IL_012c:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.InventorySlotWidget>::get_Item(int32)
    IL_0131:  ldnull
    IL_0132:  ldc.i4.0
    IL_0133:  callvirt   instance void Game.InventorySlotWidget::AssignInventorySlot(class Game.IInventory,
                                                                                     int32)
    IL_0138:  ldloc.2
    IL_0139:  ldc.i4.1
    IL_013a:  add
    IL_013b:  stloc.2
    IL_013c:  ldloc.s    V_8
    IL_013e:  ldc.i4.1
    IL_013f:  add
    IL_0140:  stloc.s    V_8
    IL_0142:  ldloc.s    V_8
    IL_0144:  ldloc.1
    IL_0145:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.InventorySlotWidget>::get_Count()
    IL_014a:  blt.s      IL_0104

    IL_014c:  ldarg.0
    IL_014d:  ldloc.0
    IL_014e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Count()
    IL_0153:  ldloc.1
    IL_0154:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.InventorySlotWidget>::get_Count()
    IL_0159:  add
    IL_015a:  ldc.i4.1
    IL_015b:  sub
    IL_015c:  ldloc.1
    IL_015d:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.InventorySlotWidget>::get_Count()
    IL_0162:  div
    IL_0163:  stfld      int32 Game.FurnitureInventoryPanel::m_pagesCount
    IL_0168:  ldarg.0
    IL_0169:  ldarg.0
    IL_016a:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_016f:  callvirt   instance int32 Game.ComponentFurnitureInventory::get_PageIndex()
    IL_0174:  stfld      int32 Game.FurnitureInventoryPanel::m_assignedPage
    IL_0179:  ret
  } // end of method FurnitureInventoryPanel::AssignInventorySlots

  .method private hidebysig instance void 
          NewFurnitureSet() cil managed
  {
    // 代码大小       30 (0x1e)
    .maxstack  8
    IL_0000:  ldstr      "Furniture Set Name"
    IL_0005:  ldstr      "New Set"
    IL_000a:  ldc.i4.s   20
    IL_000c:  ldarg.0
    IL_000d:  ldftn      instance void Game.FurnitureInventoryPanel::'<NewFurnitureSet>b__23_0'(string)
    IL_0013:  newobj     instance void class [System.Runtime]System.Action`1<string>::.ctor(object,
                                                                                            native int)
    IL_0018:  call       void Game.InputManager::EnterText(string,
                                                           string,
                                                           int32,
                                                           class [System.Runtime]System.Action`1<string>)
    IL_001d:  ret
  } // end of method FurnitureInventoryPanel::NewFurnitureSet

  .method private hidebysig instance void 
          DeleteFurnitureSet() cil managed
  {
    // 代码大小       100 (0x64)
    .maxstack  4
    .locals init (class Game.FurnitureSet V_0,
             int32 V_1,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.FurnitureSet> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ListPanelWidget Game.FurnitureInventoryPanel::m_furnitureSetList
    IL_0006:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_000b:  isinst     Game.FurnitureSet
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  brfalse.s  IL_0063

    IL_0014:  ldarg.0
    IL_0015:  call       instance class Game.SubsystemFurnitureBlockBehavior Game.FurnitureInventoryPanel::get_SubsystemFurnitureBlockBehavior()
    IL_001a:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.FurnitureSet> Game.SubsystemFurnitureBlockBehavior::get_FurnitureSets()
    IL_001f:  stloc.2
    IL_0020:  ldloca.s   V_2
    IL_0022:  ldloc.0
    IL_0023:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class Game.FurnitureSet>::IndexOf(!0)
    IL_0028:  stloc.1
    IL_0029:  ldarg.0
    IL_002a:  call       instance class Game.SubsystemFurnitureBlockBehavior Game.FurnitureInventoryPanel::get_SubsystemFurnitureBlockBehavior()
    IL_002f:  ldloc.0
    IL_0030:  callvirt   instance void Game.SubsystemFurnitureBlockBehavior::DeleteFurnitureSet(class Game.FurnitureSet)
    IL_0035:  ldarg.0
    IL_0036:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_003b:  ldloc.1
    IL_003c:  ldc.i4.0
    IL_003d:  bgt.s      IL_0042

    IL_003f:  ldnull
    IL_0040:  br.s       IL_0058

    IL_0042:  ldarg.0
    IL_0043:  call       instance class Game.SubsystemFurnitureBlockBehavior Game.FurnitureInventoryPanel::get_SubsystemFurnitureBlockBehavior()
    IL_0048:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.FurnitureSet> Game.SubsystemFurnitureBlockBehavior::get_FurnitureSets()
    IL_004d:  stloc.2
    IL_004e:  ldloca.s   V_2
    IL_0050:  ldloc.1
    IL_0051:  ldc.i4.1
    IL_0052:  sub
    IL_0053:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class Game.FurnitureSet>::get_Item(int32)
    IL_0058:  callvirt   instance void Game.ComponentFurnitureInventory::set_FurnitureSet(class Game.FurnitureSet)
    IL_005d:  ldarg.0
    IL_005e:  call       instance void Game.FurnitureInventoryPanel::Invalidate()
    IL_0063:  ret
  } // end of method FurnitureInventoryPanel::DeleteFurnitureSet

  .method private hidebysig instance void 
          RenameFurnitureSet() cil managed
  {
    // 代码大小       79 (0x4f)
    .maxstack  5
    .locals init (class Game.FurnitureInventoryPanel/'<>c__DisplayClass25_0' V_0)
    IL_0000:  newobj     instance void Game.FurnitureInventoryPanel/'<>c__DisplayClass25_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class Game.FurnitureInventoryPanel Game.FurnitureInventoryPanel/'<>c__DisplayClass25_0'::'<>4__this'
    IL_000d:  ldloc.0
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Game.ListPanelWidget Game.FurnitureInventoryPanel::m_furnitureSetList
    IL_0014:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_0019:  isinst     Game.FurnitureSet
    IL_001e:  stfld      class Game.FurnitureSet Game.FurnitureInventoryPanel/'<>c__DisplayClass25_0'::furnitureSet
    IL_0023:  ldloc.0
    IL_0024:  ldfld      class Game.FurnitureSet Game.FurnitureInventoryPanel/'<>c__DisplayClass25_0'::furnitureSet
    IL_0029:  brfalse.s  IL_004e

    IL_002b:  ldstr      "Furniture Set Name"
    IL_0030:  ldloc.0
    IL_0031:  ldfld      class Game.FurnitureSet Game.FurnitureInventoryPanel/'<>c__DisplayClass25_0'::furnitureSet
    IL_0036:  ldfld      string Game.FurnitureSet::Name
    IL_003b:  ldc.i4.s   20
    IL_003d:  ldloc.0
    IL_003e:  ldftn      instance void Game.FurnitureInventoryPanel/'<>c__DisplayClass25_0'::'<RenameFurnitureSet>b__0'(string)
    IL_0044:  newobj     instance void class [System.Runtime]System.Action`1<string>::.ctor(object,
                                                                                            native int)
    IL_0049:  call       void Game.InputManager::EnterText(string,
                                                           string,
                                                           int32,
                                                           class [System.Runtime]System.Action`1<string>)
    IL_004e:  ret
  } // end of method FurnitureInventoryPanel::RenameFurnitureSet

  .method private hidebysig instance void 
          MoveFurnitureSet(int32 move) cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  3
    .locals init (class Game.FurnitureSet V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ListPanelWidget Game.FurnitureInventoryPanel::m_furnitureSetList
    IL_0006:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_000b:  isinst     Game.FurnitureSet
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  brfalse.s  IL_0027

    IL_0014:  ldarg.0
    IL_0015:  call       instance class Game.SubsystemFurnitureBlockBehavior Game.FurnitureInventoryPanel::get_SubsystemFurnitureBlockBehavior()
    IL_001a:  ldloc.0
    IL_001b:  ldarg.1
    IL_001c:  callvirt   instance void Game.SubsystemFurnitureBlockBehavior::MoveFurnitureSet(class Game.FurnitureSet,
                                                                                              int32)
    IL_0021:  ldarg.0
    IL_0022:  call       instance void Game.FurnitureInventoryPanel::Invalidate()
    IL_0027:  ret
  } // end of method FurnitureInventoryPanel::MoveFurnitureSet

  .method private hidebysig instance void 
          ImportFurnitureSet() cil managed
  {
    // 代码大小       124 (0x7c)
    .maxstack  6
    IL_0000:  call       void Game.FurniturePacksManager::UpdateFurniturePacksList()
    IL_0005:  call       valuetype [Engine]Engine.ReadOnlyList`1<string> Game.FurniturePacksManager::get_FurniturePackNames()
    IL_000a:  box        valuetype [Engine]Engine.ReadOnlyList`1<string>
    IL_000f:  call       int32 [System.Linq]System.Linq.Enumerable::Count<string>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0014:  brtrue.s   IL_0032

    IL_0016:  ldstr      "No Furniture Packs"
    IL_001b:  ldstr      "No furniture packs found in your content. Download"
    + " some from Community Content."
    IL_0020:  ldstr      "OK"
    IL_0025:  ldnull
    IL_0026:  ldnull
    IL_0027:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_002c:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_0031:  ret

    IL_0032:  ldstr      "Select Furniture Pack"
    IL_0037:  call       valuetype [Engine]Engine.ReadOnlyList`1<string> Game.FurniturePacksManager::get_FurniturePackNames()
    IL_003c:  box        valuetype [Engine]Engine.ReadOnlyList`1<string>
    IL_0041:  ldc.r4     64.
    IL_0046:  ldsfld     class [System.Runtime]System.Func`2<object,string> Game.FurnitureInventoryPanel/'<>c'::'<>9__27_0'
    IL_004b:  dup
    IL_004c:  brtrue.s   IL_0065

    IL_004e:  pop
    IL_004f:  ldsfld     class Game.FurnitureInventoryPanel/'<>c' Game.FurnitureInventoryPanel/'<>c'::'<>9'
    IL_0054:  ldftn      instance string Game.FurnitureInventoryPanel/'<>c'::'<ImportFurnitureSet>b__27_0'(object)
    IL_005a:  newobj     instance void class [System.Runtime]System.Func`2<object,string>::.ctor(object,
                                                                                                 native int)
    IL_005f:  dup
    IL_0060:  stsfld     class [System.Runtime]System.Func`2<object,string> Game.FurnitureInventoryPanel/'<>c'::'<>9__27_0'
    IL_0065:  ldarg.0
    IL_0066:  ldftn      instance void Game.FurnitureInventoryPanel::'<ImportFurnitureSet>b__27_1'(object)
    IL_006c:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_0071:  newobj     instance void Game.ListSelectionDialog::.ctor(string,
                                                                       class [System.Runtime]System.Collections.IEnumerable,
                                                                       float32,
                                                                       class [System.Runtime]System.Func`2<object,string>,
                                                                       class [System.Runtime]System.Action`1<object>)
    IL_0076:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_007b:  ret
  } // end of method FurnitureInventoryPanel::ImportFurnitureSet

  .method private hidebysig instance void 
          ExportFurnitureSet() cil managed
  {
    // 代码大小       132 (0x84)
    .maxstack  6
    .locals init (class Game.FurnitureDesign[] V_0,
             string V_1,
             class [System.Runtime]System.Exception V_2)
    .try
    {
      IL_0000:  ldarg.0
      IL_0001:  call       instance class Game.SubsystemFurnitureBlockBehavior Game.FurnitureInventoryPanel::get_SubsystemFurnitureBlockBehavior()
      IL_0006:  ldarg.0
      IL_0007:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
      IL_000c:  callvirt   instance class Game.FurnitureSet Game.ComponentFurnitureInventory::get_FurnitureSet()
      IL_0011:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.FurnitureDesign> Game.SubsystemFurnitureBlockBehavior::GetFurnitureSetDesigns(class Game.FurnitureSet)
      IL_0016:  call       !!0[] [System.Linq]System.Linq.Enumerable::ToArray<class Game.FurnitureDesign>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
      IL_001b:  stloc.0
      IL_001c:  ldarg.0
      IL_001d:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
      IL_0022:  callvirt   instance class Game.FurnitureSet Game.ComponentFurnitureInventory::get_FurnitureSet()
      IL_0027:  ldfld      string Game.FurnitureSet::Name
      IL_002c:  ldloc.0
      IL_002d:  call       string Game.FurniturePacksManager::CreateFurniturePack(string,
                                                                                  class [System.Runtime]System.Collections.Generic.ICollection`1<class Game.FurnitureDesign>)
      IL_0032:  call       string Game.FurniturePacksManager::GetDisplayName(string)
      IL_0037:  stloc.1
      IL_0038:  ldstr      "Exported"
      IL_003d:  ldstr      "Furniture pack \"{0}\" exported to content."
      IL_0042:  ldc.i4.1
      IL_0043:  newarr     [System.Runtime]System.Object
      IL_0048:  dup
      IL_0049:  ldc.i4.0
      IL_004a:  ldloc.1
      IL_004b:  stelem.ref
      IL_004c:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_0051:  ldstr      "OK"
      IL_0056:  ldnull
      IL_0057:  ldnull
      IL_0058:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_005d:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
      IL_0062:  leave.s    IL_0083

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0064:  stloc.2
      IL_0065:  ldstr      "Export Failed"
      IL_006a:  ldloc.2
      IL_006b:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_0070:  ldstr      "OK"
      IL_0075:  ldnull
      IL_0076:  ldnull
      IL_0077:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_007c:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
      IL_0081:  leave.s    IL_0083

    }  // end handler
    IL_0083:  ret
  } // end of method FurnitureInventoryPanel::ExportFurnitureSet

  .method private hidebysig instance class Game.Widget 
          '<.ctor>b__9_0'(object item) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  castclass  Game.FurnitureSet
    IL_0007:  newobj     instance void Game.FurnitureSetItemWidget::.ctor(class Game.FurnitureInventoryPanel,
                                                                          class Game.FurnitureSet)
    IL_000c:  ret
  } // end of method FurnitureInventoryPanel::'<.ctor>b__9_0'

  .method private hidebysig instance void 
          '<.ctor>b__9_1'(class Game.ListPanelWidget '<obj>') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       113 (0x71)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.FurnitureInventoryPanel::m_ignoreSelectionChanged
    IL_0006:  brtrue.s   IL_0070

    IL_0008:  ldarg.0
    IL_0009:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_000e:  callvirt   instance class Game.FurnitureSet Game.ComponentFurnitureInventory::get_FurnitureSet()
    IL_0013:  ldarg.0
    IL_0014:  ldfld      class Game.ListPanelWidget Game.FurnitureInventoryPanel::m_furnitureSetList
    IL_0019:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_001e:  isinst     Game.FurnitureSet
    IL_0023:  beq.s      IL_0070

    IL_0025:  ldarg.0
    IL_0026:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_002b:  ldc.i4.0
    IL_002c:  callvirt   instance void Game.ComponentFurnitureInventory::set_PageIndex(int32)
    IL_0031:  ldarg.0
    IL_0032:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_0037:  ldarg.0
    IL_0038:  ldfld      class Game.ListPanelWidget Game.FurnitureInventoryPanel::m_furnitureSetList
    IL_003d:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_0042:  isinst     Game.FurnitureSet
    IL_0047:  callvirt   instance void Game.ComponentFurnitureInventory::set_FurnitureSet(class Game.FurnitureSet)
    IL_004c:  ldarg.0
    IL_004d:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_0052:  callvirt   instance class Game.FurnitureSet Game.ComponentFurnitureInventory::get_FurnitureSet()
    IL_0057:  brtrue.s   IL_006a

    IL_0059:  ldarg.0
    IL_005a:  ldfld      class Game.ListPanelWidget Game.FurnitureInventoryPanel::m_furnitureSetList
    IL_005f:  ldc.i4.0
    IL_0060:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0065:  callvirt   instance void Game.ListPanelWidget::set_SelectedIndex(valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_006a:  ldarg.0
    IL_006b:  call       instance void Game.FurnitureInventoryPanel::AssignInventorySlots()
    IL_0070:  ret
  } // end of method FurnitureInventoryPanel::'<.ctor>b__9_1'

  .method private hidebysig instance void 
          '<Update>b__18_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       58 (0x3a)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1<class Game.FurnitureSet> V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemFurnitureBlockBehavior Game.FurnitureInventoryPanel::get_SubsystemFurnitureBlockBehavior()
    IL_0006:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.FurnitureSet> Game.SubsystemFurnitureBlockBehavior::get_FurnitureSets()
    IL_000b:  stloc.0
    IL_000c:  ldloca.s   V_0
    IL_000e:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class Game.FurnitureSet>::get_Count()
    IL_0013:  ldc.i4.s   32
    IL_0015:  bge.s      IL_001e

    IL_0017:  ldarg.0
    IL_0018:  call       instance void Game.FurnitureInventoryPanel::NewFurnitureSet()
    IL_001d:  ret

    IL_001e:  ldstr      "Too many furniture sets"
    IL_0023:  ldstr      "Delete some furniture sets before adding a new one."
    IL_0028:  ldstr      "OK"
    IL_002d:  ldnull
    IL_002e:  ldnull
    IL_002f:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_0034:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_0039:  ret
  } // end of method FurnitureInventoryPanel::'<Update>b__18_0'

  .method private hidebysig instance void 
          '<Update>b__18_1'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.FurnitureInventoryPanel::ImportFurnitureSet()
    IL_0006:  ret
  } // end of method FurnitureInventoryPanel::'<Update>b__18_1'

  .method private hidebysig instance void 
          '<Update>b__18_4'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.FurnitureInventoryPanel::RenameFurnitureSet()
    IL_0006:  ret
  } // end of method FurnitureInventoryPanel::'<Update>b__18_4'

  .method private hidebysig instance void 
          '<Update>b__18_5'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       80 (0x50)
    .maxstack  6
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemFurnitureBlockBehavior Game.FurnitureInventoryPanel::get_SubsystemFurnitureBlockBehavior()
    IL_0006:  ldarg.0
    IL_0007:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_000c:  callvirt   instance class Game.FurnitureSet Game.ComponentFurnitureInventory::get_FurnitureSet()
    IL_0011:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.FurnitureDesign> Game.SubsystemFurnitureBlockBehavior::GetFurnitureSetDesigns(class Game.FurnitureSet)
    IL_0016:  call       int32 [System.Linq]System.Linq.Enumerable::Count<class Game.FurnitureDesign>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_001b:  ldc.i4.0
    IL_001c:  ble.s      IL_0049

    IL_001e:  ldstr      "Warning"
    IL_0023:  ldstr      "All furniture in the set will become uncategorized"
    + " and will be deleted if not used in the world."
    IL_0028:  ldstr      "Delete"
    IL_002d:  ldstr      "Cancel"
    IL_0032:  ldarg.0
    IL_0033:  ldftn      instance void Game.FurnitureInventoryPanel::'<Update>b__18_6'(valuetype Game.MessageDialogButton)
    IL_0039:  newobj     instance void class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>::.ctor(object,
                                                                                                                        native int)
    IL_003e:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_0043:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_0048:  ret

    IL_0049:  ldarg.0
    IL_004a:  call       instance void Game.FurnitureInventoryPanel::DeleteFurnitureSet()
    IL_004f:  ret
  } // end of method FurnitureInventoryPanel::'<Update>b__18_5'

  .method private hidebysig instance void 
          '<Update>b__18_6'(valuetype Game.MessageDialogButton b) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       10 (0xa)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  brtrue.s   IL_0009

    IL_0003:  ldarg.0
    IL_0004:  call       instance void Game.FurnitureInventoryPanel::DeleteFurnitureSet()
    IL_0009:  ret
  } // end of method FurnitureInventoryPanel::'<Update>b__18_6'

  .method private hidebysig instance void 
          '<Update>b__18_7'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.m1
    IL_0002:  call       instance void Game.FurnitureInventoryPanel::MoveFurnitureSet(int32)
    IL_0007:  ret
  } // end of method FurnitureInventoryPanel::'<Update>b__18_7'

  .method private hidebysig instance void 
          '<Update>b__18_8'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  call       instance void Game.FurnitureInventoryPanel::MoveFurnitureSet(int32)
    IL_0007:  ret
  } // end of method FurnitureInventoryPanel::'<Update>b__18_8'

  .method private hidebysig instance void 
          '<Update>b__18_9'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.FurnitureInventoryPanel::ExportFurnitureSet()
    IL_0006:  ret
  } // end of method FurnitureInventoryPanel::'<Update>b__18_9'

  .method private hidebysig instance void 
          '<NewFurnitureSet>b__23_0'(string s) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       48 (0x30)
    .maxstack  3
    .locals init (class Game.FurnitureSet V_0)
    IL_0000:  ldarg.1
    IL_0001:  brfalse.s  IL_002f

    IL_0003:  ldarg.0
    IL_0004:  call       instance class Game.SubsystemFurnitureBlockBehavior Game.FurnitureInventoryPanel::get_SubsystemFurnitureBlockBehavior()
    IL_0009:  ldarg.1
    IL_000a:  ldnull
    IL_000b:  callvirt   instance class Game.FurnitureSet Game.SubsystemFurnitureBlockBehavior::NewFurnitureSet(string,
                                                                                                                string)
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    IL_0017:  ldloc.0
    IL_0018:  callvirt   instance void Game.ComponentFurnitureInventory::set_FurnitureSet(class Game.FurnitureSet)
    IL_001d:  ldarg.0
    IL_001e:  call       instance void Game.FurnitureInventoryPanel::Populate()
    IL_0023:  ldarg.0
    IL_0024:  ldfld      class Game.ListPanelWidget Game.FurnitureInventoryPanel::m_furnitureSetList
    IL_0029:  ldloc.0
    IL_002a:  callvirt   instance void Game.ListPanelWidget::ScrollToItem(object)
    IL_002f:  ret
  } // end of method FurnitureInventoryPanel::'<NewFurnitureSet>b__23_0'

  .method private hidebysig instance void 
          '<ImportFurnitureSet>b__27_1'(object s) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       359 (0x167)
    .maxstack  5
    .locals init (int32 V_0,
             string V_1,
             class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> V_2,
             string V_3,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>> V_4,
             class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> V_5,
             class Game.FurnitureDesign V_6,
             class Game.FurnitureSet V_7,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.FurnitureDesign> V_8,
             class Game.FurnitureDesign V_9,
             class [System.Runtime]System.Exception V_10)
    .try
    {
      IL_0000:  ldc.i4.0
      IL_0001:  stloc.0
      IL_0002:  ldarg.1
      IL_0003:  castclass  [System.Runtime]System.String
      IL_0008:  stloc.1
      IL_0009:  ldloc.1
      IL_000a:  call       class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> Game.FurniturePacksManager::LoadFurniturePack(string)
      IL_000f:  call       class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>> Game.FurnitureDesign::ListChains(class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.FurnitureDesign>)
      IL_0014:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::.ctor()
      IL_0019:  stloc.2
      IL_001a:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>>::GetEnumerator()
      IL_001f:  stloc.s    V_4
      .try
      {
        IL_0021:  br.s       IL_005b

        IL_0023:  ldloca.s   V_4
        IL_0025:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>>::get_Current()
        IL_002a:  stloc.s    V_5
        IL_002c:  ldarg.0
        IL_002d:  call       instance class Game.SubsystemFurnitureBlockBehavior Game.FurnitureInventoryPanel::get_SubsystemFurnitureBlockBehavior()
        IL_0032:  ldloc.s    V_5
        IL_0034:  ldc.i4.0
        IL_0035:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Item(int32)
        IL_003a:  callvirt   instance class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior::TryAddDesignChain(class Game.FurnitureDesign)
        IL_003f:  stloc.s    V_6
        IL_0041:  ldloc.s    V_6
        IL_0043:  ldloc.s    V_5
        IL_0045:  ldc.i4.0
        IL_0046:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Item(int32)
        IL_004b:  bne.un.s   IL_0057

        IL_004d:  ldloc.2
        IL_004e:  ldloc.s    V_6
        IL_0050:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::Add(!0)
        IL_0055:  br.s       IL_005b

        IL_0057:  ldloc.0
        IL_0058:  ldc.i4.1
        IL_0059:  add
        IL_005a:  stloc.0
        IL_005b:  ldloca.s   V_4
        IL_005d:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>>::MoveNext()
        IL_0062:  brtrue.s   IL_0023

        IL_0064:  leave.s    IL_0074

      }  // end .try
      finally
      {
        IL_0066:  ldloca.s   V_4
        IL_0068:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>>
        IL_006e:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_0073:  endfinally
      }  // end handler
      IL_0074:  ldloc.2
      IL_0075:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Count()
      IL_007a:  ldc.i4.0
      IL_007b:  ble.s      IL_00d9

      IL_007d:  ldarg.0
      IL_007e:  call       instance class Game.SubsystemFurnitureBlockBehavior Game.FurnitureInventoryPanel::get_SubsystemFurnitureBlockBehavior()
      IL_0083:  ldloc.1
      IL_0084:  call       string Game.FurniturePacksManager::GetDisplayName(string)
      IL_0089:  ldloc.1
      IL_008a:  callvirt   instance class Game.FurnitureSet Game.SubsystemFurnitureBlockBehavior::NewFurnitureSet(string,
                                                                                                                  string)
      IL_008f:  stloc.s    V_7
      IL_0091:  ldloc.2
      IL_0092:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::GetEnumerator()
      IL_0097:  stloc.s    V_8
      .try
      {
        IL_0099:  br.s       IL_00b3

        IL_009b:  ldloca.s   V_8
        IL_009d:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.FurnitureDesign>::get_Current()
        IL_00a2:  stloc.s    V_9
        IL_00a4:  ldarg.0
        IL_00a5:  call       instance class Game.SubsystemFurnitureBlockBehavior Game.FurnitureInventoryPanel::get_SubsystemFurnitureBlockBehavior()
        IL_00aa:  ldloc.s    V_9
        IL_00ac:  ldloc.s    V_7
        IL_00ae:  callvirt   instance void Game.SubsystemFurnitureBlockBehavior::AddToFurnitureSet(class Game.FurnitureDesign,
                                                                                                   class Game.FurnitureSet)
        IL_00b3:  ldloca.s   V_8
        IL_00b5:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.FurnitureDesign>::MoveNext()
        IL_00ba:  brtrue.s   IL_009b

        IL_00bc:  leave.s    IL_00cc

      }  // end .try
      finally
      {
        IL_00be:  ldloca.s   V_8
        IL_00c0:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.FurnitureDesign>
        IL_00c6:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_00cb:  endfinally
      }  // end handler
      IL_00cc:  ldarg.0
      IL_00cd:  call       instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
      IL_00d2:  ldloc.s    V_7
      IL_00d4:  callvirt   instance void Game.ComponentFurnitureInventory::set_FurnitureSet(class Game.FurnitureSet)
      IL_00d9:  ldarg.0
      IL_00da:  call       instance void Game.FurnitureInventoryPanel::Invalidate()
      IL_00df:  ldloc.0
      IL_00e0:  ldc.i4.0
      IL_00e1:  ble.s      IL_010d

      IL_00e3:  ldstr      "{0} design(s) added. {1} design(s) were already pr"
      + "esent in the world and were skipped."
      IL_00e8:  ldc.i4.2
      IL_00e9:  newarr     [System.Runtime]System.Object
      IL_00ee:  dup
      IL_00ef:  ldc.i4.0
      IL_00f0:  ldloc.2
      IL_00f1:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Count()
      IL_00f6:  box        [System.Runtime]System.Int32
      IL_00fb:  stelem.ref
      IL_00fc:  dup
      IL_00fd:  ldc.i4.1
      IL_00fe:  ldloc.0
      IL_00ff:  box        [System.Runtime]System.Int32
      IL_0104:  stelem.ref
      IL_0105:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_010a:  stloc.3
      IL_010b:  br.s       IL_012c

      IL_010d:  ldstr      "{0} design(s) added."
      IL_0112:  ldc.i4.1
      IL_0113:  newarr     [System.Runtime]System.Object
      IL_0118:  dup
      IL_0119:  ldc.i4.0
      IL_011a:  ldloc.2
      IL_011b:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Count()
      IL_0120:  box        [System.Runtime]System.Int32
      IL_0125:  stelem.ref
      IL_0126:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_012b:  stloc.3
      IL_012c:  ldstr      "Import Successful"
      IL_0131:  ldloc.3
      IL_0132:  ldstr      "OK"
      IL_0137:  ldnull
      IL_0138:  ldnull
      IL_0139:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_013e:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
      IL_0143:  leave.s    IL_0166

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0145:  stloc.s    V_10
      IL_0147:  ldstr      "Import Failed"
      IL_014c:  ldloc.s    V_10
      IL_014e:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_0153:  ldstr      "OK"
      IL_0158:  ldnull
      IL_0159:  ldnull
      IL_015a:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_015f:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
      IL_0164:  leave.s    IL_0166

    }  // end handler
    IL_0166:  ret
  } // end of method FurnitureInventoryPanel::'<ImportFurnitureSet>b__27_1'

  .property instance class Game.ComponentFurnitureInventory
          ComponentFurnitureInventory()
  {
    .get instance class Game.ComponentFurnitureInventory Game.FurnitureInventoryPanel::get_ComponentFurnitureInventory()
    .set instance void Game.FurnitureInventoryPanel::set_ComponentFurnitureInventory(class Game.ComponentFurnitureInventory)
  } // end of property FurnitureInventoryPanel::ComponentFurnitureInventory
  .property instance class Game.SubsystemFurnitureBlockBehavior
          SubsystemFurnitureBlockBehavior()
  {
    .get instance class Game.SubsystemFurnitureBlockBehavior Game.FurnitureInventoryPanel::get_SubsystemFurnitureBlockBehavior()
    .set instance void Game.FurnitureInventoryPanel::set_SubsystemFurnitureBlockBehavior(class Game.SubsystemFurnitureBlockBehavior)
  } // end of property FurnitureInventoryPanel::SubsystemFurnitureBlockBehavior
} // end of class Game.FurnitureInventoryPanel