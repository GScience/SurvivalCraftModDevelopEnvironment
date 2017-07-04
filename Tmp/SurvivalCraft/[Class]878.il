.class public auto ansi beforefieldinit Game.FullInventoryWidget
       extends Game.CanvasWidget
{
  .field private class Game.GridPanelWidget m_inventoryGrid
  .field private class Game.GridPanelWidget m_craftingGrid
  .field private class Game.InventorySlotWidget m_craftingResultSlot
  .field private class Game.InventorySlotWidget m_craftingRemainsSlot
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.IInventory inventory,
                               class Game.ComponentCraftingTable componentCraftingTable) cil managed
  {
    // ´úÂë´óÐ¡       372 (0x174)
    .maxstack  5
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             class Game.InventorySlotWidget V_4,
             int32 V_5,
             int32 V_6,
             class Game.InventorySlotWidget V_7)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.CanvasWidget::.ctor()
    IL_0006:  ldstr      "Widgets/FullInventoryWidget"
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
    IL_0020:  ldstr      "InventoryGrid"
    IL_0025:  ldc.i4.1
    IL_0026:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.GridPanelWidget>(string,
                                                                                         bool)
    IL_002b:  stfld      class Game.GridPanelWidget Game.FullInventoryWidget::m_inventoryGrid
    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0037:  ldstr      "CraftingGrid"
    IL_003c:  ldc.i4.1
    IL_003d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.GridPanelWidget>(string,
                                                                                         bool)
    IL_0042:  stfld      class Game.GridPanelWidget Game.FullInventoryWidget::m_craftingGrid
    IL_0047:  ldarg.0
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_004e:  ldstr      "CraftingResultSlot"
    IL_0053:  ldc.i4.1
    IL_0054:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.InventorySlotWidget>(string,
                                                                                             bool)
    IL_0059:  stfld      class Game.InventorySlotWidget Game.FullInventoryWidget::m_craftingResultSlot
    IL_005e:  ldarg.0
    IL_005f:  ldarg.0
    IL_0060:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0065:  ldstr      "CraftingRemainsSlot"
    IL_006a:  ldc.i4.1
    IL_006b:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.InventorySlotWidget>(string,
                                                                                             bool)
    IL_0070:  stfld      class Game.InventorySlotWidget Game.FullInventoryWidget::m_craftingRemainsSlot
    IL_0075:  ldc.i4.6
    IL_0076:  stloc.1
    IL_0077:  ldc.i4.0
    IL_0078:  stloc.2
    IL_0079:  br.s       IL_00cf

    IL_007b:  ldc.i4.0
    IL_007c:  stloc.3
    IL_007d:  br.s       IL_00bd

    IL_007f:  newobj     instance void Game.InventorySlotWidget::.ctor()
    IL_0084:  stloc.s    V_4
    IL_0086:  ldloc.s    V_4
    IL_0088:  ldarg.1
    IL_0089:  ldloc.1
    IL_008a:  dup
    IL_008b:  ldc.i4.1
    IL_008c:  add
    IL_008d:  stloc.1
    IL_008e:  callvirt   instance void Game.InventorySlotWidget::AssignInventorySlot(class Game.IInventory,
                                                                                     int32)
    IL_0093:  ldarg.0
    IL_0094:  ldfld      class Game.GridPanelWidget Game.FullInventoryWidget::m_inventoryGrid
    IL_0099:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_009e:  ldloc.s    V_4
    IL_00a0:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_00a5:  ldarg.0
    IL_00a6:  ldfld      class Game.GridPanelWidget Game.FullInventoryWidget::m_inventoryGrid
    IL_00ab:  ldloc.s    V_4
    IL_00ad:  ldloc.3
    IL_00ae:  ldloc.2
    IL_00af:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_00b4:  callvirt   instance void Game.GridPanelWidget::SetWidgetCell(class Game.Widget,
                                                                           valuetype [Engine]Engine.Point2)
    IL_00b9:  ldloc.3
    IL_00ba:  ldc.i4.1
    IL_00bb:  add
    IL_00bc:  stloc.3
    IL_00bd:  ldloc.3
    IL_00be:  ldarg.0
    IL_00bf:  ldfld      class Game.GridPanelWidget Game.FullInventoryWidget::m_inventoryGrid
    IL_00c4:  callvirt   instance int32 Game.GridPanelWidget::get_ColumnsCount()
    IL_00c9:  blt.s      IL_007f

    IL_00cb:  ldloc.2
    IL_00cc:  ldc.i4.1
    IL_00cd:  add
    IL_00ce:  stloc.2
    IL_00cf:  ldloc.2
    IL_00d0:  ldarg.0
    IL_00d1:  ldfld      class Game.GridPanelWidget Game.FullInventoryWidget::m_inventoryGrid
    IL_00d6:  callvirt   instance int32 Game.GridPanelWidget::get_RowsCount()
    IL_00db:  blt.s      IL_007b

    IL_00dd:  ldc.i4.0
    IL_00de:  stloc.1
    IL_00df:  ldc.i4.0
    IL_00e0:  stloc.s    V_5
    IL_00e2:  br.s       IL_0140

    IL_00e4:  ldc.i4.0
    IL_00e5:  stloc.s    V_6
    IL_00e7:  br.s       IL_012b

    IL_00e9:  newobj     instance void Game.InventorySlotWidget::.ctor()
    IL_00ee:  stloc.s    V_7
    IL_00f0:  ldloc.s    V_7
    IL_00f2:  ldarg.2
    IL_00f3:  ldloc.1
    IL_00f4:  dup
    IL_00f5:  ldc.i4.1
    IL_00f6:  add
    IL_00f7:  stloc.1
    IL_00f8:  callvirt   instance void Game.InventorySlotWidget::AssignInventorySlot(class Game.IInventory,
                                                                                     int32)
    IL_00fd:  ldarg.0
    IL_00fe:  ldfld      class Game.GridPanelWidget Game.FullInventoryWidget::m_craftingGrid
    IL_0103:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0108:  ldloc.s    V_7
    IL_010a:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_010f:  ldarg.0
    IL_0110:  ldfld      class Game.GridPanelWidget Game.FullInventoryWidget::m_craftingGrid
    IL_0115:  ldloc.s    V_7
    IL_0117:  ldloc.s    V_6
    IL_0119:  ldloc.s    V_5
    IL_011b:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_0120:  callvirt   instance void Game.GridPanelWidget::SetWidgetCell(class Game.Widget,
                                                                           valuetype [Engine]Engine.Point2)
    IL_0125:  ldloc.s    V_6
    IL_0127:  ldc.i4.1
    IL_0128:  add
    IL_0129:  stloc.s    V_6
    IL_012b:  ldloc.s    V_6
    IL_012d:  ldarg.0
    IL_012e:  ldfld      class Game.GridPanelWidget Game.FullInventoryWidget::m_craftingGrid
    IL_0133:  callvirt   instance int32 Game.GridPanelWidget::get_ColumnsCount()
    IL_0138:  blt.s      IL_00e9

    IL_013a:  ldloc.s    V_5
    IL_013c:  ldc.i4.1
    IL_013d:  add
    IL_013e:  stloc.s    V_5
    IL_0140:  ldloc.s    V_5
    IL_0142:  ldarg.0
    IL_0143:  ldfld      class Game.GridPanelWidget Game.FullInventoryWidget::m_craftingGrid
    IL_0148:  callvirt   instance int32 Game.GridPanelWidget::get_RowsCount()
    IL_014d:  blt.s      IL_00e4

    IL_014f:  ldarg.0
    IL_0150:  ldfld      class Game.InventorySlotWidget Game.FullInventoryWidget::m_craftingResultSlot
    IL_0155:  ldarg.2
    IL_0156:  ldarg.2
    IL_0157:  callvirt   instance int32 Game.ComponentCraftingTable::get_ResultSlotIndex()
    IL_015c:  callvirt   instance void Game.InventorySlotWidget::AssignInventorySlot(class Game.IInventory,
                                                                                     int32)
    IL_0161:  ldarg.0
    IL_0162:  ldfld      class Game.InventorySlotWidget Game.FullInventoryWidget::m_craftingRemainsSlot
    IL_0167:  ldarg.2
    IL_0168:  ldarg.2
    IL_0169:  callvirt   instance int32 Game.ComponentCraftingTable::get_RemainsSlotIndex()
    IL_016e:  callvirt   instance void Game.InventorySlotWidget::AssignInventorySlot(class Game.IInventory,
                                                                                     int32)
    IL_0173:  ret
  } // end of method FullInventoryWidget::.ctor

} // end of class Game.FullInventoryWidget