.class public auto ansi beforefieldinit Game.ComponentFurnace
       extends Game.ComponentInventoryBase
       implements Game.IUpdateable
{
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemExplosions m_subsystemExplosions
  .field private class Game.ComponentBlockEntity m_componentBlockEntity
  .field private int32 m_furnaceSize
  .field private string[] m_matchedIngredients
  .field private float32 m_fireTimeRemaining
  .field private float32 m_heatLevel
  .field private bool m_updateSmeltingRecipe
  .field private class Game.CraftingRecipe m_smeltingRecipe
  .field private float32 m_smeltingProgress
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
  } // end of method ComponentFurnace::get_RemainsSlotIndex

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
  } // end of method ComponentFurnace::get_ResultSlotIndex

  .method public hidebysig specialname instance int32 
          get_FuelSlotIndex() cil managed
  {
    // 代码大小       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance int32 Game.ComponentInventoryBase::get_SlotsCount()
    IL_0006:  ldc.i4.3
    IL_0007:  sub
    IL_0008:  ret
  } // end of method ComponentFurnace::get_FuelSlotIndex

  .method public hidebysig specialname instance float32 
          get_HeatLevel() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentFurnace::m_heatLevel
    IL_0006:  ret
  } // end of method ComponentFurnace::get_HeatLevel

  .method public hidebysig specialname instance float32 
          get_SmeltingProgress() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentFurnace::m_smeltingProgress
    IL_0006:  ret
  } // end of method ComponentFurnace::get_SmeltingProgress

  .method public hidebysig virtual instance int32 
          GetSlotCapacity(int32 slotIndex,
                          int32 'value') cil managed
  {
    // 代码大小       53 (0x35)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  call       instance int32 Game.ComponentFurnace::get_FuelSlotIndex()
    IL_0007:  bne.un.s   IL_002c

    IL_0009:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_000e:  ldarg.2
    IL_000f:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0014:  ldelem.ref
    IL_0015:  ldfld      float32 Game.Block::FuelHeatLevel
    IL_001a:  ldc.r4     0.0
    IL_001f:  ble.un.s   IL_002a

    IL_0021:  ldarg.0
    IL_0022:  ldarg.1
    IL_0023:  ldarg.2
    IL_0024:  call       instance int32 Game.ComponentInventoryBase::GetSlotCapacity(int32,
                                                                                     int32)
    IL_0029:  ret

    IL_002a:  ldc.i4.0
    IL_002b:  ret

    IL_002c:  ldarg.0
    IL_002d:  ldarg.1
    IL_002e:  ldarg.2
    IL_002f:  call       instance int32 Game.ComponentInventoryBase::GetSlotCapacity(int32,
                                                                                     int32)
    IL_0034:  ret
  } // end of method ComponentFurnace::GetSlotCapacity

  .method public hidebysig virtual instance void 
          AddSlotItems(int32 slotIndex,
                       int32 'value',
                       int32 count) cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  call       instance void Game.ComponentInventoryBase::AddSlotItems(int32,
                                                                                 int32,
                                                                                 int32)
    IL_0009:  ldarg.0
    IL_000a:  ldc.i4.1
    IL_000b:  stfld      bool Game.ComponentFurnace::m_updateSmeltingRecipe
    IL_0010:  ret
  } // end of method ComponentFurnace::AddSlotItems

  .method public hidebysig virtual instance int32 
          RemoveSlotItems(int32 slotIndex,
                          int32 count) cil managed
  {
    // 代码大小       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  stfld      bool Game.ComponentFurnace::m_updateSmeltingRecipe
    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  ldarg.2
    IL_000a:  call       instance int32 Game.ComponentInventoryBase::RemoveSlotItems(int32,
                                                                                     int32)
    IL_000f:  ret
  } // end of method ComponentFurnace::RemoveSlotItems

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentFurnace::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       933 (0x3a5)
    .maxstack  7
    .locals init (valuetype [Engine]Engine.Point3 V_0,
             class Game.TerrainChunk V_1,
             float32 V_2,
             class Game.CraftingRecipe V_3,
             class Game.ComponentInventoryBase/Slot V_4,
             int32 V_5,
             class Game.ComponentInventoryBase/Slot V_6,
             int32 V_7,
             class Game.Block V_8,
             int32 V_9,
             int32 V_10)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentBlockEntity Game.ComponentFurnace::m_componentBlockEntity
    IL_0006:  callvirt   instance valuetype [Engine]Engine.Point3 Game.ComponentBlockEntity::get_Coordinates()
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldfld      float32 Game.ComponentFurnace::m_heatLevel
    IL_0012:  ldc.r4     0.0
    IL_0017:  ble.un.s   IL_0049

    IL_0019:  ldarg.0
    IL_001a:  ldc.r4     0.0
    IL_001f:  ldarg.0
    IL_0020:  ldfld      float32 Game.ComponentFurnace::m_fireTimeRemaining
    IL_0025:  ldarg.1
    IL_0026:  sub
    IL_0027:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_002c:  stfld      float32 Game.ComponentFurnace::m_fireTimeRemaining
    IL_0031:  ldarg.0
    IL_0032:  ldfld      float32 Game.ComponentFurnace::m_fireTimeRemaining
    IL_0037:  ldc.r4     0.0
    IL_003c:  bne.un.s   IL_0049

    IL_003e:  ldarg.0
    IL_003f:  ldc.r4     0.0
    IL_0044:  stfld      float32 Game.ComponentFurnace::m_heatLevel
    IL_0049:  ldarg.0
    IL_004a:  ldfld      bool Game.ComponentFurnace::m_updateSmeltingRecipe
    IL_004f:  brfalse.s  IL_00d0

    IL_0051:  ldarg.0
    IL_0052:  ldc.i4.0
    IL_0053:  stfld      bool Game.ComponentFurnace::m_updateSmeltingRecipe
    IL_0058:  ldc.r4     0.0
    IL_005d:  stloc.2
    IL_005e:  ldarg.0
    IL_005f:  ldfld      float32 Game.ComponentFurnace::m_heatLevel
    IL_0064:  ldc.r4     0.0
    IL_0069:  ble.un.s   IL_0074

    IL_006b:  ldarg.0
    IL_006c:  ldfld      float32 Game.ComponentFurnace::m_heatLevel
    IL_0071:  stloc.2
    IL_0072:  br.s       IL_00ad

    IL_0074:  ldarg.0
    IL_0075:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_007a:  ldarg.0
    IL_007b:  call       instance int32 Game.ComponentFurnace::get_FuelSlotIndex()
    IL_0080:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Item(int32)
    IL_0085:  stloc.s    V_4
    IL_0087:  ldloc.s    V_4
    IL_0089:  ldfld      int32 Game.ComponentInventoryBase/Slot::Count
    IL_008e:  ldc.i4.0
    IL_008f:  ble.s      IL_00ad

    IL_0091:  ldloc.s    V_4
    IL_0093:  ldfld      int32 Game.ComponentInventoryBase/Slot::Value
    IL_0098:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_009d:  stloc.s    V_5
    IL_009f:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00a4:  ldloc.s    V_5
    IL_00a6:  ldelem.ref
    IL_00a7:  ldfld      float32 Game.Block::FuelHeatLevel
    IL_00ac:  stloc.2
    IL_00ad:  ldarg.0
    IL_00ae:  ldloc.2
    IL_00af:  call       instance class Game.CraftingRecipe Game.ComponentFurnace::FindSmeltingRecipe(float32)
    IL_00b4:  stloc.3
    IL_00b5:  ldloc.3
    IL_00b6:  ldarg.0
    IL_00b7:  ldfld      class Game.CraftingRecipe Game.ComponentFurnace::m_smeltingRecipe
    IL_00bc:  beq.s      IL_00d0

    IL_00be:  ldarg.0
    IL_00bf:  ldloc.3
    IL_00c0:  stfld      class Game.CraftingRecipe Game.ComponentFurnace::m_smeltingRecipe
    IL_00c5:  ldarg.0
    IL_00c6:  ldc.r4     0.0
    IL_00cb:  stfld      float32 Game.ComponentFurnace::m_smeltingProgress
    IL_00d0:  ldarg.0
    IL_00d1:  ldfld      class Game.CraftingRecipe Game.ComponentFurnace::m_smeltingRecipe
    IL_00d6:  brtrue.s   IL_00ee

    IL_00d8:  ldarg.0
    IL_00d9:  ldc.r4     0.0
    IL_00de:  stfld      float32 Game.ComponentFurnace::m_heatLevel
    IL_00e3:  ldarg.0
    IL_00e4:  ldc.r4     0.0
    IL_00e9:  stfld      float32 Game.ComponentFurnace::m_fireTimeRemaining
    IL_00ee:  ldarg.0
    IL_00ef:  ldfld      class Game.CraftingRecipe Game.ComponentFurnace::m_smeltingRecipe
    IL_00f4:  brfalse    IL_01bc

    IL_00f9:  ldarg.0
    IL_00fa:  ldfld      float32 Game.ComponentFurnace::m_fireTimeRemaining
    IL_00ff:  ldc.r4     0.0
    IL_0104:  bgt.un     IL_01bc

    IL_0109:  ldarg.0
    IL_010a:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_010f:  ldarg.0
    IL_0110:  call       instance int32 Game.ComponentFurnace::get_FuelSlotIndex()
    IL_0115:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Item(int32)
    IL_011a:  stloc.s    V_6
    IL_011c:  ldloc.s    V_6
    IL_011e:  ldfld      int32 Game.ComponentInventoryBase/Slot::Count
    IL_0123:  ldc.i4.0
    IL_0124:  ble        IL_01bc

    IL_0129:  ldloc.s    V_6
    IL_012b:  ldfld      int32 Game.ComponentInventoryBase/Slot::Value
    IL_0130:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0135:  stloc.s    V_7
    IL_0137:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_013c:  ldloc.s    V_7
    IL_013e:  ldelem.ref
    IL_013f:  stloc.s    V_8
    IL_0141:  ldloc.s    V_8
    IL_0143:  ldloc.s    V_6
    IL_0145:  ldfld      int32 Game.ComponentInventoryBase/Slot::Value
    IL_014a:  callvirt   instance float32 Game.Block::GetExplosionPressure(int32)
    IL_014f:  ldc.r4     0.0
    IL_0154:  ble.un.s   IL_0185

    IL_0156:  ldloc.s    V_6
    IL_0158:  ldc.i4.0
    IL_0159:  stfld      int32 Game.ComponentInventoryBase/Slot::Count
    IL_015e:  ldarg.0
    IL_015f:  ldfld      class Game.SubsystemExplosions Game.ComponentFurnace::m_subsystemExplosions
    IL_0164:  ldloc.0
    IL_0165:  ldfld      int32 [Engine]Engine.Point3::X
    IL_016a:  ldloc.0
    IL_016b:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0170:  ldloc.0
    IL_0171:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0176:  ldloc.s    V_6
    IL_0178:  ldfld      int32 Game.ComponentInventoryBase/Slot::Value
    IL_017d:  callvirt   instance bool Game.SubsystemExplosions::TryExplodeBlock(int32,
                                                                                 int32,
                                                                                 int32,
                                                                                 int32)
    IL_0182:  pop
    IL_0183:  br.s       IL_01bc

    IL_0185:  ldloc.s    V_8
    IL_0187:  ldfld      float32 Game.Block::FuelHeatLevel
    IL_018c:  ldc.r4     0.0
    IL_0191:  ble.un.s   IL_01bc

    IL_0193:  ldloc.s    V_6
    IL_0195:  dup
    IL_0196:  ldfld      int32 Game.ComponentInventoryBase/Slot::Count
    IL_019b:  ldc.i4.1
    IL_019c:  sub
    IL_019d:  stfld      int32 Game.ComponentInventoryBase/Slot::Count
    IL_01a2:  ldarg.0
    IL_01a3:  ldloc.s    V_8
    IL_01a5:  ldfld      float32 Game.Block::FuelFireDuration
    IL_01aa:  stfld      float32 Game.ComponentFurnace::m_fireTimeRemaining
    IL_01af:  ldarg.0
    IL_01b0:  ldloc.s    V_8
    IL_01b2:  ldfld      float32 Game.Block::FuelHeatLevel
    IL_01b7:  stfld      float32 Game.ComponentFurnace::m_heatLevel
    IL_01bc:  ldarg.0
    IL_01bd:  ldfld      float32 Game.ComponentFurnace::m_fireTimeRemaining
    IL_01c2:  ldc.r4     0.0
    IL_01c7:  bgt.un.s   IL_01db

    IL_01c9:  ldarg.0
    IL_01ca:  ldnull
    IL_01cb:  stfld      class Game.CraftingRecipe Game.ComponentFurnace::m_smeltingRecipe
    IL_01d0:  ldarg.0
    IL_01d1:  ldc.r4     0.0
    IL_01d6:  stfld      float32 Game.ComponentFurnace::m_smeltingProgress
    IL_01db:  ldarg.0
    IL_01dc:  ldfld      class Game.CraftingRecipe Game.ComponentFurnace::m_smeltingRecipe
    IL_01e1:  brfalse    IL_031e

    IL_01e6:  ldarg.0
    IL_01e7:  ldarg.0
    IL_01e8:  ldfld      float32 Game.ComponentFurnace::m_smeltingProgress
    IL_01ed:  ldc.r4     0.15000001
    IL_01f2:  ldarg.1
    IL_01f3:  mul
    IL_01f4:  add
    IL_01f5:  ldc.r4     1.
    IL_01fa:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_01ff:  stfld      float32 Game.ComponentFurnace::m_smeltingProgress
    IL_0204:  ldarg.0
    IL_0205:  ldfld      float32 Game.ComponentFurnace::m_smeltingProgress
    IL_020a:  ldc.r4     1.
    IL_020f:  blt.un     IL_031e

    IL_0214:  ldc.i4.0
    IL_0215:  stloc.s    V_9
    IL_0217:  br.s       IL_024e

    IL_0219:  ldarg.0
    IL_021a:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_021f:  ldloc.s    V_9
    IL_0221:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Item(int32)
    IL_0226:  ldfld      int32 Game.ComponentInventoryBase/Slot::Count
    IL_022b:  ldc.i4.0
    IL_022c:  ble.s      IL_0248

    IL_022e:  ldarg.0
    IL_022f:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_0234:  ldloc.s    V_9
    IL_0236:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Item(int32)
    IL_023b:  dup
    IL_023c:  ldfld      int32 Game.ComponentInventoryBase/Slot::Count
    IL_0241:  ldc.i4.1
    IL_0242:  sub
    IL_0243:  stfld      int32 Game.ComponentInventoryBase/Slot::Count
    IL_0248:  ldloc.s    V_9
    IL_024a:  ldc.i4.1
    IL_024b:  add
    IL_024c:  stloc.s    V_9
    IL_024e:  ldloc.s    V_9
    IL_0250:  ldarg.0
    IL_0251:  ldfld      int32 Game.ComponentFurnace::m_furnaceSize
    IL_0256:  blt.s      IL_0219

    IL_0258:  ldarg.0
    IL_0259:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_025e:  ldarg.0
    IL_025f:  call       instance int32 Game.ComponentFurnace::get_ResultSlotIndex()
    IL_0264:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Item(int32)
    IL_0269:  ldarg.0
    IL_026a:  ldfld      class Game.CraftingRecipe Game.ComponentFurnace::m_smeltingRecipe
    IL_026f:  ldfld      int32 Game.CraftingRecipe::ResultValue
    IL_0274:  stfld      int32 Game.ComponentInventoryBase/Slot::Value
    IL_0279:  ldarg.0
    IL_027a:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_027f:  ldarg.0
    IL_0280:  call       instance int32 Game.ComponentFurnace::get_ResultSlotIndex()
    IL_0285:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Item(int32)
    IL_028a:  dup
    IL_028b:  ldfld      int32 Game.ComponentInventoryBase/Slot::Count
    IL_0290:  ldarg.0
    IL_0291:  ldfld      class Game.CraftingRecipe Game.ComponentFurnace::m_smeltingRecipe
    IL_0296:  ldfld      int32 Game.CraftingRecipe::ResultCount
    IL_029b:  add
    IL_029c:  stfld      int32 Game.ComponentInventoryBase/Slot::Count
    IL_02a1:  ldarg.0
    IL_02a2:  ldfld      class Game.CraftingRecipe Game.ComponentFurnace::m_smeltingRecipe
    IL_02a7:  ldfld      int32 Game.CraftingRecipe::RemainsValue
    IL_02ac:  brfalse.s  IL_0305

    IL_02ae:  ldarg.0
    IL_02af:  ldfld      class Game.CraftingRecipe Game.ComponentFurnace::m_smeltingRecipe
    IL_02b4:  ldfld      int32 Game.CraftingRecipe::RemainsCount
    IL_02b9:  ldc.i4.0
    IL_02ba:  ble.s      IL_0305

    IL_02bc:  ldarg.0
    IL_02bd:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_02c2:  ldarg.0
    IL_02c3:  call       instance int32 Game.ComponentFurnace::get_RemainsSlotIndex()
    IL_02c8:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Item(int32)
    IL_02cd:  ldarg.0
    IL_02ce:  ldfld      class Game.CraftingRecipe Game.ComponentFurnace::m_smeltingRecipe
    IL_02d3:  ldfld      int32 Game.CraftingRecipe::RemainsValue
    IL_02d8:  stfld      int32 Game.ComponentInventoryBase/Slot::Value
    IL_02dd:  ldarg.0
    IL_02de:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_02e3:  ldarg.0
    IL_02e4:  call       instance int32 Game.ComponentFurnace::get_RemainsSlotIndex()
    IL_02e9:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Item(int32)
    IL_02ee:  dup
    IL_02ef:  ldfld      int32 Game.ComponentInventoryBase/Slot::Count
    IL_02f4:  ldarg.0
    IL_02f5:  ldfld      class Game.CraftingRecipe Game.ComponentFurnace::m_smeltingRecipe
    IL_02fa:  ldfld      int32 Game.CraftingRecipe::RemainsCount
    IL_02ff:  add
    IL_0300:  stfld      int32 Game.ComponentInventoryBase/Slot::Count
    IL_0305:  ldarg.0
    IL_0306:  ldnull
    IL_0307:  stfld      class Game.CraftingRecipe Game.ComponentFurnace::m_smeltingRecipe
    IL_030c:  ldarg.0
    IL_030d:  ldc.r4     0.0
    IL_0312:  stfld      float32 Game.ComponentFurnace::m_smeltingProgress
    IL_0317:  ldarg.0
    IL_0318:  ldc.i4.1
    IL_0319:  stfld      bool Game.ComponentFurnace::m_updateSmeltingRecipe
    IL_031e:  ldarg.0
    IL_031f:  ldfld      class Game.SubsystemTerrain Game.ComponentFurnace::m_subsystemTerrain
    IL_0324:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0329:  ldloc.0
    IL_032a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_032f:  ldloc.0
    IL_0330:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0335:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_033a:  stloc.1
    IL_033b:  ldloc.1
    IL_033c:  brfalse.s  IL_03a4

    IL_033e:  ldloc.1
    IL_033f:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_0344:  ldc.i4.s   9
    IL_0346:  bne.un.s   IL_03a4

    IL_0348:  ldarg.0
    IL_0349:  ldfld      class Game.SubsystemTerrain Game.ComponentFurnace::m_subsystemTerrain
    IL_034e:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0353:  ldloc.0
    IL_0354:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0359:  ldloc.0
    IL_035a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_035f:  ldloc.0
    IL_0360:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0365:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_036a:  stloc.s    V_10
    IL_036c:  ldarg.0
    IL_036d:  ldfld      class Game.SubsystemTerrain Game.ComponentFurnace::m_subsystemTerrain
    IL_0372:  ldloc.0
    IL_0373:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0378:  ldloc.0
    IL_0379:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_037e:  ldloc.0
    IL_037f:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0384:  ldloc.s    V_10
    IL_0386:  ldarg.0
    IL_0387:  ldfld      float32 Game.ComponentFurnace::m_heatLevel
    IL_038c:  ldc.r4     0.0
    IL_0391:  bgt.s      IL_0397

    IL_0393:  ldc.i4.s   64
    IL_0395:  br.s       IL_0399

    IL_0397:  ldc.i4.s   65
    IL_0399:  call       int32 Game.Terrain::ReplaceContents(int32,
                                                             int32)
    IL_039e:  ldc.i4.1
    IL_039f:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_03a4:  ret
  } // end of method ComponentFurnace::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       147 (0x93)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Game.ComponentInventoryBase::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                                         class [EntitySystem]GameEntitySystem.IdToEntityMap)
    IL_0008:  ldarg.0
    IL_0009:  ldarg.0
    IL_000a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_000f:  ldc.i4.1
    IL_0010:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0015:  stfld      class Game.SubsystemTerrain Game.ComponentFurnace::m_subsystemTerrain
    IL_001a:  ldarg.0
    IL_001b:  ldarg.0
    IL_001c:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0021:  ldc.i4.1
    IL_0022:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemExplosions>(bool)
    IL_0027:  stfld      class Game.SubsystemExplosions Game.ComponentFurnace::m_subsystemExplosions
    IL_002c:  ldarg.0
    IL_002d:  ldarg.0
    IL_002e:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0033:  ldc.i4.1
    IL_0034:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentBlockEntity>(bool)
    IL_0039:  stfld      class Game.ComponentBlockEntity Game.ComponentFurnace::m_componentBlockEntity
    IL_003e:  ldarg.0
    IL_003f:  ldarg.0
    IL_0040:  callvirt   instance int32 Game.ComponentInventoryBase::get_SlotsCount()
    IL_0045:  ldc.i4.3
    IL_0046:  sub
    IL_0047:  stfld      int32 Game.ComponentFurnace::m_furnaceSize
    IL_004c:  ldarg.0
    IL_004d:  ldfld      int32 Game.ComponentFurnace::m_furnaceSize
    IL_0052:  ldc.i4.1
    IL_0053:  blt.s      IL_005e

    IL_0055:  ldarg.0
    IL_0056:  ldfld      int32 Game.ComponentFurnace::m_furnaceSize
    IL_005b:  ldc.i4.3
    IL_005c:  ble.s      IL_0069

    IL_005e:  ldstr      "Invalid furnace size."
    IL_0063:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0068:  throw

    IL_0069:  ldarg.0
    IL_006a:  ldarg.1
    IL_006b:  ldstr      "FireTimeRemaining"
    IL_0070:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0075:  stfld      float32 Game.ComponentFurnace::m_fireTimeRemaining
    IL_007a:  ldarg.0
    IL_007b:  ldarg.1
    IL_007c:  ldstr      "HeatLevel"
    IL_0081:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0086:  stfld      float32 Game.ComponentFurnace::m_heatLevel
    IL_008b:  ldarg.0
    IL_008c:  ldc.i4.1
    IL_008d:  stfld      bool Game.ComponentFurnace::m_updateSmeltingRecipe
    IL_0092:  ret
  } // end of method ComponentFurnace::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.EntityToIdMap entityToIdMap) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Game.ComponentInventoryBase::Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                                         class [EntitySystem]GameEntitySystem.EntityToIdMap)
    IL_0008:  ldarg.1
    IL_0009:  ldstr      "FireTimeRemaining"
    IL_000e:  ldarg.0
    IL_000f:  ldfld      float32 Game.ComponentFurnace::m_fireTimeRemaining
    IL_0014:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float32>(string,
                                                                                                           !!0)
    IL_0019:  ldarg.1
    IL_001a:  ldstr      "HeatLevel"
    IL_001f:  ldarg.0
    IL_0020:  ldfld      float32 Game.ComponentFurnace::m_heatLevel
    IL_0025:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float32>(string,
                                                                                                           !!0)
    IL_002a:  ret
  } // end of method ComponentFurnace::Save

  .method private hidebysig instance class Game.CraftingRecipe 
          FindSmeltingRecipe(float32 heatLevel) cil managed
  {
    // 代码大小       387 (0x183)
    .maxstack  6
    .locals init (class Game.CraftingRecipe V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             class Game.Block V_4,
             class Game.ComponentInventoryBase/Slot V_5,
             int32 V_6)
    IL_0000:  ldarg.1
    IL_0001:  ldc.r4     0.0
    IL_0006:  ble.un     IL_0181

    IL_000b:  ldc.i4.0
    IL_000c:  stloc.1
    IL_000d:  br.s       IL_006a

    IL_000f:  ldarg.0
    IL_0010:  ldloc.1
    IL_0011:  callvirt   instance int32 Game.ComponentInventoryBase::GetSlotValue(int32)
    IL_0016:  dup
    IL_0017:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_001c:  stloc.2
    IL_001d:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0022:  stloc.3
    IL_0023:  ldarg.0
    IL_0024:  ldloc.1
    IL_0025:  callvirt   instance int32 Game.ComponentInventoryBase::GetSlotCount(int32)
    IL_002a:  ldc.i4.0
    IL_002b:  ble.s      IL_005d

    IL_002d:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0032:  ldloc.2
    IL_0033:  ldelem.ref
    IL_0034:  stloc.s    V_4
    IL_0036:  ldarg.0
    IL_0037:  ldfld      string[] Game.ComponentFurnace::m_matchedIngredients
    IL_003c:  ldloc.1
    IL_003d:  ldloc.s    V_4
    IL_003f:  ldfld      string Game.Block::CraftingId
    IL_0044:  ldstr      ":"
    IL_0049:  ldloca.s   V_3
    IL_004b:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_0050:  call       instance string [System.Runtime]System.Int32::ToString(class [System.Runtime]System.IFormatProvider)
    IL_0055:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_005a:  stelem.ref
    IL_005b:  br.s       IL_0066

    IL_005d:  ldarg.0
    IL_005e:  ldfld      string[] Game.ComponentFurnace::m_matchedIngredients
    IL_0063:  ldloc.1
    IL_0064:  ldnull
    IL_0065:  stelem.ref
    IL_0066:  ldloc.1
    IL_0067:  ldc.i4.1
    IL_0068:  add
    IL_0069:  stloc.1
    IL_006a:  ldloc.1
    IL_006b:  ldarg.0
    IL_006c:  ldfld      int32 Game.ComponentFurnace::m_furnaceSize
    IL_0071:  blt.s      IL_000f

    IL_0073:  ldnull
    IL_0074:  stloc.0
    IL_0075:  ldarg.0
    IL_0076:  ldfld      class Game.SubsystemTerrain Game.ComponentFurnace::m_subsystemTerrain
    IL_007b:  ldarg.0
    IL_007c:  ldfld      string[] Game.ComponentFurnace::m_matchedIngredients
    IL_0081:  ldarg.1
    IL_0082:  call       class Game.CraftingRecipe Game.CraftingRecipesManager::FindMatchingRecipe(class Game.SubsystemTerrain,
                                                                                                   string[],
                                                                                                   float32)
    IL_0087:  stloc.0
    IL_0088:  ldloc.0
    IL_0089:  brfalse    IL_017f

    IL_008e:  ldloc.0
    IL_008f:  ldfld      float32 Game.CraftingRecipe::RequiredHeatLevel
    IL_0094:  ldc.r4     0.0
    IL_0099:  bgt.un.s   IL_009d

    IL_009b:  ldnull
    IL_009c:  stloc.0
    IL_009d:  ldloc.0
    IL_009e:  brfalse.s  IL_00f7

    IL_00a0:  ldarg.0
    IL_00a1:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_00a6:  ldarg.0
    IL_00a7:  call       instance int32 Game.ComponentFurnace::get_ResultSlotIndex()
    IL_00ac:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Item(int32)
    IL_00b1:  stloc.s    V_5
    IL_00b3:  ldloc.0
    IL_00b4:  ldfld      int32 Game.CraftingRecipe::ResultValue
    IL_00b9:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_00be:  stloc.s    V_6
    IL_00c0:  ldloc.s    V_5
    IL_00c2:  ldfld      int32 Game.ComponentInventoryBase/Slot::Count
    IL_00c7:  brfalse.s  IL_00f7

    IL_00c9:  ldloc.0
    IL_00ca:  ldfld      int32 Game.CraftingRecipe::ResultValue
    IL_00cf:  ldloc.s    V_5
    IL_00d1:  ldfld      int32 Game.ComponentInventoryBase/Slot::Value
    IL_00d6:  bne.un.s   IL_00f5

    IL_00d8:  ldloc.0
    IL_00d9:  ldfld      int32 Game.CraftingRecipe::ResultCount
    IL_00de:  ldloc.s    V_5
    IL_00e0:  ldfld      int32 Game.ComponentInventoryBase/Slot::Count
    IL_00e5:  add
    IL_00e6:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00eb:  ldloc.s    V_6
    IL_00ed:  ldelem.ref
    IL_00ee:  ldfld      int32 Game.Block::MaxStacking
    IL_00f3:  ble.s      IL_00f7

    IL_00f5:  ldnull
    IL_00f6:  stloc.0
    IL_00f7:  ldloc.0
    IL_00f8:  brfalse    IL_017f

    IL_00fd:  ldloc.0
    IL_00fe:  ldfld      int32 Game.CraftingRecipe::RemainsValue
    IL_0103:  brfalse.s  IL_017f

    IL_0105:  ldloc.0
    IL_0106:  ldfld      int32 Game.CraftingRecipe::RemainsCount
    IL_010b:  ldc.i4.0
    IL_010c:  ble.s      IL_017f

    IL_010e:  ldarg.0
    IL_010f:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_0114:  ldarg.0
    IL_0115:  call       instance int32 Game.ComponentFurnace::get_RemainsSlotIndex()
    IL_011a:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Item(int32)
    IL_011f:  ldfld      int32 Game.ComponentInventoryBase/Slot::Count
    IL_0124:  brfalse.s  IL_0144

    IL_0126:  ldarg.0
    IL_0127:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_012c:  ldarg.0
    IL_012d:  call       instance int32 Game.ComponentFurnace::get_RemainsSlotIndex()
    IL_0132:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Item(int32)
    IL_0137:  ldfld      int32 Game.ComponentInventoryBase/Slot::Value
    IL_013c:  ldloc.0
    IL_013d:  ldfld      int32 Game.CraftingRecipe::RemainsValue
    IL_0142:  bne.un.s   IL_017d

    IL_0144:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0149:  ldloc.0
    IL_014a:  ldfld      int32 Game.CraftingRecipe::RemainsValue
    IL_014f:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0154:  ldelem.ref
    IL_0155:  ldfld      int32 Game.Block::MaxStacking
    IL_015a:  ldarg.0
    IL_015b:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_0160:  ldarg.0
    IL_0161:  call       instance int32 Game.ComponentFurnace::get_RemainsSlotIndex()
    IL_0166:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Item(int32)
    IL_016b:  ldfld      int32 Game.ComponentInventoryBase/Slot::Count
    IL_0170:  sub
    IL_0171:  ldloc.0
    IL_0172:  ldfld      int32 Game.CraftingRecipe::RemainsCount
    IL_0177:  bge.s      IL_017f

    IL_0179:  ldnull
    IL_017a:  stloc.0
    IL_017b:  br.s       IL_017f

    IL_017d:  ldnull
    IL_017e:  stloc.0
    IL_017f:  ldloc.0
    IL_0180:  ret

    IL_0181:  ldnull
    IL_0182:  ret
  } // end of method ComponentFurnace::FindSmeltingRecipe

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   9
    IL_0003:  newarr     [System.Runtime]System.String
    IL_0008:  stfld      string[] Game.ComponentFurnace::m_matchedIngredients
    IL_000d:  ldarg.0
    IL_000e:  call       instance void Game.ComponentInventoryBase::.ctor()
    IL_0013:  ret
  } // end of method ComponentFurnace::.ctor

  .property instance int32 RemainsSlotIndex()
  {
    .get instance int32 Game.ComponentFurnace::get_RemainsSlotIndex()
  } // end of property ComponentFurnace::RemainsSlotIndex
  .property instance int32 ResultSlotIndex()
  {
    .get instance int32 Game.ComponentFurnace::get_ResultSlotIndex()
  } // end of property ComponentFurnace::ResultSlotIndex
  .property instance int32 FuelSlotIndex()
  {
    .get instance int32 Game.ComponentFurnace::get_FuelSlotIndex()
  } // end of property ComponentFurnace::FuelSlotIndex
  .property instance float32 HeatLevel()
  {
    .get instance float32 Game.ComponentFurnace::get_HeatLevel()
  } // end of property ComponentFurnace::HeatLevel
  .property instance float32 SmeltingProgress()
  {
    .get instance float32 Game.ComponentFurnace::get_SmeltingProgress()
  } // end of property ComponentFurnace::SmeltingProgress
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentFurnace::get_UpdateOrder()
  } // end of property ComponentFurnace::UpdateOrder
} // end of class Game.ComponentFurnace