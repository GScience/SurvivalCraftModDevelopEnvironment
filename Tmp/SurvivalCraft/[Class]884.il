.class public auto ansi beforefieldinit Game.GameViewWidget
       extends Game.TouchInputWidget
       implements Game.IDragTargetWidget
{
  .field private class Game.View '<View>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance class Game.View 
          get_View() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.View Game.GameViewWidget::'<View>k__BackingField'
    IL_0006:  ret
  } // end of method GameViewWidget::get_View

  .method public hidebysig specialname instance void 
          set_View(class Game.View 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.View Game.GameViewWidget::'<View>k__BackingField'
    IL_0007:  ret
  } // end of method GameViewWidget::set_View

  .method public hidebysig newslot virtual final 
          instance void  DragOver(class Game.Widget dragWidget,
                                  object data) cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method GameViewWidget::DragOver

  .method public hidebysig newslot virtual final 
          instance void  DragDrop(class Game.Widget dragWidget,
                                  object data) cil managed
  {
    // 代码大小       351 (0x15f)
    .maxstack  6
    .locals init (class Game.InventoryDragData V_0,
             class Game.SubsystemPickables V_1,
             class Game.ComponentPlayer V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             valuetype [Engine]Engine.Vector2 V_6,
             valuetype [Engine]Engine.Vector3 V_7,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_8)
    IL_0000:  ldarg.2
    IL_0001:  isinst     Game.InventoryDragData
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  brfalse    IL_015e

    IL_000d:  call       class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
    IL_0012:  brfalse    IL_015e

    IL_0017:  call       class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
    IL_001c:  ldc.i4.1
    IL_001d:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPickables>(bool)
    IL_0022:  stloc.1
    IL_0023:  ldarg.0
    IL_0024:  call       instance class Game.View Game.GameViewWidget::get_View()
    IL_0029:  callvirt   instance class Game.PlayerData Game.View::get_PlayerData()
    IL_002e:  callvirt   instance class Game.ComponentPlayer Game.PlayerData::get_ComponentPlayer()
    IL_0033:  stloc.2
    IL_0034:  ldloc.0
    IL_0035:  ldfld      class Game.IInventory Game.InventoryDragData::Inventory
    IL_003a:  ldloc.0
    IL_003b:  ldfld      int32 Game.InventoryDragData::SlotIndex
    IL_0040:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_0045:  stloc.3
    IL_0046:  ldloc.2
    IL_0047:  brfalse.s  IL_0074

    IL_0049:  ldloc.2
    IL_004a:  callvirt   instance class Game.ComponentInput Game.ComponentPlayer::get_ComponentInput()
    IL_004f:  callvirt   instance class Game.IInventory Game.ComponentInput::get_SplitSourceInventory()
    IL_0054:  ldloc.0
    IL_0055:  ldfld      class Game.IInventory Game.InventoryDragData::Inventory
    IL_005a:  bne.un.s   IL_0074

    IL_005c:  ldloc.2
    IL_005d:  callvirt   instance class Game.ComponentInput Game.ComponentPlayer::get_ComponentInput()
    IL_0062:  callvirt   instance int32 Game.ComponentInput::get_SplitSourceSlotIndex()
    IL_0067:  ldloc.0
    IL_0068:  ldfld      int32 Game.InventoryDragData::SlotIndex
    IL_006d:  bne.un.s   IL_0074

    IL_006f:  ldc.i4.1
    IL_0070:  stloc.s    V_4
    IL_0072:  br.s       IL_00ab

    IL_0074:  ldloc.0
    IL_0075:  ldfld      valuetype Game.DragMode Game.InventoryDragData::DragMode
    IL_007a:  ldc.i4.1
    IL_007b:  bne.un.s   IL_0098

    IL_007d:  ldloc.0
    IL_007e:  ldfld      class Game.IInventory Game.InventoryDragData::Inventory
    IL_0083:  ldloc.0
    IL_0084:  ldfld      int32 Game.InventoryDragData::SlotIndex
    IL_0089:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_008e:  ldc.i4.1
    IL_008f:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0094:  stloc.s    V_4
    IL_0096:  br.s       IL_00ab

    IL_0098:  ldloc.0
    IL_0099:  ldfld      class Game.IInventory Game.InventoryDragData::Inventory
    IL_009e:  ldloc.0
    IL_009f:  ldfld      int32 Game.InventoryDragData::SlotIndex
    IL_00a4:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_00a9:  stloc.s    V_4
    IL_00ab:  ldloc.0
    IL_00ac:  ldfld      class Game.IInventory Game.InventoryDragData::Inventory
    IL_00b1:  ldloc.0
    IL_00b2:  ldfld      int32 Game.InventoryDragData::SlotIndex
    IL_00b7:  ldloc.s    V_4
    IL_00b9:  callvirt   instance int32 Game.IInventory::RemoveSlotItems(int32,
                                                                         int32)
    IL_00be:  stloc.s    V_5
    IL_00c0:  ldloc.s    V_5
    IL_00c2:  ldc.i4.0
    IL_00c3:  ble        IL_015e

    IL_00c8:  ldarg.1
    IL_00c9:  ldarg.1
    IL_00ca:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_00cf:  ldc.r4     2.
    IL_00d4:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_00d9:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::WidgetToScreen(valuetype [Engine]Engine.Vector2)
    IL_00de:  stloc.s    V_6
    IL_00e0:  ldarg.0
    IL_00e1:  call       instance class Game.View Game.GameViewWidget::get_View()
    IL_00e6:  callvirt   instance class Game.Camera Game.View::get_ActiveCamera()
    IL_00eb:  ldloc.s    V_6
    IL_00ed:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00f2:  ldloc.s    V_6
    IL_00f4:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00f9:  ldc.r4     1.
    IL_00fe:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0103:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_0108:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::ScreenToWorld(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Matrix)
    IL_010d:  ldarg.0
    IL_010e:  call       instance class Game.View Game.GameViewWidget::get_View()
    IL_0113:  callvirt   instance class Game.Camera Game.View::get_ActiveCamera()
    IL_0118:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_011d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0122:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0127:  ldc.r4     12.
    IL_012c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0131:  stloc.s    V_7
    IL_0133:  ldloc.1
    IL_0134:  ldloc.3
    IL_0135:  ldloc.s    V_5
    IL_0137:  ldarg.0
    IL_0138:  call       instance class Game.View Game.GameViewWidget::get_View()
    IL_013d:  callvirt   instance class Game.Camera Game.View::get_ActiveCamera()
    IL_0142:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_0147:  ldloc.s    V_7
    IL_0149:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_014e:  ldloca.s   V_8
    IL_0150:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0156:  ldloc.s    V_8
    IL_0158:  callvirt   instance class Game.Pickable Game.SubsystemPickables::AddPickable(int32,
                                                                                           int32,
                                                                                           valuetype [Engine]Engine.Vector3,
                                                                                           valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                           valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_015d:  pop
    IL_015e:  ret
  } // end of method GameViewWidget::DragDrop

  .method public hidebysig virtual instance void 
          MeasureOverride(valuetype [Engine]Engine.Vector2 parentAvailableSize) cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  call       instance void Game.Widget::set_IsDrawRequired(bool)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  call       instance void Game.Widget::MeasureOverride(valuetype [Engine]Engine.Vector2)
    IL_000e:  ret
  } // end of method GameViewWidget::MeasureOverride

  .method public hidebysig virtual instance void 
          Draw() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       void Game.GameManager::DrawProject(class Game.GameViewWidget)
    IL_0006:  ret
  } // end of method GameViewWidget::Draw

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.TouchInputWidget::.ctor()
    IL_0006:  ret
  } // end of method GameViewWidget::.ctor

  .property instance class Game.View View()
  {
    .get instance class Game.View Game.GameViewWidget::get_View()
    .set instance void Game.GameViewWidget::set_View(class Game.View)
  } // end of property GameViewWidget::View
} // end of class Game.GameViewWidget