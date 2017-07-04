.class public auto ansi beforefieldinit Game.ComponentDamage
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IUpdateable
{
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.SubsystemParticles m_subsystemParticles
  .field private class Game.ComponentBody m_componentBody
  .field private class Game.ComponentOnFire m_componentOnFire
  .field private float32 m_lastHitpoints
  .field private float32 m_fallResilience
  .field private float32 m_fireResilience
  .field private int32 m_debrisTextureSlot
  .field private float32 m_debrisStrength
  .field private float32 m_debrisScale
  .field private float32 '<Hitpoints>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<HitpointsChange>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<AttackResilience>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private string '<DamageSoundName>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance float32 
          get_Hitpoints() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentDamage::'<Hitpoints>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentDamage::get_Hitpoints

  .method private hidebysig specialname instance void 
          set_Hitpoints(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentDamage::'<Hitpoints>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentDamage::set_Hitpoints

  .method public hidebysig specialname instance float32 
          get_HitpointsChange() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentDamage::'<HitpointsChange>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentDamage::get_HitpointsChange

  .method private hidebysig specialname instance void 
          set_HitpointsChange(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentDamage::'<HitpointsChange>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentDamage::set_HitpointsChange

  .method public hidebysig specialname instance float32 
          get_AttackResilience() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentDamage::'<AttackResilience>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentDamage::get_AttackResilience

  .method private hidebysig specialname instance void 
          set_AttackResilience(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentDamage::'<AttackResilience>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentDamage::set_AttackResilience

  .method public hidebysig specialname instance string 
          get_DamageSoundName() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.ComponentDamage::'<DamageSoundName>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentDamage::get_DamageSoundName

  .method private hidebysig specialname instance void 
          set_DamageSoundName(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string Game.ComponentDamage::'<DamageSoundName>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentDamage::set_DamageSoundName

  .method public hidebysig instance void 
          Damage(float32 amount) cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldc.r4     0.0
    IL_0006:  ble.un.s   IL_002d

    IL_0008:  ldarg.0
    IL_0009:  call       instance float32 Game.ComponentDamage::get_Hitpoints()
    IL_000e:  ldc.r4     0.0
    IL_0013:  ble.un.s   IL_002d

    IL_0015:  ldarg.0
    IL_0016:  ldarg.0
    IL_0017:  call       instance float32 Game.ComponentDamage::get_Hitpoints()
    IL_001c:  ldarg.1
    IL_001d:  sub
    IL_001e:  ldc.r4     0.0
    IL_0023:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0028:  call       instance void Game.ComponentDamage::set_Hitpoints(float32)
    IL_002d:  ret
  } // end of method ComponentDamage::Damage

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentDamage::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       359 (0x167)
    .maxstack  7
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             float32 V_1,
             float32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentBody Game.ComponentDamage::m_componentBody
    IL_0006:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  call       instance float32 Game.ComponentDamage::get_Hitpoints()
    IL_0012:  ldc.r4     0.0
    IL_0017:  bgt.un     IL_00ad

    IL_001c:  ldarg.0
    IL_001d:  ldfld      class Game.SubsystemParticles Game.ComponentDamage::m_subsystemParticles
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class Game.SubsystemTerrain Game.ComponentDamage::m_subsystemTerrain
    IL_0028:  ldloc.0
    IL_0029:  ldarg.0
    IL_002a:  ldfld      class Game.ComponentBody Game.ComponentDamage::m_componentBody
    IL_002f:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_0034:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0039:  ldc.r4     2.
    IL_003e:  div
    IL_003f:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0044:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0049:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_004e:  ldarg.0
    IL_004f:  ldfld      float32 Game.ComponentDamage::m_debrisStrength
    IL_0054:  ldarg.0
    IL_0055:  ldfld      float32 Game.ComponentDamage::m_debrisScale
    IL_005a:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_005f:  ldarg.0
    IL_0060:  ldfld      int32 Game.ComponentDamage::m_debrisTextureSlot
    IL_0065:  newobj     instance void Game.BlockDebrisParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                             valuetype [Engine]Engine.Vector3,
                                                                             float32,
                                                                             float32,
                                                                             valuetype [Engine]Engine.Color,
                                                                             int32)
    IL_006a:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
    IL_006f:  ldarg.0
    IL_0070:  ldfld      class Game.SubsystemAudio Game.ComponentDamage::m_subsystemAudio
    IL_0075:  ldarg.0
    IL_0076:  call       instance string Game.ComponentDamage::get_DamageSoundName()
    IL_007b:  ldc.r4     1.
    IL_0080:  ldc.r4     0.0
    IL_0085:  ldarg.0
    IL_0086:  ldfld      class Game.ComponentBody Game.ComponentDamage::m_componentBody
    IL_008b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0090:  ldc.r4     4.
    IL_0095:  ldc.i4.1
    IL_0096:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            bool)
    IL_009b:  ldarg.0
    IL_009c:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_00a1:  ldarg.0
    IL_00a2:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_00a7:  ldc.i4.1
    IL_00a8:  callvirt   instance void [EntitySystem]GameEntitySystem.Project::RemoveEntity(class [EntitySystem]GameEntitySystem.Entity,
                                                                                            bool)
    IL_00ad:  ldarg.0
    IL_00ae:  ldfld      class Game.ComponentBody Game.ComponentDamage::m_componentBody
    IL_00b3:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_CollisionVelocityChange()
    IL_00b8:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00bd:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_00c2:  stloc.1
    IL_00c3:  ldloc.1
    IL_00c4:  ldarg.0
    IL_00c5:  ldfld      float32 Game.ComponentDamage::m_fallResilience
    IL_00ca:  ble.un.s   IL_00f1

    IL_00cc:  ldloc.1
    IL_00cd:  ldarg.0
    IL_00ce:  ldfld      float32 Game.ComponentDamage::m_fallResilience
    IL_00d3:  sub
    IL_00d4:  ldc.r4     0.0
    IL_00d9:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_00de:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
    IL_00e3:  ldc.r4     15.
    IL_00e8:  div
    IL_00e9:  stloc.2
    IL_00ea:  ldarg.0
    IL_00eb:  ldloc.2
    IL_00ec:  call       instance void Game.ComponentDamage::Damage(float32)
    IL_00f1:  ldloc.0
    IL_00f2:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00f7:  ldc.r4     -10.
    IL_00fc:  blt.s      IL_010b

    IL_00fe:  ldloc.0
    IL_00ff:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0104:  ldc.r4     148.
    IL_0109:  ble.un.s   IL_0117

    IL_010b:  ldarg.0
    IL_010c:  ldarg.0
    IL_010d:  call       instance float32 Game.ComponentDamage::get_Hitpoints()
    IL_0112:  call       instance void Game.ComponentDamage::Damage(float32)
    IL_0117:  ldarg.0
    IL_0118:  ldfld      class Game.ComponentOnFire Game.ComponentDamage::m_componentOnFire
    IL_011d:  brfalse.s  IL_0147

    IL_011f:  ldarg.0
    IL_0120:  ldfld      class Game.ComponentOnFire Game.ComponentDamage::m_componentOnFire
    IL_0125:  callvirt   instance bool Game.ComponentOnFire::get_IsOnFire()
    IL_012a:  brtrue.s   IL_0139

    IL_012c:  ldarg.0
    IL_012d:  ldfld      class Game.ComponentOnFire Game.ComponentDamage::m_componentOnFire
    IL_0132:  callvirt   instance bool Game.ComponentOnFire::get_TouchesFire()
    IL_0137:  brfalse.s  IL_0147

    IL_0139:  ldarg.0
    IL_013a:  ldarg.1
    IL_013b:  ldarg.0
    IL_013c:  ldfld      float32 Game.ComponentDamage::m_fireResilience
    IL_0141:  div
    IL_0142:  call       instance void Game.ComponentDamage::Damage(float32)
    IL_0147:  ldarg.0
    IL_0148:  ldarg.0
    IL_0149:  call       instance float32 Game.ComponentDamage::get_Hitpoints()
    IL_014e:  ldarg.0
    IL_014f:  ldfld      float32 Game.ComponentDamage::m_lastHitpoints
    IL_0154:  sub
    IL_0155:  call       instance void Game.ComponentDamage::set_HitpointsChange(float32)
    IL_015a:  ldarg.0
    IL_015b:  ldarg.0
    IL_015c:  call       instance float32 Game.ComponentDamage::get_Hitpoints()
    IL_0161:  stfld      float32 Game.ComponentDamage::m_lastHitpoints
    IL_0166:  ret
  } // end of method ComponentDamage::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       226 (0xe2)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_000d:  stfld      class Game.SubsystemTerrain Game.ComponentDamage::m_subsystemTerrain
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_001f:  stfld      class Game.SubsystemAudio Game.ComponentDamage::m_subsystemAudio
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemParticles>(bool)
    IL_0031:  stfld      class Game.SubsystemParticles Game.ComponentDamage::m_subsystemParticles
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentBody>(bool)
    IL_0043:  stfld      class Game.ComponentBody Game.ComponentDamage::m_componentBody
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_004f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentOnFire>()
    IL_0054:  stfld      class Game.ComponentOnFire Game.ComponentDamage::m_componentOnFire
    IL_0059:  ldarg.0
    IL_005a:  ldarg.1
    IL_005b:  ldstr      "Hitpoints"
    IL_0060:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0065:  call       instance void Game.ComponentDamage::set_Hitpoints(float32)
    IL_006a:  ldarg.0
    IL_006b:  ldarg.1
    IL_006c:  ldstr      "AttackResilience"
    IL_0071:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0076:  call       instance void Game.ComponentDamage::set_AttackResilience(float32)
    IL_007b:  ldarg.0
    IL_007c:  ldarg.1
    IL_007d:  ldstr      "FallResilience"
    IL_0082:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0087:  stfld      float32 Game.ComponentDamage::m_fallResilience
    IL_008c:  ldarg.0
    IL_008d:  ldarg.1
    IL_008e:  ldstr      "FireResilience"
    IL_0093:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0098:  stfld      float32 Game.ComponentDamage::m_fireResilience
    IL_009d:  ldarg.0
    IL_009e:  ldarg.1
    IL_009f:  ldstr      "DebrisTextureSlot"
    IL_00a4:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<int32>(string)
    IL_00a9:  stfld      int32 Game.ComponentDamage::m_debrisTextureSlot
    IL_00ae:  ldarg.0
    IL_00af:  ldarg.1
    IL_00b0:  ldstr      "DebrisStrength"
    IL_00b5:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00ba:  stfld      float32 Game.ComponentDamage::m_debrisStrength
    IL_00bf:  ldarg.0
    IL_00c0:  ldarg.1
    IL_00c1:  ldstr      "DebrisScale"
    IL_00c6:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00cb:  stfld      float32 Game.ComponentDamage::m_debrisScale
    IL_00d0:  ldarg.0
    IL_00d1:  ldarg.1
    IL_00d2:  ldstr      "DestructionSoundName"
    IL_00d7:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_00dc:  call       instance void Game.ComponentDamage::set_DamageSoundName(string)
    IL_00e1:  ret
  } // end of method ComponentDamage::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.EntityToIdMap entityToIdMap) cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "Hitpoints"
    IL_0006:  ldarg.0
    IL_0007:  call       instance float32 Game.ComponentDamage::get_Hitpoints()
    IL_000c:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float32>(string,
                                                                                                           !!0)
    IL_0011:  ret
  } // end of method ComponentDamage::Save

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_0006:  ret
  } // end of method ComponentDamage::.ctor

  .property instance float32 Hitpoints()
  {
    .get instance float32 Game.ComponentDamage::get_Hitpoints()
    .set instance void Game.ComponentDamage::set_Hitpoints(float32)
  } // end of property ComponentDamage::Hitpoints
  .property instance float32 HitpointsChange()
  {
    .get instance float32 Game.ComponentDamage::get_HitpointsChange()
    .set instance void Game.ComponentDamage::set_HitpointsChange(float32)
  } // end of property ComponentDamage::HitpointsChange
  .property instance float32 AttackResilience()
  {
    .get instance float32 Game.ComponentDamage::get_AttackResilience()
    .set instance void Game.ComponentDamage::set_AttackResilience(float32)
  } // end of property ComponentDamage::AttackResilience
  .property instance string DamageSoundName()
  {
    .get instance string Game.ComponentDamage::get_DamageSoundName()
    .set instance void Game.ComponentDamage::set_DamageSoundName(string)
  } // end of property ComponentDamage::DamageSoundName
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentDamage::get_UpdateOrder()
  } // end of property ComponentDamage::UpdateOrder
} // end of class Game.ComponentDamage