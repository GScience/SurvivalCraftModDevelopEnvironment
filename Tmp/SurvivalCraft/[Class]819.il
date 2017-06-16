.class public auto ansi beforefieldinit Game.ChestWidget
       extends Game.CanvasWidget
{
  .field private class Game.ComponentChest m_componentChest
  .field private class Game.GridPanelWidget m_inventoryGrid
  .field private class Game.GridPanelWidget m_chestGrid
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.IInventory inventory,
                               class Game.ComponentChest componentChest) cil managed
  {
    // 代码大小       297 (0x129)
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
    IL_0008:  stfld      class Game.ComponentChest Game.ChestWidget::m_componentChest
    IL_000d:  ldstr      "Widgets/ChestWidget"
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
    IL_0032:  stfld      class Game.GridPanelWidget Game.ChestWidget::m_inventoryGrid
    IL_0037:  ldarg.0
    IL_0038:  ldarg.0
    IL_0039:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_003e:  ldstr      "ChestGrid"
    IL_0043:  ldc.i4.1
    IL_0044:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.GridPanelWidget>(string,
                                                                                              bool)
    IL_0049:  stfld      class Game.GridPanelWidget Game.ChestWidget::m_chestGrid
    IL_004e:  ldc.i4.0
    IL_004f:  stloc.1
    IL_0050:  ldc.i4.0
    IL_0051:  stloc.2
    IL_0052:  br.s       IL_00a8

    IL_0054:  ldc.i4.0
    IL_0055:  stloc.3
    IL_0056:  br.s       IL_0096

    IL_0058:  newobj     instance void Game.InventorySlotWidget::.ctor()
    IL_005d:  stloc.s    V_4
    IL_005f:  ldloc.s    V_4
    IL_0061:  ldarg.2
    IL_0062:  ldloc.1
    IL_0063:  dup
    IL_0064:  ldc.i4.1
    IL_0065:  add
    IL_0066:  stloc.1
    IL_0067:  callvirt   instance void Game.InventorySlotWidget::AssignInventorySlot(class Game.IInventory,
                                                                                     int32)
    IL_006c:  ldarg.0
    IL_006d:  ldfld      class Game.GridPanelWidget Game.ChestWidget::m_chestGrid
    IL_0072:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0077:  ldloc.s    V_4
    IL_0079:  callvirt   instance void Game.WidgetsContainer::Add(class Game.Widget)
    IL_007e:  ldarg.0
    IL_007f:  ldfld      class Game.GridPanelWidget Game.ChestWidget::m_chestGrid
    IL_0084:  ldloc.s    V_4
    IL_0086:  ldloc.3
    IL_0087:  ldloc.2
    IL_0088:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_008d:  callvirt   instance void Game.GridPanelWidget::SetWidgetCell(class Game.Widget,
                                                                           valuetype [Engine]Engine.Point2)
    IL_0092:  ldloc.3
    IL_0093:  ldc.i4.1
    IL_0094:  add
    IL_0095:  stloc.3
    IL_0096:  ldloc.3
    IL_0097:  ldarg.0
    IL_0098:  ldfld      class Game.GridPanelWidget Game.ChestWidget::m_chestGrid
    IL_009d:  callvirt   instance int32 Game.GridPanelWidget::get_ColumnsCount()
    IL_00a2:  blt.s      IL_0058

    IL_00a4:  ldloc.2
    IL_00a5:  ldc.i4.1
    IL_00a6:  add
    IL_00a7:  stloc.2
    IL_00a8:  ldloc.2
    IL_00a9:  ldarg.0
    IL_00aa:  ldfld      class Game.GridPanelWidget Game.ChestWidget::m_chestGrid
    IL_00af:  callvirt   instance int32 Game.GridPanelWidget::get_RowsCount()
    IL_00b4:  blt.s      IL_0054

    IL_00b6:  ldc.i4.6
    IL_00b7:  stloc.1
    IL_00b8:  ldc.i4.0
    IL_00b9:  stloc.s    V_5
    IL_00bb:  br.s       IL_0119

    IL_00bd:  ldc.i4.0
    IL_00be:  stloc.s    V_6
    IL_00c0:  br.s       IL_0104

    IL_00c2:  newobj     instance void Game.InventorySlotWidget::.ctor()
    IL_00c7:  stloc.s    V_7
    IL_00c9:  ldloc.s    V_7
    IL_00cb:  ldarg.1
    IL_00cc:  ldloc.1
    IL_00cd:  dup
    IL_00ce:  ldc.i4.1
    IL_00cf:  add
    IL_00d0:  stloc.1
    IL_00d1:  callvirt   instance void Game.InventorySlotWidget::AssignInventorySlot(class Game.IInventory,
                                                                                     int32)
    IL_00d6:  ldarg.0
    IL_00d7:  ldfld      class Game.GridPanelWidget Game.ChestWidget::m_inventoryGrid
    IL_00dc:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00e1:  ldloc.s    V_7
    IL_00e3:  callvirt   instance void Game.WidgetsContainer::Add(class Game.Widget)
    IL_00e8:  ldarg.0
    IL_00e9:  ldfld      class Game.GridPanelWidget Game.ChestWidget::m_inventoryGrid
    IL_00ee:  ldloc.s    V_7
    IL_00f0:  ldloc.s    V_6
    IL_00f2:  ldloc.s    V_5
    IL_00f4:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_00f9:  callvirt   instance void Game.GridPanelWidget::SetWidgetCell(class Game.Widget,
                                                                           valuetype [Engine]Engine.Point2)
    IL_00fe:  ldloc.s    V_6
    IL_0100:  ldc.i4.1
    IL_0101:  add
    IL_0102:  stloc.s    V_6
    IL_0104:  ldloc.s    V_6
    IL_0106:  ldarg.0
    IL_0107:  ldfld      class Game.GridPanelWidget Game.ChestWidget::m_inventoryGrid
    IL_010c:  callvirt   instance int32 Game.GridPanelWidget::get_ColumnsCount()
    IL_0111:  blt.s      IL_00c2

    IL_0113:  ldloc.s    V_5
    IL_0115:  ldc.i4.1
    IL_0116:  add
    IL_0117:  stloc.s    V_5
    IL_0119:  ldloc.s    V_5
    IL_011b:  ldarg.0
    IL_011c:  ldfld      class Game.GridPanelWidget Game.ChestWidget::m_inventoryGrid
    IL_0121:  callvirt   instance int32 Game.GridPanelWidget::get_RowsCount()
    IL_0126:  blt.s      IL_00bd

    IL_0128:  ret
  } // end of method ChestWidget::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       31 (0x1f)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentChest Game.ChestWidget::m_componentChest
    IL_0006:  callvirt   instance bool [EntitySystem]GameEntitySystem.Component::get_IsAddedToProject()
    IL_000b:  brtrue.s   IL_001e

    IL_000d:  ldarg.0
    IL_000e:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_0013:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0018:  ldarg.0
    IL_0019:  callvirt   instance void Game.WidgetsContainer::Remove(class Game.Widget)
    IL_001e:  ret
  } // end of method ChestWidget::Update

} // end of class Game.ChestWidget