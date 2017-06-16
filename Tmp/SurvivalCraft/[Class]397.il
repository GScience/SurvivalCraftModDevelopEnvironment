.class public auto ansi beforefieldinit Game.TargetBlock
       extends Game.MountedElectricElementBlock
{
  .field public static literal int32 Index = int32(0x000000C7)
  .field private valuetype [Engine]Engine.BoundingBox[][] m_boundingBoxes
  .method public hidebysig virtual instance valuetype [Engine]Engine.BoundingBox[] 
          GetCustomCollisionBoxes(class Game.SubsystemTerrain terrain,
                                  int32 'value') cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       int32 Game.TargetBlock::GetMountingFace(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.0
    IL_000e:  blt.s      IL_001d

    IL_0010:  ldloc.0
    IL_0011:  ldc.i4.4
    IL_0012:  bge.s      IL_001d

    IL_0014:  ldarg.0
    IL_0015:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.TargetBlock::m_boundingBoxes
    IL_001a:  ldloc.0
    IL_001b:  ldelem.ref
    IL_001c:  ret

    IL_001d:  ldarg.0
    IL_001e:  ldarg.1
    IL_001f:  ldarg.2
    IL_0020:  call       instance valuetype [Engine]Engine.BoundingBox[] Game.Block::GetCustomCollisionBoxes(class Game.SubsystemTerrain,
                                                                                                             int32)
    IL_0025:  ret
  } // end of method TargetBlock::GetCustomCollisionBoxes

  .method public hidebysig virtual instance valuetype Game.BlockPlacementData 
          GetPlacementValue(class Game.SubsystemTerrain terrain,
                            class Game.ComponentMiner componentMiner,
                            int32 'value',
                            valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       75 (0x4b)
    .maxstack  5
    .locals init (valuetype Game.BlockPlacementData V_0)
    IL_0000:  ldloca.s   V_0
    IL_0002:  initobj    Game.BlockPlacementData
    IL_0008:  ldarg.s    raycastResult
    IL_000a:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_000f:  ldfld      int32 Game.CellFace::Face
    IL_0014:  ldc.i4.4
    IL_0015:  bge.s      IL_0049

    IL_0017:  ldloca.s   V_0
    IL_0019:  ldarg.s    raycastResult
    IL_001b:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0020:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_0025:  ldloca.s   V_0
    IL_0027:  ldc.i4     0xc7
    IL_002c:  ldc.i4.0
    IL_002d:  ldc.i4.0
    IL_002e:  ldarg.s    raycastResult
    IL_0030:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0035:  ldfld      int32 Game.CellFace::Face
    IL_003a:  call       int32 Game.TargetBlock::SetMountingFace(int32,
                                                                 int32)
    IL_003f:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_0044:  stfld      int32 Game.BlockPlacementData::Value
    IL_0049:  ldloc.0
    IL_004a:  ret
  } // end of method TargetBlock::GetPlacementValue

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       1246 (0x4de)
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
    IL_001b:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0020:  ldarg.3
    IL_0021:  call       int32 Game.TerrainData::ExtractLight(int32)
    IL_0026:  stloc.3
    IL_0027:  call       int32 Game.TargetBlock::GetMountingFace(int32)
    IL_002c:  stloc.s    V_4
    IL_002e:  ldsfld     float32[] Game.LightingManager::LightIntensityByLightValueAndFace
    IL_0033:  ldloc.3
    IL_0034:  ldc.i4.s   16
    IL_0036:  ldloc.s    V_4
    IL_0038:  mul
    IL_0039:  add
    IL_003a:  ldelem.r4
    IL_003b:  stloc.s    V_5
    IL_003d:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0042:  ldloc.s    V_5
    IL_0044:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_0049:  stloc.s    V_6
    IL_004b:  ldloc.s    V_4
    IL_004d:  ldc.i4.2
    IL_004e:  bne.un     IL_0174

    IL_0053:  ldloc.0
    IL_0054:  dup
    IL_0055:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_005a:  ldc.i4.4
    IL_005b:  add
    IL_005c:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_0061:  ldarg.s    x
    IL_0063:  conv.r4
    IL_0064:  ldarg.s    y
    IL_0066:  conv.r4
    IL_0067:  ldarg.s    z
    IL_0069:  ldc.i4.1
    IL_006a:  add
    IL_006b:  conv.r4
    IL_006c:  ldloc.s    V_6
    IL_006e:  ldarg.0
    IL_006f:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_0074:  ldc.i4.0
    IL_0075:  ldloc.0
    IL_0076:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_007b:  ldloc.2
    IL_007c:  ldelema    Game.TerrainVertex
    IL_0081:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_0086:  ldarg.s    x
    IL_0088:  ldc.i4.1
    IL_0089:  add
    IL_008a:  conv.r4
    IL_008b:  ldarg.s    y
    IL_008d:  conv.r4
    IL_008e:  ldarg.s    z
    IL_0090:  ldc.i4.1
    IL_0091:  add
    IL_0092:  conv.r4
    IL_0093:  ldloc.s    V_6
    IL_0095:  ldarg.0
    IL_0096:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_009b:  ldc.i4.1
    IL_009c:  ldloc.0
    IL_009d:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_00a2:  ldloc.2
    IL_00a3:  ldc.i4.1
    IL_00a4:  add
    IL_00a5:  ldelema    Game.TerrainVertex
    IL_00aa:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_00af:  ldarg.s    x
    IL_00b1:  ldc.i4.1
    IL_00b2:  add
    IL_00b3:  conv.r4
    IL_00b4:  ldarg.s    y
    IL_00b6:  ldc.i4.1
    IL_00b7:  add
    IL_00b8:  conv.r4
    IL_00b9:  ldarg.s    z
    IL_00bb:  ldc.i4.1
    IL_00bc:  add
    IL_00bd:  conv.r4
    IL_00be:  ldloc.s    V_6
    IL_00c0:  ldarg.0
    IL_00c1:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_00c6:  ldc.i4.2
    IL_00c7:  ldloc.0
    IL_00c8:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_00cd:  ldloc.2
    IL_00ce:  ldc.i4.2
    IL_00cf:  add
    IL_00d0:  ldelema    Game.TerrainVertex
    IL_00d5:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_00da:  ldarg.s    x
    IL_00dc:  conv.r4
    IL_00dd:  ldarg.s    y
    IL_00df:  ldc.i4.1
    IL_00e0:  add
    IL_00e1:  conv.r4
    IL_00e2:  ldarg.s    z
    IL_00e4:  ldc.i4.1
    IL_00e5:  add
    IL_00e6:  conv.r4
    IL_00e7:  ldloc.s    V_6
    IL_00e9:  ldarg.0
    IL_00ea:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_00ef:  ldc.i4.3
    IL_00f0:  ldloc.0
    IL_00f1:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_00f6:  ldloc.2
    IL_00f7:  ldc.i4.3
    IL_00f8:  add
    IL_00f9:  ldelema    Game.TerrainVertex
    IL_00fe:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_0103:  ldloc.1
    IL_0104:  ldloc.2
    IL_0105:  conv.u2
    IL_0106:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_010b:  ldloc.1
    IL_010c:  ldloc.2
    IL_010d:  ldc.i4.1
    IL_010e:  add
    IL_010f:  conv.u2
    IL_0110:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0115:  ldloc.1
    IL_0116:  ldloc.2
    IL_0117:  ldc.i4.2
    IL_0118:  add
    IL_0119:  conv.u2
    IL_011a:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_011f:  ldloc.1
    IL_0120:  ldloc.2
    IL_0121:  ldc.i4.2
    IL_0122:  add
    IL_0123:  conv.u2
    IL_0124:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0129:  ldloc.1
    IL_012a:  ldloc.2
    IL_012b:  ldc.i4.1
    IL_012c:  add
    IL_012d:  conv.u2
    IL_012e:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0133:  ldloc.1
    IL_0134:  ldloc.2
    IL_0135:  conv.u2
    IL_0136:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_013b:  ldloc.1
    IL_013c:  ldloc.2
    IL_013d:  ldc.i4.2
    IL_013e:  add
    IL_013f:  conv.u2
    IL_0140:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0145:  ldloc.1
    IL_0146:  ldloc.2
    IL_0147:  ldc.i4.3
    IL_0148:  add
    IL_0149:  conv.u2
    IL_014a:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_014f:  ldloc.1
    IL_0150:  ldloc.2
    IL_0151:  conv.u2
    IL_0152:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0157:  ldloc.1
    IL_0158:  ldloc.2
    IL_0159:  conv.u2
    IL_015a:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_015f:  ldloc.1
    IL_0160:  ldloc.2
    IL_0161:  ldc.i4.3
    IL_0162:  add
    IL_0163:  conv.u2
    IL_0164:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0169:  ldloc.1
    IL_016a:  ldloc.2
    IL_016b:  ldc.i4.2
    IL_016c:  add
    IL_016d:  conv.u2
    IL_016e:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0173:  ret

    IL_0174:  ldloc.s    V_4
    IL_0176:  ldc.i4.3
    IL_0177:  bne.un     IL_029d

    IL_017c:  ldloc.0
    IL_017d:  dup
    IL_017e:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0183:  ldc.i4.4
    IL_0184:  add
    IL_0185:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_018a:  ldarg.s    x
    IL_018c:  ldc.i4.1
    IL_018d:  add
    IL_018e:  conv.r4
    IL_018f:  ldarg.s    y
    IL_0191:  conv.r4
    IL_0192:  ldarg.s    z
    IL_0194:  conv.r4
    IL_0195:  ldloc.s    V_6
    IL_0197:  ldarg.0
    IL_0198:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_019d:  ldc.i4.0
    IL_019e:  ldloc.0
    IL_019f:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_01a4:  ldloc.2
    IL_01a5:  ldelema    Game.TerrainVertex
    IL_01aa:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_01af:  ldarg.s    x
    IL_01b1:  ldc.i4.1
    IL_01b2:  add
    IL_01b3:  conv.r4
    IL_01b4:  ldarg.s    y
    IL_01b6:  ldc.i4.1
    IL_01b7:  add
    IL_01b8:  conv.r4
    IL_01b9:  ldarg.s    z
    IL_01bb:  conv.r4
    IL_01bc:  ldloc.s    V_6
    IL_01be:  ldarg.0
    IL_01bf:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_01c4:  ldc.i4.3
    IL_01c5:  ldloc.0
    IL_01c6:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_01cb:  ldloc.2
    IL_01cc:  ldc.i4.1
    IL_01cd:  add
    IL_01ce:  ldelema    Game.TerrainVertex
    IL_01d3:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_01d8:  ldarg.s    x
    IL_01da:  ldc.i4.1
    IL_01db:  add
    IL_01dc:  conv.r4
    IL_01dd:  ldarg.s    y
    IL_01df:  ldc.i4.1
    IL_01e0:  add
    IL_01e1:  conv.r4
    IL_01e2:  ldarg.s    z
    IL_01e4:  ldc.i4.1
    IL_01e5:  add
    IL_01e6:  conv.r4
    IL_01e7:  ldloc.s    V_6
    IL_01e9:  ldarg.0
    IL_01ea:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_01ef:  ldc.i4.2
    IL_01f0:  ldloc.0
    IL_01f1:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_01f6:  ldloc.2
    IL_01f7:  ldc.i4.2
    IL_01f8:  add
    IL_01f9:  ldelema    Game.TerrainVertex
    IL_01fe:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_0203:  ldarg.s    x
    IL_0205:  ldc.i4.1
    IL_0206:  add
    IL_0207:  conv.r4
    IL_0208:  ldarg.s    y
    IL_020a:  conv.r4
    IL_020b:  ldarg.s    z
    IL_020d:  ldc.i4.1
    IL_020e:  add
    IL_020f:  conv.r4
    IL_0210:  ldloc.s    V_6
    IL_0212:  ldarg.0
    IL_0213:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_0218:  ldc.i4.1
    IL_0219:  ldloc.0
    IL_021a:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_021f:  ldloc.2
    IL_0220:  ldc.i4.3
    IL_0221:  add
    IL_0222:  ldelema    Game.TerrainVertex
    IL_0227:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_022c:  ldloc.1
    IL_022d:  ldloc.2
    IL_022e:  conv.u2
    IL_022f:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0234:  ldloc.1
    IL_0235:  ldloc.2
    IL_0236:  ldc.i4.1
    IL_0237:  add
    IL_0238:  conv.u2
    IL_0239:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_023e:  ldloc.1
    IL_023f:  ldloc.2
    IL_0240:  ldc.i4.2
    IL_0241:  add
    IL_0242:  conv.u2
    IL_0243:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0248:  ldloc.1
    IL_0249:  ldloc.2
    IL_024a:  ldc.i4.2
    IL_024b:  add
    IL_024c:  conv.u2
    IL_024d:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0252:  ldloc.1
    IL_0253:  ldloc.2
    IL_0254:  ldc.i4.1
    IL_0255:  add
    IL_0256:  conv.u2
    IL_0257:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_025c:  ldloc.1
    IL_025d:  ldloc.2
    IL_025e:  conv.u2
    IL_025f:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0264:  ldloc.1
    IL_0265:  ldloc.2
    IL_0266:  ldc.i4.2
    IL_0267:  add
    IL_0268:  conv.u2
    IL_0269:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_026e:  ldloc.1
    IL_026f:  ldloc.2
    IL_0270:  ldc.i4.3
    IL_0271:  add
    IL_0272:  conv.u2
    IL_0273:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0278:  ldloc.1
    IL_0279:  ldloc.2
    IL_027a:  conv.u2
    IL_027b:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0280:  ldloc.1
    IL_0281:  ldloc.2
    IL_0282:  conv.u2
    IL_0283:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0288:  ldloc.1
    IL_0289:  ldloc.2
    IL_028a:  ldc.i4.3
    IL_028b:  add
    IL_028c:  conv.u2
    IL_028d:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0292:  ldloc.1
    IL_0293:  ldloc.2
    IL_0294:  ldc.i4.2
    IL_0295:  add
    IL_0296:  conv.u2
    IL_0297:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_029c:  ret

    IL_029d:  ldloc.s    V_4
    IL_029f:  brtrue     IL_03bd

    IL_02a4:  ldloc.0
    IL_02a5:  dup
    IL_02a6:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_02ab:  ldc.i4.4
    IL_02ac:  add
    IL_02ad:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_02b2:  ldarg.s    x
    IL_02b4:  conv.r4
    IL_02b5:  ldarg.s    y
    IL_02b7:  conv.r4
    IL_02b8:  ldarg.s    z
    IL_02ba:  conv.r4
    IL_02bb:  ldloc.s    V_6
    IL_02bd:  ldarg.0
    IL_02be:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_02c3:  ldc.i4.0
    IL_02c4:  ldloc.0
    IL_02c5:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_02ca:  ldloc.2
    IL_02cb:  ldelema    Game.TerrainVertex
    IL_02d0:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_02d5:  ldarg.s    x
    IL_02d7:  ldc.i4.1
    IL_02d8:  add
    IL_02d9:  conv.r4
    IL_02da:  ldarg.s    y
    IL_02dc:  conv.r4
    IL_02dd:  ldarg.s    z
    IL_02df:  conv.r4
    IL_02e0:  ldloc.s    V_6
    IL_02e2:  ldarg.0
    IL_02e3:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_02e8:  ldc.i4.1
    IL_02e9:  ldloc.0
    IL_02ea:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_02ef:  ldloc.2
    IL_02f0:  ldc.i4.1
    IL_02f1:  add
    IL_02f2:  ldelema    Game.TerrainVertex
    IL_02f7:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_02fc:  ldarg.s    x
    IL_02fe:  ldc.i4.1
    IL_02ff:  add
    IL_0300:  conv.r4
    IL_0301:  ldarg.s    y
    IL_0303:  ldc.i4.1
    IL_0304:  add
    IL_0305:  conv.r4
    IL_0306:  ldarg.s    z
    IL_0308:  conv.r4
    IL_0309:  ldloc.s    V_6
    IL_030b:  ldarg.0
    IL_030c:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_0311:  ldc.i4.2
    IL_0312:  ldloc.0
    IL_0313:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0318:  ldloc.2
    IL_0319:  ldc.i4.2
    IL_031a:  add
    IL_031b:  ldelema    Game.TerrainVertex
    IL_0320:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_0325:  ldarg.s    x
    IL_0327:  conv.r4
    IL_0328:  ldarg.s    y
    IL_032a:  ldc.i4.1
    IL_032b:  add
    IL_032c:  conv.r4
    IL_032d:  ldarg.s    z
    IL_032f:  conv.r4
    IL_0330:  ldloc.s    V_6
    IL_0332:  ldarg.0
    IL_0333:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_0338:  ldc.i4.3
    IL_0339:  ldloc.0
    IL_033a:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_033f:  ldloc.2
    IL_0340:  ldc.i4.3
    IL_0341:  add
    IL_0342:  ldelema    Game.TerrainVertex
    IL_0347:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_034c:  ldloc.1
    IL_034d:  ldloc.2
    IL_034e:  conv.u2
    IL_034f:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0354:  ldloc.1
    IL_0355:  ldloc.2
    IL_0356:  ldc.i4.2
    IL_0357:  add
    IL_0358:  conv.u2
    IL_0359:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_035e:  ldloc.1
    IL_035f:  ldloc.2
    IL_0360:  ldc.i4.1
    IL_0361:  add
    IL_0362:  conv.u2
    IL_0363:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0368:  ldloc.1
    IL_0369:  ldloc.2
    IL_036a:  ldc.i4.1
    IL_036b:  add
    IL_036c:  conv.u2
    IL_036d:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0372:  ldloc.1
    IL_0373:  ldloc.2
    IL_0374:  ldc.i4.2
    IL_0375:  add
    IL_0376:  conv.u2
    IL_0377:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_037c:  ldloc.1
    IL_037d:  ldloc.2
    IL_037e:  conv.u2
    IL_037f:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0384:  ldloc.1
    IL_0385:  ldloc.2
    IL_0386:  ldc.i4.2
    IL_0387:  add
    IL_0388:  conv.u2
    IL_0389:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_038e:  ldloc.1
    IL_038f:  ldloc.2
    IL_0390:  conv.u2
    IL_0391:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0396:  ldloc.1
    IL_0397:  ldloc.2
    IL_0398:  ldc.i4.3
    IL_0399:  add
    IL_039a:  conv.u2
    IL_039b:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_03a0:  ldloc.1
    IL_03a1:  ldloc.2
    IL_03a2:  ldc.i4.3
    IL_03a3:  add
    IL_03a4:  conv.u2
    IL_03a5:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_03aa:  ldloc.1
    IL_03ab:  ldloc.2
    IL_03ac:  conv.u2
    IL_03ad:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_03b2:  ldloc.1
    IL_03b3:  ldloc.2
    IL_03b4:  ldc.i4.2
    IL_03b5:  add
    IL_03b6:  conv.u2
    IL_03b7:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_03bc:  ret

    IL_03bd:  ldloc.s    V_4
    IL_03bf:  ldc.i4.1
    IL_03c0:  bne.un     IL_04dd

    IL_03c5:  ldloc.0
    IL_03c6:  dup
    IL_03c7:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_03cc:  ldc.i4.4
    IL_03cd:  add
    IL_03ce:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Count(int32)
    IL_03d3:  ldarg.s    x
    IL_03d5:  conv.r4
    IL_03d6:  ldarg.s    y
    IL_03d8:  conv.r4
    IL_03d9:  ldarg.s    z
    IL_03db:  conv.r4
    IL_03dc:  ldloc.s    V_6
    IL_03de:  ldarg.0
    IL_03df:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_03e4:  ldc.i4.0
    IL_03e5:  ldloc.0
    IL_03e6:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_03eb:  ldloc.2
    IL_03ec:  ldelema    Game.TerrainVertex
    IL_03f1:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_03f6:  ldarg.s    x
    IL_03f8:  conv.r4
    IL_03f9:  ldarg.s    y
    IL_03fb:  ldc.i4.1
    IL_03fc:  add
    IL_03fd:  conv.r4
    IL_03fe:  ldarg.s    z
    IL_0400:  conv.r4
    IL_0401:  ldloc.s    V_6
    IL_0403:  ldarg.0
    IL_0404:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_0409:  ldc.i4.3
    IL_040a:  ldloc.0
    IL_040b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0410:  ldloc.2
    IL_0411:  ldc.i4.1
    IL_0412:  add
    IL_0413:  ldelema    Game.TerrainVertex
    IL_0418:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_041d:  ldarg.s    x
    IL_041f:  conv.r4
    IL_0420:  ldarg.s    y
    IL_0422:  ldc.i4.1
    IL_0423:  add
    IL_0424:  conv.r4
    IL_0425:  ldarg.s    z
    IL_0427:  ldc.i4.1
    IL_0428:  add
    IL_0429:  conv.r4
    IL_042a:  ldloc.s    V_6
    IL_042c:  ldarg.0
    IL_042d:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_0432:  ldc.i4.2
    IL_0433:  ldloc.0
    IL_0434:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0439:  ldloc.2
    IL_043a:  ldc.i4.2
    IL_043b:  add
    IL_043c:  ldelema    Game.TerrainVertex
    IL_0441:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_0446:  ldarg.s    x
    IL_0448:  conv.r4
    IL_0449:  ldarg.s    y
    IL_044b:  conv.r4
    IL_044c:  ldarg.s    z
    IL_044e:  ldc.i4.1
    IL_044f:  add
    IL_0450:  conv.r4
    IL_0451:  ldloc.s    V_6
    IL_0453:  ldarg.0
    IL_0454:  ldfld      int32 Game.Block::DefaultTextureSlot
    IL_0459:  ldc.i4.1
    IL_045a:  ldloc.0
    IL_045b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0460:  ldloc.2
    IL_0461:  ldc.i4.3
    IL_0462:  add
    IL_0463:  ldelema    Game.TerrainVertex
    IL_0468:  call       void Game.BlockGeometryGenerator::SetupLitCornerVertex(float32,
                                                                                float32,
                                                                                float32,
                                                                                valuetype [Engine]Engine.Color,
                                                                                int32,
                                                                                int32,
                                                                                valuetype Game.TerrainVertex&)
    IL_046d:  ldloc.1
    IL_046e:  ldloc.2
    IL_046f:  conv.u2
    IL_0470:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0475:  ldloc.1
    IL_0476:  ldloc.2
    IL_0477:  ldc.i4.2
    IL_0478:  add
    IL_0479:  conv.u2
    IL_047a:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_047f:  ldloc.1
    IL_0480:  ldloc.2
    IL_0481:  ldc.i4.1
    IL_0482:  add
    IL_0483:  conv.u2
    IL_0484:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0489:  ldloc.1
    IL_048a:  ldloc.2
    IL_048b:  ldc.i4.1
    IL_048c:  add
    IL_048d:  conv.u2
    IL_048e:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_0493:  ldloc.1
    IL_0494:  ldloc.2
    IL_0495:  ldc.i4.2
    IL_0496:  add
    IL_0497:  conv.u2
    IL_0498:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_049d:  ldloc.1
    IL_049e:  ldloc.2
    IL_049f:  conv.u2
    IL_04a0:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_04a5:  ldloc.1
    IL_04a6:  ldloc.2
    IL_04a7:  ldc.i4.2
    IL_04a8:  add
    IL_04a9:  conv.u2
    IL_04aa:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_04af:  ldloc.1
    IL_04b0:  ldloc.2
    IL_04b1:  conv.u2
    IL_04b2:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_04b7:  ldloc.1
    IL_04b8:  ldloc.2
    IL_04b9:  ldc.i4.3
    IL_04ba:  add
    IL_04bb:  conv.u2
    IL_04bc:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_04c1:  ldloc.1
    IL_04c2:  ldloc.2
    IL_04c3:  ldc.i4.3
    IL_04c4:  add
    IL_04c5:  conv.u2
    IL_04c6:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_04cb:  ldloc.1
    IL_04cc:  ldloc.2
    IL_04cd:  conv.u2
    IL_04ce:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_04d3:  ldloc.1
    IL_04d4:  ldloc.2
    IL_04d5:  ldc.i4.2
    IL_04d6:  add
    IL_04d7:  conv.u2
    IL_04d8:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_04dd:  ret
  } // end of method TargetBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.2
    IL_0002:  ldarg.3
    IL_0003:  ldarg.s    matrix
    IL_0005:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_000a:  ldarg.s    environmentData
    IL_000c:  call       void Game.BlocksManager::DrawFlatBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                int32,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Color,
                                                                class Game.DrawBlockEnvironmentData)
    IL_0011:  ret
  } // end of method TargetBlock::DrawBlock

  .method public hidebysig static int32  GetMountingFace(int32 data) cil managed
  {
    // 代码大小       4 (0x4)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.3
    IL_0002:  and
    IL_0003:  ret
  } // end of method TargetBlock::GetMountingFace

  .method public hidebysig static int32  SetMountingFace(int32 data,
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
  } // end of method TargetBlock::SetMountingFace

  .method public hidebysig virtual instance int32 
          GetFace(int32 'value') cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       int32 Game.TargetBlock::GetMountingFace(int32)
    IL_000b:  ret
  } // end of method TargetBlock::GetFace

  .method public hidebysig virtual instance class Game.ElectricElement 
          CreateElectricElement(class Game.SubsystemElectricity subsystemElectricity,
                                int32 'value',
                                int32 x,
                                int32 y,
                                int32 z) cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.3
    IL_0002:  ldarg.s    y
    IL_0004:  ldarg.s    z
    IL_0006:  ldarg.0
    IL_0007:  ldarg.2
    IL_0008:  callvirt   instance int32 Game.MountedElectricElementBlock::GetFace(int32)
    IL_000d:  newobj     instance void Game.CellFace::.ctor(int32,
                                                            int32,
                                                            int32,
                                                            int32)
    IL_0012:  newobj     instance void Game.TargetElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                         valuetype Game.CellFace)
    IL_0017:  ret
  } // end of method TargetBlock::CreateElectricElement

  .method public hidebysig virtual instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType> 
          GetConnectorType(class Game.SubsystemTerrain terrain,
                           int32 'value',
                           int32 face,
                           int32 connectorFace,
                           int32 x,
                           int32 y,
                           int32 z) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  3
    .locals init (int32 V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> V_1,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.2
    IL_0002:  callvirt   instance int32 Game.MountedElectricElementBlock::GetFace(int32)
    IL_0007:  stloc.0
    IL_0008:  ldarg.3
    IL_0009:  ldloc.0
    IL_000a:  bne.un.s   IL_0026

    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.0
    IL_000e:  ldarg.s    connectorFace
    IL_0010:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection> Game.SubsystemElectricity::GetConnectorDirection(int32,
                                                                                                                                                                 int32,
                                                                                                                                                                 int32)
    IL_0015:  stloc.1
    IL_0016:  ldloca.s   V_1
    IL_0018:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorDirection>::get_HasValue()
    IL_001d:  brfalse.s  IL_0026

    IL_001f:  ldc.i4.1
    IL_0020:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>::.ctor(!0)
    IL_0025:  ret

    IL_0026:  ldloca.s   V_2
    IL_0028:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType>
    IL_002e:  ldloc.2
    IL_002f:  ret
  } // end of method TargetBlock::GetConnectorType

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
    IL_001b:  ldc.r4     0.0
    IL_0020:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0025:  ldc.r4     1.
    IL_002a:  ldc.r4     1.
    IL_002f:  ldc.r4     6.25e-002
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
    IL_004e:  ldc.r4     0.0
    IL_0053:  ldc.r4     0.0
    IL_0058:  ldc.r4     0.0
    IL_005d:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0062:  ldc.r4     6.25e-002
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
    IL_0095:  ldc.r4     0.9375
    IL_009a:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_009f:  ldc.r4     1.
    IL_00a4:  ldc.r4     1.
    IL_00a9:  ldc.r4     1.
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
    IL_00c8:  ldc.r4     0.9375
    IL_00cd:  ldc.r4     0.0
    IL_00d2:  ldc.r4     0.0
    IL_00d7:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00dc:  ldc.r4     1.
    IL_00e1:  ldc.r4     1.
    IL_00e6:  ldc.r4     1.
    IL_00eb:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00f0:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_00f5:  stelem     [Engine]Engine.BoundingBox
    IL_00fa:  stelem.ref
    IL_00fb:  stfld      valuetype [Engine]Engine.BoundingBox[][] Game.TargetBlock::m_boundingBoxes
    IL_0100:  ldarg.0
    IL_0101:  call       instance void Game.MountedElectricElementBlock::.ctor()
    IL_0106:  ret
  } // end of method TargetBlock::.ctor

} // end of class Game.TargetBlock