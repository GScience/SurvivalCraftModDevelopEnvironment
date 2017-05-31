.class public auto ansi beforefieldinit Game.ComponentShapeshifter
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IUpdateable
{
  .field private class Game.SubsystemEntityFactory m_subsystemEntityFactory
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
    // 代码大小       289 (0x121)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  call       instance bool Game.ComponentShapeshifter::get_IsEnabled()
    IL_0006:  brfalse    IL_00d9

    IL_000b:  ldarg.0
    IL_000c:  ldfld      class Game.ComponentSpawn Game.ComponentShapeshifter::m_componentSpawn
    IL_0011:  callvirt   instance bool Game.ComponentSpawn::get_IsDespawning()
    IL_0016:  brtrue     IL_00d9

    IL_001b:  ldarg.0
    IL_001c:  ldfld      class Game.ComponentHealth Game.ComponentShapeshifter::m_componentHealth
    IL_0021:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_0026:  ldc.r4     0.0
    IL_002b:  ble.un     IL_00d9

    IL_0030:  ldarg.0
    IL_0031:  ldfld      class Game.SubsystemSky Game.ComponentShapeshifter::m_subsystemSky
    IL_0036:  callvirt   instance float32 Game.SubsystemSky::get_LightIntensity()
    IL_003b:  ldc.r4     0.25
    IL_0040:  ble.un.s   IL_0078

    IL_0042:  ldarg.0
    IL_0043:  ldfld      string Game.ComponentShapeshifter::m_dayEntityTemplateName
    IL_0048:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_004d:  brtrue.s   IL_0078

    IL_004f:  ldarg.0
    IL_0050:  ldarg.0
    IL_0051:  ldfld      float32 Game.ComponentShapeshifter::m_timeToSwitch
    IL_0056:  ldarg.1
    IL_0057:  sub
    IL_0058:  stfld      float32 Game.ComponentShapeshifter::m_timeToSwitch
    IL_005d:  ldarg.0
    IL_005e:  ldfld      float32 Game.ComponentShapeshifter::m_timeToSwitch
    IL_0063:  ldc.r4     0.0
    IL_0068:  bgt.un.s   IL_00d9

    IL_006a:  ldarg.0
    IL_006b:  ldarg.0
    IL_006c:  ldfld      string Game.ComponentShapeshifter::m_dayEntityTemplateName
    IL_0071:  call       instance void Game.ComponentShapeshifter::ShapeshiftTo(string)
    IL_0076:  br.s       IL_00d9

    IL_0078:  ldarg.0
    IL_0079:  ldfld      class Game.SubsystemSky Game.ComponentShapeshifter::m_subsystemSky
    IL_007e:  callvirt   instance float32 Game.SubsystemSky::get_LightIntensity()
    IL_0083:  ldc.r4     0.1
    IL_0088:  bge.un.s   IL_00d9

    IL_008a:  ldarg.0
    IL_008b:  ldfld      class Game.SubsystemSky Game.ComponentShapeshifter::m_subsystemSky
    IL_0090:  callvirt   instance int32 Game.SubsystemSky::get_MoonPhase()
    IL_0095:  brfalse.s  IL_00a5

    IL_0097:  ldarg.0
    IL_0098:  ldfld      class Game.SubsystemSky Game.ComponentShapeshifter::m_subsystemSky
    IL_009d:  callvirt   instance int32 Game.SubsystemSky::get_MoonPhase()
    IL_00a2:  ldc.i4.4
    IL_00a3:  bne.un.s   IL_00d9

    IL_00a5:  ldarg.0
    IL_00a6:  ldfld      string Game.ComponentShapeshifter::m_nightEntityTemplateName
    IL_00ab:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_00b0:  brtrue.s   IL_00d9

    IL_00b2:  ldarg.0
    IL_00b3:  ldarg.0
    IL_00b4:  ldfld      float32 Game.ComponentShapeshifter::m_timeToSwitch
    IL_00b9:  ldarg.1
    IL_00ba:  sub
    IL_00bb:  stfld      float32 Game.ComponentShapeshifter::m_timeToSwitch
    IL_00c0:  ldarg.0
    IL_00c1:  ldfld      float32 Game.ComponentShapeshifter::m_timeToSwitch
    IL_00c6:  ldc.r4     0.0
    IL_00cb:  bgt.un.s   IL_00d9

    IL_00cd:  ldarg.0
    IL_00ce:  ldarg.0
    IL_00cf:  ldfld      string Game.ComponentShapeshifter::m_nightEntityTemplateName
    IL_00d4:  call       instance void Game.ComponentShapeshifter::ShapeshiftTo(string)
    IL_00d9:  ldarg.0
    IL_00da:  ldfld      string Game.ComponentShapeshifter::m_spawnEntityTemplateName
    IL_00df:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_00e4:  brtrue.s   IL_0120

    IL_00e6:  ldarg.0
    IL_00e7:  ldfld      class Game.ShapeshiftParticleSystem Game.ComponentShapeshifter::m_particleSystem
    IL_00ec:  brtrue.s   IL_010a

    IL_00ee:  ldarg.0
    IL_00ef:  newobj     instance void Game.ShapeshiftParticleSystem::.ctor()
    IL_00f4:  stfld      class Game.ShapeshiftParticleSystem Game.ComponentShapeshifter::m_particleSystem
    IL_00f9:  ldarg.0
    IL_00fa:  ldfld      class Game.SubsystemParticles Game.ComponentShapeshifter::m_subsystemParticles
    IL_00ff:  ldarg.0
    IL_0100:  ldfld      class Game.ShapeshiftParticleSystem Game.ComponentShapeshifter::m_particleSystem
    IL_0105:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
    IL_010a:  ldarg.0
    IL_010b:  ldfld      class Game.ShapeshiftParticleSystem Game.ComponentShapeshifter::m_particleSystem
    IL_0110:  ldarg.0
    IL_0111:  ldfld      class Game.ComponentBody Game.ComponentShapeshifter::m_componentBody
    IL_0116:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_011b:  callvirt   instance void Game.ShapeshiftParticleSystem::set_BoundingBox(valuetype [Engine]Engine.BoundingBox)
    IL_0120:  ret
  } // end of method ComponentShapeshifter::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       315 (0x13b)
    .maxstack  4
    .locals init (float32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemEntityFactory>(bool)
    IL_000d:  stfld      class Game.SubsystemEntityFactory Game.ComponentShapeshifter::m_subsystemEntityFactory
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
    IL_00b7:  brtrue.s   IL_00cc

    IL_00b9:  ldarg.0
    IL_00ba:  ldfld      class Game.SubsystemEntityFactory Game.ComponentShapeshifter::m_subsystemEntityFactory
    IL_00bf:  ldarg.0
    IL_00c0:  ldfld      string Game.ComponentShapeshifter::m_dayEntityTemplateName
    IL_00c5:  ldc.i4.1
    IL_00c6:  callvirt   instance class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.SubsystemEntityFactory::GetValuesDictionary(string,
                                                                                                                                          bool)
    IL_00cb:  pop
    IL_00cc:  ldarg.0
    IL_00cd:  ldfld      string Game.ComponentShapeshifter::m_nightEntityTemplateName
    IL_00d2:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_00d7:  brtrue.s   IL_00ec

    IL_00d9:  ldarg.0
    IL_00da:  ldfld      class Game.SubsystemEntityFactory Game.ComponentShapeshifter::m_subsystemEntityFactory
    IL_00df:  ldarg.0
    IL_00e0:  ldfld      string Game.ComponentShapeshifter::m_nightEntityTemplateName
    IL_00e5:  ldc.i4.1
    IL_00e6:  callvirt   instance class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.SubsystemEntityFactory::GetValuesDictionary(string,
                                                                                                                                          bool)
    IL_00eb:  pop
    IL_00ec:  ldarg.0
    IL_00ed:  ldsfld     class Game.Random Game.Random::GlobalRandom
    IL_00f2:  ldc.r4     2.
    IL_00f7:  ldc.r4     8.
    IL_00fc:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0101:  stfld      float32 Game.ComponentShapeshifter::m_timeToSwitch
    IL_0106:  ldarg.0
    IL_0107:  ldsfld     class Game.Random Game.Random::GlobalRandom
    IL_010c:  ldc.r4     0.0
    IL_0111:  ldc.r4     1.
    IL_0116:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_011b:  ldloc.0
    IL_011c:  clt
    IL_011e:  call       instance void Game.ComponentShapeshifter::set_IsEnabled(bool)
    IL_0123:  ldarg.0
    IL_0124:  ldfld      class Game.ComponentSpawn Game.ComponentShapeshifter::m_componentSpawn
    IL_0129:  ldarg.0
    IL_012a:  ldftn      instance void Game.ComponentShapeshifter::ComponentSpawn_Despawned(class Game.ComponentSpawn)
    IL_0130:  newobj     instance void class [System.Runtime]System.Action`1<class Game.ComponentSpawn>::.ctor(object,
                                                                                                               native int)
    IL_0135:  callvirt   instance void Game.ComponentSpawn::add_Despawned(class [System.Runtime]System.Action`1<class Game.ComponentSpawn>)
    IL_013a:  ret
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
    IL_0020:  ldfld      class Game.SubsystemEntityFactory Game.ComponentShapeshifter::m_subsystemEntityFactory
    IL_0025:  ldarg.0
    IL_0026:  ldfld      string Game.ComponentShapeshifter::m_spawnEntityTemplateName
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity Game.SubsystemEntityFactory::CreateEntity(string,
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