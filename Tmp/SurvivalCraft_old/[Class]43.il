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
    // 代码大小       567 (0x237)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             class Game.ComponentPlayer V_2,
             int32 V_3,
             int32 V_4,
             class Game.ComponentBlockEntity V_5,
             valuetype [Engine]Engine.Vector3 V_6)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldarg.1
    IL_0003:  ldarg.0
    IL_0004:  call       instance int32 Game.ComponentCraftingTable::get_ResultSlotIndex()
    IL_0009:  bne.un     IL_0226

    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Game.CraftingRecipe Game.ComponentCraftingTable::m_matchedRecipe
    IL_0014:  brfalse    IL_022f

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
    IL_0085:  call       int32 Game.Terrain::ExtractContents(int32)
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
    IL_00e8:  ble        IL_022f

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
    IL_01c4:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_01c9:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPlayer>()
    IL_01ce:  stloc.2
    IL_01cf:  ldloc.2
    IL_01d0:  brtrue.s   IL_0205

    IL_01d2:  ldarg.0
    IL_01d3:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_01d8:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentBlockEntity>()
    IL_01dd:  stloc.s    V_5
    IL_01df:  ldloc.s    V_5
    IL_01e1:  brfalse.s  IL_0205

    IL_01e3:  ldloca.s   V_6
    IL_01e5:  ldloc.s    V_5
    IL_01e7:  callvirt   instance valuetype [Engine]Engine.Point3 Game.ComponentBlockEntity::get_Coordinates()
    IL_01ec:  call       instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Point3)
    IL_01f1:  ldarg.0
    IL_01f2:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_01f7:  ldc.i4.1
    IL_01f8:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPlayers>(bool)
    IL_01fd:  ldloc.s    V_6
    IL_01ff:  callvirt   instance class Game.ComponentPlayer Game.SubsystemPlayers::FindNearestPlayer(valuetype [Engine]Engine.Vector3)
    IL_0204:  stloc.2
    IL_0205:  ldloc.2
    IL_0206:  brfalse.s  IL_022f

    IL_0208:  ldloc.2
    IL_0209:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_020e:  brfalse.s  IL_022f

    IL_0210:  ldloc.2
    IL_0211:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_0216:  dup
    IL_0217:  ldfld      int64 Game.PlayerStats::ItemsCrafted
    IL_021c:  ldloc.0
    IL_021d:  conv.i8
    IL_021e:  add
    IL_021f:  stfld      int64 Game.PlayerStats::ItemsCrafted
    IL_0224:  br.s       IL_022f

    IL_0226:  ldarg.0
    IL_0227:  ldarg.1
    IL_0228:  ldarg.2
    IL_0229:  call       instance int32 Game.ComponentInventoryBase::RemoveSlotItems(int32,
                                                                                     int32)
    IL_022e:  stloc.0
    IL_022f:  ldarg.0
    IL_0230:  call       instance void Game.ComponentCraftingTable::UpdateCraftingResult()
    IL_0235:  ldloc.0
    IL_0236:  ret
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
    // 代码大小       330 (0x14a)
    .maxstack  6
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
    IL_0008:  br         IL_00a6

    IL_000d:  ldc.i4.0
    IL_000e:  stloc.3
    IL_000f:  br         IL_0096

    IL_0014:  ldloc.2
    IL_0015:  ldloc.3
    IL_0016:  ldc.i4.3
    IL_0017:  mul
    IL_0018:  add
    IL_0019:  stloc.s    V_4
    IL_001b:  ldloc.2
    IL_001c:  ldloc.3
    IL_001d:  ldarg.0
    IL_001e:  ldfld      int32 Game.ComponentCraftingTable::m_craftingGridSize
    IL_0023:  mul
    IL_0024:  add
    IL_0025:  stloc.s    V_5
    IL_0027:  ldarg.0
    IL_0028:  ldloc.s    V_5
    IL_002a:  callvirt   instance int32 Game.ComponentInventoryBase::GetSlotValue(int32)
    IL_002f:  dup
    IL_0030:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0035:  stloc.s    V_6
    IL_0037:  call       int32 Game.Terrain::ExtractData(int32)
    IL_003c:  stloc.s    V_7
    IL_003e:  ldarg.0
    IL_003f:  ldloc.s    V_5
    IL_0041:  callvirt   instance int32 Game.ComponentInventoryBase::GetSlotCount(int32)
    IL_0046:  stloc.s    V_8
    IL_0048:  ldloc.s    V_8
    IL_004a:  ldc.i4.0
    IL_004b:  ble.s      IL_0088

    IL_004d:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0052:  ldloc.s    V_6
    IL_0054:  ldelem.ref
    IL_0055:  stloc.s    V_9
    IL_0057:  ldarg.0
    IL_0058:  ldfld      string[] Game.ComponentCraftingTable::m_matchedIngredients
    IL_005d:  ldloc.s    V_4
    IL_005f:  ldloc.s    V_9
    IL_0061:  ldfld      string Game.Block::CraftingId
    IL_0066:  ldstr      ":"
    IL_006b:  ldloca.s   V_7
    IL_006d:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_0072:  call       instance string [System.Runtime]System.Int32::ToString(class [System.Runtime]System.IFormatProvider)
    IL_0077:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_007c:  stelem.ref
    IL_007d:  ldloc.0
    IL_007e:  ldloc.s    V_8
    IL_0080:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0085:  stloc.0
    IL_0086:  br.s       IL_0092

    IL_0088:  ldarg.0
    IL_0089:  ldfld      string[] Game.ComponentCraftingTable::m_matchedIngredients
    IL_008e:  ldloc.s    V_4
    IL_0090:  ldnull
    IL_0091:  stelem.ref
    IL_0092:  ldloc.3
    IL_0093:  ldc.i4.1
    IL_0094:  add
    IL_0095:  stloc.3
    IL_0096:  ldloc.3
    IL_0097:  ldarg.0
    IL_0098:  ldfld      int32 Game.ComponentCraftingTable::m_craftingGridSize
    IL_009d:  blt        IL_0014

    IL_00a2:  ldloc.2
    IL_00a3:  ldc.i4.1
    IL_00a4:  add
    IL_00a5:  stloc.2
    IL_00a6:  ldloc.2
    IL_00a7:  ldarg.0
    IL_00a8:  ldfld      int32 Game.ComponentCraftingTable::m_craftingGridSize
    IL_00ad:  blt        IL_000d

    IL_00b2:  ldarg.0
    IL_00b3:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_00b8:  ldc.i4.1
    IL_00b9:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_00be:  ldarg.0
    IL_00bf:  ldfld      string[] Game.ComponentCraftingTable::m_matchedIngredients
    IL_00c4:  ldc.r4     0.0
    IL_00c9:  call       class Game.CraftingRecipe Game.CraftingRecipesManager::FindMatchingRecipe(class Game.SubsystemTerrain,
                                                                                                   string[],
                                                                                                   float32)
    IL_00ce:  stloc.1
    IL_00cf:  ldloc.1
    IL_00d0:  brfalse.s  IL_0114

    IL_00d2:  ldarg.0
    IL_00d3:  ldloc.1
    IL_00d4:  stfld      class Game.CraftingRecipe Game.ComponentCraftingTable::m_matchedRecipe
    IL_00d9:  ldarg.0
    IL_00da:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_00df:  ldarg.0
    IL_00e0:  call       instance int32 Game.ComponentCraftingTable::get_ResultSlotIndex()
    IL_00e5:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Item(int32)
    IL_00ea:  ldloc.1
    IL_00eb:  ldfld      int32 Game.CraftingRecipe::ResultValue
    IL_00f0:  stfld      int32 Game.ComponentInventoryBase/Slot::Value
    IL_00f5:  ldarg.0
    IL_00f6:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_00fb:  ldarg.0
    IL_00fc:  call       instance int32 Game.ComponentCraftingTable::get_ResultSlotIndex()
    IL_0101:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Item(int32)
    IL_0106:  ldloc.1
    IL_0107:  ldfld      int32 Game.CraftingRecipe::ResultCount
    IL_010c:  ldloc.0
    IL_010d:  mul
    IL_010e:  stfld      int32 Game.ComponentInventoryBase/Slot::Count
    IL_0113:  ret

    IL_0114:  ldarg.0
    IL_0115:  ldnull
    IL_0116:  stfld      class Game.CraftingRecipe Game.ComponentCraftingTable::m_matchedRecipe
    IL_011b:  ldarg.0
    IL_011c:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_0121:  ldarg.0
    IL_0122:  call       instance int32 Game.ComponentCraftingTable::get_ResultSlotIndex()
    IL_0127:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Item(int32)
    IL_012c:  ldc.i4.0
    IL_012d:  stfld      int32 Game.ComponentInventoryBase/Slot::Value
    IL_0132:  ldarg.0
    IL_0133:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_0138:  ldarg.0
    IL_0139:  call       instance int32 Game.ComponentCraftingTable::get_ResultSlotIndex()
    IL_013e:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Item(int32)
    IL_0143:  ldc.i4.0
    IL_0144:  stfld      int32 Game.ComponentInventoryBase/Slot::Count
    IL_0149:  ret
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