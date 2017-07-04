.class public auto ansi beforefieldinit Game.ComponentFlu
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IUpdateable
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass28_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public float32 injury
    .field public class Game.ComponentFlu '<>4__this'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass28_0'::.ctor

    .method assembly hidebysig instance void 
            '<FluEffect>b__0'() cil managed
    {
      // 代码大小       35 (0x23)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.ComponentFlu Game.ComponentFlu/'<>c__DisplayClass28_0'::'<>4__this'
      IL_0006:  ldfld      class Game.ComponentPlayer Game.ComponentFlu::m_componentPlayer
      IL_000b:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
      IL_0010:  ldarg.0
      IL_0011:  ldfld      float32 Game.ComponentFlu/'<>c__DisplayClass28_0'::injury
      IL_0016:  ldnull
      IL_0017:  ldc.i4.0
      IL_0018:  ldstr      "Flu"
      IL_001d:  callvirt   instance void Game.ComponentHealth::Injure(float32,
                                                                      class Game.ComponentCreature,
                                                                      bool,
                                                                      string)
      IL_0022:  ret
    } // end of method '<>c__DisplayClass28_0'::'<FluEffect>b__0'

  } // end of class '<>c__DisplayClass28_0'

  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.SubsystemParticles m_subsystemParticles
  .field private class Game.ComponentPlayer m_componentPlayer
  .field private class Game.Random m_random
  .field private float32 m_fluOnset
  .field private float32 m_fluDuration
  .field private float32 m_coughDuration
  .field private float32 m_sneezeDuration
  .field private float32 m_blackoutDuration
  .field private float32 m_blackoutFactor
  .field private float64 m_lastEffectTime
  .field private float64 m_lastCoughTime
  .field private float64 m_lastMessageTime
  .method public hidebysig specialname instance bool 
          get_HasFlu() cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentFlu::m_fluDuration
    IL_0006:  ldc.r4     0.0
    IL_000b:  cgt
    IL_000d:  ret
  } // end of method ComponentFlu::get_HasFlu

  .method public hidebysig specialname instance bool 
          get_IsCoughing() cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentFlu::m_coughDuration
    IL_0006:  ldc.r4     0.0
    IL_000b:  cgt
    IL_000d:  ret
  } // end of method ComponentFlu::get_IsCoughing

  .method public hidebysig instance void 
          StartFlu() cil managed
  {
    // 代码大小       94 (0x5e)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentFlu::m_fluDuration
    IL_0006:  ldc.r4     0.0
    IL_000b:  bne.un.s   IL_0026

    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.ComponentPlayer Game.ComponentFlu::m_componentPlayer
    IL_0013:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_0018:  dup
    IL_0019:  ldfld      int64 Game.PlayerStats::TimesHadFlu
    IL_001e:  ldc.i4.1
    IL_001f:  conv.i8
    IL_0020:  add
    IL_0021:  stfld      int64 Game.PlayerStats::TimesHadFlu
    IL_0026:  ldarg.0
    IL_0027:  ldc.r4     900.
    IL_002c:  stfld      float32 Game.ComponentFlu::m_fluDuration
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.SubsystemTime Game.ComponentFlu::m_subsystemTime
    IL_0037:  ldarg.0
    IL_0038:  ldfld      class Game.SubsystemTime Game.ComponentFlu::m_subsystemTime
    IL_003d:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0042:  ldc.r8     10.
    IL_004b:  add
    IL_004c:  ldarg.0
    IL_004d:  ldftn      instance void Game.ComponentFlu::'<StartFlu>b__20_0'()
    IL_0053:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0058:  callvirt   instance void Game.SubsystemTime::QueueGameTimeDelayedExecution(float64,
                                                                                         class [System.Runtime]System.Action)
    IL_005d:  ret
  } // end of method ComponentFlu::StartFlu

  .method public hidebysig instance void 
          Sneeze() cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     1.
    IL_0006:  stfld      float32 Game.ComponentFlu::m_sneezeDuration
    IL_000b:  ldarg.0
    IL_000c:  ldfld      class Game.ComponentPlayer Game.ComponentFlu::m_componentPlayer
    IL_0011:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_0016:  callvirt   instance void Game.ComponentCreatureSounds::PlaySneezeSound()
    IL_001b:  ret
  } // end of method ComponentFlu::Sneeze

  .method public hidebysig instance void 
          Cough() cil managed
  {
    // 代码大小       45 (0x2d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.SubsystemTime Game.ComponentFlu::m_subsystemTime
    IL_0007:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_000c:  stfld      float64 Game.ComponentFlu::m_lastCoughTime
    IL_0011:  ldarg.0
    IL_0012:  ldc.r4     4.
    IL_0017:  stfld      float32 Game.ComponentFlu::m_coughDuration
    IL_001c:  ldarg.0
    IL_001d:  ldfld      class Game.ComponentPlayer Game.ComponentFlu::m_componentPlayer
    IL_0022:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_0027:  callvirt   instance void Game.ComponentCreatureSounds::PlayCoughSound()
    IL_002c:  ret
  } // end of method ComponentFlu::Cough

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentFlu::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       1087 (0x43f)
    .maxstack  5
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             valuetype [Engine]Engine.Quaternion V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemGameInfo Game.ComponentFlu::m_subsystemGameInfo
    IL_0006:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_000b:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_0010:  brfalse.s  IL_0024

    IL_0012:  ldarg.0
    IL_0013:  ldfld      class Game.SubsystemGameInfo Game.ComponentFlu::m_subsystemGameInfo
    IL_0018:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_001d:  ldfld      bool Game.WorldSettings::AreAdventureSurvivalMechanicsEnabled
    IL_0022:  brtrue.s   IL_003b

    IL_0024:  ldarg.0
    IL_0025:  ldc.r4     0.0
    IL_002a:  stfld      float32 Game.ComponentFlu::m_fluDuration
    IL_002f:  ldarg.0
    IL_0030:  ldc.r4     0.0
    IL_0035:  stfld      float32 Game.ComponentFlu::m_fluOnset
    IL_003a:  ret

    IL_003b:  ldarg.0
    IL_003c:  ldfld      float32 Game.ComponentFlu::m_fluDuration
    IL_0041:  ldc.r4     0.0
    IL_0046:  ble.un     IL_014d

    IL_004b:  ldarg.0
    IL_004c:  ldc.r4     0.0
    IL_0051:  stfld      float32 Game.ComponentFlu::m_fluOnset
    IL_0056:  ldc.r4     1.
    IL_005b:  stloc.0
    IL_005c:  ldarg.0
    IL_005d:  ldfld      class Game.ComponentPlayer Game.ComponentFlu::m_componentPlayer
    IL_0062:  callvirt   instance class Game.ComponentVitalStats Game.ComponentPlayer::get_ComponentVitalStats()
    IL_0067:  callvirt   instance float32 Game.ComponentVitalStats::get_Temperature()
    IL_006c:  ldc.r4     16.
    IL_0071:  ble.un.s   IL_007b

    IL_0073:  ldc.r4     2.
    IL_0078:  stloc.0
    IL_0079:  br.s       IL_00b7

    IL_007b:  ldarg.0
    IL_007c:  ldfld      class Game.ComponentPlayer Game.ComponentFlu::m_componentPlayer
    IL_0081:  callvirt   instance class Game.ComponentVitalStats Game.ComponentPlayer::get_ComponentVitalStats()
    IL_0086:  callvirt   instance float32 Game.ComponentVitalStats::get_Temperature()
    IL_008b:  ldc.r4     12.
    IL_0090:  ble.un.s   IL_009a

    IL_0092:  ldc.r4     1.5
    IL_0097:  stloc.0
    IL_0098:  br.s       IL_00b7

    IL_009a:  ldarg.0
    IL_009b:  ldfld      class Game.ComponentPlayer Game.ComponentFlu::m_componentPlayer
    IL_00a0:  callvirt   instance class Game.ComponentVitalStats Game.ComponentPlayer::get_ComponentVitalStats()
    IL_00a5:  callvirt   instance float32 Game.ComponentVitalStats::get_Temperature()
    IL_00aa:  ldc.r4     8.
    IL_00af:  bge.un.s   IL_00b7

    IL_00b1:  ldc.r4     0.5
    IL_00b6:  stloc.0
    IL_00b7:  ldarg.0
    IL_00b8:  ldarg.0
    IL_00b9:  ldfld      float32 Game.ComponentFlu::m_fluDuration
    IL_00be:  ldloc.0
    IL_00bf:  ldarg.1
    IL_00c0:  mul
    IL_00c1:  sub
    IL_00c2:  ldc.r4     0.0
    IL_00c7:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_00cc:  stfld      float32 Game.ComponentFlu::m_fluDuration
    IL_00d1:  ldarg.0
    IL_00d2:  ldfld      class Game.ComponentPlayer Game.ComponentFlu::m_componentPlayer
    IL_00d7:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_00dc:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_00e1:  ldc.r4     0.0
    IL_00e6:  ble.un     IL_0257

    IL_00eb:  ldarg.0
    IL_00ec:  ldfld      class Game.ComponentPlayer Game.ComponentFlu::m_componentPlayer
    IL_00f1:  callvirt   instance class Game.ComponentSleep Game.ComponentPlayer::get_ComponentSleep()
    IL_00f6:  callvirt   instance bool Game.ComponentSleep::get_IsSleeping()
    IL_00fb:  brtrue     IL_0257

    IL_0100:  ldarg.0
    IL_0101:  ldfld      class Game.SubsystemTime Game.ComponentFlu::m_subsystemTime
    IL_0106:  ldc.r8     5.
    IL_010f:  ldc.r8     -9.9999997764825821e-003
    IL_0118:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_011d:  brfalse    IL_0257

    IL_0122:  ldarg.0
    IL_0123:  ldfld      class Game.SubsystemTime Game.ComponentFlu::m_subsystemTime
    IL_0128:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_012d:  ldarg.0
    IL_012e:  ldfld      float64 Game.ComponentFlu::m_lastEffectTime
    IL_0133:  sub
    IL_0134:  ldc.r8     13.
    IL_013d:  ble.un     IL_0257

    IL_0142:  ldarg.0
    IL_0143:  call       instance void Game.ComponentFlu::FluEffect()
    IL_0148:  br         IL_0257

    IL_014d:  ldarg.0
    IL_014e:  ldfld      class Game.ComponentPlayer Game.ComponentFlu::m_componentPlayer
    IL_0153:  callvirt   instance class Game.ComponentVitalStats Game.ComponentPlayer::get_ComponentVitalStats()
    IL_0158:  callvirt   instance float32 Game.ComponentVitalStats::get_Temperature()
    IL_015d:  ldc.r4     6.
    IL_0162:  bge.un     IL_024c

    IL_0167:  ldc.r4     13.
    IL_016c:  stloc.1
    IL_016d:  ldarg.0
    IL_016e:  ldarg.0
    IL_016f:  ldfld      float32 Game.ComponentFlu::m_fluOnset
    IL_0174:  ldarg.1
    IL_0175:  add
    IL_0176:  stfld      float32 Game.ComponentFlu::m_fluOnset
    IL_017b:  ldarg.0
    IL_017c:  ldfld      float32 Game.ComponentFlu::m_fluOnset
    IL_0181:  ldc.r4     90.
    IL_0186:  ble.un     IL_020d

    IL_018b:  ldc.r4     9.
    IL_0190:  stloc.1
    IL_0191:  ldarg.0
    IL_0192:  ldfld      class Game.SubsystemTime Game.ComponentFlu::m_subsystemTime
    IL_0197:  ldc.r8     1.
    IL_01a0:  ldc.r8     0.0
    IL_01a9:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_01ae:  brfalse.s  IL_01c8

    IL_01b0:  ldarg.0
    IL_01b1:  ldfld      class Game.Random Game.ComponentFlu::m_random
    IL_01b6:  ldc.r4     2.5e-002
    IL_01bb:  callvirt   instance bool Game.Random::Bool(float32)
    IL_01c0:  brfalse.s  IL_01c8

    IL_01c2:  ldarg.0
    IL_01c3:  call       instance void Game.ComponentFlu::StartFlu()
    IL_01c8:  ldarg.0
    IL_01c9:  ldfld      class Game.SubsystemTime Game.ComponentFlu::m_subsystemTime
    IL_01ce:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_01d3:  ldarg.0
    IL_01d4:  ldfld      float64 Game.ComponentFlu::m_lastMessageTime
    IL_01d9:  sub
    IL_01da:  ldc.r8     60.
    IL_01e3:  ble.un.s   IL_020d

    IL_01e5:  ldarg.0
    IL_01e6:  ldarg.0
    IL_01e7:  ldfld      class Game.SubsystemTime Game.ComponentFlu::m_subsystemTime
    IL_01ec:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_01f1:  stfld      float64 Game.ComponentFlu::m_lastMessageTime
    IL_01f6:  ldarg.0
    IL_01f7:  ldfld      class Game.ComponentPlayer Game.ComponentFlu::m_componentPlayer
    IL_01fc:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0201:  ldstr      "Get warm, you will get flu!"
    IL_0206:  ldc.i4.1
    IL_0207:  ldc.i4.1
    IL_0208:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_020d:  ldarg.0
    IL_020e:  ldfld      float32 Game.ComponentFlu::m_fluOnset
    IL_0213:  ldc.r4     50.
    IL_0218:  ble.un.s   IL_0257

    IL_021a:  ldarg.0
    IL_021b:  ldfld      class Game.SubsystemTime Game.ComponentFlu::m_subsystemTime
    IL_0220:  ldloc.1
    IL_0221:  conv.r8
    IL_0222:  ldc.r8     -9.9999997764825821e-003
    IL_022b:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_0230:  brfalse.s  IL_0257

    IL_0232:  ldarg.0
    IL_0233:  ldfld      class Game.Random Game.ComponentFlu::m_random
    IL_0238:  ldc.r4     0.75
    IL_023d:  callvirt   instance bool Game.Random::Bool(float32)
    IL_0242:  brfalse.s  IL_0257

    IL_0244:  ldarg.0
    IL_0245:  call       instance void Game.ComponentFlu::Sneeze()
    IL_024a:  br.s       IL_0257

    IL_024c:  ldarg.0
    IL_024d:  ldc.r4     0.0
    IL_0252:  stfld      float32 Game.ComponentFlu::m_fluOnset
    IL_0257:  ldarg.0
    IL_0258:  ldfld      float32 Game.ComponentFlu::m_coughDuration
    IL_025d:  ldc.r4     0.0
    IL_0262:  bgt.s      IL_0274

    IL_0264:  ldarg.0
    IL_0265:  ldfld      float32 Game.ComponentFlu::m_sneezeDuration
    IL_026a:  ldc.r4     0.0
    IL_026f:  ble.un     IL_03a3

    IL_0274:  ldarg.0
    IL_0275:  ldfld      class Game.ComponentPlayer Game.ComponentFlu::m_componentPlayer
    IL_027a:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_027f:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_0284:  ldc.r4     0.0
    IL_0289:  ble.un     IL_03a3

    IL_028e:  ldarg.0
    IL_028f:  ldfld      class Game.ComponentPlayer Game.ComponentFlu::m_componentPlayer
    IL_0294:  callvirt   instance class Game.ComponentSleep Game.ComponentPlayer::get_ComponentSleep()
    IL_0299:  callvirt   instance bool Game.ComponentSleep::get_IsSleeping()
    IL_029e:  brtrue     IL_03a3

    IL_02a3:  ldarg.0
    IL_02a4:  ldarg.0
    IL_02a5:  ldfld      float32 Game.ComponentFlu::m_coughDuration
    IL_02aa:  ldarg.1
    IL_02ab:  sub
    IL_02ac:  ldc.r4     0.0
    IL_02b1:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_02b6:  stfld      float32 Game.ComponentFlu::m_coughDuration
    IL_02bb:  ldarg.0
    IL_02bc:  ldarg.0
    IL_02bd:  ldfld      float32 Game.ComponentFlu::m_sneezeDuration
    IL_02c2:  ldarg.1
    IL_02c3:  sub
    IL_02c4:  ldc.r4     0.0
    IL_02c9:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_02ce:  stfld      float32 Game.ComponentFlu::m_sneezeDuration
    IL_02d3:  ldc.r4     -35.
    IL_02d8:  ldc.r4     -65.
    IL_02dd:  ldc.r4     4.
    IL_02e2:  ldarg.0
    IL_02e3:  ldfld      class Game.SubsystemTime Game.ComponentFlu::m_subsystemTime
    IL_02e8:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_02ed:  ldc.r8     10000.
    IL_02f6:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_02fb:  conv.r4
    IL_02fc:  mul
    IL_02fd:  call       float32 Game.SimplexNoise::Noise(float32)
    IL_0302:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0307:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_030c:  stloc.2
    IL_030d:  ldarg.0
    IL_030e:  ldfld      class Game.ComponentPlayer Game.ComponentFlu::m_componentPlayer
    IL_0313:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0318:  ldarg.0
    IL_0319:  ldfld      class Game.ComponentPlayer Game.ComponentFlu::m_componentPlayer
    IL_031e:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0323:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_LookOrder()
    IL_0328:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_032d:  ldloc.2
    IL_032e:  ldarg.0
    IL_032f:  ldfld      class Game.ComponentPlayer Game.ComponentFlu::m_componentPlayer
    IL_0334:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0339:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_LookAngles()
    IL_033e:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0343:  sub
    IL_0344:  ldc.r4     -3.
    IL_0349:  ldc.r4     3.
    IL_034e:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0353:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0358:  callvirt   instance void Game.ComponentLocomotion::set_LookOrder(valuetype [Engine]Engine.Vector2)
    IL_035d:  ldarg.0
    IL_035e:  ldfld      class Game.Random Game.ComponentFlu::m_random
    IL_0363:  ldc.r4     2.
    IL_0368:  ldarg.1
    IL_0369:  mul
    IL_036a:  callvirt   instance bool Game.Random::Bool(float32)
    IL_036f:  brfalse.s  IL_03a3

    IL_0371:  ldarg.0
    IL_0372:  ldfld      class Game.ComponentPlayer Game.ComponentFlu::m_componentPlayer
    IL_0377:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_037c:  ldc.r4     -1.2
    IL_0381:  ldarg.0
    IL_0382:  ldfld      class Game.ComponentPlayer Game.ComponentFlu::m_componentPlayer
    IL_0387:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_038c:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentCreatureModel::get_EyeRotation()
    IL_0391:  stloc.3
    IL_0392:  ldloca.s   V_3
    IL_0394:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Quaternion::ToForwardVector()
    IL_0399:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_039e:  callvirt   instance void Game.ComponentBody::ApplyImpulse(valuetype [Engine]Engine.Vector3)
    IL_03a3:  ldarg.0
    IL_03a4:  ldfld      float32 Game.ComponentFlu::m_blackoutDuration
    IL_03a9:  ldc.r4     0.0
    IL_03ae:  ble.un.s   IL_03e8

    IL_03b0:  ldarg.0
    IL_03b1:  ldarg.0
    IL_03b2:  ldfld      float32 Game.ComponentFlu::m_blackoutDuration
    IL_03b7:  ldarg.1
    IL_03b8:  sub
    IL_03b9:  ldc.r4     0.0
    IL_03be:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_03c3:  stfld      float32 Game.ComponentFlu::m_blackoutDuration
    IL_03c8:  ldarg.0
    IL_03c9:  ldarg.0
    IL_03ca:  ldfld      float32 Game.ComponentFlu::m_blackoutFactor
    IL_03cf:  ldc.r4     0.5
    IL_03d4:  ldarg.1
    IL_03d5:  mul
    IL_03d6:  add
    IL_03d7:  ldc.r4     0.94999999
    IL_03dc:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_03e1:  stfld      float32 Game.ComponentFlu::m_blackoutFactor
    IL_03e6:  br.s       IL_0413

    IL_03e8:  ldarg.0
    IL_03e9:  ldfld      float32 Game.ComponentFlu::m_blackoutFactor
    IL_03ee:  ldc.r4     0.0
    IL_03f3:  ble.un.s   IL_0413

    IL_03f5:  ldarg.0
    IL_03f6:  ldarg.0
    IL_03f7:  ldfld      float32 Game.ComponentFlu::m_blackoutFactor
    IL_03fc:  ldc.r4     0.5
    IL_0401:  ldarg.1
    IL_0402:  mul
    IL_0403:  sub
    IL_0404:  ldc.r4     0.0
    IL_0409:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_040e:  stfld      float32 Game.ComponentFlu::m_blackoutFactor
    IL_0413:  ldarg.0
    IL_0414:  ldfld      class Game.ComponentPlayer Game.ComponentFlu::m_componentPlayer
    IL_0419:  callvirt   instance class Game.ComponentScreenOverlays Game.ComponentPlayer::get_ComponentScreenOverlays()
    IL_041e:  ldarg.0
    IL_041f:  ldfld      float32 Game.ComponentFlu::m_blackoutFactor
    IL_0424:  ldarg.0
    IL_0425:  ldfld      class Game.ComponentPlayer Game.ComponentFlu::m_componentPlayer
    IL_042a:  callvirt   instance class Game.ComponentScreenOverlays Game.ComponentPlayer::get_ComponentScreenOverlays()
    IL_042f:  callvirt   instance float32 Game.ComponentScreenOverlays::get_BlackoutFactor()
    IL_0434:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0439:  callvirt   instance void Game.ComponentScreenOverlays::set_BlackoutFactor(float32)
    IL_043e:  ret
  } // end of method ComponentFlu::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       143 (0x8f)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_000d:  stfld      class Game.SubsystemGameInfo Game.ComponentFlu::m_subsystemGameInfo
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_001f:  stfld      class Game.SubsystemTerrain Game.ComponentFlu::m_subsystemTerrain
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_0031:  stfld      class Game.SubsystemTime Game.ComponentFlu::m_subsystemTime
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0043:  stfld      class Game.SubsystemAudio Game.ComponentFlu::m_subsystemAudio
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemParticles>(bool)
    IL_0055:  stfld      class Game.SubsystemParticles Game.ComponentFlu::m_subsystemParticles
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPlayer>(bool)
    IL_0067:  stfld      class Game.ComponentPlayer Game.ComponentFlu::m_componentPlayer
    IL_006c:  ldarg.0
    IL_006d:  ldarg.1
    IL_006e:  ldstr      "FluDuration"
    IL_0073:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0078:  stfld      float32 Game.ComponentFlu::m_fluDuration
    IL_007d:  ldarg.0
    IL_007e:  ldarg.1
    IL_007f:  ldstr      "FluOnset"
    IL_0084:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0089:  stfld      float32 Game.ComponentFlu::m_fluOnset
    IL_008e:  ret
  } // end of method ComponentFlu::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.EntityToIdMap entityToIdMap) cil managed
  {
    // 代码大小       35 (0x23)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "FluDuration"
    IL_0006:  ldarg.0
    IL_0007:  ldfld      float32 Game.ComponentFlu::m_fluDuration
    IL_000c:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float32>(string,
                                                                                                           !!0)
    IL_0011:  ldarg.1
    IL_0012:  ldstr      "FluOnset"
    IL_0017:  ldarg.0
    IL_0018:  ldfld      float32 Game.ComponentFlu::m_fluOnset
    IL_001d:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float32>(string,
                                                                                                           !!0)
    IL_0022:  ret
  } // end of method ComponentFlu::Save

  .method private hidebysig instance void 
          FluEffect() cil managed
  {
    // 代码大小       327 (0x147)
    .maxstack  4
    .locals init (class Game.ComponentFlu/'<>c__DisplayClass28_0' V_0)
    IL_0000:  newobj     instance void Game.ComponentFlu/'<>c__DisplayClass28_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class Game.ComponentFlu Game.ComponentFlu/'<>c__DisplayClass28_0'::'<>4__this'
    IL_000d:  ldarg.0
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Game.SubsystemTime Game.ComponentFlu::m_subsystemTime
    IL_0014:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0019:  stfld      float64 Game.ComponentFlu::m_lastEffectTime
    IL_001e:  ldarg.0
    IL_001f:  ldc.r4     4.
    IL_0024:  ldc.r4     2.
    IL_0029:  ldarg.0
    IL_002a:  ldfld      class Game.ComponentPlayer Game.ComponentFlu::m_componentPlayer
    IL_002f:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0034:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_0039:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_003e:  stfld      float32 Game.ComponentFlu::m_blackoutDuration
    IL_0043:  ldloc.0
    IL_0044:  ldc.r4     0.1
    IL_0049:  ldarg.0
    IL_004a:  ldfld      class Game.ComponentPlayer Game.ComponentFlu::m_componentPlayer
    IL_004f:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0054:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_0059:  ldc.r4     0.175
    IL_005e:  sub
    IL_005f:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0064:  stfld      float32 Game.ComponentFlu/'<>c__DisplayClass28_0'::injury
    IL_0069:  ldloc.0
    IL_006a:  ldfld      float32 Game.ComponentFlu/'<>c__DisplayClass28_0'::injury
    IL_006f:  ldc.r4     0.0
    IL_0074:  ble.un.s   IL_00a2

    IL_0076:  ldarg.0
    IL_0077:  ldfld      class Game.SubsystemTime Game.ComponentFlu::m_subsystemTime
    IL_007c:  ldarg.0
    IL_007d:  ldfld      class Game.SubsystemTime Game.ComponentFlu::m_subsystemTime
    IL_0082:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0087:  ldc.r8     0.75
    IL_0090:  add
    IL_0091:  ldloc.0
    IL_0092:  ldftn      instance void Game.ComponentFlu/'<>c__DisplayClass28_0'::'<FluEffect>b__0'()
    IL_0098:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_009d:  callvirt   instance void Game.SubsystemTime::QueueGameTimeDelayedExecution(float64,
                                                                                         class [System.Runtime]System.Action)
    IL_00a2:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_00a7:  ldarg.0
    IL_00a8:  ldfld      float64 Game.ComponentFlu::m_lastMessageTime
    IL_00ad:  sub
    IL_00ae:  ldc.r8     60.
    IL_00b7:  ble.un.s   IL_00f0

    IL_00b9:  ldarg.0
    IL_00ba:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_00bf:  stfld      float64 Game.ComponentFlu::m_lastMessageTime
    IL_00c4:  ldarg.0
    IL_00c5:  ldfld      class Game.SubsystemTime Game.ComponentFlu::m_subsystemTime
    IL_00ca:  ldarg.0
    IL_00cb:  ldfld      class Game.SubsystemTime Game.ComponentFlu::m_subsystemTime
    IL_00d0:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_00d5:  ldc.r8     1.5
    IL_00de:  add
    IL_00df:  ldarg.0
    IL_00e0:  ldftn      instance void Game.ComponentFlu::'<FluEffect>b__28_1'()
    IL_00e6:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00eb:  callvirt   instance void Game.SubsystemTime::QueueGameTimeDelayedExecution(float64,
                                                                                         class [System.Runtime]System.Action)
    IL_00f0:  ldarg.0
    IL_00f1:  ldfld      float32 Game.ComponentFlu::m_coughDuration
    IL_00f6:  ldc.r4     0.0
    IL_00fb:  bne.un.s   IL_0133

    IL_00fd:  ldarg.0
    IL_00fe:  ldfld      class Game.SubsystemTime Game.ComponentFlu::m_subsystemTime
    IL_0103:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0108:  ldarg.0
    IL_0109:  ldfld      float64 Game.ComponentFlu::m_lastCoughTime
    IL_010e:  sub
    IL_010f:  ldc.r8     40.
    IL_0118:  bgt.s      IL_012c

    IL_011a:  ldarg.0
    IL_011b:  ldfld      class Game.Random Game.ComponentFlu::m_random
    IL_0120:  ldc.r4     0.5
    IL_0125:  callvirt   instance bool Game.Random::Bool(float32)
    IL_012a:  brfalse.s  IL_0133

    IL_012c:  ldarg.0
    IL_012d:  call       instance void Game.ComponentFlu::Cough()
    IL_0132:  ret

    IL_0133:  ldarg.0
    IL_0134:  ldfld      float32 Game.ComponentFlu::m_sneezeDuration
    IL_0139:  ldc.r4     0.0
    IL_013e:  bne.un.s   IL_0146

    IL_0140:  ldarg.0
    IL_0141:  call       instance void Game.ComponentFlu::Sneeze()
    IL_0146:  ret
  } // end of method ComponentFlu::FluEffect

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       63 (0x3f)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.ComponentFlu::m_random
    IL_000b:  ldarg.0
    IL_000c:  ldc.r8     -1000.
    IL_0015:  stfld      float64 Game.ComponentFlu::m_lastEffectTime
    IL_001a:  ldarg.0
    IL_001b:  ldc.r8     -1000.
    IL_0024:  stfld      float64 Game.ComponentFlu::m_lastCoughTime
    IL_0029:  ldarg.0
    IL_002a:  ldc.r8     -1000.
    IL_0033:  stfld      float64 Game.ComponentFlu::m_lastMessageTime
    IL_0038:  ldarg.0
    IL_0039:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_003e:  ret
  } // end of method ComponentFlu::.ctor

  .method private hidebysig instance void 
          '<StartFlu>b__20_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentPlayer Game.ComponentFlu::m_componentPlayer
    IL_0006:  callvirt   instance class Game.ComponentVitalStats Game.ComponentPlayer::get_ComponentVitalStats()
    IL_000b:  ldc.r4     0.2
    IL_0010:  callvirt   instance void Game.ComponentVitalStats::MakeSleepy(float32)
    IL_0015:  ret
  } // end of method ComponentFlu::'<StartFlu>b__20_0'

  .method private hidebysig instance void 
          '<FluEffect>b__28_1'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       71 (0x47)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentPlayer Game.ComponentFlu::m_componentPlayer
    IL_0006:  callvirt   instance class Game.ComponentVitalStats Game.ComponentPlayer::get_ComponentVitalStats()
    IL_000b:  callvirt   instance float32 Game.ComponentVitalStats::get_Temperature()
    IL_0010:  ldc.r4     8.
    IL_0015:  bge.un.s   IL_002f

    IL_0017:  ldarg.0
    IL_0018:  ldfld      class Game.ComponentPlayer Game.ComponentFlu::m_componentPlayer
    IL_001d:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0022:  ldstr      "Get to warmth, you have flu!"
    IL_0027:  ldc.i4.1
    IL_0028:  ldc.i4.1
    IL_0029:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_002e:  ret

    IL_002f:  ldarg.0
    IL_0030:  ldfld      class Game.ComponentPlayer Game.ComponentFlu::m_componentPlayer
    IL_0035:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_003a:  ldstr      "You have flu, warmth is healing"
    IL_003f:  ldc.i4.1
    IL_0040:  ldc.i4.1
    IL_0041:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0046:  ret
  } // end of method ComponentFlu::'<FluEffect>b__28_1'

  .property instance bool HasFlu()
  {
    .get instance bool Game.ComponentFlu::get_HasFlu()
  } // end of property ComponentFlu::HasFlu
  .property instance bool IsCoughing()
  {
    .get instance bool Game.ComponentFlu::get_IsCoughing()
  } // end of property ComponentFlu::IsCoughing
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentFlu::get_UpdateOrder()
  } // end of property ComponentFlu::UpdateOrder
} // end of class Game.ComponentFlu