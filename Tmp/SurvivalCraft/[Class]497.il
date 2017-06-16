.class public auto ansi beforefieldinit Game.WorldInfo
       extends [System.Runtime]System.Object
{
  .field public string DirectoryName
  .field public string Name
  .field public int64 Size
  .field public valuetype [System.Runtime]System.DateTime LastSaveTime
  .field public string SerializationVersion
  .field public string OriginalSerializationVersion
  .field public string Seed
  .field public valuetype Game.GameMode GameMode
  .field public valuetype Game.EnvironmentBehaviorMode EnvironmentBehaviorMode
  .field public valuetype Game.TimeOfDayMode TimeOfDayMode
  .field public bool AreWeatherEffectsEnabled
  .field public bool IsAdventureRespawnAllowed
  .field public bool AreAdventureSurvivalMechanicsEnabled
  .field public valuetype Game.TerrainGenerationMode TerrainGenerationMode
  .field public int32 TerrainLevel
  .field public int32 TerrainBlockIndex
  .field public int32 TerrainOceanBlockIndex
  .field public float32 TemperatureOffset
  .field public float32 HumidityOffset
  .field public int32 SeaLevelOffset
  .field public string BlocksTextureName
  .field public string CharacterSkinName
  .method public hidebysig instance void 
          ResetOptionsForNonCreativeMode() cil managed
  {
    // 代码大小       58 (0x3a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.0
    IL_0002:  stfld      valuetype Game.TerrainGenerationMode Game.WorldInfo::TerrainGenerationMode
    IL_0007:  ldarg.0
    IL_0008:  ldc.i4.0
    IL_0009:  stfld      valuetype Game.EnvironmentBehaviorMode Game.WorldInfo::EnvironmentBehaviorMode
    IL_000e:  ldarg.0
    IL_000f:  ldc.i4.0
    IL_0010:  stfld      valuetype Game.TimeOfDayMode Game.WorldInfo::TimeOfDayMode
    IL_0015:  ldarg.0
    IL_0016:  ldc.i4.1
    IL_0017:  stfld      bool Game.WorldInfo::AreWeatherEffectsEnabled
    IL_001c:  ldarg.0
    IL_001d:  ldc.i4.1
    IL_001e:  stfld      bool Game.WorldInfo::IsAdventureRespawnAllowed
    IL_0023:  ldarg.0
    IL_0024:  ldc.i4.1
    IL_0025:  stfld      bool Game.WorldInfo::AreAdventureSurvivalMechanicsEnabled
    IL_002a:  ldarg.0
    IL_002b:  ldc.i4.s   64
    IL_002d:  stfld      int32 Game.WorldInfo::TerrainLevel
    IL_0032:  ldarg.0
    IL_0033:  ldc.i4.8
    IL_0034:  stfld      int32 Game.WorldInfo::TerrainBlockIndex
    IL_0039:  ret
  } // end of method WorldInfo::ResetOptionsForNonCreativeMode

  .method public hidebysig instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       350 (0x15e)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "WorldName"
    IL_0007:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_000c:  stfld      string Game.WorldInfo::Name
    IL_0011:  ldarg.0
    IL_0012:  ldarg.1
    IL_0013:  ldstr      "OriginalSerializationVersion"
    IL_0018:  ldsfld     string [System.Runtime]System.String::Empty
    IL_001d:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string,
                                                                                                         !!0)
    IL_0022:  stfld      string Game.WorldInfo::OriginalSerializationVersion
    IL_0027:  ldarg.0
    IL_0028:  ldarg.1
    IL_0029:  ldstr      "WorldSeedString"
    IL_002e:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0033:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string,
                                                                                                         !!0)
    IL_0038:  stfld      string Game.WorldInfo::Seed
    IL_003d:  ldarg.0
    IL_003e:  ldarg.1
    IL_003f:  ldstr      "GameMode"
    IL_0044:  ldc.i4.2
    IL_0045:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype Game.GameMode>(string,
                                                                                                                          !!0)
    IL_004a:  stfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_004f:  ldarg.0
    IL_0050:  ldarg.1
    IL_0051:  ldstr      "EnvironmentBehaviorMode"
    IL_0056:  ldc.i4.0
    IL_0057:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype Game.EnvironmentBehaviorMode>(string,
                                                                                                                                         !!0)
    IL_005c:  stfld      valuetype Game.EnvironmentBehaviorMode Game.WorldInfo::EnvironmentBehaviorMode
    IL_0061:  ldarg.0
    IL_0062:  ldarg.1
    IL_0063:  ldstr      "TimeOfDayMode"
    IL_0068:  ldc.i4.0
    IL_0069:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype Game.TimeOfDayMode>(string,
                                                                                                                               !!0)
    IL_006e:  stfld      valuetype Game.TimeOfDayMode Game.WorldInfo::TimeOfDayMode
    IL_0073:  ldarg.0
    IL_0074:  ldarg.1
    IL_0075:  ldstr      "TerrainLevel"
    IL_007a:  ldc.i4.s   64
    IL_007c:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<int32>(string,
                                                                                                        !!0)
    IL_0081:  stfld      int32 Game.WorldInfo::TerrainLevel
    IL_0086:  ldarg.0
    IL_0087:  ldarg.1
    IL_0088:  ldstr      "TerrainBlockIndex"
    IL_008d:  ldc.i4.8
    IL_008e:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<int32>(string,
                                                                                                        !!0)
    IL_0093:  stfld      int32 Game.WorldInfo::TerrainBlockIndex
    IL_0098:  ldarg.0
    IL_0099:  ldarg.1
    IL_009a:  ldstr      "TerrainOceanBlockIndex"
    IL_009f:  ldc.i4.s   18
    IL_00a1:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<int32>(string,
                                                                                                        !!0)
    IL_00a6:  stfld      int32 Game.WorldInfo::TerrainOceanBlockIndex
    IL_00ab:  ldarg.0
    IL_00ac:  ldarg.1
    IL_00ad:  ldstr      "AreWeatherEffectsEnabled"
    IL_00b2:  ldc.i4.1
    IL_00b3:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<bool>(string,
                                                                                                       !!0)
    IL_00b8:  stfld      bool Game.WorldInfo::AreWeatherEffectsEnabled
    IL_00bd:  ldarg.0
    IL_00be:  ldarg.1
    IL_00bf:  ldstr      "IsAdventureRespawnAllowed"
    IL_00c4:  ldc.i4.1
    IL_00c5:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<bool>(string,
                                                                                                       !!0)
    IL_00ca:  stfld      bool Game.WorldInfo::IsAdventureRespawnAllowed
    IL_00cf:  ldarg.0
    IL_00d0:  ldarg.1
    IL_00d1:  ldstr      "AreAdventureSurvivalMechanicsEnabled"
    IL_00d6:  ldc.i4.1
    IL_00d7:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<bool>(string,
                                                                                                       !!0)
    IL_00dc:  stfld      bool Game.WorldInfo::AreAdventureSurvivalMechanicsEnabled
    IL_00e1:  ldarg.0
    IL_00e2:  ldarg.1
    IL_00e3:  ldstr      "TerrainGenerationMode"
    IL_00e8:  ldc.i4.0
    IL_00e9:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype Game.TerrainGenerationMode>(string,
                                                                                                                                       !!0)
    IL_00ee:  stfld      valuetype Game.TerrainGenerationMode Game.WorldInfo::TerrainGenerationMode
    IL_00f3:  ldarg.0
    IL_00f4:  ldarg.1
    IL_00f5:  ldstr      "TemperatureOffset"
    IL_00fa:  ldc.r4     0.0
    IL_00ff:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string,
                                                                                                          !!0)
    IL_0104:  stfld      float32 Game.WorldInfo::TemperatureOffset
    IL_0109:  ldarg.0
    IL_010a:  ldarg.1
    IL_010b:  ldstr      "HumidityOffset"
    IL_0110:  ldc.r4     0.0
    IL_0115:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string,
                                                                                                          !!0)
    IL_011a:  stfld      float32 Game.WorldInfo::HumidityOffset
    IL_011f:  ldarg.0
    IL_0120:  ldarg.1
    IL_0121:  ldstr      "SeaLevelOffset"
    IL_0126:  ldc.i4.0
    IL_0127:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<int32>(string,
                                                                                                        !!0)
    IL_012c:  stfld      int32 Game.WorldInfo::SeaLevelOffset
    IL_0131:  ldarg.0
    IL_0132:  ldarg.1
    IL_0133:  ldstr      "BlockTextureName"
    IL_0138:  ldsfld     string [System.Runtime]System.String::Empty
    IL_013d:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string,
                                                                                                         !!0)
    IL_0142:  stfld      string Game.WorldInfo::BlocksTextureName
    IL_0147:  ldarg.0
    IL_0148:  ldarg.1
    IL_0149:  ldstr      "CharacterSkinName"
    IL_014e:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0153:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string,
                                                                                                         !!0)
    IL_0158:  stfld      string Game.WorldInfo::CharacterSkinName
    IL_015d:  ret
  } // end of method WorldInfo::Load

  .method public hidebysig instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               bool liveModifiableParametersOnly) cil managed
  {
    // 代码大小       313 (0x139)
    .maxstack  3
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "WorldName"
    IL_0006:  ldarg.0
    IL_0007:  ldfld      string Game.WorldInfo::Name
    IL_000c:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                          !!0)
    IL_0011:  ldarg.1
    IL_0012:  ldstr      "OriginalSerializationVersion"
    IL_0017:  ldarg.0
    IL_0018:  ldfld      string Game.WorldInfo::OriginalSerializationVersion
    IL_001d:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                          !!0)
    IL_0022:  ldarg.1
    IL_0023:  ldstr      "GameMode"
    IL_0028:  ldarg.0
    IL_0029:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_002e:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype Game.GameMode>(string,
                                                                                                                           !!0)
    IL_0033:  ldarg.1
    IL_0034:  ldstr      "EnvironmentBehaviorMode"
    IL_0039:  ldarg.0
    IL_003a:  ldfld      valuetype Game.EnvironmentBehaviorMode Game.WorldInfo::EnvironmentBehaviorMode
    IL_003f:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype Game.EnvironmentBehaviorMode>(string,
                                                                                                                                          !!0)
    IL_0044:  ldarg.1
    IL_0045:  ldstr      "TimeOfDayMode"
    IL_004a:  ldarg.0
    IL_004b:  ldfld      valuetype Game.TimeOfDayMode Game.WorldInfo::TimeOfDayMode
    IL_0050:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype Game.TimeOfDayMode>(string,
                                                                                                                                !!0)
    IL_0055:  ldarg.1
    IL_0056:  ldstr      "AreWeatherEffectsEnabled"
    IL_005b:  ldarg.0
    IL_005c:  ldfld      bool Game.WorldInfo::AreWeatherEffectsEnabled
    IL_0061:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<bool>(string,
                                                                                                        !!0)
    IL_0066:  ldarg.1
    IL_0067:  ldstr      "IsAdventureRespawnAllowed"
    IL_006c:  ldarg.0
    IL_006d:  ldfld      bool Game.WorldInfo::IsAdventureRespawnAllowed
    IL_0072:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<bool>(string,
                                                                                                        !!0)
    IL_0077:  ldarg.1
    IL_0078:  ldstr      "AreAdventureSurvivalMechanicsEnabled"
    IL_007d:  ldarg.0
    IL_007e:  ldfld      bool Game.WorldInfo::AreAdventureSurvivalMechanicsEnabled
    IL_0083:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<bool>(string,
                                                                                                        !!0)
    IL_0088:  ldarg.1
    IL_0089:  ldstr      "BlockTextureName"
    IL_008e:  ldarg.0
    IL_008f:  ldfld      string Game.WorldInfo::BlocksTextureName
    IL_0094:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                          !!0)
    IL_0099:  ldarg.1
    IL_009a:  ldstr      "CharacterSkinName"
    IL_009f:  ldarg.0
    IL_00a0:  ldfld      string Game.WorldInfo::CharacterSkinName
    IL_00a5:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                          !!0)
    IL_00aa:  ldarg.2
    IL_00ab:  brtrue     IL_0138

    IL_00b0:  ldarg.1
    IL_00b1:  ldstr      "WorldSeedString"
    IL_00b6:  ldarg.0
    IL_00b7:  ldfld      string Game.WorldInfo::Seed
    IL_00bc:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                          !!0)
    IL_00c1:  ldarg.1
    IL_00c2:  ldstr      "TerrainGenerationMode"
    IL_00c7:  ldarg.0
    IL_00c8:  ldfld      valuetype Game.TerrainGenerationMode Game.WorldInfo::TerrainGenerationMode
    IL_00cd:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype Game.TerrainGenerationMode>(string,
                                                                                                                                        !!0)
    IL_00d2:  ldarg.1
    IL_00d3:  ldstr      "TerrainLevel"
    IL_00d8:  ldarg.0
    IL_00d9:  ldfld      int32 Game.WorldInfo::TerrainLevel
    IL_00de:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<int32>(string,
                                                                                                         !!0)
    IL_00e3:  ldarg.1
    IL_00e4:  ldstr      "TerrainBlockIndex"
    IL_00e9:  ldarg.0
    IL_00ea:  ldfld      int32 Game.WorldInfo::TerrainBlockIndex
    IL_00ef:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<int32>(string,
                                                                                                         !!0)
    IL_00f4:  ldarg.1
    IL_00f5:  ldstr      "TerrainOceanBlockIndex"
    IL_00fa:  ldarg.0
    IL_00fb:  ldfld      int32 Game.WorldInfo::TerrainOceanBlockIndex
    IL_0100:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<int32>(string,
                                                                                                         !!0)
    IL_0105:  ldarg.1
    IL_0106:  ldstr      "TemperatureOffset"
    IL_010b:  ldarg.0
    IL_010c:  ldfld      float32 Game.WorldInfo::TemperatureOffset
    IL_0111:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float32>(string,
                                                                                                           !!0)
    IL_0116:  ldarg.1
    IL_0117:  ldstr      "HumidityOffset"
    IL_011c:  ldarg.0
    IL_011d:  ldfld      float32 Game.WorldInfo::HumidityOffset
    IL_0122:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float32>(string,
                                                                                                           !!0)
    IL_0127:  ldarg.1
    IL_0128:  ldstr      "SeaLevelOffset"
    IL_012d:  ldarg.0
    IL_012e:  ldfld      int32 Game.WorldInfo::SeaLevelOffset
    IL_0133:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<int32>(string,
                                                                                                         !!0)
    IL_0138:  ret
  } // end of method WorldInfo::Save

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       135 (0x87)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0006:  stfld      string Game.WorldInfo::DirectoryName
    IL_000b:  ldarg.0
    IL_000c:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0011:  stfld      string Game.WorldInfo::Name
    IL_0016:  ldarg.0
    IL_0017:  ldsfld     string [System.Runtime]System.String::Empty
    IL_001c:  stfld      string Game.WorldInfo::SerializationVersion
    IL_0021:  ldarg.0
    IL_0022:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0027:  stfld      string Game.WorldInfo::OriginalSerializationVersion
    IL_002c:  ldarg.0
    IL_002d:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0032:  stfld      string Game.WorldInfo::Seed
    IL_0037:  ldarg.0
    IL_0038:  ldc.i4.2
    IL_0039:  stfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_003e:  ldarg.0
    IL_003f:  ldc.i4.1
    IL_0040:  stfld      bool Game.WorldInfo::AreWeatherEffectsEnabled
    IL_0045:  ldarg.0
    IL_0046:  ldc.i4.1
    IL_0047:  stfld      bool Game.WorldInfo::IsAdventureRespawnAllowed
    IL_004c:  ldarg.0
    IL_004d:  ldc.i4.1
    IL_004e:  stfld      bool Game.WorldInfo::AreAdventureSurvivalMechanicsEnabled
    IL_0053:  ldarg.0
    IL_0054:  ldc.i4.s   64
    IL_0056:  stfld      int32 Game.WorldInfo::TerrainLevel
    IL_005b:  ldarg.0
    IL_005c:  ldc.i4.8
    IL_005d:  stfld      int32 Game.WorldInfo::TerrainBlockIndex
    IL_0062:  ldarg.0
    IL_0063:  ldc.i4.s   18
    IL_0065:  stfld      int32 Game.WorldInfo::TerrainOceanBlockIndex
    IL_006a:  ldarg.0
    IL_006b:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0070:  stfld      string Game.WorldInfo::BlocksTextureName
    IL_0075:  ldarg.0
    IL_0076:  ldsfld     string [System.Runtime]System.String::Empty
    IL_007b:  stfld      string Game.WorldInfo::CharacterSkinName
    IL_0080:  ldarg.0
    IL_0081:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0086:  ret
  } // end of method WorldInfo::.ctor

} // end of class Game.WorldInfo