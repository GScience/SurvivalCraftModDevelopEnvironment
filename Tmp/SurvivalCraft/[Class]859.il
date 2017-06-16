.class public auto ansi beforefieldinit Game.ShortInventoryWidget
       extends Game.CanvasWidget
{
  .field private class Game.GridPanelWidget m_inventoryGrid
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       190 (0xbe)
    .maxstack  5
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0,
             int32 V_1,
             int32 V_2,
             class Game.InventorySlotWidget V_3)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.CanvasWidget::.ctor()
    IL_0006:  ldstr      "Widgets/ShortInventoryWidget"
    IL_000b:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  ldarg.0
    IL_0013:  ldloc.0
    IL_0014:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0020:  ldstr      "InventoryGrid"
    IL_0025:  ldc.i4.1
    IL_0026:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.GridPanelWidget>(string,
                                                                                              bool)
    IL_002b:  stfld      class Game.GridPanelWidget Game.ShortInventoryWidget::m_inventoryGrid
    IL_0030:  ldc.i4.0
    IL_0031:  stloc.1
    IL_0032:  br.s       IL_00ac

    IL_0034:  ldc.i4.0
    IL_0035:  stloc.2
    IL_0036:  br.s       IL_009a

    IL_0038:  newobj     instance void Game.InventorySlotWidget::.ctor()
    IL_003d:  stloc.3
    IL_003e:  ldloc.3
    IL_003f:  ldc.i4.s   64
    IL_0041:  ldc.i4.s   64
    IL_0043:  ldc.i4.s   64
    IL_0045:  ldc.i4     0x80
    IL_004a:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32,
                                                                   int32)
    IL_004f:  callvirt   instance void Game.InventorySlotWidget::set_BevelColor(valuetype [Engine]Engine.Color)
    IL_0054:  ldloc.3
    IL_0055:  ldc.i4.s   64
    IL_0057:  ldc.i4.s   64
    IL_0059:  ldc.i4.s   64
    IL_005b:  ldc.i4.s   72
    IL_005d:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32,
                                                                   int32)
    IL_0062:  callvirt   instance void Game.InventorySlotWidget::set_CenterColor(valuetype [Engine]Engine.Color)
    IL_0067:  ldloc.3
    IL_0068:  ldc.r4     1.
    IL_006d:  callvirt   instance void Game.InventorySlotWidget::set_Light(float32)
    IL_0072:  ldarg.0
    IL_0073:  ldfld      class Game.GridPanelWidget Game.ShortInventoryWidget::m_inventoryGrid
    IL_0078:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_007d:  ldloc.3
    IL_007e:  callvirt   instance void Game.WidgetsContainer::Add(class Game.Widget)
    IL_0083:  ldarg.0
    IL_0084:  ldfld      class Game.GridPanelWidget Game.ShortInventoryWidget::m_inventoryGrid
    IL_0089:  ldloc.3
    IL_008a:  ldloc.2
    IL_008b:  ldloc.1
    IL_008c:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_0091:  callvirt   instance void Game.GridPanelWidget::SetWidgetCell(class Game.Widget,
                                                                           valuetype [Engine]Engine.Point2)
    IL_0096:  ldloc.2
    IL_0097:  ldc.i4.1
    IL_0098:  add
    IL_0099:  stloc.2
    IL_009a:  ldloc.2
    IL_009b:  ldarg.0
    IL_009c:  ldfld      class Game.GridPanelWidget Game.ShortInventoryWidget::m_inventoryGrid
    IL_00a1:  callvirt   instance int32 Game.GridPanelWidget::get_ColumnsCount()
    IL_00a6:  blt.s      IL_0038

    IL_00a8:  ldloc.1
    IL_00a9:  ldc.i4.1
    IL_00aa:  add
    IL_00ab:  stloc.1
    IL_00ac:  ldloc.1
    IL_00ad:  ldarg.0
    IL_00ae:  ldfld      class Game.GridPanelWidget Game.ShortInventoryWidget::m_inventoryGrid
    IL_00b3:  callvirt   instance int32 Game.GridPanelWidget::get_RowsCount()
    IL_00b8:  blt        IL_0034

    IL_00bd:  ret
  } // end of method ShortInventoryWidget::.ctor

  .method public hidebysig instance void 
          AssignComponents(class Game.IInventory inventory) cil managed
  {
    // 代码大小       84 (0x54)
    .maxstack  5
    .locals init (int32 V_0,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> V_1,
             class Game.InventorySlotWidget V_2)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldarg.0
    IL_0003:  ldfld      class Game.GridPanelWidget Game.ShortInventoryWidget::m_inventoryGrid
    IL_0008:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_000d:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> Game.WidgetsContainer::GetEnumerator()
    IL_0012:  stloc.1
    .try
    {
      IL_0013:  br.s       IL_0030

      IL_0015:  ldloc.1
      IL_0016:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget>::get_Current()
      IL_001b:  isinst     Game.InventorySlotWidget
      IL_0020:  stloc.2
      IL_0021:  ldloc.2
      IL_0022:  brfalse.s  IL_0030

      IL_0024:  ldloc.2
      IL_0025:  ldarg.1
      IL_0026:  ldloc.0
      IL_0027:  dup
      IL_0028:  ldc.i4.1
      IL_0029:  add
      IL_002a:  stloc.0
      IL_002b:  callvirt   instance void Game.InventorySlotWidget::AssignInventorySlot(class Game.IInventory,
                                                                                       int32)
      IL_0030:  ldloc.1
      IL_0031:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0036:  brtrue.s   IL_0015

      IL_0038:  leave.s    IL_0044

    }  // end .try
    finally
    {
      IL_003a:  ldloc.1
      IL_003b:  brfalse.s  IL_0043

      IL_003d:  ldloc.1
      IL_003e:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0043:  endfinally
    }  // end handler
    IL_0044:  ldloc.0
    IL_0045:  ldc.i4.6
    IL_0046:  beq.s      IL_0053

    IL_0048:  ldstr      "Invalid number of inventory slots."
    IL_004d:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0052:  throw

    IL_0053:  ret
  } // end of method ShortInventoryWidget::AssignComponents

} // end of class Game.ShortInventoryWidget