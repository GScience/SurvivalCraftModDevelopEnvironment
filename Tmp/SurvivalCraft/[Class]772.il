.class public auto ansi beforefieldinit Game.TerrainContentsGeneratorFlat
       extends [System.Runtime]System.Object
       implements Game.ITerrainContentsGenerator
{
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.WorldInfo m_worldInfo
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemTerrain subsystemTerrain) cil managed
  {
    // 代码大小       39 (0x27)
    .maxstack  2
    .locals init (class Game.SubsystemGameInfo V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      class Game.SubsystemTerrain Game.TerrainContentsGeneratorFlat::m_subsystemTerrain
    IL_000d:  ldarg.1
    IL_000e:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0013:  ldc.i4.1
    IL_0014:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_0019:  stloc.0
    IL_001a:  ldarg.0
    IL_001b:  ldloc.0
    IL_001c:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_0021:  stfld      class Game.WorldInfo Game.TerrainContentsGeneratorFlat::m_worldInfo
    IL_0026:  ret
  } // end of method TerrainContentsGeneratorFlat::.ctor

  .method public hidebysig newslot specialname virtual final 
          instance valuetype [Engine]Engine.Vector2 
          get_OceanCorner() cil managed
  {
    // 代码大小       16 (0x10)
    .maxstack  8
    IL_0000:  ldc.r4     2000.
    IL_0005:  ldc.r4     2000.
    IL_000a:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_000f:  ret
  } // end of method TerrainContentsGeneratorFlat::get_OceanCorner

  .method public hidebysig newslot virtual final 
          instance void  GenerateChunkContentsPass1(int32 chunkX,
                                                    int32 chunkZ) cil managed
  {
    // 代码大小       410 (0x19a)
    .maxstack  6
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             valuetype [Engine]Engine.Vector2 V_5,
             int32 V_6,
             int32 V_7,
             bool V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11)
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.s   16
    IL_0003:  mul
    IL_0004:  dup
    IL_0005:  ldc.i4.s   16
    IL_0007:  add
    IL_0008:  stloc.0
    IL_0009:  ldc.i4.0
    IL_000a:  stloc.1
    IL_000b:  ldc.i4     0x80
    IL_0010:  stloc.2
    IL_0011:  ldarg.2
    IL_0012:  ldc.i4.s   16
    IL_0014:  mul
    IL_0015:  stloc.3
    IL_0016:  ldloc.3
    IL_0017:  ldc.i4.s   16
    IL_0019:  add
    IL_001a:  stloc.s    V_4
    IL_001c:  ldarg.0
    IL_001d:  call       instance valuetype [Engine]Engine.Vector2 Game.TerrainContentsGeneratorFlat::get_OceanCorner()
    IL_0022:  stloc.s    V_5
    IL_0024:  stloc.s    V_6
    IL_0026:  br         IL_0191

    IL_002b:  ldloc.3
    IL_002c:  stloc.s    V_7
    IL_002e:  br         IL_0182

    IL_0033:  ldarg.0
    IL_0034:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGeneratorFlat::m_subsystemTerrain
    IL_0039:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_003e:  ldloc.s    V_6
    IL_0040:  ldloc.s    V_7
    IL_0042:  ldarg.0
    IL_0043:  ldloc.s    V_6
    IL_0045:  conv.r4
    IL_0046:  ldloc.s    V_7
    IL_0048:  conv.r4
    IL_0049:  call       instance int32 Game.TerrainContentsGeneratorFlat::CalculateTemperature(float32,
                                                                                                float32)
    IL_004e:  callvirt   instance void Game.TerrainData::SetTemperatureFast(int32,
                                                                            int32,
                                                                            int32)
    IL_0053:  ldarg.0
    IL_0054:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGeneratorFlat::m_subsystemTerrain
    IL_0059:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_005e:  ldloc.s    V_6
    IL_0060:  ldloc.s    V_7
    IL_0062:  ldarg.0
    IL_0063:  ldloc.s    V_6
    IL_0065:  conv.r4
    IL_0066:  ldloc.s    V_7
    IL_0068:  conv.r4
    IL_0069:  call       instance int32 Game.TerrainContentsGeneratorFlat::CalculateHumidity(float32,
                                                                                             float32)
    IL_006e:  callvirt   instance void Game.TerrainData::SetHumidityFast(int32,
                                                                         int32,
                                                                         int32)
    IL_0073:  ldloc.s    V_6
    IL_0075:  conv.r4
    IL_0076:  ldloc.s    V_5
    IL_0078:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_007d:  ble.s      IL_0090

    IL_007f:  ldloc.s    V_7
    IL_0081:  conv.r4
    IL_0082:  ldloc.s    V_5
    IL_0084:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0089:  cgt.un
    IL_008b:  ldc.i4.0
    IL_008c:  ceq
    IL_008e:  br.s       IL_0091

    IL_0090:  ldc.i4.1
    IL_0091:  stloc.s    V_8
    IL_0093:  ldarg.0
    IL_0094:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGeneratorFlat::m_subsystemTerrain
    IL_0099:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_009e:  ldloc.s    V_6
    IL_00a0:  ldc.i4.0
    IL_00a1:  ldloc.s    V_7
    IL_00a3:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_00a8:  stloc.s    V_9
    IL_00aa:  ldloc.1
    IL_00ab:  stloc.s    V_10
    IL_00ad:  br         IL_0174

    IL_00b2:  ldc.i4.0
    IL_00b3:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_00b8:  stloc.s    V_11
    IL_00ba:  ldloc.s    V_8
    IL_00bc:  brfalse.s  IL_00f3

    IL_00be:  ldloc.s    V_10
    IL_00c0:  ldc.i4.2
    IL_00c1:  bge.s      IL_00d0

    IL_00c3:  ldc.i4.1
    IL_00c4:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_00c9:  stloc.s    V_11
    IL_00cb:  br         IL_0157

    IL_00d0:  ldloc.s    V_10
    IL_00d2:  ldarg.0
    IL_00d3:  ldfld      class Game.WorldInfo Game.TerrainContentsGeneratorFlat::m_worldInfo
    IL_00d8:  ldfld      int32 Game.WorldInfo::TerrainLevel
    IL_00dd:  bgt.s      IL_0157

    IL_00df:  ldarg.0
    IL_00e0:  ldfld      class Game.WorldInfo Game.TerrainContentsGeneratorFlat::m_worldInfo
    IL_00e5:  ldfld      int32 Game.WorldInfo::TerrainOceanBlockIndex
    IL_00ea:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_00ef:  stloc.s    V_11
    IL_00f1:  br.s       IL_0157

    IL_00f3:  ldloc.s    V_10
    IL_00f5:  ldc.i4.2
    IL_00f6:  bge.s      IL_0102

    IL_00f8:  ldc.i4.1
    IL_00f9:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_00fe:  stloc.s    V_11
    IL_0100:  br.s       IL_0157

    IL_0102:  ldloc.s    V_10
    IL_0104:  ldarg.0
    IL_0105:  ldfld      class Game.WorldInfo Game.TerrainContentsGeneratorFlat::m_worldInfo
    IL_010a:  ldfld      int32 Game.WorldInfo::TerrainLevel
    IL_010f:  bge.s      IL_0136

    IL_0111:  ldarg.0
    IL_0112:  ldfld      class Game.WorldInfo Game.TerrainContentsGeneratorFlat::m_worldInfo
    IL_0117:  ldfld      int32 Game.WorldInfo::TerrainBlockIndex
    IL_011c:  ldc.i4.8
    IL_011d:  beq.s      IL_012c

    IL_011f:  ldarg.0
    IL_0120:  ldfld      class Game.WorldInfo Game.TerrainContentsGeneratorFlat::m_worldInfo
    IL_0125:  ldfld      int32 Game.WorldInfo::TerrainBlockIndex
    IL_012a:  br.s       IL_012d

    IL_012c:  ldc.i4.2
    IL_012d:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_0132:  stloc.s    V_11
    IL_0134:  br.s       IL_0157

    IL_0136:  ldloc.s    V_10
    IL_0138:  ldarg.0
    IL_0139:  ldfld      class Game.WorldInfo Game.TerrainContentsGeneratorFlat::m_worldInfo
    IL_013e:  ldfld      int32 Game.WorldInfo::TerrainLevel
    IL_0143:  bne.un.s   IL_0157

    IL_0145:  ldarg.0
    IL_0146:  ldfld      class Game.WorldInfo Game.TerrainContentsGeneratorFlat::m_worldInfo
    IL_014b:  ldfld      int32 Game.WorldInfo::TerrainBlockIndex
    IL_0150:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_0155:  stloc.s    V_11
    IL_0157:  ldarg.0
    IL_0158:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGeneratorFlat::m_subsystemTerrain
    IL_015d:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0162:  ldloc.s    V_9
    IL_0164:  ldloc.s    V_10
    IL_0166:  add
    IL_0167:  ldloc.s    V_11
    IL_0169:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32)
    IL_016e:  ldloc.s    V_10
    IL_0170:  ldc.i4.1
    IL_0171:  add
    IL_0172:  stloc.s    V_10
    IL_0174:  ldloc.s    V_10
    IL_0176:  ldloc.2
    IL_0177:  blt        IL_00b2

    IL_017c:  ldloc.s    V_7
    IL_017e:  ldc.i4.1
    IL_017f:  add
    IL_0180:  stloc.s    V_7
    IL_0182:  ldloc.s    V_7
    IL_0184:  ldloc.s    V_4
    IL_0186:  blt        IL_0033

    IL_018b:  ldloc.s    V_6
    IL_018d:  ldc.i4.1
    IL_018e:  add
    IL_018f:  stloc.s    V_6
    IL_0191:  ldloc.s    V_6
    IL_0193:  ldloc.0
    IL_0194:  blt        IL_002b

    IL_0199:  ret
  } // end of method TerrainContentsGeneratorFlat::GenerateChunkContentsPass1

  .method public hidebysig newslot virtual final 
          instance void  GenerateChunkContentsPass2(int32 chunkX,
                                                    int32 chunkZ) cil managed
  {
    // 代码大小       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Game.TerrainContentsGeneratorFlat::UpdateFluidIsTop(int32,
                                                                                           int32)
    IL_0008:  ret
  } // end of method TerrainContentsGeneratorFlat::GenerateChunkContentsPass2

  .method public hidebysig newslot virtual final 
          instance void  GenerateChunkContentsPass3(int32 chunkX,
                                                    int32 chunkZ) cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method TerrainContentsGeneratorFlat::GenerateChunkContentsPass3

  .method public hidebysig newslot virtual final 
          instance void  GenerateChunkContentsPass4(int32 chunkX,
                                                    int32 chunkZ) cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method TerrainContentsGeneratorFlat::GenerateChunkContentsPass4

  .method public hidebysig newslot virtual final 
          instance float32  CalculateOceanShoreX(float32 z) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [Engine]Engine.Vector2 Game.TerrainContentsGeneratorFlat::get_OceanCorner()
    IL_0006:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_000b:  ret
  } // end of method TerrainContentsGeneratorFlat::CalculateOceanShoreX

  .method public hidebysig newslot virtual final 
          instance float32  CalculateOceanShoreZ(float32 x) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [Engine]Engine.Vector2 Game.TerrainContentsGeneratorFlat::get_OceanCorner()
    IL_0006:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_000b:  ret
  } // end of method TerrainContentsGeneratorFlat::CalculateOceanShoreZ

  .method public hidebysig newslot virtual final 
          instance float32  CalculateOceanShoreDistance(float32 x,
                                                        float32 z) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  3
    .locals init (float32 V_0,
             float32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.2
    IL_0002:  call       instance float32 Game.TerrainContentsGeneratorFlat::CalculateOceanShoreX(float32)
    IL_0007:  stloc.0
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  call       instance float32 Game.TerrainContentsGeneratorFlat::CalculateOceanShoreZ(float32)
    IL_000f:  stloc.1
    IL_0010:  ldarg.1
    IL_0011:  ldloc.0
    IL_0012:  sub
    IL_0013:  ldarg.2
    IL_0014:  ldloc.1
    IL_0015:  sub
    IL_0016:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_001b:  ret
  } // end of method TerrainContentsGeneratorFlat::CalculateOceanShoreDistance

  .method public hidebysig newslot virtual final 
          instance float32  CalculateHeight(float32 x,
                                            float32 z) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.WorldInfo Game.TerrainContentsGeneratorFlat::m_worldInfo
    IL_0006:  ldfld      int32 Game.WorldInfo::TerrainLevel
    IL_000b:  conv.r4
    IL_000c:  ret
  } // end of method TerrainContentsGeneratorFlat::CalculateHeight

  .method public hidebysig newslot virtual final 
          instance int32  CalculateTemperature(float32 x,
                                               float32 z) cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldc.i4.s   12
    IL_0002:  ldarg.0
    IL_0003:  ldfld      class Game.WorldInfo Game.TerrainContentsGeneratorFlat::m_worldInfo
    IL_0008:  ldfld      float32 Game.WorldInfo::TemperatureOffset
    IL_000d:  conv.i4
    IL_000e:  add
    IL_000f:  ldc.i4.0
    IL_0010:  ldc.i4.s   15
    IL_0012:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_0017:  ret
  } // end of method TerrainContentsGeneratorFlat::CalculateTemperature

  .method public hidebysig newslot virtual final 
          instance int32  CalculateHumidity(float32 x,
                                            float32 z) cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldc.i4.s   12
    IL_0002:  ldarg.0
    IL_0003:  ldfld      class Game.WorldInfo Game.TerrainContentsGeneratorFlat::m_worldInfo
    IL_0008:  ldfld      float32 Game.WorldInfo::HumidityOffset
    IL_000d:  conv.i4
    IL_000e:  add
    IL_000f:  ldc.i4.0
    IL_0010:  ldc.i4.s   15
    IL_0012:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_0017:  ret
  } // end of method TerrainContentsGeneratorFlat::CalculateHumidity

  .method public hidebysig newslot virtual final 
          instance float32  CalculateMountainRangeFactor(float32 x,
                                                         float32 z) cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldc.r4     0.0
    IL_0005:  ret
  } // end of method TerrainContentsGeneratorFlat::CalculateMountainRangeFactor

  .method private hidebysig instance void 
          UpdateFluidIsTop(int32 chunkX,
                           int32 chunkZ) cil managed
  {
    // 代码大小       211 (0xd3)
    .maxstack  6
    .locals init (class Game.TerrainData V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12,
             int32 V_13)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGeneratorFlat::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  stloc.0
    IL_000c:  ldarg.1
    IL_000d:  ldc.i4.s   16
    IL_000f:  mul
    IL_0010:  dup
    IL_0011:  ldc.i4.s   16
    IL_0013:  add
    IL_0014:  stloc.1
    IL_0015:  ldc.i4.0
    IL_0016:  stloc.2
    IL_0017:  ldc.i4     0x80
    IL_001c:  stloc.3
    IL_001d:  ldarg.2
    IL_001e:  ldc.i4.s   16
    IL_0020:  mul
    IL_0021:  stloc.s    V_4
    IL_0023:  ldloc.s    V_4
    IL_0025:  ldc.i4.s   16
    IL_0027:  add
    IL_0028:  stloc.s    V_5
    IL_002a:  stloc.s    V_6
    IL_002c:  br         IL_00ca

    IL_0031:  ldloc.s    V_4
    IL_0033:  stloc.s    V_7
    IL_0035:  br         IL_00bb

    IL_003a:  ldloc.0
    IL_003b:  ldloc.s    V_6
    IL_003d:  ldloc.3
    IL_003e:  ldc.i4.1
    IL_003f:  sub
    IL_0040:  ldloc.s    V_7
    IL_0042:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_0047:  stloc.s    V_8
    IL_0049:  ldc.i4.0
    IL_004a:  stloc.s    V_9
    IL_004c:  ldloc.3
    IL_004d:  ldc.i4.1
    IL_004e:  sub
    IL_004f:  stloc.s    V_10
    IL_0051:  br.s       IL_00b0

    IL_0053:  ldloc.0
    IL_0054:  ldloc.s    V_8
    IL_0056:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32)
    IL_005b:  stloc.s    V_11
    IL_005d:  ldloc.s    V_11
    IL_005f:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0064:  stloc.s    V_12
    IL_0066:  ldloc.s    V_12
    IL_0068:  brfalse.s  IL_00a0

    IL_006a:  ldloc.s    V_12
    IL_006c:  ldloc.s    V_9
    IL_006e:  beq.s      IL_00a0

    IL_0070:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0075:  ldloc.s    V_12
    IL_0077:  ldelem.ref
    IL_0078:  isinst     Game.FluidBlock
    IL_007d:  brfalse.s  IL_00a0

    IL_007f:  ldloc.s    V_11
    IL_0081:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0086:  stloc.s    V_13
    IL_0088:  ldloc.0
    IL_0089:  ldloc.s    V_8
    IL_008b:  ldloc.s    V_12
    IL_008d:  ldc.i4.0
    IL_008e:  ldloc.s    V_13
    IL_0090:  ldc.i4.1
    IL_0091:  call       int32 Game.FluidBlock::SetIsTop(int32,
                                                         bool)
    IL_0096:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_009b:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32)
    IL_00a0:  ldloc.s    V_12
    IL_00a2:  stloc.s    V_9
    IL_00a4:  ldloc.s    V_10
    IL_00a6:  ldc.i4.1
    IL_00a7:  sub
    IL_00a8:  stloc.s    V_10
    IL_00aa:  ldloc.s    V_8
    IL_00ac:  ldc.i4.1
    IL_00ad:  sub
    IL_00ae:  stloc.s    V_8
    IL_00b0:  ldloc.s    V_10
    IL_00b2:  ldloc.2
    IL_00b3:  bge.s      IL_0053

    IL_00b5:  ldloc.s    V_7
    IL_00b7:  ldc.i4.1
    IL_00b8:  add
    IL_00b9:  stloc.s    V_7
    IL_00bb:  ldloc.s    V_7
    IL_00bd:  ldloc.s    V_5
    IL_00bf:  blt        IL_003a

    IL_00c4:  ldloc.s    V_6
    IL_00c6:  ldc.i4.1
    IL_00c7:  add
    IL_00c8:  stloc.s    V_6
    IL_00ca:  ldloc.s    V_6
    IL_00cc:  ldloc.1
    IL_00cd:  blt        IL_0031

    IL_00d2:  ret
  } // end of method TerrainContentsGeneratorFlat::UpdateFluidIsTop

  .property instance valuetype [Engine]Engine.Vector2
          OceanCorner()
  {
    .get instance valuetype [Engine]Engine.Vector2 Game.TerrainContentsGeneratorFlat::get_OceanCorner()
  } // end of property TerrainContentsGeneratorFlat::OceanCorner
} // end of class Game.TerrainContentsGeneratorFlat