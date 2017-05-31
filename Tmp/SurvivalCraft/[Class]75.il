.class public auto ansi beforefieldinit Game.ComponentVitalStats
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IUpdateable
{
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemCamera m_subsystemCamera
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.SubsystemGui m_subsystemGui
  .field private class Game.SubsystemScreenOverlays m_subsystemScreenOverlays
  .field private class Game.SubsystemMetersBlockBehavior m_subsystemMetersBlockBehavior
  .field private class Game.SubsystemWeather m_subsystemWeather
  .field private class Game.ComponentPlayer m_componentPlayer
  .field private class Game.Random m_random
  .field private class [Engine]Engine.Audio.Sound m_pantingSound
  .field private float32 m_food
  .field private float32 m_stamina
  .field private float32 m_sleep
  .field private float32 m_temperature
  .field private float32 m_wetness
  .field private float32 m_lastFood
  .field private float32 m_lastStamina
  .field private float32 m_lastSleep
  .field private float32 m_lastTemperature
  .field private float32 m_lastWetness
  .field private float32 m_densityModifierApplied
  .field private valuetype [System.Runtime]System.Nullable`1<float64> m_lastAttackedTime
  .field private float32 m_sleepBlackoutFactor
  .field private float32 m_sleepBlackoutDuration
  .field private float32 m_environmentTemperature
  .field private float32 m_environmentTemperatureFlux
  .field private float32 m_temperatureBlackoutFactor
  .field private float32 m_temperatureBlackoutDuration
  .field private float32 '<PerformanceFactor>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance float32 
          get_PerformanceFactor() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentVitalStats::'<PerformanceFactor>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentVitalStats::get_PerformanceFactor

  .method private hidebysig specialname instance void 
          set_PerformanceFactor(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentVitalStats::'<PerformanceFactor>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentVitalStats::set_PerformanceFactor

  .method public hidebysig specialname instance float32 
          get_Food() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentVitalStats::m_food
    IL_0006:  ret
  } // end of method ComponentVitalStats::get_Food

  .method private hidebysig specialname instance void 
          set_Food(float32 'value') cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0007:  stfld      float32 Game.ComponentVitalStats::m_food
    IL_000c:  ret
  } // end of method ComponentVitalStats::set_Food

  .method public hidebysig specialname instance float32 
          get_Stamina() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentVitalStats::m_stamina
    IL_0006:  ret
  } // end of method ComponentVitalStats::get_Stamina

  .method private hidebysig specialname instance void 
          set_Stamina(float32 'value') cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0007:  stfld      float32 Game.ComponentVitalStats::m_stamina
    IL_000c:  ret
  } // end of method ComponentVitalStats::set_Stamina

  .method public hidebysig specialname instance float32 
          get_Sleep() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentVitalStats::m_sleep
    IL_0006:  ret
  } // end of method ComponentVitalStats::get_Sleep

  .method private hidebysig specialname instance void 
          set_Sleep(float32 'value') cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0007:  stfld      float32 Game.ComponentVitalStats::m_sleep
    IL_000c:  ret
  } // end of method ComponentVitalStats::set_Sleep

  .method public hidebysig specialname instance float32 
          get_Temperature() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentVitalStats::m_temperature
    IL_0006:  ret
  } // end of method ComponentVitalStats::get_Temperature

  .method private hidebysig specialname instance void 
          set_Temperature(float32 'value') cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldc.r4     0.0
    IL_0007:  ldc.r4     24.
    IL_000c:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0011:  stfld      float32 Game.ComponentVitalStats::m_temperature
    IL_0016:  ret
  } // end of method ComponentVitalStats::set_Temperature

  .method public hidebysig specialname instance float32 
          get_Wetness() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentVitalStats::m_wetness
    IL_0006:  ret
  } // end of method ComponentVitalStats::get_Wetness

  .method private hidebysig specialname instance void 
          set_Wetness(float32 'value') cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0007:  stfld      float32 Game.ComponentVitalStats::m_wetness
    IL_000c:  ret
  } // end of method ComponentVitalStats::set_Wetness

  .method public hidebysig instance bool 
          Eat(int32 'value') cil managed
  {
    // 代码大小       245 (0xf5)
    .maxstack  7
    .locals init (class Game.Block V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance float32 Game.ComponentVitalStats::get_Food()
    IL_0006:  ldc.r4     0.98000002
    IL_000b:  bge.un     IL_00e1

    IL_0010:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0015:  ldarg.1
    IL_0016:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_001b:  ldelem.ref
    IL_001c:  stloc.0
    IL_001d:  ldloc.0
    IL_001e:  ldarg.1
    IL_001f:  callvirt   instance float32 Game.Block::GetNutritionalValue(int32)
    IL_0024:  ldc.r4     0.0
    IL_0029:  ble.un     IL_00f3

    IL_002e:  ldarg.0
    IL_002f:  ldfld      class Game.SubsystemAudio Game.ComponentVitalStats::m_subsystemAudio
    IL_0034:  ldstr      "Audio/Creatures/HumanEat"
    IL_0039:  ldc.r4     1.
    IL_003e:  ldarg.0
    IL_003f:  ldfld      class Game.Random Game.ComponentVitalStats::m_random
    IL_0044:  ldc.r4     -0.2
    IL_0049:  ldc.r4     0.2
    IL_004e:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0053:  ldarg.0
    IL_0054:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0059:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_005e:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0063:  ldc.r4     2.
    IL_0068:  ldc.r4     0.0
    IL_006d:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            float32)
    IL_0072:  ldarg.0
    IL_0073:  ldarg.0
    IL_0074:  call       instance float32 Game.ComponentVitalStats::get_Food()
    IL_0079:  ldloc.0
    IL_007a:  ldarg.1
    IL_007b:  callvirt   instance float32 Game.Block::GetNutritionalValue(int32)
    IL_0080:  add
    IL_0081:  call       instance void Game.ComponentVitalStats::set_Food(float32)
    IL_0086:  ldarg.0
    IL_0087:  call       instance float32 Game.ComponentVitalStats::get_Food()
    IL_008c:  ldc.r4     0.85000002
    IL_0091:  ble.un.s   IL_00a7

    IL_0093:  ldarg.0
    IL_0094:  ldfld      class Game.SubsystemGui Game.ComponentVitalStats::m_subsystemGui
    IL_0099:  ldstr      "You have eaten well"
    IL_009e:  ldc.i4.1
    IL_009f:  ldc.i4.1
    IL_00a0:  callvirt   instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_00a5:  br.s       IL_00b9

    IL_00a7:  ldarg.0
    IL_00a8:  ldfld      class Game.SubsystemGui Game.ComponentVitalStats::m_subsystemGui
    IL_00ad:  ldstr      "Good, but you want more"
    IL_00b2:  ldc.i4.1
    IL_00b3:  ldc.i4.0
    IL_00b4:  callvirt   instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_00b9:  ldarg.0
    IL_00ba:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_00bf:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_00c4:  brfalse.s  IL_00df

    IL_00c6:  ldarg.0
    IL_00c7:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_00cc:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_00d1:  dup
    IL_00d2:  ldfld      int64 Game.PlayerStats::FoodItemsEaten
    IL_00d7:  ldc.i4.1
    IL_00d8:  conv.i8
    IL_00d9:  add
    IL_00da:  stfld      int64 Game.PlayerStats::FoodItemsEaten
    IL_00df:  ldc.i4.1
    IL_00e0:  ret

    IL_00e1:  ldarg.0
    IL_00e2:  ldfld      class Game.SubsystemGui Game.ComponentVitalStats::m_subsystemGui
    IL_00e7:  ldstr      "You are full, no more food!"
    IL_00ec:  ldc.i4.1
    IL_00ed:  ldc.i4.1
    IL_00ee:  callvirt   instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_00f3:  ldc.i4.0
    IL_00f4:  ret
  } // end of method ComponentVitalStats::Eat

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentVitalStats::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       77 (0x4d)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     1.
    IL_0006:  call       instance void Game.ComponentVitalStats::set_PerformanceFactor(float32)
    IL_000b:  ldarg.0
    IL_000c:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0011:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0016:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_001b:  ldc.r4     0.0
    IL_0020:  ble.un.s   IL_0041

    IL_0022:  ldarg.0
    IL_0023:  call       instance void Game.ComponentVitalStats::UpdateFood()
    IL_0028:  ldarg.0
    IL_0029:  call       instance void Game.ComponentVitalStats::UpdateStamina()
    IL_002e:  ldarg.0
    IL_002f:  call       instance void Game.ComponentVitalStats::UpdateSleep()
    IL_0034:  ldarg.0
    IL_0035:  call       instance void Game.ComponentVitalStats::UpdateTemperature()
    IL_003a:  ldarg.0
    IL_003b:  call       instance void Game.ComponentVitalStats::UpdateWetness()
    IL_0040:  ret

    IL_0041:  ldarg.0
    IL_0042:  ldfld      class [Engine]Engine.Audio.Sound Game.ComponentVitalStats::m_pantingSound
    IL_0047:  callvirt   instance void [Engine]Engine.Audio.BaseSound::Stop()
    IL_004c:  ret
  } // end of method ComponentVitalStats::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       382 (0x17e)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_000d:  stfld      class Game.SubsystemGameInfo Game.ComponentVitalStats::m_subsystemGameInfo
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_001f:  stfld      class Game.SubsystemTime Game.ComponentVitalStats::m_subsystemTime
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemCamera>(bool)
    IL_0031:  stfld      class Game.SubsystemCamera Game.ComponentVitalStats::m_subsystemCamera
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0043:  stfld      class Game.SubsystemAudio Game.ComponentVitalStats::m_subsystemAudio
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGui>(bool)
    IL_0055:  stfld      class Game.SubsystemGui Game.ComponentVitalStats::m_subsystemGui
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemScreenOverlays>(bool)
    IL_0067:  stfld      class Game.SubsystemScreenOverlays Game.ComponentVitalStats::m_subsystemScreenOverlays
    IL_006c:  ldarg.0
    IL_006d:  ldarg.0
    IL_006e:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0073:  ldc.i4.1
    IL_0074:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemMetersBlockBehavior>(bool)
    IL_0079:  stfld      class Game.SubsystemMetersBlockBehavior Game.ComponentVitalStats::m_subsystemMetersBlockBehavior
    IL_007e:  ldarg.0
    IL_007f:  ldarg.0
    IL_0080:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0085:  ldc.i4.1
    IL_0086:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemWeather>(bool)
    IL_008b:  stfld      class Game.SubsystemWeather Game.ComponentVitalStats::m_subsystemWeather
    IL_0090:  ldarg.0
    IL_0091:  ldarg.0
    IL_0092:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0097:  ldc.i4.1
    IL_0098:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPlayer>(bool)
    IL_009d:  stfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_00a2:  ldarg.0
    IL_00a3:  ldarg.0
    IL_00a4:  ldfld      class Game.SubsystemAudio Game.ComponentVitalStats::m_subsystemAudio
    IL_00a9:  ldstr      "Audio/HumanPanting"
    IL_00ae:  callvirt   instance class [Engine]Engine.Audio.Sound Game.SubsystemAudio::CreateSound(string)
    IL_00b3:  stfld      class [Engine]Engine.Audio.Sound Game.ComponentVitalStats::m_pantingSound
    IL_00b8:  ldarg.0
    IL_00b9:  ldfld      class [Engine]Engine.Audio.Sound Game.ComponentVitalStats::m_pantingSound
    IL_00be:  ldc.i4.1
    IL_00bf:  callvirt   instance void [Engine]Engine.Audio.BaseSound::set_IsLooped(bool)
    IL_00c4:  ldarg.0
    IL_00c5:  ldarg.1
    IL_00c6:  ldstr      "Food"
    IL_00cb:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00d0:  call       instance void Game.ComponentVitalStats::set_Food(float32)
    IL_00d5:  ldarg.0
    IL_00d6:  ldarg.1
    IL_00d7:  ldstr      "Stamina"
    IL_00dc:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00e1:  call       instance void Game.ComponentVitalStats::set_Stamina(float32)
    IL_00e6:  ldarg.0
    IL_00e7:  ldarg.1
    IL_00e8:  ldstr      "Sleep"
    IL_00ed:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00f2:  call       instance void Game.ComponentVitalStats::set_Sleep(float32)
    IL_00f7:  ldarg.0
    IL_00f8:  ldarg.1
    IL_00f9:  ldstr      "Temperature"
    IL_00fe:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0103:  call       instance void Game.ComponentVitalStats::set_Temperature(float32)
    IL_0108:  ldarg.0
    IL_0109:  ldarg.1
    IL_010a:  ldstr      "Wetness"
    IL_010f:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0114:  call       instance void Game.ComponentVitalStats::set_Wetness(float32)
    IL_0119:  ldarg.0
    IL_011a:  ldarg.0
    IL_011b:  call       instance float32 Game.ComponentVitalStats::get_Food()
    IL_0120:  stfld      float32 Game.ComponentVitalStats::m_lastFood
    IL_0125:  ldarg.0
    IL_0126:  ldarg.0
    IL_0127:  call       instance float32 Game.ComponentVitalStats::get_Stamina()
    IL_012c:  stfld      float32 Game.ComponentVitalStats::m_lastStamina
    IL_0131:  ldarg.0
    IL_0132:  ldarg.0
    IL_0133:  call       instance float32 Game.ComponentVitalStats::get_Sleep()
    IL_0138:  stfld      float32 Game.ComponentVitalStats::m_lastSleep
    IL_013d:  ldarg.0
    IL_013e:  ldarg.0
    IL_013f:  call       instance float32 Game.ComponentVitalStats::get_Temperature()
    IL_0144:  stfld      float32 Game.ComponentVitalStats::m_lastTemperature
    IL_0149:  ldarg.0
    IL_014a:  ldarg.0
    IL_014b:  call       instance float32 Game.ComponentVitalStats::get_Wetness()
    IL_0150:  stfld      float32 Game.ComponentVitalStats::m_lastWetness
    IL_0155:  ldarg.0
    IL_0156:  ldarg.0
    IL_0157:  call       instance float32 Game.ComponentVitalStats::get_Temperature()
    IL_015c:  stfld      float32 Game.ComponentVitalStats::m_environmentTemperature
    IL_0161:  ldarg.0
    IL_0162:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0167:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_016c:  ldarg.0
    IL_016d:  ldftn      instance void Game.ComponentVitalStats::'<Load>b__52_0'(class Game.ComponentCreature)
    IL_0173:  newobj     instance void class [System.Runtime]System.Action`1<class Game.ComponentCreature>::.ctor(object,
                                                                                                                  native int)
    IL_0178:  callvirt   instance void Game.ComponentHealth::add_Attacked(class [System.Runtime]System.Action`1<class Game.ComponentCreature>)
    IL_017d:  ret
  } // end of method ComponentVitalStats::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.EntityToIdMap entityToIdMap) cil managed
  {
    // 代码大小       86 (0x56)
    .maxstack  3
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "Food"
    IL_0006:  ldarg.0
    IL_0007:  call       instance float32 Game.ComponentVitalStats::get_Food()
    IL_000c:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float32>(string,
                                                                                                           !!0)
    IL_0011:  ldarg.1
    IL_0012:  ldstr      "Stamina"
    IL_0017:  ldarg.0
    IL_0018:  call       instance float32 Game.ComponentVitalStats::get_Stamina()
    IL_001d:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float32>(string,
                                                                                                           !!0)
    IL_0022:  ldarg.1
    IL_0023:  ldstr      "Sleep"
    IL_0028:  ldarg.0
    IL_0029:  call       instance float32 Game.ComponentVitalStats::get_Sleep()
    IL_002e:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float32>(string,
                                                                                                           !!0)
    IL_0033:  ldarg.1
    IL_0034:  ldstr      "Temperature"
    IL_0039:  ldarg.0
    IL_003a:  call       instance float32 Game.ComponentVitalStats::get_Temperature()
    IL_003f:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float32>(string,
                                                                                                           !!0)
    IL_0044:  ldarg.1
    IL_0045:  ldstr      "Wetness"
    IL_004a:  ldarg.0
    IL_004b:  call       instance float32 Game.ComponentVitalStats::get_Wetness()
    IL_0050:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float32>(string,
                                                                                                           !!0)
    IL_0055:  ret
  } // end of method ComponentVitalStats::Save

  .method family hidebysig virtual instance void 
          OnEntityRemoved() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.Audio.Sound Game.ComponentVitalStats::m_pantingSound
    IL_0006:  callvirt   instance void [Engine]Engine.Audio.BaseSound::Stop()
    IL_000b:  ret
  } // end of method ComponentVitalStats::OnEntityRemoved

  .method private hidebysig instance void 
          UpdateFood() cil managed
  {
    // 代码大小       869 (0x365)
    .maxstack  5
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             bool V_4,
             bool V_5,
             bool V_6,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_7,
             valuetype [Engine]Engine.Vector2 V_8,
             valuetype [System.Runtime]System.Nullable`1<int32> V_9,
             float32 V_10,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> V_11)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTime Game.ComponentVitalStats::m_subsystemTime
    IL_0006:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0012:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0017:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentLocomotion::get_LastWalkOrder()
    IL_001c:  stloc.s    V_7
    IL_001e:  ldloca.s   V_7
    IL_0020:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0025:  brtrue.s   IL_002e

    IL_0027:  ldc.r4     0.0
    IL_002c:  br.s       IL_0050

    IL_002e:  ldarg.0
    IL_002f:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0034:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0039:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentLocomotion::get_LastWalkOrder()
    IL_003e:  stloc.s    V_7
    IL_0040:  ldloca.s   V_7
    IL_0042:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0047:  stloc.s    V_8
    IL_0049:  ldloca.s   V_8
    IL_004b:  call       instance float32 [Engine]Engine.Vector2::Length()
    IL_0050:  stloc.1
    IL_0051:  ldarg.0
    IL_0052:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0057:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_005c:  callvirt   instance float32 Game.ComponentLocomotion::get_LastJumpOrder()
    IL_0061:  stloc.2
    IL_0062:  ldarg.0
    IL_0063:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0068:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_006d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_0072:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0077:  ldarg.0
    IL_0078:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_007d:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0082:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0087:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_008c:  sub
    IL_008d:  stloc.3
    IL_008e:  ldarg.0
    IL_008f:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0094:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0099:  callvirt   instance float32 Game.ComponentBody::get_ImmersionDepth()
    IL_009e:  ldloc.3
    IL_009f:  cgt
    IL_00a1:  stloc.s    V_4
    IL_00a3:  ldarg.0
    IL_00a4:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_00a9:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00ae:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_00b3:  ldc.r4     0.33000001
    IL_00b8:  ble.un.s   IL_00d8

    IL_00ba:  ldarg.0
    IL_00bb:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_00c0:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00c5:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_00ca:  stloc.s    V_9
    IL_00cc:  ldloca.s   V_9
    IL_00ce:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_00d3:  ldc.i4.0
    IL_00d4:  ceq
    IL_00d6:  br.s       IL_00d9

    IL_00d8:  ldc.i4.0
    IL_00d9:  stloc.s    V_5
    IL_00db:  ldarg.0
    IL_00dc:  ldfld      class Game.SubsystemTime Game.ComponentVitalStats::m_subsystemTime
    IL_00e1:  ldc.r8     240.
    IL_00ea:  ldc.r8     13.
    IL_00f3:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_00f8:  stloc.s    V_6
    IL_00fa:  ldarg.0
    IL_00fb:  ldfld      class Game.SubsystemGameInfo Game.ComponentVitalStats::m_subsystemGameInfo
    IL_0100:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_0105:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_010a:  brfalse    IL_0324

    IL_010f:  ldarg.0
    IL_0110:  ldfld      class Game.SubsystemGameInfo Game.ComponentVitalStats::m_subsystemGameInfo
    IL_0115:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_011a:  ldfld      bool Game.WorldInfo::AreAdventureSurvivalMechanicsEnabled
    IL_011f:  brfalse    IL_0324

    IL_0124:  ldarg.0
    IL_0125:  ldfld      class Game.SubsystemGameInfo Game.ComponentVitalStats::m_subsystemGameInfo
    IL_012a:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_012f:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_0134:  ldc.i4.1
    IL_0135:  beq.s      IL_013e

    IL_0137:  ldc.r4     1.
    IL_013c:  br.s       IL_0143

    IL_013e:  ldc.r4     1.5
    IL_0143:  stloc.s    V_10
    IL_0145:  ldarg.0
    IL_0146:  ldarg.0
    IL_0147:  call       instance float32 Game.ComponentVitalStats::get_Food()
    IL_014c:  ldloc.0
    IL_014d:  ldc.r4     2.
    IL_0152:  ldloc.s    V_10
    IL_0154:  mul
    IL_0155:  ldc.r4     1200.
    IL_015a:  mul
    IL_015b:  div
    IL_015c:  sub
    IL_015d:  call       instance void Game.ComponentVitalStats::set_Food(float32)
    IL_0162:  ldloc.s    V_5
    IL_0164:  ldloc.s    V_4
    IL_0166:  or
    IL_0167:  brfalse.s  IL_018a

    IL_0169:  ldarg.0
    IL_016a:  ldarg.0
    IL_016b:  call       instance float32 Game.ComponentVitalStats::get_Food()
    IL_0170:  ldloc.0
    IL_0171:  ldloc.1
    IL_0172:  mul
    IL_0173:  ldc.r4     1.
    IL_0178:  ldloc.s    V_10
    IL_017a:  mul
    IL_017b:  ldc.r4     1200.
    IL_0180:  mul
    IL_0181:  div
    IL_0182:  sub
    IL_0183:  call       instance void Game.ComponentVitalStats::set_Food(float32)
    IL_0188:  br.s       IL_01a9

    IL_018a:  ldarg.0
    IL_018b:  ldarg.0
    IL_018c:  call       instance float32 Game.ComponentVitalStats::get_Food()
    IL_0191:  ldloc.0
    IL_0192:  ldloc.1
    IL_0193:  mul
    IL_0194:  ldc.r4     2.
    IL_0199:  ldloc.s    V_10
    IL_019b:  mul
    IL_019c:  ldc.r4     1200.
    IL_01a1:  mul
    IL_01a2:  div
    IL_01a3:  sub
    IL_01a4:  call       instance void Game.ComponentVitalStats::set_Food(float32)
    IL_01a9:  ldarg.0
    IL_01aa:  ldarg.0
    IL_01ab:  call       instance float32 Game.ComponentVitalStats::get_Food()
    IL_01b0:  ldloc.2
    IL_01b1:  ldc.r4     1000.
    IL_01b6:  ldloc.s    V_10
    IL_01b8:  mul
    IL_01b9:  div
    IL_01ba:  sub
    IL_01bb:  call       instance void Game.ComponentVitalStats::set_Food(float32)
    IL_01c0:  ldarg.0
    IL_01c1:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_01c6:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_01cb:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> Game.ComponentMiner::get_DigCellFace()
    IL_01d0:  stloc.s    V_11
    IL_01d2:  ldloca.s   V_11
    IL_01d4:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>::get_HasValue()
    IL_01d9:  brfalse.s  IL_01f8

    IL_01db:  ldarg.0
    IL_01dc:  ldarg.0
    IL_01dd:  call       instance float32 Game.ComponentVitalStats::get_Food()
    IL_01e2:  ldloc.0
    IL_01e3:  ldc.r4     2.
    IL_01e8:  ldloc.s    V_10
    IL_01ea:  mul
    IL_01eb:  ldc.r4     1200.
    IL_01f0:  mul
    IL_01f1:  div
    IL_01f2:  sub
    IL_01f3:  call       instance void Game.ComponentVitalStats::set_Food(float32)
    IL_01f8:  ldarg.0
    IL_01f9:  call       instance float32 Game.ComponentVitalStats::get_Food()
    IL_01fe:  ldc.r4     0.0
    IL_0203:  bgt.un.s   IL_0282

    IL_0205:  ldarg.0
    IL_0206:  ldfld      class Game.SubsystemTime Game.ComponentVitalStats::m_subsystemTime
    IL_020b:  ldc.r8     30.
    IL_0214:  ldc.r8     0.0
    IL_021d:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_0222:  brfalse    IL_032f

    IL_0227:  ldarg.0
    IL_0228:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_022d:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0232:  ldc.r4     5.0000001e-002
    IL_0237:  ldnull
    IL_0238:  ldc.i4.0
    IL_0239:  ldstr      "Starved to death"
    IL_023e:  callvirt   instance void Game.ComponentHealth::Injure(float32,
                                                                    class Game.ComponentCreature,
                                                                    bool,
                                                                    string)
    IL_0243:  ldarg.0
    IL_0244:  ldfld      class Game.SubsystemGui Game.ComponentVitalStats::m_subsystemGui
    IL_0249:  ldstr      "You are starving, find food!"
    IL_024e:  ldc.i4.1
    IL_024f:  ldc.i4.0
    IL_0250:  callvirt   instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0255:  ldarg.0
    IL_0256:  ldfld      class Game.SubsystemCamera Game.ComponentVitalStats::m_subsystemCamera
    IL_025b:  ldarg.0
    IL_025c:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0261:  callvirt   instance bool Game.SubsystemCamera::IsEntityTarget(class [EntitySystem]GameEntitySystem.Entity)
    IL_0266:  brfalse    IL_032f

    IL_026b:  ldarg.0
    IL_026c:  ldfld      class Game.SubsystemGui Game.ComponentVitalStats::m_subsystemGui
    IL_0271:  callvirt   instance class Game.ValueBarWidget Game.SubsystemGui::get_FoodBarWidget()
    IL_0276:  ldc.i4.s   10
    IL_0278:  callvirt   instance void Game.ValueBarWidget::Flash(int32)
    IL_027d:  br         IL_032f

    IL_0282:  ldarg.0
    IL_0283:  call       instance float32 Game.ComponentVitalStats::get_Food()
    IL_0288:  ldc.r4     0.1
    IL_028d:  bge.un.s   IL_02b8

    IL_028f:  ldarg.0
    IL_0290:  ldfld      float32 Game.ComponentVitalStats::m_lastFood
    IL_0295:  ldc.r4     0.1
    IL_029a:  clt.un
    IL_029c:  ldc.i4.0
    IL_029d:  ceq
    IL_029f:  ldloc.s    V_6
    IL_02a1:  or
    IL_02a2:  brfalse.s  IL_02b8

    IL_02a4:  ldarg.0
    IL_02a5:  ldfld      class Game.SubsystemGui Game.ComponentVitalStats::m_subsystemGui
    IL_02aa:  ldstr      "You are close to starvation"
    IL_02af:  ldc.i4.1
    IL_02b0:  ldc.i4.1
    IL_02b1:  callvirt   instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_02b6:  br.s       IL_032f

    IL_02b8:  ldarg.0
    IL_02b9:  call       instance float32 Game.ComponentVitalStats::get_Food()
    IL_02be:  ldc.r4     0.25
    IL_02c3:  bge.un.s   IL_02ee

    IL_02c5:  ldarg.0
    IL_02c6:  ldfld      float32 Game.ComponentVitalStats::m_lastFood
    IL_02cb:  ldc.r4     0.25
    IL_02d0:  clt.un
    IL_02d2:  ldc.i4.0
    IL_02d3:  ceq
    IL_02d5:  ldloc.s    V_6
    IL_02d7:  or
    IL_02d8:  brfalse.s  IL_02ee

    IL_02da:  ldarg.0
    IL_02db:  ldfld      class Game.SubsystemGui Game.ComponentVitalStats::m_subsystemGui
    IL_02e0:  ldstr      "Time to eat something"
    IL_02e5:  ldc.i4.1
    IL_02e6:  ldc.i4.1
    IL_02e7:  callvirt   instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_02ec:  br.s       IL_032f

    IL_02ee:  ldarg.0
    IL_02ef:  call       instance float32 Game.ComponentVitalStats::get_Food()
    IL_02f4:  ldc.r4     0.5
    IL_02f9:  bge.un.s   IL_032f

    IL_02fb:  ldarg.0
    IL_02fc:  ldfld      float32 Game.ComponentVitalStats::m_lastFood
    IL_0301:  ldc.r4     0.5
    IL_0306:  clt.un
    IL_0308:  ldc.i4.0
    IL_0309:  ceq
    IL_030b:  ldloc.s    V_6
    IL_030d:  or
    IL_030e:  brfalse.s  IL_032f

    IL_0310:  ldarg.0
    IL_0311:  ldfld      class Game.SubsystemGui Game.ComponentVitalStats::m_subsystemGui
    IL_0316:  ldstr      "You are slightly hungry"
    IL_031b:  ldc.i4.1
    IL_031c:  ldc.i4.0
    IL_031d:  callvirt   instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0322:  br.s       IL_032f

    IL_0324:  ldarg.0
    IL_0325:  ldc.r4     0.89999998
    IL_032a:  call       instance void Game.ComponentVitalStats::set_Food(float32)
    IL_032f:  ldarg.0
    IL_0330:  ldarg.0
    IL_0331:  call       instance float32 Game.ComponentVitalStats::get_Food()
    IL_0336:  stfld      float32 Game.ComponentVitalStats::m_lastFood
    IL_033b:  ldarg.0
    IL_033c:  ldfld      class Game.SubsystemCamera Game.ComponentVitalStats::m_subsystemCamera
    IL_0341:  ldarg.0
    IL_0342:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0347:  callvirt   instance bool Game.SubsystemCamera::IsEntityTarget(class [EntitySystem]GameEntitySystem.Entity)
    IL_034c:  brfalse.s  IL_0364

    IL_034e:  ldarg.0
    IL_034f:  ldfld      class Game.SubsystemGui Game.ComponentVitalStats::m_subsystemGui
    IL_0354:  callvirt   instance class Game.ValueBarWidget Game.SubsystemGui::get_FoodBarWidget()
    IL_0359:  ldarg.0
    IL_035a:  call       instance float32 Game.ComponentVitalStats::get_Food()
    IL_035f:  callvirt   instance void Game.ValueBarWidget::set_Value(float32)
    IL_0364:  ret
  } // end of method ComponentVitalStats::UpdateFood

  .method private hidebysig instance void 
          UpdateStamina() cil managed
  {
    // 代码大小       1180 (0x49c)
    .maxstack  6
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             bool V_4,
             bool V_5,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_6,
             valuetype [Engine]Engine.Vector2 V_7,
             valuetype [System.Runtime]System.Nullable`1<int32> V_8,
             float32 V_9,
             float32 V_10,
             float32 V_11)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTime Game.ComponentVitalStats::m_subsystemTime
    IL_0006:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0012:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0017:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentLocomotion::get_LastWalkOrder()
    IL_001c:  stloc.s    V_6
    IL_001e:  ldloca.s   V_6
    IL_0020:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0025:  brtrue.s   IL_002e

    IL_0027:  ldc.r4     0.0
    IL_002c:  br.s       IL_0050

    IL_002e:  ldarg.0
    IL_002f:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0034:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0039:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentLocomotion::get_LastWalkOrder()
    IL_003e:  stloc.s    V_6
    IL_0040:  ldloca.s   V_6
    IL_0042:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0047:  stloc.s    V_7
    IL_0049:  ldloca.s   V_7
    IL_004b:  call       instance float32 [Engine]Engine.Vector2::Length()
    IL_0050:  stloc.1
    IL_0051:  ldarg.0
    IL_0052:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0057:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_005c:  callvirt   instance float32 Game.ComponentLocomotion::get_LastJumpOrder()
    IL_0061:  stloc.2
    IL_0062:  ldarg.0
    IL_0063:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0068:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_006d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_0072:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0077:  ldarg.0
    IL_0078:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_007d:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0082:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0087:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_008c:  sub
    IL_008d:  stloc.3
    IL_008e:  ldarg.0
    IL_008f:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0094:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0099:  callvirt   instance float32 Game.ComponentBody::get_ImmersionDepth()
    IL_009e:  ldloc.3
    IL_009f:  cgt
    IL_00a1:  stloc.s    V_4
    IL_00a3:  ldarg.0
    IL_00a4:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_00a9:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00ae:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_00b3:  ldc.r4     0.33000001
    IL_00b8:  ble.un.s   IL_00d8

    IL_00ba:  ldarg.0
    IL_00bb:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_00c0:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00c5:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_00ca:  stloc.s    V_8
    IL_00cc:  ldloca.s   V_8
    IL_00ce:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_00d3:  ldc.i4.0
    IL_00d4:  ceq
    IL_00d6:  br.s       IL_00d9

    IL_00d8:  ldc.i4.0
    IL_00d9:  stloc.s    V_5
    IL_00db:  ldarg.0
    IL_00dc:  ldfld      class Game.SubsystemGameInfo Game.ComponentVitalStats::m_subsystemGameInfo
    IL_00e1:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_00e6:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_00eb:  brfalse    IL_046f

    IL_00f0:  ldarg.0
    IL_00f1:  ldfld      class Game.SubsystemGameInfo Game.ComponentVitalStats::m_subsystemGameInfo
    IL_00f6:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_00fb:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_0100:  ldc.i4.1
    IL_0101:  beq        IL_046f

    IL_0106:  ldarg.0
    IL_0107:  ldfld      class Game.SubsystemGameInfo Game.ComponentVitalStats::m_subsystemGameInfo
    IL_010c:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_0111:  ldfld      bool Game.WorldInfo::AreAdventureSurvivalMechanicsEnabled
    IL_0116:  brfalse    IL_046f

    IL_011b:  ldarg.0
    IL_011c:  ldarg.0
    IL_011d:  call       instance float32 Game.ComponentVitalStats::get_Stamina()
    IL_0122:  ldloc.0
    IL_0123:  ldc.r4     7.e-002
    IL_0128:  mul
    IL_0129:  add
    IL_012a:  call       instance void Game.ComponentVitalStats::set_Stamina(float32)
    IL_012f:  ldarg.0
    IL_0130:  ldarg.0
    IL_0131:  call       instance float32 Game.ComponentVitalStats::get_Stamina()
    IL_0136:  ldc.r4     2.5e-002
    IL_013b:  ldloc.2
    IL_013c:  mul
    IL_013d:  sub
    IL_013e:  call       instance void Game.ComponentVitalStats::set_Stamina(float32)
    IL_0143:  ldloc.s    V_5
    IL_0145:  ldloc.s    V_4
    IL_0147:  or
    IL_0148:  brfalse.s  IL_0168

    IL_014a:  ldarg.0
    IL_014b:  ldarg.0
    IL_014c:  call       instance float32 Game.ComponentVitalStats::get_Stamina()
    IL_0151:  ldloc.0
    IL_0152:  ldc.r4     7.5999998e-002
    IL_0157:  ldc.r4     9.9999998e-003
    IL_015c:  ldloc.1
    IL_015d:  mul
    IL_015e:  add
    IL_015f:  mul
    IL_0160:  sub
    IL_0161:  call       instance void Game.ComponentVitalStats::set_Stamina(float32)
    IL_0166:  br.s       IL_017e

    IL_0168:  ldarg.0
    IL_0169:  ldarg.0
    IL_016a:  call       instance float32 Game.ComponentVitalStats::get_Stamina()
    IL_016f:  ldloc.0
    IL_0170:  ldc.r4     7.5999998e-002
    IL_0175:  mul
    IL_0176:  ldloc.1
    IL_0177:  mul
    IL_0178:  sub
    IL_0179:  call       instance void Game.ComponentVitalStats::set_Stamina(float32)
    IL_017e:  ldloc.s    V_5
    IL_0180:  brtrue.s   IL_01b2

    IL_0182:  ldloc.s    V_4
    IL_0184:  brtrue.s   IL_01b2

    IL_0186:  ldarg.0
    IL_0187:  call       instance float32 Game.ComponentVitalStats::get_Stamina()
    IL_018c:  ldc.r4     0.33000001
    IL_0191:  bge.un.s   IL_01b2

    IL_0193:  ldarg.0
    IL_0194:  ldfld      float32 Game.ComponentVitalStats::m_lastStamina
    IL_0199:  ldc.r4     0.33000001
    IL_019e:  blt.un.s   IL_01b2

    IL_01a0:  ldarg.0
    IL_01a1:  ldfld      class Game.SubsystemGui Game.ComponentVitalStats::m_subsystemGui
    IL_01a6:  ldstr      "You are panting, slow down"
    IL_01ab:  ldc.i4.1
    IL_01ac:  ldc.i4.0
    IL_01ad:  callvirt   instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_01b2:  ldloc.s    V_5
    IL_01b4:  ldloc.s    V_4
    IL_01b6:  or
    IL_01b7:  brfalse.s  IL_01e5

    IL_01b9:  ldarg.0
    IL_01ba:  call       instance float32 Game.ComponentVitalStats::get_Stamina()
    IL_01bf:  ldc.r4     0.5
    IL_01c4:  bge.un.s   IL_01e5

    IL_01c6:  ldarg.0
    IL_01c7:  ldfld      float32 Game.ComponentVitalStats::m_lastStamina
    IL_01cc:  ldc.r4     0.5
    IL_01d1:  blt.un.s   IL_01e5

    IL_01d3:  ldarg.0
    IL_01d4:  ldfld      class Game.SubsystemGui Game.ComponentVitalStats::m_subsystemGui
    IL_01d9:  ldstr      "You are panting, get out of the water"
    IL_01de:  ldc.i4.1
    IL_01df:  ldc.i4.1
    IL_01e0:  callvirt   instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_01e5:  ldarg.0
    IL_01e6:  call       instance float32 Game.ComponentVitalStats::get_Stamina()
    IL_01eb:  ldc.r4     0.1
    IL_01f0:  bge.un     IL_02b2

    IL_01f5:  ldloc.s    V_5
    IL_01f7:  ldloc.s    V_4
    IL_01f9:  or
    IL_01fa:  brfalse    IL_0281

    IL_01ff:  ldarg.0
    IL_0200:  ldfld      class Game.SubsystemTime Game.ComponentVitalStats::m_subsystemTime
    IL_0205:  ldc.r8     5.
    IL_020e:  ldc.r8     0.0
    IL_0217:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_021c:  brfalse.s  IL_024c

    IL_021e:  ldarg.0
    IL_021f:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0224:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0229:  ldc.r4     5.0000001e-002
    IL_022e:  ldnull
    IL_022f:  ldc.i4.0
    IL_0230:  ldstr      "Drowned"
    IL_0235:  callvirt   instance void Game.ComponentHealth::Injure(float32,
                                                                    class Game.ComponentCreature,
                                                                    bool,
                                                                    string)
    IL_023a:  ldarg.0
    IL_023b:  ldfld      class Game.SubsystemGui Game.ComponentVitalStats::m_subsystemGui
    IL_0240:  ldstr      "You are drowning!"
    IL_0245:  ldc.i4.1
    IL_0246:  ldc.i4.0
    IL_0247:  callvirt   instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_024c:  ldarg.0
    IL_024d:  ldfld      class Game.Random Game.ComponentVitalStats::m_random
    IL_0252:  ldc.r4     0.0
    IL_0257:  ldc.r4     1.
    IL_025c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0261:  ldc.r4     1.
    IL_0266:  ldloc.0
    IL_0267:  mul
    IL_0268:  bge.un.s   IL_02b2

    IL_026a:  ldarg.0
    IL_026b:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0270:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0275:  ldc.r4     1.
    IL_027a:  callvirt   instance void Game.ComponentLocomotion::set_JumpOrder(float32)
    IL_027f:  br.s       IL_02b2

    IL_0281:  ldarg.0
    IL_0282:  ldfld      class Game.SubsystemTime Game.ComponentVitalStats::m_subsystemTime
    IL_0287:  ldc.r8     5.
    IL_0290:  ldc.r8     0.0
    IL_0299:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_029e:  brfalse.s  IL_02b2

    IL_02a0:  ldarg.0
    IL_02a1:  ldfld      class Game.SubsystemGui Game.ComponentVitalStats::m_subsystemGui
    IL_02a6:  ldstr      "Rest a while!"
    IL_02ab:  ldc.i4.1
    IL_02ac:  ldc.i4.1
    IL_02ad:  callvirt   instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_02b2:  ldarg.0
    IL_02b3:  ldarg.0
    IL_02b4:  call       instance float32 Game.ComponentVitalStats::get_Stamina()
    IL_02b9:  stfld      float32 Game.ComponentVitalStats::m_lastStamina
    IL_02be:  ldc.r4     2.
    IL_02c3:  ldc.r4     0.5
    IL_02c8:  ldarg.0
    IL_02c9:  call       instance float32 Game.ComponentVitalStats::get_Stamina()
    IL_02ce:  sub
    IL_02cf:  mul
    IL_02d0:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_02d5:  stloc.s    V_9
    IL_02d7:  ldloc.s    V_4
    IL_02d9:  brtrue     IL_03b6

    IL_02de:  ldloc.s    V_9
    IL_02e0:  ldc.r4     0.0
    IL_02e5:  ble.un     IL_03b6

    IL_02ea:  ldarg.0
    IL_02eb:  ldfld      class [Engine]Engine.Audio.Sound Game.ComponentVitalStats::m_pantingSound
    IL_02f0:  callvirt   instance void [Engine]Engine.Audio.BaseSound::Play()
    IL_02f5:  ldarg.0
    IL_02f6:  ldfld      class [Engine]Engine.Audio.Sound Game.ComponentVitalStats::m_pantingSound
    IL_02fb:  ldc.r4     1.
    IL_0300:  call       float32 Game.AudioManager::get_GlobalVolume()
    IL_0305:  mul
    IL_0306:  ldc.r4     1.
    IL_030b:  ldloc.s    V_9
    IL_030d:  mul
    IL_030e:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0313:  mul
    IL_0314:  ldc.r4     0.80000001
    IL_0319:  ldc.r4     1.
    IL_031e:  ldc.r8     3.
    IL_0327:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_032c:  mul
    IL_032d:  ldc.r8     100.
    IL_0336:  add
    IL_0337:  ldc.r8     1000.
    IL_0340:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_0345:  conv.r4
    IL_0346:  call       float32 Game.SimplexNoise::Noise(float32)
    IL_034b:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0350:  mul
    IL_0351:  callvirt   instance void [Engine]Engine.Audio.BaseSound::set_Volume(float32)
    IL_0356:  ldarg.0
    IL_0357:  ldfld      class [Engine]Engine.Audio.Sound Game.ComponentVitalStats::m_pantingSound
    IL_035c:  ldc.r4     -0.15000001
    IL_0361:  ldc.r4     5.0000001e-002
    IL_0366:  ldloc.s    V_9
    IL_0368:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_036d:  ldc.r4     0.80000001
    IL_0372:  ldc.r4     1.2
    IL_0377:  ldc.r8     3.
    IL_0380:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0385:  mul
    IL_0386:  ldc.r8     200.
    IL_038f:  add
    IL_0390:  ldc.r8     1000.
    IL_0399:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_039e:  conv.r4
    IL_039f:  call       float32 Game.SimplexNoise::Noise(float32)
    IL_03a4:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_03a9:  mul
    IL_03aa:  call       float32 Game.AudioManager::ToEnginePitch(float32)
    IL_03af:  callvirt   instance void [Engine]Engine.Audio.BaseSound::set_Pitch(float32)
    IL_03b4:  br.s       IL_03c1

    IL_03b6:  ldarg.0
    IL_03b7:  ldfld      class [Engine]Engine.Audio.Sound Game.ComponentVitalStats::m_pantingSound
    IL_03bc:  callvirt   instance void [Engine]Engine.Audio.BaseSound::Stop()
    IL_03c1:  ldc.r4     3.
    IL_03c6:  ldc.r4     0.33000001
    IL_03cb:  ldarg.0
    IL_03cc:  call       instance float32 Game.ComponentVitalStats::get_Stamina()
    IL_03d1:  sub
    IL_03d2:  mul
    IL_03d3:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_03d8:  stloc.s    V_10
    IL_03da:  ldloc.s    V_10
    IL_03dc:  ldc.r4     0.0
    IL_03e1:  ble.un.s   IL_040d

    IL_03e3:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_03e8:  ldc.r8     1000.
    IL_03f1:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_03f6:  conv.r4
    IL_03f7:  call       float32 Game.SimplexNoise::Noise(float32)
    IL_03fc:  ldloc.s    V_10
    IL_03fe:  bge.un.s   IL_040d

    IL_0400:  ldarg.0
    IL_0401:  ldc.r4     0.60000002
    IL_0406:  call       instance void Game.ComponentVitalStats::ApplyDensityModifier(float32)
    IL_040b:  br.s       IL_0418

    IL_040d:  ldarg.0
    IL_040e:  ldc.r4     0.0
    IL_0413:  call       instance void Game.ComponentVitalStats::ApplyDensityModifier(float32)
    IL_0418:  ldc.r4     0.89999998
    IL_041d:  ldc.r4     1.
    IL_0422:  ldarg.0
    IL_0423:  ldfld      float32 Game.ComponentVitalStats::m_stamina
    IL_0428:  ldc.r4     0.5
    IL_042d:  sub
    IL_042e:  ldc.r4     0.5
    IL_0433:  div
    IL_0434:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0439:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_043e:  stloc.s    V_11
    IL_0440:  ldarg.0
    IL_0441:  ldarg.0
    IL_0442:  call       instance float32 Game.ComponentVitalStats::get_PerformanceFactor()
    IL_0447:  ldc.r4     0.5
    IL_044c:  ldloc.s    V_11
    IL_044e:  ldc.r4     4.
    IL_0453:  ldarg.0
    IL_0454:  ldfld      float32 Game.ComponentVitalStats::m_stamina
    IL_0459:  mul
    IL_045a:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_045f:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0464:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0469:  call       instance void Game.ComponentVitalStats::set_PerformanceFactor(float32)
    IL_046e:  ret

    IL_046f:  ldarg.0
    IL_0470:  ldc.r4     1.
    IL_0475:  call       instance void Game.ComponentVitalStats::set_Stamina(float32)
    IL_047a:  ldarg.0
    IL_047b:  ldarg.0
    IL_047c:  call       instance float32 Game.ComponentVitalStats::get_PerformanceFactor()
    IL_0481:  ldc.r4     1.
    IL_0486:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_048b:  call       instance void Game.ComponentVitalStats::set_PerformanceFactor(float32)
    IL_0490:  ldarg.0
    IL_0491:  ldc.r4     0.0
    IL_0496:  call       instance void Game.ComponentVitalStats::ApplyDensityModifier(float32)
    IL_049b:  ret
  } // end of method ComponentVitalStats::UpdateStamina

  .method private hidebysig instance void 
          UpdateSleep() cil managed
  {
    // 代码大小       977 (0x3d1)
    .maxstack  5
    .locals init (float32 V_0,
             bool V_1,
             bool V_2,
             float32 V_3,
             valuetype [System.Runtime]System.Nullable`1<float64> V_4,
             float64 V_5,
             float64 V_6,
             valuetype [System.Runtime]System.Nullable`1<float64> V_7,
             valuetype [System.Runtime]System.Nullable`1<float64> V_8,
             float32 V_9,
             float32 V_10)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTime Game.ComponentVitalStats::m_subsystemTime
    IL_0006:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0012:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0017:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_001c:  ldc.r4     5.0000001e-002
    IL_0021:  cgt
    IL_0023:  stloc.1
    IL_0024:  ldarg.0
    IL_0025:  ldfld      class Game.SubsystemTime Game.ComponentVitalStats::m_subsystemTime
    IL_002a:  ldc.r8     240.
    IL_0033:  ldc.r8     9.
    IL_003c:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_0041:  stloc.2
    IL_0042:  ldarg.0
    IL_0043:  ldfld      class Game.SubsystemGameInfo Game.ComponentVitalStats::m_subsystemGameInfo
    IL_0048:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_004d:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_0052:  brfalse    IL_02d5

    IL_0057:  ldarg.0
    IL_0058:  ldfld      class Game.SubsystemGameInfo Game.ComponentVitalStats::m_subsystemGameInfo
    IL_005d:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_0062:  ldfld      bool Game.WorldInfo::AreAdventureSurvivalMechanicsEnabled
    IL_0067:  brfalse    IL_02d5

    IL_006c:  ldarg.0
    IL_006d:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0072:  callvirt   instance class Game.ComponentSleep Game.ComponentPlayer::get_ComponentSleep()
    IL_0077:  callvirt   instance bool Game.ComponentSleep::get_IsSleeping()
    IL_007c:  brfalse.s  IL_0097

    IL_007e:  ldarg.0
    IL_007f:  ldarg.0
    IL_0080:  call       instance float32 Game.ComponentVitalStats::get_Sleep()
    IL_0085:  ldc.r4     0.1
    IL_008a:  ldloc.0
    IL_008b:  mul
    IL_008c:  add
    IL_008d:  call       instance void Game.ComponentVitalStats::set_Sleep(float32)
    IL_0092:  br         IL_02e0

    IL_0097:  ldloc.1
    IL_0098:  brtrue     IL_02e0

    IL_009d:  ldarg.0
    IL_009e:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentVitalStats::m_lastAttackedTime
    IL_00a3:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_00a8:  brfalse.s  IL_0107

    IL_00aa:  ldarg.0
    IL_00ab:  ldfld      class Game.SubsystemTime Game.ComponentVitalStats::m_subsystemTime
    IL_00b0:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_00b5:  stloc.s    V_6
    IL_00b7:  ldarg.0
    IL_00b8:  ldfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentVitalStats::m_lastAttackedTime
    IL_00bd:  stloc.s    V_7
    IL_00bf:  ldloca.s   V_7
    IL_00c1:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_00c6:  brtrue.s   IL_00d4

    IL_00c8:  ldloca.s   V_8
    IL_00ca:  initobj    valuetype [System.Runtime]System.Nullable`1<float64>
    IL_00d0:  ldloc.s    V_8
    IL_00d2:  br.s       IL_00e3

    IL_00d4:  ldloc.s    V_6
    IL_00d6:  ldloca.s   V_7
    IL_00d8:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::GetValueOrDefault()
    IL_00dd:  sub
    IL_00de:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_00e3:  stloc.s    V_4
    IL_00e5:  ldc.r4     10.
    IL_00ea:  conv.r8
    IL_00eb:  stloc.s    V_5
    IL_00ed:  ldloca.s   V_4
    IL_00ef:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::GetValueOrDefault()
    IL_00f4:  ldloc.s    V_5
    IL_00f6:  bgt.s      IL_00fb

    IL_00f8:  ldc.i4.0
    IL_00f9:  br.s       IL_0102

    IL_00fb:  ldloca.s   V_4
    IL_00fd:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_0102:  brfalse    IL_02e0

    IL_0107:  ldarg.0
    IL_0108:  ldarg.0
    IL_0109:  call       instance float32 Game.ComponentVitalStats::get_Sleep()
    IL_010e:  ldloc.0
    IL_010f:  ldc.r4     1800.
    IL_0114:  div
    IL_0115:  sub
    IL_0116:  call       instance void Game.ComponentVitalStats::set_Sleep(float32)
    IL_011b:  ldarg.0
    IL_011c:  call       instance float32 Game.ComponentVitalStats::get_Sleep()
    IL_0121:  ldc.r4     7.5000003e-002
    IL_0126:  bge.un.s   IL_0159

    IL_0128:  ldarg.0
    IL_0129:  ldfld      float32 Game.ComponentVitalStats::m_lastSleep
    IL_012e:  ldc.r4     7.5000003e-002
    IL_0133:  clt.un
    IL_0135:  ldc.i4.0
    IL_0136:  ceq
    IL_0138:  ldloc.2
    IL_0139:  or
    IL_013a:  brfalse.s  IL_0159

    IL_013c:  ldarg.0
    IL_013d:  ldfld      class Game.SubsystemGui Game.ComponentVitalStats::m_subsystemGui
    IL_0142:  ldstr      "You will faint, go to sleep!"
    IL_0147:  ldc.i4.1
    IL_0148:  ldc.i4.1
    IL_0149:  callvirt   instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_014e:  ldarg.0
    IL_014f:  call       instance void Game.ComponentVitalStats::PlayMoanSound()
    IL_0154:  br         IL_01fc

    IL_0159:  ldarg.0
    IL_015a:  call       instance float32 Game.ComponentVitalStats::get_Sleep()
    IL_015f:  ldc.r4     0.2
    IL_0164:  bge.un.s   IL_0194

    IL_0166:  ldarg.0
    IL_0167:  ldfld      float32 Game.ComponentVitalStats::m_lastSleep
    IL_016c:  ldc.r4     0.2
    IL_0171:  clt.un
    IL_0173:  ldc.i4.0
    IL_0174:  ceq
    IL_0176:  ldloc.2
    IL_0177:  or
    IL_0178:  brfalse.s  IL_0194

    IL_017a:  ldarg.0
    IL_017b:  ldfld      class Game.SubsystemGui Game.ComponentVitalStats::m_subsystemGui
    IL_0180:  ldstr      "You are falling over, sleep"
    IL_0185:  ldc.i4.1
    IL_0186:  ldc.i4.1
    IL_0187:  callvirt   instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_018c:  ldarg.0
    IL_018d:  call       instance void Game.ComponentVitalStats::PlayMoanSound()
    IL_0192:  br.s       IL_01fc

    IL_0194:  ldarg.0
    IL_0195:  call       instance float32 Game.ComponentVitalStats::get_Sleep()
    IL_019a:  ldc.r4     0.33000001
    IL_019f:  bge.un.s   IL_01c9

    IL_01a1:  ldarg.0
    IL_01a2:  ldfld      float32 Game.ComponentVitalStats::m_lastSleep
    IL_01a7:  ldc.r4     0.33000001
    IL_01ac:  clt.un
    IL_01ae:  ldc.i4.0
    IL_01af:  ceq
    IL_01b1:  ldloc.2
    IL_01b2:  or
    IL_01b3:  brfalse.s  IL_01c9

    IL_01b5:  ldarg.0
    IL_01b6:  ldfld      class Game.SubsystemGui Game.ComponentVitalStats::m_subsystemGui
    IL_01bb:  ldstr      "You are very tired, sleep"
    IL_01c0:  ldc.i4.1
    IL_01c1:  ldc.i4.0
    IL_01c2:  callvirt   instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_01c7:  br.s       IL_01fc

    IL_01c9:  ldarg.0
    IL_01ca:  call       instance float32 Game.ComponentVitalStats::get_Sleep()
    IL_01cf:  ldc.r4     0.5
    IL_01d4:  bge.un.s   IL_01fc

    IL_01d6:  ldarg.0
    IL_01d7:  ldfld      float32 Game.ComponentVitalStats::m_lastSleep
    IL_01dc:  ldc.r4     0.5
    IL_01e1:  clt.un
    IL_01e3:  ldc.i4.0
    IL_01e4:  ceq
    IL_01e6:  ldloc.2
    IL_01e7:  or
    IL_01e8:  brfalse.s  IL_01fc

    IL_01ea:  ldarg.0
    IL_01eb:  ldfld      class Game.SubsystemGui Game.ComponentVitalStats::m_subsystemGui
    IL_01f0:  ldstr      "You are tired, take a nap"
    IL_01f5:  ldc.i4.1
    IL_01f6:  ldc.i4.0
    IL_01f7:  callvirt   instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_01fc:  ldarg.0
    IL_01fd:  call       instance float32 Game.ComponentVitalStats::get_Sleep()
    IL_0202:  ldc.r4     7.5000003e-002
    IL_0207:  bge.un     IL_029e

    IL_020c:  ldc.r4     5.0000001e-002
    IL_0211:  ldc.r4     0.2
    IL_0216:  ldc.r4     7.5000003e-002
    IL_021b:  ldarg.0
    IL_021c:  call       instance float32 Game.ComponentVitalStats::get_Sleep()
    IL_0221:  sub
    IL_0222:  ldc.r4     7.5000003e-002
    IL_0227:  div
    IL_0228:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_022d:  stloc.s    V_9
    IL_022f:  ldarg.0
    IL_0230:  call       instance float32 Game.ComponentVitalStats::get_Sleep()
    IL_0235:  ldc.r4     3.7500001e-002
    IL_023a:  blt.s      IL_0253

    IL_023c:  ldarg.0
    IL_023d:  ldfld      class Game.Random Game.ComponentVitalStats::m_random
    IL_0242:  ldc.r4     2.
    IL_0247:  ldc.r4     4.
    IL_024c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0251:  br.s       IL_0268

    IL_0253:  ldarg.0
    IL_0254:  ldfld      class Game.Random Game.ComponentVitalStats::m_random
    IL_0259:  ldc.r4     3.
    IL_025e:  ldc.r4     6.
    IL_0263:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0268:  stloc.s    V_10
    IL_026a:  ldarg.0
    IL_026b:  ldfld      class Game.Random Game.ComponentVitalStats::m_random
    IL_0270:  ldc.r4     0.0
    IL_0275:  ldc.r4     1.
    IL_027a:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_027f:  ldloc.s    V_9
    IL_0281:  ldloc.0
    IL_0282:  mul
    IL_0283:  bge.un.s   IL_029e

    IL_0285:  ldarg.0
    IL_0286:  ldarg.0
    IL_0287:  ldfld      float32 Game.ComponentVitalStats::m_sleepBlackoutDuration
    IL_028c:  ldloc.s    V_10
    IL_028e:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0293:  stfld      float32 Game.ComponentVitalStats::m_sleepBlackoutDuration
    IL_0298:  ldarg.0
    IL_0299:  call       instance void Game.ComponentVitalStats::PlayMoanSound()
    IL_029e:  ldarg.0
    IL_029f:  call       instance float32 Game.ComponentVitalStats::get_Sleep()
    IL_02a4:  ldc.r4     0.0
    IL_02a9:  bgt.un.s   IL_02e0

    IL_02ab:  ldarg.0
    IL_02ac:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_02b1:  callvirt   instance class Game.ComponentSleep Game.ComponentPlayer::get_ComponentSleep()
    IL_02b6:  callvirt   instance void Game.ComponentSleep::Sleep()
    IL_02bb:  ldarg.0
    IL_02bc:  ldfld      class Game.SubsystemGui Game.ComponentVitalStats::m_subsystemGui
    IL_02c1:  ldstr      "Can't go no more"
    IL_02c6:  ldc.i4.1
    IL_02c7:  ldc.i4.1
    IL_02c8:  callvirt   instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_02cd:  ldarg.0
    IL_02ce:  call       instance void Game.ComponentVitalStats::PlayMoanSound()
    IL_02d3:  br.s       IL_02e0

    IL_02d5:  ldarg.0
    IL_02d6:  ldc.r4     0.89999998
    IL_02db:  call       instance void Game.ComponentVitalStats::set_Sleep(float32)
    IL_02e0:  ldarg.0
    IL_02e1:  ldarg.0
    IL_02e2:  call       instance float32 Game.ComponentVitalStats::get_Sleep()
    IL_02e7:  stfld      float32 Game.ComponentVitalStats::m_lastSleep
    IL_02ec:  ldarg.0
    IL_02ed:  ldarg.0
    IL_02ee:  ldfld      float32 Game.ComponentVitalStats::m_sleepBlackoutDuration
    IL_02f3:  ldloc.0
    IL_02f4:  sub
    IL_02f5:  stfld      float32 Game.ComponentVitalStats::m_sleepBlackoutDuration
    IL_02fa:  ldc.r4     0.5
    IL_02ff:  ldarg.0
    IL_0300:  ldfld      float32 Game.ComponentVitalStats::m_sleepBlackoutDuration
    IL_0305:  mul
    IL_0306:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_030b:  stloc.3
    IL_030c:  ldarg.0
    IL_030d:  ldarg.0
    IL_030e:  ldfld      float32 Game.ComponentVitalStats::m_sleepBlackoutFactor
    IL_0313:  ldc.r4     2.
    IL_0318:  ldloc.0
    IL_0319:  mul
    IL_031a:  ldloc.3
    IL_031b:  ldarg.0
    IL_031c:  ldfld      float32 Game.ComponentVitalStats::m_sleepBlackoutFactor
    IL_0321:  sub
    IL_0322:  mul
    IL_0323:  add
    IL_0324:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0329:  stfld      float32 Game.ComponentVitalStats::m_sleepBlackoutFactor
    IL_032e:  ldarg.0
    IL_032f:  ldfld      class Game.SubsystemCamera Game.ComponentVitalStats::m_subsystemCamera
    IL_0334:  ldarg.0
    IL_0335:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_033a:  callvirt   instance bool Game.SubsystemCamera::IsEntityTarget(class [EntitySystem]GameEntitySystem.Entity)
    IL_033f:  brfalse.s  IL_03b8

    IL_0341:  ldarg.0
    IL_0342:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0347:  callvirt   instance class Game.ComponentSleep Game.ComponentPlayer::get_ComponentSleep()
    IL_034c:  callvirt   instance bool Game.ComponentSleep::get_IsSleeping()
    IL_0351:  brtrue.s   IL_03b8

    IL_0353:  ldarg.0
    IL_0354:  ldfld      class Game.SubsystemScreenOverlays Game.ComponentVitalStats::m_subsystemScreenOverlays
    IL_0359:  ldarg.0
    IL_035a:  ldfld      float32 Game.ComponentVitalStats::m_sleepBlackoutFactor
    IL_035f:  ldarg.0
    IL_0360:  ldfld      class Game.SubsystemScreenOverlays Game.ComponentVitalStats::m_subsystemScreenOverlays
    IL_0365:  callvirt   instance float32 Game.SubsystemScreenOverlays::get_BlackoutFactor()
    IL_036a:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_036f:  callvirt   instance void Game.SubsystemScreenOverlays::set_BlackoutFactor(float32)
    IL_0374:  ldarg.0
    IL_0375:  ldfld      float32 Game.ComponentVitalStats::m_sleepBlackoutFactor
    IL_037a:  conv.r8
    IL_037b:  ldc.r8     1.e-002
    IL_0384:  ble.un.s   IL_03b8

    IL_0386:  ldarg.0
    IL_0387:  ldfld      class Game.SubsystemScreenOverlays Game.ComponentVitalStats::m_subsystemScreenOverlays
    IL_038c:  ldstr      "Aaa..."
    IL_0391:  callvirt   instance void Game.SubsystemScreenOverlays::set_FloatingMessage(string)
    IL_0396:  ldarg.0
    IL_0397:  ldfld      class Game.SubsystemScreenOverlays Game.ComponentVitalStats::m_subsystemScreenOverlays
    IL_039c:  ldc.r4     10.
    IL_03a1:  ldarg.0
    IL_03a2:  ldfld      float32 Game.ComponentVitalStats::m_sleepBlackoutFactor
    IL_03a7:  ldc.r4     0.89999998
    IL_03ac:  sub
    IL_03ad:  mul
    IL_03ae:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_03b3:  callvirt   instance void Game.SubsystemScreenOverlays::set_FloatingMessageFactor(float32)
    IL_03b8:  ldarg.0
    IL_03b9:  ldfld      float32 Game.ComponentVitalStats::m_sleepBlackoutFactor
    IL_03be:  ldc.r4     1.
    IL_03c3:  blt.un.s   IL_03d0

    IL_03c5:  ldarg.0
    IL_03c6:  ldc.r4     0.0
    IL_03cb:  call       instance void Game.ComponentVitalStats::set_PerformanceFactor(float32)
    IL_03d0:  ret
  } // end of method ComponentVitalStats::UpdateSleep

  .method private hidebysig instance void 
          UpdateTemperature() cil managed
  {
    // 代码大小       1710 (0x6ae)
    .maxstack  8
    .locals init (float32 V_0,
             bool V_1,
             float32 V_2,
             string V_3,
             float32 V_4,
             valuetype Game.ClothingSlot V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             float32 V_9,
             float32 V_10,
             string V_11,
             string V_12)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTime Game.ComponentVitalStats::m_subsystemTime
    IL_0006:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldfld      class Game.SubsystemTime Game.ComponentVitalStats::m_subsystemTime
    IL_0012:  ldc.r8     300.
    IL_001b:  ldc.r8     17.
    IL_0024:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_0029:  stloc.1
    IL_002a:  ldarg.0
    IL_002b:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0030:  callvirt   instance class Game.ComponentClothing Game.ComponentPlayer::get_ComponentClothing()
    IL_0035:  callvirt   instance float32 Game.ComponentClothing::get_Insulation()
    IL_003a:  ldc.r4     1.
    IL_003f:  ldc.r4     5.0000001e-002
    IL_0044:  ldc.r4     4.
    IL_0049:  ldarg.0
    IL_004a:  call       instance float32 Game.ComponentVitalStats::get_Wetness()
    IL_004f:  mul
    IL_0050:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0055:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_005a:  mul
    IL_005b:  stloc.2
    IL_005c:  ldarg.0
    IL_005d:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0062:  callvirt   instance class Game.ComponentClothing Game.ComponentPlayer::get_ComponentClothing()
    IL_0067:  callvirt   instance valuetype Game.ClothingSlot Game.ComponentClothing::get_LeastInsulatedSlot()
    IL_006c:  stloc.s    V_5
    IL_006e:  ldloc.s    V_5
    IL_0070:  switch     ( 
                          IL_0083,
                          IL_008b,
                          IL_0093)
    IL_0081:  br.s       IL_009b

    IL_0083:  ldstr      "head is"
    IL_0088:  stloc.3
    IL_0089:  br.s       IL_00a1

    IL_008b:  ldstr      "chest is"
    IL_0090:  stloc.3
    IL_0091:  br.s       IL_00a1

    IL_0093:  ldstr      "legs are"
    IL_0098:  stloc.3
    IL_0099:  br.s       IL_00a1

    IL_009b:  ldstr      "feet are"
    IL_00a0:  stloc.3
    IL_00a1:  ldarg.0
    IL_00a2:  ldfld      class Game.SubsystemTime Game.ComponentVitalStats::m_subsystemTime
    IL_00a7:  ldc.r8     2.
    IL_00b0:  ldc.r8     2.
    IL_00b9:  ldarg.0
    IL_00ba:  callvirt   instance int32 [System.Runtime]System.Object::GetHashCode()
    IL_00bf:  conv.r8
    IL_00c0:  mul
    IL_00c1:  ldc.r8     1000.
    IL_00ca:  rem
    IL_00cb:  ldc.r8     1000.
    IL_00d4:  div
    IL_00d5:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_00da:  brfalse.s  IL_014d

    IL_00dc:  ldarg.0
    IL_00dd:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_00e2:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00e7:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_00ec:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00f1:  conv.i4
    IL_00f2:  stloc.s    V_6
    IL_00f4:  ldarg.0
    IL_00f5:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_00fa:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00ff:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0104:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0109:  ldc.r4     0.1
    IL_010e:  add
    IL_010f:  conv.i4
    IL_0110:  stloc.s    V_7
    IL_0112:  ldarg.0
    IL_0113:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0118:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_011d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0122:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0127:  conv.i4
    IL_0128:  stloc.s    V_8
    IL_012a:  ldarg.0
    IL_012b:  ldfld      class Game.SubsystemMetersBlockBehavior Game.ComponentVitalStats::m_subsystemMetersBlockBehavior
    IL_0130:  ldloc.s    V_6
    IL_0132:  ldloc.s    V_7
    IL_0134:  ldloc.s    V_8
    IL_0136:  ldc.r4     12.
    IL_013b:  ldloc.2
    IL_013c:  ldarg.0
    IL_013d:  ldflda     float32 Game.ComponentVitalStats::m_environmentTemperature
    IL_0142:  ldarg.0
    IL_0143:  ldflda     float32 Game.ComponentVitalStats::m_environmentTemperatureFlux
    IL_0148:  callvirt   instance void Game.SubsystemMetersBlockBehavior::CalculateTemperature(int32,
                                                                                               int32,
                                                                                               int32,
                                                                                               float32,
                                                                                               float32,
                                                                                               float32&,
                                                                                               float32&)
    IL_014d:  ldarg.0
    IL_014e:  ldfld      class Game.SubsystemGameInfo Game.ComponentVitalStats::m_subsystemGameInfo
    IL_0153:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_0158:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_015d:  brfalse.s  IL_01af

    IL_015f:  ldarg.0
    IL_0160:  ldfld      class Game.SubsystemGameInfo Game.ComponentVitalStats::m_subsystemGameInfo
    IL_0165:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_016a:  ldfld      bool Game.WorldInfo::AreAdventureSurvivalMechanicsEnabled
    IL_016f:  brfalse.s  IL_01af

    IL_0171:  ldarg.0
    IL_0172:  ldfld      float32 Game.ComponentVitalStats::m_environmentTemperature
    IL_0177:  ldarg.0
    IL_0178:  call       instance float32 Game.ComponentVitalStats::get_Temperature()
    IL_017d:  sub
    IL_017e:  stloc.s    V_9
    IL_0180:  ldc.r4     9.9999998e-003
    IL_0185:  ldc.r4     4.9999999e-003
    IL_018a:  ldarg.0
    IL_018b:  ldfld      float32 Game.ComponentVitalStats::m_environmentTemperatureFlux
    IL_0190:  mul
    IL_0191:  add
    IL_0192:  stloc.s    V_10
    IL_0194:  ldarg.0
    IL_0195:  ldarg.0
    IL_0196:  call       instance float32 Game.ComponentVitalStats::get_Temperature()
    IL_019b:  ldloc.s    V_10
    IL_019d:  ldloc.0
    IL_019e:  mul
    IL_019f:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_01a4:  ldloc.s    V_9
    IL_01a6:  mul
    IL_01a7:  add
    IL_01a8:  call       instance void Game.ComponentVitalStats::set_Temperature(float32)
    IL_01ad:  br.s       IL_01ba

    IL_01af:  ldarg.0
    IL_01b0:  ldc.r4     12.
    IL_01b5:  call       instance void Game.ComponentVitalStats::set_Temperature(float32)
    IL_01ba:  ldarg.0
    IL_01bb:  call       instance float32 Game.ComponentVitalStats::get_Temperature()
    IL_01c0:  ldc.r4     0.0
    IL_01c5:  bgt.un.s   IL_01e8

    IL_01c7:  ldarg.0
    IL_01c8:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_01cd:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_01d2:  ldc.r4     1.
    IL_01d7:  ldnull
    IL_01d8:  ldc.i4.0
    IL_01d9:  ldstr      "Frozen to death"
    IL_01de:  callvirt   instance void Game.ComponentHealth::Injure(float32,
                                                                    class Game.ComponentCreature,
                                                                    bool,
                                                                    string)
    IL_01e3:  br         IL_039e

    IL_01e8:  ldarg.0
    IL_01e9:  call       instance float32 Game.ComponentVitalStats::get_Temperature()
    IL_01ee:  ldc.r4     3.
    IL_01f3:  bge.un     IL_02b7

    IL_01f8:  ldarg.0
    IL_01f9:  ldfld      class Game.SubsystemTime Game.ComponentVitalStats::m_subsystemTime
    IL_01fe:  ldc.r8     10.
    IL_0207:  ldc.r8     0.0
    IL_0210:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_0215:  brfalse    IL_039e

    IL_021a:  ldarg.0
    IL_021b:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0220:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0225:  ldc.r4     0.1
    IL_022a:  ldnull
    IL_022b:  ldc.i4.0
    IL_022c:  ldstr      "Hypothermia"
    IL_0231:  callvirt   instance void Game.ComponentHealth::Injure(float32,
                                                                    class Game.ComponentCreature,
                                                                    bool,
                                                                    string)
    IL_0236:  ldarg.0
    IL_0237:  call       instance float32 Game.ComponentVitalStats::get_Wetness()
    IL_023c:  ldc.r4     0.0
    IL_0241:  ble.un.s   IL_025b

    IL_0243:  ldstr      "Your {0} freezing, dry your clothes!"
    IL_0248:  ldc.i4.1
    IL_0249:  newarr     [System.Runtime]System.Object
    IL_024e:  dup
    IL_024f:  ldc.i4.0
    IL_0250:  ldloc.3
    IL_0251:  stelem.ref
    IL_0252:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0257:  stloc.s    V_11
    IL_0259:  br.s       IL_0291

    IL_025b:  ldloc.2
    IL_025c:  ldc.r4     1.
    IL_0261:  bge.un.s   IL_027b

    IL_0263:  ldstr      "Your {0} freezing, get clothed!"
    IL_0268:  ldc.i4.1
    IL_0269:  newarr     [System.Runtime]System.Object
    IL_026e:  dup
    IL_026f:  ldc.i4.0
    IL_0270:  ldloc.3
    IL_0271:  stelem.ref
    IL_0272:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0277:  stloc.s    V_11
    IL_0279:  br.s       IL_0291

    IL_027b:  ldstr      "Your {0} freezing, seek shelter!"
    IL_0280:  ldc.i4.1
    IL_0281:  newarr     [System.Runtime]System.Object
    IL_0286:  dup
    IL_0287:  ldc.i4.0
    IL_0288:  ldloc.3
    IL_0289:  stelem.ref
    IL_028a:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_028f:  stloc.s    V_11
    IL_0291:  ldarg.0
    IL_0292:  ldfld      class Game.SubsystemGui Game.ComponentVitalStats::m_subsystemGui
    IL_0297:  ldloc.s    V_11
    IL_0299:  ldc.i4.1
    IL_029a:  ldc.i4.0
    IL_029b:  callvirt   instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_02a0:  ldarg.0
    IL_02a1:  ldfld      class Game.SubsystemGui Game.ComponentVitalStats::m_subsystemGui
    IL_02a6:  callvirt   instance class Game.ValueBarWidget Game.SubsystemGui::get_TemperatureBarWidget()
    IL_02ab:  ldc.i4.s   10
    IL_02ad:  callvirt   instance void Game.ValueBarWidget::Flash(int32)
    IL_02b2:  br         IL_039e

    IL_02b7:  ldarg.0
    IL_02b8:  call       instance float32 Game.ComponentVitalStats::get_Temperature()
    IL_02bd:  ldc.r4     6.
    IL_02c2:  bge.un     IL_0359

    IL_02c7:  ldarg.0
    IL_02c8:  ldfld      float32 Game.ComponentVitalStats::m_lastTemperature
    IL_02cd:  ldc.r4     6.
    IL_02d2:  clt.un
    IL_02d4:  ldc.i4.0
    IL_02d5:  ceq
    IL_02d7:  ldloc.1
    IL_02d8:  or
    IL_02d9:  brfalse.s  IL_0359

    IL_02db:  ldarg.0
    IL_02dc:  call       instance float32 Game.ComponentVitalStats::get_Wetness()
    IL_02e1:  ldc.r4     0.0
    IL_02e6:  ble.un.s   IL_0300

    IL_02e8:  ldstr      "Your {0} getting cold, dry your clothes"
    IL_02ed:  ldc.i4.1
    IL_02ee:  newarr     [System.Runtime]System.Object
    IL_02f3:  dup
    IL_02f4:  ldc.i4.0
    IL_02f5:  ldloc.3
    IL_02f6:  stelem.ref
    IL_02f7:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_02fc:  stloc.s    V_12
    IL_02fe:  br.s       IL_0336

    IL_0300:  ldloc.2
    IL_0301:  ldc.r4     1.
    IL_0306:  bge.un.s   IL_0320

    IL_0308:  ldstr      "Your {0} getting cold, get clothed"
    IL_030d:  ldc.i4.1
    IL_030e:  newarr     [System.Runtime]System.Object
    IL_0313:  dup
    IL_0314:  ldc.i4.0
    IL_0315:  ldloc.3
    IL_0316:  stelem.ref
    IL_0317:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_031c:  stloc.s    V_12
    IL_031e:  br.s       IL_0336

    IL_0320:  ldstr      "Your {0} getting cold, seek shelter"
    IL_0325:  ldc.i4.1
    IL_0326:  newarr     [System.Runtime]System.Object
    IL_032b:  dup
    IL_032c:  ldc.i4.0
    IL_032d:  ldloc.3
    IL_032e:  stelem.ref
    IL_032f:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0334:  stloc.s    V_12
    IL_0336:  ldarg.0
    IL_0337:  ldfld      class Game.SubsystemGui Game.ComponentVitalStats::m_subsystemGui
    IL_033c:  ldloc.s    V_12
    IL_033e:  ldc.i4.1
    IL_033f:  ldc.i4.1
    IL_0340:  callvirt   instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0345:  ldarg.0
    IL_0346:  ldfld      class Game.SubsystemGui Game.ComponentVitalStats::m_subsystemGui
    IL_034b:  callvirt   instance class Game.ValueBarWidget Game.SubsystemGui::get_TemperatureBarWidget()
    IL_0350:  ldc.i4.s   10
    IL_0352:  callvirt   instance void Game.ValueBarWidget::Flash(int32)
    IL_0357:  br.s       IL_039e

    IL_0359:  ldarg.0
    IL_035a:  call       instance float32 Game.ComponentVitalStats::get_Temperature()
    IL_035f:  ldc.r4     8.
    IL_0364:  bge.un.s   IL_039e

    IL_0366:  ldarg.0
    IL_0367:  ldfld      float32 Game.ComponentVitalStats::m_lastTemperature
    IL_036c:  ldc.r4     8.
    IL_0371:  clt.un
    IL_0373:  ldc.i4.0
    IL_0374:  ceq
    IL_0376:  ldloc.1
    IL_0377:  or
    IL_0378:  brfalse.s  IL_039e

    IL_037a:  ldarg.0
    IL_037b:  ldfld      class Game.SubsystemGui Game.ComponentVitalStats::m_subsystemGui
    IL_0380:  ldstr      "You feel a bit chilly"
    IL_0385:  ldc.i4.1
    IL_0386:  ldc.i4.0
    IL_0387:  callvirt   instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_038c:  ldarg.0
    IL_038d:  ldfld      class Game.SubsystemGui Game.ComponentVitalStats::m_subsystemGui
    IL_0392:  callvirt   instance class Game.ValueBarWidget Game.SubsystemGui::get_TemperatureBarWidget()
    IL_0397:  ldc.i4.s   10
    IL_0399:  callvirt   instance void Game.ValueBarWidget::Flash(int32)
    IL_039e:  ldarg.0
    IL_039f:  call       instance float32 Game.ComponentVitalStats::get_Temperature()
    IL_03a4:  ldc.r4     24.
    IL_03a9:  blt.un     IL_044d

    IL_03ae:  ldarg.0
    IL_03af:  ldfld      class Game.SubsystemTime Game.ComponentVitalStats::m_subsystemTime
    IL_03b4:  ldc.r8     10.
    IL_03bd:  ldc.r8     0.0
    IL_03c6:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_03cb:  brfalse.s  IL_040d

    IL_03cd:  ldarg.0
    IL_03ce:  ldfld      class Game.SubsystemGui Game.ComponentVitalStats::m_subsystemGui
    IL_03d3:  ldstr      "It's too hot, run away!"
    IL_03d8:  ldc.i4.1
    IL_03d9:  ldc.i4.0
    IL_03da:  callvirt   instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_03df:  ldarg.0
    IL_03e0:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_03e5:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_03ea:  ldc.r4     0.1
    IL_03ef:  ldnull
    IL_03f0:  ldc.i4.0
    IL_03f1:  ldstr      "Overheated"
    IL_03f6:  callvirt   instance void Game.ComponentHealth::Injure(float32,
                                                                    class Game.ComponentCreature,
                                                                    bool,
                                                                    string)
    IL_03fb:  ldarg.0
    IL_03fc:  ldfld      class Game.SubsystemGui Game.ComponentVitalStats::m_subsystemGui
    IL_0401:  callvirt   instance class Game.ValueBarWidget Game.SubsystemGui::get_TemperatureBarWidget()
    IL_0406:  ldc.i4.s   10
    IL_0408:  callvirt   instance void Game.ValueBarWidget::Flash(int32)
    IL_040d:  ldarg.0
    IL_040e:  ldfld      class Game.SubsystemTime Game.ComponentVitalStats::m_subsystemTime
    IL_0413:  ldc.r8     8.
    IL_041c:  ldc.r8     0.0
    IL_0425:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_042a:  brfalse    IL_04b9

    IL_042f:  ldarg.0
    IL_0430:  ldarg.0
    IL_0431:  ldfld      float32 Game.ComponentVitalStats::m_temperatureBlackoutDuration
    IL_0436:  ldc.r4     6.
    IL_043b:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0440:  stfld      float32 Game.ComponentVitalStats::m_temperatureBlackoutDuration
    IL_0445:  ldarg.0
    IL_0446:  call       instance void Game.ComponentVitalStats::PlayMoanSound()
    IL_044b:  br.s       IL_04b9

    IL_044d:  ldarg.0
    IL_044e:  call       instance float32 Game.ComponentVitalStats::get_Temperature()
    IL_0453:  ldc.r4     20.
    IL_0458:  ble.un.s   IL_04b9

    IL_045a:  ldarg.0
    IL_045b:  ldfld      class Game.SubsystemTime Game.ComponentVitalStats::m_subsystemTime
    IL_0460:  ldc.r8     10.
    IL_0469:  ldc.r8     0.0
    IL_0472:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_0477:  brfalse.s  IL_04b9

    IL_0479:  ldarg.0
    IL_047a:  ldfld      class Game.SubsystemGui Game.ComponentVitalStats::m_subsystemGui
    IL_047f:  ldstr      "You feel hot"
    IL_0484:  ldc.i4.1
    IL_0485:  ldc.i4.0
    IL_0486:  callvirt   instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_048b:  ldarg.0
    IL_048c:  ldarg.0
    IL_048d:  ldfld      float32 Game.ComponentVitalStats::m_temperatureBlackoutDuration
    IL_0492:  ldc.r4     3.
    IL_0497:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_049c:  stfld      float32 Game.ComponentVitalStats::m_temperatureBlackoutDuration
    IL_04a1:  ldarg.0
    IL_04a2:  ldfld      class Game.SubsystemGui Game.ComponentVitalStats::m_subsystemGui
    IL_04a7:  callvirt   instance class Game.ValueBarWidget Game.SubsystemGui::get_TemperatureBarWidget()
    IL_04ac:  ldc.i4.s   10
    IL_04ae:  callvirt   instance void Game.ValueBarWidget::Flash(int32)
    IL_04b3:  ldarg.0
    IL_04b4:  call       instance void Game.ComponentVitalStats::PlayMoanSound()
    IL_04b9:  ldarg.0
    IL_04ba:  ldarg.0
    IL_04bb:  call       instance float32 Game.ComponentVitalStats::get_Temperature()
    IL_04c0:  stfld      float32 Game.ComponentVitalStats::m_lastTemperature
    IL_04c5:  ldarg.0
    IL_04c6:  ldfld      class Game.SubsystemCamera Game.ComponentVitalStats::m_subsystemCamera
    IL_04cb:  ldarg.0
    IL_04cc:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_04d1:  callvirt   instance bool Game.SubsystemCamera::IsEntityTarget(class [EntitySystem]GameEntitySystem.Entity)
    IL_04d6:  brfalse.s  IL_04fa

    IL_04d8:  ldarg.0
    IL_04d9:  ldfld      class Game.SubsystemScreenOverlays Game.ComponentVitalStats::m_subsystemScreenOverlays
    IL_04de:  ldc.r4     1.
    IL_04e3:  ldarg.0
    IL_04e4:  call       instance float32 Game.ComponentVitalStats::get_Temperature()
    IL_04e9:  ldc.r4     6.
    IL_04ee:  div
    IL_04ef:  sub
    IL_04f0:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_04f5:  callvirt   instance void Game.SubsystemScreenOverlays::set_IceFactor(float32)
    IL_04fa:  ldarg.0
    IL_04fb:  ldarg.0
    IL_04fc:  ldfld      float32 Game.ComponentVitalStats::m_temperatureBlackoutDuration
    IL_0501:  ldloc.0
    IL_0502:  sub
    IL_0503:  stfld      float32 Game.ComponentVitalStats::m_temperatureBlackoutDuration
    IL_0508:  ldc.r4     0.5
    IL_050d:  ldarg.0
    IL_050e:  ldfld      float32 Game.ComponentVitalStats::m_temperatureBlackoutDuration
    IL_0513:  mul
    IL_0514:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0519:  stloc.s    V_4
    IL_051b:  ldarg.0
    IL_051c:  ldarg.0
    IL_051d:  ldfld      float32 Game.ComponentVitalStats::m_temperatureBlackoutFactor
    IL_0522:  ldc.r4     2.
    IL_0527:  ldloc.0
    IL_0528:  mul
    IL_0529:  ldloc.s    V_4
    IL_052b:  ldarg.0
    IL_052c:  ldfld      float32 Game.ComponentVitalStats::m_temperatureBlackoutFactor
    IL_0531:  sub
    IL_0532:  mul
    IL_0533:  add
    IL_0534:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0539:  stfld      float32 Game.ComponentVitalStats::m_temperatureBlackoutFactor
    IL_053e:  ldarg.0
    IL_053f:  ldfld      class Game.SubsystemCamera Game.ComponentVitalStats::m_subsystemCamera
    IL_0544:  ldarg.0
    IL_0545:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_054a:  callvirt   instance bool Game.SubsystemCamera::IsEntityTarget(class [EntitySystem]GameEntitySystem.Entity)
    IL_054f:  brfalse.s  IL_05b6

    IL_0551:  ldarg.0
    IL_0552:  ldfld      class Game.SubsystemScreenOverlays Game.ComponentVitalStats::m_subsystemScreenOverlays
    IL_0557:  ldarg.0
    IL_0558:  ldfld      float32 Game.ComponentVitalStats::m_temperatureBlackoutFactor
    IL_055d:  ldarg.0
    IL_055e:  ldfld      class Game.SubsystemScreenOverlays Game.ComponentVitalStats::m_subsystemScreenOverlays
    IL_0563:  callvirt   instance float32 Game.SubsystemScreenOverlays::get_BlackoutFactor()
    IL_0568:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_056d:  callvirt   instance void Game.SubsystemScreenOverlays::set_BlackoutFactor(float32)
    IL_0572:  ldarg.0
    IL_0573:  ldfld      float32 Game.ComponentVitalStats::m_temperatureBlackoutFactor
    IL_0578:  conv.r8
    IL_0579:  ldc.r8     1.e-002
    IL_0582:  ble.un.s   IL_05b6

    IL_0584:  ldarg.0
    IL_0585:  ldfld      class Game.SubsystemScreenOverlays Game.ComponentVitalStats::m_subsystemScreenOverlays
    IL_058a:  ldstr      "Ugh..."
    IL_058f:  callvirt   instance void Game.SubsystemScreenOverlays::set_FloatingMessage(string)
    IL_0594:  ldarg.0
    IL_0595:  ldfld      class Game.SubsystemScreenOverlays Game.ComponentVitalStats::m_subsystemScreenOverlays
    IL_059a:  ldc.r4     10.
    IL_059f:  ldarg.0
    IL_05a0:  ldfld      float32 Game.ComponentVitalStats::m_temperatureBlackoutFactor
    IL_05a5:  ldc.r4     0.89999998
    IL_05aa:  sub
    IL_05ab:  mul
    IL_05ac:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_05b1:  callvirt   instance void Game.SubsystemScreenOverlays::set_FloatingMessageFactor(float32)
    IL_05b6:  ldarg.0
    IL_05b7:  ldfld      float32 Game.ComponentVitalStats::m_temperatureBlackoutFactor
    IL_05bc:  ldc.r4     1.
    IL_05c1:  blt.un.s   IL_05ce

    IL_05c3:  ldarg.0
    IL_05c4:  ldc.r4     0.0
    IL_05c9:  call       instance void Game.ComponentVitalStats::set_PerformanceFactor(float32)
    IL_05ce:  ldarg.0
    IL_05cf:  ldfld      class Game.SubsystemCamera Game.ComponentVitalStats::m_subsystemCamera
    IL_05d4:  ldarg.0
    IL_05d5:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_05da:  callvirt   instance bool Game.SubsystemCamera::IsEntityTarget(class [EntitySystem]GameEntitySystem.Entity)
    IL_05df:  brfalse    IL_06ad

    IL_05e4:  ldarg.0
    IL_05e5:  ldfld      float32 Game.ComponentVitalStats::m_environmentTemperature
    IL_05ea:  ldc.r4     12.
    IL_05ef:  bge.un.s   IL_064b

    IL_05f1:  ldarg.0
    IL_05f2:  ldfld      class Game.SubsystemGui Game.ComponentVitalStats::m_subsystemGui
    IL_05f7:  callvirt   instance class Game.ValueBarWidget Game.SubsystemGui::get_TemperatureBarWidget()
    IL_05fc:  ldarg.0
    IL_05fd:  ldfld      float32 Game.ComponentVitalStats::m_environmentTemperature
    IL_0602:  ldc.r4     12.
    IL_0607:  div
    IL_0608:  callvirt   instance void Game.ValueBarWidget::set_Value(float32)
    IL_060d:  ldarg.0
    IL_060e:  ldfld      class Game.SubsystemGui Game.ComponentVitalStats::m_subsystemGui
    IL_0613:  callvirt   instance class Game.ValueBarWidget Game.SubsystemGui::get_TemperatureBarWidget()
    IL_0618:  ldc.i4.s   64
    IL_061a:  ldc.i4.s   64
    IL_061c:  ldc.i4.s   64
    IL_061e:  ldc.i4     0xff
    IL_0623:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32,
                                                                   int32)
    IL_0628:  callvirt   instance void Game.ValueBarWidget::set_UnlitBarColor(valuetype [Engine]Engine.Color)
    IL_062d:  ldarg.0
    IL_062e:  ldfld      class Game.SubsystemGui Game.ComponentVitalStats::m_subsystemGui
    IL_0633:  callvirt   instance class Game.ValueBarWidget Game.SubsystemGui::get_TemperatureBarWidget()
    IL_0638:  ldc.i4.0
    IL_0639:  ldc.i4.s   32
    IL_063b:  ldc.i4     0xe0
    IL_0640:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0645:  callvirt   instance void Game.ValueBarWidget::set_LitBarColor(valuetype [Engine]Engine.Color)
    IL_064a:  ret

    IL_064b:  ldarg.0
    IL_064c:  ldfld      class Game.SubsystemGui Game.ComponentVitalStats::m_subsystemGui
    IL_0651:  callvirt   instance class Game.ValueBarWidget Game.SubsystemGui::get_TemperatureBarWidget()
    IL_0656:  ldc.r4     1.
    IL_065b:  ldarg.0
    IL_065c:  ldfld      float32 Game.ComponentVitalStats::m_environmentTemperature
    IL_0661:  ldc.r4     12.
    IL_0666:  sub
    IL_0667:  ldc.r4     12.
    IL_066c:  div
    IL_066d:  sub
    IL_066e:  callvirt   instance void Game.ValueBarWidget::set_Value(float32)
    IL_0673:  ldarg.0
    IL_0674:  ldfld      class Game.SubsystemGui Game.ComponentVitalStats::m_subsystemGui
    IL_0679:  callvirt   instance class Game.ValueBarWidget Game.SubsystemGui::get_TemperatureBarWidget()
    IL_067e:  ldc.i4     0xe0
    IL_0683:  ldc.i4.s   112
    IL_0685:  ldc.i4.0
    IL_0686:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_068b:  callvirt   instance void Game.ValueBarWidget::set_UnlitBarColor(valuetype [Engine]Engine.Color)
    IL_0690:  ldarg.0
    IL_0691:  ldfld      class Game.SubsystemGui Game.ComponentVitalStats::m_subsystemGui
    IL_0696:  callvirt   instance class Game.ValueBarWidget Game.SubsystemGui::get_TemperatureBarWidget()
    IL_069b:  ldc.i4.0
    IL_069c:  ldc.i4.s   32
    IL_069e:  ldc.i4     0xe0
    IL_06a3:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_06a8:  callvirt   instance void Game.ValueBarWidget::set_LitBarColor(valuetype [Engine]Engine.Color)
    IL_06ad:  ret
  } // end of method ComponentVitalStats::UpdateTemperature

  .method private hidebysig instance void 
          UpdateWetness() cil managed
  {
    // 代码大小       565 (0x235)
    .maxstack  5
    .locals init (float32 V_0,
             int32 V_1,
             int32 V_2,
             valuetype Game.PrecipitationShaftInfo V_3,
             float32 V_4,
             float32 V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTime Game.ComponentVitalStats::m_subsystemTime
    IL_0006:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0012:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0017:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_001c:  ldc.r4     0.2
    IL_0021:  ble.un.s   IL_0075

    IL_0023:  ldarg.0
    IL_0024:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0029:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_002e:  callvirt   instance class Game.FluidBlock Game.ComponentBody::get_ImmersionFluidBlock()
    IL_0033:  isinst     Game.WaterBlock
    IL_0038:  brfalse.s  IL_0075

    IL_003a:  ldc.r4     2.
    IL_003f:  ldarg.0
    IL_0040:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0045:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_004a:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_004f:  mul
    IL_0050:  stloc.s    V_5
    IL_0052:  ldarg.0
    IL_0053:  ldarg.0
    IL_0054:  call       instance float32 Game.ComponentVitalStats::get_Wetness()
    IL_0059:  ldc.r4     3.
    IL_005e:  ldloc.0
    IL_005f:  mul
    IL_0060:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0065:  ldloc.s    V_5
    IL_0067:  ldarg.0
    IL_0068:  call       instance float32 Game.ComponentVitalStats::get_Wetness()
    IL_006d:  sub
    IL_006e:  mul
    IL_006f:  add
    IL_0070:  call       instance void Game.ComponentVitalStats::set_Wetness(float32)
    IL_0075:  ldarg.0
    IL_0076:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_007b:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0080:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0085:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_008a:  conv.i4
    IL_008b:  stloc.1
    IL_008c:  ldarg.0
    IL_008d:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0092:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0097:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_009c:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00a1:  ldc.r4     0.1
    IL_00a6:  add
    IL_00a7:  conv.i4
    IL_00a8:  ldarg.0
    IL_00a9:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_00ae:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00b3:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_00b8:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00bd:  conv.i4
    IL_00be:  stloc.2
    IL_00bf:  ldarg.0
    IL_00c0:  ldfld      class Game.SubsystemWeather Game.ComponentVitalStats::m_subsystemWeather
    IL_00c5:  ldloc.1
    IL_00c6:  ldloc.2
    IL_00c7:  callvirt   instance valuetype Game.PrecipitationShaftInfo Game.SubsystemWeather::GetPrecipitationShaftInfo(int32,
                                                                                                                         int32)
    IL_00cc:  stloc.3
    IL_00cd:  ldloc.3
    IL_00ce:  ldfld      int32 Game.PrecipitationShaftInfo::YLimit
    IL_00d3:  blt.s      IL_00f8

    IL_00d5:  ldloc.3
    IL_00d6:  ldfld      valuetype Game.PrecipitationType Game.PrecipitationShaftInfo::Type
    IL_00db:  brtrue.s   IL_00f8

    IL_00dd:  ldarg.0
    IL_00de:  ldarg.0
    IL_00df:  call       instance float32 Game.ComponentVitalStats::get_Wetness()
    IL_00e4:  ldc.r4     5.0000001e-002
    IL_00e9:  ldloc.3
    IL_00ea:  ldfld      float32 Game.PrecipitationShaftInfo::Intensity
    IL_00ef:  mul
    IL_00f0:  ldloc.0
    IL_00f1:  mul
    IL_00f2:  add
    IL_00f3:  call       instance void Game.ComponentVitalStats::set_Wetness(float32)
    IL_00f8:  ldc.r4     180.
    IL_00fd:  stloc.s    V_4
    IL_00ff:  ldarg.0
    IL_0100:  ldfld      float32 Game.ComponentVitalStats::m_environmentTemperature
    IL_0105:  ldc.r4     8.
    IL_010a:  ble.un.s   IL_0113

    IL_010c:  ldc.r4     120.
    IL_0111:  stloc.s    V_4
    IL_0113:  ldarg.0
    IL_0114:  ldfld      float32 Game.ComponentVitalStats::m_environmentTemperature
    IL_0119:  ldc.r4     16.
    IL_011e:  ble.un.s   IL_0127

    IL_0120:  ldc.r4     60.
    IL_0125:  stloc.s    V_4
    IL_0127:  ldarg.0
    IL_0128:  ldfld      float32 Game.ComponentVitalStats::m_environmentTemperature
    IL_012d:  ldc.r4     24.
    IL_0132:  ble.un.s   IL_013b

    IL_0134:  ldc.r4     30.
    IL_0139:  stloc.s    V_4
    IL_013b:  ldarg.0
    IL_013c:  ldarg.0
    IL_013d:  call       instance float32 Game.ComponentVitalStats::get_Wetness()
    IL_0142:  ldloc.0
    IL_0143:  ldloc.s    V_4
    IL_0145:  div
    IL_0146:  sub
    IL_0147:  call       instance void Game.ComponentVitalStats::set_Wetness(float32)
    IL_014c:  ldarg.0
    IL_014d:  call       instance float32 Game.ComponentVitalStats::get_Wetness()
    IL_0152:  ldc.r4     0.80000001
    IL_0157:  ble.un.s   IL_0198

    IL_0159:  ldarg.0
    IL_015a:  ldfld      float32 Game.ComponentVitalStats::m_lastWetness
    IL_015f:  ldc.r4     0.80000001
    IL_0164:  bgt.un.s   IL_0198

    IL_0166:  ldarg.0
    IL_0167:  ldfld      class Game.SubsystemTime Game.ComponentVitalStats::m_subsystemTime
    IL_016c:  ldarg.0
    IL_016d:  ldfld      class Game.SubsystemTime Game.ComponentVitalStats::m_subsystemTime
    IL_0172:  callvirt   instance float64 Game.SubsystemTime::get_RealTime()
    IL_0177:  ldc.r8     2.
    IL_0180:  add
    IL_0181:  ldnull
    IL_0182:  ldarg.0
    IL_0183:  ldftn      instance void Game.ComponentVitalStats::'<UpdateWetness>b__59_0'(object)
    IL_0189:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_018e:  callvirt   instance void Game.SubsystemTime::QueueRealTimeDelayedExecution(float64,
                                                                                         object,
                                                                                         class [System.Runtime]System.Action`1<object>)
    IL_0193:  br         IL_0228

    IL_0198:  ldarg.0
    IL_0199:  call       instance float32 Game.ComponentVitalStats::get_Wetness()
    IL_019e:  ldc.r4     0.2
    IL_01a3:  ble.un.s   IL_01e1

    IL_01a5:  ldarg.0
    IL_01a6:  ldfld      float32 Game.ComponentVitalStats::m_lastWetness
    IL_01ab:  ldc.r4     0.2
    IL_01b0:  bgt.un.s   IL_01e1

    IL_01b2:  ldarg.0
    IL_01b3:  ldfld      class Game.SubsystemTime Game.ComponentVitalStats::m_subsystemTime
    IL_01b8:  ldarg.0
    IL_01b9:  ldfld      class Game.SubsystemTime Game.ComponentVitalStats::m_subsystemTime
    IL_01be:  callvirt   instance float64 Game.SubsystemTime::get_RealTime()
    IL_01c3:  ldc.r8     2.
    IL_01cc:  add
    IL_01cd:  ldnull
    IL_01ce:  ldarg.0
    IL_01cf:  ldftn      instance void Game.ComponentVitalStats::'<UpdateWetness>b__59_1'(object)
    IL_01d5:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_01da:  callvirt   instance void Game.SubsystemTime::QueueRealTimeDelayedExecution(float64,
                                                                                         object,
                                                                                         class [System.Runtime]System.Action`1<object>)
    IL_01df:  br.s       IL_0228

    IL_01e1:  ldarg.0
    IL_01e2:  call       instance float32 Game.ComponentVitalStats::get_Wetness()
    IL_01e7:  ldc.r4     0.0
    IL_01ec:  bgt.un.s   IL_0228

    IL_01ee:  ldarg.0
    IL_01ef:  ldfld      float32 Game.ComponentVitalStats::m_lastWetness
    IL_01f4:  ldc.r4     0.0
    IL_01f9:  ble.un.s   IL_0228

    IL_01fb:  ldarg.0
    IL_01fc:  ldfld      class Game.SubsystemTime Game.ComponentVitalStats::m_subsystemTime
    IL_0201:  ldarg.0
    IL_0202:  ldfld      class Game.SubsystemTime Game.ComponentVitalStats::m_subsystemTime
    IL_0207:  callvirt   instance float64 Game.SubsystemTime::get_RealTime()
    IL_020c:  ldc.r8     2.
    IL_0215:  add
    IL_0216:  ldnull
    IL_0217:  ldarg.0
    IL_0218:  ldftn      instance void Game.ComponentVitalStats::'<UpdateWetness>b__59_2'(object)
    IL_021e:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_0223:  callvirt   instance void Game.SubsystemTime::QueueRealTimeDelayedExecution(float64,
                                                                                         object,
                                                                                         class [System.Runtime]System.Action`1<object>)
    IL_0228:  ldarg.0
    IL_0229:  ldarg.0
    IL_022a:  call       instance float32 Game.ComponentVitalStats::get_Wetness()
    IL_022f:  stfld      float32 Game.ComponentVitalStats::m_lastWetness
    IL_0234:  ret
  } // end of method ComponentVitalStats::UpdateWetness

  .method private hidebysig instance void 
          PlayMoanSound() cil managed
  {
    // 代码大小       69 (0x45)
    .maxstack  6
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemAudio Game.ComponentVitalStats::m_subsystemAudio
    IL_0006:  ldstr      "Audio/Creatures/HumanMoan"
    IL_000b:  ldarg.0
    IL_000c:  ldfld      class Game.Random Game.ComponentVitalStats::m_random
    IL_0011:  ldc.r4     0.69999999
    IL_0016:  ldc.r4     1.
    IL_001b:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0020:  ldarg.0
    IL_0021:  ldfld      class Game.Random Game.ComponentVitalStats::m_random
    IL_0026:  ldc.r4     -0.1
    IL_002b:  ldc.r4     0.1
    IL_0030:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0035:  ldc.r4     0.0
    IL_003a:  ldc.r4     0.0
    IL_003f:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            float32,
                                                                            float32)
    IL_0044:  ret
  } // end of method ComponentVitalStats::PlayMoanSound

  .method private hidebysig instance void 
          ApplyDensityModifier(float32 modifier) cil managed
  {
    // 代码大小       49 (0x31)
    .maxstack  3
    .locals init (float32 V_0)
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      float32 Game.ComponentVitalStats::m_densityModifierApplied
    IL_0007:  sub
    IL_0008:  stloc.0
    IL_0009:  ldloc.0
    IL_000a:  ldc.r4     0.0
    IL_000f:  beq.s      IL_0030

    IL_0011:  ldarg.0
    IL_0012:  ldarg.1
    IL_0013:  stfld      float32 Game.ComponentVitalStats::m_densityModifierApplied
    IL_0018:  ldarg.0
    IL_0019:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_001e:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0023:  dup
    IL_0024:  callvirt   instance float32 Game.ComponentBody::get_Density()
    IL_0029:  ldloc.0
    IL_002a:  add
    IL_002b:  callvirt   instance void Game.ComponentBody::set_Density(float32)
    IL_0030:  ret
  } // end of method ComponentVitalStats::ApplyDensityModifier

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.ComponentVitalStats::m_random
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_0011:  ret
  } // end of method ComponentVitalStats::.ctor

  .method private hidebysig instance void 
          '<Load>b__52_0'(class Game.ComponentCreature '<obj>') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.SubsystemTime Game.ComponentVitalStats::m_subsystemTime
    IL_0007:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_000c:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_0011:  stfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentVitalStats::m_lastAttackedTime
    IL_0016:  ret
  } // end of method ComponentVitalStats::'<Load>b__52_0'

  .method private hidebysig instance void 
          '<UpdateWetness>b__59_0'(object '<obj>') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance float32 Game.ComponentVitalStats::get_Wetness()
    IL_0006:  ldc.r4     0.80000001
    IL_000b:  ble.un.s   IL_001f

    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.SubsystemGui Game.ComponentVitalStats::m_subsystemGui
    IL_0013:  ldstr      "You are completely wet"
    IL_0018:  ldc.i4.1
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_001f:  ret
  } // end of method ComponentVitalStats::'<UpdateWetness>b__59_0'

  .method private hidebysig instance void 
          '<UpdateWetness>b__59_1'(object '<obj>') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       59 (0x3b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance float32 Game.ComponentVitalStats::get_Wetness()
    IL_0006:  ldc.r4     0.2
    IL_000b:  ble.un.s   IL_003a

    IL_000d:  ldarg.0
    IL_000e:  call       instance float32 Game.ComponentVitalStats::get_Wetness()
    IL_0013:  ldc.r4     0.80000001
    IL_0018:  bgt.un.s   IL_003a

    IL_001a:  ldarg.0
    IL_001b:  call       instance float32 Game.ComponentVitalStats::get_Wetness()
    IL_0020:  ldarg.0
    IL_0021:  ldfld      float32 Game.ComponentVitalStats::m_lastWetness
    IL_0026:  ble.un.s   IL_003a

    IL_0028:  ldarg.0
    IL_0029:  ldfld      class Game.SubsystemGui Game.ComponentVitalStats::m_subsystemGui
    IL_002e:  ldstr      "You are getting wet"
    IL_0033:  ldc.i4.1
    IL_0034:  ldc.i4.1
    IL_0035:  callvirt   instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_003a:  ret
  } // end of method ComponentVitalStats::'<UpdateWetness>b__59_1'

  .method private hidebysig instance void 
          '<UpdateWetness>b__59_2'(object '<obj>') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance float32 Game.ComponentVitalStats::get_Wetness()
    IL_0006:  ldc.r4     0.0
    IL_000b:  bgt.un.s   IL_001f

    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.SubsystemGui Game.ComponentVitalStats::m_subsystemGui
    IL_0013:  ldstr      "You are no longer wet"
    IL_0018:  ldc.i4.1
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_001f:  ret
  } // end of method ComponentVitalStats::'<UpdateWetness>b__59_2'

  .property instance float32 PerformanceFactor()
  {
    .get instance float32 Game.ComponentVitalStats::get_PerformanceFactor()
    .set instance void Game.ComponentVitalStats::set_PerformanceFactor(float32)
  } // end of property ComponentVitalStats::PerformanceFactor
  .property instance float32 Food()
  {
    .get instance float32 Game.ComponentVitalStats::get_Food()
    .set instance void Game.ComponentVitalStats::set_Food(float32)
  } // end of property ComponentVitalStats::Food
  .property instance float32 Stamina()
  {
    .get instance float32 Game.ComponentVitalStats::get_Stamina()
    .set instance void Game.ComponentVitalStats::set_Stamina(float32)
  } // end of property ComponentVitalStats::Stamina
  .property instance float32 Sleep()
  {
    .get instance float32 Game.ComponentVitalStats::get_Sleep()
    .set instance void Game.ComponentVitalStats::set_Sleep(float32)
  } // end of property ComponentVitalStats::Sleep
  .property instance float32 Temperature()
  {
    .get instance float32 Game.ComponentVitalStats::get_Temperature()
    .set instance void Game.ComponentVitalStats::set_Temperature(float32)
  } // end of property ComponentVitalStats::Temperature
  .property instance float32 Wetness()
  {
    .get instance float32 Game.ComponentVitalStats::get_Wetness()
    .set instance void Game.ComponentVitalStats::set_Wetness(float32)
  } // end of property ComponentVitalStats::Wetness
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentVitalStats::get_UpdateOrder()
  } // end of property ComponentVitalStats::UpdateOrder
} // end of class Game.ComponentVitalStats