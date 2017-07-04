.class public auto ansi beforefieldinit Game.ComponentInventory
       extends Game.ComponentInventoryBase
{
  .field public static literal int32 ShortInventorySlotsCount = int32(0x00000006)
  .field private int32 m_activeSlotIndex
  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Game.ComponentInventoryBase::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                                         class [EntitySystem]GameEntitySystem.IdToEntityMap)
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  ldstr      "ActiveSlotIndex"
    IL_000f:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<int32>(string)
    IL_0014:  stfld      int32 Game.ComponentInventory::m_activeSlotIndex
    IL_0019:  ret
  } // end of method ComponentInventory::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.EntityToIdMap entityToIdMap) cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Game.ComponentInventoryBase::Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                                         class [EntitySystem]GameEntitySystem.EntityToIdMap)
    IL_0008:  ldarg.1
    IL_0009:  ldstr      "ActiveSlotIndex"
    IL_000e:  ldarg.0
    IL_000f:  ldfld      int32 Game.ComponentInventory::m_activeSlotIndex
    IL_0014:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<int32>(string,
                                                                                                         !!0)
    IL_0019:  ret
  } // end of method ComponentInventory::Save

  .method public hidebysig specialname virtual 
          instance int32  get_ActiveSlotIndex() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.ComponentInventory::m_activeSlotIndex
    IL_0006:  ret
  } // end of method ComponentInventory::get_ActiveSlotIndex

  .method public hidebysig specialname virtual 
          instance void  set_ActiveSlotIndex(int32 'value') cil managed
  {
    // 代码大小       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.0
    IL_0002:  blt.s      IL_000f

    IL_0004:  ldarg.1
    IL_0005:  ldc.i4.6
    IL_0006:  bge.s      IL_000f

    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      int32 Game.ComponentInventory::m_activeSlotIndex
    IL_000f:  ret
  } // end of method ComponentInventory::set_ActiveSlotIndex

  .method public hidebysig virtual instance int32 
          GetSlotCapacity(int32 slotIndex,
                          int32 'value') cil managed
  {
    // 代码大小       44 (0x2c)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.0
    IL_0002:  blt.s      IL_001a

    IL_0004:  ldarg.1
    IL_0005:  ldc.i4.6
    IL_0006:  bge.s      IL_001a

    IL_0008:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_000d:  ldarg.2
    IL_000e:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0013:  ldelem.ref
    IL_0014:  ldfld      int32 Game.Block::MaxInHandStacking
    IL_0019:  ret

    IL_001a:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_001f:  ldarg.2
    IL_0020:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0025:  ldelem.ref
    IL_0026:  ldfld      int32 Game.Block::MaxStacking
    IL_002b:  ret
  } // end of method ComponentInventory::GetSlotCapacity

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.ComponentInventoryBase::.ctor()
    IL_0006:  ret
  } // end of method ComponentInventory::.ctor

  .property instance int32 ActiveSlotIndex()
  {
    .get instance int32 Game.ComponentInventory::get_ActiveSlotIndex()
    .set instance void Game.ComponentInventory::set_ActiveSlotIndex(int32)
  } // end of property ComponentInventory::ActiveSlotIndex
} // end of class Game.ComponentInventory