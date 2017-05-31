.class public auto ansi beforefieldinit Game.SubsystemBucketBlockBehavior
       extends Game.SubsystemBlockBehavior
{
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.SubsystemParticles m_subsystemParticles
  .field private class Game.Random m_random
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldc.i4.6
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=24' '<PrivateImplementationDetails>'::'0E1FEA5F61A3EFA57BFCEDE7BCDD2C60420E3A16'
    IL_000c:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0011:  ret
  } // end of method SubsystemBucketBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance bool 
          OnUse(valuetype [Engine]Engine.Vector3 start,
                valuetype [Engine]Engine.Vector3 direction,
                class Game.ComponentMiner componentMiner) cil managed
  {
    // 代码大小       1196 (0x4ac)
    .maxstack  8
    .locals init (class Game.IInventory V_0,
             int32 V_1,
             int32 V_2,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult> V_3,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_4,
             valuetype Game.CellFace V_5,
             int32 V_6,
             int32 V_7,
             class Game.Block V_8,
             int32 V_9,
             int32 V_10,
             class Game.ComponentUdder V_11,
             int32 V_12,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_13,
             int32 V_14,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_15,
             int32 V_16,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_17,
             valuetype Game.CellFace V_18,
             int32 V_19,
             int32 V_20,
             valuetype [System.Runtime]System.Nullable`1<int32> V_21,
             class Game.Block V_22,
             valuetype [System.Runtime]System.Nullable`1<int32> V_23,
             valuetype [Engine]Engine.Vector3 V_24,
             valuetype [Engine]Engine.Vector3 V_25,
             int32 V_26,
             valuetype Game.TerrainRaycastResult V_27)
    IL_0000:  ldarg.3
    IL_0001:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0006:  stloc.0
    IL_0007:  ldarg.3
    IL_0008:  callvirt   instance int32 Game.ComponentMiner::get_ActiveBlockValue()
    IL_000d:  stloc.1
    IL_000e:  ldloc.1
    IL_000f:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0014:  stloc.2
    IL_0015:  ldloc.2
    IL_0016:  ldc.i4.s   90
    IL_0018:  bne.un     IL_0239

    IL_001d:  ldarg.3
    IL_001e:  ldarg.1
    IL_001f:  ldarg.2
    IL_0020:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult> Game.ComponentMiner::PickBody(valuetype [Engine]Engine.Vector3,
                                                                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0025:  stloc.3
    IL_0026:  ldarg.3
    IL_0027:  ldarg.1
    IL_0028:  ldarg.2
    IL_0029:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.ComponentMiner::PickTerrainForGathering(valuetype [Engine]Engine.Vector3,
                                                                                                                                                                valuetype [Engine]Engine.Vector3)
    IL_002e:  stloc.s    V_4
    IL_0030:  ldloca.s   V_4
    IL_0032:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_0037:  brfalse    IL_01a4

    IL_003c:  ldloca.s   V_3
    IL_003e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_HasValue()
    IL_0043:  brfalse.s  IL_0062

    IL_0045:  ldloca.s   V_4
    IL_0047:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_004c:  ldfld      float32 Game.TerrainRaycastResult::Distance
    IL_0051:  ldloca.s   V_3
    IL_0053:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_Value()
    IL_0058:  ldfld      float32 Game.BodyRaycastResult::Distance
    IL_005d:  bge.un     IL_01a4

    IL_0062:  ldloca.s   V_4
    IL_0064:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0069:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_006e:  stloc.s    V_5
    IL_0070:  ldarg.0
    IL_0071:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0076:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_007b:  ldloc.s    V_5
    IL_007d:  ldfld      int32 Game.CellFace::X
    IL_0082:  ldloc.s    V_5
    IL_0084:  ldfld      int32 Game.CellFace::Y
    IL_0089:  ldloc.s    V_5
    IL_008b:  ldfld      int32 Game.CellFace::Z
    IL_0090:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0095:  dup
    IL_0096:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_009b:  stloc.s    V_6
    IL_009d:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_00a2:  stloc.s    V_7
    IL_00a4:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00a9:  ldloc.s    V_6
    IL_00ab:  ldelem.ref
    IL_00ac:  stloc.s    V_8
    IL_00ae:  ldloc.s    V_8
    IL_00b0:  isinst     Game.WaterBlock
    IL_00b5:  brfalse.s  IL_0126

    IL_00b7:  ldloc.s    V_7
    IL_00b9:  call       int32 Game.FluidBlock::GetLevel(int32)
    IL_00be:  brtrue.s   IL_0126

    IL_00c0:  ldloc.1
    IL_00c1:  ldc.i4.s   91
    IL_00c3:  call       int32 Game.TerrainData::ReplaceContents(int32,
                                                                 int32)
    IL_00c8:  stloc.s    V_9
    IL_00ca:  ldloc.0
    IL_00cb:  ldloc.0
    IL_00cc:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_00d1:  ldloc.0
    IL_00d2:  ldloc.0
    IL_00d3:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_00d8:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_00dd:  callvirt   instance int32 Game.IInventory::RemoveSlotItems(int32,
                                                                         int32)
    IL_00e2:  pop
    IL_00e3:  ldloc.0
    IL_00e4:  ldloc.0
    IL_00e5:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_00ea:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_00ef:  brtrue.s   IL_0100

    IL_00f1:  ldloc.0
    IL_00f2:  ldloc.0
    IL_00f3:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_00f8:  ldloc.s    V_9
    IL_00fa:  ldc.i4.1
    IL_00fb:  callvirt   instance void Game.IInventory::AddSlotItems(int32,
                                                                     int32,
                                                                     int32)
    IL_0100:  ldarg.0
    IL_0101:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0106:  ldc.i4.0
    IL_0107:  ldloc.s    V_5
    IL_0109:  ldfld      int32 Game.CellFace::X
    IL_010e:  ldloc.s    V_5
    IL_0110:  ldfld      int32 Game.CellFace::Y
    IL_0115:  ldloc.s    V_5
    IL_0117:  ldfld      int32 Game.CellFace::Z
    IL_011c:  ldc.i4.0
    IL_011d:  ldc.i4.0
    IL_011e:  ldc.i4.0
    IL_011f:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_0124:  ldc.i4.1
    IL_0125:  ret

    IL_0126:  ldloc.s    V_8
    IL_0128:  isinst     Game.MagmaBlock
    IL_012d:  brfalse    IL_0239

    IL_0132:  ldloc.s    V_7
    IL_0134:  call       int32 Game.FluidBlock::GetLevel(int32)
    IL_0139:  brtrue     IL_0239

    IL_013e:  ldloc.1
    IL_013f:  ldc.i4.s   93
    IL_0141:  call       int32 Game.TerrainData::ReplaceContents(int32,
                                                                 int32)
    IL_0146:  stloc.s    V_10
    IL_0148:  ldloc.0
    IL_0149:  ldloc.0
    IL_014a:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_014f:  ldloc.0
    IL_0150:  ldloc.0
    IL_0151:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_0156:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_015b:  callvirt   instance int32 Game.IInventory::RemoveSlotItems(int32,
                                                                         int32)
    IL_0160:  pop
    IL_0161:  ldloc.0
    IL_0162:  ldloc.0
    IL_0163:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_0168:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_016d:  brtrue.s   IL_017e

    IL_016f:  ldloc.0
    IL_0170:  ldloc.0
    IL_0171:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_0176:  ldloc.s    V_10
    IL_0178:  ldc.i4.1
    IL_0179:  callvirt   instance void Game.IInventory::AddSlotItems(int32,
                                                                     int32,
                                                                     int32)
    IL_017e:  ldarg.0
    IL_017f:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0184:  ldc.i4.0
    IL_0185:  ldloc.s    V_5
    IL_0187:  ldfld      int32 Game.CellFace::X
    IL_018c:  ldloc.s    V_5
    IL_018e:  ldfld      int32 Game.CellFace::Y
    IL_0193:  ldloc.s    V_5
    IL_0195:  ldfld      int32 Game.CellFace::Z
    IL_019a:  ldc.i4.0
    IL_019b:  ldc.i4.0
    IL_019c:  ldc.i4.0
    IL_019d:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_01a2:  ldc.i4.1
    IL_01a3:  ret

    IL_01a4:  ldloca.s   V_3
    IL_01a6:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_HasValue()
    IL_01ab:  brfalse    IL_0239

    IL_01b0:  ldloca.s   V_3
    IL_01b2:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_Value()
    IL_01b7:  ldfld      class Game.ComponentBody Game.BodyRaycastResult::ComponentBody
    IL_01bc:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_01c1:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentUdder>()
    IL_01c6:  stloc.s    V_11
    IL_01c8:  ldloc.s    V_11
    IL_01ca:  brfalse.s  IL_0237

    IL_01cc:  ldloc.s    V_11
    IL_01ce:  ldarg.3
    IL_01cf:  callvirt   instance bool Game.ComponentUdder::Milk(class Game.ComponentMiner)
    IL_01d4:  brfalse.s  IL_0237

    IL_01d6:  ldloc.1
    IL_01d7:  ldc.i4.s   110
    IL_01d9:  call       int32 Game.TerrainData::ReplaceContents(int32,
                                                                 int32)
    IL_01de:  stloc.s    V_12
    IL_01e0:  ldloc.0
    IL_01e1:  ldloc.0
    IL_01e2:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_01e7:  ldloc.0
    IL_01e8:  ldloc.0
    IL_01e9:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_01ee:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_01f3:  callvirt   instance int32 Game.IInventory::RemoveSlotItems(int32,
                                                                         int32)
    IL_01f8:  pop
    IL_01f9:  ldloc.0
    IL_01fa:  ldloc.0
    IL_01fb:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_0200:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_0205:  brtrue.s   IL_0216

    IL_0207:  ldloc.0
    IL_0208:  ldloc.0
    IL_0209:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_020e:  ldloc.s    V_12
    IL_0210:  ldc.i4.1
    IL_0211:  callvirt   instance void Game.IInventory::AddSlotItems(int32,
                                                                     int32,
                                                                     int32)
    IL_0216:  ldarg.0
    IL_0217:  ldfld      class Game.SubsystemAudio Game.SubsystemBucketBlockBehavior::m_subsystemAudio
    IL_021c:  ldstr      "Audio/Milked"
    IL_0221:  ldc.r4     1.
    IL_0226:  ldc.r4     0.0
    IL_022b:  ldarg.1
    IL_022c:  ldc.r4     2.
    IL_0231:  ldc.i4.1
    IL_0232:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_0237:  ldc.i4.1
    IL_0238:  ret

    IL_0239:  ldloc.2
    IL_023a:  ldc.i4.s   91
    IL_023c:  bne.un.s   IL_029e

    IL_023e:  ldarg.3
    IL_023f:  ldarg.1
    IL_0240:  ldarg.2
    IL_0241:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.ComponentMiner::PickTerrainForInteraction(valuetype [Engine]Engine.Vector3,
                                                                                                                                                                  valuetype [Engine]Engine.Vector3)
    IL_0246:  stloc.s    V_13
    IL_0248:  ldloca.s   V_13
    IL_024a:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_024f:  brfalse.s  IL_029e

    IL_0251:  ldarg.3
    IL_0252:  ldloca.s   V_13
    IL_0254:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0259:  ldc.i4.s   18
    IL_025b:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_0260:  callvirt   instance bool Game.ComponentMiner::Place(valuetype Game.TerrainRaycastResult,
                                                                  int32)
    IL_0265:  brfalse.s  IL_029e

    IL_0267:  ldloc.0
    IL_0268:  ldloc.0
    IL_0269:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_026e:  ldc.i4.1
    IL_026f:  callvirt   instance int32 Game.IInventory::RemoveSlotItems(int32,
                                                                         int32)
    IL_0274:  pop
    IL_0275:  ldloc.0
    IL_0276:  ldloc.0
    IL_0277:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_027c:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_0281:  brtrue.s   IL_029c

    IL_0283:  ldloc.1
    IL_0284:  ldc.i4.s   90
    IL_0286:  call       int32 Game.TerrainData::ReplaceContents(int32,
                                                                 int32)
    IL_028b:  stloc.s    V_14
    IL_028d:  ldloc.0
    IL_028e:  ldloc.0
    IL_028f:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_0294:  ldloc.s    V_14
    IL_0296:  ldc.i4.1
    IL_0297:  callvirt   instance void Game.IInventory::AddSlotItems(int32,
                                                                     int32,
                                                                     int32)
    IL_029c:  ldc.i4.1
    IL_029d:  ret

    IL_029e:  ldloc.2
    IL_029f:  ldc.i4.s   93
    IL_02a1:  bne.un.s   IL_0303

    IL_02a3:  ldarg.3
    IL_02a4:  ldarg.1
    IL_02a5:  ldarg.2
    IL_02a6:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.ComponentMiner::PickTerrainForInteraction(valuetype [Engine]Engine.Vector3,
                                                                                                                                                                  valuetype [Engine]Engine.Vector3)
    IL_02ab:  stloc.s    V_15
    IL_02ad:  ldloca.s   V_15
    IL_02af:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_02b4:  brfalse.s  IL_0303

    IL_02b6:  ldarg.3
    IL_02b7:  ldloca.s   V_15
    IL_02b9:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_02be:  ldc.i4.s   92
    IL_02c0:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_02c5:  callvirt   instance bool Game.ComponentMiner::Place(valuetype Game.TerrainRaycastResult,
                                                                  int32)
    IL_02ca:  brfalse.s  IL_0301

    IL_02cc:  ldloc.0
    IL_02cd:  ldloc.0
    IL_02ce:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_02d3:  ldc.i4.1
    IL_02d4:  callvirt   instance int32 Game.IInventory::RemoveSlotItems(int32,
                                                                         int32)
    IL_02d9:  pop
    IL_02da:  ldloc.0
    IL_02db:  ldloc.0
    IL_02dc:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_02e1:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_02e6:  brtrue.s   IL_0301

    IL_02e8:  ldloc.1
    IL_02e9:  ldc.i4.s   90
    IL_02eb:  call       int32 Game.TerrainData::ReplaceContents(int32,
                                                                 int32)
    IL_02f0:  stloc.s    V_16
    IL_02f2:  ldloc.0
    IL_02f3:  ldloc.0
    IL_02f4:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_02f9:  ldloc.s    V_16
    IL_02fb:  ldc.i4.1
    IL_02fc:  callvirt   instance void Game.IInventory::AddSlotItems(int32,
                                                                     int32,
                                                                     int32)
    IL_0301:  ldc.i4.1
    IL_0302:  ret

    IL_0303:  ldloc.2
    IL_0304:  ldc.i4.s   110
    IL_0306:  bne.un.s   IL_030a

    IL_0308:  ldc.i4.1
    IL_0309:  ret

    IL_030a:  ldloc.2
    IL_030b:  ldc.i4     0x81
    IL_0310:  beq.s      IL_031d

    IL_0312:  ldloc.2
    IL_0313:  ldc.i4     0x80
    IL_0318:  bne.un     IL_04aa

    IL_031d:  ldarg.3
    IL_031e:  ldarg.1
    IL_031f:  ldarg.2
    IL_0320:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.ComponentMiner::PickTerrainForDigging(valuetype [Engine]Engine.Vector3,
                                                                                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0325:  stloc.s    V_17
    IL_0327:  ldloca.s   V_17
    IL_0329:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_032e:  brfalse    IL_04aa

    IL_0333:  ldloca.s   V_17
    IL_0335:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_033a:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_033f:  stloc.s    V_18
    IL_0341:  ldarg.0
    IL_0342:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0347:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_034c:  ldloc.s    V_18
    IL_034e:  ldfld      int32 Game.CellFace::X
    IL_0353:  ldloc.s    V_18
    IL_0355:  ldfld      int32 Game.CellFace::Y
    IL_035a:  ldloc.s    V_18
    IL_035c:  ldfld      int32 Game.CellFace::Z
    IL_0361:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0366:  stloc.s    V_19
    IL_0368:  ldloc.s    V_19
    IL_036a:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_036f:  stloc.s    V_20
    IL_0371:  ldloc.2
    IL_0372:  ldc.i4     0x80
    IL_0377:  beq.s      IL_038b

    IL_0379:  ldloc.1
    IL_037a:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_037f:  call       int32 Game.PaintBucketBlock::GetColor(int32)
    IL_0384:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0389:  br.s       IL_0395

    IL_038b:  ldloca.s   V_23
    IL_038d:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_0393:  ldloc.s    V_23
    IL_0395:  stloc.s    V_21
    IL_0397:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_039c:  ldloc.s    V_20
    IL_039e:  ldelem.ref
    IL_039f:  stloc.s    V_22
    IL_03a1:  ldloc.s    V_22
    IL_03a3:  isinst     Game.IPaintableBlock
    IL_03a8:  brfalse    IL_04a8

    IL_03ad:  ldloca.s   V_17
    IL_03af:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_03b4:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_03b9:  ldfld      int32 Game.CellFace::Face
    IL_03be:  call       valuetype [Engine]Engine.Vector3 Game.CellFace::FaceToVector3(int32)
    IL_03c3:  stloc.s    V_24
    IL_03c5:  ldloca.s   V_17
    IL_03c7:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_03cc:  stloc.s    V_27
    IL_03ce:  ldloca.s   V_27
    IL_03d0:  call       instance valuetype [Engine]Engine.Vector3 Game.TerrainRaycastResult::HitPoint()
    IL_03d5:  stloc.s    V_25
    IL_03d7:  ldloc.s    V_22
    IL_03d9:  castclass  Game.IPaintableBlock
    IL_03de:  ldarg.0
    IL_03df:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_03e4:  ldloc.s    V_19
    IL_03e6:  ldloc.s    V_21
    IL_03e8:  callvirt   instance int32 Game.IPaintableBlock::Paint(class Game.SubsystemTerrain,
                                                                    int32,
                                                                    valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_03ed:  stloc.s    V_26
    IL_03ef:  ldarg.0
    IL_03f0:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_03f5:  ldloc.s    V_18
    IL_03f7:  ldfld      int32 Game.CellFace::X
    IL_03fc:  ldloc.s    V_18
    IL_03fe:  ldfld      int32 Game.CellFace::Y
    IL_0403:  ldloc.s    V_18
    IL_0405:  ldfld      int32 Game.CellFace::Z
    IL_040a:  ldloc.s    V_26
    IL_040c:  ldc.i4.1
    IL_040d:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_0412:  ldarg.3
    IL_0413:  ldc.i4.1
    IL_0414:  callvirt   instance void Game.ComponentMiner::DamageActiveTool(int32)
    IL_0419:  ldarg.0
    IL_041a:  ldfld      class Game.SubsystemAudio Game.SubsystemBucketBlockBehavior::m_subsystemAudio
    IL_041f:  ldstr      "Audio/Paint"
    IL_0424:  ldc.r4     0.40000001
    IL_0429:  ldarg.0
    IL_042a:  ldfld      class Game.Random Game.SubsystemBucketBlockBehavior::m_random
    IL_042f:  ldc.r4     -0.1
    IL_0434:  ldc.r4     0.1
    IL_0439:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_043e:  ldarg.3
    IL_043f:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0444:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0449:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_044e:  ldc.r4     2.
    IL_0453:  ldc.i4.1
    IL_0454:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            bool)
    IL_0459:  ldarg.0
    IL_045a:  ldfld      class Game.SubsystemParticles Game.SubsystemBucketBlockBehavior::m_subsystemParticles
    IL_045f:  ldarg.0
    IL_0460:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0465:  ldloc.s    V_25
    IL_0467:  ldloc.s    V_24
    IL_0469:  ldloca.s   V_21
    IL_046b:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0470:  brtrue.s   IL_048d

    IL_0472:  ldc.i4     0x80
    IL_0477:  ldc.i4     0x80
    IL_047c:  ldc.i4     0x80
    IL_0481:  ldc.i4     0x80
    IL_0486:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32,
                                                                   int32)
    IL_048b:  br.s       IL_049e

    IL_048d:  ldsfld     valuetype [Engine]Engine.Color[] Game.PaintBucketBlock::PaintColors
    IL_0492:  ldloca.s   V_21
    IL_0494:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0499:  ldelem     [Engine]Engine.Color
    IL_049e:  newobj     instance void Game.PaintParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                       valuetype [Engine]Engine.Vector3,
                                                                       valuetype [Engine]Engine.Vector3,
                                                                       valuetype [Engine]Engine.Color)
    IL_04a3:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
    IL_04a8:  ldc.i4.1
    IL_04a9:  ret

    IL_04aa:  ldc.i4.0
    IL_04ab:  ret
  } // end of method SubsystemBucketBlockBehavior::OnUse

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       44 (0x2c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0014:  stfld      class Game.SubsystemAudio Game.SubsystemBucketBlockBehavior::m_subsystemAudio
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0020:  ldc.i4.1
    IL_0021:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemParticles>(bool)
    IL_0026:  stfld      class Game.SubsystemParticles Game.SubsystemBucketBlockBehavior::m_subsystemParticles
    IL_002b:  ret
  } // end of method SubsystemBucketBlockBehavior::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.SubsystemBucketBlockBehavior::m_random
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0011:  ret
  } // end of method SubsystemBucketBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemBucketBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemBucketBlockBehavior::HandledBlocks
} // end of class Game.SubsystemBucketBlockBehavior