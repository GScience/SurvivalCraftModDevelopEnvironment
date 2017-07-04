.class public auto ansi beforefieldinit Game.MusketWidget
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
    // 代码大小       360 (0x168)
    .maxstack  5
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             class Game.InventorySlotWidget V_4,
             valuetype Game.WidgetsList/Enumerator V_5,
             class Game.InventorySlotWidget V_6)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.CanvasWidget::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      class Game.IInventory Game.MusketWidget::m_inventory
    IL_000d:  ldarg.0
    IL_000e:  ldarg.2
    IL_000f:  stfld      int32 Game.MusketWidget::m_slotIndex
    IL_0014:  ldstr      "Widgets/MusketWidget"
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
    IL_0029:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_002e:  ldstr      "InventoryGrid"
    IL_0033:  ldc.i4.1
    IL_0034:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.GridPanelWidget>(string,
                                                                                         bool)
    IL_0039:  stfld      class Game.GridPanelWidget Game.MusketWidget::m_inventoryGrid
    IL_003e:  ldarg.0
    IL_003f:  ldarg.0
    IL_0040:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0045:  ldstr      "InventorySlot"
    IL_004a:  ldc.i4.1
    IL_004b:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.InventorySlotWidget>(string,
                                                                                             bool)
    IL_0050:  stfld      class Game.InventorySlotWidget Game.MusketWidget::m_inventorySlotWidget
    IL_0055:  ldarg.0
    IL_0056:  ldarg.0
    IL_0057:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_005c:  ldstr      "InstructionsLabel"
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0067:  stfld      class Game.LabelWidget Game.MusketWidget::m_instructionsLabel
    IL_006c:  ldc.i4.0
    IL_006d:  stloc.2
    IL_006e:  br.s       IL_00b7

    IL_0070:  ldc.i4.0
    IL_0071:  stloc.3
    IL_0072:  br.s       IL_00a5

    IL_0074:  newobj     instance void Game.InventorySlotWidget::.ctor()
    IL_0079:  stloc.s    V_4
    IL_007b:  ldarg.0
    IL_007c:  ldfld      class Game.GridPanelWidget Game.MusketWidget::m_inventoryGrid
    IL_0081:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0086:  ldloc.s    V_4
    IL_0088:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_008d:  ldarg.0
    IL_008e:  ldfld      class Game.GridPanelWidget Game.MusketWidget::m_inventoryGrid
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
    IL_00a7:  ldfld      class Game.GridPanelWidget Game.MusketWidget::m_inventoryGrid
    IL_00ac:  callvirt   instance int32 Game.GridPanelWidget::get_ColumnsCount()
    IL_00b1:  blt.s      IL_0074

    IL_00b3:  ldloc.2
    IL_00b4:  ldc.i4.1
    IL_00b5:  add
    IL_00b6:  stloc.2
    IL_00b7:  ldloc.2
    IL_00b8:  ldarg.0
    IL_00b9:  ldfld      class Game.GridPanelWidget Game.MusketWidget::m_inventoryGrid
    IL_00be:  callvirt   instance int32 Game.GridPanelWidget::get_RowsCount()
    IL_00c3:  blt.s      IL_0070

    IL_00c5:  ldc.i4.6
    IL_00c6:  stloc.1
    IL_00c7:  ldarg.0
    IL_00c8:  ldfld      class Game.GridPanelWidget Game.MusketWidget::m_inventoryGrid
    IL_00cd:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00d2:  callvirt   instance valuetype Game.WidgetsList/Enumerator Game.WidgetsList::GetEnumerator()
    IL_00d7:  stloc.s    V_5
    .try
    {
      IL_00d9:  br.s       IL_00fa

      IL_00db:  ldloca.s   V_5
      IL_00dd:  call       instance class Game.Widget Game.WidgetsList/Enumerator::get_Current()
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
      IL_00fa:  ldloca.s   V_5
      IL_00fc:  call       instance bool Game.WidgetsList/Enumerator::MoveNext()
      IL_0101:  brtrue.s   IL_00db

      IL_0103:  leave.s    IL_0113

    }  // end .try
    finally
    {
      IL_0105:  ldloca.s   V_5
      IL_0107:  constrained. Game.WidgetsList/Enumerator
      IL_010d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0112:  endfinally
    }  // end handler
    IL_0113:  ldarg.0
    IL_0114:  ldfld      class Game.InventorySlotWidget Game.MusketWidget::m_inventorySlotWidget
    IL_0119:  ldarg.1
    IL_011a:  ldarg.2
    IL_011b:  callvirt   instance void Game.InventorySlotWidget::AssignInventorySlot(class Game.IInventory,
                                                                                     int32)
    IL_0120:  ldarg.0
    IL_0121:  ldfld      class Game.InventorySlotWidget Game.MusketWidget::m_inventorySlotWidget
    IL_0126:  ldc.r4     1.
    IL_012b:  ldc.r4     0.0
    IL_0130:  ldc.r4     0.0
    IL_0135:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_013a:  ldc.r4     0.0
    IL_013f:  ldc.r4     0.0
    IL_0144:  ldc.r4     0.0
    IL_0149:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_014e:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitZ
    IL_0153:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_0158:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateLookAt(valuetype [Engine]Engine.Vector3,
                                                                                             valuetype [Engine]Engine.Vector3,
                                                                                             valuetype [Engine]Engine.Vector3)
    IL_015d:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0162:  callvirt   instance void Game.InventorySlotWidget::set_CustomViewMatrix(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0167:  ret
  } // end of method MusketWidget::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       183 (0xb7)
    .maxstack  2
    .locals init (int32 V_0,
             int32 V_1,
             valuetype Game.MusketBlock/LoadState V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.IInventory Game.MusketWidget::m_inventory
    IL_0006:  ldarg.0
    IL_0007:  ldfld      int32 Game.MusketWidget::m_slotIndex
    IL_000c:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_0011:  stloc.0
    IL_0012:  ldarg.0
    IL_0013:  ldfld      class Game.IInventory Game.MusketWidget::m_inventory
    IL_0018:  ldarg.0
    IL_0019:  ldfld      int32 Game.MusketWidget::m_slotIndex
    IL_001e:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_0023:  stloc.1
    IL_0024:  ldloc.0
    IL_0025:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_002a:  ldc.i4     0xd4
    IL_002f:  bne.un.s   IL_00a5

    IL_0031:  ldloc.1
    IL_0032:  ldc.i4.0
    IL_0033:  ble.s      IL_00a5

    IL_0035:  ldloc.0
    IL_0036:  call       int32 Game.Terrain::ExtractData(int32)
    IL_003b:  call       valuetype Game.MusketBlock/LoadState Game.MusketBlock::GetLoadState(int32)
    IL_0040:  stloc.2
    IL_0041:  ldloc.2
    IL_0042:  brtrue.s   IL_0055

    IL_0044:  ldarg.0
    IL_0045:  ldfld      class Game.LabelWidget Game.MusketWidget::m_instructionsLabel
    IL_004a:  ldstr      "Load gunpowder"
    IL_004f:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0054:  ret

    IL_0055:  ldloc.2
    IL_0056:  ldc.i4.1
    IL_0057:  bne.un.s   IL_006a

    IL_0059:  ldarg.0
    IL_005a:  ldfld      class Game.LabelWidget Game.MusketWidget::m_instructionsLabel
    IL_005f:  ldstr      "Load cotton wad"
    IL_0064:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0069:  ret

    IL_006a:  ldloc.2
    IL_006b:  ldc.i4.2
    IL_006c:  bne.un.s   IL_007f

    IL_006e:  ldarg.0
    IL_006f:  ldfld      class Game.LabelWidget Game.MusketWidget::m_instructionsLabel
    IL_0074:  ldstr      "Load bullet"
    IL_0079:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_007e:  ret

    IL_007f:  ldloc.2
    IL_0080:  ldc.i4.3
    IL_0081:  bne.un.s   IL_0094

    IL_0083:  ldarg.0
    IL_0084:  ldfld      class Game.LabelWidget Game.MusketWidget::m_instructionsLabel
    IL_0089:  ldstr      "Ready to fire"
    IL_008e:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0093:  ret

    IL_0094:  ldarg.0
    IL_0095:  ldfld      class Game.LabelWidget Game.MusketWidget::m_instructionsLabel
    IL_009a:  ldsfld     string [System.Runtime]System.String::Empty
    IL_009f:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00a4:  ret

    IL_00a5:  ldarg.0
    IL_00a6:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_00ab:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00b0:  ldarg.0
    IL_00b1:  callvirt   instance void Game.WidgetsList::Remove(class Game.Widget)
    IL_00b6:  ret
  } // end of method MusketWidget::Update

} // end of class Game.MusketWidget