.class public auto ansi beforefieldinit Game.WorldSettings
       extends [System.Runtime]System.Object
{
  .field public string Name
  .field public string OriginalSerializationVersion
  .field public string Seed
  .field public valuetype Game.GameMode GameMode
  .field public valuetype Game.EnvironmentBehaviorMode EnvironmentBehaviorMode
  .field public valuetype Game.TimeOfDayMode TimeOfDayMode
  .field public bool AreWeatherEffectsEnabled
  .field public bool IsAdventureRespawnAllowed
  .field public bool AreAdventureSurvivalMechanicsEnabled
  .field public bool AreSupernaturalCreaturesEnabled
  .field public valuetype Game.TerrainGenerationMode TerrainGenerationMode
  .field public valuetype [Engine]Engine.Vector2 IslandSize
  .field public float32 BiomeSize
  .field public int32 TerrainLevel
  .field public int32 TerrainBlockIndex
  .field public int32 TerrainOceanBlockIndex
  .field public float32 TemperatureOffset
  .field public float32 HumidityOffset
  .field public int32 SeaLevelOffset
  .field public string BlocksTextureName
  .field public class Game.WorldPalette Palette
  .method public hidebysig instance void 
          ResetOptionsForNonCreativeMode() cil managed
  {
    // 代码大小       67 (0x43)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype Game.TerrainGenerationMode Game.WorldSettings::TerrainGenerationMode
    IL_0006:  ldc.i4.2
    IL_0007:  bne.un.s   IL_0010

    IL_0009:  ldarg.0
    IL_000a:  ldc.i4.0
    IL_000b:  stfld      valuetype Game.TerrainGenerationMode Game.WorldSettings::TerrainGenerationMode
    IL_0010:  ldarg.0
    IL_0011:  ldc.i4.0
    IL_0012:  stfld      valuetype Game.EnvironmentBehaviorMode Game.WorldSettings::EnvironmentBehaviorMode
    IL_0017:  ldarg.0
    IL_0018:  ldc.i4.0
    IL_0019:  stfld      valuetype Game.TimeOfDayMode Game.WorldSettings::TimeOfDayMode
    IL_001e:  ldarg.0
    IL_001f:  ldc.i4.1
    IL_0020:  stfld      bool Game.WorldSettings::AreWeatherEffectsEnabled
    IL_0025:  ldarg.0
    IL_0026:  ldc.i4.1
    IL_0027:  stfld      bool Game.WorldSettings::IsAdventureRespawnAllowed
    IL_002c:  ldarg.0
    IL_002d:  ldc.i4.1
    IL_002e:  stfld      bool Game.WorldSettings::AreAdventureSurvivalMechanicsEnabled
    IL_0033:  ldarg.0
    IL_0034:  ldc.i4.s   64
    IL_0036:  stfld      int32 Game.WorldSettings::TerrainLevel
    IL_003b:  ldarg.0
    IL_003c:  ldc.i4.8
    IL_003d:  stfld      int32 Game.WorldSettings::TerrainBlockIndex
    IL_0042:  ret
  } // end of method WorldSettings::ResetOptionsForNonCreativeMode

  .method public hidebysig instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       427 (0x1ab)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "WorldName"
    IL_0007:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_000c:  stfld      string Game.WorldSettings::Name
    IL_0011:  ldarg.0
    IL_0012:  ldarg.1
    IL_0013:  ldstr      "OriginalSerializationVersion"
    IL_0018:  ldsfld     string [System.Runtime]System.String::Empty
    IL_001d:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string,
                                                                                                         !!0)
    IL_0022:  stfld      string Game.WorldSettings::OriginalSerializationVersion
    IL_0027:  ldarg.0
    IL_0028:  ldarg.1
    IL_0029:  ldstr      "WorldSeedString"
    IL_002e:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0033:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string,
                                                                                                         !!0)
    IL_0038:  stfld      string Game.WorldSettings::Seed
    IL_003d:  ldarg.0
    IL_003e:  ldarg.1
    IL_003f:  ldstr      "GameMode"
    IL_0044:  ldc.i4.2
    IL_0045:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype Game.GameMode>(string,
                                                                                                                          !!0)
    IL_004a:  stfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_004f:  ldarg.0
    IL_0050:  ldarg.1
    IL_0051:  ldstr      "EnvironmentBehaviorMode"
    IL_0056:  ldc.i4.0
    IL_0057:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype Game.EnvironmentBehaviorMode>(string,
                                                                                                                                         !!0)
    IL_005c:  stfld      valuetype Game.EnvironmentBehaviorMode Game.WorldSettings::EnvironmentBehaviorMode
    IL_0061:  ldarg.0
    IL_0062:  ldarg.1
    IL_0063:  ldstr      "TimeOfDayMode"
    IL_0068:  ldc.i4.0
    IL_0069:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype Game.TimeOfDayMode>(string,
                                                                                                                               !!0)
    IL_006e:  stfld      valuetype Game.TimeOfDayMode Game.WorldSettings::TimeOfDayMode
    IL_0073:  ldarg.0
    IL_0074:  ldarg.1
    IL_0075:  ldstr      "AreWeatherEffectsEnabled"
    IL_007a:  ldc.i4.1
    IL_007b:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<bool>(string,
                                                                                                       !!0)
    IL_0080:  stfld      bool Game.WorldSettings::AreWeatherEffectsEnabled
    IL_0085:  ldarg.0
    IL_0086:  ldarg.1
    IL_0087:  ldstr      "IsAdventureRespawnAllowed"
    IL_008c:  ldc.i4.1
    IL_008d:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<bool>(string,
                                                                                                       !!0)
    IL_0092:  stfld      bool Game.WorldSettings::IsAdventureRespawnAllowed
    IL_0097:  ldarg.0
    IL_0098:  ldarg.1
    IL_0099:  ldstr      "AreAdventureSurvivalMechanicsEnabled"
    IL_009e:  ldc.i4.1
    IL_009f:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<bool>(string,
                                                                                                       !!0)
    IL_00a4:  stfld      bool Game.WorldSettings::AreAdventureSurvivalMechanicsEnabled
    IL_00a9:  ldarg.0
    IL_00aa:  ldarg.1
    IL_00ab:  ldstr      "AreSupernaturalCreaturesEnabled"
    IL_00b0:  ldc.i4.1
    IL_00b1:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<bool>(string,
                                                                                                       !!0)
    IL_00b6:  stfld      bool Game.WorldSettings::AreSupernaturalCreaturesEnabled
    IL_00bb:  ldarg.0
    IL_00bc:  ldarg.1
    IL_00bd:  ldstr      "TerrainGenerationMode"
    IL_00c2:  ldc.i4.0
    IL_00c3:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype Game.TerrainGenerationMode>(string,
                                                                                                                                       !!0)
    IL_00c8:  stfld      valuetype Game.TerrainGenerationMode Game.WorldSettings::TerrainGenerationMode
    IL_00cd:  ldarg.0
    IL_00ce:  ldarg.1
    IL_00cf:  ldstr      "IslandSize"
    IL_00d4:  ldc.r4     200.
    IL_00d9:  ldc.r4     200.
    IL_00de:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00e3:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype [Engine]Engine.Vector2>(string,
                                                                                                                                   !!0)
    IL_00e8:  stfld      valuetype [Engine]Engine.Vector2 Game.WorldSettings::IslandSize
    IL_00ed:  ldarg.0
    IL_00ee:  ldarg.1
    IL_00ef:  ldstr      "TerrainLevel"
    IL_00f4:  ldc.i4.s   64
    IL_00f6:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<int32>(string,
                                                                                                        !!0)
    IL_00fb:  stfld      int32 Game.WorldSettings::TerrainLevel
    IL_0100:  ldarg.0
    IL_0101:  ldarg.1
    IL_0102:  ldstr      "TerrainBlockIndex"
    IL_0107:  ldc.i4.8
    IL_0108:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<int32>(string,
                                                                                                        !!0)
    IL_010d:  stfld      int32 Game.WorldSettings::TerrainBlockIndex
    IL_0112:  ldarg.0
    IL_0113:  ldarg.1
    IL_0114:  ldstr      "TerrainOceanBlockIndex"
    IL_0119:  ldc.i4.s   18
    IL_011b:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<int32>(string,
                                                                                                        !!0)
    IL_0120:  stfld      int32 Game.WorldSettings::TerrainOceanBlockIndex
    IL_0125:  ldarg.0
    IL_0126:  ldarg.1
    IL_0127:  ldstr      "TemperatureOffset"
    IL_012c:  ldc.r4     0.0
    IL_0131:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string,
                                                                                                          !!0)
    IL_0136:  stfld      float32 Game.WorldSettings::TemperatureOffset
    IL_013b:  ldarg.0
    IL_013c:  ldarg.1
    IL_013d:  ldstr      "HumidityOffset"
    IL_0142:  ldc.r4     0.0
    IL_0147:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string,
                                                                                                          !!0)
    IL_014c:  stfld      float32 Game.WorldSettings::HumidityOffset
    IL_0151:  ldarg.0
    IL_0152:  ldarg.1
    IL_0153:  ldstr      "SeaLevelOffset"
    IL_0158:  ldc.i4.0
    IL_0159:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<int32>(string,
                                                                                                        !!0)
    IL_015e:  stfld      int32 Game.WorldSettings::SeaLevelOffset
    IL_0163:  ldarg.0
    IL_0164:  ldarg.1
    IL_0165:  ldstr      "BiomeSize"
    IL_016a:  ldc.r4     1.
    IL_016f:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string,
                                                                                                          !!0)
    IL_0174:  stfld      float32 Game.WorldSettings::BiomeSize
    IL_0179:  ldarg.0
    IL_017a:  ldarg.1
    IL_017b:  ldstr      "BlockTextureName"
    IL_0180:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0185:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string,
                                                                                                         !!0)
    IL_018a:  stfld      string Game.WorldSettings::BlocksTextureName
    IL_018f:  ldarg.0
    IL_0190:  ldarg.1
    IL_0191:  ldstr      "Palette"
    IL_0196:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
    IL_019b:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                         !!0)
    IL_01a0:  newobj     instance void Game.WorldPalette::.ctor(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_01a5:  stfld      class Game.WorldPalette Game.WorldSettings::Palette
    IL_01aa:  ret
  } // end of method WorldSettings::Load

  .method public hidebysig instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               bool liveModifiableParametersOnly) cil managed
  {
    // 代码大小       369 (0x171)
    .maxstack  3
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "WorldName"
    IL_0006:  ldarg.0
    IL_0007:  ldfld      string Game.WorldSettings::Name
    IL_000c:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                          !!0)
    IL_0011:  ldarg.1
    IL_0012:  ldstr      "OriginalSerializationVersion"
    IL_0017:  ldarg.0
    IL_0018:  ldfld      string Game.WorldSettings::OriginalSerializationVersion
    IL_001d:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                          !!0)
    IL_0022:  ldarg.1
    IL_0023:  ldstr      "GameMode"
    IL_0028:  ldarg.0
    IL_0029:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_002e:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype Game.GameMode>(string,
                                                                                                                           !!0)
    IL_0033:  ldarg.1
    IL_0034:  ldstr      "EnvironmentBehaviorMode"
    IL_0039:  ldarg.0
    IL_003a:  ldfld      valuetype Game.EnvironmentBehaviorMode Game.WorldSettings::EnvironmentBehaviorMode
    IL_003f:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype Game.EnvironmentBehaviorMode>(string,
                                                                                                                                          !!0)
    IL_0044:  ldarg.1
    IL_0045:  ldstr      "TimeOfDayMode"
    IL_004a:  ldarg.0
    IL_004b:  ldfld      valuetype Game.TimeOfDayMode Game.WorldSettings::TimeOfDayMode
    IL_0050:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype Game.TimeOfDayMode>(string,
                                                                                                                                !!0)
    IL_0055:  ldarg.1
    IL_0056:  ldstr      "AreWeatherEffectsEnabled"
    IL_005b:  ldarg.0
    IL_005c:  ldfld      bool Game.WorldSettings::AreWeatherEffectsEnabled
    IL_0061:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<bool>(string,
                                                                                                        !!0)
    IL_0066:  ldarg.1
    IL_0067:  ldstr      "IsAdventureRespawnAllowed"
    IL_006c:  ldarg.0
    IL_006d:  ldfld      bool Game.WorldSettings::IsAdventureRespawnAllowed
    IL_0072:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<bool>(string,
                                                                                                        !!0)
    IL_0077:  ldarg.1
    IL_0078:  ldstr      "AreAdventureSurvivalMechanicsEnabled"
    IL_007d:  ldarg.0
    IL_007e:  ldfld      bool Game.WorldSettings::AreAdventureSurvivalMechanicsEnabled
    IL_0083:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<bool>(string,
                                                                                                        !!0)
    IL_0088:  ldarg.1
    IL_0089:  ldstr      "AreSupernaturalCreaturesEnabled"
    IL_008e:  ldarg.0
    IL_008f:  ldfld      bool Game.WorldSettings::AreSupernaturalCreaturesEnabled
    IL_0094:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<bool>(string,
                                                                                                        !!0)
    IL_0099:  ldarg.2
    IL_009a:  brtrue     IL_0149

    IL_009f:  ldarg.1
    IL_00a0:  ldstr      "WorldSeedString"
    IL_00a5:  ldarg.0
    IL_00a6:  ldfld      string Game.WorldSettings::Seed
    IL_00ab:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                          !!0)
    IL_00b0:  ldarg.1
    IL_00b1:  ldstr      "TerrainGenerationMode"
    IL_00b6:  ldarg.0
    IL_00b7:  ldfld      valuetype Game.TerrainGenerationMode Game.WorldSettings::TerrainGenerationMode
    IL_00bc:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype Game.TerrainGenerationMode>(string,
                                                                                                                                        !!0)
    IL_00c1:  ldarg.1
    IL_00c2:  ldstr      "IslandSize"
    IL_00c7:  ldarg.0
    IL_00c8:  ldfld      valuetype [Engine]Engine.Vector2 Game.WorldSettings::IslandSize
    IL_00cd:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype [Engine]Engine.Vector2>(string,
                                                                                                                                    !!0)
    IL_00d2:  ldarg.1
    IL_00d3:  ldstr      "TerrainLevel"
    IL_00d8:  ldarg.0
    IL_00d9:  ldfld      int32 Game.WorldSettings::TerrainLevel
    IL_00de:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<int32>(string,
                                                                                                         !!0)
    IL_00e3:  ldarg.1
    IL_00e4:  ldstr      "TerrainBlockIndex"
    IL_00e9:  ldarg.0
    IL_00ea:  ldfld      int32 Game.WorldSettings::TerrainBlockIndex
    IL_00ef:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<int32>(string,
                                                                                                         !!0)
    IL_00f4:  ldarg.1
    IL_00f5:  ldstr      "TerrainOceanBlockIndex"
    IL_00fa:  ldarg.0
    IL_00fb:  ldfld      int32 Game.WorldSettings::TerrainOceanBlockIndex
    IL_0100:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<int32>(string,
                                                                                                         !!0)
    IL_0105:  ldarg.1
    IL_0106:  ldstr      "TemperatureOffset"
    IL_010b:  ldarg.0
    IL_010c:  ldfld      float32 Game.WorldSettings::TemperatureOffset
    IL_0111:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float32>(string,
                                                                                                           !!0)
    IL_0116:  ldarg.1
    IL_0117:  ldstr      "HumidityOffset"
    IL_011c:  ldarg.0
    IL_011d:  ldfld      float32 Game.WorldSettings::HumidityOffset
    IL_0122:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float32>(string,
                                                                                                           !!0)
    IL_0127:  ldarg.1
    IL_0128:  ldstr      "SeaLevelOffset"
    IL_012d:  ldarg.0
    IL_012e:  ldfld      int32 Game.WorldSettings::SeaLevelOffset
    IL_0133:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<int32>(string,
                                                                                                         !!0)
    IL_0138:  ldarg.1
    IL_0139:  ldstr      "BiomeSize"
    IL_013e:  ldarg.0
    IL_013f:  ldfld      float32 Game.WorldSettings::BiomeSize
    IL_0144:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float32>(string,
                                                                                                           !!0)
    IL_0149:  ldarg.1
    IL_014a:  ldstr      "BlockTextureName"
    IL_014f:  ldarg.0
    IL_0150:  ldfld      string Game.WorldSettings::BlocksTextureName
    IL_0155:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                          !!0)
    IL_015a:  ldarg.1
    IL_015b:  ldstr      "Palette"
    IL_0160:  ldarg.0
    IL_0161:  ldfld      class Game.WorldPalette Game.WorldSettings::Palette
    IL_0166:  callvirt   instance class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.WorldPalette::Save()
    IL_016b:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                          !!0)
    IL_0170:  ret
  } // end of method WorldSettings::Save

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       152 (0x98)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0006:  stfld      string Game.WorldSettings::Name
    IL_000b:  ldarg.0
    IL_000c:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0011:  stfld      string Game.WorldSettings::OriginalSerializationVersion
    IL_0016:  ldarg.0
    IL_0017:  ldsfld     string [System.Runtime]System.String::Empty
    IL_001c:  stfld      string Game.WorldSettings::Seed
    IL_0021:  ldarg.0
    IL_0022:  ldc.i4.2
    IL_0023:  stfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_0028:  ldarg.0
    IL_0029:  ldc.i4.1
    IL_002a:  stfld      bool Game.WorldSettings::AreWeatherEffectsEnabled
    IL_002f:  ldarg.0
    IL_0030:  ldc.i4.1
    IL_0031:  stfld      bool Game.WorldSettings::IsAdventureRespawnAllowed
    IL_0036:  ldarg.0
    IL_0037:  ldc.i4.1
    IL_0038:  stfld      bool Game.WorldSettings::AreAdventureSurvivalMechanicsEnabled
    IL_003d:  ldarg.0
    IL_003e:  ldc.i4.1
    IL_003f:  stfld      bool Game.WorldSettings::AreSupernaturalCreaturesEnabled
    IL_0044:  ldarg.0
    IL_0045:  ldc.r4     300.
    IL_004a:  ldc.r4     300.
    IL_004f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0054:  stfld      valuetype [Engine]Engine.Vector2 Game.WorldSettings::IslandSize
    IL_0059:  ldarg.0
    IL_005a:  ldc.r4     1.
    IL_005f:  stfld      float32 Game.WorldSettings::BiomeSize
    IL_0064:  ldarg.0
    IL_0065:  ldc.i4.s   64
    IL_0067:  stfld      int32 Game.WorldSettings::TerrainLevel
    IL_006c:  ldarg.0
    IL_006d:  ldc.i4.8
    IL_006e:  stfld      int32 Game.WorldSettings::TerrainBlockIndex
    IL_0073:  ldarg.0
    IL_0074:  ldc.i4.s   18
    IL_0076:  stfld      int32 Game.WorldSettings::TerrainOceanBlockIndex
    IL_007b:  ldarg.0
    IL_007c:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0081:  stfld      string Game.WorldSettings::BlocksTextureName
    IL_0086:  ldarg.0
    IL_0087:  newobj     instance void Game.WorldPalette::.ctor()
    IL_008c:  stfld      class Game.WorldPalette Game.WorldSettings::Palette
    IL_0091:  ldarg.0
    IL_0092:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0097:  ret
  } // end of method WorldSettings::.ctor

} // end of class Game.WorldSettings