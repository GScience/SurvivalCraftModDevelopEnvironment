.class public auto ansi beforefieldinit Game.ComponentOnFire
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IUpdateable
{
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.SubsystemAmbientSounds m_subsystemAmbientSounds
  .field private class Game.SubsystemParticles m_subsystemParticles
  .field private class Game.Random m_random
  .field private float64 m_nextCheckTime
  .field private int32 m_fireTouchCount
  .field private class Game.OnFireParticleSystem m_onFireParticleSystem
  .field private float32 m_soundVolume
  .field private float32 m_fireDuration
  .field private class Game.ComponentBody '<ComponentBody>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<TouchesFire>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.ComponentCreature '<Attacker>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance class Game.ComponentBody 
          get_ComponentBody() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentBody Game.ComponentOnFire::'<ComponentBody>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentOnFire::get_ComponentBody

  .method private hidebysig specialname instance void 
          set_ComponentBody(class Game.ComponentBody 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ComponentBody Game.ComponentOnFire::'<ComponentBody>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentOnFire::set_ComponentBody

  .method public hidebysig specialname instance bool 
          get_IsOnFire() cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentOnFire::m_fireDuration
    IL_0006:  ldc.r4     0.0
    IL_000b:  cgt
    IL_000d:  ret
  } // end of method ComponentOnFire::get_IsOnFire

  .method public hidebysig specialname instance bool 
          get_TouchesFire() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ComponentOnFire::'<TouchesFire>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentOnFire::get_TouchesFire

  .method private hidebysig specialname instance void 
          set_TouchesFire(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ComponentOnFire::'<TouchesFire>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentOnFire::set_TouchesFire

  .method public hidebysig specialname instance class Game.ComponentCreature 
          get_Attacker() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentOnFire::'<Attacker>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentOnFire::get_Attacker

  .method private hidebysig specialname instance void 
          set_Attacker(class Game.ComponentCreature 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ComponentCreature Game.ComponentOnFire::'<Attacker>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentOnFire::set_Attacker

  .method public hidebysig instance void 
          SetOnFire(class Game.ComponentCreature attacker,
                    float32 duration) cil managed
  {
    // 代码大小       34 (0x22)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance bool Game.ComponentOnFire::get_IsOnFire()
    IL_0006:  brtrue.s   IL_000f

    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  call       instance void Game.ComponentOnFire::set_Attacker(class Game.ComponentCreature)
    IL_000f:  ldarg.0
    IL_0010:  ldarg.0
    IL_0011:  ldfld      float32 Game.ComponentOnFire::m_fireDuration
    IL_0016:  ldarg.2
    IL_0017:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_001c:  stfld      float32 Game.ComponentOnFire::m_fireDuration
    IL_0021:  ret
  } // end of method ComponentOnFire::SetOnFire

  .method public hidebysig instance void 
          Extinguish() cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldnull
    IL_0002:  call       instance void Game.ComponentOnFire::set_Attacker(class Game.ComponentCreature)
    IL_0007:  ldarg.0
    IL_0008:  ldc.r4     0.0
    IL_000d:  stfld      float32 Game.ComponentOnFire::m_fireDuration
    IL_0012:  ret
  } // end of method ComponentOnFire::Extinguish

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentOnFire::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       639 (0x27f)
    .maxstack  7
    .locals init (valuetype [Engine]Engine.BoundingBox V_0,
             float32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       instance bool [EntitySystem]GameEntitySystem.Component::get_IsAddedToProject()
    IL_0006:  brtrue.s   IL_0009

    IL_0008:  ret

    IL_0009:  ldarg.0
    IL_000a:  call       instance bool Game.ComponentOnFire::get_IsOnFire()
    IL_000f:  brfalse    IL_018a

    IL_0014:  ldarg.0
    IL_0015:  ldarg.0
    IL_0016:  ldfld      float32 Game.ComponentOnFire::m_fireDuration
    IL_001b:  ldarg.1
    IL_001c:  sub
    IL_001d:  ldc.r4     0.0
    IL_0022:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0027:  stfld      float32 Game.ComponentOnFire::m_fireDuration
    IL_002c:  ldarg.0
    IL_002d:  ldfld      class Game.OnFireParticleSystem Game.ComponentOnFire::m_onFireParticleSystem
    IL_0032:  brtrue.s   IL_0050

    IL_0034:  ldarg.0
    IL_0035:  newobj     instance void Game.OnFireParticleSystem::.ctor()
    IL_003a:  stfld      class Game.OnFireParticleSystem Game.ComponentOnFire::m_onFireParticleSystem
    IL_003f:  ldarg.0
    IL_0040:  ldfld      class Game.SubsystemParticles Game.ComponentOnFire::m_subsystemParticles
    IL_0045:  ldarg.0
    IL_0046:  ldfld      class Game.OnFireParticleSystem Game.ComponentOnFire::m_onFireParticleSystem
    IL_004b:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
    IL_0050:  ldarg.0
    IL_0051:  call       instance class Game.ComponentBody Game.ComponentOnFire::get_ComponentBody()
    IL_0056:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_005b:  stloc.0
    IL_005c:  ldarg.0
    IL_005d:  ldfld      class Game.OnFireParticleSystem Game.ComponentOnFire::m_onFireParticleSystem
    IL_0062:  ldc.r4     0.5
    IL_0067:  ldloc.0
    IL_0068:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_006d:  ldloc.0
    IL_006e:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0073:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0078:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_007d:  callvirt   instance void Game.OnFireParticleSystem::set_Position(valuetype [Engine]Engine.Vector3)
    IL_0082:  ldarg.0
    IL_0083:  ldfld      class Game.OnFireParticleSystem Game.ComponentOnFire::m_onFireParticleSystem
    IL_0088:  ldc.r4     0.5
    IL_008d:  ldloc.0
    IL_008e:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0093:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0098:  ldloc.0
    IL_0099:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_009e:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00a3:  sub
    IL_00a4:  ldloc.0
    IL_00a5:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_00aa:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00af:  ldloc.0
    IL_00b0:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_00b5:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00ba:  sub
    IL_00bb:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_00c0:  mul
    IL_00c1:  callvirt   instance void Game.OnFireParticleSystem::set_Radius(float32)
    IL_00c6:  ldarg.0
    IL_00c7:  call       instance class Game.ComponentBody Game.ComponentOnFire::get_ComponentBody()
    IL_00cc:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_00d1:  ldc.r4     0.5
    IL_00d6:  ble.un.s   IL_011b

    IL_00d8:  ldarg.0
    IL_00d9:  call       instance class Game.ComponentBody Game.ComponentOnFire::get_ComponentBody()
    IL_00de:  callvirt   instance class Game.FluidBlock Game.ComponentBody::get_ImmersionFluidBlock()
    IL_00e3:  isinst     Game.WaterBlock
    IL_00e8:  brfalse.s  IL_011b

    IL_00ea:  ldarg.0
    IL_00eb:  call       instance void Game.ComponentOnFire::Extinguish()
    IL_00f0:  ldarg.0
    IL_00f1:  ldfld      class Game.SubsystemAudio Game.ComponentOnFire::m_subsystemAudio
    IL_00f6:  ldstr      "Audio/SizzleLong"
    IL_00fb:  ldc.r4     1.
    IL_0100:  ldc.r4     0.0
    IL_0105:  ldarg.0
    IL_0106:  ldfld      class Game.OnFireParticleSystem Game.ComponentOnFire::m_onFireParticleSystem
    IL_010b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.OnFireParticleSystem::get_Position()
    IL_0110:  ldc.r4     4.
    IL_0115:  ldc.i4.1
    IL_0116:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_011b:  ldc.r8     0.5
    IL_0124:  ldc.r8     0.0
    IL_012d:  call       bool [Engine]Engine.Time::PeriodicEvent(float64,
                                                                 float64)
    IL_0132:  brfalse.s  IL_0167

    IL_0134:  ldarg.0
    IL_0135:  ldfld      class Game.SubsystemAudio Game.ComponentOnFire::m_subsystemAudio
    IL_013a:  ldarg.0
    IL_013b:  call       instance class Game.ComponentBody Game.ComponentOnFire::get_ComponentBody()
    IL_0140:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0145:  callvirt   instance float32 Game.SubsystemAudio::CalculateListenerDistance(valuetype [Engine]Engine.Vector3)
    IL_014a:  stloc.1
    IL_014b:  ldarg.0
    IL_014c:  ldarg.0
    IL_014d:  ldfld      class Game.SubsystemAudio Game.ComponentOnFire::m_subsystemAudio
    IL_0152:  ldloc.1
    IL_0153:  ldc.r4     2.
    IL_0158:  ldc.r4     5.
    IL_015d:  callvirt   instance float32 Game.SubsystemAudio::CalculateVolume(float32,
                                                                               float32,
                                                                               float32)
    IL_0162:  stfld      float32 Game.ComponentOnFire::m_soundVolume
    IL_0167:  ldarg.0
    IL_0168:  ldfld      class Game.SubsystemAmbientSounds Game.ComponentOnFire::m_subsystemAmbientSounds
    IL_016d:  ldarg.0
    IL_016e:  ldfld      class Game.SubsystemAmbientSounds Game.ComponentOnFire::m_subsystemAmbientSounds
    IL_0173:  callvirt   instance float32 Game.SubsystemAmbientSounds::get_FireSoundVolume()
    IL_0178:  ldarg.0
    IL_0179:  ldfld      float32 Game.ComponentOnFire::m_soundVolume
    IL_017e:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0183:  callvirt   instance void Game.SubsystemAmbientSounds::set_FireSoundVolume(float32)
    IL_0188:  br.s       IL_01b0

    IL_018a:  ldarg.0
    IL_018b:  ldfld      class Game.OnFireParticleSystem Game.ComponentOnFire::m_onFireParticleSystem
    IL_0190:  brfalse.s  IL_01a5

    IL_0192:  ldarg.0
    IL_0193:  ldfld      class Game.OnFireParticleSystem Game.ComponentOnFire::m_onFireParticleSystem
    IL_0198:  ldc.i4.1
    IL_0199:  callvirt   instance void Game.OnFireParticleSystem::set_IsStopped(bool)
    IL_019e:  ldarg.0
    IL_019f:  ldnull
    IL_01a0:  stfld      class Game.OnFireParticleSystem Game.ComponentOnFire::m_onFireParticleSystem
    IL_01a5:  ldarg.0
    IL_01a6:  ldc.r4     0.0
    IL_01ab:  stfld      float32 Game.ComponentOnFire::m_soundVolume
    IL_01b0:  ldarg.0
    IL_01b1:  ldfld      class Game.SubsystemTime Game.ComponentOnFire::m_subsystemTime
    IL_01b6:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_01bb:  ldarg.0
    IL_01bc:  ldfld      float64 Game.ComponentOnFire::m_nextCheckTime
    IL_01c1:  ble.un     IL_027e

    IL_01c6:  ldarg.0
    IL_01c7:  ldarg.0
    IL_01c8:  ldfld      class Game.SubsystemTime Game.ComponentOnFire::m_subsystemTime
    IL_01cd:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_01d2:  ldarg.0
    IL_01d3:  ldfld      class Game.Random Game.ComponentOnFire::m_random
    IL_01d8:  ldc.r4     0.89999998
    IL_01dd:  ldc.r4     1.1
    IL_01e2:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01e7:  conv.r8
    IL_01e8:  add
    IL_01e9:  stfld      float64 Game.ComponentOnFire::m_nextCheckTime
    IL_01ee:  ldarg.0
    IL_01ef:  ldarg.0
    IL_01f0:  call       instance bool Game.ComponentOnFire::CheckIfBodyTouchesFire()
    IL_01f5:  call       instance void Game.ComponentOnFire::set_TouchesFire(bool)
    IL_01fa:  ldarg.0
    IL_01fb:  call       instance bool Game.ComponentOnFire::get_TouchesFire()
    IL_0200:  brfalse.s  IL_0237

    IL_0202:  ldarg.0
    IL_0203:  ldarg.0
    IL_0204:  ldfld      int32 Game.ComponentOnFire::m_fireTouchCount
    IL_0209:  ldc.i4.1
    IL_020a:  add
    IL_020b:  stfld      int32 Game.ComponentOnFire::m_fireTouchCount
    IL_0210:  ldarg.0
    IL_0211:  ldfld      int32 Game.ComponentOnFire::m_fireTouchCount
    IL_0216:  ldc.i4.5
    IL_0217:  blt.s      IL_023e

    IL_0219:  ldarg.0
    IL_021a:  ldnull
    IL_021b:  ldarg.0
    IL_021c:  ldfld      class Game.Random Game.ComponentOnFire::m_random
    IL_0221:  ldc.r4     12.
    IL_0226:  ldc.r4     15.
    IL_022b:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0230:  call       instance void Game.ComponentOnFire::SetOnFire(class Game.ComponentCreature,
                                                                       float32)
    IL_0235:  br.s       IL_023e

    IL_0237:  ldarg.0
    IL_0238:  ldc.i4.0
    IL_0239:  stfld      int32 Game.ComponentOnFire::m_fireTouchCount
    IL_023e:  ldarg.0
    IL_023f:  call       instance class Game.ComponentBody Game.ComponentOnFire::get_ComponentBody()
    IL_0244:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_0249:  ldc.r4     0.2
    IL_024e:  ble.un.s   IL_027e

    IL_0250:  ldarg.0
    IL_0251:  call       instance class Game.ComponentBody Game.ComponentOnFire::get_ComponentBody()
    IL_0256:  callvirt   instance class Game.FluidBlock Game.ComponentBody::get_ImmersionFluidBlock()
    IL_025b:  isinst     Game.MagmaBlock
    IL_0260:  brfalse.s  IL_027e

    IL_0262:  ldarg.0
    IL_0263:  ldnull
    IL_0264:  ldarg.0
    IL_0265:  ldfld      class Game.Random Game.ComponentOnFire::m_random
    IL_026a:  ldc.r4     12.
    IL_026f:  ldc.r4     15.
    IL_0274:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0279:  call       instance void Game.ComponentOnFire::SetOnFire(class Game.ComponentCreature,
                                                                       float32)
    IL_027e:  ret
  } // end of method ComponentOnFire::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       136 (0x88)
    .maxstack  3
    .locals init (float32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_000d:  stfld      class Game.SubsystemTime Game.ComponentOnFire::m_subsystemTime
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_001f:  stfld      class Game.SubsystemTerrain Game.ComponentOnFire::m_subsystemTerrain
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0031:  stfld      class Game.SubsystemAudio Game.ComponentOnFire::m_subsystemAudio
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAmbientSounds>(bool)
    IL_0043:  stfld      class Game.SubsystemAmbientSounds Game.ComponentOnFire::m_subsystemAmbientSounds
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemParticles>(bool)
    IL_0055:  stfld      class Game.SubsystemParticles Game.ComponentOnFire::m_subsystemParticles
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0061:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentBody>()
    IL_0066:  call       instance void Game.ComponentOnFire::set_ComponentBody(class Game.ComponentBody)
    IL_006b:  ldarg.1
    IL_006c:  ldstr      "FireDuration"
    IL_0071:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0076:  stloc.0
    IL_0077:  ldloc.0
    IL_0078:  ldc.r4     0.0
    IL_007d:  ble.un.s   IL_0087

    IL_007f:  ldarg.0
    IL_0080:  ldnull
    IL_0081:  ldloc.0
    IL_0082:  call       instance void Game.ComponentOnFire::SetOnFire(class Game.ComponentCreature,
                                                                       float32)
    IL_0087:  ret
  } // end of method ComponentOnFire::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.EntityToIdMap entityToIdMap) cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "FireDuration"
    IL_0006:  ldarg.0
    IL_0007:  ldfld      float32 Game.ComponentOnFire::m_fireDuration
    IL_000c:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float32>(string,
                                                                                                           !!0)
    IL_0011:  ret
  } // end of method ComponentOnFire::Save

  .method family hidebysig virtual instance void 
          OnEntityRemoved() cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.OnFireParticleSystem Game.ComponentOnFire::m_onFireParticleSystem
    IL_0006:  brfalse.s  IL_0014

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.OnFireParticleSystem Game.ComponentOnFire::m_onFireParticleSystem
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance void Game.OnFireParticleSystem::set_IsStopped(bool)
    IL_0014:  ret
  } // end of method ComponentOnFire::OnEntityRemoved

  .method private hidebysig instance bool 
          CheckIfBodyTouchesFire() cil managed
  {
    // 代码大小       718 (0x2ce)
    .maxstack  6
    .locals init (valuetype [Engine]Engine.BoundingBox V_0,
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
             valuetype [Engine]Engine.BoundingBox V_11,
             valuetype [Engine]Engine.BoundingBox V_12,
             valuetype [Engine]Engine.BoundingBox V_13,
             valuetype [Engine]Engine.BoundingBox V_14,
             valuetype [Engine]Engine.BoundingBox V_15,
             valuetype [Engine]Engine.BoundingBox V_16)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.ComponentBody Game.ComponentOnFire::get_ComponentBody()
    IL_0006:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_000b:  stloc.0
    IL_000c:  ldloca.s   V_0
    IL_000e:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0013:  dup
    IL_0014:  ldobj      [Engine]Engine.Vector3
    IL_0019:  ldc.r4     0.25
    IL_001e:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_0023:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0028:  stobj      [Engine]Engine.Vector3
    IL_002d:  ldloca.s   V_0
    IL_002f:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0034:  dup
    IL_0035:  ldobj      [Engine]Engine.Vector3
    IL_003a:  ldc.r4     0.25
    IL_003f:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_0044:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0049:  stobj      [Engine]Engine.Vector3
    IL_004e:  ldloc.0
    IL_004f:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0054:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0059:  call       int32 Game.Terrain::ToCell(float32)
    IL_005e:  ldloc.0
    IL_005f:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0064:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0069:  call       int32 Game.Terrain::ToCell(float32)
    IL_006e:  stloc.1
    IL_006f:  ldloc.0
    IL_0070:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0075:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_007a:  call       int32 Game.Terrain::ToCell(float32)
    IL_007f:  stloc.2
    IL_0080:  ldloc.0
    IL_0081:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0086:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_008b:  call       int32 Game.Terrain::ToCell(float32)
    IL_0090:  stloc.3
    IL_0091:  ldloc.0
    IL_0092:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0097:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_009c:  call       int32 Game.Terrain::ToCell(float32)
    IL_00a1:  stloc.s    V_4
    IL_00a3:  ldloc.0
    IL_00a4:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_00a9:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00ae:  call       int32 Game.Terrain::ToCell(float32)
    IL_00b3:  stloc.s    V_5
    IL_00b5:  stloc.s    V_6
    IL_00b7:  br         IL_02c4

    IL_00bc:  ldloc.1
    IL_00bd:  stloc.s    V_7
    IL_00bf:  br         IL_02b5

    IL_00c4:  ldloc.2
    IL_00c5:  stloc.s    V_8
    IL_00c7:  br         IL_02a6

    IL_00cc:  ldarg.0
    IL_00cd:  ldfld      class Game.SubsystemTerrain Game.ComponentOnFire::m_subsystemTerrain
    IL_00d2:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00d7:  ldloc.s    V_6
    IL_00d9:  ldloc.s    V_7
    IL_00db:  ldloc.s    V_8
    IL_00dd:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_00e2:  dup
    IL_00e3:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_00e8:  stloc.s    V_9
    IL_00ea:  call       int32 Game.Terrain::ExtractData(int32)
    IL_00ef:  stloc.s    V_10
    IL_00f1:  ldloc.s    V_9
    IL_00f3:  ldc.i4.s   104
    IL_00f5:  bne.un     IL_023e

    IL_00fa:  ldloc.s    V_10
    IL_00fc:  brtrue.s   IL_0137

    IL_00fe:  ldloca.s   V_11
    IL_0100:  ldloc.s    V_6
    IL_0102:  conv.r4
    IL_0103:  ldloc.s    V_7
    IL_0105:  conv.r4
    IL_0106:  ldloc.s    V_8
    IL_0108:  conv.r4
    IL_0109:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_010e:  ldloc.s    V_6
    IL_0110:  ldc.i4.1
    IL_0111:  add
    IL_0112:  conv.r4
    IL_0113:  ldloc.s    V_7
    IL_0115:  ldc.i4.1
    IL_0116:  add
    IL_0117:  conv.r4
    IL_0118:  ldloc.s    V_8
    IL_011a:  ldc.i4.1
    IL_011b:  add
    IL_011c:  conv.r4
    IL_011d:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0122:  call       instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0127:  ldloca.s   V_0
    IL_0129:  ldloc.s    V_11
    IL_012b:  call       instance bool [Engine]Engine.BoundingBox::Intersection(valuetype [Engine]Engine.BoundingBox)
    IL_0130:  brfalse    IL_02a0

    IL_0135:  ldc.i4.1
    IL_0136:  ret

    IL_0137:  ldloc.s    V_10
    IL_0139:  ldc.i4.1
    IL_013a:  and
    IL_013b:  brfalse.s  IL_0179

    IL_013d:  ldloca.s   V_12
    IL_013f:  ldloc.s    V_6
    IL_0141:  conv.r4
    IL_0142:  ldloc.s    V_7
    IL_0144:  conv.r4
    IL_0145:  ldloc.s    V_8
    IL_0147:  conv.r4
    IL_0148:  ldc.r4     0.5
    IL_014d:  add
    IL_014e:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0153:  ldloc.s    V_6
    IL_0155:  ldc.i4.1
    IL_0156:  add
    IL_0157:  conv.r4
    IL_0158:  ldloc.s    V_7
    IL_015a:  ldc.i4.1
    IL_015b:  add
    IL_015c:  conv.r4
    IL_015d:  ldloc.s    V_8
    IL_015f:  ldc.i4.1
    IL_0160:  add
    IL_0161:  conv.r4
    IL_0162:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0167:  call       instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_016c:  ldloca.s   V_0
    IL_016e:  ldloc.s    V_12
    IL_0170:  call       instance bool [Engine]Engine.BoundingBox::Intersection(valuetype [Engine]Engine.BoundingBox)
    IL_0175:  brfalse.s  IL_0179

    IL_0177:  ldc.i4.1
    IL_0178:  ret

    IL_0179:  ldloc.s    V_10
    IL_017b:  ldc.i4.2
    IL_017c:  and
    IL_017d:  brfalse.s  IL_01bb

    IL_017f:  ldloca.s   V_13
    IL_0181:  ldloc.s    V_6
    IL_0183:  conv.r4
    IL_0184:  ldc.r4     0.5
    IL_0189:  add
    IL_018a:  ldloc.s    V_7
    IL_018c:  conv.r4
    IL_018d:  ldloc.s    V_8
    IL_018f:  conv.r4
    IL_0190:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0195:  ldloc.s    V_6
    IL_0197:  ldc.i4.1
    IL_0198:  add
    IL_0199:  conv.r4
    IL_019a:  ldloc.s    V_7
    IL_019c:  ldc.i4.1
    IL_019d:  add
    IL_019e:  conv.r4
    IL_019f:  ldloc.s    V_8
    IL_01a1:  ldc.i4.1
    IL_01a2:  add
    IL_01a3:  conv.r4
    IL_01a4:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01a9:  call       instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_01ae:  ldloca.s   V_0
    IL_01b0:  ldloc.s    V_13
    IL_01b2:  call       instance bool [Engine]Engine.BoundingBox::Intersection(valuetype [Engine]Engine.BoundingBox)
    IL_01b7:  brfalse.s  IL_01bb

    IL_01b9:  ldc.i4.1
    IL_01ba:  ret

    IL_01bb:  ldloc.s    V_10
    IL_01bd:  ldc.i4.4
    IL_01be:  and
    IL_01bf:  brfalse.s  IL_01fb

    IL_01c1:  ldloca.s   V_14
    IL_01c3:  ldloc.s    V_6
    IL_01c5:  conv.r4
    IL_01c6:  ldloc.s    V_7
    IL_01c8:  conv.r4
    IL_01c9:  ldloc.s    V_8
    IL_01cb:  conv.r4
    IL_01cc:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01d1:  ldloc.s    V_6
    IL_01d3:  ldc.i4.1
    IL_01d4:  add
    IL_01d5:  conv.r4
    IL_01d6:  ldloc.s    V_7
    IL_01d8:  ldc.i4.1
    IL_01d9:  add
    IL_01da:  conv.r4
    IL_01db:  ldloc.s    V_8
    IL_01dd:  conv.r4
    IL_01de:  ldc.r4     0.5
    IL_01e3:  add
    IL_01e4:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01e9:  call       instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_01ee:  ldloca.s   V_0
    IL_01f0:  ldloc.s    V_14
    IL_01f2:  call       instance bool [Engine]Engine.BoundingBox::Intersection(valuetype [Engine]Engine.BoundingBox)
    IL_01f7:  brfalse.s  IL_01fb

    IL_01f9:  ldc.i4.1
    IL_01fa:  ret

    IL_01fb:  ldloc.s    V_10
    IL_01fd:  ldc.i4.8
    IL_01fe:  and
    IL_01ff:  brfalse    IL_02a0

    IL_0204:  ldloca.s   V_15
    IL_0206:  ldloc.s    V_6
    IL_0208:  conv.r4
    IL_0209:  ldloc.s    V_7
    IL_020b:  conv.r4
    IL_020c:  ldloc.s    V_8
    IL_020e:  conv.r4
    IL_020f:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0214:  ldloc.s    V_6
    IL_0216:  conv.r4
    IL_0217:  ldc.r4     0.5
    IL_021c:  add
    IL_021d:  ldloc.s    V_7
    IL_021f:  ldc.i4.1
    IL_0220:  add
    IL_0221:  conv.r4
    IL_0222:  ldloc.s    V_8
    IL_0224:  ldc.i4.1
    IL_0225:  add
    IL_0226:  conv.r4
    IL_0227:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_022c:  call       instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0231:  ldloca.s   V_0
    IL_0233:  ldloc.s    V_15
    IL_0235:  call       instance bool [Engine]Engine.BoundingBox::Intersection(valuetype [Engine]Engine.BoundingBox)
    IL_023a:  brfalse.s  IL_02a0

    IL_023c:  ldc.i4.1
    IL_023d:  ret

    IL_023e:  ldloc.s    V_9
    IL_0240:  ldc.i4     0xd1
    IL_0245:  bne.un.s   IL_02a0

    IL_0247:  ldloc.s    V_10
    IL_0249:  ldc.i4.0
    IL_024a:  ble.s      IL_02a0

    IL_024c:  ldloca.s   V_16
    IL_024e:  ldloc.s    V_6
    IL_0250:  conv.r4
    IL_0251:  ldloc.s    V_7
    IL_0253:  conv.r4
    IL_0254:  ldloc.s    V_8
    IL_0256:  conv.r4
    IL_0257:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_025c:  ldc.r4     0.2
    IL_0261:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_0266:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_026b:  ldloc.s    V_6
    IL_026d:  ldc.i4.1
    IL_026e:  add
    IL_026f:  conv.r4
    IL_0270:  ldloc.s    V_7
    IL_0272:  ldc.i4.1
    IL_0273:  add
    IL_0274:  conv.r4
    IL_0275:  ldloc.s    V_8
    IL_0277:  ldc.i4.1
    IL_0278:  add
    IL_0279:  conv.r4
    IL_027a:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_027f:  ldc.r4     0.2
    IL_0284:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_0289:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_028e:  call       instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0293:  ldloca.s   V_0
    IL_0295:  ldloc.s    V_16
    IL_0297:  call       instance bool [Engine]Engine.BoundingBox::Intersection(valuetype [Engine]Engine.BoundingBox)
    IL_029c:  brfalse.s  IL_02a0

    IL_029e:  ldc.i4.1
    IL_029f:  ret

    IL_02a0:  ldloc.s    V_8
    IL_02a2:  ldc.i4.1
    IL_02a3:  add
    IL_02a4:  stloc.s    V_8
    IL_02a6:  ldloc.s    V_8
    IL_02a8:  ldloc.s    V_5
    IL_02aa:  ble        IL_00cc

    IL_02af:  ldloc.s    V_7
    IL_02b1:  ldc.i4.1
    IL_02b2:  add
    IL_02b3:  stloc.s    V_7
    IL_02b5:  ldloc.s    V_7
    IL_02b7:  ldloc.s    V_4
    IL_02b9:  ble        IL_00c4

    IL_02be:  ldloc.s    V_6
    IL_02c0:  ldc.i4.1
    IL_02c1:  add
    IL_02c2:  stloc.s    V_6
    IL_02c4:  ldloc.s    V_6
    IL_02c6:  ldloc.3
    IL_02c7:  ble        IL_00bc

    IL_02cc:  ldc.i4.0
    IL_02cd:  ret
  } // end of method ComponentOnFire::CheckIfBodyTouchesFire

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.ComponentOnFire::m_random
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_0011:  ret
  } // end of method ComponentOnFire::.ctor

  .property instance class Game.ComponentBody
          ComponentBody()
  {
    .get instance class Game.ComponentBody Game.ComponentOnFire::get_ComponentBody()
    .set instance void Game.ComponentOnFire::set_ComponentBody(class Game.ComponentBody)
  } // end of property ComponentOnFire::ComponentBody
  .property instance bool IsOnFire()
  {
    .get instance bool Game.ComponentOnFire::get_IsOnFire()
  } // end of property ComponentOnFire::IsOnFire
  .property instance bool TouchesFire()
  {
    .get instance bool Game.ComponentOnFire::get_TouchesFire()
    .set instance void Game.ComponentOnFire::set_TouchesFire(bool)
  } // end of property ComponentOnFire::TouchesFire
  .property instance class Game.ComponentCreature
          Attacker()
  {
    .get instance class Game.ComponentCreature Game.ComponentOnFire::get_Attacker()
    .set instance void Game.ComponentOnFire::set_Attacker(class Game.ComponentCreature)
  } // end of property ComponentOnFire::Attacker
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentOnFire::get_UpdateOrder()
  } // end of property ComponentOnFire::UpdateOrder
} // end of class Game.ComponentOnFire