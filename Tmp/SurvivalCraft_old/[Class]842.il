.class public auto ansi beforefieldinit Game.GameViewWidget
       extends Game.TouchInputWidget
       implements Game.IDragTargetWidget
{
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
    // 代码大小       319 (0x13f)
    .maxstack  6
    .locals init (class Game.InventoryDragData V_0,
             class Game.SubsystemDrawing V_1,
             class Game.SubsystemInventory V_2,
             valuetype [Engine]Engine.Vector2 V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_8)
    IL_0000:  ldarg.2
    IL_0001:  isinst     Game.InventoryDragData
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  brfalse    IL_013e

    IL_000d:  call       class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
    IL_0012:  brfalse    IL_013e

    IL_0017:  call       class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
    IL_001c:  ldc.i4.1
    IL_001d:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemDrawing>(bool)
    IL_0022:  stloc.1
    IL_0023:  call       class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
    IL_0028:  ldc.i4.1
    IL_0029:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPickables>(bool)
    IL_002e:  call       class [EntitySystem]GameEntitySystem.Project Game.GameManager::get_Project()
    IL_0033:  ldc.i4.1
    IL_0034:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemInventory>(bool)
    IL_0039:  stloc.2
    IL_003a:  ldarg.1
    IL_003b:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0040:  ldarg.1
    IL_0041:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0046:  ldc.r4     2.
    IL_004b:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0050:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0055:  call       float32 Game.WidgetsManager::get_Scale()
    IL_005a:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_005f:  stloc.3
    IL_0060:  ldloc.1
    IL_0061:  ldloc.3
    IL_0062:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0067:  ldloc.3
    IL_0068:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_006d:  ldc.r4     1.
    IL_0072:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0077:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_007c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::ScreenToWorld(valuetype [Engine]Engine.Vector3,
                                                                                                        valuetype [Engine]Engine.Matrix)
    IL_0081:  ldloc.1
    IL_0082:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_0087:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_008c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0091:  ldc.r4     12.
    IL_0096:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_009b:  stloc.s    V_4
    IL_009d:  ldloc.0
    IL_009e:  ldfld      class Game.IInventory Game.InventoryDragData::Inventory
    IL_00a3:  ldloc.0
    IL_00a4:  ldfld      int32 Game.InventoryDragData::SlotIndex
    IL_00a9:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_00ae:  stloc.s    V_5
    IL_00b0:  ldloc.2
    IL_00b1:  callvirt   instance class Game.IInventory Game.SubsystemInventory::get_SplitSourceInventory()
    IL_00b6:  ldloc.0
    IL_00b7:  ldfld      class Game.IInventory Game.InventoryDragData::Inventory
    IL_00bc:  bne.un.s   IL_00d1

    IL_00be:  ldloc.2
    IL_00bf:  callvirt   instance int32 Game.SubsystemInventory::get_SplitSourceSlotIndex()
    IL_00c4:  ldloc.0
    IL_00c5:  ldfld      int32 Game.InventoryDragData::SlotIndex
    IL_00ca:  bne.un.s   IL_00d1

    IL_00cc:  ldc.i4.1
    IL_00cd:  stloc.s    V_6
    IL_00cf:  br.s       IL_0108

    IL_00d1:  ldloc.0
    IL_00d2:  ldfld      valuetype Game.DragMode Game.InventoryDragData::DragMode
    IL_00d7:  ldc.i4.1
    IL_00d8:  bne.un.s   IL_00f5

    IL_00da:  ldloc.0
    IL_00db:  ldfld      class Game.IInventory Game.InventoryDragData::Inventory
    IL_00e0:  ldloc.0
    IL_00e1:  ldfld      int32 Game.InventoryDragData::SlotIndex
    IL_00e6:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_00eb:  ldc.i4.1
    IL_00ec:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_00f1:  stloc.s    V_6
    IL_00f3:  br.s       IL_0108

    IL_00f5:  ldloc.0
    IL_00f6:  ldfld      class Game.IInventory Game.InventoryDragData::Inventory
    IL_00fb:  ldloc.0
    IL_00fc:  ldfld      int32 Game.InventoryDragData::SlotIndex
    IL_0101:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_0106:  stloc.s    V_6
    IL_0108:  ldloc.0
    IL_0109:  ldfld      class Game.IInventory Game.InventoryDragData::Inventory
    IL_010e:  ldloc.0
    IL_010f:  ldfld      int32 Game.InventoryDragData::SlotIndex
    IL_0114:  ldloc.s    V_6
    IL_0116:  callvirt   instance int32 Game.IInventory::RemoveSlotItems(int32,
                                                                         int32)
    IL_011b:  stloc.s    V_7
    IL_011d:  ldloc.s    V_5
    IL_011f:  ldloc.s    V_7
    IL_0121:  ldloc.1
    IL_0122:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_0127:  ldloc.s    V_4
    IL_0129:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_012e:  ldloca.s   V_8
    IL_0130:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0136:  ldloc.s    V_8
    IL_0138:  callvirt   instance class Game.Pickable Game.SubsystemPickables::AddPickable(int32,
                                                                                           int32,
                                                                                           valuetype [Engine]Engine.Vector3,
                                                                                           valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                           valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_013d:  pop
    IL_013e:  ret
  } // end of method GameViewWidget::DragDrop

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.TouchInputWidget::.ctor()
    IL_0006:  ret
  } // end of method GameViewWidget::.ctor

} // end of class Game.GameViewWidget