.class public auto ansi beforefieldinit Game.TerrainContentsGeneratorFlat
       extends [System.Runtime]System.Object
       implements Game.ITerrainContentsGenerator
{
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.WorldSettings m_worldSettings
  .field private valuetype [Engine]Engine.Vector2 m_oceanCorner
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemTerrain subsystemTerrain) cil managed
  {
    // 代码大小       106 (0x6a)
    .maxstack  3
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
    IL_001c:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0021:  stfld      class Game.WorldSettings Game.TerrainContentsGeneratorFlat::m_worldSettings
    IL_0026:  ldloc.0
    IL_0027:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_002c:  ldfld      string Game.WorldSettings::OriginalSerializationVersion
    IL_0031:  ldstr      "2.1"
    IL_0036:  call       int32 [System.Runtime]System.String::CompareOrdinal(string,
                                                                             string)
    IL_003b:  ldc.i4.0
    IL_003c:  bge.s      IL_0054

    IL_003e:  ldarg.0
    IL_003f:  ldc.r4     2000.
    IL_0044:  ldc.r4     2000.
    IL_0049:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_004e:  stfld      valuetype [Engine]Engine.Vector2 Game.TerrainContentsGeneratorFlat::m_oceanCorner
    IL_0053:  ret

    IL_0054:  ldarg.0
    IL_0055:  ldc.r4     -200.
    IL_005a:  ldc.r4     -200.
    IL_005f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0064:  stfld      valuetype [Engine]Engine.Vector2 Game.TerrainContentsGeneratorFlat::m_oceanCorner
    IL_0069:  ret
  } // end of method TerrainContentsGeneratorFlat::.ctor

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_OceanLevel() cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.WorldSettings Game.TerrainContentsGeneratorFlat::m_worldSettings
    IL_0006:  ldfld      int32 Game.WorldSettings::TerrainLevel
    IL_000b:  ldarg.0
    IL_000c:  ldfld      class Game.WorldSettings Game.TerrainContentsGeneratorFlat::m_worldSettings
    IL_0011:  ldfld      int32 Game.WorldSettings::SeaLevelOffset
    IL_0016:  add
    IL_0017:  ret
  } // end of method TerrainContentsGeneratorFlat::get_OceanLevel

  .method public hidebysig newslot virtual final 
          instance valuetype [Engine]Engine.Vector3 
          FindCoarseSpawnPosition() cil managed
  {
    // 代码大小       56 (0x38)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [Engine]Engine.Vector2 Game.TerrainContentsGeneratorFlat::m_oceanCorner
    IL_0006:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_000b:  ldarg.0
    IL_000c:  ldarg.0
    IL_000d:  ldflda     valuetype [Engine]Engine.Vector2 Game.TerrainContentsGeneratorFlat::m_oceanCorner
    IL_0012:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0017:  ldarg.0
    IL_0018:  ldflda     valuetype [Engine]Engine.Vector2 Game.TerrainContentsGeneratorFlat::m_oceanCorner
    IL_001d:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0022:  call       instance float32 Game.TerrainContentsGeneratorFlat::CalculateHeight(float32,
                                                                                             float32)
    IL_0027:  ldarg.0
    IL_0028:  ldflda     valuetype [Engine]Engine.Vector2 Game.TerrainContentsGeneratorFlat::m_oceanCorner
    IL_002d:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0032:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0037:  ret
  } // end of method TerrainContentsGeneratorFlat::FindCoarseSpawnPosition

  .method public hidebysig newslot virtual final 
          instance void  GenerateChunkContentsPass1(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       378 (0x17a)
    .maxstack  6
    .locals init (int32 V_0,
             int32 V_1,
             bool V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br         IL_0171

    IL_0007:  ldc.i4.0
    IL_0008:  stloc.1
    IL_0009:  br         IL_0165

    IL_000e:  ldarg.1
    IL_000f:  ldloc.0
    IL_0010:  ldloc.1
    IL_0011:  ldarg.0
    IL_0012:  ldloc.0
    IL_0013:  conv.r4
    IL_0014:  ldloc.1
    IL_0015:  conv.r4
    IL_0016:  call       instance int32 Game.TerrainContentsGeneratorFlat::CalculateTemperature(float32,
                                                                                                float32)
    IL_001b:  callvirt   instance void Game.TerrainChunk::SetTemperatureFast(int32,
                                                                             int32,
                                                                             int32)
    IL_0020:  ldarg.1
    IL_0021:  ldloc.0
    IL_0022:  ldloc.1
    IL_0023:  ldarg.0
    IL_0024:  ldloc.0
    IL_0025:  conv.r4
    IL_0026:  ldloc.1
    IL_0027:  conv.r4
    IL_0028:  call       instance int32 Game.TerrainContentsGeneratorFlat::CalculateHumidity(float32,
                                                                                             float32)
    IL_002d:  callvirt   instance void Game.TerrainChunk::SetHumidityFast(int32,
                                                                          int32,
                                                                          int32)
    IL_0032:  ldloc.0
    IL_0033:  ldarg.1
    IL_0034:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0039:  ldfld      int32 [Engine]Engine.Point2::X
    IL_003e:  add
    IL_003f:  conv.r4
    IL_0040:  ldarg.0
    IL_0041:  ldflda     valuetype [Engine]Engine.Vector2 Game.TerrainContentsGeneratorFlat::m_oceanCorner
    IL_0046:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_004b:  ble.s      IL_006d

    IL_004d:  ldloc.1
    IL_004e:  ldarg.1
    IL_004f:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0054:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0059:  add
    IL_005a:  conv.r4
    IL_005b:  ldarg.0
    IL_005c:  ldflda     valuetype [Engine]Engine.Vector2 Game.TerrainContentsGeneratorFlat::m_oceanCorner
    IL_0061:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0066:  cgt.un
    IL_0068:  ldc.i4.0
    IL_0069:  ceq
    IL_006b:  br.s       IL_006e

    IL_006d:  ldc.i4.1
    IL_006e:  stloc.2
    IL_006f:  ldloc.0
    IL_0070:  ldc.i4.0
    IL_0071:  ldloc.1
    IL_0072:  call       int32 Game.TerrainChunk::CalculateCellIndex(int32,
                                                                     int32,
                                                                     int32)
    IL_0077:  stloc.3
    IL_0078:  ldc.i4.0
    IL_0079:  stloc.s    V_4
    IL_007b:  br         IL_0155

    IL_0080:  ldc.i4.0
    IL_0081:  call       int32 Game.Terrain::MakeBlockValue(int32)
    IL_0086:  stloc.s    V_5
    IL_0088:  ldloc.2
    IL_0089:  brfalse.s  IL_00c1

    IL_008b:  ldloc.s    V_4
    IL_008d:  ldc.i4.2
    IL_008e:  bge.s      IL_009d

    IL_0090:  ldc.i4.1
    IL_0091:  call       int32 Game.Terrain::MakeBlockValue(int32)
    IL_0096:  stloc.s    V_5
    IL_0098:  br         IL_0143

    IL_009d:  ldloc.s    V_4
    IL_009f:  ldarg.0
    IL_00a0:  call       instance int32 Game.TerrainContentsGeneratorFlat::get_OceanLevel()
    IL_00a5:  bgt        IL_0143

    IL_00aa:  ldarg.0
    IL_00ab:  ldfld      class Game.WorldSettings Game.TerrainContentsGeneratorFlat::m_worldSettings
    IL_00b0:  ldfld      int32 Game.WorldSettings::TerrainOceanBlockIndex
    IL_00b5:  call       int32 Game.Terrain::MakeBlockValue(int32)
    IL_00ba:  stloc.s    V_5
    IL_00bc:  br         IL_0143

    IL_00c1:  ldloc.s    V_4
    IL_00c3:  ldc.i4.2
    IL_00c4:  bge.s      IL_00d0

    IL_00c6:  ldc.i4.1
    IL_00c7:  call       int32 Game.Terrain::MakeBlockValue(int32)
    IL_00cc:  stloc.s    V_5
    IL_00ce:  br.s       IL_0143

    IL_00d0:  ldloc.s    V_4
    IL_00d2:  ldarg.0
    IL_00d3:  ldfld      class Game.WorldSettings Game.TerrainContentsGeneratorFlat::m_worldSettings
    IL_00d8:  ldfld      int32 Game.WorldSettings::TerrainLevel
    IL_00dd:  bge.s      IL_0104

    IL_00df:  ldarg.0
    IL_00e0:  ldfld      class Game.WorldSettings Game.TerrainContentsGeneratorFlat::m_worldSettings
    IL_00e5:  ldfld      int32 Game.WorldSettings::TerrainBlockIndex
    IL_00ea:  ldc.i4.8
    IL_00eb:  beq.s      IL_00fa

    IL_00ed:  ldarg.0
    IL_00ee:  ldfld      class Game.WorldSettings Game.TerrainContentsGeneratorFlat::m_worldSettings
    IL_00f3:  ldfld      int32 Game.WorldSettings::TerrainBlockIndex
    IL_00f8:  br.s       IL_00fb

    IL_00fa:  ldc.i4.2
    IL_00fb:  call       int32 Game.Terrain::MakeBlockValue(int32)
    IL_0100:  stloc.s    V_5
    IL_0102:  br.s       IL_0143

    IL_0104:  ldloc.s    V_4
    IL_0106:  ldarg.0
    IL_0107:  ldfld      class Game.WorldSettings Game.TerrainContentsGeneratorFlat::m_worldSettings
    IL_010c:  ldfld      int32 Game.WorldSettings::TerrainLevel
    IL_0111:  bne.un.s   IL_0127

    IL_0113:  ldarg.0
    IL_0114:  ldfld      class Game.WorldSettings Game.TerrainContentsGeneratorFlat::m_worldSettings
    IL_0119:  ldfld      int32 Game.WorldSettings::TerrainBlockIndex
    IL_011e:  call       int32 Game.Terrain::MakeBlockValue(int32)
    IL_0123:  stloc.s    V_5
    IL_0125:  br.s       IL_0143

    IL_0127:  ldloc.s    V_4
    IL_0129:  ldarg.0
    IL_012a:  call       instance int32 Game.TerrainContentsGeneratorFlat::get_OceanLevel()
    IL_012f:  bgt.s      IL_0143

    IL_0131:  ldarg.0
    IL_0132:  ldfld      class Game.WorldSettings Game.TerrainContentsGeneratorFlat::m_worldSettings
    IL_0137:  ldfld      int32 Game.WorldSettings::TerrainOceanBlockIndex
    IL_013c:  call       int32 Game.Terrain::MakeBlockValue(int32)
    IL_0141:  stloc.s    V_5
    IL_0143:  ldarg.1
    IL_0144:  ldloc.3
    IL_0145:  ldloc.s    V_4
    IL_0147:  add
    IL_0148:  ldloc.s    V_5
    IL_014a:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32)
    IL_014f:  ldloc.s    V_4
    IL_0151:  ldc.i4.1
    IL_0152:  add
    IL_0153:  stloc.s    V_4
    IL_0155:  ldloc.s    V_4
    IL_0157:  ldc.i4     0x80
    IL_015c:  blt        IL_0080

    IL_0161:  ldloc.1
    IL_0162:  ldc.i4.1
    IL_0163:  add
    IL_0164:  stloc.1
    IL_0165:  ldloc.1
    IL_0166:  ldc.i4.s   16
    IL_0168:  blt        IL_000e

    IL_016d:  ldloc.0
    IL_016e:  ldc.i4.1
    IL_016f:  add
    IL_0170:  stloc.0
    IL_0171:  ldloc.0
    IL_0172:  ldc.i4.s   16
    IL_0174:  blt        IL_0007

    IL_0179:  ret
  } // end of method TerrainContentsGeneratorFlat::GenerateChunkContentsPass1

  .method public hidebysig newslot virtual final 
          instance void  GenerateChunkContentsPass2(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.TerrainContentsGeneratorFlat::UpdateFluidIsTop(class Game.TerrainChunk)
    IL_0007:  ret
  } // end of method TerrainContentsGeneratorFlat::GenerateChunkContentsPass2

  .method public hidebysig newslot virtual final 
          instance void  GenerateChunkContentsPass3(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method TerrainContentsGeneratorFlat::GenerateChunkContentsPass3

  .method public hidebysig newslot virtual final 
          instance void  GenerateChunkContentsPass4(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method TerrainContentsGeneratorFlat::GenerateChunkContentsPass4

  .method public hidebysig newslot virtual final 
          instance float32  CalculateOceanShoreDistance(float32 x,
                                                        float32 z) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldflda     valuetype [Engine]Engine.Vector2 Game.TerrainContentsGeneratorFlat::m_oceanCorner
    IL_0007:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_000c:  sub
    IL_000d:  ldarg.2
    IL_000e:  ldarg.0
    IL_000f:  ldflda     valuetype [Engine]Engine.Vector2 Game.TerrainContentsGeneratorFlat::m_oceanCorner
    IL_0014:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0019:  sub
    IL_001a:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_001f:  ret
  } // end of method TerrainContentsGeneratorFlat::CalculateOceanShoreDistance

  .method public hidebysig newslot virtual final 
          instance float32  CalculateHeight(float32 x,
                                            float32 z) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.WorldSettings Game.TerrainContentsGeneratorFlat::m_worldSettings
    IL_0006:  ldfld      int32 Game.WorldSettings::TerrainLevel
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
    IL_0003:  ldfld      class Game.WorldSettings Game.TerrainContentsGeneratorFlat::m_worldSettings
    IL_0008:  ldfld      float32 Game.WorldSettings::TemperatureOffset
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
    IL_0003:  ldfld      class Game.WorldSettings Game.TerrainContentsGeneratorFlat::m_worldSettings
    IL_0008:  ldfld      float32 Game.WorldSettings::HumidityOffset
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
          UpdateFluidIsTop(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       152 (0x98)
    .maxstack  6
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.TerrainContentsGeneratorFlat::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  pop
    IL_000c:  ldc.i4.0
    IL_000d:  stloc.0
    IL_000e:  br.s       IL_008f

    IL_0010:  ldc.i4.0
    IL_0011:  stloc.1
    IL_0012:  br.s       IL_0086

    IL_0014:  ldloc.0
    IL_0015:  ldc.i4.s   127
    IL_0017:  ldloc.1
    IL_0018:  call       int32 Game.TerrainChunk::CalculateCellIndex(int32,
                                                                     int32,
                                                                     int32)
    IL_001d:  stloc.2
    IL_001e:  ldc.i4.0
    IL_001f:  stloc.3
    IL_0020:  ldc.i4.s   127
    IL_0022:  stloc.s    V_4
    IL_0024:  br.s       IL_007d

    IL_0026:  ldarg.1
    IL_0027:  ldloc.2
    IL_0028:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32)
    IL_002d:  stloc.s    V_5
    IL_002f:  ldloc.s    V_5
    IL_0031:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0036:  stloc.s    V_6
    IL_0038:  ldloc.s    V_6
    IL_003a:  brfalse.s  IL_0070

    IL_003c:  ldloc.s    V_6
    IL_003e:  ldloc.3
    IL_003f:  beq.s      IL_0070

    IL_0041:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0046:  ldloc.s    V_6
    IL_0048:  ldelem.ref
    IL_0049:  isinst     Game.FluidBlock
    IL_004e:  brfalse.s  IL_0070

    IL_0050:  ldloc.s    V_5
    IL_0052:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0057:  stloc.s    V_7
    IL_0059:  ldarg.1
    IL_005a:  ldloc.2
    IL_005b:  ldloc.s    V_6
    IL_005d:  ldc.i4.0
    IL_005e:  ldloc.s    V_7
    IL_0060:  ldc.i4.1
    IL_0061:  call       int32 Game.FluidBlock::SetIsTop(int32,
                                                         bool)
    IL_0066:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_006b:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32)
    IL_0070:  ldloc.s    V_6
    IL_0072:  stloc.3
    IL_0073:  ldloc.s    V_4
    IL_0075:  ldc.i4.1
    IL_0076:  sub
    IL_0077:  stloc.s    V_4
    IL_0079:  ldloc.2
    IL_007a:  ldc.i4.1
    IL_007b:  sub
    IL_007c:  stloc.2
    IL_007d:  ldloc.s    V_4
    IL_007f:  ldc.i4.0
    IL_0080:  bge.s      IL_0026

    IL_0082:  ldloc.1
    IL_0083:  ldc.i4.1
    IL_0084:  add
    IL_0085:  stloc.1
    IL_0086:  ldloc.1
    IL_0087:  ldc.i4.s   16
    IL_0089:  blt.s      IL_0014

    IL_008b:  ldloc.0
    IL_008c:  ldc.i4.1
    IL_008d:  add
    IL_008e:  stloc.0
    IL_008f:  ldloc.0
    IL_0090:  ldc.i4.s   16
    IL_0092:  blt        IL_0010

    IL_0097:  ret
  } // end of method TerrainContentsGeneratorFlat::UpdateFluidIsTop

  .property instance int32 OceanLevel()
  {
    .get instance int32 Game.TerrainContentsGeneratorFlat::get_OceanLevel()
  } // end of property TerrainContentsGeneratorFlat::OceanLevel
} // end of class Game.TerrainContentsGeneratorFlat