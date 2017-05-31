.class public auto ansi beforefieldinit Game.BowWidget
       extends Game.CanvasWidget
{
  .field private class Game.IInventory m_inventory
  .field private int32 m_slotIndex
  .field private class Game.GridPanelWidget m_inventoryGrid
  .field private class Game.InventorySlotWidget m_inventorySlotWidget
  .field private class Game.LabelWidget m_instructionsLabel
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.IInventory inventory,
                               int32 slotIndex) cil managed
  {
    // 代码大小       353 (0x161)
    .maxstack  5
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             class Game.InventorySlotWidget V_4,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> V_5,
             class Game.InventorySlotWidget V_6)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.CanvasWidget::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      class Game.IInventory Game.BowWidget::m_inventory
    IL_000d:  ldarg.0
    IL_000e:  ldarg.2
    IL_000f:  stfld      int32 Game.BowWidget::m_slotIndex
    IL_0014:  ldstr      "Widgets/BowWidget"
    IL_0019:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_001e:  stloc.0
    IL_001f:  ldarg.0
    IL_0020:  ldarg.0
    IL_0021:  ldloc.0
    IL_0022:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0027:  ldarg.0
    IL_0028:  ldarg.0
    IL_0029:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_002e:  ldstr      "InventoryGrid"
    IL_0033:  ldc.i4.1
    IL_0034:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.GridPanelWidget>(string,
                                                                                              bool)
    IL_0039:  stfld      class Game.GridPanelWidget Game.BowWidget::m_inventoryGrid
    IL_003e:  ldarg.0
    IL_003f:  ldarg.0
    IL_0040:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0045:  ldstr      "InventorySlot"
    IL_004a:  ldc.i4.1
    IL_004b:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.InventorySlotWidget>(string,
                                                                                                  bool)
    IL_0050:  stfld      class Game.InventorySlotWidget Game.BowWidget::m_inventorySlotWidget
    IL_0055:  ldarg.0
    IL_0056:  ldarg.0
    IL_0057:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_005c:  ldstr      "InstructionsLabel"
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_0067:  stfld      class Game.LabelWidget Game.BowWidget::m_instructionsLabel
    IL_006c:  ldc.i4.0
    IL_006d:  stloc.2
    IL_006e:  br.s       IL_00b7

    IL_0070:  ldc.i4.0
    IL_0071:  stloc.3
    IL_0072:  br.s       IL_00a5

    IL_0074:  newobj     instance void Game.InventorySlotWidget::.ctor()
    IL_0079:  stloc.s    V_4
    IL_007b:  ldarg.0
    IL_007c:  ldfld      class Game.GridPanelWidget Game.BowWidget::m_inventoryGrid
    IL_0081:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0086:  ldloc.s    V_4
    IL_0088:  callvirt   instance void Game.WidgetsContainer::Add(class Game.Widget)
    IL_008d:  ldarg.0
    IL_008e:  ldfld      class Game.GridPanelWidget Game.BowWidget::m_inventoryGrid
    IL_0093:  ldloc.s    V_4
    IL_0095:  ldloc.3
    IL_0096:  ldloc.2
    IL_0097:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_009c:  callvirt   instance void Game.GridPanelWidget::SetWidgetCell(class Game.Widget,
                                                                           valuetype [Engine]Engine.Point2)
    IL_00a1:  ldloc.3
    IL_00a2:  ldc.i4.1
    IL_00a3:  add
    IL_00a4:  stloc.3
    IL_00a5:  ldloc.3
    IL_00a6:  ldarg.0
    IL_00a7:  ldfld      class Game.GridPanelWidget Game.BowWidget::m_inventoryGrid
    IL_00ac:  callvirt   instance int32 Game.GridPanelWidget::get_ColumnsCount()
    IL_00b1:  blt.s      IL_0074

    IL_00b3:  ldloc.2
    IL_00b4:  ldc.i4.1
    IL_00b5:  add
    IL_00b6:  stloc.2
    IL_00b7:  ldloc.2
    IL_00b8:  ldarg.0
    IL_00b9:  ldfld      class Game.GridPanelWidget Game.BowWidget::m_inventoryGrid
    IL_00be:  callvirt   instance int32 Game.GridPanelWidget::get_RowsCount()
    IL_00c3:  blt.s      IL_0070

    IL_00c5:  ldc.i4.6
    IL_00c6:  stloc.1
    IL_00c7:  ldarg.0
    IL_00c8:  ldfld      class Game.GridPanelWidget Game.BowWidget::m_inventoryGrid
    IL_00cd:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00d2:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> Game.WidgetsContainer::GetEnumerator()
    IL_00d7:  stloc.s    V_5
    .try
    {
      IL_00d9:  br.s       IL_00fa

      IL_00db:  ldloc.s    V_5
      IL_00dd:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget>::get_Current()
      IL_00e2:  isinst     Game.InventorySlotWidget
      IL_00e7:  stloc.s    V_6
      IL_00e9:  ldloc.s    V_6
      IL_00eb:  brfalse.s  IL_00fa

      IL_00ed:  ldloc.s    V_6
      IL_00ef:  ldarg.1
      IL_00f0:  ldloc.1
      IL_00f1:  dup
      IL_00f2:  ldc.i4.1
      IL_00f3:  add
      IL_00f4:  stloc.1
      IL_00f5:  callvirt   instance void Game.InventorySlotWidget::AssignInventorySlot(class Game.IInventory,
                                                                                       int32)
      IL_00fa:  ldloc.s    V_5
      IL_00fc:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0101:  brtrue.s   IL_00db

      IL_0103:  leave.s    IL_0111

    }  // end .try
    finally
    {
      IL_0105:  ldloc.s    V_5
      IL_0107:  brfalse.s  IL_0110

      IL_0109:  ldloc.s    V_5
      IL_010b:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0110:  endfinally
    }  // end handler
    IL_0111:  ldarg.0
    IL_0112:  ldfld      class Game.InventorySlotWidget Game.BowWidget::m_inventorySlotWidget
    IL_0117:  ldarg.1
    IL_0118:  ldarg.2
    IL_0119:  callvirt   instance void Game.InventorySlotWidget::AssignInventorySlot(class Game.IInventory,
                                                                                     int32)
    IL_011e:  ldarg.0
    IL_011f:  ldfld      class Game.InventorySlotWidget Game.BowWidget::m_inventorySlotWidget
    IL_0124:  ldc.r4     -1.
    IL_0129:  ldc.r4     0.2
    IL_012e:  ldc.r4     0.60000002
    IL_0133:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0138:  ldc.r4     0.0
    IL_013d:  ldc.r4     0.2
    IL_0142:  ldc.r4     0.0
    IL_0147:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_014c:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0151:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateLookAt(valuetype [Engine]Engine.Vector3,
                                                                                             valuetype [Engine]Engine.Vector3,
                                                                                             valuetype [Engine]Engine.Vector3)
    IL_0156:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_015b:  callvirt   instance void Game.InventorySlotWidget::set_CustomViewMatrix(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0160:  ret
  } // end of method BowWidget::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       125 (0x7d)
    .maxstack  3
    .locals init (int32 V_0,
             int32 V_1,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.IInventory Game.BowWidget::m_inventory
    IL_0006:  ldarg.0
    IL_0007:  ldfld      int32 Game.BowWidget::m_slotIndex
    IL_000c:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_0011:  ldarg.0
    IL_0012:  ldfld      class Game.IInventory Game.BowWidget::m_inventory
    IL_0017:  ldarg.0
    IL_0018:  ldfld      int32 Game.BowWidget::m_slotIndex
    IL_001d:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_0022:  stloc.0
    IL_0023:  dup
    IL_0024:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0029:  stloc.1
    IL_002a:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_002f:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType> Game.BowBlock::GetArrowType(int32)
    IL_0034:  stloc.2
    IL_0035:  ldloca.s   V_2
    IL_0037:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ArrowBlock/ArrowType>::get_HasValue()
    IL_003c:  brtrue.s   IL_0050

    IL_003e:  ldarg.0
    IL_003f:  ldfld      class Game.LabelWidget Game.BowWidget::m_instructionsLabel
    IL_0044:  ldstr      "Load arrow"
    IL_0049:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_004e:  br.s       IL_0060

    IL_0050:  ldarg.0
    IL_0051:  ldfld      class Game.LabelWidget Game.BowWidget::m_instructionsLabel
    IL_0056:  ldstr      "Ready to fire"
    IL_005b:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0060:  ldloc.1
    IL_0061:  ldc.i4     0xbf
    IL_0066:  bne.un.s   IL_006b

    IL_0068:  ldloc.0
    IL_0069:  brtrue.s   IL_007c

    IL_006b:  ldarg.0
    IL_006c:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_0071:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0076:  ldarg.0
    IL_0077:  callvirt   instance void Game.WidgetsContainer::Remove(class Game.Widget)
    IL_007c:  ret
  } // end of method BowWidget::Update

} // end of class Game.BowWidget