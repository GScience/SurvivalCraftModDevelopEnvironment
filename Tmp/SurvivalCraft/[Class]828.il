.class public auto ansi beforefieldinit Game.CraftingTableWidget
       extends Game.CanvasWidget
{
  .field private class Game.GridPanelWidget m_inventoryGrid
  .field private class Game.GridPanelWidget m_craftingGrid
  .field private class Game.InventorySlotWidget m_craftingResultSlot
  .field private class Game.InventorySlotWidget m_craftingRemainsSlot
  .field private class Game.ComponentCraftingTable m_componentCraftingTable
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.IInventory inventory,
                               class Game.ComponentCraftingTable componentCraftingTable) cil managed
  {
    // 代码大小       404 (0x194)
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
    IL_0006:  ldarg.0
    IL_0007:  ldarg.2
    IL_0008:  stfld      class Game.ComponentCraftingTable Game.CraftingTableWidget::m_componentCraftingTable
    IL_000d:  ldstr      "Widgets/CraftingTableWidget"
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
    IL_0027:  ldstr      "InventoryGrid"
    IL_002c:  ldc.i4.1
    IL_002d:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.GridPanelWidget>(string,
                                                                                              bool)
    IL_0032:  stfld      class Game.GridPanelWidget Game.CraftingTableWidget::m_inventoryGrid
    IL_0037:  ldarg.0
    IL_0038:  ldarg.0
    IL_0039:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_003e:  ldstr      "CraftingGrid"
    IL_0043:  ldc.i4.1
    IL_0044:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.GridPanelWidget>(string,
                                                                                              bool)
    IL_0049:  stfld      class Game.GridPanelWidget Game.CraftingTableWidget::m_craftingGrid
    IL_004e:  ldarg.0
    IL_004f:  ldarg.0
    IL_0050:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0055:  ldstr      "CraftingResultSlot"
    IL_005a:  ldc.i4.1
    IL_005b:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.InventorySlotWidget>(string,
                                                                                                  bool)
    IL_0060:  stfld      class Game.InventorySlotWidget Game.CraftingTableWidget::m_craftingResultSlot
    IL_0065:  ldarg.0
    IL_0066:  ldarg.0
    IL_0067:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_006c:  ldstr      "CraftingRemainsSlot"
    IL_0071:  ldc.i4.1
    IL_0072:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.InventorySlotWidget>(string,
                                                                                                  bool)
    IL_0077:  stfld      class Game.InventorySlotWidget Game.CraftingTableWidget::m_craftingRemainsSlot
    IL_007c:  ldc.i4.6
    IL_007d:  stloc.1
    IL_007e:  ldc.i4.0
    IL_007f:  stloc.2
    IL_0080:  br.s       IL_00d6

    IL_0082:  ldc.i4.0
    IL_0083:  stloc.3
    IL_0084:  br.s       IL_00c4

    IL_0086:  newobj     instance void Game.InventorySlotWidget::.ctor()
    IL_008b:  stloc.s    V_4
    IL_008d:  ldloc.s    V_4
    IL_008f:  ldarg.1
    IL_0090:  ldloc.1
    IL_0091:  dup
    IL_0092:  ldc.i4.1
    IL_0093:  add
    IL_0094:  stloc.1
    IL_0095:  callvirt   instance void Game.InventorySlotWidget::AssignInventorySlot(class Game.IInventory,
                                                                                     int32)
    IL_009a:  ldarg.0
    IL_009b:  ldfld      class Game.GridPanelWidget Game.CraftingTableWidget::m_inventoryGrid
    IL_00a0:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00a5:  ldloc.s    V_4
    IL_00a7:  callvirt   instance void Game.WidgetsContainer::Add(class Game.Widget)
    IL_00ac:  ldarg.0
    IL_00ad:  ldfld      class Game.GridPanelWidget Game.CraftingTableWidget::m_inventoryGrid
    IL_00b2:  ldloc.s    V_4
    IL_00b4:  ldloc.3
    IL_00b5:  ldloc.2
    IL_00b6:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_00bb:  callvirt   instance void Game.GridPanelWidget::SetWidgetCell(class Game.Widget,
                                                                           valuetype [Engine]Engine.Point2)
    IL_00c0:  ldloc.3
    IL_00c1:  ldc.i4.1
    IL_00c2:  add
    IL_00c3:  stloc.3
    IL_00c4:  ldloc.3
    IL_00c5:  ldarg.0
    IL_00c6:  ldfld      class Game.GridPanelWidget Game.CraftingTableWidget::m_inventoryGrid
    IL_00cb:  callvirt   instance int32 Game.GridPanelWidget::get_ColumnsCount()
    IL_00d0:  blt.s      IL_0086

    IL_00d2:  ldloc.2
    IL_00d3:  ldc.i4.1
    IL_00d4:  add
    IL_00d5:  stloc.2
    IL_00d6:  ldloc.2
    IL_00d7:  ldarg.0
    IL_00d8:  ldfld      class Game.GridPanelWidget Game.CraftingTableWidget::m_inventoryGrid
    IL_00dd:  callvirt   instance int32 Game.GridPanelWidget::get_RowsCount()
    IL_00e2:  blt.s      IL_0082

    IL_00e4:  ldc.i4.0
    IL_00e5:  stloc.1
    IL_00e6:  ldc.i4.0
    IL_00e7:  stloc.s    V_5
    IL_00e9:  br.s       IL_014c

    IL_00eb:  ldc.i4.0
    IL_00ec:  stloc.s    V_6
    IL_00ee:  br.s       IL_0137

    IL_00f0:  newobj     instance void Game.InventorySlotWidget::.ctor()
    IL_00f5:  stloc.s    V_7
    IL_00f7:  ldloc.s    V_7
    IL_00f9:  ldarg.0
    IL_00fa:  ldfld      class Game.ComponentCraftingTable Game.CraftingTableWidget::m_componentCraftingTable
    IL_00ff:  ldloc.1
    IL_0100:  dup
    IL_0101:  ldc.i4.1
    IL_0102:  add
    IL_0103:  stloc.1
    IL_0104:  callvirt   instance void Game.InventorySlotWidget::AssignInventorySlot(class Game.IInventory,
                                                                                     int32)
    IL_0109:  ldarg.0
    IL_010a:  ldfld      class Game.GridPanelWidget Game.CraftingTableWidget::m_craftingGrid
    IL_010f:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0114:  ldloc.s    V_7
    IL_0116:  callvirt   instance void Game.WidgetsContainer::Add(class Game.Widget)
    IL_011b:  ldarg.0
    IL_011c:  ldfld      class Game.GridPanelWidget Game.CraftingTableWidget::m_craftingGrid
    IL_0121:  ldloc.s    V_7
    IL_0123:  ldloc.s    V_6
    IL_0125:  ldloc.s    V_5
    IL_0127:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_012c:  callvirt   instance void Game.GridPanelWidget::SetWidgetCell(class Game.Widget,
                                                                           valuetype [Engine]Engine.Point2)
    IL_0131:  ldloc.s    V_6
    IL_0133:  ldc.i4.1
    IL_0134:  add
    IL_0135:  stloc.s    V_6
    IL_0137:  ldloc.s    V_6
    IL_0139:  ldarg.0
    IL_013a:  ldfld      class Game.GridPanelWidget Game.CraftingTableWidget::m_craftingGrid
    IL_013f:  callvirt   instance int32 Game.GridPanelWidget::get_ColumnsCount()
    IL_0144:  blt.s      IL_00f0

    IL_0146:  ldloc.s    V_5
    IL_0148:  ldc.i4.1
    IL_0149:  add
    IL_014a:  stloc.s    V_5
    IL_014c:  ldloc.s    V_5
    IL_014e:  ldarg.0
    IL_014f:  ldfld      class Game.GridPanelWidget Game.CraftingTableWidget::m_craftingGrid
    IL_0154:  callvirt   instance int32 Game.GridPanelWidget::get_RowsCount()
    IL_0159:  blt.s      IL_00eb

    IL_015b:  ldarg.0
    IL_015c:  ldfld      class Game.InventorySlotWidget Game.CraftingTableWidget::m_craftingResultSlot
    IL_0161:  ldarg.0
    IL_0162:  ldfld      class Game.ComponentCraftingTable Game.CraftingTableWidget::m_componentCraftingTable
    IL_0167:  ldarg.0
    IL_0168:  ldfld      class Game.ComponentCraftingTable Game.CraftingTableWidget::m_componentCraftingTable
    IL_016d:  callvirt   instance int32 Game.ComponentCraftingTable::get_ResultSlotIndex()
    IL_0172:  callvirt   instance void Game.InventorySlotWidget::AssignInventorySlot(class Game.IInventory,
                                                                                     int32)
    IL_0177:  ldarg.0
    IL_0178:  ldfld      class Game.InventorySlotWidget Game.CraftingTableWidget::m_craftingRemainsSlot
    IL_017d:  ldarg.0
    IL_017e:  ldfld      class Game.ComponentCraftingTable Game.CraftingTableWidget::m_componentCraftingTable
    IL_0183:  ldarg.0
    IL_0184:  ldfld      class Game.ComponentCraftingTable Game.CraftingTableWidget::m_componentCraftingTable
    IL_0189:  callvirt   instance int32 Game.ComponentCraftingTable::get_RemainsSlotIndex()
    IL_018e:  callvirt   instance void Game.InventorySlotWidget::AssignInventorySlot(class Game.IInventory,
                                                                                     int32)
    IL_0193:  ret
  } // end of method CraftingTableWidget::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       31 (0x1f)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCraftingTable Game.CraftingTableWidget::m_componentCraftingTable
    IL_0006:  callvirt   instance bool [EntitySystem]GameEntitySystem.Component::get_IsAddedToProject()
    IL_000b:  brtrue.s   IL_001e

    IL_000d:  ldarg.0
    IL_000e:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_0013:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0018:  ldarg.0
    IL_0019:  callvirt   instance void Game.WidgetsContainer::Remove(class Game.Widget)
    IL_001e:  ret
  } // end of method CraftingTableWidget::Update

} // end of class Game.CraftingTableWidget