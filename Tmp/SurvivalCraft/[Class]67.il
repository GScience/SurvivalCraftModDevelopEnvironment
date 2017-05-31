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
    // 代码大小       644 (0x284)
    .maxstack  7
    .locals init (valuetype [Engine]Engine.BoundingBox V_0,
             float32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       instance bool [EntitySystem]GameEntitySystem.Component::get_IsAddedToProject()
    IL_0006:  brtrue.s   IL_0009

    IL_0008:  ret

    IL_0009:  ldarg.0
    IL_000a:  call       instance bool Game.ComponentOnFire::get_IsOnFire()
    IL_000f:  brfalse    IL_018f

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
    IL_0132:  brfalse.s  IL_016c

    IL_0134:  ldarg.0
    IL_0135:  call       instance class Game.ComponentBody Game.ComponentOnFire::get_ComponentBody()
    IL_013a:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_013f:  ldarg.0
    IL_0140:  ldfld      class Game.SubsystemAudio Game.ComponentOnFire::m_subsystemAudio
    IL_0145:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemAudio::get_ListenerPosition()
    IL_014a:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_014f:  stloc.1
    IL_0150:  ldarg.0
    IL_0151:  ldarg.0
    IL_0152:  ldfld      class Game.SubsystemAudio Game.ComponentOnFire::m_subsystemAudio
    IL_0157:  ldloc.1
    IL_0158:  ldc.r4     2.
    IL_015d:  ldc.r4     5.
    IL_0162:  callvirt   instance float32 Game.SubsystemAudio::CalculateVolume(float32,
                                                                               float32,
                                                                               float32)
    IL_0167:  stfld      float32 Game.ComponentOnFire::m_soundVolume
    IL_016c:  ldarg.0
    IL_016d:  ldfld      class Game.SubsystemAmbientSounds Game.ComponentOnFire::m_subsystemAmbientSounds
    IL_0172:  ldarg.0
    IL_0173:  ldfld      class Game.SubsystemAmbientSounds Game.ComponentOnFire::m_subsystemAmbientSounds
    IL_0178:  callvirt   instance float32 Game.SubsystemAmbientSounds::get_FireSoundVolume()
    IL_017d:  ldarg.0
    IL_017e:  ldfld      float32 Game.ComponentOnFire::m_soundVolume
    IL_0183:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0188:  callvirt   instance void Game.SubsystemAmbientSounds::set_FireSoundVolume(float32)
    IL_018d:  br.s       IL_01b5

    IL_018f:  ldarg.0
    IL_0190:  ldfld      class Game.OnFireParticleSystem Game.ComponentOnFire::m_onFireParticleSystem
    IL_0195:  brfalse.s  IL_01aa

    IL_0197:  ldarg.0
    IL_0198:  ldfld      class Game.OnFireParticleSystem Game.ComponentOnFire::m_onFireParticleSystem
    IL_019d:  ldc.i4.1
    IL_019e:  callvirt   instance void Game.OnFireParticleSystem::set_IsStopped(bool)
    IL_01a3:  ldarg.0
    IL_01a4:  ldnull
    IL_01a5:  stfld      class Game.OnFireParticleSystem Game.ComponentOnFire::m_onFireParticleSystem
    IL_01aa:  ldarg.0
    IL_01ab:  ldc.r4     0.0
    IL_01b0:  stfld      float32 Game.ComponentOnFire::m_soundVolume
    IL_01b5:  ldarg.0
    IL_01b6:  ldfld      class Game.SubsystemTime Game.ComponentOnFire::m_subsystemTime
    IL_01bb:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_01c0:  ldarg.0
    IL_01c1:  ldfld      float64 Game.ComponentOnFire::m_nextCheckTime
    IL_01c6:  ble.un     IL_0283

    IL_01cb:  ldarg.0
    IL_01cc:  ldarg.0
    IL_01cd:  ldfld      class Game.SubsystemTime Game.ComponentOnFire::m_subsystemTime
    IL_01d2:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_01d7:  ldarg.0
    IL_01d8:  ldfld      class Game.Random Game.ComponentOnFire::m_random
    IL_01dd:  ldc.r4     0.89999998
    IL_01e2:  ldc.r4     1.1
    IL_01e7:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01ec:  conv.r8
    IL_01ed:  add
    IL_01ee:  stfld      float64 Game.ComponentOnFire::m_nextCheckTime
    IL_01f3:  ldarg.0
    IL_01f4:  ldarg.0
    IL_01f5:  call       instance bool Game.ComponentOnFire::CheckIfBodyTouchesFire()
    IL_01fa:  call       instance void Game.ComponentOnFire::set_TouchesFire(bool)
    IL_01ff:  ldarg.0
    IL_0200:  call       instance bool Game.ComponentOnFire::get_TouchesFire()
    IL_0205:  brfalse.s  IL_023c

    IL_0207:  ldarg.0
    IL_0208:  ldarg.0
    IL_0209:  ldfld      int32 Game.ComponentOnFire::m_fireTouchCount
    IL_020e:  ldc.i4.1
    IL_020f:  add
    IL_0210:  stfld      int32 Game.ComponentOnFire::m_fireTouchCount
    IL_0215:  ldarg.0
    IL_0216:  ldfld      int32 Game.ComponentOnFire::m_fireTouchCount
    IL_021b:  ldc.i4.5
    IL_021c:  blt.s      IL_0243

    IL_021e:  ldarg.0
    IL_021f:  ldnull
    IL_0220:  ldarg.0
    IL_0221:  ldfld      class Game.Random Game.ComponentOnFire::m_random
    IL_0226:  ldc.r4     12.
    IL_022b:  ldc.r4     15.
    IL_0230:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0235:  call       instance void Game.ComponentOnFire::SetOnFire(class Game.ComponentCreature,
                                                                       float32)
    IL_023a:  br.s       IL_0243

    IL_023c:  ldarg.0
    IL_023d:  ldc.i4.0
    IL_023e:  stfld      int32 Game.ComponentOnFire::m_fireTouchCount
    IL_0243:  ldarg.0
    IL_0244:  call       instance class Game.ComponentBody Game.ComponentOnFire::get_ComponentBody()
    IL_0249:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_024e:  ldc.r4     0.2
    IL_0253:  ble.un.s   IL_0283

    IL_0255:  ldarg.0
    IL_0256:  call       instance class Game.ComponentBody Game.ComponentOnFire::get_ComponentBody()
    IL_025b:  callvirt   instance class Game.FluidBlock Game.ComponentBody::get_ImmersionFluidBlock()
    IL_0260:  isinst     Game.MagmaBlock
    IL_0265:  brfalse.s  IL_0283

    IL_0267:  ldarg.0
    IL_0268:  ldnull
    IL_0269:  ldarg.0
    IL_026a:  ldfld      class Game.Random Game.ComponentOnFire::m_random
    IL_026f:  ldc.r4     12.
    IL_0274:  ldc.r4     15.
    IL_0279:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_027e:  call       instance void Game.ComponentOnFire::SetOnFire(class Game.ComponentCreature,
                                                                       float32)
    IL_0283:  ret
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
    // 代码大小       694 (0x2b6)
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
    IL_0059:  conv.i4
    IL_005a:  ldloc.0
    IL_005b:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0060:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0065:  conv.i4
    IL_0066:  stloc.1
    IL_0067:  ldloc.0
    IL_0068:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_006d:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0072:  conv.i4
    IL_0073:  stloc.2
    IL_0074:  ldloc.0
    IL_0075:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_007a:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_007f:  conv.i4
    IL_0080:  stloc.3
    IL_0081:  ldloc.0
    IL_0082:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0087:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_008c:  conv.i4
    IL_008d:  stloc.s    V_4
    IL_008f:  ldloc.0
    IL_0090:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0095:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_009a:  conv.i4
    IL_009b:  stloc.s    V_5
    IL_009d:  stloc.s    V_6
    IL_009f:  br         IL_02ac

    IL_00a4:  ldloc.1
    IL_00a5:  stloc.s    V_7
    IL_00a7:  br         IL_029d

    IL_00ac:  ldloc.2
    IL_00ad:  stloc.s    V_8
    IL_00af:  br         IL_028e

    IL_00b4:  ldarg.0
    IL_00b5:  ldfld      class Game.SubsystemTerrain Game.ComponentOnFire::m_subsystemTerrain
    IL_00ba:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00bf:  ldloc.s    V_6
    IL_00c1:  ldloc.s    V_7
    IL_00c3:  ldloc.s    V_8
    IL_00c5:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_00ca:  dup
    IL_00cb:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_00d0:  stloc.s    V_9
    IL_00d2:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_00d7:  stloc.s    V_10
    IL_00d9:  ldloc.s    V_9
    IL_00db:  ldc.i4.s   104
    IL_00dd:  bne.un     IL_0226

    IL_00e2:  ldloc.s    V_10
    IL_00e4:  brtrue.s   IL_011f

    IL_00e6:  ldloca.s   V_11
    IL_00e8:  ldloc.s    V_6
    IL_00ea:  conv.r4
    IL_00eb:  ldloc.s    V_7
    IL_00ed:  conv.r4
    IL_00ee:  ldloc.s    V_8
    IL_00f0:  conv.r4
    IL_00f1:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00f6:  ldloc.s    V_6
    IL_00f8:  ldc.i4.1
    IL_00f9:  add
    IL_00fa:  conv.r4
    IL_00fb:  ldloc.s    V_7
    IL_00fd:  ldc.i4.1
    IL_00fe:  add
    IL_00ff:  conv.r4
    IL_0100:  ldloc.s    V_8
    IL_0102:  ldc.i4.1
    IL_0103:  add
    IL_0104:  conv.r4
    IL_0105:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_010a:  call       instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_010f:  ldloca.s   V_0
    IL_0111:  ldloc.s    V_11
    IL_0113:  call       instance bool [Engine]Engine.BoundingBox::Intersection(valuetype [Engine]Engine.BoundingBox)
    IL_0118:  brfalse    IL_0288

    IL_011d:  ldc.i4.1
    IL_011e:  ret

    IL_011f:  ldloc.s    V_10
    IL_0121:  ldc.i4.1
    IL_0122:  and
    IL_0123:  brfalse.s  IL_0161

    IL_0125:  ldloca.s   V_12
    IL_0127:  ldloc.s    V_6
    IL_0129:  conv.r4
    IL_012a:  ldloc.s    V_7
    IL_012c:  conv.r4
    IL_012d:  ldloc.s    V_8
    IL_012f:  conv.r4
    IL_0130:  ldc.r4     0.5
    IL_0135:  add
    IL_0136:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_013b:  ldloc.s    V_6
    IL_013d:  ldc.i4.1
    IL_013e:  add
    IL_013f:  conv.r4
    IL_0140:  ldloc.s    V_7
    IL_0142:  ldc.i4.1
    IL_0143:  add
    IL_0144:  conv.r4
    IL_0145:  ldloc.s    V_8
    IL_0147:  ldc.i4.1
    IL_0148:  add
    IL_0149:  conv.r4
    IL_014a:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_014f:  call       instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0154:  ldloca.s   V_0
    IL_0156:  ldloc.s    V_12
    IL_0158:  call       instance bool [Engine]Engine.BoundingBox::Intersection(valuetype [Engine]Engine.BoundingBox)
    IL_015d:  brfalse.s  IL_0161

    IL_015f:  ldc.i4.1
    IL_0160:  ret

    IL_0161:  ldloc.s    V_10
    IL_0163:  ldc.i4.2
    IL_0164:  and
    IL_0165:  brfalse.s  IL_01a3

    IL_0167:  ldloca.s   V_13
    IL_0169:  ldloc.s    V_6
    IL_016b:  conv.r4
    IL_016c:  ldc.r4     0.5
    IL_0171:  add
    IL_0172:  ldloc.s    V_7
    IL_0174:  conv.r4
    IL_0175:  ldloc.s    V_8
    IL_0177:  conv.r4
    IL_0178:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_017d:  ldloc.s    V_6
    IL_017f:  ldc.i4.1
    IL_0180:  add
    IL_0181:  conv.r4
    IL_0182:  ldloc.s    V_7
    IL_0184:  ldc.i4.1
    IL_0185:  add
    IL_0186:  conv.r4
    IL_0187:  ldloc.s    V_8
    IL_0189:  ldc.i4.1
    IL_018a:  add
    IL_018b:  conv.r4
    IL_018c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0191:  call       instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0196:  ldloca.s   V_0
    IL_0198:  ldloc.s    V_13
    IL_019a:  call       instance bool [Engine]Engine.BoundingBox::Intersection(valuetype [Engine]Engine.BoundingBox)
    IL_019f:  brfalse.s  IL_01a3

    IL_01a1:  ldc.i4.1
    IL_01a2:  ret

    IL_01a3:  ldloc.s    V_10
    IL_01a5:  ldc.i4.4
    IL_01a6:  and
    IL_01a7:  brfalse.s  IL_01e3

    IL_01a9:  ldloca.s   V_14
    IL_01ab:  ldloc.s    V_6
    IL_01ad:  conv.r4
    IL_01ae:  ldloc.s    V_7
    IL_01b0:  conv.r4
    IL_01b1:  ldloc.s    V_8
    IL_01b3:  conv.r4
    IL_01b4:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01b9:  ldloc.s    V_6
    IL_01bb:  ldc.i4.1
    IL_01bc:  add
    IL_01bd:  conv.r4
    IL_01be:  ldloc.s    V_7
    IL_01c0:  ldc.i4.1
    IL_01c1:  add
    IL_01c2:  conv.r4
    IL_01c3:  ldloc.s    V_8
    IL_01c5:  conv.r4
    IL_01c6:  ldc.r4     0.5
    IL_01cb:  add
    IL_01cc:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01d1:  call       instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_01d6:  ldloca.s   V_0
    IL_01d8:  ldloc.s    V_14
    IL_01da:  call       instance bool [Engine]Engine.BoundingBox::Intersection(valuetype [Engine]Engine.BoundingBox)
    IL_01df:  brfalse.s  IL_01e3

    IL_01e1:  ldc.i4.1
    IL_01e2:  ret

    IL_01e3:  ldloc.s    V_10
    IL_01e5:  ldc.i4.8
    IL_01e6:  and
    IL_01e7:  brfalse    IL_0288

    IL_01ec:  ldloca.s   V_15
    IL_01ee:  ldloc.s    V_6
    IL_01f0:  conv.r4
    IL_01f1:  ldloc.s    V_7
    IL_01f3:  conv.r4
    IL_01f4:  ldloc.s    V_8
    IL_01f6:  conv.r4
    IL_01f7:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01fc:  ldloc.s    V_6
    IL_01fe:  conv.r4
    IL_01ff:  ldc.r4     0.5
    IL_0204:  add
    IL_0205:  ldloc.s    V_7
    IL_0207:  ldc.i4.1
    IL_0208:  add
    IL_0209:  conv.r4
    IL_020a:  ldloc.s    V_8
    IL_020c:  ldc.i4.1
    IL_020d:  add
    IL_020e:  conv.r4
    IL_020f:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0214:  call       instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0219:  ldloca.s   V_0
    IL_021b:  ldloc.s    V_15
    IL_021d:  call       instance bool [Engine]Engine.BoundingBox::Intersection(valuetype [Engine]Engine.BoundingBox)
    IL_0222:  brfalse.s  IL_0288

    IL_0224:  ldc.i4.1
    IL_0225:  ret

    IL_0226:  ldloc.s    V_9
    IL_0228:  ldc.i4     0xd1
    IL_022d:  bne.un.s   IL_0288

    IL_022f:  ldloc.s    V_10
    IL_0231:  ldc.i4.0
    IL_0232:  ble.s      IL_0288

    IL_0234:  ldloca.s   V_16
    IL_0236:  ldloc.s    V_6
    IL_0238:  conv.r4
    IL_0239:  ldloc.s    V_7
    IL_023b:  conv.r4
    IL_023c:  ldloc.s    V_8
    IL_023e:  conv.r4
    IL_023f:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0244:  ldc.r4     0.2
    IL_0249:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_024e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0253:  ldloc.s    V_6
    IL_0255:  ldc.i4.1
    IL_0256:  add
    IL_0257:  conv.r4
    IL_0258:  ldloc.s    V_7
    IL_025a:  ldc.i4.1
    IL_025b:  add
    IL_025c:  conv.r4
    IL_025d:  ldloc.s    V_8
    IL_025f:  ldc.i4.1
    IL_0260:  add
    IL_0261:  conv.r4
    IL_0262:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0267:  ldc.r4     0.2
    IL_026c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_0271:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0276:  call       instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_027b:  ldloca.s   V_0
    IL_027d:  ldloc.s    V_16
    IL_027f:  call       instance bool [Engine]Engine.BoundingBox::Intersection(valuetype [Engine]Engine.BoundingBox)
    IL_0284:  brfalse.s  IL_0288

    IL_0286:  ldc.i4.1
    IL_0287:  ret

    IL_0288:  ldloc.s    V_8
    IL_028a:  ldc.i4.1
    IL_028b:  add
    IL_028c:  stloc.s    V_8
    IL_028e:  ldloc.s    V_8
    IL_0290:  ldloc.s    V_5
    IL_0292:  ble        IL_00b4

    IL_0297:  ldloc.s    V_7
    IL_0299:  ldc.i4.1
    IL_029a:  add
    IL_029b:  stloc.s    V_7
    IL_029d:  ldloc.s    V_7
    IL_029f:  ldloc.s    V_4
    IL_02a1:  ble        IL_00ac

    IL_02a6:  ldloc.s    V_6
    IL_02a8:  ldc.i4.1
    IL_02a9:  add
    IL_02aa:  stloc.s    V_6
    IL_02ac:  ldloc.s    V_6
    IL_02ae:  ldloc.3
    IL_02af:  ble        IL_00a4

    IL_02b4:  ldc.i4.0
    IL_02b5:  ret
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