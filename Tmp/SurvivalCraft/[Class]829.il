.class public auto ansi beforefieldinit Game.CreativeInventoryPanel
       extends Game.CanvasWidget
{
  .field private class Game.CreativeInventoryWidget m_creativeInventoryWidget
  .field private class Game.ComponentCreativeInventory m_componentCreativeInventory
  .field private class [System.Collections]System.Collections.Generic.List`1<int32> m_slotIndices
  .field private class Game.GridPanelWidget m_inventoryGrid
  .field private int32 m_pagesCount
  .field private int32 m_assignedCategoryIndex
  .field private int32 m_assignedPageIndex
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.CreativeInventoryWidget creativeInventoryWidget) cil managed
  {
    // 代码大小       199 (0xc7)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0,
             int32 V_1,
             int32 V_2,
             class Game.InventorySlotWidget V_3)
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<int32>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.CreativeInventoryPanel::m_slotIndices
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.m1
    IL_000d:  stfld      int32 Game.CreativeInventoryPanel::m_assignedCategoryIndex
    IL_0012:  ldarg.0
    IL_0013:  ldc.i4.m1
    IL_0014:  stfld      int32 Game.CreativeInventoryPanel::m_assignedPageIndex
    IL_0019:  ldarg.0
    IL_001a:  call       instance void Game.CanvasWidget::.ctor()
    IL_001f:  ldarg.0
    IL_0020:  ldarg.1
    IL_0021:  stfld      class Game.CreativeInventoryWidget Game.CreativeInventoryPanel::m_creativeInventoryWidget
    IL_0026:  ldarg.0
    IL_0027:  ldarg.1
    IL_0028:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity Game.CreativeInventoryWidget::get_Entity()
    IL_002d:  ldc.i4.1
    IL_002e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreativeInventory>(bool)
    IL_0033:  stfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_0038:  ldstr      "Widgets/CreativeInventoryPanel"
    IL_003d:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0042:  stloc.0
    IL_0043:  ldarg.0
    IL_0044:  ldarg.0
    IL_0045:  ldloc.0
    IL_0046:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_004b:  ldarg.0
    IL_004c:  ldarg.0
    IL_004d:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0052:  ldstr      "InventoryGrid"
    IL_0057:  ldc.i4.1
    IL_0058:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.GridPanelWidget>(string,
                                                                                              bool)
    IL_005d:  stfld      class Game.GridPanelWidget Game.CreativeInventoryPanel::m_inventoryGrid
    IL_0062:  ldc.i4.0
    IL_0063:  stloc.1
    IL_0064:  br.s       IL_00b8

    IL_0066:  ldc.i4.0
    IL_0067:  stloc.2
    IL_0068:  br.s       IL_00a6

    IL_006a:  newobj     instance void Game.InventorySlotWidget::.ctor()
    IL_006f:  stloc.3
    IL_0070:  ldloc.3
    IL_0071:  ldc.i4.1
    IL_0072:  callvirt   instance void Game.InventorySlotWidget::set_HideEditOverlay(bool)
    IL_0077:  ldloc.3
    IL_0078:  ldc.i4.1
    IL_0079:  callvirt   instance void Game.InventorySlotWidget::set_HideInteractiveOverlay(bool)
    IL_007e:  ldarg.0
    IL_007f:  ldfld      class Game.GridPanelWidget Game.CreativeInventoryPanel::m_inventoryGrid
    IL_0084:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0089:  ldloc.3
    IL_008a:  callvirt   instance void Game.WidgetsContainer::Add(class Game.Widget)
    IL_008f:  ldarg.0
    IL_0090:  ldfld      class Game.GridPanelWidget Game.CreativeInventoryPanel::m_inventoryGrid
    IL_0095:  ldloc.3
    IL_0096:  ldloc.2
    IL_0097:  ldloc.1
    IL_0098:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_009d:  callvirt   instance void Game.GridPanelWidget::SetWidgetCell(class Game.Widget,
                                                                           valuetype [Engine]Engine.Point2)
    IL_00a2:  ldloc.2
    IL_00a3:  ldc.i4.1
    IL_00a4:  add
    IL_00a5:  stloc.2
    IL_00a6:  ldloc.2
    IL_00a7:  ldarg.0
    IL_00a8:  ldfld      class Game.GridPanelWidget Game.CreativeInventoryPanel::m_inventoryGrid
    IL_00ad:  callvirt   instance int32 Game.GridPanelWidget::get_ColumnsCount()
    IL_00b2:  blt.s      IL_006a

    IL_00b4:  ldloc.1
    IL_00b5:  ldc.i4.1
    IL_00b6:  add
    IL_00b7:  stloc.1
    IL_00b8:  ldloc.1
    IL_00b9:  ldarg.0
    IL_00ba:  ldfld      class Game.GridPanelWidget Game.CreativeInventoryPanel::m_inventoryGrid
    IL_00bf:  callvirt   instance int32 Game.GridPanelWidget::get_RowsCount()
    IL_00c4:  blt.s      IL_0066

    IL_00c6:  ret
  } // end of method CreativeInventoryPanel::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       879 (0x36f)
    .maxstack  7
    .locals init (valuetype Game.InputState V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> V_9,
             class Game.InventorySlotWidget V_10)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.CreativeInventoryPanel::m_assignedCategoryIndex
    IL_0006:  ldc.i4.0
    IL_0007:  blt        IL_00f4

    IL_000c:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0011:  stloc.0
    IL_0012:  ldloca.s   V_0
    IL_0014:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.InputState::Scroll
    IL_0019:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_001e:  brfalse.s  IL_0076

    IL_0020:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0025:  stloc.0
    IL_0026:  ldloca.s   V_0
    IL_0028:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.InputState::Scroll
    IL_002d:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0032:  stloc.1
    IL_0033:  ldloca.s   V_1
    IL_0035:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XY()
    IL_003a:  call       class Game.Widget Game.WidgetsManager::HitTest(valuetype [Engine]Engine.Vector2)
    IL_003f:  ldarg.0
    IL_0040:  ldfld      class Game.GridPanelWidget Game.CreativeInventoryPanel::m_inventoryGrid
    IL_0045:  callvirt   instance bool Game.Widget::IsChildWidgetOf(class Game.ContainerWidget)
    IL_004a:  brfalse.s  IL_0076

    IL_004c:  ldarg.0
    IL_004d:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_0052:  dup
    IL_0053:  callvirt   instance int32 Game.ComponentCreativeInventory::get_PageIndex()
    IL_0058:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_005d:  stloc.0
    IL_005e:  ldloca.s   V_0
    IL_0060:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.InputState::Scroll
    IL_0065:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_006a:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_006f:  conv.i4
    IL_0070:  sub
    IL_0071:  callvirt   instance void Game.ComponentCreativeInventory::set_PageIndex(int32)
    IL_0076:  ldarg.0
    IL_0077:  ldfld      class Game.CreativeInventoryWidget Game.CreativeInventoryPanel::m_creativeInventoryWidget
    IL_007c:  callvirt   instance class Game.ButtonWidget Game.CreativeInventoryWidget::get_PageDownButton()
    IL_0081:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0086:  brfalse.s  IL_009d

    IL_0088:  ldarg.0
    IL_0089:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_008e:  dup
    IL_008f:  callvirt   instance int32 Game.ComponentCreativeInventory::get_PageIndex()
    IL_0094:  ldc.i4.1
    IL_0095:  add
    IL_0096:  stloc.2
    IL_0097:  ldloc.2
    IL_0098:  callvirt   instance void Game.ComponentCreativeInventory::set_PageIndex(int32)
    IL_009d:  ldarg.0
    IL_009e:  ldfld      class Game.CreativeInventoryWidget Game.CreativeInventoryPanel::m_creativeInventoryWidget
    IL_00a3:  callvirt   instance class Game.ButtonWidget Game.CreativeInventoryWidget::get_PageUpButton()
    IL_00a8:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00ad:  brfalse.s  IL_00c4

    IL_00af:  ldarg.0
    IL_00b0:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_00b5:  dup
    IL_00b6:  callvirt   instance int32 Game.ComponentCreativeInventory::get_PageIndex()
    IL_00bb:  ldc.i4.1
    IL_00bc:  sub
    IL_00bd:  stloc.2
    IL_00be:  ldloc.2
    IL_00bf:  callvirt   instance void Game.ComponentCreativeInventory::set_PageIndex(int32)
    IL_00c4:  ldarg.0
    IL_00c5:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_00ca:  ldarg.0
    IL_00cb:  ldfld      int32 Game.CreativeInventoryPanel::m_pagesCount
    IL_00d0:  ldc.i4.0
    IL_00d1:  bgt.s      IL_00d6

    IL_00d3:  ldc.i4.0
    IL_00d4:  br.s       IL_00ef

    IL_00d6:  ldarg.0
    IL_00d7:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_00dc:  callvirt   instance int32 Game.ComponentCreativeInventory::get_PageIndex()
    IL_00e1:  ldc.i4.0
    IL_00e2:  ldarg.0
    IL_00e3:  ldfld      int32 Game.CreativeInventoryPanel::m_pagesCount
    IL_00e8:  ldc.i4.1
    IL_00e9:  sub
    IL_00ea:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_00ef:  callvirt   instance void Game.ComponentCreativeInventory::set_PageIndex(int32)
    IL_00f4:  ldarg.0
    IL_00f5:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_00fa:  callvirt   instance int32 Game.ComponentCreativeInventory::get_CategoryIndex()
    IL_00ff:  ldarg.0
    IL_0100:  ldfld      int32 Game.CreativeInventoryPanel::m_assignedCategoryIndex
    IL_0105:  beq        IL_0222

    IL_010a:  ldarg.0
    IL_010b:  ldfld      class Game.CreativeInventoryWidget Game.CreativeInventoryPanel::m_creativeInventoryWidget
    IL_0110:  ldarg.0
    IL_0111:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_0116:  callvirt   instance int32 Game.ComponentCreativeInventory::get_CategoryIndex()
    IL_011b:  callvirt   instance string Game.CreativeInventoryWidget::GetCategoryName(int32)
    IL_0120:  ldstr      "User"
    IL_0125:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_012a:  brfalse.s  IL_014f

    IL_012c:  ldarg.0
    IL_012d:  ldc.i4.6
    IL_012e:  ldarg.0
    IL_012f:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_0134:  callvirt   instance int32 Game.ComponentCreativeInventory::get_OpenSlotsCount()
    IL_0139:  ldc.i4.6
    IL_013a:  sub
    IL_013b:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> [System.Linq]System.Linq.Enumerable::Range(int32,
                                                                                                                                          int32)
    IL_0140:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<int32>::.ctor(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
    IL_0145:  stfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.CreativeInventoryPanel::m_slotIndices
    IL_014a:  br         IL_01cf

    IL_014f:  ldarg.0
    IL_0150:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.CreativeInventoryPanel::m_slotIndices
    IL_0155:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Clear()
    IL_015a:  ldarg.0
    IL_015b:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_0160:  callvirt   instance int32 Game.ComponentCreativeInventory::get_OpenSlotsCount()
    IL_0165:  stloc.s    V_4
    IL_0167:  br.s       IL_01c0

    IL_0169:  ldarg.0
    IL_016a:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_016f:  ldloc.s    V_4
    IL_0171:  callvirt   instance int32 Game.ComponentCreativeInventory::GetSlotValue(int32)
    IL_0176:  stloc.s    V_5
    IL_0178:  ldloc.s    V_5
    IL_017a:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_017f:  stloc.s    V_6
    IL_0181:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0186:  ldloc.s    V_6
    IL_0188:  ldelem.ref
    IL_0189:  ldloc.s    V_5
    IL_018b:  callvirt   instance string Game.Block::GetCategory(int32)
    IL_0190:  ldarg.0
    IL_0191:  ldfld      class Game.CreativeInventoryWidget Game.CreativeInventoryPanel::m_creativeInventoryWidget
    IL_0196:  ldarg.0
    IL_0197:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_019c:  callvirt   instance int32 Game.ComponentCreativeInventory::get_CategoryIndex()
    IL_01a1:  callvirt   instance string Game.CreativeInventoryWidget::GetCategoryName(int32)
    IL_01a6:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_01ab:  brfalse.s  IL_01ba

    IL_01ad:  ldarg.0
    IL_01ae:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.CreativeInventoryPanel::m_slotIndices
    IL_01b3:  ldloc.s    V_4
    IL_01b5:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_01ba:  ldloc.s    V_4
    IL_01bc:  ldc.i4.1
    IL_01bd:  add
    IL_01be:  stloc.s    V_4
    IL_01c0:  ldloc.s    V_4
    IL_01c2:  ldarg.0
    IL_01c3:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_01c8:  callvirt   instance int32 Game.ComponentCreativeInventory::get_SlotsCount()
    IL_01cd:  blt.s      IL_0169

    IL_01cf:  ldarg.0
    IL_01d0:  ldfld      class Game.GridPanelWidget Game.CreativeInventoryPanel::m_inventoryGrid
    IL_01d5:  callvirt   instance int32 Game.GridPanelWidget::get_ColumnsCount()
    IL_01da:  ldarg.0
    IL_01db:  ldfld      class Game.GridPanelWidget Game.CreativeInventoryPanel::m_inventoryGrid
    IL_01e0:  callvirt   instance int32 Game.GridPanelWidget::get_RowsCount()
    IL_01e5:  mul
    IL_01e6:  stloc.3
    IL_01e7:  ldarg.0
    IL_01e8:  ldarg.0
    IL_01e9:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.CreativeInventoryPanel::m_slotIndices
    IL_01ee:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Count()
    IL_01f3:  ldloc.3
    IL_01f4:  add
    IL_01f5:  ldc.i4.1
    IL_01f6:  sub
    IL_01f7:  ldloc.3
    IL_01f8:  div
    IL_01f9:  stfld      int32 Game.CreativeInventoryPanel::m_pagesCount
    IL_01fe:  ldarg.0
    IL_01ff:  ldarg.0
    IL_0200:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_0205:  callvirt   instance int32 Game.ComponentCreativeInventory::get_CategoryIndex()
    IL_020a:  stfld      int32 Game.CreativeInventoryPanel::m_assignedCategoryIndex
    IL_020f:  ldarg.0
    IL_0210:  ldc.i4.m1
    IL_0211:  stfld      int32 Game.CreativeInventoryPanel::m_assignedPageIndex
    IL_0216:  ldarg.0
    IL_0217:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_021c:  ldc.i4.0
    IL_021d:  callvirt   instance void Game.ComponentCreativeInventory::set_PageIndex(int32)
    IL_0222:  ldarg.0
    IL_0223:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_0228:  callvirt   instance int32 Game.ComponentCreativeInventory::get_PageIndex()
    IL_022d:  ldarg.0
    IL_022e:  ldfld      int32 Game.CreativeInventoryPanel::m_assignedPageIndex
    IL_0233:  beq        IL_02e8

    IL_0238:  ldarg.0
    IL_0239:  ldfld      class Game.GridPanelWidget Game.CreativeInventoryPanel::m_inventoryGrid
    IL_023e:  callvirt   instance int32 Game.GridPanelWidget::get_ColumnsCount()
    IL_0243:  ldarg.0
    IL_0244:  ldfld      class Game.GridPanelWidget Game.CreativeInventoryPanel::m_inventoryGrid
    IL_0249:  callvirt   instance int32 Game.GridPanelWidget::get_RowsCount()
    IL_024e:  mul
    IL_024f:  stloc.s    V_7
    IL_0251:  ldarg.0
    IL_0252:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_0257:  callvirt   instance int32 Game.ComponentCreativeInventory::get_PageIndex()
    IL_025c:  ldloc.s    V_7
    IL_025e:  mul
    IL_025f:  stloc.s    V_8
    IL_0261:  ldarg.0
    IL_0262:  ldfld      class Game.GridPanelWidget Game.CreativeInventoryPanel::m_inventoryGrid
    IL_0267:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_026c:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> Game.WidgetsContainer::GetEnumerator()
    IL_0271:  stloc.s    V_9
    .try
    {
      IL_0273:  br.s       IL_02c0

      IL_0275:  ldloc.s    V_9
      IL_0277:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget>::get_Current()
      IL_027c:  isinst     Game.InventorySlotWidget
      IL_0281:  stloc.s    V_10
      IL_0283:  ldloc.s    V_10
      IL_0285:  brfalse.s  IL_02c0

      IL_0287:  ldloc.s    V_8
      IL_0289:  ldarg.0
      IL_028a:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.CreativeInventoryPanel::m_slotIndices
      IL_028f:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Count()
      IL_0294:  bge.s      IL_02b7

      IL_0296:  ldloc.s    V_10
      IL_0298:  ldarg.0
      IL_0299:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
      IL_029e:  ldarg.0
      IL_029f:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.CreativeInventoryPanel::m_slotIndices
      IL_02a4:  ldloc.s    V_8
      IL_02a6:  dup
      IL_02a7:  ldc.i4.1
      IL_02a8:  add
      IL_02a9:  stloc.s    V_8
      IL_02ab:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Item(int32)
      IL_02b0:  callvirt   instance void Game.InventorySlotWidget::AssignInventorySlot(class Game.IInventory,
                                                                                       int32)
      IL_02b5:  br.s       IL_02c0

      IL_02b7:  ldloc.s    V_10
      IL_02b9:  ldnull
      IL_02ba:  ldc.i4.0
      IL_02bb:  callvirt   instance void Game.InventorySlotWidget::AssignInventorySlot(class Game.IInventory,
                                                                                       int32)
      IL_02c0:  ldloc.s    V_9
      IL_02c2:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_02c7:  brtrue.s   IL_0275

      IL_02c9:  leave.s    IL_02d7

    }  // end .try
    finally
    {
      IL_02cb:  ldloc.s    V_9
      IL_02cd:  brfalse.s  IL_02d6

      IL_02cf:  ldloc.s    V_9
      IL_02d1:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_02d6:  endfinally
    }  // end handler
    IL_02d7:  ldarg.0
    IL_02d8:  ldarg.0
    IL_02d9:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_02de:  callvirt   instance int32 Game.ComponentCreativeInventory::get_PageIndex()
    IL_02e3:  stfld      int32 Game.CreativeInventoryPanel::m_assignedPageIndex
    IL_02e8:  ldarg.0
    IL_02e9:  ldfld      class Game.CreativeInventoryWidget Game.CreativeInventoryPanel::m_creativeInventoryWidget
    IL_02ee:  callvirt   instance class Game.LabelWidget Game.CreativeInventoryWidget::get_PageLabel()
    IL_02f3:  ldstr      "{0}/{1}"
    IL_02f8:  ldc.i4.2
    IL_02f9:  newarr     [System.Runtime]System.Object
    IL_02fe:  dup
    IL_02ff:  ldc.i4.0
    IL_0300:  ldarg.0
    IL_0301:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_0306:  callvirt   instance int32 Game.ComponentCreativeInventory::get_PageIndex()
    IL_030b:  ldc.i4.1
    IL_030c:  add
    IL_030d:  box        [System.Runtime]System.Int32
    IL_0312:  stelem.ref
    IL_0313:  dup
    IL_0314:  ldc.i4.1
    IL_0315:  ldarg.0
    IL_0316:  ldfld      int32 Game.CreativeInventoryPanel::m_pagesCount
    IL_031b:  box        [System.Runtime]System.Int32
    IL_0320:  stelem.ref
    IL_0321:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0326:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_032b:  ldarg.0
    IL_032c:  ldfld      class Game.CreativeInventoryWidget Game.CreativeInventoryPanel::m_creativeInventoryWidget
    IL_0331:  callvirt   instance class Game.ButtonWidget Game.CreativeInventoryWidget::get_PageDownButton()
    IL_0336:  ldarg.0
    IL_0337:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_033c:  callvirt   instance int32 Game.ComponentCreativeInventory::get_PageIndex()
    IL_0341:  ldarg.0
    IL_0342:  ldfld      int32 Game.CreativeInventoryPanel::m_pagesCount
    IL_0347:  ldc.i4.1
    IL_0348:  sub
    IL_0349:  clt
    IL_034b:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0350:  ldarg.0
    IL_0351:  ldfld      class Game.CreativeInventoryWidget Game.CreativeInventoryPanel::m_creativeInventoryWidget
    IL_0356:  callvirt   instance class Game.ButtonWidget Game.CreativeInventoryWidget::get_PageUpButton()
    IL_035b:  ldarg.0
    IL_035c:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_0361:  callvirt   instance int32 Game.ComponentCreativeInventory::get_PageIndex()
    IL_0366:  ldc.i4.0
    IL_0367:  cgt
    IL_0369:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_036e:  ret
  } // end of method CreativeInventoryPanel::Update

} // end of class Game.CreativeInventoryPanel