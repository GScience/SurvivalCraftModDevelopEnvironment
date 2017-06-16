.class public auto ansi beforefieldinit Game.ComponentCraftingTable
       extends Game.ComponentInventoryBase
{
  .field private int32 m_craftingGridSize
  .field private string[] m_matchedIngredients
  .field private class Game.CraftingRecipe m_matchedRecipe
  .method public hidebysig specialname instance int32 
          get_RemainsSlotIndex() cil managed
  {
    // 代码大小       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance int32 Game.ComponentInventoryBase::get_SlotsCount()
    IL_0006:  ldc.i4.1
    IL_0007:  sub
    IL_0008:  ret
  } // end of method ComponentCraftingTable::get_RemainsSlotIndex

  .method public hidebysig specialname instance int32 
          get_ResultSlotIndex() cil managed
  {
    // 代码大小       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance int32 Game.ComponentInventoryBase::get_SlotsCount()
    IL_0006:  ldc.i4.2
    IL_0007:  sub
    IL_0008:  ret
  } // end of method ComponentCraftingTable::get_ResultSlotIndex

  .method public hidebysig virtual instance int32 
          GetSlotCapacity(int32 slotIndex,
                          int32 'value') cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  callvirt   instance int32 Game.ComponentInventoryBase::get_SlotsCount()
    IL_0007:  ldc.i4.2
    IL_0008:  sub
    IL_0009:  bge.s      IL_0014

    IL_000b:  ldarg.0
    IL_000c:  ldarg.1
    IL_000d:  ldarg.2
    IL_000e:  call       instance int32 Game.ComponentInventoryBase::GetSlotCapacity(int32,
                                                                                     int32)
    IL_0013:  ret

    IL_0014:  ldc.i4.0
    IL_0015:  ret
  } // end of method ComponentCraftingTable::GetSlotCapacity

  .method public hidebysig virtual instance void 
          AddSlotItems(int32 slotIndex,
                       int32 'value',
                       int32 count) cil managed
  {
    // 代码大小       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  call       instance void Game.ComponentInventoryBase::AddSlotItems(int32,
                                                                                 int32,
                                                                                 int32)
    IL_0009:  ldarg.0
    IL_000a:  call       instance void Game.ComponentCraftingTable::UpdateCraftingResult()
    IL_000f:  ret
  } // end of method ComponentCraftingTable::AddSlotItems

  .method public hidebysig virtual instance int32 
          RemoveSlotItems(int32 slotIndex,
                          int32 count) cil managed
  {
    // 代码大小       519 (0x207)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             class Game.ComponentPlayer V_2,
             int32 V_3,
             int32 V_4)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldarg.1
    IL_0003:  ldarg.0
    IL_0004:  call       instance int32 Game.ComponentCraftingTable::get_ResultSlotIndex()
    IL_0009:  bne.un     IL_01f6

    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Game.CraftingRecipe Game.ComponentCraftingTable::m_matchedRecipe
    IL_0014:  brfalse    IL_01ff

    IL_0019:  ldarg.0
    IL_001a:  ldfld      class Game.CraftingRecipe Game.ComponentCraftingTable::m_matchedRecipe
    IL_001f:  ldfld      int32 Game.CraftingRecipe::RemainsValue
    IL_0024:  brfalse    IL_00c2

    IL_0029:  ldarg.0
    IL_002a:  ldfld      class Game.CraftingRecipe Game.ComponentCraftingTable::m_matchedRecipe
    IL_002f:  ldfld      int32 Game.CraftingRecipe::RemainsCount
    IL_0034:  ldc.i4.0
    IL_0035:  ble        IL_00c2

    IL_003a:  ldarg.0
    IL_003b:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_0040:  ldarg.0
    IL_0041:  call       instance int32 Game.ComponentCraftingTable::get_RemainsSlotIndex()
    IL_0046:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Item(int32)
    IL_004b:  ldfld      int32 Game.ComponentInventoryBase/Slot::Count
    IL_0050:  brfalse.s  IL_0075

    IL_0052:  ldarg.0
    IL_0053:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_0058:  ldarg.0
    IL_0059:  call       instance int32 Game.ComponentCraftingTable::get_RemainsSlotIndex()
    IL_005e:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Item(int32)
    IL_0063:  ldfld      int32 Game.ComponentInventoryBase/Slot::Value
    IL_0068:  ldarg.0
    IL_0069:  ldfld      class Game.CraftingRecipe Game.ComponentCraftingTable::m_matchedRecipe
    IL_006e:  ldfld      int32 Game.CraftingRecipe::RemainsValue
    IL_0073:  bne.un.s   IL_00bf

    IL_0075:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_007a:  ldarg.0
    IL_007b:  ldfld      class Game.CraftingRecipe Game.ComponentCraftingTable::m_matchedRecipe
    IL_0080:  ldfld      int32 Game.CraftingRecipe::RemainsValue
    IL_0085:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_008a:  ldelem.ref
    IL_008b:  ldfld      int32 Game.Block::MaxStacking
    IL_0090:  ldarg.0
    IL_0091:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_0096:  ldarg.0
    IL_0097:  call       instance int32 Game.ComponentCraftingTable::get_RemainsSlotIndex()
    IL_009c:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Item(int32)
    IL_00a1:  ldfld      int32 Game.ComponentInventoryBase/Slot::Count
    IL_00a6:  sub
    IL_00a7:  stloc.1
    IL_00a8:  ldarg.2
    IL_00a9:  ldloc.1
    IL_00aa:  ldarg.0
    IL_00ab:  ldfld      class Game.CraftingRecipe Game.ComponentCraftingTable::m_matchedRecipe
    IL_00b0:  ldfld      int32 Game.CraftingRecipe::RemainsCount
    IL_00b5:  div
    IL_00b6:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_00bb:  starg.s    count
    IL_00bd:  br.s       IL_00c2

    IL_00bf:  ldc.i4.0
    IL_00c0:  starg.s    count
    IL_00c2:  ldarg.2
    IL_00c3:  ldarg.0
    IL_00c4:  ldfld      class Game.CraftingRecipe Game.ComponentCraftingTable::m_matchedRecipe
    IL_00c9:  ldfld      int32 Game.CraftingRecipe::ResultCount
    IL_00ce:  div
    IL_00cf:  ldarg.0
    IL_00d0:  ldfld      class Game.CraftingRecipe Game.ComponentCraftingTable::m_matchedRecipe
    IL_00d5:  ldfld      int32 Game.CraftingRecipe::ResultCount
    IL_00da:  mul
    IL_00db:  starg.s    count
    IL_00dd:  ldarg.0
    IL_00de:  ldarg.1
    IL_00df:  ldarg.2
    IL_00e0:  call       instance int32 Game.ComponentInventoryBase::RemoveSlotItems(int32,
                                                                                     int32)
    IL_00e5:  stloc.0
    IL_00e6:  ldloc.0
    IL_00e7:  ldc.i4.0
    IL_00e8:  ble        IL_01ff

    IL_00ed:  ldc.i4.0
    IL_00ee:  stloc.3
    IL_00ef:  br.s       IL_014c

    IL_00f1:  ldarg.0
    IL_00f2:  ldfld      string[] Game.ComponentCraftingTable::m_matchedIngredients
    IL_00f7:  ldloc.3
    IL_00f8:  ldelem.ref
    IL_00f9:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_00fe:  brtrue.s   IL_0148

    IL_0100:  ldloc.3
    IL_0101:  ldc.i4.3
    IL_0102:  rem
    IL_0103:  ldarg.0
    IL_0104:  ldfld      int32 Game.ComponentCraftingTable::m_craftingGridSize
    IL_0109:  ldloc.3
    IL_010a:  ldc.i4.3
    IL_010b:  div
    IL_010c:  mul
    IL_010d:  add
    IL_010e:  stloc.s    V_4
    IL_0110:  ldarg.0
    IL_0111:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_0116:  ldloc.s    V_4
    IL_0118:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Item(int32)
    IL_011d:  ldarg.0
    IL_011e:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_0123:  ldloc.s    V_4
    IL_0125:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Item(int32)
    IL_012a:  ldfld      int32 Game.ComponentInventoryBase/Slot::Count
    IL_012f:  ldloc.0
    IL_0130:  ldarg.0
    IL_0131:  ldfld      class Game.CraftingRecipe Game.ComponentCraftingTable::m_matchedRecipe
    IL_0136:  ldfld      int32 Game.CraftingRecipe::ResultCount
    IL_013b:  div
    IL_013c:  sub
    IL_013d:  ldc.i4.0
    IL_013e:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0143:  stfld      int32 Game.ComponentInventoryBase/Slot::Count
    IL_0148:  ldloc.3
    IL_0149:  ldc.i4.1
    IL_014a:  add
    IL_014b:  stloc.3
    IL_014c:  ldloc.3
    IL_014d:  ldc.i4.s   9
    IL_014f:  blt.s      IL_00f1

    IL_0151:  ldarg.0
    IL_0152:  ldfld      class Game.CraftingRecipe Game.ComponentCraftingTable::m_matchedRecipe
    IL_0157:  ldfld      int32 Game.CraftingRecipe::RemainsValue
    IL_015c:  brfalse.s  IL_01c3

    IL_015e:  ldarg.0
    IL_015f:  ldfld      class Game.CraftingRecipe Game.ComponentCraftingTable::m_matchedRecipe
    IL_0164:  ldfld      int32 Game.CraftingRecipe::RemainsCount
    IL_0169:  ldc.i4.0
    IL_016a:  ble.s      IL_01c3

    IL_016c:  ldarg.0
    IL_016d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_0172:  ldarg.0
    IL_0173:  call       instance int32 Game.ComponentCraftingTable::get_RemainsSlotIndex()
    IL_0178:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Item(int32)
    IL_017d:  ldarg.0
    IL_017e:  ldfld      class Game.CraftingRecipe Game.ComponentCraftingTable::m_matchedRecipe
    IL_0183:  ldfld      int32 Game.CraftingRecipe::RemainsValue
    IL_0188:  stfld      int32 Game.ComponentInventoryBase/Slot::Value
    IL_018d:  ldarg.0
    IL_018e:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_0193:  ldarg.0
    IL_0194:  call       instance int32 Game.ComponentCraftingTable::get_RemainsSlotIndex()
    IL_0199:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Item(int32)
    IL_019e:  dup
    IL_019f:  ldfld      int32 Game.ComponentInventoryBase/Slot::Count
    IL_01a4:  ldloc.0
    IL_01a5:  ldarg.0
    IL_01a6:  ldfld      class Game.CraftingRecipe Game.ComponentCraftingTable::m_matchedRecipe
    IL_01ab:  ldfld      int32 Game.CraftingRecipe::ResultCount
    IL_01b0:  div
    IL_01b1:  ldarg.0
    IL_01b2:  ldfld      class Game.CraftingRecipe Game.ComponentCraftingTable::m_matchedRecipe
    IL_01b7:  ldfld      int32 Game.CraftingRecipe::RemainsCount
    IL_01bc:  mul
    IL_01bd:  add
    IL_01be:  stfld      int32 Game.ComponentInventoryBase/Slot::Count
    IL_01c3:  ldarg.0
    IL_01c4:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_01c9:  ldc.i4.1
    IL_01ca:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPlayer>(bool)
    IL_01cf:  callvirt   instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_01d4:  stloc.2
    IL_01d5:  ldloc.2
    IL_01d6:  brfalse.s  IL_01ff

    IL_01d8:  ldloc.2
    IL_01d9:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_01de:  brfalse.s  IL_01ff

    IL_01e0:  ldloc.2
    IL_01e1:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_01e6:  dup
    IL_01e7:  ldfld      int64 Game.PlayerStats::ItemsCrafted
    IL_01ec:  ldloc.0
    IL_01ed:  conv.i8
    IL_01ee:  add
    IL_01ef:  stfld      int64 Game.PlayerStats::ItemsCrafted
    IL_01f4:  br.s       IL_01ff

    IL_01f6:  ldarg.0
    IL_01f7:  ldarg.1
    IL_01f8:  ldarg.2
    IL_01f9:  call       instance int32 Game.ComponentInventoryBase::RemoveSlotItems(int32,
                                                                                     int32)
    IL_01fe:  stloc.0
    IL_01ff:  ldarg.0
    IL_0200:  call       instance void Game.ComponentCraftingTable::UpdateCraftingResult()
    IL_0205:  ldloc.0
    IL_0206:  ret
  } // end of method ComponentCraftingTable::RemoveSlotItems

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       59 (0x3b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Game.ComponentInventoryBase::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                                         class [EntitySystem]GameEntitySystem.IdToEntityMap)
    IL_0008:  ldarg.0
    IL_0009:  ldarg.0
    IL_000a:  callvirt   instance int32 Game.ComponentInventoryBase::get_SlotsCount()
    IL_000f:  ldc.i4.2
    IL_0010:  sub
    IL_0011:  conv.r4
    IL_0012:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_0017:  conv.i4
    IL_0018:  stfld      int32 Game.ComponentCraftingTable::m_craftingGridSize
    IL_001d:  ldarg.0
    IL_001e:  ldfld      int32 Game.ComponentCraftingTable::m_craftingGridSize
    IL_0023:  ldc.i4.1
    IL_0024:  blt.s      IL_002f

    IL_0026:  ldarg.0
    IL_0027:  ldfld      int32 Game.ComponentCraftingTable::m_craftingGridSize
    IL_002c:  ldc.i4.3
    IL_002d:  ble.s      IL_003a

    IL_002f:  ldstr      "Invalid crafting grid size."
    IL_0034:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0039:  throw

    IL_003a:  ret
  } // end of method ComponentCraftingTable::Load

  .method private hidebysig instance void 
          UpdateCraftingResult() cil managed
  {
    // 代码大小       322 (0x142)
    .maxstack  5
    .locals init (int32 V_0,
             class Game.CraftingRecipe V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             class Game.Block V_9)
    IL_0000:  ldc.i4     0x7fffffff
    IL_0005:  stloc.0
    IL_0006:  ldc.i4.0
    IL_0007:  stloc.2
    IL_0008:  br         IL_009e

    IL_000d:  ldc.i4.0
    IL_000e:  stloc.3
    IL_000f:  br.s       IL_008e

    IL_0011:  ldloc.2
    IL_0012:  ldloc.3
    IL_0013:  ldc.i4.3
    IL_0014:  mul
    IL_0015:  add
    IL_0016:  stloc.s    V_4
    IL_0018:  ldloc.2
    IL_0019:  ldloc.3
    IL_001a:  ldarg.0
    IL_001b:  ldfld      int32 Game.ComponentCraftingTable::m_craftingGridSize
    IL_0020:  mul
    IL_0021:  add
    IL_0022:  stloc.s    V_5
    IL_0024:  ldarg.0
    IL_0025:  ldloc.s    V_5
    IL_0027:  callvirt   instance int32 Game.ComponentInventoryBase::GetSlotValue(int32)
    IL_002c:  dup
    IL_002d:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0032:  stloc.s    V_6
    IL_0034:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0039:  stloc.s    V_7
    IL_003b:  ldarg.0
    IL_003c:  ldloc.s    V_5
    IL_003e:  callvirt   instance int32 Game.ComponentInventoryBase::GetSlotCount(int32)
    IL_0043:  stloc.s    V_8
    IL_0045:  ldloc.s    V_8
    IL_0047:  ldc.i4.0
    IL_0048:  ble.s      IL_0080

    IL_004a:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_004f:  ldloc.s    V_6
    IL_0051:  ldelem.ref
    IL_0052:  stloc.s    V_9
    IL_0054:  ldarg.0
    IL_0055:  ldfld      string[] Game.ComponentCraftingTable::m_matchedIngredients
    IL_005a:  ldloc.s    V_4
    IL_005c:  ldloc.s    V_9
    IL_005e:  ldfld      string Game.Block::CraftingId
    IL_0063:  ldstr      ":"
    IL_0068:  ldloca.s   V_7
    IL_006a:  call       instance string [System.Runtime]System.Int32::ToString()
    IL_006f:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_0074:  stelem.ref
    IL_0075:  ldloc.0
    IL_0076:  ldloc.s    V_8
    IL_0078:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_007d:  stloc.0
    IL_007e:  br.s       IL_008a

    IL_0080:  ldarg.0
    IL_0081:  ldfld      string[] Game.ComponentCraftingTable::m_matchedIngredients
    IL_0086:  ldloc.s    V_4
    IL_0088:  ldnull
    IL_0089:  stelem.ref
    IL_008a:  ldloc.3
    IL_008b:  ldc.i4.1
    IL_008c:  add
    IL_008d:  stloc.3
    IL_008e:  ldloc.3
    IL_008f:  ldarg.0
    IL_0090:  ldfld      int32 Game.ComponentCraftingTable::m_craftingGridSize
    IL_0095:  blt        IL_0011

    IL_009a:  ldloc.2
    IL_009b:  ldc.i4.1
    IL_009c:  add
    IL_009d:  stloc.2
    IL_009e:  ldloc.2
    IL_009f:  ldarg.0
    IL_00a0:  ldfld      int32 Game.ComponentCraftingTable::m_craftingGridSize
    IL_00a5:  blt        IL_000d

    IL_00aa:  ldarg.0
    IL_00ab:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_00b0:  ldc.i4.1
    IL_00b1:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_00b6:  ldarg.0
    IL_00b7:  ldfld      string[] Game.ComponentCraftingTable::m_matchedIngredients
    IL_00bc:  ldc.r4     0.0
    IL_00c1:  call       class Game.CraftingRecipe Game.CraftingRecipesManager::FindMatchingRecipe(class Game.SubsystemTerrain,
                                                                                                   string[],
                                                                                                   float32)
    IL_00c6:  stloc.1
    IL_00c7:  ldloc.1
    IL_00c8:  brfalse.s  IL_010c

    IL_00ca:  ldarg.0
    IL_00cb:  ldloc.1
    IL_00cc:  stfld      class Game.CraftingRecipe Game.ComponentCraftingTable::m_matchedRecipe
    IL_00d1:  ldarg.0
    IL_00d2:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_00d7:  ldarg.0
    IL_00d8:  call       instance int32 Game.ComponentCraftingTable::get_ResultSlotIndex()
    IL_00dd:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Item(int32)
    IL_00e2:  ldloc.1
    IL_00e3:  ldfld      int32 Game.CraftingRecipe::ResultValue
    IL_00e8:  stfld      int32 Game.ComponentInventoryBase/Slot::Value
    IL_00ed:  ldarg.0
    IL_00ee:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_00f3:  ldarg.0
    IL_00f4:  call       instance int32 Game.ComponentCraftingTable::get_ResultSlotIndex()
    IL_00f9:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Item(int32)
    IL_00fe:  ldloc.1
    IL_00ff:  ldfld      int32 Game.CraftingRecipe::ResultCount
    IL_0104:  ldloc.0
    IL_0105:  mul
    IL_0106:  stfld      int32 Game.ComponentInventoryBase/Slot::Count
    IL_010b:  ret

    IL_010c:  ldarg.0
    IL_010d:  ldnull
    IL_010e:  stfld      class Game.CraftingRecipe Game.ComponentCraftingTable::m_matchedRecipe
    IL_0113:  ldarg.0
    IL_0114:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_0119:  ldarg.0
    IL_011a:  call       instance int32 Game.ComponentCraftingTable::get_ResultSlotIndex()
    IL_011f:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Item(int32)
    IL_0124:  ldc.i4.0
    IL_0125:  stfld      int32 Game.ComponentInventoryBase/Slot::Value
    IL_012a:  ldarg.0
    IL_012b:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_0130:  ldarg.0
    IL_0131:  call       instance int32 Game.ComponentCraftingTable::get_ResultSlotIndex()
    IL_0136:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Item(int32)
    IL_013b:  ldc.i4.0
    IL_013c:  stfld      int32 Game.ComponentInventoryBase/Slot::Count
    IL_0141:  ret
  } // end of method ComponentCraftingTable::UpdateCraftingResult

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   9
    IL_0003:  newarr     [System.Runtime]System.String
    IL_0008:  stfld      string[] Game.ComponentCraftingTable::m_matchedIngredients
    IL_000d:  ldarg.0
    IL_000e:  call       instance void Game.ComponentInventoryBase::.ctor()
    IL_0013:  ret
  } // end of method ComponentCraftingTable::.ctor

  .property instance int32 RemainsSlotIndex()
  {
    .get instance int32 Game.ComponentCraftingTable::get_RemainsSlotIndex()
  } // end of property ComponentCraftingTable::RemainsSlotIndex
  .property instance int32 ResultSlotIndex()
  {
    .get instance int32 Game.ComponentCraftingTable::get_ResultSlotIndex()
  } // end of property ComponentCraftingTable::ResultSlotIndex
} // end of class Game.ComponentCraftingTable