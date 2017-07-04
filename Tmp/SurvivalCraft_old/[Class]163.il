.class public auto ansi beforefieldinit Game.FireBlock
       extends Game.Block
{
  .field public static literal int32 Index = int32(0x00000068)
  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       2194 (0x892)
    .maxstack  11
    .locals init (class Game.TerrainGeometrySubset[] V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_10,
             int32 V_11,
             int32 V_12,
             int32 V_13,
             int32 V_14,
             int32 V_15,
             int32 V_16,
             class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_17,
             int32 V_18,
             int32 V_19,
             int32 V_20,
             int32 V_21,
             int32 V_22,
             int32 V_23,
             class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_24,
             int32 V_25,
             int32 V_26,
             int32 V_27,
             int32 V_28,
             int32 V_29,
             int32 V_30,
             class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_31,
             int32 V_32)
    IL_0000:  ldarg.2
    IL_0001:  ldfld      class Game.TerrainGeometrySubset[] Game.TerrainGeometrySubsets::AlphaTestSubsetsByFace
    IL_0006:  stloc.0
    IL_0007:  ldarg.3
    IL_0008:  call       int32 Game.Terrain::ExtractData(int32)
    IL_000d:  ldarg.s    y
    IL_000f:  ldc.i4.1
    IL_0010:  add
    IL_0011:  ldc.i4     0x80
    IL_0016:  blt.s      IL_001b

    IL_0018:  ldc.i4.0
    IL_0019:  br.s       IL_002e

    IL_001b:  ldarg.1
    IL_001c:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_0021:  ldarg.s    x
    IL_0023:  ldarg.s    y
    IL_0025:  ldc.i4.1
    IL_0026:  add
    IL_0027:  ldarg.s    z
    IL_0029:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_002e:  dup
    IL_002f:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0034:  stloc.1
    IL_0035:  call       int32 Game.Terrain::ExtractData(int32)
    IL_003a:  stloc.2
    IL_003b:  ldarg.s    y
    IL_003d:  ldc.i4.2
    IL_003e:  add
    IL_003f:  ldc.i4     0x80
    IL_0044:  blt.s      IL_0049

    IL_0046:  ldc.i4.0
    IL_0047:  br.s       IL_005c

    IL_0049:  ldarg.1
    IL_004a:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_004f:  ldarg.s    x
    IL_0051:  ldarg.s    y
    IL_0053:  ldc.i4.2
    IL_0054:  add
    IL_0055:  ldarg.s    z
    IL_0057:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_005c:  dup
    IL_005d:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0062:  stloc.3
    IL_0063:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0068:  stloc.s    V_4
    IL_006a:  dup
    IL_006b:  ldc.i4.0
    IL_006c:  call       bool Game.FireBlock::HasFireOnFace(int32,
                                                            int32)
    IL_0071:  brfalse    IL_0278

    IL_0076:  ldarg.s    y
    IL_0078:  ldc.i4.1
    IL_0079:  add
    IL_007a:  ldc.i4     0x80
    IL_007f:  blt.s      IL_0084

    IL_0081:  ldc.i4.0
    IL_0082:  br.s       IL_0099

    IL_0084:  ldarg.1
    IL_0085:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_008a:  ldarg.s    x
    IL_008c:  ldarg.s    y
    IL_008e:  ldc.i4.1
    IL_008f:  add
    IL_0090:  ldarg.s    z
    IL_0092:  ldc.i4.1
    IL_0093:  add
    IL_0094:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0099:  dup
    IL_009a:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_009f:  stloc.s    V_5
    IL_00a1:  call       int32 Game.Terrain::ExtractData(int32)
    IL_00a6:  stloc.s    V_6
    IL_00a8:  ldarg.s    y
    IL_00aa:  ldc.i4.2
    IL_00ab:  add
    IL_00ac:  ldc.i4     0x80
    IL_00b1:  blt.s      IL_00b6

    IL_00b3:  ldc.i4.0
    IL_00b4:  br.s       IL_00cb

    IL_00b6:  ldarg.1
    IL_00b7:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_00bc:  ldarg.s    x
    IL_00be:  ldarg.s    y
    IL_00c0:  ldc.i4.2
    IL_00c1:  add
    IL_00c2:  ldarg.s    z
    IL_00c4:  ldc.i4.1
    IL_00c5:  add
    IL_00c6:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_00cb:  dup
    IL_00cc:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_00d1:  stloc.s    V_7
    IL_00d3:  call       int32 Game.Terrain::ExtractData(int32)
    IL_00d8:  stloc.s    V_8
    IL_00da:  ldarg.0
    IL_00db:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_00e0:  stloc.s    V_9
    IL_00e2:  ldloc.1
    IL_00e3:  ldc.i4.s   104
    IL_00e5:  bne.un.s   IL_00f0

    IL_00e7:  ldloc.2
    IL_00e8:  ldc.i4.0
    IL_00e9:  call       bool Game.FireBlock::HasFireOnFace(int32,
                                                            int32)
    IL_00ee:  brtrue.s   IL_0100

    IL_00f0:  ldloc.s    V_5
    IL_00f2:  ldc.i4.s   104
    IL_00f4:  bne.un.s   IL_012d

    IL_00f6:  ldloc.s    V_6
    IL_00f8:  ldc.i4.2
    IL_00f9:  call       bool Game.FireBlock::HasFireOnFace(int32,
                                                            int32)
    IL_00fe:  brfalse.s  IL_012d

    IL_0100:  ldloc.s    V_9
    IL_0102:  ldc.i4.s   16
    IL_0104:  add
    IL_0105:  stloc.s    V_9
    IL_0107:  ldloc.3
    IL_0108:  ldc.i4.s   104
    IL_010a:  bne.un.s   IL_0116

    IL_010c:  ldloc.s    V_4
    IL_010e:  ldc.i4.0
    IL_010f:  call       bool Game.FireBlock::HasFireOnFace(int32,
                                                            int32)
    IL_0114:  brtrue.s   IL_0126

    IL_0116:  ldloc.s    V_7
    IL_0118:  ldc.i4.s   104
    IL_011a:  bne.un.s   IL_012d

    IL_011c:  ldloc.s    V_8
    IL_011e:  ldc.i4.2
    IL_011f:  call       bool Game.FireBlock::HasFireOnFace(int32,
                                                            int32)
    IL_0124:  brfalse.s  IL_012d

    IL_0126:  ldloc.s    V_9
    IL_0128:  ldc.i4.s   16
    IL_012a:  add
    IL_012b:  stloc.s    V_9
    IL_012d:  ldloc.0
    IL_012e:  ldc.i4.0
    IL_012f:  ldelem.ref
    IL_0130:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_0135:  stloc.s    V_10
    IL_0137:  ldloc.0
    IL_0138:  ldc.i4.0
    IL_0139:  ldelem.ref
    IL_013a:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_013f:  ldloc.s    V_10
    IL_0141:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0146:  stloc.s    V_11
    IL_0148:  ldloc.s    V_10
    IL_014a:  dup
    IL_014b:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0150:  ldc.i4.4
    IL_0151:  add
    IL_0152:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_0157:  ldarg.s    x
    IL_0159:  conv.r4
    IL_015a:  ldarg.s    y
    IL_015c:  conv.r4
    IL_015d:  ldarg.s    z
    IL_015f:  ldc.i4.1
    IL_0160:  add
    IL_0161:  conv.r4
    IL_0162:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0167:  ldloc.s    V_9
    IL_0169:  ldc.i4.0
    IL_016a:  ldloc.s    V_10
    IL_016c:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0171:  ldloc.s    V_11
    IL_0173:  ldelema    Game.TerrainVertex
    IL_0178:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_017d:  ldarg.s    x
    IL_017f:  ldc.i4.1
    IL_0180:  add
    IL_0181:  conv.r4
    IL_0182:  ldarg.s    y
    IL_0184:  conv.r4
    IL_0185:  ldarg.s    z
    IL_0187:  ldc.i4.1
    IL_0188:  add
    IL_0189:  conv.r4
    IL_018a:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_018f:  ldloc.s    V_9
    IL_0191:  ldc.i4.1
    IL_0192:  ldloc.s    V_10
    IL_0194:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0199:  ldloc.s    V_11
    IL_019b:  ldc.i4.1
    IL_019c:  add
    IL_019d:  ldelema    Game.TerrainVertex
    IL_01a2:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_01a7:  ldarg.s    x
    IL_01a9:  ldc.i4.1
    IL_01aa:  add
    IL_01ab:  conv.r4
    IL_01ac:  ldarg.s    y
    IL_01ae:  ldc.i4.1
    IL_01af:  add
    IL_01b0:  conv.r4
    IL_01b1:  ldarg.s    z
    IL_01b3:  ldc.i4.1
    IL_01b4:  add
    IL_01b5:  conv.r4
    IL_01b6:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_01bb:  ldloc.s    V_9
    IL_01bd:  ldc.i4.2
    IL_01be:  ldloc.s    V_10
    IL_01c0:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_01c5:  ldloc.s    V_11
    IL_01c7:  ldc.i4.2
    IL_01c8:  add
    IL_01c9:  ldelema    Game.TerrainVertex
    IL_01ce:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_01d3:  ldarg.s    x
    IL_01d5:  conv.r4
    IL_01d6:  ldarg.s    y
    IL_01d8:  ldc.i4.1
    IL_01d9:  add
    IL_01da:  conv.r4
    IL_01db:  ldarg.s    z
    IL_01dd:  ldc.i4.1
    IL_01de:  add
    IL_01df:  conv.r4
    IL_01e0:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_01e5:  ldloc.s    V_9
    IL_01e7:  ldc.i4.3
    IL_01e8:  ldloc.s    V_10
    IL_01ea:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_01ef:  ldloc.s    V_11
    IL_01f1:  ldc.i4.3
    IL_01f2:  add
    IL_01f3:  ldelema    Game.TerrainVertex
    IL_01f8:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_01fd:  dup
    IL_01fe:  ldloc.s    V_11
    IL_0200:  conv.u2
    IL_0201:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0206:  dup
    IL_0207:  ldloc.s    V_11
    IL_0209:  ldc.i4.1
    IL_020a:  add
    IL_020b:  conv.u2
    IL_020c:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0211:  dup
    IL_0212:  ldloc.s    V_11
    IL_0214:  ldc.i4.2
    IL_0215:  add
    IL_0216:  conv.u2
    IL_0217:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_021c:  dup
    IL_021d:  ldloc.s    V_11
    IL_021f:  ldc.i4.2
    IL_0220:  add
    IL_0221:  conv.u2
    IL_0222:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0227:  dup
    IL_0228:  ldloc.s    V_11
    IL_022a:  ldc.i4.1
    IL_022b:  add
    IL_022c:  conv.u2
    IL_022d:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0232:  dup
    IL_0233:  ldloc.s    V_11
    IL_0235:  conv.u2
    IL_0236:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_023b:  dup
    IL_023c:  ldloc.s    V_11
    IL_023e:  ldc.i4.2
    IL_023f:  add
    IL_0240:  conv.u2
    IL_0241:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0246:  dup
    IL_0247:  ldloc.s    V_11
    IL_0249:  ldc.i4.3
    IL_024a:  add
    IL_024b:  conv.u2
    IL_024c:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0251:  dup
    IL_0252:  ldloc.s    V_11
    IL_0254:  conv.u2
    IL_0255:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_025a:  dup
    IL_025b:  ldloc.s    V_11
    IL_025d:  conv.u2
    IL_025e:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0263:  dup
    IL_0264:  ldloc.s    V_11
    IL_0266:  ldc.i4.3
    IL_0267:  add
    IL_0268:  conv.u2
    IL_0269:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_026e:  ldloc.s    V_11
    IL_0270:  ldc.i4.2
    IL_0271:  add
    IL_0272:  conv.u2
    IL_0273:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0278:  dup
    IL_0279:  ldc.i4.1
    IL_027a:  call       bool Game.FireBlock::HasFireOnFace(int32,
                                                            int32)
    IL_027f:  brfalse    IL_0486

    IL_0284:  ldarg.s    y
    IL_0286:  ldc.i4.1
    IL_0287:  add
    IL_0288:  ldc.i4     0x80
    IL_028d:  blt.s      IL_0292

    IL_028f:  ldc.i4.0
    IL_0290:  br.s       IL_02a7

    IL_0292:  ldarg.1
    IL_0293:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_0298:  ldarg.s    x
    IL_029a:  ldc.i4.1
    IL_029b:  add
    IL_029c:  ldarg.s    y
    IL_029e:  ldc.i4.1
    IL_029f:  add
    IL_02a0:  ldarg.s    z
    IL_02a2:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_02a7:  dup
    IL_02a8:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_02ad:  stloc.s    V_12
    IL_02af:  call       int32 Game.Terrain::ExtractData(int32)
    IL_02b4:  stloc.s    V_13
    IL_02b6:  ldarg.s    y
    IL_02b8:  ldc.i4.2
    IL_02b9:  add
    IL_02ba:  ldc.i4     0x80
    IL_02bf:  blt.s      IL_02c4

    IL_02c1:  ldc.i4.0
    IL_02c2:  br.s       IL_02d9

    IL_02c4:  ldarg.1
    IL_02c5:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_02ca:  ldarg.s    x
    IL_02cc:  ldc.i4.1
    IL_02cd:  add
    IL_02ce:  ldarg.s    y
    IL_02d0:  ldc.i4.2
    IL_02d1:  add
    IL_02d2:  ldarg.s    z
    IL_02d4:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_02d9:  dup
    IL_02da:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_02df:  stloc.s    V_14
    IL_02e1:  call       int32 Game.Terrain::ExtractData(int32)
    IL_02e6:  stloc.s    V_15
    IL_02e8:  ldarg.0
    IL_02e9:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_02ee:  stloc.s    V_16
    IL_02f0:  ldloc.1
    IL_02f1:  ldc.i4.s   104
    IL_02f3:  bne.un.s   IL_02fe

    IL_02f5:  ldloc.2
    IL_02f6:  ldc.i4.1
    IL_02f7:  call       bool Game.FireBlock::HasFireOnFace(int32,
                                                            int32)
    IL_02fc:  brtrue.s   IL_030e

    IL_02fe:  ldloc.s    V_12
    IL_0300:  ldc.i4.s   104
    IL_0302:  bne.un.s   IL_033b

    IL_0304:  ldloc.s    V_13
    IL_0306:  ldc.i4.3
    IL_0307:  call       bool Game.FireBlock::HasFireOnFace(int32,
                                                            int32)
    IL_030c:  brfalse.s  IL_033b

    IL_030e:  ldloc.s    V_16
    IL_0310:  ldc.i4.s   16
    IL_0312:  add
    IL_0313:  stloc.s    V_16
    IL_0315:  ldloc.3
    IL_0316:  ldc.i4.s   104
    IL_0318:  bne.un.s   IL_0324

    IL_031a:  ldloc.s    V_4
    IL_031c:  ldc.i4.1
    IL_031d:  call       bool Game.FireBlock::HasFireOnFace(int32,
                                                            int32)
    IL_0322:  brtrue.s   IL_0334

    IL_0324:  ldloc.s    V_14
    IL_0326:  ldc.i4.s   104
    IL_0328:  bne.un.s   IL_033b

    IL_032a:  ldloc.s    V_15
    IL_032c:  ldc.i4.3
    IL_032d:  call       bool Game.FireBlock::HasFireOnFace(int32,
                                                            int32)
    IL_0332:  brfalse.s  IL_033b

    IL_0334:  ldloc.s    V_16
    IL_0336:  ldc.i4.s   16
    IL_0338:  add
    IL_0339:  stloc.s    V_16
    IL_033b:  ldloc.0
    IL_033c:  ldc.i4.1
    IL_033d:  ldelem.ref
    IL_033e:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_0343:  stloc.s    V_17
    IL_0345:  ldloc.0
    IL_0346:  ldc.i4.1
    IL_0347:  ldelem.ref
    IL_0348:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_034d:  ldloc.s    V_17
    IL_034f:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0354:  stloc.s    V_18
    IL_0356:  ldloc.s    V_17
    IL_0358:  dup
    IL_0359:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_035e:  ldc.i4.4
    IL_035f:  add
    IL_0360:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_0365:  ldarg.s    x
    IL_0367:  ldc.i4.1
    IL_0368:  add
    IL_0369:  conv.r4
    IL_036a:  ldarg.s    y
    IL_036c:  conv.r4
    IL_036d:  ldarg.s    z
    IL_036f:  conv.r4
    IL_0370:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0375:  ldloc.s    V_16
    IL_0377:  ldc.i4.0
    IL_0378:  ldloc.s    V_17
    IL_037a:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_037f:  ldloc.s    V_18
    IL_0381:  ldelema    Game.TerrainVertex
    IL_0386:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_038b:  ldarg.s    x
    IL_038d:  ldc.i4.1
    IL_038e:  add
    IL_038f:  conv.r4
    IL_0390:  ldarg.s    y
    IL_0392:  ldc.i4.1
    IL_0393:  add
    IL_0394:  conv.r4
    IL_0395:  ldarg.s    z
    IL_0397:  conv.r4
    IL_0398:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_039d:  ldloc.s    V_16
    IL_039f:  ldc.i4.3
    IL_03a0:  ldloc.s    V_17
    IL_03a2:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_03a7:  ldloc.s    V_18
    IL_03a9:  ldc.i4.1
    IL_03aa:  add
    IL_03ab:  ldelema    Game.TerrainVertex
    IL_03b0:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_03b5:  ldarg.s    x
    IL_03b7:  ldc.i4.1
    IL_03b8:  add
    IL_03b9:  conv.r4
    IL_03ba:  ldarg.s    y
    IL_03bc:  ldc.i4.1
    IL_03bd:  add
    IL_03be:  conv.r4
    IL_03bf:  ldarg.s    z
    IL_03c1:  ldc.i4.1
    IL_03c2:  add
    IL_03c3:  conv.r4
    IL_03c4:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_03c9:  ldloc.s    V_16
    IL_03cb:  ldc.i4.2
    IL_03cc:  ldloc.s    V_17
    IL_03ce:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_03d3:  ldloc.s    V_18
    IL_03d5:  ldc.i4.2
    IL_03d6:  add
    IL_03d7:  ldelema    Game.TerrainVertex
    IL_03dc:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_03e1:  ldarg.s    x
    IL_03e3:  ldc.i4.1
    IL_03e4:  add
    IL_03e5:  conv.r4
    IL_03e6:  ldarg.s    y
    IL_03e8:  conv.r4
    IL_03e9:  ldarg.s    z
    IL_03eb:  ldc.i4.1
    IL_03ec:  add
    IL_03ed:  conv.r4
    IL_03ee:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_03f3:  ldloc.s    V_16
    IL_03f5:  ldc.i4.1
    IL_03f6:  ldloc.s    V_17
    IL_03f8:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_03fd:  ldloc.s    V_18
    IL_03ff:  ldc.i4.3
    IL_0400:  add
    IL_0401:  ldelema    Game.TerrainVertex
    IL_0406:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_040b:  dup
    IL_040c:  ldloc.s    V_18
    IL_040e:  conv.u2
    IL_040f:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0414:  dup
    IL_0415:  ldloc.s    V_18
    IL_0417:  ldc.i4.1
    IL_0418:  add
    IL_0419:  conv.u2
    IL_041a:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_041f:  dup
    IL_0420:  ldloc.s    V_18
    IL_0422:  ldc.i4.2
    IL_0423:  add
    IL_0424:  conv.u2
    IL_0425:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_042a:  dup
    IL_042b:  ldloc.s    V_18
    IL_042d:  ldc.i4.2
    IL_042e:  add
    IL_042f:  conv.u2
    IL_0430:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0435:  dup
    IL_0436:  ldloc.s    V_18
    IL_0438:  ldc.i4.1
    IL_0439:  add
    IL_043a:  conv.u2
    IL_043b:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0440:  dup
    IL_0441:  ldloc.s    V_18
    IL_0443:  conv.u2
    IL_0444:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0449:  dup
    IL_044a:  ldloc.s    V_18
    IL_044c:  ldc.i4.2
    IL_044d:  add
    IL_044e:  conv.u2
    IL_044f:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0454:  dup
    IL_0455:  ldloc.s    V_18
    IL_0457:  ldc.i4.3
    IL_0458:  add
    IL_0459:  conv.u2
    IL_045a:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_045f:  dup
    IL_0460:  ldloc.s    V_18
    IL_0462:  conv.u2
    IL_0463:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0468:  dup
    IL_0469:  ldloc.s    V_18
    IL_046b:  conv.u2
    IL_046c:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0471:  dup
    IL_0472:  ldloc.s    V_18
    IL_0474:  ldc.i4.3
    IL_0475:  add
    IL_0476:  conv.u2
    IL_0477:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_047c:  ldloc.s    V_18
    IL_047e:  ldc.i4.2
    IL_047f:  add
    IL_0480:  conv.u2
    IL_0481:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0486:  dup
    IL_0487:  ldc.i4.2
    IL_0488:  call       bool Game.FireBlock::HasFireOnFace(int32,
                                                            int32)
    IL_048d:  brfalse    IL_068c

    IL_0492:  ldarg.s    y
    IL_0494:  ldc.i4.1
    IL_0495:  add
    IL_0496:  ldc.i4     0x80
    IL_049b:  blt.s      IL_04a0

    IL_049d:  ldc.i4.0
    IL_049e:  br.s       IL_04b5

    IL_04a0:  ldarg.1
    IL_04a1:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_04a6:  ldarg.s    x
    IL_04a8:  ldarg.s    y
    IL_04aa:  ldc.i4.1
    IL_04ab:  add
    IL_04ac:  ldarg.s    z
    IL_04ae:  ldc.i4.1
    IL_04af:  sub
    IL_04b0:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_04b5:  dup
    IL_04b6:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_04bb:  stloc.s    V_19
    IL_04bd:  call       int32 Game.Terrain::ExtractData(int32)
    IL_04c2:  stloc.s    V_20
    IL_04c4:  ldarg.s    y
    IL_04c6:  ldc.i4.2
    IL_04c7:  add
    IL_04c8:  ldc.i4     0x80
    IL_04cd:  blt.s      IL_04d2

    IL_04cf:  ldc.i4.0
    IL_04d0:  br.s       IL_04e7

    IL_04d2:  ldarg.1
    IL_04d3:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_04d8:  ldarg.s    x
    IL_04da:  ldarg.s    y
    IL_04dc:  ldc.i4.2
    IL_04dd:  add
    IL_04de:  ldarg.s    z
    IL_04e0:  ldc.i4.1
    IL_04e1:  sub
    IL_04e2:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_04e7:  dup
    IL_04e8:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_04ed:  stloc.s    V_21
    IL_04ef:  call       int32 Game.Terrain::ExtractData(int32)
    IL_04f4:  stloc.s    V_22
    IL_04f6:  ldarg.0
    IL_04f7:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_04fc:  stloc.s    V_23
    IL_04fe:  ldloc.1
    IL_04ff:  ldc.i4.s   104
    IL_0501:  bne.un.s   IL_050c

    IL_0503:  ldloc.2
    IL_0504:  ldc.i4.2
    IL_0505:  call       bool Game.FireBlock::HasFireOnFace(int32,
                                                            int32)
    IL_050a:  brtrue.s   IL_051c

    IL_050c:  ldloc.s    V_19
    IL_050e:  ldc.i4.s   104
    IL_0510:  bne.un.s   IL_0549

    IL_0512:  ldloc.s    V_20
    IL_0514:  ldc.i4.0
    IL_0515:  call       bool Game.FireBlock::HasFireOnFace(int32,
                                                            int32)
    IL_051a:  brfalse.s  IL_0549

    IL_051c:  ldloc.s    V_23
    IL_051e:  ldc.i4.s   16
    IL_0520:  add
    IL_0521:  stloc.s    V_23
    IL_0523:  ldloc.3
    IL_0524:  ldc.i4.s   104
    IL_0526:  bne.un.s   IL_0532

    IL_0528:  ldloc.s    V_4
    IL_052a:  ldc.i4.2
    IL_052b:  call       bool Game.FireBlock::HasFireOnFace(int32,
                                                            int32)
    IL_0530:  brtrue.s   IL_0542

    IL_0532:  ldloc.s    V_21
    IL_0534:  ldc.i4.s   104
    IL_0536:  bne.un.s   IL_0549

    IL_0538:  ldloc.s    V_22
    IL_053a:  ldc.i4.0
    IL_053b:  call       bool Game.FireBlock::HasFireOnFace(int32,
                                                            int32)
    IL_0540:  brfalse.s  IL_0549

    IL_0542:  ldloc.s    V_23
    IL_0544:  ldc.i4.s   16
    IL_0546:  add
    IL_0547:  stloc.s    V_23
    IL_0549:  ldloc.0
    IL_054a:  ldc.i4.2
    IL_054b:  ldelem.ref
    IL_054c:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_0551:  stloc.s    V_24
    IL_0553:  ldloc.0
    IL_0554:  ldc.i4.2
    IL_0555:  ldelem.ref
    IL_0556:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_055b:  ldloc.s    V_24
    IL_055d:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0562:  stloc.s    V_25
    IL_0564:  ldloc.s    V_24
    IL_0566:  dup
    IL_0567:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_056c:  ldc.i4.4
    IL_056d:  add
    IL_056e:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_0573:  ldarg.s    x
    IL_0575:  conv.r4
    IL_0576:  ldarg.s    y
    IL_0578:  conv.r4
    IL_0579:  ldarg.s    z
    IL_057b:  conv.r4
    IL_057c:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0581:  ldloc.s    V_23
    IL_0583:  ldc.i4.0
    IL_0584:  ldloc.s    V_24
    IL_0586:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_058b:  ldloc.s    V_25
    IL_058d:  ldelema    Game.TerrainVertex
    IL_0592:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_0597:  ldarg.s    x
    IL_0599:  ldc.i4.1
    IL_059a:  add
    IL_059b:  conv.r4
    IL_059c:  ldarg.s    y
    IL_059e:  conv.r4
    IL_059f:  ldarg.s    z
    IL_05a1:  conv.r4
    IL_05a2:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_05a7:  ldloc.s    V_23
    IL_05a9:  ldc.i4.1
    IL_05aa:  ldloc.s    V_24
    IL_05ac:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_05b1:  ldloc.s    V_25
    IL_05b3:  ldc.i4.1
    IL_05b4:  add
    IL_05b5:  ldelema    Game.TerrainVertex
    IL_05ba:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_05bf:  ldarg.s    x
    IL_05c1:  ldc.i4.1
    IL_05c2:  add
    IL_05c3:  conv.r4
    IL_05c4:  ldarg.s    y
    IL_05c6:  ldc.i4.1
    IL_05c7:  add
    IL_05c8:  conv.r4
    IL_05c9:  ldarg.s    z
    IL_05cb:  conv.r4
    IL_05cc:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_05d1:  ldloc.s    V_23
    IL_05d3:  ldc.i4.2
    IL_05d4:  ldloc.s    V_24
    IL_05d6:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_05db:  ldloc.s    V_25
    IL_05dd:  ldc.i4.2
    IL_05de:  add
    IL_05df:  ldelema    Game.TerrainVertex
    IL_05e4:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_05e9:  ldarg.s    x
    IL_05eb:  conv.r4
    IL_05ec:  ldarg.s    y
    IL_05ee:  ldc.i4.1
    IL_05ef:  add
    IL_05f0:  conv.r4
    IL_05f1:  ldarg.s    z
    IL_05f3:  conv.r4
    IL_05f4:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_05f9:  ldloc.s    V_23
    IL_05fb:  ldc.i4.3
    IL_05fc:  ldloc.s    V_24
    IL_05fe:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0603:  ldloc.s    V_25
    IL_0605:  ldc.i4.3
    IL_0606:  add
    IL_0607:  ldelema    Game.TerrainVertex
    IL_060c:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_0611:  dup
    IL_0612:  ldloc.s    V_25
    IL_0614:  conv.u2
    IL_0615:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_061a:  dup
    IL_061b:  ldloc.s    V_25
    IL_061d:  ldc.i4.2
    IL_061e:  add
    IL_061f:  conv.u2
    IL_0620:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0625:  dup
    IL_0626:  ldloc.s    V_25
    IL_0628:  ldc.i4.1
    IL_0629:  add
    IL_062a:  conv.u2
    IL_062b:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0630:  dup
    IL_0631:  ldloc.s    V_25
    IL_0633:  ldc.i4.1
    IL_0634:  add
    IL_0635:  conv.u2
    IL_0636:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_063b:  dup
    IL_063c:  ldloc.s    V_25
    IL_063e:  ldc.i4.2
    IL_063f:  add
    IL_0640:  conv.u2
    IL_0641:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0646:  dup
    IL_0647:  ldloc.s    V_25
    IL_0649:  conv.u2
    IL_064a:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_064f:  dup
    IL_0650:  ldloc.s    V_25
    IL_0652:  ldc.i4.2
    IL_0653:  add
    IL_0654:  conv.u2
    IL_0655:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_065a:  dup
    IL_065b:  ldloc.s    V_25
    IL_065d:  conv.u2
    IL_065e:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0663:  dup
    IL_0664:  ldloc.s    V_25
    IL_0666:  ldc.i4.3
    IL_0667:  add
    IL_0668:  conv.u2
    IL_0669:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_066e:  dup
    IL_066f:  ldloc.s    V_25
    IL_0671:  ldc.i4.3
    IL_0672:  add
    IL_0673:  conv.u2
    IL_0674:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0679:  dup
    IL_067a:  ldloc.s    V_25
    IL_067c:  conv.u2
    IL_067d:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0682:  ldloc.s    V_25
    IL_0684:  ldc.i4.2
    IL_0685:  add
    IL_0686:  conv.u2
    IL_0687:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_068c:  ldc.i4.3
    IL_068d:  call       bool Game.FireBlock::HasFireOnFace(int32,
                                                            int32)
    IL_0692:  brfalse    IL_0891

    IL_0697:  ldarg.s    y
    IL_0699:  ldc.i4.1
    IL_069a:  add
    IL_069b:  ldc.i4     0x80
    IL_06a0:  blt.s      IL_06a5

    IL_06a2:  ldc.i4.0
    IL_06a3:  br.s       IL_06ba

    IL_06a5:  ldarg.1
    IL_06a6:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_06ab:  ldarg.s    x
    IL_06ad:  ldc.i4.1
    IL_06ae:  sub
    IL_06af:  ldarg.s    y
    IL_06b1:  ldc.i4.1
    IL_06b2:  add
    IL_06b3:  ldarg.s    z
    IL_06b5:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_06ba:  dup
    IL_06bb:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_06c0:  stloc.s    V_26
    IL_06c2:  call       int32 Game.Terrain::ExtractData(int32)
    IL_06c7:  stloc.s    V_27
    IL_06c9:  ldarg.s    y
    IL_06cb:  ldc.i4.2
    IL_06cc:  add
    IL_06cd:  ldc.i4     0x80
    IL_06d2:  blt.s      IL_06d7

    IL_06d4:  ldc.i4.0
    IL_06d5:  br.s       IL_06ec

    IL_06d7:  ldarg.1
    IL_06d8:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_06dd:  ldarg.s    x
    IL_06df:  ldc.i4.1
    IL_06e0:  sub
    IL_06e1:  ldarg.s    y
    IL_06e3:  ldc.i4.2
    IL_06e4:  add
    IL_06e5:  ldarg.s    z
    IL_06e7:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_06ec:  dup
    IL_06ed:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_06f2:  stloc.s    V_28
    IL_06f4:  call       int32 Game.Terrain::ExtractData(int32)
    IL_06f9:  stloc.s    V_29
    IL_06fb:  ldarg.0
    IL_06fc:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_0701:  stloc.s    V_30
    IL_0703:  ldloc.1
    IL_0704:  ldc.i4.s   104
    IL_0706:  bne.un.s   IL_0711

    IL_0708:  ldloc.2
    IL_0709:  ldc.i4.3
    IL_070a:  call       bool Game.FireBlock::HasFireOnFace(int32,
                                                            int32)
    IL_070f:  brtrue.s   IL_0721

    IL_0711:  ldloc.s    V_26
    IL_0713:  ldc.i4.s   104
    IL_0715:  bne.un.s   IL_074e

    IL_0717:  ldloc.s    V_27
    IL_0719:  ldc.i4.1
    IL_071a:  call       bool Game.FireBlock::HasFireOnFace(int32,
                                                            int32)
    IL_071f:  brfalse.s  IL_074e

    IL_0721:  ldloc.s    V_30
    IL_0723:  ldc.i4.s   16
    IL_0725:  add
    IL_0726:  stloc.s    V_30
    IL_0728:  ldloc.3
    IL_0729:  ldc.i4.s   104
    IL_072b:  bne.un.s   IL_0737

    IL_072d:  ldloc.s    V_4
    IL_072f:  ldc.i4.3
    IL_0730:  call       bool Game.FireBlock::HasFireOnFace(int32,
                                                            int32)
    IL_0735:  brtrue.s   IL_0747

    IL_0737:  ldloc.s    V_28
    IL_0739:  ldc.i4.s   104
    IL_073b:  bne.un.s   IL_074e

    IL_073d:  ldloc.s    V_29
    IL_073f:  ldc.i4.1
    IL_0740:  call       bool Game.FireBlock::HasFireOnFace(int32,
                                                            int32)
    IL_0745:  brfalse.s  IL_074e

    IL_0747:  ldloc.s    V_30
    IL_0749:  ldc.i4.s   16
    IL_074b:  add
    IL_074c:  stloc.s    V_30
    IL_074e:  ldloc.0
    IL_074f:  ldc.i4.3
    IL_0750:  ldelem.ref
    IL_0751:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_0756:  stloc.s    V_31
    IL_0758:  ldloc.0
    IL_0759:  ldc.i4.3
    IL_075a:  ldelem.ref
    IL_075b:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_0760:  ldloc.s    V_31
    IL_0762:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0767:  stloc.s    V_32
    IL_0769:  ldloc.s    V_31
    IL_076b:  dup
    IL_076c:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0771:  ldc.i4.4
    IL_0772:  add
    IL_0773:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_0778:  ldarg.s    x
    IL_077a:  conv.r4
    IL_077b:  ldarg.s    y
    IL_077d:  conv.r4
    IL_077e:  ldarg.s    z
    IL_0780:  conv.r4
    IL_0781:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0786:  ldloc.s    V_30
    IL_0788:  ldc.i4.0
    IL_0789:  ldloc.s    V_31
    IL_078b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0790:  ldloc.s    V_32
    IL_0792:  ldelema    Game.TerrainVertex
    IL_0797:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_079c:  ldarg.s    x
    IL_079e:  conv.r4
    IL_079f:  ldarg.s    y
    IL_07a1:  ldc.i4.1
    IL_07a2:  add
    IL_07a3:  conv.r4
    IL_07a4:  ldarg.s    z
    IL_07a6:  conv.r4
    IL_07a7:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_07ac:  ldloc.s    V_30
    IL_07ae:  ldc.i4.3
    IL_07af:  ldloc.s    V_31
    IL_07b1:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_07b6:  ldloc.s    V_32
    IL_07b8:  ldc.i4.1
    IL_07b9:  add
    IL_07ba:  ldelema    Game.TerrainVertex
    IL_07bf:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_07c4:  ldarg.s    x
    IL_07c6:  conv.r4
    IL_07c7:  ldarg.s    y
    IL_07c9:  ldc.i4.1
    IL_07ca:  add
    IL_07cb:  conv.r4
    IL_07cc:  ldarg.s    z
    IL_07ce:  ldc.i4.1
    IL_07cf:  add
    IL_07d0:  conv.r4
    IL_07d1:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_07d6:  ldloc.s    V_30
    IL_07d8:  ldc.i4.2
    IL_07d9:  ldloc.s    V_31
    IL_07db:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_07e0:  ldloc.s    V_32
    IL_07e2:  ldc.i4.2
    IL_07e3:  add
    IL_07e4:  ldelema    Game.TerrainVertex
    IL_07e9:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_07ee:  ldarg.s    x
    IL_07f0:  conv.r4
    IL_07f1:  ldarg.s    y
    IL_07f3:  conv.r4
    IL_07f4:  ldarg.s    z
    IL_07f6:  ldc.i4.1
    IL_07f7:  add
    IL_07f8:  conv.r4
    IL_07f9:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_07fe:  ldloc.s    V_30
    IL_0800:  ldc.i4.1
    IL_0801:  ldloc.s    V_31
    IL_0803:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0808:  ldloc.s    V_32
    IL_080a:  ldc.i4.3
    IL_080b:  add
    IL_080c:  ldelema    Game.TerrainVertex
    IL_0811:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_0816:  dup
    IL_0817:  ldloc.s    V_32
    IL_0819:  conv.u2
    IL_081a:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_081f:  dup
    IL_0820:  ldloc.s    V_32
    IL_0822:  ldc.i4.2
    IL_0823:  add
    IL_0824:  conv.u2
    IL_0825:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_082a:  dup
    IL_082b:  ldloc.s    V_32
    IL_082d:  ldc.i4.1
    IL_082e:  add
    IL_082f:  conv.u2
    IL_0830:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0835:  dup
    IL_0836:  ldloc.s    V_32
    IL_0838:  ldc.i4.1
    IL_0839:  add
    IL_083a:  conv.u2
    IL_083b:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0840:  dup
    IL_0841:  ldloc.s    V_32
    IL_0843:  ldc.i4.2
    IL_0844:  add
    IL_0845:  conv.u2
    IL_0846:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_084b:  dup
    IL_084c:  ldloc.s    V_32
    IL_084e:  conv.u2
    IL_084f:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0854:  dup
    IL_0855:  ldloc.s    V_32
    IL_0857:  ldc.i4.2
    IL_0858:  add
    IL_0859:  conv.u2
    IL_085a:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_085f:  dup
    IL_0860:  ldloc.s    V_32
    IL_0862:  conv.u2
    IL_0863:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0868:  dup
    IL_0869:  ldloc.s    V_32
    IL_086b:  ldc.i4.3
    IL_086c:  add
    IL_086d:  conv.u2
    IL_086e:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0873:  dup
    IL_0874:  ldloc.s    V_32
    IL_0876:  ldc.i4.3
    IL_0877:  add
    IL_0878:  conv.u2
    IL_0879:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_087e:  dup
    IL_087f:  ldloc.s    V_32
    IL_0881:  conv.u2
    IL_0882:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0887:  ldloc.s    V_32
    IL_0889:  ldc.i4.2
    IL_088a:  add
    IL_088b:  conv.u2
    IL_088c:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0891:  ret
  } // end of method FireBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    valuetype [Engine]Engine.Color color,
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method FireBlock::DrawBlock

  .method public hidebysig virtual instance bool 
          ShouldAvoid(int32 'value') cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  ret
  } // end of method FireBlock::ShouldAvoid

  .method private hidebysig static bool  HasFireOnFace(int32 data,
                                                       int32 face) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  brtrue.s   IL_0005

    IL_0003:  ldc.i4.1
    IL_0004:  ret

    IL_0005:  ldarg.0
    IL_0006:  ldc.i4.1
    IL_0007:  ldarg.1
    IL_0008:  ldc.i4.s   31
    IL_000a:  and
    IL_000b:  shl
    IL_000c:  and
    IL_000d:  brfalse.s  IL_0011

    IL_000f:  ldc.i4.1
    IL_0010:  ret

    IL_0011:  ldc.i4.0
    IL_0012:  ret
  } // end of method FireBlock::HasFireOnFace

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Block::.ctor()
    IL_0006:  ret
  } // end of method FireBlock::.ctor

} // end of class Game.FireBlock