.class public auto ansi beforefieldinit Game.ComponentShapeshifter
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IUpdateable
{
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemSky m_subsystemSky
  .field private class Game.SubsystemParticles m_subsystemParticles
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.ComponentSpawn m_componentSpawn
  .field private class Game.ComponentBody m_componentBody
  .field private class Game.ComponentHealth m_componentHealth
  .field private class Game.ShapeshiftParticleSystem m_particleSystem
  .field private string m_nightEntityTemplateName
  .field private string m_dayEntityTemplateName
  .field private float32 m_timeToSwitch
  .field private string m_spawnEntityTemplateName
  .field private bool '<IsEnabled>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance bool 
          get_IsEnabled() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ComponentShapeshifter::'<IsEnabled>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentShapeshifter::get_IsEnabled

  .method public hidebysig specialname instance void 
          set_IsEnabled(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ComponentShapeshifter::'<IsEnabled>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentShapeshifter::set_IsEnabled

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentShapeshifter::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       348 (0x15c)
    .maxstack  4
    .locals init (bool V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemGameInfo Game.ComponentShapeshifter::m_subsystemGameInfo
    IL_0006:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_000b:  ldfld      bool Game.WorldSettings::AreSupernaturalCreaturesEnabled
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  call       instance bool Game.ComponentShapeshifter::get_IsEnabled()
    IL_0017:  brfalse    IL_0114

    IL_001c:  ldarg.0
    IL_001d:  ldfld      class Game.ComponentSpawn Game.ComponentShapeshifter::m_componentSpawn
    IL_0022:  callvirt   instance bool Game.ComponentSpawn::get_IsDespawning()
    IL_0027:  brtrue     IL_0114

    IL_002c:  ldarg.0
    IL_002d:  ldfld      class Game.ComponentHealth Game.ComponentShapeshifter::m_componentHealth
    IL_0032:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_0037:  ldc.r4     0.0
    IL_003c:  ble.un     IL_0114

    IL_0041:  ldloc.0
    IL_0042:  brtrue.s   IL_0062

    IL_0044:  ldarg.0
    IL_0045:  ldfld      string Game.ComponentShapeshifter::m_dayEntityTemplateName
    IL_004a:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_004f:  brtrue.s   IL_0062

    IL_0051:  ldarg.0
    IL_0052:  ldarg.0
    IL_0053:  ldfld      string Game.ComponentShapeshifter::m_dayEntityTemplateName
    IL_0058:  call       instance void Game.ComponentShapeshifter::ShapeshiftTo(string)
    IL_005d:  br         IL_0114

    IL_0062:  ldarg.0
    IL_0063:  ldfld      class Game.SubsystemSky Game.ComponentShapeshifter::m_subsystemSky
    IL_0068:  callvirt   instance float32 Game.SubsystemSky::get_SkyLightIntensity()
    IL_006d:  ldc.r4     0.25
    IL_0072:  ble.un.s   IL_00b0

    IL_0074:  ldarg.0
    IL_0075:  ldfld      string Game.ComponentShapeshifter::m_dayEntityTemplateName
    IL_007a:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_007f:  brtrue.s   IL_00b0

    IL_0081:  ldarg.0
    IL_0082:  ldarg.0
    IL_0083:  ldfld      float32 Game.ComponentShapeshifter::m_timeToSwitch
    IL_0088:  ldc.r4     2.
    IL_008d:  ldarg.1
    IL_008e:  mul
    IL_008f:  sub
    IL_0090:  stfld      float32 Game.ComponentShapeshifter::m_timeToSwitch
    IL_0095:  ldarg.0
    IL_0096:  ldfld      float32 Game.ComponentShapeshifter::m_timeToSwitch
    IL_009b:  ldc.r4     0.0
    IL_00a0:  bgt.un.s   IL_0114

    IL_00a2:  ldarg.0
    IL_00a3:  ldarg.0
    IL_00a4:  ldfld      string Game.ComponentShapeshifter::m_dayEntityTemplateName
    IL_00a9:  call       instance void Game.ComponentShapeshifter::ShapeshiftTo(string)
    IL_00ae:  br.s       IL_0114

    IL_00b0:  ldloc.0
    IL_00b1:  brfalse.s  IL_0114

    IL_00b3:  ldarg.0
    IL_00b4:  ldfld      class Game.SubsystemSky Game.ComponentShapeshifter::m_subsystemSky
    IL_00b9:  callvirt   instance float32 Game.SubsystemSky::get_SkyLightIntensity()
    IL_00be:  ldc.r4     0.1
    IL_00c3:  bge.un.s   IL_0114

    IL_00c5:  ldarg.0
    IL_00c6:  ldfld      class Game.SubsystemSky Game.ComponentShapeshifter::m_subsystemSky
    IL_00cb:  callvirt   instance int32 Game.SubsystemSky::get_MoonPhase()
    IL_00d0:  brfalse.s  IL_00e0

    IL_00d2:  ldarg.0
    IL_00d3:  ldfld      class Game.SubsystemSky Game.ComponentShapeshifter::m_subsystemSky
    IL_00d8:  callvirt   instance int32 Game.SubsystemSky::get_MoonPhase()
    IL_00dd:  ldc.i4.4
    IL_00de:  bne.un.s   IL_0114

    IL_00e0:  ldarg.0
    IL_00e1:  ldfld      string Game.ComponentShapeshifter::m_nightEntityTemplateName
    IL_00e6:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_00eb:  brtrue.s   IL_0114

    IL_00ed:  ldarg.0
    IL_00ee:  ldarg.0
    IL_00ef:  ldfld      float32 Game.ComponentShapeshifter::m_timeToSwitch
    IL_00f4:  ldarg.1
    IL_00f5:  sub
    IL_00f6:  stfld      float32 Game.ComponentShapeshifter::m_timeToSwitch
    IL_00fb:  ldarg.0
    IL_00fc:  ldfld      float32 Game.ComponentShapeshifter::m_timeToSwitch
    IL_0101:  ldc.r4     0.0
    IL_0106:  bgt.un.s   IL_0114

    IL_0108:  ldarg.0
    IL_0109:  ldarg.0
    IL_010a:  ldfld      string Game.ComponentShapeshifter::m_nightEntityTemplateName
    IL_010f:  call       instance void Game.ComponentShapeshifter::ShapeshiftTo(string)
    IL_0114:  ldarg.0
    IL_0115:  ldfld      string Game.ComponentShapeshifter::m_spawnEntityTemplateName
    IL_011a:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_011f:  brtrue.s   IL_015b

    IL_0121:  ldarg.0
    IL_0122:  ldfld      class Game.ShapeshiftParticleSystem Game.ComponentShapeshifter::m_particleSystem
    IL_0127:  brtrue.s   IL_0145

    IL_0129:  ldarg.0
    IL_012a:  newobj     instance void Game.ShapeshiftParticleSystem::.ctor()
    IL_012f:  stfld      class Game.ShapeshiftParticleSystem Game.ComponentShapeshifter::m_particleSystem
    IL_0134:  ldarg.0
    IL_0135:  ldfld      class Game.SubsystemParticles Game.ComponentShapeshifter::m_subsystemParticles
    IL_013a:  ldarg.0
    IL_013b:  ldfld      class Game.ShapeshiftParticleSystem Game.ComponentShapeshifter::m_particleSystem
    IL_0140:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
    IL_0145:  ldarg.0
    IL_0146:  ldfld      class Game.ShapeshiftParticleSystem Game.ComponentShapeshifter::m_particleSystem
    IL_014b:  ldarg.0
    IL_014c:  ldfld      class Game.ComponentBody Game.ComponentShapeshifter::m_componentBody
    IL_0151:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_0156:  callvirt   instance void Game.ShapeshiftParticleSystem::set_BoundingBox(valuetype [Engine]Engine.BoundingBox)
    IL_015b:  ret
  } // end of method ComponentShapeshifter::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       303 (0x12f)
    .maxstack  4
    .locals init (float32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_000d:  stfld      class Game.SubsystemGameInfo Game.ComponentShapeshifter::m_subsystemGameInfo
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemSky>(bool)
    IL_001f:  stfld      class Game.SubsystemSky Game.ComponentShapeshifter::m_subsystemSky
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemParticles>(bool)
    IL_0031:  stfld      class Game.SubsystemParticles Game.ComponentShapeshifter::m_subsystemParticles
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0043:  stfld      class Game.SubsystemAudio Game.ComponentShapeshifter::m_subsystemAudio
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentSpawn>(bool)
    IL_0055:  stfld      class Game.ComponentSpawn Game.ComponentShapeshifter::m_componentSpawn
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentBody>(bool)
    IL_0067:  stfld      class Game.ComponentBody Game.ComponentShapeshifter::m_componentBody
    IL_006c:  ldarg.0
    IL_006d:  ldarg.0
    IL_006e:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0073:  ldc.i4.1
    IL_0074:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentHealth>(bool)
    IL_0079:  stfld      class Game.ComponentHealth Game.ComponentShapeshifter::m_componentHealth
    IL_007e:  ldarg.0
    IL_007f:  ldarg.1
    IL_0080:  ldstr      "DayEntityTemplateName"
    IL_0085:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_008a:  stfld      string Game.ComponentShapeshifter::m_dayEntityTemplateName
    IL_008f:  ldarg.0
    IL_0090:  ldarg.1
    IL_0091:  ldstr      "NightEntityTemplateName"
    IL_0096:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_009b:  stfld      string Game.ComponentShapeshifter::m_nightEntityTemplateName
    IL_00a0:  ldarg.1
    IL_00a1:  ldstr      "Probability"
    IL_00a6:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00ab:  stloc.0
    IL_00ac:  ldarg.0
    IL_00ad:  ldfld      string Game.ComponentShapeshifter::m_dayEntityTemplateName
    IL_00b2:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_00b7:  brtrue.s   IL_00c6

    IL_00b9:  ldarg.0
    IL_00ba:  ldfld      string Game.ComponentShapeshifter::m_dayEntityTemplateName
    IL_00bf:  ldc.i4.1
    IL_00c0:  call       class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.DatabaseManager::FindEntityValuesDictionary(string,
                                                                                                                                 bool)
    IL_00c5:  pop
    IL_00c6:  ldarg.0
    IL_00c7:  ldfld      string Game.ComponentShapeshifter::m_nightEntityTemplateName
    IL_00cc:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_00d1:  brtrue.s   IL_00e0

    IL_00d3:  ldarg.0
    IL_00d4:  ldfld      string Game.ComponentShapeshifter::m_nightEntityTemplateName
    IL_00d9:  ldc.i4.1
    IL_00da:  call       class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.DatabaseManager::FindEntityValuesDictionary(string,
                                                                                                                                 bool)
    IL_00df:  pop
    IL_00e0:  ldarg.0
    IL_00e1:  ldsfld     class Game.Random Game.Random::GlobalRandom
    IL_00e6:  ldc.r4     3.
    IL_00eb:  ldc.r4     15.
    IL_00f0:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00f5:  stfld      float32 Game.ComponentShapeshifter::m_timeToSwitch
    IL_00fa:  ldarg.0
    IL_00fb:  ldsfld     class Game.Random Game.Random::GlobalRandom
    IL_0100:  ldc.r4     0.0
    IL_0105:  ldc.r4     1.
    IL_010a:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_010f:  ldloc.0
    IL_0110:  clt
    IL_0112:  call       instance void Game.ComponentShapeshifter::set_IsEnabled(bool)
    IL_0117:  ldarg.0
    IL_0118:  ldfld      class Game.ComponentSpawn Game.ComponentShapeshifter::m_componentSpawn
    IL_011d:  ldarg.0
    IL_011e:  ldftn      instance void Game.ComponentShapeshifter::ComponentSpawn_Despawned(class Game.ComponentSpawn)
    IL_0124:  newobj     instance void class [System.Runtime]System.Action`1<class Game.ComponentSpawn>::.ctor(object,
                                                                                                               native int)
    IL_0129:  callvirt   instance void Game.ComponentSpawn::add_Despawned(class [System.Runtime]System.Action`1<class Game.ComponentSpawn>)
    IL_012e:  ret
  } // end of method ComponentShapeshifter::Load

  .method private hidebysig instance void 
          ShapeshiftTo(string entityTemplateName) cil managed
  {
    // 代码大小       91 (0x5b)
    .maxstack  7
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.ComponentShapeshifter::m_spawnEntityTemplateName
    IL_0006:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_000b:  brfalse.s  IL_005a

    IL_000d:  ldarg.0
    IL_000e:  ldarg.1
    IL_000f:  stfld      string Game.ComponentShapeshifter::m_spawnEntityTemplateName
    IL_0014:  ldarg.0
    IL_0015:  ldfld      class Game.ComponentSpawn Game.ComponentShapeshifter::m_componentSpawn
    IL_001a:  ldc.r4     3.
    IL_001f:  callvirt   instance void Game.ComponentSpawn::set_DespawnDuration(float32)
    IL_0024:  ldarg.0
    IL_0025:  ldfld      class Game.ComponentSpawn Game.ComponentShapeshifter::m_componentSpawn
    IL_002a:  callvirt   instance void Game.ComponentSpawn::Despawn()
    IL_002f:  ldarg.0
    IL_0030:  ldfld      class Game.SubsystemAudio Game.ComponentShapeshifter::m_subsystemAudio
    IL_0035:  ldstr      "Audio/Shapeshift"
    IL_003a:  ldc.r4     1.
    IL_003f:  ldc.r4     0.0
    IL_0044:  ldarg.0
    IL_0045:  ldfld      class Game.ComponentBody Game.ComponentShapeshifter::m_componentBody
    IL_004a:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_004f:  ldc.r4     3.
    IL_0054:  ldc.i4.1
    IL_0055:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_005a:  ret
  } // end of method ComponentShapeshifter::ShapeshiftTo

  .method private hidebysig instance void 
          ComponentSpawn_Despawned(class Game.ComponentSpawn componentSpawn) cil managed
  {
    // 代码大小       157 (0x9d)
    .maxstack  3
    .locals init (class [EntitySystem]GameEntitySystem.Entity V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentHealth Game.ComponentShapeshifter::m_componentHealth
    IL_0006:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_000b:  ldc.r4     0.0
    IL_0010:  ble.un.s   IL_0088

    IL_0012:  ldarg.0
    IL_0013:  ldfld      string Game.ComponentShapeshifter::m_spawnEntityTemplateName
    IL_0018:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_001d:  brtrue.s   IL_0088

    IL_001f:  ldarg.0
    IL_0020:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0025:  ldarg.0
    IL_0026:  ldfld      string Game.ComponentShapeshifter::m_spawnEntityTemplateName
    IL_002b:  ldc.i4.1
    IL_002c:  call       class [EntitySystem]GameEntitySystem.Entity Game.DatabaseManager::CreateEntity(class [EntitySystem]GameEntitySystem.Project,
                                                                                                        string,
                                                                                                        bool)
    IL_0031:  stloc.0
    IL_0032:  ldloc.0
    IL_0033:  ldc.i4.1
    IL_0034:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentBody>(bool)
    IL_0039:  dup
    IL_003a:  ldarg.0
    IL_003b:  ldfld      class Game.ComponentBody Game.ComponentShapeshifter::m_componentBody
    IL_0040:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0045:  callvirt   instance void Game.ComponentFrame::set_Position(valuetype [Engine]Engine.Vector3)
    IL_004a:  dup
    IL_004b:  ldarg.0
    IL_004c:  ldfld      class Game.ComponentBody Game.ComponentShapeshifter::m_componentBody
    IL_0051:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentFrame::get_Rotation()
    IL_0056:  callvirt   instance void Game.ComponentFrame::set_Rotation(valuetype [Engine]Engine.Quaternion)
    IL_005b:  ldarg.0
    IL_005c:  ldfld      class Game.ComponentBody Game.ComponentShapeshifter::m_componentBody
    IL_0061:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_Velocity()
    IL_0066:  callvirt   instance void Game.ComponentBody::set_Velocity(valuetype [Engine]Engine.Vector3)
    IL_006b:  ldloc.0
    IL_006c:  ldc.i4.1
    IL_006d:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentSpawn>(bool)
    IL_0072:  ldc.r4     0.5
    IL_0077:  callvirt   instance void Game.ComponentSpawn::set_SpawnDuration(float32)
    IL_007c:  ldarg.0
    IL_007d:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0082:  ldloc.0
    IL_0083:  callvirt   instance void [EntitySystem]GameEntitySystem.Project::AddEntity(class [EntitySystem]GameEntitySystem.Entity)
    IL_0088:  ldarg.0
    IL_0089:  ldfld      class Game.ShapeshiftParticleSystem Game.ComponentShapeshifter::m_particleSystem
    IL_008e:  brfalse.s  IL_009c

    IL_0090:  ldarg.0
    IL_0091:  ldfld      class Game.ShapeshiftParticleSystem Game.ComponentShapeshifter::m_particleSystem
    IL_0096:  ldc.i4.1
    IL_0097:  callvirt   instance void Game.ShapeshiftParticleSystem::set_Stopped(bool)
    IL_009c:  ret
  } // end of method ComponentShapeshifter::ComponentSpawn_Despawned

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_0006:  ret
  } // end of method ComponentShapeshifter::.ctor

  .property instance bool IsEnabled()
  {
    .get instance bool Game.ComponentShapeshifter::get_IsEnabled()
    .set instance void Game.ComponentShapeshifter::set_IsEnabled(bool)
  } // end of property ComponentShapeshifter::IsEnabled
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentShapeshifter::get_UpdateOrder()
  } // end of property ComponentShapeshifter::UpdateOrder
} // end of class Game.ComponentShapeshifter