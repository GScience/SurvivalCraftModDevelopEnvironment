.class public auto ansi beforefieldinit Game.IvyBlock
       extends Game.Block
{
  .field public static literal int32 Index = int32(0x000000C5)
  .field private valuetype [Engine]Engine.BoundingBox[][] m_boundingBoxes
  .method public hidebysig virtual instance valuetype [Engine]Engine.BoundingBox[] 
          GetCustomCollisionBoxes(class Game.SubsystemTerrain terrain,
                                  int32 'value') cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       int32 Game.IvyBlock::GetFace(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.0
    IL_000e:  blt.s      IL_001d

    IL_0010:  ldloc.0
    IL_0011:  ldc.i4.4
    IL_0012:  bge.s      IL_001d

    IL_0014:  ldarg.0
    IL_0015:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.IvyBlock::m_boundingBoxes
    IL_001a:  ldloc.0
    IL_001b:  ldelem.ref
    IL_001c:  ret

    IL_001d:  ldarg.0
    IL_001e:  ldarg.1
    IL_001f:  ldarg.2
    IL_0020:  call       instance valuetype [Engine]Engine.BoundingBox[] Game.Block::GetCustomCollisionBoxes(class Game.SubsystemTerrain,
                                                                                                             int32)
    IL_0025:  ret
  } // end of method IvyBlock::GetCustomCollisionBoxes

  .method public hidebysig virtual instance valuetype Game.BlockPlacementData 
          GetPlacementValue(class Game.SubsystemTerrain subsystemTerrain,
                            class Game.ComponentMiner componentMiner,
                            int32 'value',
                            valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       80 (0x50)
    .maxstack  5
    .locals init (valuetype Game.BlockPlacementData V_0)
    IL_0000:  ldloca.s   V_0
    IL_0002:  initobj    Game.BlockPlacementData
    IL_0008:  ldarg.s    raycastResult
    IL_000a:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_000f:  ldfld      int32 Game.CellFace::Face
    IL_0014:  ldc.i4.4
    IL_0015:  bge.s      IL_004e

    IL_0017:  ldloca.s   V_0
    IL_0019:  ldarg.s    raycastResult
    IL_001b:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0020:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_0025:  ldloca.s   V_0
    IL_0027:  ldc.i4     0xc5
    IL_002c:  ldc.i4.0
    IL_002d:  ldc.i4.0
    IL_002e:  ldarg.s    raycastResult
    IL_0030:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0035:  ldfld      int32 Game.CellFace::Face
    IL_003a:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_003f:  call       int32 Game.IvyBlock::SetFace(int32,
                                                      int32)
    IL_0044:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0049:  stfld      int32 Game.BlockPlacementData::Value
    IL_004e:  ldloc.0
    IL_004f:  ret
  } // end of method IvyBlock::GetPlacementValue

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       1278 (0x4fe)
    .maxstack  9
    .locals init (class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> V_0,
             class [Engine]Engine.DynamicArray`1<uint16> V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             float32 V_5,
             valuetype [Engine]Engine.Color V_6)
    IL_0000:  ldarg.2
    IL_0001:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetAlphaTest
    IL_0006:  dup
    IL_0007:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_000c:  stloc.0
    IL_000d:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_0012:  stloc.1
    IL_0013:  ldloc.0
    IL_0014:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0019:  stloc.2
    IL_001a:  ldarg.3
    IL_001b:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0020:  ldarg.3
    IL_0021:  call       int32 Game.Terrain::ExtractLight(int32)
    IL_0026:  stloc.3
    IL_0027:  call       int32 Game.IvyBlock::GetFace(int32)
    IL_002c:  stloc.s    V_4
    IL_002e:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValueAndFace
    IL_0033:  ldloc.3
    IL_0034:  ldc.i4.s   16
    IL_0036:  ldloc.s    V_4
    IL_0038:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_003d:  mul
    IL_003e:  add
    IL_003f:  ldelem.r4
    IL_0040:  stloc.s    V_5
    IL_0042:  ldsfld     class Game.BlockColorsMap Game.BlockColorsMap::IvyColorsMap
    IL_0047:  ldarg.1
    IL_0048:  ldfld      class Game.Terrain Game.BlockGeometryGenerator::Terrain
    IL_004d:  ldarg.s    x
    IL_004f:  ldarg.s    z
    IL_0051:  callvirt   instance valuetype [Engine]Engine.Color Game.BlockColorsMap::Lookup(class Game.Terrain,
                                                                                             int32,
                                                                                             int32)
    IL_0056:  ldloc.s    V_5
    IL_0058:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_005d:  stloc.s    V_6
    IL_005f:  ldloca.s   V_6
    IL_0061:  ldc.i4     0xff
    IL_0066:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_006b:  ldloc.s    V_4
    IL_006d:  brtrue     IL_0193

    IL_0072:  ldloc.0
    IL_0073:  dup
    IL_0074:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0079:  ldc.i4.4
    IL_007a:  add
    IL_007b:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_0080:  ldarg.s    x
    IL_0082:  conv.r4
    IL_0083:  ldarg.s    y
    IL_0085:  conv.r4
    IL_0086:  ldarg.s    z
    IL_0088:  ldc.i4.1
    IL_0089:  add
    IL_008a:  conv.r4
    IL_008b:  ldloc.s    V_6
    IL_008d:  ldarg.0
    IL_008e:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_0093:  ldc.i4.0
    IL_0094:  ldloc.0
    IL_0095:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_009a:  ldloc.2
    IL_009b:  ldelema    Game.TerrainVertex
    IL_00a0:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_00a5:  ldarg.s    x
    IL_00a7:  ldc.i4.1
    IL_00a8:  add
    IL_00a9:  conv.r4
    IL_00aa:  ldarg.s    y
    IL_00ac:  conv.r4
    IL_00ad:  ldarg.s    z
    IL_00af:  ldc.i4.1
    IL_00b0:  add
    IL_00b1:  conv.r4
    IL_00b2:  ldloc.s    V_6
    IL_00b4:  ldarg.0
    IL_00b5:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_00ba:  ldc.i4.1
    IL_00bb:  ldloc.0
    IL_00bc:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_00c1:  ldloc.2
    IL_00c2:  ldc.i4.1
    IL_00c3:  add
    IL_00c4:  ldelema    Game.TerrainVertex
    IL_00c9:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_00ce:  ldarg.s    x
    IL_00d0:  ldc.i4.1
    IL_00d1:  add
    IL_00d2:  conv.r4
    IL_00d3:  ldarg.s    y
    IL_00d5:  ldc.i4.1
    IL_00d6:  add
    IL_00d7:  conv.r4
    IL_00d8:  ldarg.s    z
    IL_00da:  ldc.i4.1
    IL_00db:  add
    IL_00dc:  conv.r4
    IL_00dd:  ldloc.s    V_6
    IL_00df:  ldarg.0
    IL_00e0:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_00e5:  ldc.i4.2
    IL_00e6:  ldloc.0
    IL_00e7:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_00ec:  ldloc.2
    IL_00ed:  ldc.i4.2
    IL_00ee:  add
    IL_00ef:  ldelema    Game.TerrainVertex
    IL_00f4:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_00f9:  ldarg.s    x
    IL_00fb:  conv.r4
    IL_00fc:  ldarg.s    y
    IL_00fe:  ldc.i4.1
    IL_00ff:  add
    IL_0100:  conv.r4
    IL_0101:  ldarg.s    z
    IL_0103:  ldc.i4.1
    IL_0104:  add
    IL_0105:  conv.r4
    IL_0106:  ldloc.s    V_6
    IL_0108:  ldarg.0
    IL_0109:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_010e:  ldc.i4.3
    IL_010f:  ldloc.0
    IL_0110:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0115:  ldloc.2
    IL_0116:  ldc.i4.3
    IL_0117:  add
    IL_0118:  ldelema    Game.TerrainVertex
    IL_011d:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_0122:  ldloc.1
    IL_0123:  ldloc.2
    IL_0124:  conv.u2
    IL_0125:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_012a:  ldloc.1
    IL_012b:  ldloc.2
    IL_012c:  ldc.i4.1
    IL_012d:  add
    IL_012e:  conv.u2
    IL_012f:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0134:  ldloc.1
    IL_0135:  ldloc.2
    IL_0136:  ldc.i4.2
    IL_0137:  add
    IL_0138:  conv.u2
    IL_0139:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_013e:  ldloc.1
    IL_013f:  ldloc.2
    IL_0140:  ldc.i4.2
    IL_0141:  add
    IL_0142:  conv.u2
    IL_0143:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0148:  ldloc.1
    IL_0149:  ldloc.2
    IL_014a:  ldc.i4.1
    IL_014b:  add
    IL_014c:  conv.u2
    IL_014d:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0152:  ldloc.1
    IL_0153:  ldloc.2
    IL_0154:  conv.u2
    IL_0155:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_015a:  ldloc.1
    IL_015b:  ldloc.2
    IL_015c:  ldc.i4.2
    IL_015d:  add
    IL_015e:  conv.u2
    IL_015f:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0164:  ldloc.1
    IL_0165:  ldloc.2
    IL_0166:  ldc.i4.3
    IL_0167:  add
    IL_0168:  conv.u2
    IL_0169:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_016e:  ldloc.1
    IL_016f:  ldloc.2
    IL_0170:  conv.u2
    IL_0171:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0176:  ldloc.1
    IL_0177:  ldloc.2
    IL_0178:  conv.u2
    IL_0179:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_017e:  ldloc.1
    IL_017f:  ldloc.2
    IL_0180:  ldc.i4.3
    IL_0181:  add
    IL_0182:  conv.u2
    IL_0183:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0188:  ldloc.1
    IL_0189:  ldloc.2
    IL_018a:  ldc.i4.2
    IL_018b:  add
    IL_018c:  conv.u2
    IL_018d:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0192:  ret

    IL_0193:  ldloc.s    V_4
    IL_0195:  ldc.i4.1
    IL_0196:  bne.un     IL_02bc

    IL_019b:  ldloc.0
    IL_019c:  dup
    IL_019d:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_01a2:  ldc.i4.4
    IL_01a3:  add
    IL_01a4:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_01a9:  ldarg.s    x
    IL_01ab:  ldc.i4.1
    IL_01ac:  add
    IL_01ad:  conv.r4
    IL_01ae:  ldarg.s    y
    IL_01b0:  conv.r4
    IL_01b1:  ldarg.s    z
    IL_01b3:  conv.r4
    IL_01b4:  ldloc.s    V_6
    IL_01b6:  ldarg.0
    IL_01b7:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_01bc:  ldc.i4.0
    IL_01bd:  ldloc.0
    IL_01be:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_01c3:  ldloc.2
    IL_01c4:  ldelema    Game.TerrainVertex
    IL_01c9:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_01ce:  ldarg.s    x
    IL_01d0:  ldc.i4.1
    IL_01d1:  add
    IL_01d2:  conv.r4
    IL_01d3:  ldarg.s    y
    IL_01d5:  ldc.i4.1
    IL_01d6:  add
    IL_01d7:  conv.r4
    IL_01d8:  ldarg.s    z
    IL_01da:  conv.r4
    IL_01db:  ldloc.s    V_6
    IL_01dd:  ldarg.0
    IL_01de:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_01e3:  ldc.i4.3
    IL_01e4:  ldloc.0
    IL_01e5:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_01ea:  ldloc.2
    IL_01eb:  ldc.i4.1
    IL_01ec:  add
    IL_01ed:  ldelema    Game.TerrainVertex
    IL_01f2:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_01f7:  ldarg.s    x
    IL_01f9:  ldc.i4.1
    IL_01fa:  add
    IL_01fb:  conv.r4
    IL_01fc:  ldarg.s    y
    IL_01fe:  ldc.i4.1
    IL_01ff:  add
    IL_0200:  conv.r4
    IL_0201:  ldarg.s    z
    IL_0203:  ldc.i4.1
    IL_0204:  add
    IL_0205:  conv.r4
    IL_0206:  ldloc.s    V_6
    IL_0208:  ldarg.0
    IL_0209:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_020e:  ldc.i4.2
    IL_020f:  ldloc.0
    IL_0210:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0215:  ldloc.2
    IL_0216:  ldc.i4.2
    IL_0217:  add
    IL_0218:  ldelema    Game.TerrainVertex
    IL_021d:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_0222:  ldarg.s    x
    IL_0224:  ldc.i4.1
    IL_0225:  add
    IL_0226:  conv.r4
    IL_0227:  ldarg.s    y
    IL_0229:  conv.r4
    IL_022a:  ldarg.s    z
    IL_022c:  ldc.i4.1
    IL_022d:  add
    IL_022e:  conv.r4
    IL_022f:  ldloc.s    V_6
    IL_0231:  ldarg.0
    IL_0232:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_0237:  ldc.i4.1
    IL_0238:  ldloc.0
    IL_0239:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_023e:  ldloc.2
    IL_023f:  ldc.i4.3
    IL_0240:  add
    IL_0241:  ldelema    Game.TerrainVertex
    IL_0246:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_024b:  ldloc.1
    IL_024c:  ldloc.2
    IL_024d:  conv.u2
    IL_024e:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0253:  ldloc.1
    IL_0254:  ldloc.2
    IL_0255:  ldc.i4.1
    IL_0256:  add
    IL_0257:  conv.u2
    IL_0258:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_025d:  ldloc.1
    IL_025e:  ldloc.2
    IL_025f:  ldc.i4.2
    IL_0260:  add
    IL_0261:  conv.u2
    IL_0262:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0267:  ldloc.1
    IL_0268:  ldloc.2
    IL_0269:  ldc.i4.2
    IL_026a:  add
    IL_026b:  conv.u2
    IL_026c:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0271:  ldloc.1
    IL_0272:  ldloc.2
    IL_0273:  ldc.i4.1
    IL_0274:  add
    IL_0275:  conv.u2
    IL_0276:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_027b:  ldloc.1
    IL_027c:  ldloc.2
    IL_027d:  conv.u2
    IL_027e:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0283:  ldloc.1
    IL_0284:  ldloc.2
    IL_0285:  ldc.i4.2
    IL_0286:  add
    IL_0287:  conv.u2
    IL_0288:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_028d:  ldloc.1
    IL_028e:  ldloc.2
    IL_028f:  ldc.i4.3
    IL_0290:  add
    IL_0291:  conv.u2
    IL_0292:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0297:  ldloc.1
    IL_0298:  ldloc.2
    IL_0299:  conv.u2
    IL_029a:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_029f:  ldloc.1
    IL_02a0:  ldloc.2
    IL_02a1:  conv.u2
    IL_02a2:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_02a7:  ldloc.1
    IL_02a8:  ldloc.2
    IL_02a9:  ldc.i4.3
    IL_02aa:  add
    IL_02ab:  conv.u2
    IL_02ac:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_02b1:  ldloc.1
    IL_02b2:  ldloc.2
    IL_02b3:  ldc.i4.2
    IL_02b4:  add
    IL_02b5:  conv.u2
    IL_02b6:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_02bb:  ret

    IL_02bc:  ldloc.s    V_4
    IL_02be:  ldc.i4.2
    IL_02bf:  bne.un     IL_03dd

    IL_02c4:  ldloc.0
    IL_02c5:  dup
    IL_02c6:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_02cb:  ldc.i4.4
    IL_02cc:  add
    IL_02cd:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_02d2:  ldarg.s    x
    IL_02d4:  conv.r4
    IL_02d5:  ldarg.s    y
    IL_02d7:  conv.r4
    IL_02d8:  ldarg.s    z
    IL_02da:  conv.r4
    IL_02db:  ldloc.s    V_6
    IL_02dd:  ldarg.0
    IL_02de:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_02e3:  ldc.i4.0
    IL_02e4:  ldloc.0
    IL_02e5:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_02ea:  ldloc.2
    IL_02eb:  ldelema    Game.TerrainVertex
    IL_02f0:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_02f5:  ldarg.s    x
    IL_02f7:  ldc.i4.1
    IL_02f8:  add
    IL_02f9:  conv.r4
    IL_02fa:  ldarg.s    y
    IL_02fc:  conv.r4
    IL_02fd:  ldarg.s    z
    IL_02ff:  conv.r4
    IL_0300:  ldloc.s    V_6
    IL_0302:  ldarg.0
    IL_0303:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_0308:  ldc.i4.1
    IL_0309:  ldloc.0
    IL_030a:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_030f:  ldloc.2
    IL_0310:  ldc.i4.1
    IL_0311:  add
    IL_0312:  ldelema    Game.TerrainVertex
    IL_0317:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_031c:  ldarg.s    x
    IL_031e:  ldc.i4.1
    IL_031f:  add
    IL_0320:  conv.r4
    IL_0321:  ldarg.s    y
    IL_0323:  ldc.i4.1
    IL_0324:  add
    IL_0325:  conv.r4
    IL_0326:  ldarg.s    z
    IL_0328:  conv.r4
    IL_0329:  ldloc.s    V_6
    IL_032b:  ldarg.0
    IL_032c:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_0331:  ldc.i4.2
    IL_0332:  ldloc.0
    IL_0333:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0338:  ldloc.2
    IL_0339:  ldc.i4.2
    IL_033a:  add
    IL_033b:  ldelema    Game.TerrainVertex
    IL_0340:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_0345:  ldarg.s    x
    IL_0347:  conv.r4
    IL_0348:  ldarg.s    y
    IL_034a:  ldc.i4.1
    IL_034b:  add
    IL_034c:  conv.r4
    IL_034d:  ldarg.s    z
    IL_034f:  conv.r4
    IL_0350:  ldloc.s    V_6
    IL_0352:  ldarg.0
    IL_0353:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_0358:  ldc.i4.3
    IL_0359:  ldloc.0
    IL_035a:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_035f:  ldloc.2
    IL_0360:  ldc.i4.3
    IL_0361:  add
    IL_0362:  ldelema    Game.TerrainVertex
    IL_0367:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_036c:  ldloc.1
    IL_036d:  ldloc.2
    IL_036e:  conv.u2
    IL_036f:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0374:  ldloc.1
    IL_0375:  ldloc.2
    IL_0376:  ldc.i4.2
    IL_0377:  add
    IL_0378:  conv.u2
    IL_0379:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_037e:  ldloc.1
    IL_037f:  ldloc.2
    IL_0380:  ldc.i4.1
    IL_0381:  add
    IL_0382:  conv.u2
    IL_0383:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0388:  ldloc.1
    IL_0389:  ldloc.2
    IL_038a:  ldc.i4.1
    IL_038b:  add
    IL_038c:  conv.u2
    IL_038d:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0392:  ldloc.1
    IL_0393:  ldloc.2
    IL_0394:  ldc.i4.2
    IL_0395:  add
    IL_0396:  conv.u2
    IL_0397:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_039c:  ldloc.1
    IL_039d:  ldloc.2
    IL_039e:  conv.u2
    IL_039f:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_03a4:  ldloc.1
    IL_03a5:  ldloc.2
    IL_03a6:  ldc.i4.2
    IL_03a7:  add
    IL_03a8:  conv.u2
    IL_03a9:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_03ae:  ldloc.1
    IL_03af:  ldloc.2
    IL_03b0:  conv.u2
    IL_03b1:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_03b6:  ldloc.1
    IL_03b7:  ldloc.2
    IL_03b8:  ldc.i4.3
    IL_03b9:  add
    IL_03ba:  conv.u2
    IL_03bb:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_03c0:  ldloc.1
    IL_03c1:  ldloc.2
    IL_03c2:  ldc.i4.3
    IL_03c3:  add
    IL_03c4:  conv.u2
    IL_03c5:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_03ca:  ldloc.1
    IL_03cb:  ldloc.2
    IL_03cc:  conv.u2
    IL_03cd:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_03d2:  ldloc.1
    IL_03d3:  ldloc.2
    IL_03d4:  ldc.i4.2
    IL_03d5:  add
    IL_03d6:  conv.u2
    IL_03d7:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_03dc:  ret

    IL_03dd:  ldloc.s    V_4
    IL_03df:  ldc.i4.3
    IL_03e0:  bne.un     IL_04fd

    IL_03e5:  ldloc.0
    IL_03e6:  dup
    IL_03e7:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_03ec:  ldc.i4.4
    IL_03ed:  add
    IL_03ee:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_03f3:  ldarg.s    x
    IL_03f5:  conv.r4
    IL_03f6:  ldarg.s    y
    IL_03f8:  conv.r4
    IL_03f9:  ldarg.s    z
    IL_03fb:  conv.r4
    IL_03fc:  ldloc.s    V_6
    IL_03fe:  ldarg.0
    IL_03ff:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_0404:  ldc.i4.0
    IL_0405:  ldloc.0
    IL_0406:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_040b:  ldloc.2
    IL_040c:  ldelema    Game.TerrainVertex
    IL_0411:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_0416:  ldarg.s    x
    IL_0418:  conv.r4
    IL_0419:  ldarg.s    y
    IL_041b:  ldc.i4.1
    IL_041c:  add
    IL_041d:  conv.r4
    IL_041e:  ldarg.s    z
    IL_0420:  conv.r4
    IL_0421:  ldloc.s    V_6
    IL_0423:  ldarg.0
    IL_0424:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_0429:  ldc.i4.3
    IL_042a:  ldloc.0
    IL_042b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0430:  ldloc.2
    IL_0431:  ldc.i4.1
    IL_0432:  add
    IL_0433:  ldelema    Game.TerrainVertex
    IL_0438:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_043d:  ldarg.s    x
    IL_043f:  conv.r4
    IL_0440:  ldarg.s    y
    IL_0442:  ldc.i4.1
    IL_0443:  add
    IL_0444:  conv.r4
    IL_0445:  ldarg.s    z
    IL_0447:  ldc.i4.1
    IL_0448:  add
    IL_0449:  conv.r4
    IL_044a:  ldloc.s    V_6
    IL_044c:  ldarg.0
    IL_044d:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_0452:  ldc.i4.2
    IL_0453:  ldloc.0
    IL_0454:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0459:  ldloc.2
    IL_045a:  ldc.i4.2
    IL_045b:  add
    IL_045c:  ldelema    Game.TerrainVertex
    IL_0461:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_0466:  ldarg.s    x
    IL_0468:  conv.r4
    IL_0469:  ldarg.s    y
    IL_046b:  conv.r4
    IL_046c:  ldarg.s    z
    IL_046e:  ldc.i4.1
    IL_046f:  add
    IL_0470:  conv.r4
    IL_0471:  ldloc.s    V_6
    IL_0473:  ldarg.0
    IL_0474:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_0479:  ldc.i4.1
    IL_047a:  ldloc.0
    IL_047b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0480:  ldloc.2
    IL_0481:  ldc.i4.3
    IL_0482:  add
    IL_0483:  ldelema    Game.TerrainVertex
    IL_0488:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_048d:  ldloc.1
    IL_048e:  ldloc.2
    IL_048f:  conv.u2
    IL_0490:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0495:  ldloc.1
    IL_0496:  ldloc.2
    IL_0497:  ldc.i4.2
    IL_0498:  add
    IL_0499:  conv.u2
    IL_049a:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_049f:  ldloc.1
    IL_04a0:  ldloc.2
    IL_04a1:  ldc.i4.1
    IL_04a2:  add
    IL_04a3:  conv.u2
    IL_04a4:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_04a9:  ldloc.1
    IL_04aa:  ldloc.2
    IL_04ab:  ldc.i4.1
    IL_04ac:  add
    IL_04ad:  conv.u2
    IL_04ae:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_04b3:  ldloc.1
    IL_04b4:  ldloc.2
    IL_04b5:  ldc.i4.2
    IL_04b6:  add
    IL_04b7:  conv.u2
    IL_04b8:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_04bd:  ldloc.1
    IL_04be:  ldloc.2
    IL_04bf:  conv.u2
    IL_04c0:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_04c5:  ldloc.1
    IL_04c6:  ldloc.2
    IL_04c7:  ldc.i4.2
    IL_04c8:  add
    IL_04c9:  conv.u2
    IL_04ca:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_04cf:  ldloc.1
    IL_04d0:  ldloc.2
    IL_04d1:  conv.u2
    IL_04d2:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_04d7:  ldloc.1
    IL_04d8:  ldloc.2
    IL_04d9:  ldc.i4.3
    IL_04da:  add
    IL_04db:  conv.u2
    IL_04dc:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_04e1:  ldloc.1
    IL_04e2:  ldloc.2
    IL_04e3:  ldc.i4.3
    IL_04e4:  add
    IL_04e5:  conv.u2
    IL_04e6:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_04eb:  ldloc.1
    IL_04ec:  ldloc.2
    IL_04ed:  conv.u2
    IL_04ee:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_04f3:  ldloc.1
    IL_04f4:  ldloc.2
    IL_04f5:  ldc.i4.2
    IL_04f6:  add
    IL_04f7:  conv.u2
    IL_04f8:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_04fd:  ret
  } // end of method IvyBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    valuetype [Engine]Engine.Color color,
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       49 (0x31)
    .maxstack  8
    IL_0000:  ldarg.3
    IL_0001:  ldsfld     class Game.BlockColorsMap Game.BlockColorsMap::IvyColorsMap
    IL_0006:  ldarg.s    environmentData
    IL_0008:  ldfld      int32 Game.DrawBlockEnvironmentData::Temperature
    IL_000d:  ldarg.s    environmentData
    IL_000f:  ldfld      int32 Game.DrawBlockEnvironmentData::Humidity
    IL_0014:  callvirt   instance valuetype [Engine]Engine.Color Game.BlockColorsMap::Lookup(int32,
                                                                                             int32)
    IL_0019:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_001e:  starg.s    color
    IL_0020:  ldarg.1
    IL_0021:  ldarg.2
    IL_0022:  ldarg.s    size
    IL_0024:  ldarg.s    matrix
    IL_0026:  ldnull
    IL_0027:  ldarg.3
    IL_0028:  ldc.i4.0
    IL_0029:  ldarg.s    environmentData
    IL_002b:  call       void Game.BlocksManager::DrawFlatBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                int32,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class [Engine]Engine.Graphics.Texture2D,
                                                                valuetype [Engine]Engine.Color,
                                                                bool,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0030:  ret
  } // end of method IvyBlock::DrawBlock

  .method public hidebysig virtual instance class Game.BlockDebrisParticleSystem 
          CreateDebrisParticleSystem(class Game.SubsystemTerrain subsystemTerrain,
                                     valuetype [Engine]Engine.Vector3 position,
                                     int32 'value',
                                     float32 strength) cil managed
  {
    // 代码大小       62 (0x3e)
    .maxstack  6
    .locals init (valuetype [Engine]Engine.Color V_0)
    IL_0000:  ldsfld     class Game.BlockColorsMap Game.BlockColorsMap::IvyColorsMap
    IL_0005:  ldarg.1
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0011:  call       int32 Game.Terrain::ToCell(float32)
    IL_0016:  ldarg.2
    IL_0017:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_001c:  call       int32 Game.Terrain::ToCell(float32)
    IL_0021:  callvirt   instance valuetype [Engine]Engine.Color Game.BlockColorsMap::Lookup(class Game.Terrain,
                                                                                             int32,
                                                                                             int32)
    IL_0026:  stloc.0
    IL_0027:  ldarg.1
    IL_0028:  ldarg.2
    IL_0029:  ldarg.s    strength
    IL_002b:  ldarg.0
    IL_002c:  ldfld      float32 Game.Block::DestructionDebrisScale
    IL_0031:  ldloc.0
    IL_0032:  ldarg.0
    IL_0033:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_0038:  newobj     instance void Game.BlockDebrisParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                             valuetype [Engine]Engine.Vector3,
                                                                             float32,
                                                                             float32,
                                                                             valuetype [Engine]Engine.Color,
                                                                             int32)
    IL_003d:  ret
  } // end of method IvyBlock::CreateDebrisParticleSystem

  .method public hidebysig static int32  GetFace(int32 data) cil managed
  {
    // 代码大小       4 (0x4)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.3
    IL_0002:  and
    IL_0003:  ret
  } // end of method IvyBlock::GetFace

  .method public hidebysig static int32  SetFace(int32 data,
                                                 int32 face) cil managed
  {
    // 代码大小       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   -4
    IL_0003:  and
    IL_0004:  ldarg.1
    IL_0005:  ldc.i4.3
    IL_0006:  and
    IL_0007:  or
    IL_0008:  ret
  } // end of method IvyBlock::SetFace

  .method public hidebysig static bool  IsGrowthStopCell(int32 x,
                                                         int32 y,
                                                         int32 z) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldc.i4     0x1c3
    IL_0007:  mul
    IL_0008:  add
    IL_0009:  ldarg.2
    IL_000a:  ldc.i4     0x12e7d
    IL_000f:  mul
    IL_0010:  add
    IL_0011:  call       uint32 [Engine]Engine.MathUtils::Hash(uint32)
    IL_0016:  ldc.i4.5
    IL_0017:  rem.un
    IL_0018:  ldc.i4.0
    IL_0019:  ceq
    IL_001b:  ret
  } // end of method IvyBlock::IsGrowthStopCell

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       263 (0x107)
    .maxstack  11
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.4
    IL_0002:  newarr     valuetype [Engine]Engine.BoundingBox[]
    IL_0007:  dup
    IL_0008:  ldc.i4.0
    IL_0009:  ldc.i4.1
    IL_000a:  newarr     [Engine]Engine.BoundingBox
    IL_000f:  dup
    IL_0010:  ldc.i4.0
    IL_0011:  ldc.r4     0.0
    IL_0016:  ldc.r4     0.0
    IL_001b:  ldc.r4     0.9375
    IL_0020:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0025:  ldc.r4     1.
    IL_002a:  ldc.r4     1.
    IL_002f:  ldc.r4     1.
    IL_0034:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0039:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_003e:  stelem     [Engine]Engine.BoundingBox
    IL_0043:  stelem.ref
    IL_0044:  dup
    IL_0045:  ldc.i4.1
    IL_0046:  ldc.i4.1
    IL_0047:  newarr     [Engine]Engine.BoundingBox
    IL_004c:  dup
    IL_004d:  ldc.i4.0
    IL_004e:  ldc.r4     0.9375
    IL_0053:  ldc.r4     0.0
    IL_0058:  ldc.r4     0.0
    IL_005d:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0062:  ldc.r4     1.
    IL_0067:  ldc.r4     1.
    IL_006c:  ldc.r4     1.
    IL_0071:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0076:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_007b:  stelem     [Engine]Engine.BoundingBox
    IL_0080:  stelem.ref
    IL_0081:  dup
    IL_0082:  ldc.i4.2
    IL_0083:  ldc.i4.1
    IL_0084:  newarr     [Engine]Engine.BoundingBox
    IL_0089:  dup
    IL_008a:  ldc.i4.0
    IL_008b:  ldc.r4     0.0
    IL_0090:  ldc.r4     0.0
    IL_0095:  ldc.r4     0.0
    IL_009a:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_009f:  ldc.r4     1.
    IL_00a4:  ldc.r4     1.
    IL_00a9:  ldc.r4     6.25e-002
    IL_00ae:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00b3:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_00b8:  stelem     [Engine]Engine.BoundingBox
    IL_00bd:  stelem.ref
    IL_00be:  dup
    IL_00bf:  ldc.i4.3
    IL_00c0:  ldc.i4.1
    IL_00c1:  newarr     [Engine]Engine.BoundingBox
    IL_00c6:  dup
    IL_00c7:  ldc.i4.0
    IL_00c8:  ldc.r4     0.0
    IL_00cd:  ldc.r4     0.0
    IL_00d2:  ldc.r4     0.0
    IL_00d7:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00dc:  ldc.r4     6.25e-002
    IL_00e1:  ldc.r4     1.
    IL_00e6:  ldc.r4     1.
    IL_00eb:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00f0:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_00f5:  stelem     [Engine]Engine.BoundingBox
    IL_00fa:  stelem.ref
    IL_00fb:  stfld      valuetype [Engine]Engine.BoundingBox[][] Game.IvyBlock::m_boundingBoxes
    IL_0100:  ldarg.0
    IL_0101:  call       instance void Game.Block::.ctor()
    IL_0106:  ret
  } // end of method IvyBlock::.ctor

} // end of class Game.IvyBlock