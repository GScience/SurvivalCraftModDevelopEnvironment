.class public auto ansi beforefieldinit Game.ComponentSickness
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IUpdateable
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass19_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public float32 injury
    .field public class Game.ComponentSickness '<>4__this'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass19_0'::.ctor

    .method assembly hidebysig instance void 
            '<NauseaEffect>b__0'() cil managed
    {
      // 代码大小       35 (0x23)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.ComponentSickness Game.ComponentSickness/'<>c__DisplayClass19_0'::'<>4__this'
      IL_0006:  ldfld      class Game.ComponentPlayer Game.ComponentSickness::m_componentPlayer
      IL_000b:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
      IL_0010:  ldarg.0
      IL_0011:  ldfld      float32 Game.ComponentSickness/'<>c__DisplayClass19_0'::injury
      IL_0016:  ldnull
      IL_0017:  ldc.i4.0
      IL_0018:  ldstr      "Sickness"
      IL_001d:  callvirt   instance void Game.ComponentHealth::Injure(float32,
                                                                      class Game.ComponentCreature,
                                                                      bool,
                                                                      string)
      IL_0022:  ret
    } // end of method '<>c__DisplayClass19_0'::'<NauseaEffect>b__0'

  } // end of class '<>c__DisplayClass19_0'

  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.SubsystemParticles m_subsystemParticles
  .field private class Game.ComponentPlayer m_componentPlayer
  .field private class Game.Random m_random
  .field private class Game.PukeParticleSystem m_pukeParticleSystem
  .field private float32 m_sicknessDuration
  .field private float32 m_greenoutDuration
  .field private float32 m_greenoutFactor
  .field private valuetype [System.Runtime]System.Nullable`1<float64> m_lastNauseaTime
  .field private valuetype [System.Runtime]System.Nullable`1<float64> m_lastMessageTime
  .field private valuetype [System.Runtime]System.Nullable`1<float64> m_lastPukeTime
  .method public hidebysig specialname instance bool 
          get_IsSick() cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentSickness::m_sicknessDuration
    IL_0006:  ldc.r4     0.0
    IL_000b:  cgt
    IL_000d:  ret
  } // end of method ComponentSickness::get_IsSick

  .method public hidebysig specialname instance bool 
          get_IsPuking() cil managed
  {
    // 代码大小       10 (0xa)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.PukeParticleSystem Game.ComponentSickness::m_pukeParticleSystem
    IL_0006:  ldnull
    IL_0007:  cgt.un
    IL_0009:  ret
  } // end of method ComponentSickness::get_IsPuking

  .method public hidebysig instance void 
          StartSickness() cil managed
  {
    // 代码大小       50 (0x32)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentSickness::m_sicknessDuration
    IL_0006:  ldc.r4     0.0
    IL_000b:  bne.un.s   IL_0026

    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.ComponentPlayer Game.ComponentSickness::m_componentPlayer
    IL_0013:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_0018:  dup
    IL_0019:  ldfld      int64 Game.PlayerStats::TimesWasSick
    IL_001e:  ldc.i4.1
    IL_001f:  conv.i8
    IL_0020:  add
    IL_0021:  stfld      int64 Game.PlayerStats::TimesWasSick
    IL_0026:  ldarg.0
    IL_0027:  ldc.r4     900.
    IL_002c:  stfld      float32 Game.ComponentSickness::m_sicknessDuration
    IL_0031:  ret
  } // end of method ComponentSickness::StartSickness

  .method public hidebysig instance void 
          NauseaEffect() cil managed
  {
    // 代码大小       548 (0x224)
    .maxstack  4
    .locals init (class Game.ComponentSickness/'<>c__DisplayClass19_0' V_0,
             valuetype [System.Runtime]System.Nullable`1<float64> V_1,
             float64 V_2,
             float64 V_3,
             valuetype [System.Runtime]System.Nullable`1<float64> V_4,
             valuetype [System.Runtime]System.Nullable`1<float64> V_5)
    IL_0000:  newobj     instance void Game.ComponentSickness/'<>c__DisplayClass19_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class Game.ComponentSickness Game.ComponentSickness/'<>c__DisplayClass19_0'::'<>4__this'
    IL_000d:  ldarg.0
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Game.SubsystemTime Game.ComponentSickness::m_subsystemTime
    IL_0014:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0019:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_001e:  stfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSickness::m_lastNauseaTime
    IL_0023:  ldarg.0
    IL_0024:  ldfld      class Game.ComponentPlayer Game.ComponentSickness::m_componentPlayer
    IL_0029:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_002e:  callvirt   instance void Game.ComponentCreatureSounds::PlayMoanSound()
    IL_0033:  ldloc.0
    IL_0034:  ldc.r4     0.1
    IL_0039:  ldarg.0
    IL_003a:  ldfld      class Game.ComponentPlayer Game.ComponentSickness::m_componentPlayer
    IL_003f:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0044:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_0049:  ldc.r4     7.5000003e-002
    IL_004e:  sub
    IL_004f:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0054:  stfld      float32 Game.ComponentSickness/'<>c__DisplayClass19_0'::injury
    IL_0059:  ldloc.0
    IL_005a:  ldfld      float32 Game.ComponentSickness/'<>c__DisplayClass19_0'::injury
    IL_005f:  ldc.r4     0.0
    IL_0064:  ble.un.s   IL_0092

    IL_0066:  ldarg.0
    IL_0067:  ldfld      class Game.SubsystemTime Game.ComponentSickness::m_subsystemTime
    IL_006c:  ldarg.0
    IL_006d:  ldfld      class Game.SubsystemTime Game.ComponentSickness::m_subsystemTime
    IL_0072:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0077:  ldc.r8     0.75
    IL_0080:  add
    IL_0081:  ldloc.0
    IL_0082:  ldftn      instance void Game.ComponentSickness/'<>c__DisplayClass19_0'::'<NauseaEffect>b__0'()
    IL_0088:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_008d:  callvirt   instance void Game.SubsystemTime::QueueGameTimeDelayedExecution(float64,
                                                                                         class [System.Runtime]System.Action)
    IL_0092:  ldarg.0
    IL_0093:  ldfld      class Game.PukeParticleSystem Game.ComponentSickness::m_pukeParticleSystem
    IL_0098:  brtrue     IL_0169

    IL_009d:  ldarg.0
    IL_009e:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSickness::m_lastPukeTime
    IL_00a3:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_00a8:  brfalse.s  IL_00fc

    IL_00aa:  ldarg.0
    IL_00ab:  ldfld      class Game.SubsystemTime Game.ComponentSickness::m_subsystemTime
    IL_00b0:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_00b5:  stloc.3
    IL_00b6:  ldarg.0
    IL_00b7:  ldfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSickness::m_lastPukeTime
    IL_00bc:  stloc.s    V_4
    IL_00be:  ldloca.s   V_4
    IL_00c0:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_00c5:  brtrue.s   IL_00d3

    IL_00c7:  ldloca.s   V_5
    IL_00c9:  initobj    valuetype [System.Runtime]System.Nullable`1<float64>
    IL_00cf:  ldloc.s    V_5
    IL_00d1:  br.s       IL_00e1

    IL_00d3:  ldloc.3
    IL_00d4:  ldloca.s   V_4
    IL_00d6:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::GetValueOrDefault()
    IL_00db:  sub
    IL_00dc:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_00e1:  stloc.1
    IL_00e2:  ldc.i4.s   50
    IL_00e4:  conv.r8
    IL_00e5:  stloc.2
    IL_00e6:  ldloca.s   V_1
    IL_00e8:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::GetValueOrDefault()
    IL_00ed:  ldloc.2
    IL_00ee:  bgt.s      IL_00f3

    IL_00f0:  ldc.i4.0
    IL_00f1:  br.s       IL_00fa

    IL_00f3:  ldloca.s   V_1
    IL_00f5:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_00fa:  brfalse.s  IL_0169

    IL_00fc:  ldarg.0
    IL_00fd:  ldarg.0
    IL_00fe:  ldfld      class Game.SubsystemTime Game.ComponentSickness::m_subsystemTime
    IL_0103:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0108:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_010d:  stfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSickness::m_lastPukeTime
    IL_0112:  ldarg.0
    IL_0113:  ldarg.0
    IL_0114:  ldfld      class Game.SubsystemTerrain Game.ComponentSickness::m_subsystemTerrain
    IL_0119:  newobj     instance void Game.PukeParticleSystem::.ctor(class Game.SubsystemTerrain)
    IL_011e:  stfld      class Game.PukeParticleSystem Game.ComponentSickness::m_pukeParticleSystem
    IL_0123:  ldarg.0
    IL_0124:  ldfld      class Game.SubsystemParticles Game.ComponentSickness::m_subsystemParticles
    IL_0129:  ldarg.0
    IL_012a:  ldfld      class Game.PukeParticleSystem Game.ComponentSickness::m_pukeParticleSystem
    IL_012f:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
    IL_0134:  ldarg.0
    IL_0135:  ldfld      class Game.ComponentPlayer Game.ComponentSickness::m_componentPlayer
    IL_013a:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_013f:  callvirt   instance void Game.ComponentCreatureSounds::PlayPukeSound()
    IL_0144:  ldarg.0
    IL_0145:  ldc.r4     0.80000001
    IL_014a:  stfld      float32 Game.ComponentSickness::m_greenoutDuration
    IL_014f:  ldarg.0
    IL_0150:  ldfld      class Game.ComponentPlayer Game.ComponentSickness::m_componentPlayer
    IL_0155:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_015a:  dup
    IL_015b:  ldfld      int64 Game.PlayerStats::TimesPuked
    IL_0160:  ldc.i4.1
    IL_0161:  conv.i8
    IL_0162:  add
    IL_0163:  stfld      int64 Game.PlayerStats::TimesPuked
    IL_0168:  ret

    IL_0169:  ldarg.0
    IL_016a:  ldc.r4     4.
    IL_016f:  ldc.r4     2.
    IL_0174:  ldarg.0
    IL_0175:  ldfld      class Game.ComponentPlayer Game.ComponentSickness::m_componentPlayer
    IL_017a:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_017f:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_0184:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0189:  stfld      float32 Game.ComponentSickness::m_greenoutDuration
    IL_018e:  ldarg.0
    IL_018f:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSickness::m_lastMessageTime
    IL_0194:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_0199:  brfalse.s  IL_01e7

    IL_019b:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_01a0:  stloc.3
    IL_01a1:  ldarg.0
    IL_01a2:  ldfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSickness::m_lastMessageTime
    IL_01a7:  stloc.s    V_4
    IL_01a9:  ldloca.s   V_4
    IL_01ab:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_01b0:  brtrue.s   IL_01be

    IL_01b2:  ldloca.s   V_5
    IL_01b4:  initobj    valuetype [System.Runtime]System.Nullable`1<float64>
    IL_01ba:  ldloc.s    V_5
    IL_01bc:  br.s       IL_01cc

    IL_01be:  ldloc.3
    IL_01bf:  ldloca.s   V_4
    IL_01c1:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::GetValueOrDefault()
    IL_01c6:  sub
    IL_01c7:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_01cc:  stloc.1
    IL_01cd:  ldc.i4.s   60
    IL_01cf:  conv.r8
    IL_01d0:  stloc.2
    IL_01d1:  ldloca.s   V_1
    IL_01d3:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::GetValueOrDefault()
    IL_01d8:  ldloc.2
    IL_01d9:  bgt.s      IL_01de

    IL_01db:  ldc.i4.0
    IL_01dc:  br.s       IL_01e5

    IL_01de:  ldloca.s   V_1
    IL_01e0:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_01e5:  brfalse.s  IL_0223

    IL_01e7:  ldarg.0
    IL_01e8:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_01ed:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_01f2:  stfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSickness::m_lastMessageTime
    IL_01f7:  ldarg.0
    IL_01f8:  ldfld      class Game.SubsystemTime Game.ComponentSickness::m_subsystemTime
    IL_01fd:  ldarg.0
    IL_01fe:  ldfld      class Game.SubsystemTime Game.ComponentSickness::m_subsystemTime
    IL_0203:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0208:  ldc.r8     1.5
    IL_0211:  add
    IL_0212:  ldarg.0
    IL_0213:  ldftn      instance void Game.ComponentSickness::'<NauseaEffect>b__19_1'()
    IL_0219:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_021e:  callvirt   instance void Game.SubsystemTime::QueueGameTimeDelayedExecution(float64,
                                                                                         class [System.Runtime]System.Action)
    IL_0223:  ret
  } // end of method ComponentSickness::NauseaEffect

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentSickness::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       743 (0x2e7)
    .maxstack  5
    .locals init (valuetype [System.Runtime]System.Nullable`1<float64> V_0,
             float64 V_1,
             float64 V_2,
             valuetype [System.Runtime]System.Nullable`1<float64> V_3,
             valuetype [System.Runtime]System.Nullable`1<float64> V_4,
             float32 V_5,
             valuetype [Engine]Engine.Vector3 V_6,
             valuetype [Engine]Engine.Vector3 V_7,
             valuetype [Engine]Engine.Quaternion V_8)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemGameInfo Game.ComponentSickness::m_subsystemGameInfo
    IL_0006:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_000b:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_0010:  brfalse.s  IL_0024

    IL_0012:  ldarg.0
    IL_0013:  ldfld      class Game.SubsystemGameInfo Game.ComponentSickness::m_subsystemGameInfo
    IL_0018:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_001d:  ldfld      bool Game.WorldSettings::AreAdventureSurvivalMechanicsEnabled
    IL_0022:  brtrue.s   IL_0030

    IL_0024:  ldarg.0
    IL_0025:  ldc.r4     0.0
    IL_002a:  stfld      float32 Game.ComponentSickness::m_sicknessDuration
    IL_002f:  ret

    IL_0030:  ldarg.0
    IL_0031:  ldfld      float32 Game.ComponentSickness::m_sicknessDuration
    IL_0036:  ldc.r4     0.0
    IL_003b:  ble.un     IL_010a

    IL_0040:  ldarg.0
    IL_0041:  ldarg.0
    IL_0042:  ldfld      float32 Game.ComponentSickness::m_sicknessDuration
    IL_0047:  ldarg.1
    IL_0048:  sub
    IL_0049:  ldc.r4     0.0
    IL_004e:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0053:  stfld      float32 Game.ComponentSickness::m_sicknessDuration
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.ComponentPlayer Game.ComponentSickness::m_componentPlayer
    IL_005e:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0063:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_0068:  ldc.r4     0.0
    IL_006d:  ble.un     IL_010a

    IL_0072:  ldarg.0
    IL_0073:  ldfld      class Game.ComponentPlayer Game.ComponentSickness::m_componentPlayer
    IL_0078:  callvirt   instance class Game.ComponentSleep Game.ComponentPlayer::get_ComponentSleep()
    IL_007d:  callvirt   instance bool Game.ComponentSleep::get_IsSleeping()
    IL_0082:  brtrue     IL_010a

    IL_0087:  ldarg.0
    IL_0088:  ldfld      class Game.SubsystemTime Game.ComponentSickness::m_subsystemTime
    IL_008d:  ldc.r8     3.
    IL_0096:  ldc.r8     -9.9999997764825821e-003
    IL_009f:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_00a4:  brfalse.s  IL_010a

    IL_00a6:  ldarg.0
    IL_00a7:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSickness::m_lastNauseaTime
    IL_00ac:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_00b1:  brfalse.s  IL_0104

    IL_00b3:  ldarg.0
    IL_00b4:  ldfld      class Game.SubsystemTime Game.ComponentSickness::m_subsystemTime
    IL_00b9:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_00be:  stloc.2
    IL_00bf:  ldarg.0
    IL_00c0:  ldfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSickness::m_lastNauseaTime
    IL_00c5:  stloc.3
    IL_00c6:  ldloca.s   V_3
    IL_00c8:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_00cd:  brtrue.s   IL_00db

    IL_00cf:  ldloca.s   V_4
    IL_00d1:  initobj    valuetype [System.Runtime]System.Nullable`1<float64>
    IL_00d7:  ldloc.s    V_4
    IL_00d9:  br.s       IL_00e9

    IL_00db:  ldloc.2
    IL_00dc:  ldloca.s   V_3
    IL_00de:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::GetValueOrDefault()
    IL_00e3:  sub
    IL_00e4:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_00e9:  stloc.0
    IL_00ea:  ldc.i4.s   15
    IL_00ec:  conv.r8
    IL_00ed:  stloc.1
    IL_00ee:  ldloca.s   V_0
    IL_00f0:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::GetValueOrDefault()
    IL_00f5:  ldloc.1
    IL_00f6:  bgt.s      IL_00fb

    IL_00f8:  ldc.i4.0
    IL_00f9:  br.s       IL_0102

    IL_00fb:  ldloca.s   V_0
    IL_00fd:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_0102:  brfalse.s  IL_010a

    IL_0104:  ldarg.0
    IL_0105:  call       instance void Game.ComponentSickness::NauseaEffect()
    IL_010a:  ldarg.0
    IL_010b:  ldfld      class Game.PukeParticleSystem Game.ComponentSickness::m_pukeParticleSystem
    IL_0110:  brfalse    IL_024b

    IL_0115:  ldc.r4     -35.
    IL_011a:  ldc.r4     -60.
    IL_011f:  ldc.r4     2.
    IL_0124:  ldarg.0
    IL_0125:  ldfld      class Game.SubsystemTime Game.ComponentSickness::m_subsystemTime
    IL_012a:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_012f:  ldc.r8     10000.
    IL_0138:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_013d:  conv.r4
    IL_013e:  mul
    IL_013f:  call       float32 Game.SimplexNoise::Noise(float32)
    IL_0144:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0149:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_014e:  stloc.s    V_5
    IL_0150:  ldarg.0
    IL_0151:  ldfld      class Game.ComponentPlayer Game.ComponentSickness::m_componentPlayer
    IL_0156:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_015b:  ldarg.0
    IL_015c:  ldfld      class Game.ComponentPlayer Game.ComponentSickness::m_componentPlayer
    IL_0161:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0166:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_LookOrder()
    IL_016b:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0170:  ldloc.s    V_5
    IL_0172:  ldarg.0
    IL_0173:  ldfld      class Game.ComponentPlayer Game.ComponentSickness::m_componentPlayer
    IL_0178:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_017d:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_LookAngles()
    IL_0182:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0187:  sub
    IL_0188:  ldc.r4     -2.
    IL_018d:  ldc.r4     2.
    IL_0192:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0197:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_019c:  callvirt   instance void Game.ComponentLocomotion::set_LookOrder(valuetype [Engine]Engine.Vector2)
    IL_01a1:  ldarg.0
    IL_01a2:  ldfld      class Game.ComponentPlayer Game.ComponentSickness::m_componentPlayer
    IL_01a7:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_01ac:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentCreatureModel::get_EyeRotation()
    IL_01b1:  stloc.s    V_8
    IL_01b3:  ldloca.s   V_8
    IL_01b5:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Quaternion::ToUpVector()
    IL_01ba:  stloc.s    V_6
    IL_01bc:  ldarg.0
    IL_01bd:  ldfld      class Game.ComponentPlayer Game.ComponentSickness::m_componentPlayer
    IL_01c2:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_01c7:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentCreatureModel::get_EyeRotation()
    IL_01cc:  stloc.s    V_8
    IL_01ce:  ldloca.s   V_8
    IL_01d0:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Quaternion::ToForwardVector()
    IL_01d5:  stloc.s    V_7
    IL_01d7:  ldarg.0
    IL_01d8:  ldfld      class Game.PukeParticleSystem Game.ComponentSickness::m_pukeParticleSystem
    IL_01dd:  ldarg.0
    IL_01de:  ldfld      class Game.ComponentPlayer Game.ComponentSickness::m_componentPlayer
    IL_01e3:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_01e8:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_01ed:  ldc.r4     7.9999998e-002
    IL_01f2:  ldloc.s    V_6
    IL_01f4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01f9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_01fe:  ldc.r4     0.30000001
    IL_0203:  ldloc.s    V_7
    IL_0205:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_020a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_020f:  callvirt   instance void Game.PukeParticleSystem::set_Position(valuetype [Engine]Engine.Vector3)
    IL_0214:  ldarg.0
    IL_0215:  ldfld      class Game.PukeParticleSystem Game.ComponentSickness::m_pukeParticleSystem
    IL_021a:  ldloc.s    V_7
    IL_021c:  ldc.r4     0.5
    IL_0221:  ldloc.s    V_6
    IL_0223:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0228:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_022d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0232:  callvirt   instance void Game.PukeParticleSystem::set_Direction(valuetype [Engine]Engine.Vector3)
    IL_0237:  ldarg.0
    IL_0238:  ldfld      class Game.PukeParticleSystem Game.ComponentSickness::m_pukeParticleSystem
    IL_023d:  callvirt   instance bool Game.PukeParticleSystem::get_IsStopped()
    IL_0242:  brfalse.s  IL_024b

    IL_0244:  ldarg.0
    IL_0245:  ldnull
    IL_0246:  stfld      class Game.PukeParticleSystem Game.ComponentSickness::m_pukeParticleSystem
    IL_024b:  ldarg.0
    IL_024c:  ldfld      float32 Game.ComponentSickness::m_greenoutDuration
    IL_0251:  ldc.r4     0.0
    IL_0256:  ble.un.s   IL_0290

    IL_0258:  ldarg.0
    IL_0259:  ldarg.0
    IL_025a:  ldfld      float32 Game.ComponentSickness::m_greenoutDuration
    IL_025f:  ldarg.1
    IL_0260:  sub
    IL_0261:  ldc.r4     0.0
    IL_0266:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_026b:  stfld      float32 Game.ComponentSickness::m_greenoutDuration
    IL_0270:  ldarg.0
    IL_0271:  ldarg.0
    IL_0272:  ldfld      float32 Game.ComponentSickness::m_greenoutFactor
    IL_0277:  ldc.r4     0.5
    IL_027c:  ldarg.1
    IL_027d:  mul
    IL_027e:  add
    IL_027f:  ldc.r4     0.94999999
    IL_0284:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0289:  stfld      float32 Game.ComponentSickness::m_greenoutFactor
    IL_028e:  br.s       IL_02bb

    IL_0290:  ldarg.0
    IL_0291:  ldfld      float32 Game.ComponentSickness::m_greenoutFactor
    IL_0296:  ldc.r4     0.0
    IL_029b:  ble.un.s   IL_02bb

    IL_029d:  ldarg.0
    IL_029e:  ldarg.0
    IL_029f:  ldfld      float32 Game.ComponentSickness::m_greenoutFactor
    IL_02a4:  ldc.r4     0.5
    IL_02a9:  ldarg.1
    IL_02aa:  mul
    IL_02ab:  sub
    IL_02ac:  ldc.r4     0.0
    IL_02b1:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_02b6:  stfld      float32 Game.ComponentSickness::m_greenoutFactor
    IL_02bb:  ldarg.0
    IL_02bc:  ldfld      class Game.ComponentPlayer Game.ComponentSickness::m_componentPlayer
    IL_02c1:  callvirt   instance class Game.ComponentScreenOverlays Game.ComponentPlayer::get_ComponentScreenOverlays()
    IL_02c6:  ldarg.0
    IL_02c7:  ldfld      float32 Game.ComponentSickness::m_greenoutFactor
    IL_02cc:  ldarg.0
    IL_02cd:  ldfld      class Game.ComponentPlayer Game.ComponentSickness::m_componentPlayer
    IL_02d2:  callvirt   instance class Game.ComponentScreenOverlays Game.ComponentPlayer::get_ComponentScreenOverlays()
    IL_02d7:  callvirt   instance float32 Game.ComponentScreenOverlays::get_GreenoutFactor()
    IL_02dc:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_02e1:  callvirt   instance void Game.ComponentScreenOverlays::set_GreenoutFactor(float32)
    IL_02e6:  ret
  } // end of method ComponentSickness::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       126 (0x7e)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_000d:  stfld      class Game.SubsystemGameInfo Game.ComponentSickness::m_subsystemGameInfo
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_001f:  stfld      class Game.SubsystemTerrain Game.ComponentSickness::m_subsystemTerrain
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_0031:  stfld      class Game.SubsystemTime Game.ComponentSickness::m_subsystemTime
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0043:  stfld      class Game.SubsystemAudio Game.ComponentSickness::m_subsystemAudio
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemParticles>(bool)
    IL_0055:  stfld      class Game.SubsystemParticles Game.ComponentSickness::m_subsystemParticles
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPlayer>(bool)
    IL_0067:  stfld      class Game.ComponentPlayer Game.ComponentSickness::m_componentPlayer
    IL_006c:  ldarg.0
    IL_006d:  ldarg.1
    IL_006e:  ldstr      "SicknessDuration"
    IL_0073:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0078:  stfld      float32 Game.ComponentSickness::m_sicknessDuration
    IL_007d:  ret
  } // end of method ComponentSickness::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.EntityToIdMap entityToIdMap) cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "SicknessDuration"
    IL_0006:  ldarg.0
    IL_0007:  ldfld      float32 Game.ComponentSickness::m_sicknessDuration
    IL_000c:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float32>(string,
                                                                                                           !!0)
    IL_0011:  ret
  } // end of method ComponentSickness::Save

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.ComponentSickness::m_random
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_0011:  ret
  } // end of method ComponentSickness::.ctor

  .method private hidebysig instance void 
          '<NauseaEffect>b__19_1'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentPlayer Game.ComponentSickness::m_componentPlayer
    IL_0006:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_000b:  ldstr      "You feel nauseous"
    IL_0010:  ldc.i4.1
    IL_0011:  ldc.i4.1
    IL_0012:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0017:  ret
  } // end of method ComponentSickness::'<NauseaEffect>b__19_1'

  .property instance bool IsSick()
  {
    .get instance bool Game.ComponentSickness::get_IsSick()
  } // end of property ComponentSickness::IsSick
  .property instance bool IsPuking()
  {
    .get instance bool Game.ComponentSickness::get_IsPuking()
  } // end of property ComponentSickness::IsPuking
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentSickness::get_UpdateOrder()
  } // end of property ComponentSickness::UpdateOrder
} // end of class Game.ComponentSickness