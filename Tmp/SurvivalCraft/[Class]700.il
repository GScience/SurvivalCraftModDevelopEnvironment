.class public auto ansi beforefieldinit Game.SubsystemInventory
       extends [EntitySystem]GameEntitySystem.Subsystem
       implements Game.IUpdateable
{
  .field private class Game.IInventory m_splitSourceInventory
  .field private int32 m_splitSourceSlotIndex
  .method public hidebysig specialname instance class Game.IInventory 
          get_SplitSourceInventory() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.IInventory Game.SubsystemInventory::m_splitSourceInventory
    IL_0006:  ret
  } // end of method SubsystemInventory::get_SplitSourceInventory

  .method public hidebysig specialname instance int32 
          get_SplitSourceSlotIndex() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.SubsystemInventory::m_splitSourceSlotIndex
    IL_0006:  ret
  } // end of method SubsystemInventory::get_SplitSourceSlotIndex

  .method public hidebysig instance void 
          SetSplitSourceInventoryAndSlot(class Game.IInventory inventory,
                                         int32 slotIndex) cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.IInventory Game.SubsystemInventory::m_splitSourceInventory
    IL_0007:  ldarg.0
    IL_0008:  ldarg.2
    IL_0009:  stfld      int32 Game.SubsystemInventory::m_splitSourceSlotIndex
    IL_000e:  ret
  } // end of method SubsystemInventory::SetSplitSourceInventoryAndSlot

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemInventory::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.IInventory Game.SubsystemInventory::m_splitSourceInventory
    IL_0006:  brfalse.s  IL_0023

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.IInventory Game.SubsystemInventory::m_splitSourceInventory
    IL_000e:  ldarg.0
    IL_000f:  ldfld      int32 Game.SubsystemInventory::m_splitSourceSlotIndex
    IL_0014:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_0019:  brtrue.s   IL_0023

    IL_001b:  ldarg.0
    IL_001c:  ldnull
    IL_001d:  ldc.i4.m1
    IL_001e:  call       instance void Game.SubsystemInventory::SetSplitSourceInventoryAndSlot(class Game.IInventory,
                                                                                               int32)
    IL_0023:  ret
  } // end of method SubsystemInventory::Update

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_0006:  ret
  } // end of method SubsystemInventory::.ctor

  .property instance class Game.IInventory
          SplitSourceInventory()
  {
    .get instance class Game.IInventory Game.SubsystemInventory::get_SplitSourceInventory()
  } // end of property SubsystemInventory::SplitSourceInventory
  .property instance int32 SplitSourceSlotIndex()
  {
    .get instance int32 Game.SubsystemInventory::get_SplitSourceSlotIndex()
  } // end of property SubsystemInventory::SplitSourceSlotIndex
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemInventory::get_UpdateOrder()
  } // end of property SubsystemInventory::UpdateOrder
} // end of class Game.SubsystemInventory