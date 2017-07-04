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
    // 代码大小       206 (0xce)
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
    IL_004d:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0052:  ldstr      "InventoryGrid"
    IL_0057:  ldc.i4.1
    IL_0058:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.GridPanelWidget>(string,
                                                                                         bool)
    IL_005d:  stfld      class Game.GridPanelWidget Game.CreativeInventoryPanel::m_inventoryGrid
    IL_0062:  ldc.i4.0
    IL_0063:  stloc.1
    IL_0064:  br.s       IL_00bf

    IL_0066:  ldc.i4.0
    IL_0067:  stloc.2
    IL_0068:  br.s       IL_00ad

    IL_006a:  newobj     instance void Game.InventorySlotWidget::.ctor()
    IL_006f:  stloc.3
    IL_0070:  ldloc.3
    IL_0071:  ldc.i4.1
    IL_0072:  callvirt   instance void Game.InventorySlotWidget::set_HideEditOverlay(bool)
    IL_0077:  ldloc.3
    IL_0078:  ldc.i4.1
    IL_0079:  callvirt   instance void Game.InventorySlotWidget::set_HideInteractiveOverlay(bool)
    IL_007e:  ldloc.3
    IL_007f:  ldc.i4.1
    IL_0080:  callvirt   instance void Game.InventorySlotWidget::set_HideFoodOverlay(bool)
    IL_0085:  ldarg.0
    IL_0086:  ldfld      class Game.GridPanelWidget Game.CreativeInventoryPanel::m_inventoryGrid
    IL_008b:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0090:  ldloc.3
    IL_0091:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_0096:  ldarg.0
    IL_0097:  ldfld      class Game.GridPanelWidget Game.CreativeInventoryPanel::m_inventoryGrid
    IL_009c:  ldloc.3
    IL_009d:  ldloc.2
    IL_009e:  ldloc.1
    IL_009f:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_00a4:  callvirt   instance void Game.GridPanelWidget::SetWidgetCell(class Game.Widget,
                                                                           valuetype [Engine]Engine.Point2)
    IL_00a9:  ldloc.2
    IL_00aa:  ldc.i4.1
    IL_00ab:  add
    IL_00ac:  stloc.2
    IL_00ad:  ldloc.2
    IL_00ae:  ldarg.0
    IL_00af:  ldfld      class Game.GridPanelWidget Game.CreativeInventoryPanel::m_inventoryGrid
    IL_00b4:  callvirt   instance int32 Game.GridPanelWidget::get_ColumnsCount()
    IL_00b9:  blt.s      IL_006a

    IL_00bb:  ldloc.1
    IL_00bc:  ldc.i4.1
    IL_00bd:  add
    IL_00be:  stloc.1
    IL_00bf:  ldloc.1
    IL_00c0:  ldarg.0
    IL_00c1:  ldfld      class Game.GridPanelWidget Game.CreativeInventoryPanel::m_inventoryGrid
    IL_00c6:  callvirt   instance int32 Game.GridPanelWidget::get_RowsCount()
    IL_00cb:  blt.s      IL_0066

    IL_00cd:  ret
  } // end of method CreativeInventoryPanel::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       918 (0x396)
    .maxstack  7
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_0,
             class Game.Widget V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             valuetype Game.WidgetsList/Enumerator V_10,
             class Game.InventorySlotWidget V_11)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.CreativeInventoryPanel::m_assignedCategoryIndex
    IL_0006:  ldc.i4.0
    IL_0007:  blt        IL_0116

    IL_000c:  ldarg.0
    IL_000d:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0012:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.WidgetInput::get_Scroll()
    IL_0017:  stloc.0
    IL_0018:  ldloca.s   V_0
    IL_001a:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_001f:  brfalse.s  IL_007e

    IL_0021:  ldarg.0
    IL_0022:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0027:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.WidgetInput::get_Scroll()
    IL_002c:  stloc.0
    IL_002d:  ldloca.s   V_0
    IL_002f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0034:  stloc.2
    IL_0035:  ldloca.s   V_2
    IL_0037:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XY()
    IL_003c:  call       class Game.Widget Game.WidgetsManager::HitTest(valuetype [Engine]Engine.Vector2)
    IL_0041:  stloc.1
    IL_0042:  ldloc.1
    IL_0043:  brfalse.s  IL_007e

    IL_0045:  ldloc.1
    IL_0046:  ldarg.0
    IL_0047:  ldfld      class Game.GridPanelWidget Game.CreativeInventoryPanel::m_inventoryGrid
    IL_004c:  callvirt   instance bool Game.Widget::IsChildWidgetOf(class Game.ContainerWidget)
    IL_0051:  brfalse.s  IL_007e

    IL_0053:  ldarg.0
    IL_0054:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_0059:  dup
    IL_005a:  callvirt   instance int32 Game.ComponentCreativeInventory::get_PageIndex()
    IL_005f:  ldarg.0
    IL_0060:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0065:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.WidgetInput::get_Scroll()
    IL_006a:  stloc.0
    IL_006b:  ldloca.s   V_0
    IL_006d:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0072:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0077:  conv.i4
    IL_0078:  sub
    IL_0079:  callvirt   instance void Game.ComponentCreativeInventory::set_PageIndex(int32)
    IL_007e:  ldarg.0
    IL_007f:  ldfld      class Game.CreativeInventoryWidget Game.CreativeInventoryPanel::m_creativeInventoryWidget
    IL_0084:  callvirt   instance class Game.ButtonWidget Game.CreativeInventoryWidget::get_PageDownButton()
    IL_0089:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_008e:  brtrue.s   IL_009d

    IL_0090:  ldarg.0
    IL_0091:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0096:  callvirt   instance bool Game.WidgetInput::get_Down()
    IL_009b:  brfalse.s  IL_00b2

    IL_009d:  ldarg.0
    IL_009e:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_00a3:  dup
    IL_00a4:  callvirt   instance int32 Game.ComponentCreativeInventory::get_PageIndex()
    IL_00a9:  ldc.i4.1
    IL_00aa:  add
    IL_00ab:  stloc.3
    IL_00ac:  ldloc.3
    IL_00ad:  callvirt   instance void Game.ComponentCreativeInventory::set_PageIndex(int32)
    IL_00b2:  ldarg.0
    IL_00b3:  ldfld      class Game.CreativeInventoryWidget Game.CreativeInventoryPanel::m_creativeInventoryWidget
    IL_00b8:  callvirt   instance class Game.ButtonWidget Game.CreativeInventoryWidget::get_PageUpButton()
    IL_00bd:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00c2:  brtrue.s   IL_00d1

    IL_00c4:  ldarg.0
    IL_00c5:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_00ca:  callvirt   instance bool Game.WidgetInput::get_Up()
    IL_00cf:  brfalse.s  IL_00e6

    IL_00d1:  ldarg.0
    IL_00d2:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_00d7:  dup
    IL_00d8:  callvirt   instance int32 Game.ComponentCreativeInventory::get_PageIndex()
    IL_00dd:  ldc.i4.1
    IL_00de:  sub
    IL_00df:  stloc.3
    IL_00e0:  ldloc.3
    IL_00e1:  callvirt   instance void Game.ComponentCreativeInventory::set_PageIndex(int32)
    IL_00e6:  ldarg.0
    IL_00e7:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_00ec:  ldarg.0
    IL_00ed:  ldfld      int32 Game.CreativeInventoryPanel::m_pagesCount
    IL_00f2:  ldc.i4.0
    IL_00f3:  bgt.s      IL_00f8

    IL_00f5:  ldc.i4.0
    IL_00f6:  br.s       IL_0111

    IL_00f8:  ldarg.0
    IL_00f9:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_00fe:  callvirt   instance int32 Game.ComponentCreativeInventory::get_PageIndex()
    IL_0103:  ldc.i4.0
    IL_0104:  ldarg.0
    IL_0105:  ldfld      int32 Game.CreativeInventoryPanel::m_pagesCount
    IL_010a:  ldc.i4.1
    IL_010b:  sub
    IL_010c:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_0111:  callvirt   instance void Game.ComponentCreativeInventory::set_PageIndex(int32)
    IL_0116:  ldarg.0
    IL_0117:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_011c:  callvirt   instance int32 Game.ComponentCreativeInventory::get_CategoryIndex()
    IL_0121:  ldarg.0
    IL_0122:  ldfld      int32 Game.CreativeInventoryPanel::m_assignedCategoryIndex
    IL_0127:  beq        IL_0247

    IL_012c:  ldarg.0
    IL_012d:  ldfld      class Game.CreativeInventoryWidget Game.CreativeInventoryPanel::m_creativeInventoryWidget
    IL_0132:  ldarg.0
    IL_0133:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_0138:  callvirt   instance int32 Game.ComponentCreativeInventory::get_CategoryIndex()
    IL_013d:  callvirt   instance string Game.CreativeInventoryWidget::GetCategoryName(int32)
    IL_0142:  ldstr      "User"
    IL_0147:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_014c:  brfalse.s  IL_0171

    IL_014e:  ldarg.0
    IL_014f:  ldc.i4.6
    IL_0150:  ldarg.0
    IL_0151:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_0156:  callvirt   instance int32 Game.ComponentCreativeInventory::get_OpenSlotsCount()
    IL_015b:  ldc.i4.6
    IL_015c:  sub
    IL_015d:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> [System.Linq]System.Linq.Enumerable::Range(int32,
                                                                                                                                          int32)
    IL_0162:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<int32>::.ctor(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
    IL_0167:  stfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.CreativeInventoryPanel::m_slotIndices
    IL_016c:  br         IL_01f1

    IL_0171:  ldarg.0
    IL_0172:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.CreativeInventoryPanel::m_slotIndices
    IL_0177:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Clear()
    IL_017c:  ldarg.0
    IL_017d:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_0182:  callvirt   instance int32 Game.ComponentCreativeInventory::get_OpenSlotsCount()
    IL_0187:  stloc.s    V_5
    IL_0189:  br.s       IL_01e2

    IL_018b:  ldarg.0
    IL_018c:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_0191:  ldloc.s    V_5
    IL_0193:  callvirt   instance int32 Game.ComponentCreativeInventory::GetSlotValue(int32)
    IL_0198:  stloc.s    V_6
    IL_019a:  ldloc.s    V_6
    IL_019c:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_01a1:  stloc.s    V_7
    IL_01a3:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_01a8:  ldloc.s    V_7
    IL_01aa:  ldelem.ref
    IL_01ab:  ldloc.s    V_6
    IL_01ad:  callvirt   instance string Game.Block::GetCategory(int32)
    IL_01b2:  ldarg.0
    IL_01b3:  ldfld      class Game.CreativeInventoryWidget Game.CreativeInventoryPanel::m_creativeInventoryWidget
    IL_01b8:  ldarg.0
    IL_01b9:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_01be:  callvirt   instance int32 Game.ComponentCreativeInventory::get_CategoryIndex()
    IL_01c3:  callvirt   instance string Game.CreativeInventoryWidget::GetCategoryName(int32)
    IL_01c8:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_01cd:  brfalse.s  IL_01dc

    IL_01cf:  ldarg.0
    IL_01d0:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.CreativeInventoryPanel::m_slotIndices
    IL_01d5:  ldloc.s    V_5
    IL_01d7:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_01dc:  ldloc.s    V_5
    IL_01de:  ldc.i4.1
    IL_01df:  add
    IL_01e0:  stloc.s    V_5
    IL_01e2:  ldloc.s    V_5
    IL_01e4:  ldarg.0
    IL_01e5:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_01ea:  callvirt   instance int32 Game.ComponentCreativeInventory::get_SlotsCount()
    IL_01ef:  blt.s      IL_018b

    IL_01f1:  ldarg.0
    IL_01f2:  ldfld      class Game.GridPanelWidget Game.CreativeInventoryPanel::m_inventoryGrid
    IL_01f7:  callvirt   instance int32 Game.GridPanelWidget::get_ColumnsCount()
    IL_01fc:  ldarg.0
    IL_01fd:  ldfld      class Game.GridPanelWidget Game.CreativeInventoryPanel::m_inventoryGrid
    IL_0202:  callvirt   instance int32 Game.GridPanelWidget::get_RowsCount()
    IL_0207:  mul
    IL_0208:  stloc.s    V_4
    IL_020a:  ldarg.0
    IL_020b:  ldarg.0
    IL_020c:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.CreativeInventoryPanel::m_slotIndices
    IL_0211:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Count()
    IL_0216:  ldloc.s    V_4
    IL_0218:  add
    IL_0219:  ldc.i4.1
    IL_021a:  sub
    IL_021b:  ldloc.s    V_4
    IL_021d:  div
    IL_021e:  stfld      int32 Game.CreativeInventoryPanel::m_pagesCount
    IL_0223:  ldarg.0
    IL_0224:  ldarg.0
    IL_0225:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_022a:  callvirt   instance int32 Game.ComponentCreativeInventory::get_CategoryIndex()
    IL_022f:  stfld      int32 Game.CreativeInventoryPanel::m_assignedCategoryIndex
    IL_0234:  ldarg.0
    IL_0235:  ldc.i4.m1
    IL_0236:  stfld      int32 Game.CreativeInventoryPanel::m_assignedPageIndex
    IL_023b:  ldarg.0
    IL_023c:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_0241:  ldc.i4.0
    IL_0242:  callvirt   instance void Game.ComponentCreativeInventory::set_PageIndex(int32)
    IL_0247:  ldarg.0
    IL_0248:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_024d:  callvirt   instance int32 Game.ComponentCreativeInventory::get_PageIndex()
    IL_0252:  ldarg.0
    IL_0253:  ldfld      int32 Game.CreativeInventoryPanel::m_assignedPageIndex
    IL_0258:  beq        IL_030f

    IL_025d:  ldarg.0
    IL_025e:  ldfld      class Game.GridPanelWidget Game.CreativeInventoryPanel::m_inventoryGrid
    IL_0263:  callvirt   instance int32 Game.GridPanelWidget::get_ColumnsCount()
    IL_0268:  ldarg.0
    IL_0269:  ldfld      class Game.GridPanelWidget Game.CreativeInventoryPanel::m_inventoryGrid
    IL_026e:  callvirt   instance int32 Game.GridPanelWidget::get_RowsCount()
    IL_0273:  mul
    IL_0274:  stloc.s    V_8
    IL_0276:  ldarg.0
    IL_0277:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_027c:  callvirt   instance int32 Game.ComponentCreativeInventory::get_PageIndex()
    IL_0281:  ldloc.s    V_8
    IL_0283:  mul
    IL_0284:  stloc.s    V_9
    IL_0286:  ldarg.0
    IL_0287:  ldfld      class Game.GridPanelWidget Game.CreativeInventoryPanel::m_inventoryGrid
    IL_028c:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0291:  callvirt   instance valuetype Game.WidgetsList/Enumerator Game.WidgetsList::GetEnumerator()
    IL_0296:  stloc.s    V_10
    .try
    {
      IL_0298:  br.s       IL_02e5

      IL_029a:  ldloca.s   V_10
      IL_029c:  call       instance class Game.Widget Game.WidgetsList/Enumerator::get_Current()
      IL_02a1:  isinst     Game.InventorySlotWidget
      IL_02a6:  stloc.s    V_11
      IL_02a8:  ldloc.s    V_11
      IL_02aa:  brfalse.s  IL_02e5

      IL_02ac:  ldloc.s    V_9
      IL_02ae:  ldarg.0
      IL_02af:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.CreativeInventoryPanel::m_slotIndices
      IL_02b4:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Count()
      IL_02b9:  bge.s      IL_02dc

      IL_02bb:  ldloc.s    V_11
      IL_02bd:  ldarg.0
      IL_02be:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
      IL_02c3:  ldarg.0
      IL_02c4:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.CreativeInventoryPanel::m_slotIndices
      IL_02c9:  ldloc.s    V_9
      IL_02cb:  dup
      IL_02cc:  ldc.i4.1
      IL_02cd:  add
      IL_02ce:  stloc.s    V_9
      IL_02d0:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Item(int32)
      IL_02d5:  callvirt   instance void Game.InventorySlotWidget::AssignInventorySlot(class Game.IInventory,
                                                                                       int32)
      IL_02da:  br.s       IL_02e5

      IL_02dc:  ldloc.s    V_11
      IL_02de:  ldnull
      IL_02df:  ldc.i4.0
      IL_02e0:  callvirt   instance void Game.InventorySlotWidget::AssignInventorySlot(class Game.IInventory,
                                                                                       int32)
      IL_02e5:  ldloca.s   V_10
      IL_02e7:  call       instance bool Game.WidgetsList/Enumerator::MoveNext()
      IL_02ec:  brtrue.s   IL_029a

      IL_02ee:  leave.s    IL_02fe

    }  // end .try
    finally
    {
      IL_02f0:  ldloca.s   V_10
      IL_02f2:  constrained. Game.WidgetsList/Enumerator
      IL_02f8:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_02fd:  endfinally
    }  // end handler
    IL_02fe:  ldarg.0
    IL_02ff:  ldarg.0
    IL_0300:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_0305:  callvirt   instance int32 Game.ComponentCreativeInventory::get_PageIndex()
    IL_030a:  stfld      int32 Game.CreativeInventoryPanel::m_assignedPageIndex
    IL_030f:  ldarg.0
    IL_0310:  ldfld      class Game.CreativeInventoryWidget Game.CreativeInventoryPanel::m_creativeInventoryWidget
    IL_0315:  callvirt   instance class Game.LabelWidget Game.CreativeInventoryWidget::get_PageLabel()
    IL_031a:  ldstr      "{0}/{1}"
    IL_031f:  ldc.i4.2
    IL_0320:  newarr     [System.Runtime]System.Object
    IL_0325:  dup
    IL_0326:  ldc.i4.0
    IL_0327:  ldarg.0
    IL_0328:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_032d:  callvirt   instance int32 Game.ComponentCreativeInventory::get_PageIndex()
    IL_0332:  ldc.i4.1
    IL_0333:  add
    IL_0334:  box        [System.Runtime]System.Int32
    IL_0339:  stelem.ref
    IL_033a:  dup
    IL_033b:  ldc.i4.1
    IL_033c:  ldarg.0
    IL_033d:  ldfld      int32 Game.CreativeInventoryPanel::m_pagesCount
    IL_0342:  box        [System.Runtime]System.Int32
    IL_0347:  stelem.ref
    IL_0348:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_034d:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0352:  ldarg.0
    IL_0353:  ldfld      class Game.CreativeInventoryWidget Game.CreativeInventoryPanel::m_creativeInventoryWidget
    IL_0358:  callvirt   instance class Game.ButtonWidget Game.CreativeInventoryWidget::get_PageDownButton()
    IL_035d:  ldarg.0
    IL_035e:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_0363:  callvirt   instance int32 Game.ComponentCreativeInventory::get_PageIndex()
    IL_0368:  ldarg.0
    IL_0369:  ldfld      int32 Game.CreativeInventoryPanel::m_pagesCount
    IL_036e:  ldc.i4.1
    IL_036f:  sub
    IL_0370:  clt
    IL_0372:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0377:  ldarg.0
    IL_0378:  ldfld      class Game.CreativeInventoryWidget Game.CreativeInventoryPanel::m_creativeInventoryWidget
    IL_037d:  callvirt   instance class Game.ButtonWidget Game.CreativeInventoryWidget::get_PageUpButton()
    IL_0382:  ldarg.0
    IL_0383:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryPanel::m_componentCreativeInventory
    IL_0388:  callvirt   instance int32 Game.ComponentCreativeInventory::get_PageIndex()
    IL_038d:  ldc.i4.0
    IL_038e:  cgt
    IL_0390:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0395:  ret
  } // end of method CreativeInventoryPanel::Update

} // end of class Game.CreativeInventoryPanel