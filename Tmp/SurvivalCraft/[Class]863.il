.class public auto ansi beforefieldinit Game.ClothingWidget
       extends Game.CanvasWidget
{
  .field private class Game.GridPanelWidget m_inventoryGrid
  .field private class Game.StackPanelWidget m_clothingStack
  .field private class Game.ButtonWidget m_vitalStatsButton
  .field private class Game.ButtonWidget m_sleepButton
  .field private class Game.PlayerModelWidget m_innerClothingModelWidget
  .field private class Game.PlayerModelWidget m_outerClothingModelWidget
  .field private class Game.ComponentPlayer m_componentPlayer
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.ComponentPlayer componentPlayer) cil managed
  {
    // 代码大小       591 (0x24f)
    .maxstack  5
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0,
             int32 V_1,
             int32 V_2,
             class Game.InventorySlotWidget V_3,
             float32 V_4,
             int32 V_5,
             int32 V_6,
             class Game.InventorySlotWidget V_7)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.CanvasWidget::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      class Game.ComponentPlayer Game.ClothingWidget::m_componentPlayer
    IL_000d:  ldstr      "Widgets/ClothingWidget"
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
    IL_0027:  ldstr      "ClothingStack"
    IL_002c:  ldc.i4.1
    IL_002d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.StackPanelWidget>(string,
                                                                                          bool)
    IL_0032:  stfld      class Game.StackPanelWidget Game.ClothingWidget::m_clothingStack
    IL_0037:  ldarg.0
    IL_0038:  ldarg.0
    IL_0039:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_003e:  ldstr      "InventoryGrid"
    IL_0043:  ldc.i4.1
    IL_0044:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.GridPanelWidget>(string,
                                                                                         bool)
    IL_0049:  stfld      class Game.GridPanelWidget Game.ClothingWidget::m_inventoryGrid
    IL_004e:  ldarg.0
    IL_004f:  ldarg.0
    IL_0050:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0055:  ldstr      "VitalStatsButton"
    IL_005a:  ldc.i4.1
    IL_005b:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0060:  stfld      class Game.ButtonWidget Game.ClothingWidget::m_vitalStatsButton
    IL_0065:  ldarg.0
    IL_0066:  ldarg.0
    IL_0067:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_006c:  ldstr      "SleepButton"
    IL_0071:  ldc.i4.1
    IL_0072:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0077:  stfld      class Game.ButtonWidget Game.ClothingWidget::m_sleepButton
    IL_007c:  ldarg.0
    IL_007d:  ldarg.0
    IL_007e:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0083:  ldstr      "InnerClothingModel"
    IL_0088:  ldc.i4.1
    IL_0089:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.PlayerModelWidget>(string,
                                                                                           bool)
    IL_008e:  stfld      class Game.PlayerModelWidget Game.ClothingWidget::m_innerClothingModelWidget
    IL_0093:  ldarg.0
    IL_0094:  ldarg.0
    IL_0095:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_009a:  ldstr      "OuterClothingModel"
    IL_009f:  ldc.i4.1
    IL_00a0:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.PlayerModelWidget>(string,
                                                                                           bool)
    IL_00a5:  stfld      class Game.PlayerModelWidget Game.ClothingWidget::m_outerClothingModelWidget
    IL_00aa:  ldc.i4.0
    IL_00ab:  stloc.2
    IL_00ac:  br         IL_0169

    IL_00b1:  newobj     instance void Game.InventorySlotWidget::.ctor()
    IL_00b6:  stloc.3
    IL_00b7:  ldc.r4     (00 00 80 7F)
    IL_00bc:  stloc.s    V_4
    IL_00be:  ldloc.2
    IL_00bf:  brtrue.s   IL_00c8

    IL_00c1:  ldc.r4     68.
    IL_00c6:  stloc.s    V_4
    IL_00c8:  ldloc.2
    IL_00c9:  ldc.i4.3
    IL_00ca:  bne.un.s   IL_00d3

    IL_00cc:  ldc.r4     54.
    IL_00d1:  stloc.s    V_4
    IL_00d3:  ldloc.3
    IL_00d4:  ldc.r4     (00 00 80 7F)
    IL_00d9:  ldloc.s    V_4
    IL_00db:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00e0:  callvirt   instance void Game.CanvasWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_00e5:  ldloc.3
    IL_00e6:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_00eb:  callvirt   instance void Game.InventorySlotWidget::set_BevelColor(valuetype [Engine]Engine.Color)
    IL_00f0:  ldloc.3
    IL_00f1:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_00f6:  callvirt   instance void Game.InventorySlotWidget::set_CenterColor(valuetype [Engine]Engine.Color)
    IL_00fb:  ldloc.3
    IL_00fc:  ldarg.0
    IL_00fd:  ldfld      class Game.ComponentPlayer Game.ClothingWidget::m_componentPlayer
    IL_0102:  callvirt   instance class Game.ComponentClothing Game.ComponentPlayer::get_ComponentClothing()
    IL_0107:  ldloc.2
    IL_0108:  callvirt   instance void Game.InventorySlotWidget::AssignInventorySlot(class Game.IInventory,
                                                                                     int32)
    IL_010d:  ldloc.3
    IL_010e:  ldc.i4.1
    IL_010f:  callvirt   instance void Game.InventorySlotWidget::set_HideEditOverlay(bool)
    IL_0114:  ldloc.3
    IL_0115:  ldc.i4.1
    IL_0116:  callvirt   instance void Game.InventorySlotWidget::set_HideInteractiveOverlay(bool)
    IL_011b:  ldloc.3
    IL_011c:  ldc.i4.1
    IL_011d:  callvirt   instance void Game.InventorySlotWidget::set_HideFoodOverlay(bool)
    IL_0122:  ldloc.3
    IL_0123:  ldc.i4.1
    IL_0124:  callvirt   instance void Game.InventorySlotWidget::set_HideHighlightRectangle(bool)
    IL_0129:  ldloc.3
    IL_012a:  ldc.i4.1
    IL_012b:  callvirt   instance void Game.InventorySlotWidget::set_HideBlockIcon(bool)
    IL_0130:  ldloc.3
    IL_0131:  ldarg.0
    IL_0132:  ldfld      class Game.ComponentPlayer Game.ClothingWidget::m_componentPlayer
    IL_0137:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_013c:  ldc.i4.1
    IL_013d:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_0142:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0147:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_014c:  ldc.i4.0
    IL_014d:  ceq
    IL_014f:  callvirt   instance void Game.InventorySlotWidget::set_HideHealthBar(bool)
    IL_0154:  ldarg.0
    IL_0155:  ldfld      class Game.StackPanelWidget Game.ClothingWidget::m_clothingStack
    IL_015a:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_015f:  ldloc.3
    IL_0160:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_0165:  ldloc.2
    IL_0166:  ldc.i4.1
    IL_0167:  add
    IL_0168:  stloc.2
    IL_0169:  ldloc.2
    IL_016a:  ldc.i4.4
    IL_016b:  blt        IL_00b1

    IL_0170:  ldc.i4.6
    IL_0171:  stloc.1
    IL_0172:  ldc.i4.0
    IL_0173:  stloc.s    V_5
    IL_0175:  br.s       IL_01dd

    IL_0177:  ldc.i4.0
    IL_0178:  stloc.s    V_6
    IL_017a:  br.s       IL_01c8

    IL_017c:  newobj     instance void Game.InventorySlotWidget::.ctor()
    IL_0181:  stloc.s    V_7
    IL_0183:  ldloc.s    V_7
    IL_0185:  ldarg.1
    IL_0186:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_018b:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0190:  ldloc.1
    IL_0191:  dup
    IL_0192:  ldc.i4.1
    IL_0193:  add
    IL_0194:  stloc.1
    IL_0195:  callvirt   instance void Game.InventorySlotWidget::AssignInventorySlot(class Game.IInventory,
                                                                                     int32)
    IL_019a:  ldarg.0
    IL_019b:  ldfld      class Game.GridPanelWidget Game.ClothingWidget::m_inventoryGrid
    IL_01a0:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_01a5:  ldloc.s    V_7
    IL_01a7:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_01ac:  ldarg.0
    IL_01ad:  ldfld      class Game.GridPanelWidget Game.ClothingWidget::m_inventoryGrid
    IL_01b2:  ldloc.s    V_7
    IL_01b4:  ldloc.s    V_6
    IL_01b6:  ldloc.s    V_5
    IL_01b8:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_01bd:  callvirt   instance void Game.GridPanelWidget::SetWidgetCell(class Game.Widget,
                                                                           valuetype [Engine]Engine.Point2)
    IL_01c2:  ldloc.s    V_6
    IL_01c4:  ldc.i4.1
    IL_01c5:  add
    IL_01c6:  stloc.s    V_6
    IL_01c8:  ldloc.s    V_6
    IL_01ca:  ldarg.0
    IL_01cb:  ldfld      class Game.GridPanelWidget Game.ClothingWidget::m_inventoryGrid
    IL_01d0:  callvirt   instance int32 Game.GridPanelWidget::get_ColumnsCount()
    IL_01d5:  blt.s      IL_017c

    IL_01d7:  ldloc.s    V_5
    IL_01d9:  ldc.i4.1
    IL_01da:  add
    IL_01db:  stloc.s    V_5
    IL_01dd:  ldloc.s    V_5
    IL_01df:  ldarg.0
    IL_01e0:  ldfld      class Game.GridPanelWidget Game.ClothingWidget::m_inventoryGrid
    IL_01e5:  callvirt   instance int32 Game.GridPanelWidget::get_RowsCount()
    IL_01ea:  blt.s      IL_0177

    IL_01ec:  ldarg.0
    IL_01ed:  ldfld      class Game.PlayerModelWidget Game.ClothingWidget::m_innerClothingModelWidget
    IL_01f2:  ldarg.1
    IL_01f3:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_01f8:  callvirt   instance valuetype Game.PlayerClass Game.PlayerData::get_PlayerClass()
    IL_01fd:  callvirt   instance void Game.PlayerModelWidget::set_PlayerClass(valuetype Game.PlayerClass)
    IL_0202:  ldarg.0
    IL_0203:  ldfld      class Game.PlayerModelWidget Game.ClothingWidget::m_innerClothingModelWidget
    IL_0208:  ldarg.0
    IL_0209:  ldfld      class Game.ComponentPlayer Game.ClothingWidget::m_componentPlayer
    IL_020e:  callvirt   instance class Game.ComponentClothing Game.ComponentPlayer::get_ComponentClothing()
    IL_0213:  callvirt   instance class [Engine]Engine.Graphics.Texture2D Game.ComponentClothing::get_InnerClothedTexture()
    IL_0218:  callvirt   instance void Game.PlayerModelWidget::set_CharacterSkinTexture(class [Engine]Engine.Graphics.Texture2D)
    IL_021d:  ldarg.0
    IL_021e:  ldfld      class Game.PlayerModelWidget Game.ClothingWidget::m_outerClothingModelWidget
    IL_0223:  ldarg.1
    IL_0224:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_0229:  callvirt   instance valuetype Game.PlayerClass Game.PlayerData::get_PlayerClass()
    IL_022e:  callvirt   instance void Game.PlayerModelWidget::set_PlayerClass(valuetype Game.PlayerClass)
    IL_0233:  ldarg.0
    IL_0234:  ldfld      class Game.PlayerModelWidget Game.ClothingWidget::m_outerClothingModelWidget
    IL_0239:  ldarg.0
    IL_023a:  ldfld      class Game.ComponentPlayer Game.ClothingWidget::m_componentPlayer
    IL_023f:  callvirt   instance class Game.ComponentClothing Game.ComponentPlayer::get_ComponentClothing()
    IL_0244:  callvirt   instance class [Engine]Engine.Graphics.Texture2D Game.ComponentClothing::get_OuterClothedTexture()
    IL_0249:  callvirt   instance void Game.PlayerModelWidget::set_OuterClothingTexture(class [Engine]Engine.Graphics.Texture2D)
    IL_024e:  ret
  } // end of method ClothingWidget::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       127 (0x7f)
    .maxstack  4
    .locals init (string V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ButtonWidget Game.ClothingWidget::m_vitalStatsButton
    IL_0006:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_000b:  brfalse.s  IL_0030

    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.ComponentPlayer Game.ClothingWidget::m_componentPlayer
    IL_0013:  brfalse.s  IL_0030

    IL_0015:  ldarg.0
    IL_0016:  ldfld      class Game.ComponentPlayer Game.ClothingWidget::m_componentPlayer
    IL_001b:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0020:  ldarg.0
    IL_0021:  ldfld      class Game.ComponentPlayer Game.ClothingWidget::m_componentPlayer
    IL_0026:  newobj     instance void Game.VitalStatsWidget::.ctor(class Game.ComponentPlayer)
    IL_002b:  callvirt   instance void Game.ComponentGui::set_ModalPanelWidget(class Game.Widget)
    IL_0030:  ldarg.0
    IL_0031:  ldfld      class Game.ButtonWidget Game.ClothingWidget::m_sleepButton
    IL_0036:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_003b:  brfalse.s  IL_007e

    IL_003d:  ldarg.0
    IL_003e:  ldfld      class Game.ComponentPlayer Game.ClothingWidget::m_componentPlayer
    IL_0043:  brfalse.s  IL_007e

    IL_0045:  ldarg.0
    IL_0046:  ldfld      class Game.ComponentPlayer Game.ClothingWidget::m_componentPlayer
    IL_004b:  callvirt   instance class Game.ComponentSleep Game.ComponentPlayer::get_ComponentSleep()
    IL_0050:  ldloca.s   V_0
    IL_0052:  callvirt   instance bool Game.ComponentSleep::CanSleep(string&)
    IL_0057:  brtrue.s   IL_006d

    IL_0059:  ldarg.0
    IL_005a:  ldfld      class Game.ComponentPlayer Game.ClothingWidget::m_componentPlayer
    IL_005f:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0064:  ldloc.0
    IL_0065:  ldc.i4.0
    IL_0066:  ldc.i4.0
    IL_0067:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_006c:  ret

    IL_006d:  ldarg.0
    IL_006e:  ldfld      class Game.ComponentPlayer Game.ClothingWidget::m_componentPlayer
    IL_0073:  callvirt   instance class Game.ComponentSleep Game.ComponentPlayer::get_ComponentSleep()
    IL_0078:  ldc.i4.1
    IL_0079:  callvirt   instance void Game.ComponentSleep::Sleep(bool)
    IL_007e:  ret
  } // end of method ClothingWidget::Update

} // end of class Game.ClothingWidget