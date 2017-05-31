.class public auto ansi beforefieldinit Game.ClothingWidget
       extends Game.CanvasWidget
{
  .field private class Game.GridPanelWidget m_inventoryGrid
  .field private class Game.StackPanelWidget m_clothingStack
  .field private class Game.ButtonWidget m_vitalStatsButton
  .field private class Game.ButtonWidget m_sleepButton
  .field private class Game.ModelWidget m_innerClothingModelWidget
  .field private class Game.ModelWidget m_outerClothingModelWidget
  .field private class Game.ComponentPlayer m_componentPlayer
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.ComponentPlayer componentPlayer) cil managed
  {
    // 代码大小       540 (0x21c)
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
    IL_0022:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0027:  ldstr      "ClothingStack"
    IL_002c:  ldc.i4.1
    IL_002d:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.StackPanelWidget>(string,
                                                                                               bool)
    IL_0032:  stfld      class Game.StackPanelWidget Game.ClothingWidget::m_clothingStack
    IL_0037:  ldarg.0
    IL_0038:  ldarg.0
    IL_0039:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_003e:  ldstr      "InventoryGrid"
    IL_0043:  ldc.i4.1
    IL_0044:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.GridPanelWidget>(string,
                                                                                              bool)
    IL_0049:  stfld      class Game.GridPanelWidget Game.ClothingWidget::m_inventoryGrid
    IL_004e:  ldarg.0
    IL_004f:  ldarg.0
    IL_0050:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0055:  ldstr      "VitalStatsButton"
    IL_005a:  ldc.i4.1
    IL_005b:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0060:  stfld      class Game.ButtonWidget Game.ClothingWidget::m_vitalStatsButton
    IL_0065:  ldarg.0
    IL_0066:  ldarg.0
    IL_0067:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_006c:  ldstr      "SleepButton"
    IL_0071:  ldc.i4.1
    IL_0072:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0077:  stfld      class Game.ButtonWidget Game.ClothingWidget::m_sleepButton
    IL_007c:  ldarg.0
    IL_007d:  ldarg.0
    IL_007e:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0083:  ldstr      "InnerClothingModel"
    IL_0088:  ldc.i4.1
    IL_0089:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ModelWidget>(string,
                                                                                          bool)
    IL_008e:  stfld      class Game.ModelWidget Game.ClothingWidget::m_innerClothingModelWidget
    IL_0093:  ldarg.0
    IL_0094:  ldarg.0
    IL_0095:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_009a:  ldstr      "OuterClothingModel"
    IL_009f:  ldc.i4.1
    IL_00a0:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ModelWidget>(string,
                                                                                          bool)
    IL_00a5:  stfld      class Game.ModelWidget Game.ClothingWidget::m_outerClothingModelWidget
    IL_00aa:  ldc.i4.0
    IL_00ab:  stloc.2
    IL_00ac:  br         IL_0162

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
    IL_011d:  callvirt   instance void Game.InventorySlotWidget::set_HideHighlightRectangle(bool)
    IL_0122:  ldloc.3
    IL_0123:  ldc.i4.1
    IL_0124:  callvirt   instance void Game.InventorySlotWidget::set_HideBlockIcon(bool)
    IL_0129:  ldloc.3
    IL_012a:  ldarg.0
    IL_012b:  ldfld      class Game.ComponentPlayer Game.ClothingWidget::m_componentPlayer
    IL_0130:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0135:  ldc.i4.1
    IL_0136:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_013b:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_0140:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_0145:  ldc.i4.0
    IL_0146:  ceq
    IL_0148:  callvirt   instance void Game.InventorySlotWidget::set_HideHealthBar(bool)
    IL_014d:  ldarg.0
    IL_014e:  ldfld      class Game.StackPanelWidget Game.ClothingWidget::m_clothingStack
    IL_0153:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0158:  ldloc.3
    IL_0159:  callvirt   instance void Game.WidgetsContainer::Add(class Game.Widget)
    IL_015e:  ldloc.2
    IL_015f:  ldc.i4.1
    IL_0160:  add
    IL_0161:  stloc.2
    IL_0162:  ldloc.2
    IL_0163:  ldc.i4.4
    IL_0164:  blt        IL_00b1

    IL_0169:  ldc.i4.6
    IL_016a:  stloc.1
    IL_016b:  ldc.i4.0
    IL_016c:  stloc.s    V_5
    IL_016e:  br.s       IL_01d6

    IL_0170:  ldc.i4.0
    IL_0171:  stloc.s    V_6
    IL_0173:  br.s       IL_01c1

    IL_0175:  newobj     instance void Game.InventorySlotWidget::.ctor()
    IL_017a:  stloc.s    V_7
    IL_017c:  ldloc.s    V_7
    IL_017e:  ldarg.1
    IL_017f:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_0184:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0189:  ldloc.1
    IL_018a:  dup
    IL_018b:  ldc.i4.1
    IL_018c:  add
    IL_018d:  stloc.1
    IL_018e:  callvirt   instance void Game.InventorySlotWidget::AssignInventorySlot(class Game.IInventory,
                                                                                     int32)
    IL_0193:  ldarg.0
    IL_0194:  ldfld      class Game.GridPanelWidget Game.ClothingWidget::m_inventoryGrid
    IL_0199:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_019e:  ldloc.s    V_7
    IL_01a0:  callvirt   instance void Game.WidgetsContainer::Add(class Game.Widget)
    IL_01a5:  ldarg.0
    IL_01a6:  ldfld      class Game.GridPanelWidget Game.ClothingWidget::m_inventoryGrid
    IL_01ab:  ldloc.s    V_7
    IL_01ad:  ldloc.s    V_6
    IL_01af:  ldloc.s    V_5
    IL_01b1:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_01b6:  callvirt   instance void Game.GridPanelWidget::SetWidgetCell(class Game.Widget,
                                                                           valuetype [Engine]Engine.Point2)
    IL_01bb:  ldloc.s    V_6
    IL_01bd:  ldc.i4.1
    IL_01be:  add
    IL_01bf:  stloc.s    V_6
    IL_01c1:  ldloc.s    V_6
    IL_01c3:  ldarg.0
    IL_01c4:  ldfld      class Game.GridPanelWidget Game.ClothingWidget::m_inventoryGrid
    IL_01c9:  callvirt   instance int32 Game.GridPanelWidget::get_ColumnsCount()
    IL_01ce:  blt.s      IL_0175

    IL_01d0:  ldloc.s    V_5
    IL_01d2:  ldc.i4.1
    IL_01d3:  add
    IL_01d4:  stloc.s    V_5
    IL_01d6:  ldloc.s    V_5
    IL_01d8:  ldarg.0
    IL_01d9:  ldfld      class Game.GridPanelWidget Game.ClothingWidget::m_inventoryGrid
    IL_01de:  callvirt   instance int32 Game.GridPanelWidget::get_RowsCount()
    IL_01e3:  blt.s      IL_0170

    IL_01e5:  ldarg.0
    IL_01e6:  ldfld      class Game.ModelWidget Game.ClothingWidget::m_innerClothingModelWidget
    IL_01eb:  ldarg.0
    IL_01ec:  ldfld      class Game.ComponentPlayer Game.ClothingWidget::m_componentPlayer
    IL_01f1:  callvirt   instance class Game.ComponentClothing Game.ComponentPlayer::get_ComponentClothing()
    IL_01f6:  callvirt   instance class [Engine]Engine.Graphics.Texture2D Game.ComponentClothing::get_InnerClothedTexture()
    IL_01fb:  callvirt   instance void Game.ModelWidget::set_TextureOverride(class [Engine]Engine.Graphics.Texture2D)
    IL_0200:  ldarg.0
    IL_0201:  ldfld      class Game.ModelWidget Game.ClothingWidget::m_outerClothingModelWidget
    IL_0206:  ldarg.0
    IL_0207:  ldfld      class Game.ComponentPlayer Game.ClothingWidget::m_componentPlayer
    IL_020c:  callvirt   instance class Game.ComponentClothing Game.ComponentPlayer::get_ComponentClothing()
    IL_0211:  callvirt   instance class [Engine]Engine.Graphics.Texture2D Game.ComponentClothing::get_OuterClothedTexture()
    IL_0216:  callvirt   instance void Game.ModelWidget::set_TextureOverride(class [Engine]Engine.Graphics.Texture2D)
    IL_021b:  ret
  } // end of method ClothingWidget::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       388 (0x184)
    .maxstack  8
    .locals init (float32 V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             string V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ButtonWidget Game.ClothingWidget::m_vitalStatsButton
    IL_0006:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_000b:  brfalse.s  IL_0036

    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.ComponentPlayer Game.ClothingWidget::m_componentPlayer
    IL_0013:  brfalse.s  IL_0036

    IL_0015:  ldarg.0
    IL_0016:  ldfld      class Game.ComponentPlayer Game.ClothingWidget::m_componentPlayer
    IL_001b:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0020:  ldc.i4.1
    IL_0021:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGui>(bool)
    IL_0026:  ldarg.0
    IL_0027:  ldfld      class Game.ComponentPlayer Game.ClothingWidget::m_componentPlayer
    IL_002c:  newobj     instance void Game.VitalStatsWidget::.ctor(class Game.ComponentPlayer)
    IL_0031:  callvirt   instance void Game.SubsystemGui::set_ModalPanelWidget(class Game.Widget)
    IL_0036:  ldarg.0
    IL_0037:  ldfld      class Game.ButtonWidget Game.ClothingWidget::m_sleepButton
    IL_003c:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0041:  brfalse.s  IL_008a

    IL_0043:  ldarg.0
    IL_0044:  ldfld      class Game.ComponentPlayer Game.ClothingWidget::m_componentPlayer
    IL_0049:  brfalse.s  IL_008a

    IL_004b:  ldarg.0
    IL_004c:  ldfld      class Game.ComponentPlayer Game.ClothingWidget::m_componentPlayer
    IL_0051:  callvirt   instance class Game.ComponentSleep Game.ComponentPlayer::get_ComponentSleep()
    IL_0056:  ldloca.s   V_2
    IL_0058:  callvirt   instance bool Game.ComponentSleep::CanSleep(string&)
    IL_005d:  brtrue.s   IL_007a

    IL_005f:  ldarg.0
    IL_0060:  ldfld      class Game.ComponentPlayer Game.ClothingWidget::m_componentPlayer
    IL_0065:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_006a:  ldc.i4.1
    IL_006b:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGui>(bool)
    IL_0070:  ldloc.2
    IL_0071:  ldc.i4.0
    IL_0072:  ldc.i4.0
    IL_0073:  callvirt   instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0078:  br.s       IL_008a

    IL_007a:  ldarg.0
    IL_007b:  ldfld      class Game.ComponentPlayer Game.ClothingWidget::m_componentPlayer
    IL_0080:  callvirt   instance class Game.ComponentSleep Game.ComponentPlayer::get_ComponentSleep()
    IL_0085:  callvirt   instance void Game.ComponentSleep::Sleep()
    IL_008a:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_008f:  ldc.r8     1000.
    IL_0098:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_009d:  conv.r4
    IL_009e:  stloc.0
    IL_009f:  ldloca.s   V_1
    IL_00a1:  ldc.r4     -0.75
    IL_00a6:  ldc.r4     0.75
    IL_00ab:  ldloc.0
    IL_00ac:  ldc.r4     0.2
    IL_00b1:  ldc.i4.1
    IL_00b2:  ldc.r4     2.
    IL_00b7:  ldc.r4     0.5
    IL_00bc:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_00c1:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_00c6:  stfld      float32 [Engine]Engine.Vector2::X
    IL_00cb:  ldloca.s   V_1
    IL_00cd:  ldc.r4     -0.5
    IL_00d2:  ldc.r4     0.5
    IL_00d7:  ldloc.0
    IL_00d8:  ldc.r4     0.17
    IL_00dd:  ldc.i4.1
    IL_00de:  ldc.r4     2.
    IL_00e3:  ldc.r4     0.5
    IL_00e8:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_00ed:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_00f2:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_00f7:  ldarg.0
    IL_00f8:  ldfld      class Game.ModelWidget Game.ClothingWidget::m_innerClothingModelWidget
    IL_00fd:  ldarg.0
    IL_00fe:  ldfld      class Game.ModelWidget Game.ClothingWidget::m_innerClothingModelWidget
    IL_0103:  callvirt   instance class [Engine]Engine.Graphics.Model Game.ModelWidget::get_Model()
    IL_0108:  ldstr      "Head"
    IL_010d:  ldc.i4.1
    IL_010e:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_0113:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0118:  ldloc.1
    IL_0119:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_011e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_0123:  ldloc.1
    IL_0124:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0129:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationZ(float32)
    IL_012e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0133:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0138:  callvirt   instance void Game.ModelWidget::SetBoneTransform(int32,
                                                                          valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_013d:  ldarg.0
    IL_013e:  ldfld      class Game.ModelWidget Game.ClothingWidget::m_outerClothingModelWidget
    IL_0143:  ldarg.0
    IL_0144:  ldfld      class Game.ModelWidget Game.ClothingWidget::m_outerClothingModelWidget
    IL_0149:  callvirt   instance class [Engine]Engine.Graphics.Model Game.ModelWidget::get_Model()
    IL_014e:  ldstr      "Head"
    IL_0153:  ldc.i4.1
    IL_0154:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_0159:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_015e:  ldloc.1
    IL_015f:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0164:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_0169:  ldloc.1
    IL_016a:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_016f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationZ(float32)
    IL_0174:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0179:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_017e:  callvirt   instance void Game.ModelWidget::SetBoneTransform(int32,
                                                                          valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0183:  ret
  } // end of method ClothingWidget::Update

} // end of class Game.ClothingWidget