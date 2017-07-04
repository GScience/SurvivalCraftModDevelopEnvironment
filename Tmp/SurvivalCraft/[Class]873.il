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
  .field private class Game.CheckboxWidget m_acceptsDropsBox
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.IInventory inventory,
                               class Game.ComponentDispenser componentDispenser) cil managed
  {
    // 代码大小       402 (0x192)
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
    IL_0046:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_004b:  ldstr      "InventoryGrid"
    IL_0050:  ldc.i4.1
    IL_0051:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.GridPanelWidget>(string,
                                                                                         bool)
    IL_0056:  stfld      class Game.GridPanelWidget Game.DispenserWidget::m_inventoryGrid
    IL_005b:  ldarg.0
    IL_005c:  ldarg.0
    IL_005d:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0062:  ldstr      "DispenserGrid"
    IL_0067:  ldc.i4.1
    IL_0068:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.GridPanelWidget>(string,
                                                                                         bool)
    IL_006d:  stfld      class Game.GridPanelWidget Game.DispenserWidget::m_dispenserGrid
    IL_0072:  ldarg.0
    IL_0073:  ldarg.0
    IL_0074:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0079:  ldstr      "DispenseButton"
    IL_007e:  ldc.i4.1
    IL_007f:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0084:  stfld      class Game.ButtonWidget Game.DispenserWidget::m_dispenseButton
    IL_0089:  ldarg.0
    IL_008a:  ldarg.0
    IL_008b:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0090:  ldstr      "ShootButton"
    IL_0095:  ldc.i4.1
    IL_0096:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_009b:  stfld      class Game.ButtonWidget Game.DispenserWidget::m_shootButton
    IL_00a0:  ldarg.0
    IL_00a1:  ldarg.0
    IL_00a2:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00a7:  ldstr      "AcceptsDropsBox"
    IL_00ac:  ldc.i4.1
    IL_00ad:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.CheckboxWidget>(string,
                                                                                        bool)
    IL_00b2:  stfld      class Game.CheckboxWidget Game.DispenserWidget::m_acceptsDropsBox
    IL_00b7:  ldc.i4.0
    IL_00b8:  stloc.1
    IL_00b9:  ldc.i4.0
    IL_00ba:  stloc.2
    IL_00bb:  br.s       IL_0111

    IL_00bd:  ldc.i4.0
    IL_00be:  stloc.3
    IL_00bf:  br.s       IL_00ff

    IL_00c1:  newobj     instance void Game.InventorySlotWidget::.ctor()
    IL_00c6:  stloc.s    V_4
    IL_00c8:  ldloc.s    V_4
    IL_00ca:  ldarg.2
    IL_00cb:  ldloc.1
    IL_00cc:  dup
    IL_00cd:  ldc.i4.1
    IL_00ce:  add
    IL_00cf:  stloc.1
    IL_00d0:  callvirt   instance void Game.InventorySlotWidget::AssignInventorySlot(class Game.IInventory,
                                                                                     int32)
    IL_00d5:  ldarg.0
    IL_00d6:  ldfld      class Game.GridPanelWidget Game.DispenserWidget::m_dispenserGrid
    IL_00db:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00e0:  ldloc.s    V_4
    IL_00e2:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_00e7:  ldarg.0
    IL_00e8:  ldfld      class Game.GridPanelWidget Game.DispenserWidget::m_dispenserGrid
    IL_00ed:  ldloc.s    V_4
    IL_00ef:  ldloc.3
    IL_00f0:  ldloc.2
    IL_00f1:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_00f6:  callvirt   instance void Game.GridPanelWidget::SetWidgetCell(class Game.Widget,
                                                                           valuetype [Engine]Engine.Point2)
    IL_00fb:  ldloc.3
    IL_00fc:  ldc.i4.1
    IL_00fd:  add
    IL_00fe:  stloc.3
    IL_00ff:  ldloc.3
    IL_0100:  ldarg.0
    IL_0101:  ldfld      class Game.GridPanelWidget Game.DispenserWidget::m_dispenserGrid
    IL_0106:  callvirt   instance int32 Game.GridPanelWidget::get_ColumnsCount()
    IL_010b:  blt.s      IL_00c1

    IL_010d:  ldloc.2
    IL_010e:  ldc.i4.1
    IL_010f:  add
    IL_0110:  stloc.2
    IL_0111:  ldloc.2
    IL_0112:  ldarg.0
    IL_0113:  ldfld      class Game.GridPanelWidget Game.DispenserWidget::m_dispenserGrid
    IL_0118:  callvirt   instance int32 Game.GridPanelWidget::get_RowsCount()
    IL_011d:  blt.s      IL_00bd

    IL_011f:  ldc.i4.6
    IL_0120:  stloc.1
    IL_0121:  ldc.i4.0
    IL_0122:  stloc.s    V_5
    IL_0124:  br.s       IL_0182

    IL_0126:  ldc.i4.0
    IL_0127:  stloc.s    V_6
    IL_0129:  br.s       IL_016d

    IL_012b:  newobj     instance void Game.InventorySlotWidget::.ctor()
    IL_0130:  stloc.s    V_7
    IL_0132:  ldloc.s    V_7
    IL_0134:  ldarg.1
    IL_0135:  ldloc.1
    IL_0136:  dup
    IL_0137:  ldc.i4.1
    IL_0138:  add
    IL_0139:  stloc.1
    IL_013a:  callvirt   instance void Game.InventorySlotWidget::AssignInventorySlot(class Game.IInventory,
                                                                                     int32)
    IL_013f:  ldarg.0
    IL_0140:  ldfld      class Game.GridPanelWidget Game.DispenserWidget::m_inventoryGrid
    IL_0145:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_014a:  ldloc.s    V_7
    IL_014c:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_0151:  ldarg.0
    IL_0152:  ldfld      class Game.GridPanelWidget Game.DispenserWidget::m_inventoryGrid
    IL_0157:  ldloc.s    V_7
    IL_0159:  ldloc.s    V_6
    IL_015b:  ldloc.s    V_5
    IL_015d:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_0162:  callvirt   instance void Game.GridPanelWidget::SetWidgetCell(class Game.Widget,
                                                                           valuetype [Engine]Engine.Point2)
    IL_0167:  ldloc.s    V_6
    IL_0169:  ldc.i4.1
    IL_016a:  add
    IL_016b:  stloc.s    V_6
    IL_016d:  ldloc.s    V_6
    IL_016f:  ldarg.0
    IL_0170:  ldfld      class Game.GridPanelWidget Game.DispenserWidget::m_inventoryGrid
    IL_0175:  callvirt   instance int32 Game.GridPanelWidget::get_ColumnsCount()
    IL_017a:  blt.s      IL_012b

    IL_017c:  ldloc.s    V_5
    IL_017e:  ldc.i4.1
    IL_017f:  add
    IL_0180:  stloc.s    V_5
    IL_0182:  ldloc.s    V_5
    IL_0184:  ldarg.0
    IL_0185:  ldfld      class Game.GridPanelWidget Game.DispenserWidget::m_inventoryGrid
    IL_018a:  callvirt   instance int32 Game.GridPanelWidget::get_RowsCount()
    IL_018f:  blt.s      IL_0126

    IL_0191:  ret
  } // end of method DispenserWidget::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       435 (0x1b3)
    .maxstack  6
    .locals init (int32 V_0,
             int32 V_1,
             valuetype Game.DispenserBlock/Mode V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.DispenserWidget::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
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
    IL_003b:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0040:  stloc.0
    IL_0041:  ldloc.0
    IL_0042:  call       int32 Game.Terrain::ExtractData(int32)
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
    IL_005f:  call       int32 Game.Terrain::ReplaceData(int32,
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
    IL_00b9:  call       int32 Game.Terrain::ReplaceData(int32,
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
    IL_00fc:  ldarg.0
    IL_00fd:  ldfld      class Game.CheckboxWidget Game.DispenserWidget::m_acceptsDropsBox
    IL_0102:  callvirt   instance bool Game.CheckboxWidget::get_IsClicked()
    IL_0107:  brfalse.s  IL_015e

    IL_0109:  ldloc.1
    IL_010a:  ldloc.1
    IL_010b:  call       bool Game.DispenserBlock::GetAcceptsDrops(int32)
    IL_0110:  ldc.i4.0
    IL_0111:  ceq
    IL_0113:  call       int32 Game.DispenserBlock::SetAcceptsDrops(int32,
                                                                    bool)
    IL_0118:  stloc.1
    IL_0119:  ldloc.0
    IL_011a:  ldloc.1
    IL_011b:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_0120:  stloc.0
    IL_0121:  ldarg.0
    IL_0122:  ldfld      class Game.SubsystemTerrain Game.DispenserWidget::m_subsystemTerrain
    IL_0127:  ldarg.0
    IL_0128:  ldfld      class Game.ComponentBlockEntity Game.DispenserWidget::m_componentBlockEntity
    IL_012d:  callvirt   instance valuetype [Engine]Engine.Point3 Game.ComponentBlockEntity::get_Coordinates()
    IL_0132:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0137:  ldarg.0
    IL_0138:  ldfld      class Game.ComponentBlockEntity Game.DispenserWidget::m_componentBlockEntity
    IL_013d:  callvirt   instance valuetype [Engine]Engine.Point3 Game.ComponentBlockEntity::get_Coordinates()
    IL_0142:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0147:  ldarg.0
    IL_0148:  ldfld      class Game.ComponentBlockEntity Game.DispenserWidget::m_componentBlockEntity
    IL_014d:  callvirt   instance valuetype [Engine]Engine.Point3 Game.ComponentBlockEntity::get_Coordinates()
    IL_0152:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0157:  ldloc.0
    IL_0158:  ldc.i4.1
    IL_0159:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_015e:  ldloc.1
    IL_015f:  call       valuetype Game.DispenserBlock/Mode Game.DispenserBlock::GetMode(int32)
    IL_0164:  stloc.2
    IL_0165:  ldarg.0
    IL_0166:  ldfld      class Game.ButtonWidget Game.DispenserWidget::m_dispenseButton
    IL_016b:  ldloc.2
    IL_016c:  ldc.i4.0
    IL_016d:  ceq
    IL_016f:  callvirt   instance void Game.ButtonWidget::set_IsChecked(bool)
    IL_0174:  ldarg.0
    IL_0175:  ldfld      class Game.ButtonWidget Game.DispenserWidget::m_shootButton
    IL_017a:  ldloc.2
    IL_017b:  ldc.i4.1
    IL_017c:  ceq
    IL_017e:  callvirt   instance void Game.ButtonWidget::set_IsChecked(bool)
    IL_0183:  ldarg.0
    IL_0184:  ldfld      class Game.CheckboxWidget Game.DispenserWidget::m_acceptsDropsBox
    IL_0189:  ldloc.1
    IL_018a:  call       bool Game.DispenserBlock::GetAcceptsDrops(int32)
    IL_018f:  callvirt   instance void Game.CheckboxWidget::set_IsChecked(bool)
    IL_0194:  ldarg.0
    IL_0195:  ldfld      class Game.ComponentDispenser Game.DispenserWidget::m_componentDispenser
    IL_019a:  callvirt   instance bool [EntitySystem]GameEntitySystem.Component::get_IsAddedToProject()
    IL_019f:  brtrue.s   IL_01b2

    IL_01a1:  ldarg.0
    IL_01a2:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_01a7:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_01ac:  ldarg.0
    IL_01ad:  callvirt   instance void Game.WidgetsList::Remove(class Game.Widget)
    IL_01b2:  ret
  } // end of method DispenserWidget::Update

} // end of class Game.DispenserWidget