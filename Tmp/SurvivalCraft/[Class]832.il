.class public auto ansi beforefieldinit Game.DispenserWidget
       extends Game.CanvasWidget
{
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.ComponentDispenser m_componentDispenser
  .field private class Game.ComponentBlockEntity m_componentBlockEntity
  .field private class Game.GridPanelWidget m_inventoryGrid
  .field private class Game.GridPanelWidget m_dispenserGrid
  .field private class Game.ButtonWidget m_dispenseButton
  .field private class Game.ButtonWidget m_shootButton
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.IInventory inventory,
                               class Game.ComponentDispenser componentDispenser) cil managed
  {
    // 代码大小       379 (0x17b)
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
    IL_0008:  stfld      class Game.ComponentDispenser Game.DispenserWidget::m_componentDispenser
    IL_000d:  ldarg.0
    IL_000e:  ldarg.2
    IL_000f:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0014:  ldc.i4.1
    IL_0015:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentBlockEntity>(bool)
    IL_001a:  stfld      class Game.ComponentBlockEntity Game.DispenserWidget::m_componentBlockEntity
    IL_001f:  ldarg.0
    IL_0020:  ldarg.2
    IL_0021:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0026:  ldc.i4.1
    IL_0027:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_002c:  stfld      class Game.SubsystemTerrain Game.DispenserWidget::m_subsystemTerrain
    IL_0031:  ldstr      "Widgets/DispenserWidget"
    IL_0036:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_003b:  stloc.0
    IL_003c:  ldarg.0
    IL_003d:  ldarg.0
    IL_003e:  ldloc.0
    IL_003f:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0044:  ldarg.0
    IL_0045:  ldarg.0
    IL_0046:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_004b:  ldstr      "InventoryGrid"
    IL_0050:  ldc.i4.1
    IL_0051:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.GridPanelWidget>(string,
                                                                                              bool)
    IL_0056:  stfld      class Game.GridPanelWidget Game.DispenserWidget::m_inventoryGrid
    IL_005b:  ldarg.0
    IL_005c:  ldarg.0
    IL_005d:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0062:  ldstr      "DispenserGrid"
    IL_0067:  ldc.i4.1
    IL_0068:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.GridPanelWidget>(string,
                                                                                              bool)
    IL_006d:  stfld      class Game.GridPanelWidget Game.DispenserWidget::m_dispenserGrid
    IL_0072:  ldarg.0
    IL_0073:  ldarg.0
    IL_0074:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0079:  ldstr      "DispenseButton"
    IL_007e:  ldc.i4.1
    IL_007f:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0084:  stfld      class Game.ButtonWidget Game.DispenserWidget::m_dispenseButton
    IL_0089:  ldarg.0
    IL_008a:  ldarg.0
    IL_008b:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0090:  ldstr      "ShootButton"
    IL_0095:  ldc.i4.1
    IL_0096:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_009b:  stfld      class Game.ButtonWidget Game.DispenserWidget::m_shootButton
    IL_00a0:  ldc.i4.0
    IL_00a1:  stloc.1
    IL_00a2:  ldc.i4.0
    IL_00a3:  stloc.2
    IL_00a4:  br.s       IL_00fa

    IL_00a6:  ldc.i4.0
    IL_00a7:  stloc.3
    IL_00a8:  br.s       IL_00e8

    IL_00aa:  newobj     instance void Game.InventorySlotWidget::.ctor()
    IL_00af:  stloc.s    V_4
    IL_00b1:  ldloc.s    V_4
    IL_00b3:  ldarg.2
    IL_00b4:  ldloc.1
    IL_00b5:  dup
    IL_00b6:  ldc.i4.1
    IL_00b7:  add
    IL_00b8:  stloc.1
    IL_00b9:  callvirt   instance void Game.InventorySlotWidget::AssignInventorySlot(class Game.IInventory,
                                                                                     int32)
    IL_00be:  ldarg.0
    IL_00bf:  ldfld      class Game.GridPanelWidget Game.DispenserWidget::m_dispenserGrid
    IL_00c4:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00c9:  ldloc.s    V_4
    IL_00cb:  callvirt   instance void Game.WidgetsContainer::Add(class Game.Widget)
    IL_00d0:  ldarg.0
    IL_00d1:  ldfld      class Game.GridPanelWidget Game.DispenserWidget::m_dispenserGrid
    IL_00d6:  ldloc.s    V_4
    IL_00d8:  ldloc.3
    IL_00d9:  ldloc.2
    IL_00da:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_00df:  callvirt   instance void Game.GridPanelWidget::SetWidgetCell(class Game.Widget,
                                                                           valuetype [Engine]Engine.Point2)
    IL_00e4:  ldloc.3
    IL_00e5:  ldc.i4.1
    IL_00e6:  add
    IL_00e7:  stloc.3
    IL_00e8:  ldloc.3
    IL_00e9:  ldarg.0
    IL_00ea:  ldfld      class Game.GridPanelWidget Game.DispenserWidget::m_dispenserGrid
    IL_00ef:  callvirt   instance int32 Game.GridPanelWidget::get_ColumnsCount()
    IL_00f4:  blt.s      IL_00aa

    IL_00f6:  ldloc.2
    IL_00f7:  ldc.i4.1
    IL_00f8:  add
    IL_00f9:  stloc.2
    IL_00fa:  ldloc.2
    IL_00fb:  ldarg.0
    IL_00fc:  ldfld      class Game.GridPanelWidget Game.DispenserWidget::m_dispenserGrid
    IL_0101:  callvirt   instance int32 Game.GridPanelWidget::get_RowsCount()
    IL_0106:  blt.s      IL_00a6

    IL_0108:  ldc.i4.6
    IL_0109:  stloc.1
    IL_010a:  ldc.i4.0
    IL_010b:  stloc.s    V_5
    IL_010d:  br.s       IL_016b

    IL_010f:  ldc.i4.0
    IL_0110:  stloc.s    V_6
    IL_0112:  br.s       IL_0156

    IL_0114:  newobj     instance void Game.InventorySlotWidget::.ctor()
    IL_0119:  stloc.s    V_7
    IL_011b:  ldloc.s    V_7
    IL_011d:  ldarg.1
    IL_011e:  ldloc.1
    IL_011f:  dup
    IL_0120:  ldc.i4.1
    IL_0121:  add
    IL_0122:  stloc.1
    IL_0123:  callvirt   instance void Game.InventorySlotWidget::AssignInventorySlot(class Game.IInventory,
                                                                                     int32)
    IL_0128:  ldarg.0
    IL_0129:  ldfld      class Game.GridPanelWidget Game.DispenserWidget::m_inventoryGrid
    IL_012e:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0133:  ldloc.s    V_7
    IL_0135:  callvirt   instance void Game.WidgetsContainer::Add(class Game.Widget)
    IL_013a:  ldarg.0
    IL_013b:  ldfld      class Game.GridPanelWidget Game.DispenserWidget::m_inventoryGrid
    IL_0140:  ldloc.s    V_7
    IL_0142:  ldloc.s    V_6
    IL_0144:  ldloc.s    V_5
    IL_0146:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_014b:  callvirt   instance void Game.GridPanelWidget::SetWidgetCell(class Game.Widget,
                                                                           valuetype [Engine]Engine.Point2)
    IL_0150:  ldloc.s    V_6
    IL_0152:  ldc.i4.1
    IL_0153:  add
    IL_0154:  stloc.s    V_6
    IL_0156:  ldloc.s    V_6
    IL_0158:  ldarg.0
    IL_0159:  ldfld      class Game.GridPanelWidget Game.DispenserWidget::m_inventoryGrid
    IL_015e:  callvirt   instance int32 Game.GridPanelWidget::get_ColumnsCount()
    IL_0163:  blt.s      IL_0114

    IL_0165:  ldloc.s    V_5
    IL_0167:  ldc.i4.1
    IL_0168:  add
    IL_0169:  stloc.s    V_5
    IL_016b:  ldloc.s    V_5
    IL_016d:  ldarg.0
    IL_016e:  ldfld      class Game.GridPanelWidget Game.DispenserWidget::m_inventoryGrid
    IL_0173:  callvirt   instance int32 Game.GridPanelWidget::get_RowsCount()
    IL_0178:  blt.s      IL_010f

    IL_017a:  ret
  } // end of method DispenserWidget::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       320 (0x140)
    .maxstack  6
    .locals init (int32 V_0,
             int32 V_1,
             valuetype Game.DispenserBlock/Mode V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.DispenserWidget::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  ldarg.0
    IL_000c:  ldfld      class Game.ComponentBlockEntity Game.DispenserWidget::m_componentBlockEntity
    IL_0011:  callvirt   instance valuetype [Engine]Engine.Point3 Game.ComponentBlockEntity::get_Coordinates()
    IL_0016:  ldfld      int32 [Engine]Engine.Point3::X
    IL_001b:  ldarg.0
    IL_001c:  ldfld      class Game.ComponentBlockEntity Game.DispenserWidget::m_componentBlockEntity
    IL_0021:  callvirt   instance valuetype [Engine]Engine.Point3 Game.ComponentBlockEntity::get_Coordinates()
    IL_0026:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_002b:  ldarg.0
    IL_002c:  ldfld      class Game.ComponentBlockEntity Game.DispenserWidget::m_componentBlockEntity
    IL_0031:  callvirt   instance valuetype [Engine]Engine.Point3 Game.ComponentBlockEntity::get_Coordinates()
    IL_0036:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_003b:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0040:  stloc.0
    IL_0041:  ldloc.0
    IL_0042:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0047:  stloc.1
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.ButtonWidget Game.DispenserWidget::m_dispenseButton
    IL_004e:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0053:  brfalse.s  IL_00a2

    IL_0055:  ldloc.1
    IL_0056:  ldc.i4.0
    IL_0057:  call       int32 Game.DispenserBlock::SetMode(int32,
                                                            valuetype Game.DispenserBlock/Mode)
    IL_005c:  stloc.1
    IL_005d:  ldloc.0
    IL_005e:  ldloc.1
    IL_005f:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                             int32)
    IL_0064:  stloc.0
    IL_0065:  ldarg.0
    IL_0066:  ldfld      class Game.SubsystemTerrain Game.DispenserWidget::m_subsystemTerrain
    IL_006b:  ldarg.0
    IL_006c:  ldfld      class Game.ComponentBlockEntity Game.DispenserWidget::m_componentBlockEntity
    IL_0071:  callvirt   instance valuetype [Engine]Engine.Point3 Game.ComponentBlockEntity::get_Coordinates()
    IL_0076:  ldfld      int32 [Engine]Engine.Point3::X
    IL_007b:  ldarg.0
    IL_007c:  ldfld      class Game.ComponentBlockEntity Game.DispenserWidget::m_componentBlockEntity
    IL_0081:  callvirt   instance valuetype [Engine]Engine.Point3 Game.ComponentBlockEntity::get_Coordinates()
    IL_0086:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_008b:  ldarg.0
    IL_008c:  ldfld      class Game.ComponentBlockEntity Game.DispenserWidget::m_componentBlockEntity
    IL_0091:  callvirt   instance valuetype [Engine]Engine.Point3 Game.ComponentBlockEntity::get_Coordinates()
    IL_0096:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_009b:  ldloc.0
    IL_009c:  ldc.i4.1
    IL_009d:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_00a2:  ldarg.0
    IL_00a3:  ldfld      class Game.ButtonWidget Game.DispenserWidget::m_shootButton
    IL_00a8:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00ad:  brfalse.s  IL_00fc

    IL_00af:  ldloc.1
    IL_00b0:  ldc.i4.1
    IL_00b1:  call       int32 Game.DispenserBlock::SetMode(int32,
                                                            valuetype Game.DispenserBlock/Mode)
    IL_00b6:  stloc.1
    IL_00b7:  ldloc.0
    IL_00b8:  ldloc.1
    IL_00b9:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                             int32)
    IL_00be:  stloc.0
    IL_00bf:  ldarg.0
    IL_00c0:  ldfld      class Game.SubsystemTerrain Game.DispenserWidget::m_subsystemTerrain
    IL_00c5:  ldarg.0
    IL_00c6:  ldfld      class Game.ComponentBlockEntity Game.DispenserWidget::m_componentBlockEntity
    IL_00cb:  callvirt   instance valuetype [Engine]Engine.Point3 Game.ComponentBlockEntity::get_Coordinates()
    IL_00d0:  ldfld      int32 [Engine]Engine.Point3::X
    IL_00d5:  ldarg.0
    IL_00d6:  ldfld      class Game.ComponentBlockEntity Game.DispenserWidget::m_componentBlockEntity
    IL_00db:  callvirt   instance valuetype [Engine]Engine.Point3 Game.ComponentBlockEntity::get_Coordinates()
    IL_00e0:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00e5:  ldarg.0
    IL_00e6:  ldfld      class Game.ComponentBlockEntity Game.DispenserWidget::m_componentBlockEntity
    IL_00eb:  callvirt   instance valuetype [Engine]Engine.Point3 Game.ComponentBlockEntity::get_Coordinates()
    IL_00f0:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_00f5:  ldloc.0
    IL_00f6:  ldc.i4.1
    IL_00f7:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_00fc:  ldloc.1
    IL_00fd:  call       valuetype Game.DispenserBlock/Mode Game.DispenserBlock::GetMode(int32)
    IL_0102:  stloc.2
    IL_0103:  ldarg.0
    IL_0104:  ldfld      class Game.ButtonWidget Game.DispenserWidget::m_dispenseButton
    IL_0109:  ldloc.2
    IL_010a:  ldc.i4.0
    IL_010b:  ceq
    IL_010d:  callvirt   instance void Game.ButtonWidget::set_IsChecked(bool)
    IL_0112:  ldarg.0
    IL_0113:  ldfld      class Game.ButtonWidget Game.DispenserWidget::m_shootButton
    IL_0118:  ldloc.2
    IL_0119:  ldc.i4.1
    IL_011a:  ceq
    IL_011c:  callvirt   instance void Game.ButtonWidget::set_IsChecked(bool)
    IL_0121:  ldarg.0
    IL_0122:  ldfld      class Game.ComponentDispenser Game.DispenserWidget::m_componentDispenser
    IL_0127:  callvirt   instance bool [EntitySystem]GameEntitySystem.Component::get_IsAddedToProject()
    IL_012c:  brtrue.s   IL_013f

    IL_012e:  ldarg.0
    IL_012f:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_0134:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0139:  ldarg.0
    IL_013a:  callvirt   instance void Game.WidgetsContainer::Remove(class Game.Widget)
    IL_013f:  ret
  } // end of method DispenserWidget::Update

} // end of class Game.DispenserWidget