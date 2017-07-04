.class interface public abstract auto ansi Game.IInventory
{
  .method public hidebysig newslot specialname abstract virtual 
          instance class [EntitySystem]GameEntitySystem.Project 
          get_Project() cil managed
  {
  } // end of method IInventory::get_Project

  .method public hidebysig newslot specialname abstract virtual 
          instance int32  get_SlotsCount() cil managed
  {
  } // end of method IInventory::get_SlotsCount

  .method public hidebysig newslot specialname abstract virtual 
          instance int32  get_ActiveSlotIndex() cil managed
  {
  } // end of method IInventory::get_ActiveSlotIndex

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_ActiveSlotIndex(int32 'value') cil managed
  {
  } // end of method IInventory::set_ActiveSlotIndex

  .method public hidebysig newslot abstract virtual 
          instance int32  GetSlotValue(int32 slotIndex) cil managed
  {
  } // end of method IInventory::GetSlotValue

  .method public hidebysig newslot abstract virtual 
          instance int32  GetSlotCount(int32 slotIndex) cil managed
  {
  } // end of method IInventory::GetSlotCount

  .method public hidebysig newslot abstract virtual 
          instance int32  GetSlotCapacity(int32 slotIndex,
                                          int32 'value') cil managed
  {
  } // end of method IInventory::GetSlotCapacity

  .method public hidebysig newslot abstract virtual 
          instance int32  GetSlotProcessCapacity(int32 slotIndex,
                                                 int32 'value') cil managed
  {
  } // end of method IInventory::GetSlotProcessCapacity

  .method public hidebysig newslot abstract virtual 
          instance void  AddSlotItems(int32 slotIndex,
                                      int32 'value',
                                      int32 count) cil managed
  {
  } // end of method IInventory::AddSlotItems

  .method public hidebysig newslot abstract virtual 
          instance void  ProcessSlotItems(int32 slotIndex,
                                          int32 'value',
                                          int32 count,
                                          int32 processCount,
                                          [out] int32& processedValue,
                                          [out] int32& processedCount) cil managed
  {
  } // end of method IInventory::ProcessSlotItems

  .method public hidebysig newslot abstract virtual 
          instance int32  RemoveSlotItems(int32 slotIndex,
                                          int32 count) cil managed
  {
  } // end of method IInventory::RemoveSlotItems

  .method public hidebysig newslot abstract virtual 
          instance void  DropAllItems(valuetype [Engine]Engine.Vector3 position) cil managed
  {
  } // end of method IInventory::DropAllItems

  .property instance class [EntitySystem]GameEntitySystem.Project
          Project()
  {
    .get instance class [EntitySystem]GameEntitySystem.Project Game.IInventory::get_Project()
  } // end of property IInventory::Project
  .property instance int32 SlotsCount()
  {
    .get instance int32 Game.IInventory::get_SlotsCount()
  } // end of property IInventory::SlotsCount
  .property instance int32 ActiveSlotIndex()
  {
    .get instance int32 Game.IInventory::get_ActiveSlotIndex()
    .set instance void Game.IInventory::set_ActiveSlotIndex(int32)
  } // end of property IInventory::ActiveSlotIndex
} // end of class Game.IInventory