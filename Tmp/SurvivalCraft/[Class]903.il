.class public auto ansi beforefieldinit Game.ShortInventoryWidget
       extends Game.CanvasWidget
{
  .field private class Game.GridPanelWidget m_inventoryGrid
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       216 (0xd8)
    .maxstack  4
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
    IL_001b:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0020:  ldstr      "InventoryGrid"
    IL_0025:  ldc.i4.1
    IL_0026:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.GridPanelWidget>(string,
                                                                                         bool)
    IL_002b:  stfld      class Game.GridPanelWidget Game.ShortInventoryWidget::m_inventoryGrid
    IL_0030:  ldc.i4.0
    IL_0031:  stloc.1
    IL_0032:  br         IL_00c6

    IL_0037:  ldc.i4.0
    IL_0038:  stloc.2
    IL_0039:  br.s       IL_00b1

    IL_003b:  newobj     instance void Game.InventorySlotWidget::.ctor()
    IL_0040:  stloc.3
    IL_0041:  ldloc.3
    IL_0042:  ldc.i4     0xb5
    IL_0047:  ldc.i4     0xac
    IL_004c:  ldc.i4     0x9a
    IL_0051:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0056:  ldc.r4     0.5
    IL_005b:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_0060:  callvirt   instance void Game.InventorySlotWidget::set_BevelColor(valuetype [Engine]Engine.Color)
    IL_0065:  ldloc.3
    IL_0066:  ldc.i4     0xb5
    IL_006b:  ldc.i4     0xac
    IL_0070:  ldc.i4     0x9a
    IL_0075:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_007a:  ldc.r4     0.33000001
    IL_007f:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_0084:  callvirt   instance void Game.InventorySlotWidget::set_CenterColor(valuetype [Engine]Engine.Color)
    IL_0089:  ldarg.0
    IL_008a:  ldfld      class Game.GridPanelWidget Game.ShortInventoryWidget::m_inventoryGrid
    IL_008f:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0094:  ldloc.3
    IL_0095:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_009a:  ldarg.0
    IL_009b:  ldfld      class Game.GridPanelWidget Game.ShortInventoryWidget::m_inventoryGrid
    IL_00a0:  ldloc.3
    IL_00a1:  ldloc.2
    IL_00a2:  ldloc.1
    IL_00a3:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_00a8:  callvirt   instance void Game.GridPanelWidget::SetWidgetCell(class Game.Widget,
                                                                           valuetype [Engine]Engine.Point2)
    IL_00ad:  ldloc.2
    IL_00ae:  ldc.i4.1
    IL_00af:  add
    IL_00b0:  stloc.2
    IL_00b1:  ldloc.2
    IL_00b2:  ldarg.0
    IL_00b3:  ldfld      class Game.GridPanelWidget Game.ShortInventoryWidget::m_inventoryGrid
    IL_00b8:  callvirt   instance int32 Game.GridPanelWidget::get_ColumnsCount()
    IL_00bd:  blt        IL_003b

    IL_00c2:  ldloc.1
    IL_00c3:  ldc.i4.1
    IL_00c4:  add
    IL_00c5:  stloc.1
    IL_00c6:  ldloc.1
    IL_00c7:  ldarg.0
    IL_00c8:  ldfld      class Game.GridPanelWidget Game.ShortInventoryWidget::m_inventoryGrid
    IL_00cd:  callvirt   instance int32 Game.GridPanelWidget::get_RowsCount()
    IL_00d2:  blt        IL_0037

    IL_00d7:  ret
  } // end of method ShortInventoryWidget::.ctor

  .method public hidebysig instance void 
          AssignComponents(class Game.IInventory inventory) cil managed
  {
    // 代码大小       90 (0x5a)
    .maxstack  5
    .locals init (int32 V_0,
             valuetype Game.WidgetsList/Enumerator V_1,
             class Game.InventorySlotWidget V_2)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldarg.0
    IL_0003:  ldfld      class Game.GridPanelWidget Game.ShortInventoryWidget::m_inventoryGrid
    IL_0008:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_000d:  callvirt   instance valuetype Game.WidgetsList/Enumerator Game.WidgetsList::GetEnumerator()
    IL_0012:  stloc.1
    .try
    {
      IL_0013:  br.s       IL_0031

      IL_0015:  ldloca.s   V_1
      IL_0017:  call       instance class Game.Widget Game.WidgetsList/Enumerator::get_Current()
      IL_001c:  isinst     Game.InventorySlotWidget
      IL_0021:  stloc.2
      IL_0022:  ldloc.2
      IL_0023:  brfalse.s  IL_0031

      IL_0025:  ldloc.2
      IL_0026:  ldarg.1
      IL_0027:  ldloc.0
      IL_0028:  dup
      IL_0029:  ldc.i4.1
      IL_002a:  add
      IL_002b:  stloc.0
      IL_002c:  callvirt   instance void Game.InventorySlotWidget::AssignInventorySlot(class Game.IInventory,
                                                                                       int32)
      IL_0031:  ldloca.s   V_1
      IL_0033:  call       instance bool Game.WidgetsList/Enumerator::MoveNext()
      IL_0038:  brtrue.s   IL_0015

      IL_003a:  leave.s    IL_004a

    }  // end .try
    finally
    {
      IL_003c:  ldloca.s   V_1
      IL_003e:  constrained. Game.WidgetsList/Enumerator
      IL_0044:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0049:  endfinally
    }  // end handler
    IL_004a:  ldloc.0
    IL_004b:  ldc.i4.6
    IL_004c:  beq.s      IL_0059

    IL_004e:  ldstr      "Invalid number of inventory slots."
    IL_0053:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0058:  throw

    IL_0059:  ret
  } // end of method ShortInventoryWidget::AssignComponents

} // end of class Game.ShortInventoryWidget