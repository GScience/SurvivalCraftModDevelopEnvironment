.class public auto ansi beforefieldinit Game.ComponentVitalStats
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IUpdateable
{
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemAudio m_subsystemAudio
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
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<int32,float32> m_satiation
  .field private class [System.Collections]System.Collections.Generic.List`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,float32>> m_satiationList
  .field private float32 m_densityModifierApplied
  .field private valuetype [System.Runtime]System.Nullable`1<float64> m_lastAttackedTime
  .field private float32 m_sleepBlackoutFactor
  .field private float32 m_sleepBlackoutDuration
  .field private float32 m_environmentTemperature
  .field private float32 m_environmentTemperatureFlux
  .field private float32 m_temperatureBlackoutFactor
  .field private float32 m_temperatureBlackoutDuration
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
    // 代码大小       581 (0x245)
    .maxstack  7
    .locals init (int32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0006:  stloc.0
    IL_0007:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_000c:  ldloc.0
    IL_000d:  ldelem.ref
    IL_000e:  dup
    IL_000f:  ldarg.1
    IL_0010:  callvirt   instance float32 Game.Block::GetNutritionalValue(int32)
    IL_0015:  stloc.1
    IL_0016:  ldarg.1
    IL_0017:  callvirt   instance float32 Game.Block::GetSicknessProbability(int32)
    IL_001c:  stloc.2
    IL_001d:  ldloc.1
    IL_001e:  ldc.r4     0.0
    IL_0023:  ble.un     IL_0243

    IL_0028:  ldarg.0
    IL_0029:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_002e:  callvirt   instance class Game.ComponentSickness Game.ComponentPlayer::get_ComponentSickness()
    IL_0033:  callvirt   instance bool Game.ComponentSickness::get_IsSick()
    IL_0038:  brfalse.s  IL_005b

    IL_003a:  ldloc.2
    IL_003b:  ldc.r4     0.0
    IL_0040:  ble.un.s   IL_005b

    IL_0042:  ldarg.0
    IL_0043:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0048:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_004d:  ldstr      "You feel too sick to eat this"
    IL_0052:  ldc.i4.1
    IL_0053:  ldc.i4.1
    IL_0054:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0059:  ldc.i4.0
    IL_005a:  ret

    IL_005b:  ldarg.0
    IL_005c:  call       instance float32 Game.ComponentVitalStats::get_Food()
    IL_0061:  ldc.r4     0.98000002
    IL_0066:  blt.un.s   IL_0081

    IL_0068:  ldarg.0
    IL_0069:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_006e:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0073:  ldstr      "You are full, no more food!"
    IL_0078:  ldc.i4.1
    IL_0079:  ldc.i4.1
    IL_007a:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_007f:  ldc.i4.0
    IL_0080:  ret

    IL_0081:  ldarg.0
    IL_0082:  ldfld      class Game.SubsystemAudio Game.ComponentVitalStats::m_subsystemAudio
    IL_0087:  ldstr      "Audio/Creatures/HumanEat"
    IL_008c:  ldc.r4     1.
    IL_0091:  ldarg.0
    IL_0092:  ldfld      class Game.Random Game.ComponentVitalStats::m_random
    IL_0097:  ldc.r4     -0.2
    IL_009c:  ldc.r4     0.2
    IL_00a1:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00a6:  ldarg.0
    IL_00a7:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_00ac:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00b1:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_00b6:  ldc.r4     2.
    IL_00bb:  ldc.r4     0.0
    IL_00c0:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            float32)
    IL_00c5:  ldarg.0
    IL_00c6:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_00cb:  callvirt   instance class Game.ComponentSickness Game.ComponentPlayer::get_ComponentSickness()
    IL_00d0:  callvirt   instance bool Game.ComponentSickness::get_IsSick()
    IL_00d5:  brfalse.s  IL_00df

    IL_00d7:  ldloc.1
    IL_00d8:  ldc.r4     0.75
    IL_00dd:  mul
    IL_00de:  stloc.1
    IL_00df:  ldarg.0
    IL_00e0:  ldarg.0
    IL_00e1:  call       instance float32 Game.ComponentVitalStats::get_Food()
    IL_00e6:  ldloc.1
    IL_00e7:  add
    IL_00e8:  call       instance void Game.ComponentVitalStats::set_Food(float32)
    IL_00ed:  ldarg.0
    IL_00ee:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,float32> Game.ComponentVitalStats::m_satiation
    IL_00f3:  ldloc.0
    IL_00f4:  ldloca.s   V_3
    IL_00f6:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<int32,float32>::TryGetValue(!0,
                                                                                                                                     !1&)
    IL_00fb:  pop
    IL_00fc:  ldloc.3
    IL_00fd:  ldloc.1
    IL_00fe:  ldc.r4     0.5
    IL_0103:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0108:  add
    IL_0109:  stloc.3
    IL_010a:  ldarg.0
    IL_010b:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,float32> Game.ComponentVitalStats::m_satiation
    IL_0110:  ldloc.0
    IL_0111:  ldloc.3
    IL_0112:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,float32>::set_Item(!0,
                                                                                                                                  !1)
    IL_0117:  ldarg.0
    IL_0118:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_011d:  callvirt   instance class Game.ComponentSickness Game.ComponentPlayer::get_ComponentSickness()
    IL_0122:  callvirt   instance bool Game.ComponentSickness::get_IsSick()
    IL_0127:  brfalse.s  IL_013e

    IL_0129:  ldarg.0
    IL_012a:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_012f:  callvirt   instance class Game.ComponentSickness Game.ComponentPlayer::get_ComponentSickness()
    IL_0134:  callvirt   instance void Game.ComponentSickness::NauseaEffect()
    IL_0139:  br         IL_0202

    IL_013e:  ldloc.2
    IL_013f:  ldc.r4     0.5
    IL_0144:  blt.un.s   IL_0162

    IL_0146:  ldarg.0
    IL_0147:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_014c:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0151:  ldstr      "It tastes horrible, no more!"
    IL_0156:  ldc.i4.1
    IL_0157:  ldc.i4.1
    IL_0158:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_015d:  br         IL_0202

    IL_0162:  ldloc.2
    IL_0163:  ldc.r4     0.0
    IL_0168:  ble.un.s   IL_0183

    IL_016a:  ldarg.0
    IL_016b:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0170:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0175:  ldstr      "It tastes odd, no more"
    IL_017a:  ldc.i4.1
    IL_017b:  ldc.i4.1
    IL_017c:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0181:  br.s       IL_0202

    IL_0183:  ldloc.3
    IL_0184:  ldc.r4     2.5
    IL_0189:  ble.un.s   IL_01a4

    IL_018b:  ldarg.0
    IL_018c:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0191:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0196:  ldstr      "Eat something else, you will get sick!"
    IL_019b:  ldc.i4.1
    IL_019c:  ldc.i4.1
    IL_019d:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_01a2:  br.s       IL_0202

    IL_01a4:  ldloc.3
    IL_01a5:  ldc.r4     2.
    IL_01aa:  ble.un.s   IL_01c5

    IL_01ac:  ldarg.0
    IL_01ad:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_01b2:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_01b7:  ldstr      "You eat this too often"
    IL_01bc:  ldc.i4.1
    IL_01bd:  ldc.i4.1
    IL_01be:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_01c3:  br.s       IL_0202

    IL_01c5:  ldarg.0
    IL_01c6:  call       instance float32 Game.ComponentVitalStats::get_Food()
    IL_01cb:  ldc.r4     0.85000002
    IL_01d0:  ble.un.s   IL_01eb

    IL_01d2:  ldarg.0
    IL_01d3:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_01d8:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_01dd:  ldstr      "You have eaten well"
    IL_01e2:  ldc.i4.1
    IL_01e3:  ldc.i4.1
    IL_01e4:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_01e9:  br.s       IL_0202

    IL_01eb:  ldarg.0
    IL_01ec:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_01f1:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_01f6:  ldstr      "Good, but you want more"
    IL_01fb:  ldc.i4.1
    IL_01fc:  ldc.i4.0
    IL_01fd:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0202:  ldarg.0
    IL_0203:  ldfld      class Game.Random Game.ComponentVitalStats::m_random
    IL_0208:  ldloc.2
    IL_0209:  callvirt   instance bool Game.Random::Bool(float32)
    IL_020e:  brtrue.s   IL_0218

    IL_0210:  ldloc.3
    IL_0211:  ldc.r4     3.5
    IL_0216:  ble.un.s   IL_0228

    IL_0218:  ldarg.0
    IL_0219:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_021e:  callvirt   instance class Game.ComponentSickness Game.ComponentPlayer::get_ComponentSickness()
    IL_0223:  callvirt   instance void Game.ComponentSickness::StartSickness()
    IL_0228:  ldarg.0
    IL_0229:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_022e:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_0233:  dup
    IL_0234:  ldfld      int64 Game.PlayerStats::FoodItemsEaten
    IL_0239:  ldc.i4.1
    IL_023a:  conv.i8
    IL_023b:  add
    IL_023c:  stfld      int64 Game.PlayerStats::FoodItemsEaten
    IL_0241:  ldc.i4.1
    IL_0242:  ret

    IL_0243:  ldc.i4.0
    IL_0244:  ret
  } // end of method ComponentVitalStats::Eat

  .method public hidebysig instance void 
          MakeSleepy(float32 sleepValue) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance float32 Game.ComponentVitalStats::get_Sleep()
    IL_0007:  ldarg.1
    IL_0008:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_000d:  call       instance void Game.ComponentVitalStats::set_Sleep(float32)
    IL_0012:  ret
  } // end of method ComponentVitalStats::MakeSleepy

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
    // 代码大小       66 (0x42)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0006:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_000b:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_0010:  ldc.r4     0.0
    IL_0015:  ble.un.s   IL_0036

    IL_0017:  ldarg.0
    IL_0018:  call       instance void Game.ComponentVitalStats::UpdateFood()
    IL_001d:  ldarg.0
    IL_001e:  call       instance void Game.ComponentVitalStats::UpdateStamina()
    IL_0023:  ldarg.0
    IL_0024:  call       instance void Game.ComponentVitalStats::UpdateSleep()
    IL_0029:  ldarg.0
    IL_002a:  call       instance void Game.ComponentVitalStats::UpdateTemperature()
    IL_002f:  ldarg.0
    IL_0030:  call       instance void Game.ComponentVitalStats::UpdateWetness()
    IL_0035:  ret

    IL_0036:  ldarg.0
    IL_0037:  ldfld      class [Engine]Engine.Audio.Sound Game.ComponentVitalStats::m_pantingSound
    IL_003c:  callvirt   instance void [Engine]Engine.Audio.BaseSound::Stop()
    IL_0041:  ret
  } // end of method ComponentVitalStats::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       414 (0x19e)
    .maxstack  3
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>> V_0,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object> V_1)
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
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0031:  stfld      class Game.SubsystemAudio Game.ComponentVitalStats::m_subsystemAudio
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemMetersBlockBehavior>(bool)
    IL_0043:  stfld      class Game.SubsystemMetersBlockBehavior Game.ComponentVitalStats::m_subsystemMetersBlockBehavior
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemWeather>(bool)
    IL_0055:  stfld      class Game.SubsystemWeather Game.ComponentVitalStats::m_subsystemWeather
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPlayer>(bool)
    IL_0067:  stfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_006c:  ldarg.0
    IL_006d:  ldarg.0
    IL_006e:  ldfld      class Game.SubsystemAudio Game.ComponentVitalStats::m_subsystemAudio
    IL_0073:  ldstr      "Audio/HumanPanting"
    IL_0078:  callvirt   instance class [Engine]Engine.Audio.Sound Game.SubsystemAudio::CreateSound(string)
    IL_007d:  stfld      class [Engine]Engine.Audio.Sound Game.ComponentVitalStats::m_pantingSound
    IL_0082:  ldarg.0
    IL_0083:  ldfld      class [Engine]Engine.Audio.Sound Game.ComponentVitalStats::m_pantingSound
    IL_0088:  ldc.i4.1
    IL_0089:  callvirt   instance void [Engine]Engine.Audio.BaseSound::set_IsLooped(bool)
    IL_008e:  ldarg.0
    IL_008f:  ldarg.1
    IL_0090:  ldstr      "Food"
    IL_0095:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_009a:  call       instance void Game.ComponentVitalStats::set_Food(float32)
    IL_009f:  ldarg.0
    IL_00a0:  ldarg.1
    IL_00a1:  ldstr      "Stamina"
    IL_00a6:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00ab:  call       instance void Game.ComponentVitalStats::set_Stamina(float32)
    IL_00b0:  ldarg.0
    IL_00b1:  ldarg.1
    IL_00b2:  ldstr      "Sleep"
    IL_00b7:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00bc:  call       instance void Game.ComponentVitalStats::set_Sleep(float32)
    IL_00c1:  ldarg.0
    IL_00c2:  ldarg.1
    IL_00c3:  ldstr      "Temperature"
    IL_00c8:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00cd:  call       instance void Game.ComponentVitalStats::set_Temperature(float32)
    IL_00d2:  ldarg.0
    IL_00d3:  ldarg.1
    IL_00d4:  ldstr      "Wetness"
    IL_00d9:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00de:  call       instance void Game.ComponentVitalStats::set_Wetness(float32)
    IL_00e3:  ldarg.0
    IL_00e4:  ldarg.0
    IL_00e5:  call       instance float32 Game.ComponentVitalStats::get_Food()
    IL_00ea:  stfld      float32 Game.ComponentVitalStats::m_lastFood
    IL_00ef:  ldarg.0
    IL_00f0:  ldarg.0
    IL_00f1:  call       instance float32 Game.ComponentVitalStats::get_Stamina()
    IL_00f6:  stfld      float32 Game.ComponentVitalStats::m_lastStamina
    IL_00fb:  ldarg.0
    IL_00fc:  ldarg.0
    IL_00fd:  call       instance float32 Game.ComponentVitalStats::get_Sleep()
    IL_0102:  stfld      float32 Game.ComponentVitalStats::m_lastSleep
    IL_0107:  ldarg.0
    IL_0108:  ldarg.0
    IL_0109:  call       instance float32 Game.ComponentVitalStats::get_Temperature()
    IL_010e:  stfld      float32 Game.ComponentVitalStats::m_lastTemperature
    IL_0113:  ldarg.0
    IL_0114:  ldarg.0
    IL_0115:  call       instance float32 Game.ComponentVitalStats::get_Wetness()
    IL_011a:  stfld      float32 Game.ComponentVitalStats::m_lastWetness
    IL_011f:  ldarg.0
    IL_0120:  ldarg.0
    IL_0121:  call       instance float32 Game.ComponentVitalStats::get_Temperature()
    IL_0126:  stfld      float32 Game.ComponentVitalStats::m_environmentTemperature
    IL_012b:  ldarg.1
    IL_012c:  ldstr      "Satiation"
    IL_0131:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string)
    IL_0136:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>> [EntitySystem]TemplatesDatabase.ValuesDictionary::GetEnumerator()
    IL_013b:  stloc.0
    .try
    {
      IL_013c:  br.s       IL_016d

      IL_013e:  ldloc.0
      IL_013f:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>>::get_Current()
      IL_0144:  stloc.1
      IL_0145:  ldarg.0
      IL_0146:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,float32> Game.ComponentVitalStats::m_satiation
      IL_014b:  ldloca.s   V_1
      IL_014d:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>::get_Key()
      IL_0152:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
      IL_0157:  call       int32 [System.Runtime]System.Int32::Parse(string,
                                                                     class [System.Runtime]System.IFormatProvider)
      IL_015c:  ldloca.s   V_1
      IL_015e:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>::get_Value()
      IL_0163:  unbox.any  [System.Runtime]System.Single
      IL_0168:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,float32>::set_Item(!0,
                                                                                                                                    !1)
      IL_016d:  ldloc.0
      IL_016e:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0173:  brtrue.s   IL_013e

      IL_0175:  leave.s    IL_0181

    }  // end .try
    finally
    {
      IL_0177:  ldloc.0
      IL_0178:  brfalse.s  IL_0180

      IL_017a:  ldloc.0
      IL_017b:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0180:  endfinally
    }  // end handler
    IL_0181:  ldarg.0
    IL_0182:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0187:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_018c:  ldarg.0
    IL_018d:  ldftn      instance void Game.ComponentVitalStats::'<Load>b__48_0'(class Game.ComponentCreature)
    IL_0193:  newobj     instance void class [System.Runtime]System.Action`1<class Game.ComponentCreature>::.ctor(object,
                                                                                                                  native int)
    IL_0198:  callvirt   instance void Game.ComponentHealth::add_Attacked(class [System.Runtime]System.Action`1<class Game.ComponentCreature>)
    IL_019d:  ret
  } // end of method ComponentVitalStats::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.EntityToIdMap entityToIdMap) cil managed
  {
    // 代码大小       198 (0xc6)
    .maxstack  3
    .locals init (class [EntitySystem]TemplatesDatabase.ValuesDictionary V_0,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<int32,float32> V_1,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,float32> V_2,
             int32 V_3)
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
    IL_0055:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
    IL_005a:  stloc.0
    IL_005b:  ldarg.1
    IL_005c:  ldstr      "Satiation"
    IL_0061:  ldloc.0
    IL_0062:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                          !!0)
    IL_0067:  ldarg.0
    IL_0068:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,float32> Game.ComponentVitalStats::m_satiation
    IL_006d:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<int32,float32>::GetEnumerator()
    IL_0072:  stloc.1
    .try
    {
      IL_0073:  br.s       IL_00ac

      IL_0075:  ldloca.s   V_1
      IL_0077:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<int32,float32>::get_Current()
      IL_007c:  stloc.2
      IL_007d:  ldloca.s   V_2
      IL_007f:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,float32>::get_Value()
      IL_0084:  ldc.r4     0.0
      IL_0089:  ble.un.s   IL_00ac

      IL_008b:  ldloc.0
      IL_008c:  ldloca.s   V_2
      IL_008e:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,float32>::get_Key()
      IL_0093:  stloc.3
      IL_0094:  ldloca.s   V_3
      IL_0096:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
      IL_009b:  call       instance string [System.Runtime]System.Int32::ToString(class [System.Runtime]System.IFormatProvider)
      IL_00a0:  ldloca.s   V_2
      IL_00a2:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,float32>::get_Value()
      IL_00a7:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float32>(string,
                                                                                                             !!0)
      IL_00ac:  ldloca.s   V_1
      IL_00ae:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<int32,float32>::MoveNext()
      IL_00b3:  brtrue.s   IL_0075

      IL_00b5:  leave.s    IL_00c5

    }  // end .try
    finally
    {
      IL_00b7:  ldloca.s   V_1
      IL_00b9:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<int32,float32>
      IL_00bf:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00c4:  endfinally
    }  // end handler
    IL_00c5:  ret
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
    // 代码大小       1043 (0x413)
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
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> V_11,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,float32>> V_12,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,float32> V_13,
             float32 V_14)
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
    IL_00f8:  brfalse.s  IL_010f

    IL_00fa:  ldarg.0
    IL_00fb:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0100:  callvirt   instance class Game.ComponentSickness Game.ComponentPlayer::get_ComponentSickness()
    IL_0105:  callvirt   instance bool Game.ComponentSickness::get_IsSick()
    IL_010a:  ldc.i4.0
    IL_010b:  ceq
    IL_010d:  br.s       IL_0110

    IL_010f:  ldc.i4.0
    IL_0110:  stloc.s    V_6
    IL_0112:  ldarg.0
    IL_0113:  ldfld      class Game.SubsystemGameInfo Game.ComponentVitalStats::m_subsystemGameInfo
    IL_0118:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_011d:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_0122:  brfalse    IL_0330

    IL_0127:  ldarg.0
    IL_0128:  ldfld      class Game.SubsystemGameInfo Game.ComponentVitalStats::m_subsystemGameInfo
    IL_012d:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0132:  ldfld      bool Game.WorldSettings::AreAdventureSurvivalMechanicsEnabled
    IL_0137:  brfalse    IL_0330

    IL_013c:  ldarg.0
    IL_013d:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0142:  callvirt   instance class Game.ComponentLevel Game.ComponentPlayer::get_ComponentLevel()
    IL_0147:  callvirt   instance float32 Game.ComponentLevel::get_HungerFactor()
    IL_014c:  stloc.s    V_10
    IL_014e:  ldarg.0
    IL_014f:  ldarg.0
    IL_0150:  call       instance float32 Game.ComponentVitalStats::get_Food()
    IL_0155:  ldloc.s    V_10
    IL_0157:  ldloc.0
    IL_0158:  mul
    IL_0159:  ldc.r4     2400.
    IL_015e:  div
    IL_015f:  sub
    IL_0160:  call       instance void Game.ComponentVitalStats::set_Food(float32)
    IL_0165:  ldloc.s    V_5
    IL_0167:  ldloc.s    V_4
    IL_0169:  or
    IL_016a:  brfalse.s  IL_0187

    IL_016c:  ldarg.0
    IL_016d:  ldarg.0
    IL_016e:  call       instance float32 Game.ComponentVitalStats::get_Food()
    IL_0173:  ldloc.s    V_10
    IL_0175:  ldloc.0
    IL_0176:  mul
    IL_0177:  ldloc.1
    IL_0178:  mul
    IL_0179:  ldc.r4     1200.
    IL_017e:  div
    IL_017f:  sub
    IL_0180:  call       instance void Game.ComponentVitalStats::set_Food(float32)
    IL_0185:  br.s       IL_01a0

    IL_0187:  ldarg.0
    IL_0188:  ldarg.0
    IL_0189:  call       instance float32 Game.ComponentVitalStats::get_Food()
    IL_018e:  ldloc.s    V_10
    IL_0190:  ldloc.0
    IL_0191:  mul
    IL_0192:  ldloc.1
    IL_0193:  mul
    IL_0194:  ldc.r4     2400.
    IL_0199:  div
    IL_019a:  sub
    IL_019b:  call       instance void Game.ComponentVitalStats::set_Food(float32)
    IL_01a0:  ldarg.0
    IL_01a1:  ldarg.0
    IL_01a2:  call       instance float32 Game.ComponentVitalStats::get_Food()
    IL_01a7:  ldloc.s    V_10
    IL_01a9:  ldloc.2
    IL_01aa:  mul
    IL_01ab:  ldc.r4     1000.
    IL_01b0:  div
    IL_01b1:  sub
    IL_01b2:  call       instance void Game.ComponentVitalStats::set_Food(float32)
    IL_01b7:  ldarg.0
    IL_01b8:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_01bd:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_01c2:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> Game.ComponentMiner::get_DigCellFace()
    IL_01c7:  stloc.s    V_11
    IL_01c9:  ldloca.s   V_11
    IL_01cb:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>::get_HasValue()
    IL_01d0:  brfalse.s  IL_01e9

    IL_01d2:  ldarg.0
    IL_01d3:  ldarg.0
    IL_01d4:  call       instance float32 Game.ComponentVitalStats::get_Food()
    IL_01d9:  ldloc.s    V_10
    IL_01db:  ldloc.0
    IL_01dc:  mul
    IL_01dd:  ldc.r4     2400.
    IL_01e2:  div
    IL_01e3:  sub
    IL_01e4:  call       instance void Game.ComponentVitalStats::set_Food(float32)
    IL_01e9:  ldarg.0
    IL_01ea:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_01ef:  callvirt   instance class Game.ComponentSleep Game.ComponentPlayer::get_ComponentSleep()
    IL_01f4:  callvirt   instance bool Game.ComponentSleep::get_IsSleeping()
    IL_01f9:  brtrue     IL_033b

    IL_01fe:  ldarg.0
    IL_01ff:  call       instance float32 Game.ComponentVitalStats::get_Food()
    IL_0204:  ldc.r4     0.0
    IL_0209:  bgt.un.s   IL_027c

    IL_020b:  ldarg.0
    IL_020c:  ldfld      class Game.SubsystemTime Game.ComponentVitalStats::m_subsystemTime
    IL_0211:  ldc.r8     30.
    IL_021a:  ldc.r8     0.0
    IL_0223:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_0228:  brfalse    IL_033b

    IL_022d:  ldarg.0
    IL_022e:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0233:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0238:  ldc.r4     5.0000001e-002
    IL_023d:  ldnull
    IL_023e:  ldc.i4.0
    IL_023f:  ldstr      "Starved to death"
    IL_0244:  callvirt   instance void Game.ComponentHealth::Injure(float32,
                                                                    class Game.ComponentCreature,
                                                                    bool,
                                                                    string)
    IL_0249:  ldarg.0
    IL_024a:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_024f:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0254:  ldstr      "You are starving, find food!"
    IL_0259:  ldc.i4.1
    IL_025a:  ldc.i4.0
    IL_025b:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0260:  ldarg.0
    IL_0261:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0266:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_026b:  callvirt   instance class Game.ValueBarWidget Game.ComponentGui::get_FoodBarWidget()
    IL_0270:  ldc.i4.s   10
    IL_0272:  callvirt   instance void Game.ValueBarWidget::Flash(int32)
    IL_0277:  br         IL_033b

    IL_027c:  ldarg.0
    IL_027d:  call       instance float32 Game.ComponentVitalStats::get_Food()
    IL_0282:  ldc.r4     0.1
    IL_0287:  bge.un.s   IL_02ba

    IL_0289:  ldarg.0
    IL_028a:  ldfld      float32 Game.ComponentVitalStats::m_lastFood
    IL_028f:  ldc.r4     0.1
    IL_0294:  clt.un
    IL_0296:  ldc.i4.0
    IL_0297:  ceq
    IL_0299:  ldloc.s    V_6
    IL_029b:  or
    IL_029c:  brfalse.s  IL_02ba

    IL_029e:  ldarg.0
    IL_029f:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_02a4:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_02a9:  ldstr      "You are close to starvation"
    IL_02ae:  ldc.i4.1
    IL_02af:  ldc.i4.1
    IL_02b0:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_02b5:  br         IL_033b

    IL_02ba:  ldarg.0
    IL_02bb:  call       instance float32 Game.ComponentVitalStats::get_Food()
    IL_02c0:  ldc.r4     0.25
    IL_02c5:  bge.un.s   IL_02f5

    IL_02c7:  ldarg.0
    IL_02c8:  ldfld      float32 Game.ComponentVitalStats::m_lastFood
    IL_02cd:  ldc.r4     0.25
    IL_02d2:  clt.un
    IL_02d4:  ldc.i4.0
    IL_02d5:  ceq
    IL_02d7:  ldloc.s    V_6
    IL_02d9:  or
    IL_02da:  brfalse.s  IL_02f5

    IL_02dc:  ldarg.0
    IL_02dd:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_02e2:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_02e7:  ldstr      "Time to eat something"
    IL_02ec:  ldc.i4.1
    IL_02ed:  ldc.i4.1
    IL_02ee:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_02f3:  br.s       IL_033b

    IL_02f5:  ldarg.0
    IL_02f6:  call       instance float32 Game.ComponentVitalStats::get_Food()
    IL_02fb:  ldc.r4     0.5
    IL_0300:  bge.un.s   IL_033b

    IL_0302:  ldarg.0
    IL_0303:  ldfld      float32 Game.ComponentVitalStats::m_lastFood
    IL_0308:  ldc.r4     0.5
    IL_030d:  clt.un
    IL_030f:  ldc.i4.0
    IL_0310:  ceq
    IL_0312:  ldloc.s    V_6
    IL_0314:  or
    IL_0315:  brfalse.s  IL_033b

    IL_0317:  ldarg.0
    IL_0318:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_031d:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0322:  ldstr      "You are slightly hungry"
    IL_0327:  ldc.i4.1
    IL_0328:  ldc.i4.0
    IL_0329:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_032e:  br.s       IL_033b

    IL_0330:  ldarg.0
    IL_0331:  ldc.r4     0.89999998
    IL_0336:  call       instance void Game.ComponentVitalStats::set_Food(float32)
    IL_033b:  ldarg.0
    IL_033c:  ldfld      class Game.SubsystemTime Game.ComponentVitalStats::m_subsystemTime
    IL_0341:  ldc.r8     1.
    IL_034a:  ldc.r8     -1.e-002
    IL_0353:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_0358:  brfalse    IL_03eb

    IL_035d:  ldarg.0
    IL_035e:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,float32>> Game.ComponentVitalStats::m_satiationList
    IL_0363:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,float32>>::Clear()
    IL_0368:  ldarg.0
    IL_0369:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,float32>> Game.ComponentVitalStats::m_satiationList
    IL_036e:  ldarg.0
    IL_036f:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,float32> Game.ComponentVitalStats::m_satiation
    IL_0374:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,float32>>::AddRange(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
    IL_0379:  ldarg.0
    IL_037a:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,float32> Game.ComponentVitalStats::m_satiation
    IL_037f:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,float32>::Clear()
    IL_0384:  ldarg.0
    IL_0385:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,float32>> Game.ComponentVitalStats::m_satiationList
    IL_038a:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,float32>>::GetEnumerator()
    IL_038f:  stloc.s    V_12
    .try
    {
      IL_0391:  br.s       IL_03d2

      IL_0393:  ldloca.s   V_12
      IL_0395:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,float32>>::get_Current()
      IL_039a:  stloc.s    V_13
      IL_039c:  ldloca.s   V_13
      IL_039e:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,float32>::get_Value()
      IL_03a3:  ldc.r4     4.1666668e-004
      IL_03a8:  sub
      IL_03a9:  ldc.r4     0.0
      IL_03ae:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_03b3:  stloc.s    V_14
      IL_03b5:  ldloc.s    V_14
      IL_03b7:  ldc.r4     0.0
      IL_03bc:  ble.un.s   IL_03d2

      IL_03be:  ldarg.0
      IL_03bf:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,float32> Game.ComponentVitalStats::m_satiation
      IL_03c4:  ldloca.s   V_13
      IL_03c6:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,float32>::get_Key()
      IL_03cb:  ldloc.s    V_14
      IL_03cd:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,float32>::Add(!0,
                                                                                                                               !1)
      IL_03d2:  ldloca.s   V_12
      IL_03d4:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,float32>>::MoveNext()
      IL_03d9:  brtrue.s   IL_0393

      IL_03db:  leave.s    IL_03eb

    }  // end .try
    finally
    {
      IL_03dd:  ldloca.s   V_12
      IL_03df:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,float32>>
      IL_03e5:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_03ea:  endfinally
    }  // end handler
    IL_03eb:  ldarg.0
    IL_03ec:  ldarg.0
    IL_03ed:  call       instance float32 Game.ComponentVitalStats::get_Food()
    IL_03f2:  stfld      float32 Game.ComponentVitalStats::m_lastFood
    IL_03f7:  ldarg.0
    IL_03f8:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_03fd:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0402:  callvirt   instance class Game.ValueBarWidget Game.ComponentGui::get_FoodBarWidget()
    IL_0407:  ldarg.0
    IL_0408:  call       instance float32 Game.ComponentVitalStats::get_Food()
    IL_040d:  callvirt   instance void Game.ValueBarWidget::set_Value(float32)
    IL_0412:  ret
  } // end of method ComponentVitalStats::UpdateFood

  .method private hidebysig instance void 
          UpdateStamina() cil managed
  {
    // 代码大小       1245 (0x4dd)
    .maxstack  7
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
             float32 V_11,
             float32 V_12)
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
    IL_00dc:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_00e1:  callvirt   instance class Game.ComponentSickness Game.ComponentPlayer::get_ComponentSickness()
    IL_00e6:  callvirt   instance bool Game.ComponentSickness::get_IsPuking()
    IL_00eb:  pop
    IL_00ec:  ldarg.0
    IL_00ed:  ldfld      class Game.SubsystemGameInfo Game.ComponentVitalStats::m_subsystemGameInfo
    IL_00f2:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_00f7:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_00fc:  brfalse    IL_04c6

    IL_0101:  ldarg.0
    IL_0102:  ldfld      class Game.SubsystemGameInfo Game.ComponentVitalStats::m_subsystemGameInfo
    IL_0107:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_010c:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_0111:  ldc.i4.1
    IL_0112:  beq        IL_04c6

    IL_0117:  ldarg.0
    IL_0118:  ldfld      class Game.SubsystemGameInfo Game.ComponentVitalStats::m_subsystemGameInfo
    IL_011d:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0122:  ldfld      bool Game.WorldSettings::AreAdventureSurvivalMechanicsEnabled
    IL_0127:  brfalse    IL_04c6

    IL_012c:  ldc.r4     1.
    IL_0131:  ldarg.0
    IL_0132:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0137:  callvirt   instance class Game.ComponentLevel Game.ComponentPlayer::get_ComponentLevel()
    IL_013c:  callvirt   instance float32 Game.ComponentLevel::get_SpeedFactor()
    IL_0141:  ldc.r4     0.75
    IL_0146:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_014b:  div
    IL_014c:  stloc.s    V_9
    IL_014e:  ldarg.0
    IL_014f:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0154:  callvirt   instance class Game.ComponentSickness Game.ComponentPlayer::get_ComponentSickness()
    IL_0159:  callvirt   instance bool Game.ComponentSickness::get_IsSick()
    IL_015e:  brtrue.s   IL_0172

    IL_0160:  ldarg.0
    IL_0161:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0166:  callvirt   instance class Game.ComponentFlu Game.ComponentPlayer::get_ComponentFlu()
    IL_016b:  callvirt   instance bool Game.ComponentFlu::get_HasFlu()
    IL_0170:  brfalse.s  IL_017c

    IL_0172:  ldloc.s    V_9
    IL_0174:  ldc.r4     5.
    IL_0179:  mul
    IL_017a:  stloc.s    V_9
    IL_017c:  ldarg.0
    IL_017d:  ldarg.0
    IL_017e:  call       instance float32 Game.ComponentVitalStats::get_Stamina()
    IL_0183:  ldloc.0
    IL_0184:  ldc.r4     7.e-002
    IL_0189:  mul
    IL_018a:  add
    IL_018b:  call       instance void Game.ComponentVitalStats::set_Stamina(float32)
    IL_0190:  ldarg.0
    IL_0191:  ldarg.0
    IL_0192:  call       instance float32 Game.ComponentVitalStats::get_Stamina()
    IL_0197:  ldc.r4     2.5e-002
    IL_019c:  ldloc.2
    IL_019d:  mul
    IL_019e:  ldloc.s    V_9
    IL_01a0:  mul
    IL_01a1:  sub
    IL_01a2:  call       instance void Game.ComponentVitalStats::set_Stamina(float32)
    IL_01a7:  ldloc.s    V_5
    IL_01a9:  ldloc.s    V_4
    IL_01ab:  or
    IL_01ac:  brfalse.s  IL_01d5

    IL_01ae:  ldarg.0
    IL_01af:  ldarg.0
    IL_01b0:  call       instance float32 Game.ComponentVitalStats::get_Stamina()
    IL_01b5:  ldloc.0
    IL_01b6:  ldc.r4     7.e-002
    IL_01bb:  ldc.r4     6.0000001e-003
    IL_01c0:  ldloc.s    V_9
    IL_01c2:  mul
    IL_01c3:  add
    IL_01c4:  ldc.r4     9.9999998e-003
    IL_01c9:  ldloc.1
    IL_01ca:  mul
    IL_01cb:  add
    IL_01cc:  mul
    IL_01cd:  sub
    IL_01ce:  call       instance void Game.ComponentVitalStats::set_Stamina(float32)
    IL_01d3:  br.s       IL_01f4

    IL_01d5:  ldarg.0
    IL_01d6:  ldarg.0
    IL_01d7:  call       instance float32 Game.ComponentVitalStats::get_Stamina()
    IL_01dc:  ldloc.0
    IL_01dd:  ldc.r4     7.e-002
    IL_01e2:  ldc.r4     6.0000001e-003
    IL_01e7:  ldloc.s    V_9
    IL_01e9:  mul
    IL_01ea:  add
    IL_01eb:  mul
    IL_01ec:  ldloc.1
    IL_01ed:  mul
    IL_01ee:  sub
    IL_01ef:  call       instance void Game.ComponentVitalStats::set_Stamina(float32)
    IL_01f4:  ldloc.s    V_5
    IL_01f6:  brtrue.s   IL_022d

    IL_01f8:  ldloc.s    V_4
    IL_01fa:  brtrue.s   IL_022d

    IL_01fc:  ldarg.0
    IL_01fd:  call       instance float32 Game.ComponentVitalStats::get_Stamina()
    IL_0202:  ldc.r4     0.33000001
    IL_0207:  bge.un.s   IL_022d

    IL_0209:  ldarg.0
    IL_020a:  ldfld      float32 Game.ComponentVitalStats::m_lastStamina
    IL_020f:  ldc.r4     0.33000001
    IL_0214:  blt.un.s   IL_022d

    IL_0216:  ldarg.0
    IL_0217:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_021c:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0221:  ldstr      "You are panting, slow down"
    IL_0226:  ldc.i4.1
    IL_0227:  ldc.i4.0
    IL_0228:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_022d:  ldloc.s    V_5
    IL_022f:  ldloc.s    V_4
    IL_0231:  or
    IL_0232:  brfalse.s  IL_0265

    IL_0234:  ldarg.0
    IL_0235:  call       instance float32 Game.ComponentVitalStats::get_Stamina()
    IL_023a:  ldc.r4     0.5
    IL_023f:  bge.un.s   IL_0265

    IL_0241:  ldarg.0
    IL_0242:  ldfld      float32 Game.ComponentVitalStats::m_lastStamina
    IL_0247:  ldc.r4     0.5
    IL_024c:  blt.un.s   IL_0265

    IL_024e:  ldarg.0
    IL_024f:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0254:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0259:  ldstr      "You are panting, get out of the water"
    IL_025e:  ldc.i4.1
    IL_025f:  ldc.i4.1
    IL_0260:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0265:  ldarg.0
    IL_0266:  call       instance float32 Game.ComponentVitalStats::get_Stamina()
    IL_026b:  ldc.r4     0.1
    IL_0270:  bge.un     IL_033c

    IL_0275:  ldloc.s    V_5
    IL_0277:  ldloc.s    V_4
    IL_0279:  or
    IL_027a:  brfalse    IL_0306

    IL_027f:  ldarg.0
    IL_0280:  ldfld      class Game.SubsystemTime Game.ComponentVitalStats::m_subsystemTime
    IL_0285:  ldc.r8     5.
    IL_028e:  ldc.r8     0.0
    IL_0297:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_029c:  brfalse.s  IL_02d1

    IL_029e:  ldarg.0
    IL_029f:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_02a4:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_02a9:  ldc.r4     5.0000001e-002
    IL_02ae:  ldnull
    IL_02af:  ldc.i4.0
    IL_02b0:  ldstr      "Drowned"
    IL_02b5:  callvirt   instance void Game.ComponentHealth::Injure(float32,
                                                                    class Game.ComponentCreature,
                                                                    bool,
                                                                    string)
    IL_02ba:  ldarg.0
    IL_02bb:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_02c0:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_02c5:  ldstr      "You are drowning!"
    IL_02ca:  ldc.i4.1
    IL_02cb:  ldc.i4.0
    IL_02cc:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_02d1:  ldarg.0
    IL_02d2:  ldfld      class Game.Random Game.ComponentVitalStats::m_random
    IL_02d7:  ldc.r4     0.0
    IL_02dc:  ldc.r4     1.
    IL_02e1:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_02e6:  ldc.r4     1.
    IL_02eb:  ldloc.0
    IL_02ec:  mul
    IL_02ed:  bge.un.s   IL_033c

    IL_02ef:  ldarg.0
    IL_02f0:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_02f5:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_02fa:  ldc.r4     1.
    IL_02ff:  callvirt   instance void Game.ComponentLocomotion::set_JumpOrder(float32)
    IL_0304:  br.s       IL_033c

    IL_0306:  ldarg.0
    IL_0307:  ldfld      class Game.SubsystemTime Game.ComponentVitalStats::m_subsystemTime
    IL_030c:  ldc.r8     5.
    IL_0315:  ldc.r8     0.0
    IL_031e:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_0323:  brfalse.s  IL_033c

    IL_0325:  ldarg.0
    IL_0326:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_032b:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0330:  ldstr      "Rest a while!"
    IL_0335:  ldc.i4.1
    IL_0336:  ldc.i4.1
    IL_0337:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_033c:  ldarg.0
    IL_033d:  ldarg.0
    IL_033e:  call       instance float32 Game.ComponentVitalStats::get_Stamina()
    IL_0343:  stfld      float32 Game.ComponentVitalStats::m_lastStamina
    IL_0348:  ldc.r4     2.
    IL_034d:  ldc.r4     0.5
    IL_0352:  ldarg.0
    IL_0353:  call       instance float32 Game.ComponentVitalStats::get_Stamina()
    IL_0358:  sub
    IL_0359:  mul
    IL_035a:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_035f:  stloc.s    V_10
    IL_0361:  ldloc.s    V_4
    IL_0363:  brtrue     IL_0464

    IL_0368:  ldloc.s    V_10
    IL_036a:  ldc.r4     0.0
    IL_036f:  ble.un     IL_0464

    IL_0374:  ldarg.0
    IL_0375:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_037a:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_037f:  callvirt   instance valuetype Game.PlayerClass Game.PlayerData::get_PlayerClass()
    IL_0384:  ldc.i4.1
    IL_0385:  beq.s      IL_038e

    IL_0387:  ldc.r4     0.0
    IL_038c:  br.s       IL_0393

    IL_038e:  ldc.r4     0.2
    IL_0393:  stloc.s    V_12
    IL_0395:  ldarg.0
    IL_0396:  ldfld      class [Engine]Engine.Audio.Sound Game.ComponentVitalStats::m_pantingSound
    IL_039b:  ldc.r4     1.
    IL_03a0:  call       float32 Game.SettingsManager::get_SoundsVolume()
    IL_03a5:  mul
    IL_03a6:  ldc.r4     1.
    IL_03ab:  ldloc.s    V_10
    IL_03ad:  mul
    IL_03ae:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_03b3:  mul
    IL_03b4:  ldc.r4     0.80000001
    IL_03b9:  ldc.r4     1.
    IL_03be:  ldc.r8     3.
    IL_03c7:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_03cc:  mul
    IL_03cd:  ldc.r8     100.
    IL_03d6:  add
    IL_03d7:  ldc.r8     1000.
    IL_03e0:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_03e5:  conv.r4
    IL_03e6:  call       float32 Game.SimplexNoise::Noise(float32)
    IL_03eb:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_03f0:  mul
    IL_03f1:  callvirt   instance void [Engine]Engine.Audio.BaseSound::set_Volume(float32)
    IL_03f6:  ldarg.0
    IL_03f7:  ldfld      class [Engine]Engine.Audio.Sound Game.ComponentVitalStats::m_pantingSound
    IL_03fc:  ldloc.s    V_12
    IL_03fe:  ldc.r4     -0.15000001
    IL_0403:  ldc.r4     5.0000001e-002
    IL_0408:  ldloc.s    V_10
    IL_040a:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_040f:  ldc.r4     0.80000001
    IL_0414:  ldc.r4     1.2
    IL_0419:  ldc.r8     3.
    IL_0422:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0427:  mul
    IL_0428:  ldc.r8     200.
    IL_0431:  add
    IL_0432:  ldc.r8     1000.
    IL_043b:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_0440:  conv.r4
    IL_0441:  call       float32 Game.SimplexNoise::Noise(float32)
    IL_0446:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_044b:  mul
    IL_044c:  add
    IL_044d:  call       float32 Game.AudioManager::ToEnginePitch(float32)
    IL_0452:  callvirt   instance void [Engine]Engine.Audio.BaseSound::set_Pitch(float32)
    IL_0457:  ldarg.0
    IL_0458:  ldfld      class [Engine]Engine.Audio.Sound Game.ComponentVitalStats::m_pantingSound
    IL_045d:  callvirt   instance void [Engine]Engine.Audio.BaseSound::Play()
    IL_0462:  br.s       IL_046f

    IL_0464:  ldarg.0
    IL_0465:  ldfld      class [Engine]Engine.Audio.Sound Game.ComponentVitalStats::m_pantingSound
    IL_046a:  callvirt   instance void [Engine]Engine.Audio.BaseSound::Stop()
    IL_046f:  ldc.r4     3.
    IL_0474:  ldc.r4     0.33000001
    IL_0479:  ldarg.0
    IL_047a:  call       instance float32 Game.ComponentVitalStats::get_Stamina()
    IL_047f:  sub
    IL_0480:  mul
    IL_0481:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0486:  stloc.s    V_11
    IL_0488:  ldloc.s    V_11
    IL_048a:  ldc.r4     0.0
    IL_048f:  ble.un.s   IL_04ba

    IL_0491:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0496:  ldc.r8     1000.
    IL_049f:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_04a4:  conv.r4
    IL_04a5:  call       float32 Game.SimplexNoise::Noise(float32)
    IL_04aa:  ldloc.s    V_11
    IL_04ac:  bge.un.s   IL_04ba

    IL_04ae:  ldarg.0
    IL_04af:  ldc.r4     0.60000002
    IL_04b4:  call       instance void Game.ComponentVitalStats::ApplyDensityModifier(float32)
    IL_04b9:  ret

    IL_04ba:  ldarg.0
    IL_04bb:  ldc.r4     0.0
    IL_04c0:  call       instance void Game.ComponentVitalStats::ApplyDensityModifier(float32)
    IL_04c5:  ret

    IL_04c6:  ldarg.0
    IL_04c7:  ldc.r4     1.
    IL_04cc:  call       instance void Game.ComponentVitalStats::set_Stamina(float32)
    IL_04d1:  ldarg.0
    IL_04d2:  ldc.r4     0.0
    IL_04d7:  call       instance void Game.ComponentVitalStats::ApplyDensityModifier(float32)
    IL_04dc:  ret
  } // end of method ComponentVitalStats::UpdateStamina

  .method private hidebysig instance void 
          UpdateSleep() cil managed
  {
    // 代码大小       1043 (0x413)
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
    IL_0048:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_004d:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_0052:  brfalse    IL_032e

    IL_0057:  ldarg.0
    IL_0058:  ldfld      class Game.SubsystemGameInfo Game.ComponentVitalStats::m_subsystemGameInfo
    IL_005d:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0062:  ldfld      bool Game.WorldSettings::AreAdventureSurvivalMechanicsEnabled
    IL_0067:  brfalse    IL_032e

    IL_006c:  ldarg.0
    IL_006d:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0072:  callvirt   instance class Game.ComponentSleep Game.ComponentPlayer::get_ComponentSleep()
    IL_0077:  callvirt   instance float32 Game.ComponentSleep::get_SleepFactor()
    IL_007c:  ldc.r4     1.
    IL_0081:  bne.un.s   IL_009c

    IL_0083:  ldarg.0
    IL_0084:  ldarg.0
    IL_0085:  call       instance float32 Game.ComponentVitalStats::get_Sleep()
    IL_008a:  ldc.r4     5.0000001e-002
    IL_008f:  ldloc.0
    IL_0090:  mul
    IL_0091:  add
    IL_0092:  call       instance void Game.ComponentVitalStats::set_Sleep(float32)
    IL_0097:  br         IL_0339

    IL_009c:  ldloc.1
    IL_009d:  brtrue     IL_0339

    IL_00a2:  ldarg.0
    IL_00a3:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentVitalStats::m_lastAttackedTime
    IL_00a8:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_00ad:  brfalse.s  IL_010c

    IL_00af:  ldarg.0
    IL_00b0:  ldfld      class Game.SubsystemTime Game.ComponentVitalStats::m_subsystemTime
    IL_00b5:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_00ba:  stloc.s    V_6
    IL_00bc:  ldarg.0
    IL_00bd:  ldfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentVitalStats::m_lastAttackedTime
    IL_00c2:  stloc.s    V_7
    IL_00c4:  ldloca.s   V_7
    IL_00c6:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_00cb:  brtrue.s   IL_00d9

    IL_00cd:  ldloca.s   V_8
    IL_00cf:  initobj    valuetype [System.Runtime]System.Nullable`1<float64>
    IL_00d5:  ldloc.s    V_8
    IL_00d7:  br.s       IL_00e8

    IL_00d9:  ldloc.s    V_6
    IL_00db:  ldloca.s   V_7
    IL_00dd:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::GetValueOrDefault()
    IL_00e2:  sub
    IL_00e3:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_00e8:  stloc.s    V_4
    IL_00ea:  ldc.r4     10.
    IL_00ef:  conv.r8
    IL_00f0:  stloc.s    V_5
    IL_00f2:  ldloca.s   V_4
    IL_00f4:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::GetValueOrDefault()
    IL_00f9:  ldloc.s    V_5
    IL_00fb:  bgt.s      IL_0100

    IL_00fd:  ldc.i4.0
    IL_00fe:  br.s       IL_0107

    IL_0100:  ldloca.s   V_4
    IL_0102:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_0107:  brfalse    IL_0339

    IL_010c:  ldarg.0
    IL_010d:  ldarg.0
    IL_010e:  call       instance float32 Game.ComponentVitalStats::get_Sleep()
    IL_0113:  ldloc.0
    IL_0114:  ldc.r4     1800.
    IL_0119:  div
    IL_011a:  sub
    IL_011b:  call       instance void Game.ComponentVitalStats::set_Sleep(float32)
    IL_0120:  ldarg.0
    IL_0121:  call       instance float32 Game.ComponentVitalStats::get_Sleep()
    IL_0126:  ldc.r4     7.5000003e-002
    IL_012b:  bge.un.s   IL_016d

    IL_012d:  ldarg.0
    IL_012e:  ldfld      float32 Game.ComponentVitalStats::m_lastSleep
    IL_0133:  ldc.r4     7.5000003e-002
    IL_0138:  clt.un
    IL_013a:  ldc.i4.0
    IL_013b:  ceq
    IL_013d:  ldloc.2
    IL_013e:  or
    IL_013f:  brfalse.s  IL_016d

    IL_0141:  ldarg.0
    IL_0142:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0147:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_014c:  ldstr      "You will faint, go to sleep!"
    IL_0151:  ldc.i4.1
    IL_0152:  ldc.i4.1
    IL_0153:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0158:  ldarg.0
    IL_0159:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_015e:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_0163:  callvirt   instance void Game.ComponentCreatureSounds::PlayMoanSound()
    IL_0168:  br         IL_0229

    IL_016d:  ldarg.0
    IL_016e:  call       instance float32 Game.ComponentVitalStats::get_Sleep()
    IL_0173:  ldc.r4     0.2
    IL_0178:  bge.un.s   IL_01b7

    IL_017a:  ldarg.0
    IL_017b:  ldfld      float32 Game.ComponentVitalStats::m_lastSleep
    IL_0180:  ldc.r4     0.2
    IL_0185:  clt.un
    IL_0187:  ldc.i4.0
    IL_0188:  ceq
    IL_018a:  ldloc.2
    IL_018b:  or
    IL_018c:  brfalse.s  IL_01b7

    IL_018e:  ldarg.0
    IL_018f:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0194:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0199:  ldstr      "You are falling over, sleep"
    IL_019e:  ldc.i4.1
    IL_019f:  ldc.i4.1
    IL_01a0:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_01a5:  ldarg.0
    IL_01a6:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_01ab:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_01b0:  callvirt   instance void Game.ComponentCreatureSounds::PlayMoanSound()
    IL_01b5:  br.s       IL_0229

    IL_01b7:  ldarg.0
    IL_01b8:  call       instance float32 Game.ComponentVitalStats::get_Sleep()
    IL_01bd:  ldc.r4     0.33000001
    IL_01c2:  bge.un.s   IL_01f1

    IL_01c4:  ldarg.0
    IL_01c5:  ldfld      float32 Game.ComponentVitalStats::m_lastSleep
    IL_01ca:  ldc.r4     0.33000001
    IL_01cf:  clt.un
    IL_01d1:  ldc.i4.0
    IL_01d2:  ceq
    IL_01d4:  ldloc.2
    IL_01d5:  or
    IL_01d6:  brfalse.s  IL_01f1

    IL_01d8:  ldarg.0
    IL_01d9:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_01de:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_01e3:  ldstr      "You are very tired, sleep"
    IL_01e8:  ldc.i4.1
    IL_01e9:  ldc.i4.0
    IL_01ea:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_01ef:  br.s       IL_0229

    IL_01f1:  ldarg.0
    IL_01f2:  call       instance float32 Game.ComponentVitalStats::get_Sleep()
    IL_01f7:  ldc.r4     0.5
    IL_01fc:  bge.un.s   IL_0229

    IL_01fe:  ldarg.0
    IL_01ff:  ldfld      float32 Game.ComponentVitalStats::m_lastSleep
    IL_0204:  ldc.r4     0.5
    IL_0209:  clt.un
    IL_020b:  ldc.i4.0
    IL_020c:  ceq
    IL_020e:  ldloc.2
    IL_020f:  or
    IL_0210:  brfalse.s  IL_0229

    IL_0212:  ldarg.0
    IL_0213:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0218:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_021d:  ldstr      "You are tired, take a nap"
    IL_0222:  ldc.i4.1
    IL_0223:  ldc.i4.0
    IL_0224:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0229:  ldarg.0
    IL_022a:  call       instance float32 Game.ComponentVitalStats::get_Sleep()
    IL_022f:  ldc.r4     7.5000003e-002
    IL_0234:  bge.un     IL_02d5

    IL_0239:  ldc.r4     5.0000001e-002
    IL_023e:  ldc.r4     0.2
    IL_0243:  ldc.r4     7.5000003e-002
    IL_0248:  ldarg.0
    IL_0249:  call       instance float32 Game.ComponentVitalStats::get_Sleep()
    IL_024e:  sub
    IL_024f:  ldc.r4     7.5000003e-002
    IL_0254:  div
    IL_0255:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_025a:  stloc.s    V_9
    IL_025c:  ldarg.0
    IL_025d:  call       instance float32 Game.ComponentVitalStats::get_Sleep()
    IL_0262:  ldc.r4     3.7500001e-002
    IL_0267:  blt.s      IL_0280

    IL_0269:  ldarg.0
    IL_026a:  ldfld      class Game.Random Game.ComponentVitalStats::m_random
    IL_026f:  ldc.r4     2.
    IL_0274:  ldc.r4     4.
    IL_0279:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_027e:  br.s       IL_0295

    IL_0280:  ldarg.0
    IL_0281:  ldfld      class Game.Random Game.ComponentVitalStats::m_random
    IL_0286:  ldc.r4     3.
    IL_028b:  ldc.r4     6.
    IL_0290:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0295:  stloc.s    V_10
    IL_0297:  ldarg.0
    IL_0298:  ldfld      class Game.Random Game.ComponentVitalStats::m_random
    IL_029d:  ldc.r4     0.0
    IL_02a2:  ldc.r4     1.
    IL_02a7:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_02ac:  ldloc.s    V_9
    IL_02ae:  ldloc.0
    IL_02af:  mul
    IL_02b0:  bge.un.s   IL_02d5

    IL_02b2:  ldarg.0
    IL_02b3:  ldarg.0
    IL_02b4:  ldfld      float32 Game.ComponentVitalStats::m_sleepBlackoutDuration
    IL_02b9:  ldloc.s    V_10
    IL_02bb:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_02c0:  stfld      float32 Game.ComponentVitalStats::m_sleepBlackoutDuration
    IL_02c5:  ldarg.0
    IL_02c6:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_02cb:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_02d0:  callvirt   instance void Game.ComponentCreatureSounds::PlayMoanSound()
    IL_02d5:  ldarg.0
    IL_02d6:  call       instance float32 Game.ComponentVitalStats::get_Sleep()
    IL_02db:  ldc.r4     0.0
    IL_02e0:  bgt.un.s   IL_0339

    IL_02e2:  ldarg.0
    IL_02e3:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_02e8:  callvirt   instance class Game.ComponentSleep Game.ComponentPlayer::get_ComponentSleep()
    IL_02ed:  callvirt   instance bool Game.ComponentSleep::get_IsSleeping()
    IL_02f2:  brtrue.s   IL_0339

    IL_02f4:  ldarg.0
    IL_02f5:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_02fa:  callvirt   instance class Game.ComponentSleep Game.ComponentPlayer::get_ComponentSleep()
    IL_02ff:  ldc.i4.0
    IL_0300:  callvirt   instance void Game.ComponentSleep::Sleep(bool)
    IL_0305:  ldarg.0
    IL_0306:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_030b:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0310:  ldstr      "Can't go no more"
    IL_0315:  ldc.i4.1
    IL_0316:  ldc.i4.1
    IL_0317:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_031c:  ldarg.0
    IL_031d:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0322:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_0327:  callvirt   instance void Game.ComponentCreatureSounds::PlayMoanSound()
    IL_032c:  br.s       IL_0339

    IL_032e:  ldarg.0
    IL_032f:  ldc.r4     0.89999998
    IL_0334:  call       instance void Game.ComponentVitalStats::set_Sleep(float32)
    IL_0339:  ldarg.0
    IL_033a:  ldarg.0
    IL_033b:  call       instance float32 Game.ComponentVitalStats::get_Sleep()
    IL_0340:  stfld      float32 Game.ComponentVitalStats::m_lastSleep
    IL_0345:  ldarg.0
    IL_0346:  ldarg.0
    IL_0347:  ldfld      float32 Game.ComponentVitalStats::m_sleepBlackoutDuration
    IL_034c:  ldloc.0
    IL_034d:  sub
    IL_034e:  stfld      float32 Game.ComponentVitalStats::m_sleepBlackoutDuration
    IL_0353:  ldc.r4     0.5
    IL_0358:  ldarg.0
    IL_0359:  ldfld      float32 Game.ComponentVitalStats::m_sleepBlackoutDuration
    IL_035e:  mul
    IL_035f:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0364:  stloc.3
    IL_0365:  ldarg.0
    IL_0366:  ldarg.0
    IL_0367:  ldfld      float32 Game.ComponentVitalStats::m_sleepBlackoutFactor
    IL_036c:  ldc.r4     2.
    IL_0371:  ldloc.0
    IL_0372:  mul
    IL_0373:  ldloc.3
    IL_0374:  ldarg.0
    IL_0375:  ldfld      float32 Game.ComponentVitalStats::m_sleepBlackoutFactor
    IL_037a:  sub
    IL_037b:  mul
    IL_037c:  add
    IL_037d:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0382:  stfld      float32 Game.ComponentVitalStats::m_sleepBlackoutFactor
    IL_0387:  ldarg.0
    IL_0388:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_038d:  callvirt   instance class Game.ComponentSleep Game.ComponentPlayer::get_ComponentSleep()
    IL_0392:  callvirt   instance bool Game.ComponentSleep::get_IsSleeping()
    IL_0397:  brtrue.s   IL_0412

    IL_0399:  ldarg.0
    IL_039a:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_039f:  callvirt   instance class Game.ComponentScreenOverlays Game.ComponentPlayer::get_ComponentScreenOverlays()
    IL_03a4:  ldarg.0
    IL_03a5:  ldfld      float32 Game.ComponentVitalStats::m_sleepBlackoutFactor
    IL_03aa:  ldarg.0
    IL_03ab:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_03b0:  callvirt   instance class Game.ComponentScreenOverlays Game.ComponentPlayer::get_ComponentScreenOverlays()
    IL_03b5:  callvirt   instance float32 Game.ComponentScreenOverlays::get_BlackoutFactor()
    IL_03ba:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_03bf:  callvirt   instance void Game.ComponentScreenOverlays::set_BlackoutFactor(float32)
    IL_03c4:  ldarg.0
    IL_03c5:  ldfld      float32 Game.ComponentVitalStats::m_sleepBlackoutFactor
    IL_03ca:  conv.r8
    IL_03cb:  ldc.r8     1.e-002
    IL_03d4:  ble.un.s   IL_0412

    IL_03d6:  ldarg.0
    IL_03d7:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_03dc:  callvirt   instance class Game.ComponentScreenOverlays Game.ComponentPlayer::get_ComponentScreenOverlays()
    IL_03e1:  ldstr      "Aaa..."
    IL_03e6:  callvirt   instance void Game.ComponentScreenOverlays::set_FloatingMessage(string)
    IL_03eb:  ldarg.0
    IL_03ec:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_03f1:  callvirt   instance class Game.ComponentScreenOverlays Game.ComponentPlayer::get_ComponentScreenOverlays()
    IL_03f6:  ldc.r4     10.
    IL_03fb:  ldarg.0
    IL_03fc:  ldfld      float32 Game.ComponentVitalStats::m_sleepBlackoutFactor
    IL_0401:  ldc.r4     0.89999998
    IL_0406:  sub
    IL_0407:  mul
    IL_0408:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_040d:  callvirt   instance void Game.ComponentScreenOverlays::set_FloatingMessageFactor(float32)
    IL_0412:  ret
  } // end of method ComponentVitalStats::UpdateSleep

  .method private hidebysig instance void 
          UpdateTemperature() cil managed
  {
    // 代码大小       1839 (0x72f)
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
    IL_00da:  brfalse.s  IL_0159

    IL_00dc:  ldarg.0
    IL_00dd:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_00e2:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00e7:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_00ec:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00f1:  call       int32 Game.Terrain::ToCell(float32)
    IL_00f6:  stloc.s    V_6
    IL_00f8:  ldarg.0
    IL_00f9:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_00fe:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0103:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0108:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_010d:  ldc.r4     0.1
    IL_0112:  add
    IL_0113:  call       int32 Game.Terrain::ToCell(float32)
    IL_0118:  stloc.s    V_7
    IL_011a:  ldarg.0
    IL_011b:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0120:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0125:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_012a:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_012f:  call       int32 Game.Terrain::ToCell(float32)
    IL_0134:  stloc.s    V_8
    IL_0136:  ldarg.0
    IL_0137:  ldfld      class Game.SubsystemMetersBlockBehavior Game.ComponentVitalStats::m_subsystemMetersBlockBehavior
    IL_013c:  ldloc.s    V_6
    IL_013e:  ldloc.s    V_7
    IL_0140:  ldloc.s    V_8
    IL_0142:  ldc.r4     12.
    IL_0147:  ldloc.2
    IL_0148:  ldarg.0
    IL_0149:  ldflda     float32 Game.ComponentVitalStats::m_environmentTemperature
    IL_014e:  ldarg.0
    IL_014f:  ldflda     float32 Game.ComponentVitalStats::m_environmentTemperatureFlux
    IL_0154:  callvirt   instance void Game.SubsystemMetersBlockBehavior::CalculateTemperature(int32,
                                                                                               int32,
                                                                                               int32,
                                                                                               float32,
                                                                                               float32,
                                                                                               float32&,
                                                                                               float32&)
    IL_0159:  ldarg.0
    IL_015a:  ldfld      class Game.SubsystemGameInfo Game.ComponentVitalStats::m_subsystemGameInfo
    IL_015f:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0164:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_0169:  brfalse.s  IL_01bb

    IL_016b:  ldarg.0
    IL_016c:  ldfld      class Game.SubsystemGameInfo Game.ComponentVitalStats::m_subsystemGameInfo
    IL_0171:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0176:  ldfld      bool Game.WorldSettings::AreAdventureSurvivalMechanicsEnabled
    IL_017b:  brfalse.s  IL_01bb

    IL_017d:  ldarg.0
    IL_017e:  ldfld      float32 Game.ComponentVitalStats::m_environmentTemperature
    IL_0183:  ldarg.0
    IL_0184:  call       instance float32 Game.ComponentVitalStats::get_Temperature()
    IL_0189:  sub
    IL_018a:  stloc.s    V_9
    IL_018c:  ldc.r4     9.9999998e-003
    IL_0191:  ldc.r4     4.9999999e-003
    IL_0196:  ldarg.0
    IL_0197:  ldfld      float32 Game.ComponentVitalStats::m_environmentTemperatureFlux
    IL_019c:  mul
    IL_019d:  add
    IL_019e:  stloc.s    V_10
    IL_01a0:  ldarg.0
    IL_01a1:  ldarg.0
    IL_01a2:  call       instance float32 Game.ComponentVitalStats::get_Temperature()
    IL_01a7:  ldloc.s    V_10
    IL_01a9:  ldloc.0
    IL_01aa:  mul
    IL_01ab:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_01b0:  ldloc.s    V_9
    IL_01b2:  mul
    IL_01b3:  add
    IL_01b4:  call       instance void Game.ComponentVitalStats::set_Temperature(float32)
    IL_01b9:  br.s       IL_01c6

    IL_01bb:  ldarg.0
    IL_01bc:  ldc.r4     12.
    IL_01c1:  call       instance void Game.ComponentVitalStats::set_Temperature(float32)
    IL_01c6:  ldarg.0
    IL_01c7:  call       instance float32 Game.ComponentVitalStats::get_Temperature()
    IL_01cc:  ldc.r4     0.0
    IL_01d1:  bgt.un.s   IL_01f4

    IL_01d3:  ldarg.0
    IL_01d4:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_01d9:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_01de:  ldc.r4     1.
    IL_01e3:  ldnull
    IL_01e4:  ldc.i4.0
    IL_01e5:  ldstr      "Froze to death"
    IL_01ea:  callvirt   instance void Game.ComponentHealth::Injure(float32,
                                                                    class Game.ComponentCreature,
                                                                    bool,
                                                                    string)
    IL_01ef:  br         IL_03cb

    IL_01f4:  ldarg.0
    IL_01f5:  call       instance float32 Game.ComponentVitalStats::get_Temperature()
    IL_01fa:  ldc.r4     3.
    IL_01ff:  bge.un     IL_02cd

    IL_0204:  ldarg.0
    IL_0205:  ldfld      class Game.SubsystemTime Game.ComponentVitalStats::m_subsystemTime
    IL_020a:  ldc.r8     10.
    IL_0213:  ldc.r8     0.0
    IL_021c:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_0221:  brfalse    IL_03cb

    IL_0226:  ldarg.0
    IL_0227:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_022c:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0231:  ldc.r4     0.1
    IL_0236:  ldnull
    IL_0237:  ldc.i4.0
    IL_0238:  ldstr      "Hypothermia"
    IL_023d:  callvirt   instance void Game.ComponentHealth::Injure(float32,
                                                                    class Game.ComponentCreature,
                                                                    bool,
                                                                    string)
    IL_0242:  ldarg.0
    IL_0243:  call       instance float32 Game.ComponentVitalStats::get_Wetness()
    IL_0248:  ldc.r4     0.0
    IL_024d:  ble.un.s   IL_0267

    IL_024f:  ldstr      "Your {0} freezing, dry your clothes!"
    IL_0254:  ldc.i4.1
    IL_0255:  newarr     [System.Runtime]System.Object
    IL_025a:  dup
    IL_025b:  ldc.i4.0
    IL_025c:  ldloc.3
    IL_025d:  stelem.ref
    IL_025e:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0263:  stloc.s    V_11
    IL_0265:  br.s       IL_029d

    IL_0267:  ldloc.2
    IL_0268:  ldc.r4     1.
    IL_026d:  bge.un.s   IL_0287

    IL_026f:  ldstr      "Your {0} freezing, get clothed!"
    IL_0274:  ldc.i4.1
    IL_0275:  newarr     [System.Runtime]System.Object
    IL_027a:  dup
    IL_027b:  ldc.i4.0
    IL_027c:  ldloc.3
    IL_027d:  stelem.ref
    IL_027e:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0283:  stloc.s    V_11
    IL_0285:  br.s       IL_029d

    IL_0287:  ldstr      "Your {0} freezing, seek shelter!"
    IL_028c:  ldc.i4.1
    IL_028d:  newarr     [System.Runtime]System.Object
    IL_0292:  dup
    IL_0293:  ldc.i4.0
    IL_0294:  ldloc.3
    IL_0295:  stelem.ref
    IL_0296:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_029b:  stloc.s    V_11
    IL_029d:  ldarg.0
    IL_029e:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_02a3:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_02a8:  ldloc.s    V_11
    IL_02aa:  ldc.i4.1
    IL_02ab:  ldc.i4.0
    IL_02ac:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_02b1:  ldarg.0
    IL_02b2:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_02b7:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_02bc:  callvirt   instance class Game.ValueBarWidget Game.ComponentGui::get_TemperatureBarWidget()
    IL_02c1:  ldc.i4.s   10
    IL_02c3:  callvirt   instance void Game.ValueBarWidget::Flash(int32)
    IL_02c8:  br         IL_03cb

    IL_02cd:  ldarg.0
    IL_02ce:  call       instance float32 Game.ComponentVitalStats::get_Temperature()
    IL_02d3:  ldc.r4     6.
    IL_02d8:  bge.un     IL_037c

    IL_02dd:  ldarg.0
    IL_02de:  ldfld      float32 Game.ComponentVitalStats::m_lastTemperature
    IL_02e3:  ldc.r4     6.
    IL_02e8:  clt.un
    IL_02ea:  ldc.i4.0
    IL_02eb:  ceq
    IL_02ed:  ldloc.1
    IL_02ee:  or
    IL_02ef:  brfalse    IL_037c

    IL_02f4:  ldarg.0
    IL_02f5:  call       instance float32 Game.ComponentVitalStats::get_Wetness()
    IL_02fa:  ldc.r4     0.0
    IL_02ff:  ble.un.s   IL_0319

    IL_0301:  ldstr      "Your {0} getting cold, dry your clothes"
    IL_0306:  ldc.i4.1
    IL_0307:  newarr     [System.Runtime]System.Object
    IL_030c:  dup
    IL_030d:  ldc.i4.0
    IL_030e:  ldloc.3
    IL_030f:  stelem.ref
    IL_0310:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0315:  stloc.s    V_12
    IL_0317:  br.s       IL_034f

    IL_0319:  ldloc.2
    IL_031a:  ldc.r4     1.
    IL_031f:  bge.un.s   IL_0339

    IL_0321:  ldstr      "Your {0} getting cold, get clothed"
    IL_0326:  ldc.i4.1
    IL_0327:  newarr     [System.Runtime]System.Object
    IL_032c:  dup
    IL_032d:  ldc.i4.0
    IL_032e:  ldloc.3
    IL_032f:  stelem.ref
    IL_0330:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0335:  stloc.s    V_12
    IL_0337:  br.s       IL_034f

    IL_0339:  ldstr      "Your {0} getting cold, seek shelter"
    IL_033e:  ldc.i4.1
    IL_033f:  newarr     [System.Runtime]System.Object
    IL_0344:  dup
    IL_0345:  ldc.i4.0
    IL_0346:  ldloc.3
    IL_0347:  stelem.ref
    IL_0348:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_034d:  stloc.s    V_12
    IL_034f:  ldarg.0
    IL_0350:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0355:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_035a:  ldloc.s    V_12
    IL_035c:  ldc.i4.1
    IL_035d:  ldc.i4.1
    IL_035e:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0363:  ldarg.0
    IL_0364:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0369:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_036e:  callvirt   instance class Game.ValueBarWidget Game.ComponentGui::get_TemperatureBarWidget()
    IL_0373:  ldc.i4.s   10
    IL_0375:  callvirt   instance void Game.ValueBarWidget::Flash(int32)
    IL_037a:  br.s       IL_03cb

    IL_037c:  ldarg.0
    IL_037d:  call       instance float32 Game.ComponentVitalStats::get_Temperature()
    IL_0382:  ldc.r4     8.
    IL_0387:  bge.un.s   IL_03cb

    IL_0389:  ldarg.0
    IL_038a:  ldfld      float32 Game.ComponentVitalStats::m_lastTemperature
    IL_038f:  ldc.r4     8.
    IL_0394:  clt.un
    IL_0396:  ldc.i4.0
    IL_0397:  ceq
    IL_0399:  ldloc.1
    IL_039a:  or
    IL_039b:  brfalse.s  IL_03cb

    IL_039d:  ldarg.0
    IL_039e:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_03a3:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_03a8:  ldstr      "You feel a bit chilly"
    IL_03ad:  ldc.i4.1
    IL_03ae:  ldc.i4.0
    IL_03af:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_03b4:  ldarg.0
    IL_03b5:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_03ba:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_03bf:  callvirt   instance class Game.ValueBarWidget Game.ComponentGui::get_TemperatureBarWidget()
    IL_03c4:  ldc.i4.s   10
    IL_03c6:  callvirt   instance void Game.ValueBarWidget::Flash(int32)
    IL_03cb:  ldarg.0
    IL_03cc:  call       instance float32 Game.ComponentVitalStats::get_Temperature()
    IL_03d1:  ldc.r4     24.
    IL_03d6:  blt.un     IL_0491

    IL_03db:  ldarg.0
    IL_03dc:  ldfld      class Game.SubsystemTime Game.ComponentVitalStats::m_subsystemTime
    IL_03e1:  ldc.r8     10.
    IL_03ea:  ldc.r8     0.0
    IL_03f3:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_03f8:  brfalse.s  IL_0444

    IL_03fa:  ldarg.0
    IL_03fb:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0400:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0405:  ldstr      "It's too hot, run away!"
    IL_040a:  ldc.i4.1
    IL_040b:  ldc.i4.0
    IL_040c:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0411:  ldarg.0
    IL_0412:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0417:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_041c:  ldc.r4     0.1
    IL_0421:  ldnull
    IL_0422:  ldc.i4.0
    IL_0423:  ldstr      "Overheated"
    IL_0428:  callvirt   instance void Game.ComponentHealth::Injure(float32,
                                                                    class Game.ComponentCreature,
                                                                    bool,
                                                                    string)
    IL_042d:  ldarg.0
    IL_042e:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0433:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0438:  callvirt   instance class Game.ValueBarWidget Game.ComponentGui::get_TemperatureBarWidget()
    IL_043d:  ldc.i4.s   10
    IL_043f:  callvirt   instance void Game.ValueBarWidget::Flash(int32)
    IL_0444:  ldarg.0
    IL_0445:  ldfld      class Game.SubsystemTime Game.ComponentVitalStats::m_subsystemTime
    IL_044a:  ldc.r8     8.
    IL_0453:  ldc.r8     0.0
    IL_045c:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_0461:  brfalse    IL_0511

    IL_0466:  ldarg.0
    IL_0467:  ldarg.0
    IL_0468:  ldfld      float32 Game.ComponentVitalStats::m_temperatureBlackoutDuration
    IL_046d:  ldc.r4     6.
    IL_0472:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0477:  stfld      float32 Game.ComponentVitalStats::m_temperatureBlackoutDuration
    IL_047c:  ldarg.0
    IL_047d:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0482:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_0487:  callvirt   instance void Game.ComponentCreatureSounds::PlayMoanSound()
    IL_048c:  br         IL_0511

    IL_0491:  ldarg.0
    IL_0492:  call       instance float32 Game.ComponentVitalStats::get_Temperature()
    IL_0497:  ldc.r4     20.
    IL_049c:  ble.un.s   IL_0511

    IL_049e:  ldarg.0
    IL_049f:  ldfld      class Game.SubsystemTime Game.ComponentVitalStats::m_subsystemTime
    IL_04a4:  ldc.r8     10.
    IL_04ad:  ldc.r8     0.0
    IL_04b6:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_04bb:  brfalse.s  IL_0511

    IL_04bd:  ldarg.0
    IL_04be:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_04c3:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_04c8:  ldstr      "You feel hot"
    IL_04cd:  ldc.i4.1
    IL_04ce:  ldc.i4.0
    IL_04cf:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_04d4:  ldarg.0
    IL_04d5:  ldarg.0
    IL_04d6:  ldfld      float32 Game.ComponentVitalStats::m_temperatureBlackoutDuration
    IL_04db:  ldc.r4     3.
    IL_04e0:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_04e5:  stfld      float32 Game.ComponentVitalStats::m_temperatureBlackoutDuration
    IL_04ea:  ldarg.0
    IL_04eb:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_04f0:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_04f5:  callvirt   instance class Game.ValueBarWidget Game.ComponentGui::get_TemperatureBarWidget()
    IL_04fa:  ldc.i4.s   10
    IL_04fc:  callvirt   instance void Game.ValueBarWidget::Flash(int32)
    IL_0501:  ldarg.0
    IL_0502:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0507:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_050c:  callvirt   instance void Game.ComponentCreatureSounds::PlayMoanSound()
    IL_0511:  ldarg.0
    IL_0512:  ldarg.0
    IL_0513:  call       instance float32 Game.ComponentVitalStats::get_Temperature()
    IL_0518:  stfld      float32 Game.ComponentVitalStats::m_lastTemperature
    IL_051d:  ldarg.0
    IL_051e:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0523:  callvirt   instance class Game.ComponentScreenOverlays Game.ComponentPlayer::get_ComponentScreenOverlays()
    IL_0528:  ldc.r4     1.
    IL_052d:  ldarg.0
    IL_052e:  call       instance float32 Game.ComponentVitalStats::get_Temperature()
    IL_0533:  ldc.r4     6.
    IL_0538:  div
    IL_0539:  sub
    IL_053a:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_053f:  callvirt   instance void Game.ComponentScreenOverlays::set_IceFactor(float32)
    IL_0544:  ldarg.0
    IL_0545:  ldarg.0
    IL_0546:  ldfld      float32 Game.ComponentVitalStats::m_temperatureBlackoutDuration
    IL_054b:  ldloc.0
    IL_054c:  sub
    IL_054d:  stfld      float32 Game.ComponentVitalStats::m_temperatureBlackoutDuration
    IL_0552:  ldc.r4     0.5
    IL_0557:  ldarg.0
    IL_0558:  ldfld      float32 Game.ComponentVitalStats::m_temperatureBlackoutDuration
    IL_055d:  mul
    IL_055e:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0563:  stloc.s    V_4
    IL_0565:  ldarg.0
    IL_0566:  ldarg.0
    IL_0567:  ldfld      float32 Game.ComponentVitalStats::m_temperatureBlackoutFactor
    IL_056c:  ldc.r4     2.
    IL_0571:  ldloc.0
    IL_0572:  mul
    IL_0573:  ldloc.s    V_4
    IL_0575:  ldarg.0
    IL_0576:  ldfld      float32 Game.ComponentVitalStats::m_temperatureBlackoutFactor
    IL_057b:  sub
    IL_057c:  mul
    IL_057d:  add
    IL_057e:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0583:  stfld      float32 Game.ComponentVitalStats::m_temperatureBlackoutFactor
    IL_0588:  ldarg.0
    IL_0589:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_058e:  callvirt   instance class Game.ComponentScreenOverlays Game.ComponentPlayer::get_ComponentScreenOverlays()
    IL_0593:  ldarg.0
    IL_0594:  ldfld      float32 Game.ComponentVitalStats::m_temperatureBlackoutFactor
    IL_0599:  ldarg.0
    IL_059a:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_059f:  callvirt   instance class Game.ComponentScreenOverlays Game.ComponentPlayer::get_ComponentScreenOverlays()
    IL_05a4:  callvirt   instance float32 Game.ComponentScreenOverlays::get_BlackoutFactor()
    IL_05a9:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_05ae:  callvirt   instance void Game.ComponentScreenOverlays::set_BlackoutFactor(float32)
    IL_05b3:  ldarg.0
    IL_05b4:  ldfld      float32 Game.ComponentVitalStats::m_temperatureBlackoutFactor
    IL_05b9:  conv.r8
    IL_05ba:  ldc.r8     1.e-002
    IL_05c3:  ble.un.s   IL_0601

    IL_05c5:  ldarg.0
    IL_05c6:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_05cb:  callvirt   instance class Game.ComponentScreenOverlays Game.ComponentPlayer::get_ComponentScreenOverlays()
    IL_05d0:  ldstr      "Ugh..."
    IL_05d5:  callvirt   instance void Game.ComponentScreenOverlays::set_FloatingMessage(string)
    IL_05da:  ldarg.0
    IL_05db:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_05e0:  callvirt   instance class Game.ComponentScreenOverlays Game.ComponentPlayer::get_ComponentScreenOverlays()
    IL_05e5:  ldc.r4     10.
    IL_05ea:  ldarg.0
    IL_05eb:  ldfld      float32 Game.ComponentVitalStats::m_temperatureBlackoutFactor
    IL_05f0:  ldc.r4     0.89999998
    IL_05f5:  sub
    IL_05f6:  mul
    IL_05f7:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_05fc:  callvirt   instance void Game.ComponentScreenOverlays::set_FloatingMessageFactor(float32)
    IL_0601:  ldarg.0
    IL_0602:  ldfld      float32 Game.ComponentVitalStats::m_environmentTemperature
    IL_0607:  ldc.r4     22.
    IL_060c:  ble.un.s   IL_062e

    IL_060e:  ldarg.0
    IL_060f:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0614:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0619:  callvirt   instance class Game.ValueBarWidget Game.ComponentGui::get_TemperatureBarWidget()
    IL_061e:  ldstr      "Textures/Atlas/Temperature6"
    IL_0623:  call       !!0 Game.ContentManager::Get<class Game.Subtexture>(string)
    IL_0628:  callvirt   instance void Game.ValueBarWidget::set_BarSubtexture(class Game.Subtexture)
    IL_062d:  ret

    IL_062e:  ldarg.0
    IL_062f:  ldfld      float32 Game.ComponentVitalStats::m_environmentTemperature
    IL_0634:  ldc.r4     18.
    IL_0639:  ble.un.s   IL_065b

    IL_063b:  ldarg.0
    IL_063c:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0641:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0646:  callvirt   instance class Game.ValueBarWidget Game.ComponentGui::get_TemperatureBarWidget()
    IL_064b:  ldstr      "Textures/Atlas/Temperature5"
    IL_0650:  call       !!0 Game.ContentManager::Get<class Game.Subtexture>(string)
    IL_0655:  callvirt   instance void Game.ValueBarWidget::set_BarSubtexture(class Game.Subtexture)
    IL_065a:  ret

    IL_065b:  ldarg.0
    IL_065c:  ldfld      float32 Game.ComponentVitalStats::m_environmentTemperature
    IL_0661:  ldc.r4     14.
    IL_0666:  ble.un.s   IL_0688

    IL_0668:  ldarg.0
    IL_0669:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_066e:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0673:  callvirt   instance class Game.ValueBarWidget Game.ComponentGui::get_TemperatureBarWidget()
    IL_0678:  ldstr      "Textures/Atlas/Temperature4"
    IL_067d:  call       !!0 Game.ContentManager::Get<class Game.Subtexture>(string)
    IL_0682:  callvirt   instance void Game.ValueBarWidget::set_BarSubtexture(class Game.Subtexture)
    IL_0687:  ret

    IL_0688:  ldarg.0
    IL_0689:  ldfld      float32 Game.ComponentVitalStats::m_environmentTemperature
    IL_068e:  ldc.r4     10.
    IL_0693:  ble.un.s   IL_06b5

    IL_0695:  ldarg.0
    IL_0696:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_069b:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_06a0:  callvirt   instance class Game.ValueBarWidget Game.ComponentGui::get_TemperatureBarWidget()
    IL_06a5:  ldstr      "Textures/Atlas/Temperature3"
    IL_06aa:  call       !!0 Game.ContentManager::Get<class Game.Subtexture>(string)
    IL_06af:  callvirt   instance void Game.ValueBarWidget::set_BarSubtexture(class Game.Subtexture)
    IL_06b4:  ret

    IL_06b5:  ldarg.0
    IL_06b6:  ldfld      float32 Game.ComponentVitalStats::m_environmentTemperature
    IL_06bb:  ldc.r4     6.
    IL_06c0:  ble.un.s   IL_06e2

    IL_06c2:  ldarg.0
    IL_06c3:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_06c8:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_06cd:  callvirt   instance class Game.ValueBarWidget Game.ComponentGui::get_TemperatureBarWidget()
    IL_06d2:  ldstr      "Textures/Atlas/Temperature2"
    IL_06d7:  call       !!0 Game.ContentManager::Get<class Game.Subtexture>(string)
    IL_06dc:  callvirt   instance void Game.ValueBarWidget::set_BarSubtexture(class Game.Subtexture)
    IL_06e1:  ret

    IL_06e2:  ldarg.0
    IL_06e3:  ldfld      float32 Game.ComponentVitalStats::m_environmentTemperature
    IL_06e8:  ldc.r4     2.
    IL_06ed:  ble.un.s   IL_070f

    IL_06ef:  ldarg.0
    IL_06f0:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_06f5:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_06fa:  callvirt   instance class Game.ValueBarWidget Game.ComponentGui::get_TemperatureBarWidget()
    IL_06ff:  ldstr      "Textures/Atlas/Temperature1"
    IL_0704:  call       !!0 Game.ContentManager::Get<class Game.Subtexture>(string)
    IL_0709:  callvirt   instance void Game.ValueBarWidget::set_BarSubtexture(class Game.Subtexture)
    IL_070e:  ret

    IL_070f:  ldarg.0
    IL_0710:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0715:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_071a:  callvirt   instance class Game.ValueBarWidget Game.ComponentGui::get_TemperatureBarWidget()
    IL_071f:  ldstr      "Textures/Atlas/Temperature0"
    IL_0724:  call       !!0 Game.ContentManager::Get<class Game.Subtexture>(string)
    IL_0729:  callvirt   instance void Game.ValueBarWidget::set_BarSubtexture(class Game.Subtexture)
    IL_072e:  ret
  } // end of method ComponentVitalStats::UpdateTemperature

  .method private hidebysig instance void 
          UpdateWetness() cil managed
  {
    // 代码大小       535 (0x217)
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
    IL_008a:  call       int32 Game.Terrain::ToCell(float32)
    IL_008f:  stloc.1
    IL_0090:  ldarg.0
    IL_0091:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0096:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_009b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_00a0:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00a5:  ldc.r4     0.1
    IL_00aa:  add
    IL_00ab:  call       int32 Game.Terrain::ToCell(float32)
    IL_00b0:  ldarg.0
    IL_00b1:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_00b6:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00bb:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_00c0:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00c5:  call       int32 Game.Terrain::ToCell(float32)
    IL_00ca:  stloc.2
    IL_00cb:  ldarg.0
    IL_00cc:  ldfld      class Game.SubsystemWeather Game.ComponentVitalStats::m_subsystemWeather
    IL_00d1:  ldloc.1
    IL_00d2:  ldloc.2
    IL_00d3:  callvirt   instance valuetype Game.PrecipitationShaftInfo Game.SubsystemWeather::GetPrecipitationShaftInfo(int32,
                                                                                                                         int32)
    IL_00d8:  stloc.3
    IL_00d9:  ldloc.3
    IL_00da:  ldfld      int32 Game.PrecipitationShaftInfo::YLimit
    IL_00df:  blt.s      IL_0104

    IL_00e1:  ldloc.3
    IL_00e2:  ldfld      valuetype Game.PrecipitationType Game.PrecipitationShaftInfo::Type
    IL_00e7:  brtrue.s   IL_0104

    IL_00e9:  ldarg.0
    IL_00ea:  ldarg.0
    IL_00eb:  call       instance float32 Game.ComponentVitalStats::get_Wetness()
    IL_00f0:  ldc.r4     5.0000001e-002
    IL_00f5:  ldloc.3
    IL_00f6:  ldfld      float32 Game.PrecipitationShaftInfo::Intensity
    IL_00fb:  mul
    IL_00fc:  ldloc.0
    IL_00fd:  mul
    IL_00fe:  add
    IL_00ff:  call       instance void Game.ComponentVitalStats::set_Wetness(float32)
    IL_0104:  ldc.r4     180.
    IL_0109:  stloc.s    V_4
    IL_010b:  ldarg.0
    IL_010c:  ldfld      float32 Game.ComponentVitalStats::m_environmentTemperature
    IL_0111:  ldc.r4     8.
    IL_0116:  ble.un.s   IL_011f

    IL_0118:  ldc.r4     120.
    IL_011d:  stloc.s    V_4
    IL_011f:  ldarg.0
    IL_0120:  ldfld      float32 Game.ComponentVitalStats::m_environmentTemperature
    IL_0125:  ldc.r4     16.
    IL_012a:  ble.un.s   IL_0133

    IL_012c:  ldc.r4     60.
    IL_0131:  stloc.s    V_4
    IL_0133:  ldarg.0
    IL_0134:  ldfld      float32 Game.ComponentVitalStats::m_environmentTemperature
    IL_0139:  ldc.r4     24.
    IL_013e:  ble.un.s   IL_0147

    IL_0140:  ldc.r4     30.
    IL_0145:  stloc.s    V_4
    IL_0147:  ldarg.0
    IL_0148:  ldarg.0
    IL_0149:  call       instance float32 Game.ComponentVitalStats::get_Wetness()
    IL_014e:  ldloc.0
    IL_014f:  ldloc.s    V_4
    IL_0151:  div
    IL_0152:  sub
    IL_0153:  call       instance void Game.ComponentVitalStats::set_Wetness(float32)
    IL_0158:  ldarg.0
    IL_0159:  call       instance float32 Game.ComponentVitalStats::get_Wetness()
    IL_015e:  ldc.r4     0.80000001
    IL_0163:  ble.un.s   IL_0194

    IL_0165:  ldarg.0
    IL_0166:  ldfld      float32 Game.ComponentVitalStats::m_lastWetness
    IL_016b:  ldc.r4     0.80000001
    IL_0170:  bgt.un.s   IL_0194

    IL_0172:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_0177:  ldc.r8     2.
    IL_0180:  add
    IL_0181:  ldarg.0
    IL_0182:  ldftn      instance void Game.ComponentVitalStats::'<UpdateWetness>b__55_0'()
    IL_0188:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_018d:  call       void [Engine]Engine.Time::QueueTimeDelayedExecution(float64,
                                                                             class [System.Runtime]System.Action)
    IL_0192:  br.s       IL_020a

    IL_0194:  ldarg.0
    IL_0195:  call       instance float32 Game.ComponentVitalStats::get_Wetness()
    IL_019a:  ldc.r4     0.2
    IL_019f:  ble.un.s   IL_01d0

    IL_01a1:  ldarg.0
    IL_01a2:  ldfld      float32 Game.ComponentVitalStats::m_lastWetness
    IL_01a7:  ldc.r4     0.2
    IL_01ac:  bgt.un.s   IL_01d0

    IL_01ae:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_01b3:  ldc.r8     2.
    IL_01bc:  add
    IL_01bd:  ldarg.0
    IL_01be:  ldftn      instance void Game.ComponentVitalStats::'<UpdateWetness>b__55_1'()
    IL_01c4:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01c9:  call       void [Engine]Engine.Time::QueueTimeDelayedExecution(float64,
                                                                             class [System.Runtime]System.Action)
    IL_01ce:  br.s       IL_020a

    IL_01d0:  ldarg.0
    IL_01d1:  call       instance float32 Game.ComponentVitalStats::get_Wetness()
    IL_01d6:  ldc.r4     0.0
    IL_01db:  bgt.un.s   IL_020a

    IL_01dd:  ldarg.0
    IL_01de:  ldfld      float32 Game.ComponentVitalStats::m_lastWetness
    IL_01e3:  ldc.r4     0.0
    IL_01e8:  ble.un.s   IL_020a

    IL_01ea:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_01ef:  ldc.r8     2.
    IL_01f8:  add
    IL_01f9:  ldarg.0
    IL_01fa:  ldftn      instance void Game.ComponentVitalStats::'<UpdateWetness>b__55_2'()
    IL_0200:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0205:  call       void [Engine]Engine.Time::QueueTimeDelayedExecution(float64,
                                                                             class [System.Runtime]System.Action)
    IL_020a:  ldarg.0
    IL_020b:  ldarg.0
    IL_020c:  call       instance float32 Game.ComponentVitalStats::get_Wetness()
    IL_0211:  stfld      float32 Game.ComponentVitalStats::m_lastWetness
    IL_0216:  ret
  } // end of method ComponentVitalStats::UpdateWetness

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
    // 代码大小       40 (0x28)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.ComponentVitalStats::m_random
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,float32>::.ctor()
    IL_0011:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,float32> Game.ComponentVitalStats::m_satiation
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,float32>>::.ctor()
    IL_001c:  stfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,float32>> Game.ComponentVitalStats::m_satiationList
    IL_0021:  ldarg.0
    IL_0022:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_0027:  ret
  } // end of method ComponentVitalStats::.ctor

  .method private hidebysig instance void 
          '<Load>b__48_0'(class Game.ComponentCreature '<obj>') cil managed
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
  } // end of method ComponentVitalStats::'<Load>b__48_0'

  .method private hidebysig instance void 
          '<UpdateWetness>b__55_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       37 (0x25)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance float32 Game.ComponentVitalStats::get_Wetness()
    IL_0006:  ldc.r4     0.80000001
    IL_000b:  ble.un.s   IL_0024

    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0013:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0018:  ldstr      "You are completely wet"
    IL_001d:  ldc.i4.1
    IL_001e:  ldc.i4.1
    IL_001f:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0024:  ret
  } // end of method ComponentVitalStats::'<UpdateWetness>b__55_0'

  .method private hidebysig instance void 
          '<UpdateWetness>b__55_1'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       64 (0x40)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  call       instance float32 Game.ComponentVitalStats::get_Wetness()
    IL_0006:  ldc.r4     0.2
    IL_000b:  ble.un.s   IL_003f

    IL_000d:  ldarg.0
    IL_000e:  call       instance float32 Game.ComponentVitalStats::get_Wetness()
    IL_0013:  ldc.r4     0.80000001
    IL_0018:  bgt.un.s   IL_003f

    IL_001a:  ldarg.0
    IL_001b:  call       instance float32 Game.ComponentVitalStats::get_Wetness()
    IL_0020:  ldarg.0
    IL_0021:  ldfld      float32 Game.ComponentVitalStats::m_lastWetness
    IL_0026:  ble.un.s   IL_003f

    IL_0028:  ldarg.0
    IL_0029:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_002e:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0033:  ldstr      "You are getting wet"
    IL_0038:  ldc.i4.1
    IL_0039:  ldc.i4.1
    IL_003a:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_003f:  ret
  } // end of method ComponentVitalStats::'<UpdateWetness>b__55_1'

  .method private hidebysig instance void 
          '<UpdateWetness>b__55_2'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       37 (0x25)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance float32 Game.ComponentVitalStats::get_Wetness()
    IL_0006:  ldc.r4     0.0
    IL_000b:  bgt.un.s   IL_0024

    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.ComponentPlayer Game.ComponentVitalStats::m_componentPlayer
    IL_0013:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0018:  ldstr      "You are no longer wet"
    IL_001d:  ldc.i4.1
    IL_001e:  ldc.i4.1
    IL_001f:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0024:  ret
  } // end of method ComponentVitalStats::'<UpdateWetness>b__55_2'

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