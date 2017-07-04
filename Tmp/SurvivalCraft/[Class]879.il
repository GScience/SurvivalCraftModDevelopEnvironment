.class public auto ansi beforefieldinit Game.FurnaceWidget
       extends Game.CanvasWidget
{
  .field private class Game.GridPanelWidget m_inventoryGrid
  .field private class Game.GridPanelWidget m_furnaceGrid
  .field private class Game.InventorySlotWidget m_fuelSlot
  .field private class Game.InventorySlotWidget m_resultSlot
  .field private class Game.InventorySlotWidget m_remainsSlot
  .field private class Game.FireWidget m_fire
  .field private class Game.ValueBarWidget m_progress
  .field private class Game.ComponentFurnace m_componentFurnace
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.IInventory inventory,
                               class Game.ComponentFurnace componentFurnace) cil managed
  {
    // 代码大小       466 (0x1d2)
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
    IL_0008:  stfld      class Game.ComponentFurnace Game.FurnaceWidget::m_componentFurnace
    IL_000d:  ldstr      "Widgets/FurnaceWidget"
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
    IL_0027:  ldstr      "InventoryGrid"
    IL_002c:  ldc.i4.1
    IL_002d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.GridPanelWidget>(string,
                                                                                         bool)
    IL_0032:  stfld      class Game.GridPanelWidget Game.FurnaceWidget::m_inventoryGrid
    IL_0037:  ldarg.0
    IL_0038:  ldarg.0
    IL_0039:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_003e:  ldstr      "FurnaceGrid"
    IL_0043:  ldc.i4.1
    IL_0044:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.GridPanelWidget>(string,
                                                                                         bool)
    IL_0049:  stfld      class Game.GridPanelWidget Game.FurnaceWidget::m_furnaceGrid
    IL_004e:  ldarg.0
    IL_004f:  ldarg.0
    IL_0050:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0055:  ldstr      "Fire"
    IL_005a:  ldc.i4.1
    IL_005b:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.FireWidget>(string,
                                                                                    bool)
    IL_0060:  stfld      class Game.FireWidget Game.FurnaceWidget::m_fire
    IL_0065:  ldarg.0
    IL_0066:  ldarg.0
    IL_0067:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_006c:  ldstr      "Progress"
    IL_0071:  ldc.i4.1
    IL_0072:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ValueBarWidget>(string,
                                                                                        bool)
    IL_0077:  stfld      class Game.ValueBarWidget Game.FurnaceWidget::m_progress
    IL_007c:  ldarg.0
    IL_007d:  ldarg.0
    IL_007e:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0083:  ldstr      "ResultSlot"
    IL_0088:  ldc.i4.1
    IL_0089:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.InventorySlotWidget>(string,
                                                                                             bool)
    IL_008e:  stfld      class Game.InventorySlotWidget Game.FurnaceWidget::m_resultSlot
    IL_0093:  ldarg.0
    IL_0094:  ldarg.0
    IL_0095:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_009a:  ldstr      "RemainsSlot"
    IL_009f:  ldc.i4.1
    IL_00a0:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.InventorySlotWidget>(string,
                                                                                             bool)
    IL_00a5:  stfld      class Game.InventorySlotWidget Game.FurnaceWidget::m_remainsSlot
    IL_00aa:  ldarg.0
    IL_00ab:  ldarg.0
    IL_00ac:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00b1:  ldstr      "FuelSlot"
    IL_00b6:  ldc.i4.1
    IL_00b7:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.InventorySlotWidget>(string,
                                                                                             bool)
    IL_00bc:  stfld      class Game.InventorySlotWidget Game.FurnaceWidget::m_fuelSlot
    IL_00c1:  ldc.i4.6
    IL_00c2:  stloc.1
    IL_00c3:  ldc.i4.0
    IL_00c4:  stloc.2
    IL_00c5:  br.s       IL_011b

    IL_00c7:  ldc.i4.0
    IL_00c8:  stloc.3
    IL_00c9:  br.s       IL_0109

    IL_00cb:  newobj     instance void Game.InventorySlotWidget::.ctor()
    IL_00d0:  stloc.s    V_4
    IL_00d2:  ldloc.s    V_4
    IL_00d4:  ldarg.1
    IL_00d5:  ldloc.1
    IL_00d6:  dup
    IL_00d7:  ldc.i4.1
    IL_00d8:  add
    IL_00d9:  stloc.1
    IL_00da:  callvirt   instance void Game.InventorySlotWidget::AssignInventorySlot(class Game.IInventory,
                                                                                     int32)
    IL_00df:  ldarg.0
    IL_00e0:  ldfld      class Game.GridPanelWidget Game.FurnaceWidget::m_inventoryGrid
    IL_00e5:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00ea:  ldloc.s    V_4
    IL_00ec:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_00f1:  ldarg.0
    IL_00f2:  ldfld      class Game.GridPanelWidget Game.FurnaceWidget::m_inventoryGrid
    IL_00f7:  ldloc.s    V_4
    IL_00f9:  ldloc.3
    IL_00fa:  ldloc.2
    IL_00fb:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_0100:  callvirt   instance void Game.GridPanelWidget::SetWidgetCell(class Game.Widget,
                                                                           valuetype [Engine]Engine.Point2)
    IL_0105:  ldloc.3
    IL_0106:  ldc.i4.1
    IL_0107:  add
    IL_0108:  stloc.3
    IL_0109:  ldloc.3
    IL_010a:  ldarg.0
    IL_010b:  ldfld      class Game.GridPanelWidget Game.FurnaceWidget::m_inventoryGrid
    IL_0110:  callvirt   instance int32 Game.GridPanelWidget::get_ColumnsCount()
    IL_0115:  blt.s      IL_00cb

    IL_0117:  ldloc.2
    IL_0118:  ldc.i4.1
    IL_0119:  add
    IL_011a:  stloc.2
    IL_011b:  ldloc.2
    IL_011c:  ldarg.0
    IL_011d:  ldfld      class Game.GridPanelWidget Game.FurnaceWidget::m_inventoryGrid
    IL_0122:  callvirt   instance int32 Game.GridPanelWidget::get_RowsCount()
    IL_0127:  blt.s      IL_00c7

    IL_0129:  ldc.i4.0
    IL_012a:  stloc.1
    IL_012b:  ldc.i4.0
    IL_012c:  stloc.s    V_5
    IL_012e:  br.s       IL_018c

    IL_0130:  ldc.i4.0
    IL_0131:  stloc.s    V_6
    IL_0133:  br.s       IL_0177

    IL_0135:  newobj     instance void Game.InventorySlotWidget::.ctor()
    IL_013a:  stloc.s    V_7
    IL_013c:  ldloc.s    V_7
    IL_013e:  ldarg.2
    IL_013f:  ldloc.1
    IL_0140:  dup
    IL_0141:  ldc.i4.1
    IL_0142:  add
    IL_0143:  stloc.1
    IL_0144:  callvirt   instance void Game.InventorySlotWidget::AssignInventorySlot(class Game.IInventory,
                                                                                     int32)
    IL_0149:  ldarg.0
    IL_014a:  ldfld      class Game.GridPanelWidget Game.FurnaceWidget::m_furnaceGrid
    IL_014f:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0154:  ldloc.s    V_7
    IL_0156:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_015b:  ldarg.0
    IL_015c:  ldfld      class Game.GridPanelWidget Game.FurnaceWidget::m_furnaceGrid
    IL_0161:  ldloc.s    V_7
    IL_0163:  ldloc.s    V_6
    IL_0165:  ldloc.s    V_5
    IL_0167:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_016c:  callvirt   instance void Game.GridPanelWidget::SetWidgetCell(class Game.Widget,
                                                                           valuetype [Engine]Engine.Point2)
    IL_0171:  ldloc.s    V_6
    IL_0173:  ldc.i4.1
    IL_0174:  add
    IL_0175:  stloc.s    V_6
    IL_0177:  ldloc.s    V_6
    IL_0179:  ldarg.0
    IL_017a:  ldfld      class Game.GridPanelWidget Game.FurnaceWidget::m_furnaceGrid
    IL_017f:  callvirt   instance int32 Game.GridPanelWidget::get_ColumnsCount()
    IL_0184:  blt.s      IL_0135

    IL_0186:  ldloc.s    V_5
    IL_0188:  ldc.i4.1
    IL_0189:  add
    IL_018a:  stloc.s    V_5
    IL_018c:  ldloc.s    V_5
    IL_018e:  ldarg.0
    IL_018f:  ldfld      class Game.GridPanelWidget Game.FurnaceWidget::m_furnaceGrid
    IL_0194:  callvirt   instance int32 Game.GridPanelWidget::get_RowsCount()
    IL_0199:  blt.s      IL_0130

    IL_019b:  ldarg.0
    IL_019c:  ldfld      class Game.InventorySlotWidget Game.FurnaceWidget::m_fuelSlot
    IL_01a1:  ldarg.2
    IL_01a2:  ldarg.2
    IL_01a3:  callvirt   instance int32 Game.ComponentFurnace::get_FuelSlotIndex()
    IL_01a8:  callvirt   instance void Game.InventorySlotWidget::AssignInventorySlot(class Game.IInventory,
                                                                                     int32)
    IL_01ad:  ldarg.0
    IL_01ae:  ldfld      class Game.InventorySlotWidget Game.FurnaceWidget::m_resultSlot
    IL_01b3:  ldarg.2
    IL_01b4:  ldarg.2
    IL_01b5:  callvirt   instance int32 Game.ComponentFurnace::get_ResultSlotIndex()
    IL_01ba:  callvirt   instance void Game.InventorySlotWidget::AssignInventorySlot(class Game.IInventory,
                                                                                     int32)
    IL_01bf:  ldarg.0
    IL_01c0:  ldfld      class Game.InventorySlotWidget Game.FurnaceWidget::m_remainsSlot
    IL_01c5:  ldarg.2
    IL_01c6:  ldarg.2
    IL_01c7:  callvirt   instance int32 Game.ComponentFurnace::get_RemainsSlotIndex()
    IL_01cc:  callvirt   instance void Game.InventorySlotWidget::AssignInventorySlot(class Game.IInventory,
                                                                                     int32)
    IL_01d1:  ret
  } // end of method FurnaceWidget::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       88 (0x58)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.FireWidget Game.FurnaceWidget::m_fire
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.ComponentFurnace Game.FurnaceWidget::m_componentFurnace
    IL_000c:  callvirt   instance float32 Game.ComponentFurnace::get_HeatLevel()
    IL_0011:  ldc.r4     0.0
    IL_0016:  bgt.s      IL_001b

    IL_0018:  ldc.i4.0
    IL_0019:  br.s       IL_001d

    IL_001b:  ldc.i4.s   24
    IL_001d:  conv.r4
    IL_001e:  callvirt   instance void Game.FireWidget::set_ParticlesPerSecond(float32)
    IL_0023:  ldarg.0
    IL_0024:  ldfld      class Game.ValueBarWidget Game.FurnaceWidget::m_progress
    IL_0029:  ldarg.0
    IL_002a:  ldfld      class Game.ComponentFurnace Game.FurnaceWidget::m_componentFurnace
    IL_002f:  callvirt   instance float32 Game.ComponentFurnace::get_SmeltingProgress()
    IL_0034:  callvirt   instance void Game.ValueBarWidget::set_Value(float32)
    IL_0039:  ldarg.0
    IL_003a:  ldfld      class Game.ComponentFurnace Game.FurnaceWidget::m_componentFurnace
    IL_003f:  callvirt   instance bool [EntitySystem]GameEntitySystem.Component::get_IsAddedToProject()
    IL_0044:  brtrue.s   IL_0057

    IL_0046:  ldarg.0
    IL_0047:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_004c:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0051:  ldarg.0
    IL_0052:  callvirt   instance void Game.WidgetsList::Remove(class Game.Widget)
    IL_0057:  ret
  } // end of method FurnaceWidget::Update

} // end of class Game.FurnaceWidget