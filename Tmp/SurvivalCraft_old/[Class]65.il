.class public auto ansi beforefieldinit Game.ComponentLevel
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IUpdateable
{
  .class sequential ansi sealed nested public beforefieldinit Factor
         extends [System.Runtime]System.ValueType
  {
    .field public string Description
    .field public float32 Value
  } // end of class Factor

  .field private class Game.Random m_random
  .field private class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ComponentLevel/Factor> m_factors
  .field private valuetype [System.Runtime]System.Nullable`1<float32> m_lastLevelTextValue
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.ComponentPlayer m_componentPlayer
  .field public static literal float32 FemaleStrengthFactor = float32(0.80000001)
  .field public static literal float32 FemaleResilienceFactor = float32(0.80000001)
  .field public static literal float32 FemaleSpeedFactor = float32(1.05)
  .field public static literal float32 FemaleHungerFactor = float32(0.69999999)
  .field private float32 '<StrengthFactor>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<ResilienceFactor>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<SpeedFactor>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<HungerFactor>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance float32 
          get_StrengthFactor() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentLevel::'<StrengthFactor>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentLevel::get_StrengthFactor

  .method private hidebysig specialname instance void 
          set_StrengthFactor(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentLevel::'<StrengthFactor>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentLevel::set_StrengthFactor

  .method public hidebysig specialname instance float32 
          get_ResilienceFactor() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentLevel::'<ResilienceFactor>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentLevel::get_ResilienceFactor

  .method private hidebysig specialname instance void 
          set_ResilienceFactor(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentLevel::'<ResilienceFactor>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentLevel::set_ResilienceFactor

  .method public hidebysig specialname instance float32 
          get_SpeedFactor() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentLevel::'<SpeedFactor>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentLevel::get_SpeedFactor

  .method private hidebysig specialname instance void 
          set_SpeedFactor(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentLevel::'<SpeedFactor>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentLevel::set_SpeedFactor

  .method public hidebysig specialname instance float32 
          get_HungerFactor() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentLevel::'<HungerFactor>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentLevel::get_HungerFactor

  .method private hidebysig specialname instance void 
          set_HungerFactor(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentLevel::'<HungerFactor>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentLevel::set_HungerFactor

  .method public hidebysig instance void 
          AddExperience(int32 count,
                        bool playSound) cil managed
  {
    // 代码大小       485 (0x1e5)
    .maxstack  6
    .locals init (int32 V_0,
             float32 V_1)
    IL_0000:  ldarg.2
    IL_0001:  brfalse.s  IL_0037

    IL_0003:  ldarg.0
    IL_0004:  ldfld      class Game.SubsystemAudio Game.ComponentLevel::m_subsystemAudio
    IL_0009:  ldstr      "Audio/ExperienceCollected"
    IL_000e:  ldc.r4     0.30000001
    IL_0013:  ldarg.0
    IL_0014:  ldfld      class Game.Random Game.ComponentLevel::m_random
    IL_0019:  ldc.r4     -0.1
    IL_001e:  ldc.r4     0.40000001
    IL_0023:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0028:  ldc.r4     0.0
    IL_002d:  ldc.r4     0.0
    IL_0032:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      float32,
                                                                      float32)
    IL_0037:  ldc.i4.0
    IL_0038:  stloc.0
    IL_0039:  br         IL_01dd

    IL_003e:  ldc.r4     1.2e-002
    IL_0043:  ldc.r4     1.08
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_004e:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_0053:  callvirt   instance float32 Game.PlayerData::get_Level()
    IL_0058:  ldc.r4     1.
    IL_005d:  sub
    IL_005e:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0063:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_0068:  div
    IL_0069:  stloc.1
    IL_006a:  ldarg.0
    IL_006b:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_0070:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_0075:  callvirt   instance float32 Game.PlayerData::get_Level()
    IL_007a:  ldloc.1
    IL_007b:  add
    IL_007c:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0081:  ldarg.0
    IL_0082:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_0087:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_008c:  callvirt   instance float32 Game.PlayerData::get_Level()
    IL_0091:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0096:  ble.un     IL_01c1

    IL_009b:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_00a0:  ldc.r8     0.5
    IL_00a9:  add
    IL_00aa:  ldc.r8     0.0
    IL_00b3:  add
    IL_00b4:  ldarg.0
    IL_00b5:  ldftn      instance void Game.ComponentLevel::'<AddExperience>b__28_0'()
    IL_00bb:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00c0:  call       void [Engine]Engine.Time::QueueTimeDelayedExecution(float64,
                                                                             class [System.Runtime]System.Action)
    IL_00c5:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_00ca:  ldc.r8     0.5
    IL_00d3:  add
    IL_00d4:  ldc.r8     0.0
    IL_00dd:  add
    IL_00de:  ldarg.0
    IL_00df:  ldftn      instance void Game.ComponentLevel::'<AddExperience>b__28_1'()
    IL_00e5:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00ea:  call       void [Engine]Engine.Time::QueueTimeDelayedExecution(float64,
                                                                             class [System.Runtime]System.Action)
    IL_00ef:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_00f4:  ldc.r8     0.5
    IL_00fd:  add
    IL_00fe:  ldc.r8     0.15000000596046448
    IL_0107:  add
    IL_0108:  ldarg.0
    IL_0109:  ldftn      instance void Game.ComponentLevel::'<AddExperience>b__28_2'()
    IL_010f:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0114:  call       void [Engine]Engine.Time::QueueTimeDelayedExecution(float64,
                                                                             class [System.Runtime]System.Action)
    IL_0119:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_011e:  ldc.r8     0.5
    IL_0127:  add
    IL_0128:  ldc.r8     0.30000001192092896
    IL_0131:  add
    IL_0132:  ldarg.0
    IL_0133:  ldftn      instance void Game.ComponentLevel::'<AddExperience>b__28_3'()
    IL_0139:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_013e:  call       void [Engine]Engine.Time::QueueTimeDelayedExecution(float64,
                                                                             class [System.Runtime]System.Action)
    IL_0143:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_0148:  ldc.r8     0.5
    IL_0151:  add
    IL_0152:  ldc.r8     0.45000001788139343
    IL_015b:  add
    IL_015c:  ldarg.0
    IL_015d:  ldftn      instance void Game.ComponentLevel::'<AddExperience>b__28_4'()
    IL_0163:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0168:  call       void [Engine]Engine.Time::QueueTimeDelayedExecution(float64,
                                                                             class [System.Runtime]System.Action)
    IL_016d:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_0172:  ldc.r8     0.5
    IL_017b:  add
    IL_017c:  ldc.r8     0.75
    IL_0185:  add
    IL_0186:  ldarg.0
    IL_0187:  ldftn      instance void Game.ComponentLevel::'<AddExperience>b__28_5'()
    IL_018d:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0192:  call       void [Engine]Engine.Time::QueueTimeDelayedExecution(float64,
                                                                             class [System.Runtime]System.Action)
    IL_0197:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_019c:  ldc.r8     0.5
    IL_01a5:  add
    IL_01a6:  ldc.r8     0.90000003576278687
    IL_01af:  add
    IL_01b0:  ldarg.0
    IL_01b1:  ldftn      instance void Game.ComponentLevel::'<AddExperience>b__28_6'()
    IL_01b7:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01bc:  call       void [Engine]Engine.Time::QueueTimeDelayedExecution(float64,
                                                                             class [System.Runtime]System.Action)
    IL_01c1:  ldarg.0
    IL_01c2:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_01c7:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_01cc:  dup
    IL_01cd:  callvirt   instance float32 Game.PlayerData::get_Level()
    IL_01d2:  ldloc.1
    IL_01d3:  add
    IL_01d4:  callvirt   instance void Game.PlayerData::set_Level(float32)
    IL_01d9:  ldloc.0
    IL_01da:  ldc.i4.1
    IL_01db:  add
    IL_01dc:  stloc.0
    IL_01dd:  ldloc.0
    IL_01de:  ldarg.1
    IL_01df:  blt        IL_003e

    IL_01e4:  ret
  } // end of method ComponentLevel::AddExperience

  .method public hidebysig instance float32 
          CalculateStrengthFactor(class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor> factors) cil managed
  {
    // 代码大小       876 (0x36c)
    .maxstack  8
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5,
             float32 V_6,
             float32 V_7,
             float32 V_8,
             float32 V_9,
             float32 V_10,
             valuetype Game.ComponentLevel/Factor V_11,
             valuetype Game.PlayerClass V_12,
             float32 V_13)
    IL_0000:  ldc.r4     1.
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_000c:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_0011:  callvirt   instance valuetype Game.PlayerClass Game.PlayerData::get_PlayerClass()
    IL_0016:  ldc.i4.1
    IL_0017:  beq.s      IL_0020

    IL_0019:  ldc.r4     1.
    IL_001e:  br.s       IL_0025

    IL_0020:  ldc.r4     0.80000001
    IL_0025:  stloc.1
    IL_0026:  ldloc.0
    IL_0027:  ldloc.1
    IL_0028:  mul
    IL_0029:  stloc.0
    IL_002a:  ldarg.1
    IL_002b:  brfalse.s  IL_006b

    IL_002d:  ldarg.1
    IL_002e:  ldloca.s   V_11
    IL_0030:  initobj    Game.ComponentLevel/Factor
    IL_0036:  ldloca.s   V_11
    IL_0038:  ldloc.1
    IL_0039:  stfld      float32 Game.ComponentLevel/Factor::Value
    IL_003e:  ldloca.s   V_11
    IL_0040:  ldarg.0
    IL_0041:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_0046:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_004b:  callvirt   instance valuetype Game.PlayerClass Game.PlayerData::get_PlayerClass()
    IL_0050:  stloc.s    V_12
    IL_0052:  ldloca.s   V_12
    IL_0054:  constrained. Game.PlayerClass
    IL_005a:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_005f:  stfld      string Game.ComponentLevel/Factor::Description
    IL_0064:  ldloc.s    V_11
    IL_0066:  callvirt   instance void class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor>::Add(!0)
    IL_006b:  ldarg.0
    IL_006c:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_0071:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_0076:  callvirt   instance float32 Game.PlayerData::get_Level()
    IL_007b:  stloc.2
    IL_007c:  ldc.r4     1.
    IL_0081:  ldc.r4     5.0000001e-002
    IL_0086:  ldloc.2
    IL_0087:  ldc.r4     1.
    IL_008c:  ldc.r4     21.
    IL_0091:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0096:  ldc.r4     1.
    IL_009b:  sub
    IL_009c:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_00a1:  mul
    IL_00a2:  add
    IL_00a3:  stloc.3
    IL_00a4:  ldloc.0
    IL_00a5:  ldloc.3
    IL_00a6:  mul
    IL_00a7:  stloc.0
    IL_00a8:  ldarg.1
    IL_00a9:  brfalse.s  IL_00e3

    IL_00ab:  ldarg.1
    IL_00ac:  ldloca.s   V_11
    IL_00ae:  initobj    Game.ComponentLevel/Factor
    IL_00b4:  ldloca.s   V_11
    IL_00b6:  ldloc.3
    IL_00b7:  stfld      float32 Game.ComponentLevel/Factor::Value
    IL_00bc:  ldloca.s   V_11
    IL_00be:  ldstr      "Level "
    IL_00c3:  ldloc.2
    IL_00c4:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_00c9:  stloc.s    V_13
    IL_00cb:  ldloca.s   V_13
    IL_00cd:  call       instance string [System.Runtime]System.Single::ToString()
    IL_00d2:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_00d7:  stfld      string Game.ComponentLevel/Factor::Description
    IL_00dc:  ldloc.s    V_11
    IL_00de:  callvirt   instance void class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor>::Add(!0)
    IL_00e3:  ldarg.0
    IL_00e4:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_00e9:  callvirt   instance class Game.ComponentVitalStats Game.ComponentPlayer::get_ComponentVitalStats()
    IL_00ee:  callvirt   instance float32 Game.ComponentVitalStats::get_Stamina()
    IL_00f3:  stloc.s    V_4
    IL_00f5:  ldc.r4     0.5
    IL_00fa:  ldc.r4     1.
    IL_00ff:  ldc.r4     4.
    IL_0104:  ldloc.s    V_4
    IL_0106:  mul
    IL_0107:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_010c:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0111:  ldc.r4     0.89999998
    IL_0116:  ldc.r4     1.
    IL_011b:  ldloc.s    V_4
    IL_011d:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0122:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0127:  mul
    IL_0128:  stloc.s    V_5
    IL_012a:  ldloc.0
    IL_012b:  ldloc.s    V_5
    IL_012d:  mul
    IL_012e:  stloc.0
    IL_012f:  ldarg.1
    IL_0130:  brfalse.s  IL_0172

    IL_0132:  ldarg.1
    IL_0133:  ldloca.s   V_11
    IL_0135:  initobj    Game.ComponentLevel/Factor
    IL_013b:  ldloca.s   V_11
    IL_013d:  ldloc.s    V_5
    IL_013f:  stfld      float32 Game.ComponentLevel/Factor::Value
    IL_0144:  ldloca.s   V_11
    IL_0146:  ldstr      "{0:0}% Stamina"
    IL_014b:  ldc.i4.1
    IL_014c:  newarr     [System.Runtime]System.Object
    IL_0151:  dup
    IL_0152:  ldc.i4.0
    IL_0153:  ldloc.s    V_4
    IL_0155:  ldc.r4     100.
    IL_015a:  mul
    IL_015b:  box        [System.Runtime]System.Single
    IL_0160:  stelem.ref
    IL_0161:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0166:  stfld      string Game.ComponentLevel/Factor::Description
    IL_016b:  ldloc.s    V_11
    IL_016d:  callvirt   instance void class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor>::Add(!0)
    IL_0172:  ldarg.0
    IL_0173:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_0178:  callvirt   instance class Game.ComponentSickness Game.ComponentPlayer::get_ComponentSickness()
    IL_017d:  callvirt   instance bool Game.ComponentSickness::get_IsSick()
    IL_0182:  brtrue.s   IL_018b

    IL_0184:  ldc.r4     1.
    IL_0189:  br.s       IL_0190

    IL_018b:  ldc.r4     0.75
    IL_0190:  stloc.s    V_6
    IL_0192:  ldloc.0
    IL_0193:  ldloc.s    V_6
    IL_0195:  mul
    IL_0196:  stloc.0
    IL_0197:  ldarg.1
    IL_0198:  brfalse.s  IL_01d8

    IL_019a:  ldarg.1
    IL_019b:  ldloca.s   V_11
    IL_019d:  initobj    Game.ComponentLevel/Factor
    IL_01a3:  ldloca.s   V_11
    IL_01a5:  ldloc.s    V_6
    IL_01a7:  stfld      float32 Game.ComponentLevel/Factor::Value
    IL_01ac:  ldloca.s   V_11
    IL_01ae:  ldarg.0
    IL_01af:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_01b4:  callvirt   instance class Game.ComponentSickness Game.ComponentPlayer::get_ComponentSickness()
    IL_01b9:  callvirt   instance bool Game.ComponentSickness::get_IsSick()
    IL_01be:  brtrue.s   IL_01c7

    IL_01c0:  ldstr      "No Sickness"
    IL_01c5:  br.s       IL_01cc

    IL_01c7:  ldstr      "Sickness"
    IL_01cc:  stfld      string Game.ComponentLevel/Factor::Description
    IL_01d1:  ldloc.s    V_11
    IL_01d3:  callvirt   instance void class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor>::Add(!0)
    IL_01d8:  ldarg.0
    IL_01d9:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_01de:  callvirt   instance class Game.ComponentSickness Game.ComponentPlayer::get_ComponentSickness()
    IL_01e3:  callvirt   instance bool Game.ComponentSickness::get_IsPuking()
    IL_01e8:  brtrue.s   IL_01ed

    IL_01ea:  ldc.i4.1
    IL_01eb:  br.s       IL_01ee

    IL_01ed:  ldc.i4.0
    IL_01ee:  conv.r4
    IL_01ef:  stloc.s    V_7
    IL_01f1:  ldloc.0
    IL_01f2:  ldloc.s    V_7
    IL_01f4:  mul
    IL_01f5:  stloc.0
    IL_01f6:  ldarg.1
    IL_01f7:  brfalse.s  IL_0237

    IL_01f9:  ldarg.1
    IL_01fa:  ldloca.s   V_11
    IL_01fc:  initobj    Game.ComponentLevel/Factor
    IL_0202:  ldloca.s   V_11
    IL_0204:  ldloc.s    V_7
    IL_0206:  stfld      float32 Game.ComponentLevel/Factor::Value
    IL_020b:  ldloca.s   V_11
    IL_020d:  ldarg.0
    IL_020e:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_0213:  callvirt   instance class Game.ComponentSickness Game.ComponentPlayer::get_ComponentSickness()
    IL_0218:  callvirt   instance bool Game.ComponentSickness::get_IsPuking()
    IL_021d:  brtrue.s   IL_0226

    IL_021f:  ldstr      "Not Vomiting"
    IL_0224:  br.s       IL_022b

    IL_0226:  ldstr      "Vomiting"
    IL_022b:  stfld      string Game.ComponentLevel/Factor::Description
    IL_0230:  ldloc.s    V_11
    IL_0232:  callvirt   instance void class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor>::Add(!0)
    IL_0237:  ldarg.0
    IL_0238:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_023d:  callvirt   instance class Game.ComponentFlu Game.ComponentPlayer::get_ComponentFlu()
    IL_0242:  callvirt   instance bool Game.ComponentFlu::get_HasFlu()
    IL_0247:  brtrue.s   IL_0250

    IL_0249:  ldc.r4     1.
    IL_024e:  br.s       IL_0255

    IL_0250:  ldc.r4     0.75
    IL_0255:  stloc.s    V_8
    IL_0257:  ldloc.0
    IL_0258:  ldloc.s    V_8
    IL_025a:  mul
    IL_025b:  stloc.0
    IL_025c:  ldarg.1
    IL_025d:  brfalse.s  IL_029d

    IL_025f:  ldarg.1
    IL_0260:  ldloca.s   V_11
    IL_0262:  initobj    Game.ComponentLevel/Factor
    IL_0268:  ldloca.s   V_11
    IL_026a:  ldloc.s    V_8
    IL_026c:  stfld      float32 Game.ComponentLevel/Factor::Value
    IL_0271:  ldloca.s   V_11
    IL_0273:  ldarg.0
    IL_0274:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_0279:  callvirt   instance class Game.ComponentFlu Game.ComponentPlayer::get_ComponentFlu()
    IL_027e:  callvirt   instance bool Game.ComponentFlu::get_HasFlu()
    IL_0283:  brtrue.s   IL_028c

    IL_0285:  ldstr      "No Flu"
    IL_028a:  br.s       IL_0291

    IL_028c:  ldstr      "Flu"
    IL_0291:  stfld      string Game.ComponentLevel/Factor::Description
    IL_0296:  ldloc.s    V_11
    IL_0298:  callvirt   instance void class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor>::Add(!0)
    IL_029d:  ldarg.0
    IL_029e:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_02a3:  callvirt   instance class Game.ComponentFlu Game.ComponentPlayer::get_ComponentFlu()
    IL_02a8:  callvirt   instance bool Game.ComponentFlu::get_IsCoughing()
    IL_02ad:  brtrue.s   IL_02b2

    IL_02af:  ldc.i4.1
    IL_02b0:  br.s       IL_02b3

    IL_02b2:  ldc.i4.0
    IL_02b3:  conv.r4
    IL_02b4:  stloc.s    V_9
    IL_02b6:  ldloc.0
    IL_02b7:  ldloc.s    V_9
    IL_02b9:  mul
    IL_02ba:  stloc.0
    IL_02bb:  ldarg.1
    IL_02bc:  brfalse.s  IL_02fc

    IL_02be:  ldarg.1
    IL_02bf:  ldloca.s   V_11
    IL_02c1:  initobj    Game.ComponentLevel/Factor
    IL_02c7:  ldloca.s   V_11
    IL_02c9:  ldloc.s    V_9
    IL_02cb:  stfld      float32 Game.ComponentLevel/Factor::Value
    IL_02d0:  ldloca.s   V_11
    IL_02d2:  ldarg.0
    IL_02d3:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_02d8:  callvirt   instance class Game.ComponentFlu Game.ComponentPlayer::get_ComponentFlu()
    IL_02dd:  callvirt   instance bool Game.ComponentFlu::get_IsCoughing()
    IL_02e2:  brtrue.s   IL_02eb

    IL_02e4:  ldstr      "Not Coughing"
    IL_02e9:  br.s       IL_02f0

    IL_02eb:  ldstr      "Coughing"
    IL_02f0:  stfld      string Game.ComponentLevel/Factor::Description
    IL_02f5:  ldloc.s    V_11
    IL_02f7:  callvirt   instance void class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor>::Add(!0)
    IL_02fc:  ldarg.0
    IL_02fd:  ldfld      class Game.SubsystemGameInfo Game.ComponentLevel::m_subsystemGameInfo
    IL_0302:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0307:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_030c:  ldc.i4.1
    IL_030d:  beq.s      IL_0316

    IL_030f:  ldc.r4     1.
    IL_0314:  br.s       IL_031b

    IL_0316:  ldc.r4     1.25
    IL_031b:  stloc.s    V_10
    IL_031d:  ldloc.0
    IL_031e:  ldloc.s    V_10
    IL_0320:  mul
    IL_0321:  stloc.0
    IL_0322:  ldarg.1
    IL_0323:  brfalse.s  IL_036a

    IL_0325:  ldarg.1
    IL_0326:  ldloca.s   V_11
    IL_0328:  initobj    Game.ComponentLevel/Factor
    IL_032e:  ldloca.s   V_11
    IL_0330:  ldloc.s    V_10
    IL_0332:  stfld      float32 Game.ComponentLevel/Factor::Value
    IL_0337:  ldloca.s   V_11
    IL_0339:  ldarg.0
    IL_033a:  ldfld      class Game.SubsystemGameInfo Game.ComponentLevel::m_subsystemGameInfo
    IL_033f:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0344:  ldflda     valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_0349:  constrained. Game.GameMode
    IL_034f:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0354:  ldstr      " Mode"
    IL_0359:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_035e:  stfld      string Game.ComponentLevel/Factor::Description
    IL_0363:  ldloc.s    V_11
    IL_0365:  callvirt   instance void class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor>::Add(!0)
    IL_036a:  ldloc.0
    IL_036b:  ret
  } // end of method ComponentLevel::CalculateStrengthFactor

  .method public hidebysig instance float32 
          CalculateResilienceFactor(class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor> factors) cil managed
  {
    // 代码大小       553 (0x229)
    .maxstack  6
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5,
             valuetype Game.ComponentLevel/Factor V_6,
             valuetype Game.PlayerClass V_7,
             float32 V_8)
    IL_0000:  ldc.r4     1.
    IL_0005:  ldarg.0
    IL_0006:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_000b:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_0010:  callvirt   instance valuetype Game.PlayerClass Game.PlayerData::get_PlayerClass()
    IL_0015:  ldc.i4.1
    IL_0016:  beq.s      IL_001f

    IL_0018:  ldc.r4     1.
    IL_001d:  br.s       IL_0024

    IL_001f:  ldc.r4     0.80000001
    IL_0024:  stloc.0
    IL_0025:  ldloc.0
    IL_0026:  mul
    IL_0027:  ldarg.1
    IL_0028:  brfalse.s  IL_0068

    IL_002a:  ldarg.1
    IL_002b:  ldloca.s   V_6
    IL_002d:  initobj    Game.ComponentLevel/Factor
    IL_0033:  ldloca.s   V_6
    IL_0035:  ldloc.0
    IL_0036:  stfld      float32 Game.ComponentLevel/Factor::Value
    IL_003b:  ldloca.s   V_6
    IL_003d:  ldarg.0
    IL_003e:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_0043:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_0048:  callvirt   instance valuetype Game.PlayerClass Game.PlayerData::get_PlayerClass()
    IL_004d:  stloc.s    V_7
    IL_004f:  ldloca.s   V_7
    IL_0051:  constrained. Game.PlayerClass
    IL_0057:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_005c:  stfld      string Game.ComponentLevel/Factor::Description
    IL_0061:  ldloc.s    V_6
    IL_0063:  callvirt   instance void class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor>::Add(!0)
    IL_0068:  ldarg.0
    IL_0069:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_006e:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_0073:  callvirt   instance float32 Game.PlayerData::get_Level()
    IL_0078:  stloc.1
    IL_0079:  ldc.r4     1.
    IL_007e:  ldc.r4     5.0000001e-002
    IL_0083:  ldloc.1
    IL_0084:  ldc.r4     1.
    IL_0089:  ldc.r4     21.
    IL_008e:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0093:  ldc.r4     1.
    IL_0098:  sub
    IL_0099:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_009e:  mul
    IL_009f:  add
    IL_00a0:  stloc.2
    IL_00a1:  ldloc.2
    IL_00a2:  mul
    IL_00a3:  ldarg.1
    IL_00a4:  brfalse.s  IL_00de

    IL_00a6:  ldarg.1
    IL_00a7:  ldloca.s   V_6
    IL_00a9:  initobj    Game.ComponentLevel/Factor
    IL_00af:  ldloca.s   V_6
    IL_00b1:  ldloc.2
    IL_00b2:  stfld      float32 Game.ComponentLevel/Factor::Value
    IL_00b7:  ldloca.s   V_6
    IL_00b9:  ldstr      "Level "
    IL_00be:  ldloc.1
    IL_00bf:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_00c4:  stloc.s    V_8
    IL_00c6:  ldloca.s   V_8
    IL_00c8:  call       instance string [System.Runtime]System.Single::ToString()
    IL_00cd:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_00d2:  stfld      string Game.ComponentLevel/Factor::Description
    IL_00d7:  ldloc.s    V_6
    IL_00d9:  callvirt   instance void class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor>::Add(!0)
    IL_00de:  ldarg.0
    IL_00df:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_00e4:  callvirt   instance class Game.ComponentSickness Game.ComponentPlayer::get_ComponentSickness()
    IL_00e9:  callvirt   instance bool Game.ComponentSickness::get_IsSick()
    IL_00ee:  brtrue.s   IL_00f7

    IL_00f0:  ldc.r4     1.
    IL_00f5:  br.s       IL_00fc

    IL_00f7:  ldc.r4     0.75
    IL_00fc:  stloc.3
    IL_00fd:  ldloc.3
    IL_00fe:  mul
    IL_00ff:  ldarg.1
    IL_0100:  brfalse.s  IL_013f

    IL_0102:  ldarg.1
    IL_0103:  ldloca.s   V_6
    IL_0105:  initobj    Game.ComponentLevel/Factor
    IL_010b:  ldloca.s   V_6
    IL_010d:  ldloc.3
    IL_010e:  stfld      float32 Game.ComponentLevel/Factor::Value
    IL_0113:  ldloca.s   V_6
    IL_0115:  ldarg.0
    IL_0116:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_011b:  callvirt   instance class Game.ComponentSickness Game.ComponentPlayer::get_ComponentSickness()
    IL_0120:  callvirt   instance bool Game.ComponentSickness::get_IsSick()
    IL_0125:  brtrue.s   IL_012e

    IL_0127:  ldstr      "No Sickness"
    IL_012c:  br.s       IL_0133

    IL_012e:  ldstr      "Sickness"
    IL_0133:  stfld      string Game.ComponentLevel/Factor::Description
    IL_0138:  ldloc.s    V_6
    IL_013a:  callvirt   instance void class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor>::Add(!0)
    IL_013f:  ldarg.0
    IL_0140:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_0145:  callvirt   instance class Game.ComponentFlu Game.ComponentPlayer::get_ComponentFlu()
    IL_014a:  callvirt   instance bool Game.ComponentFlu::get_HasFlu()
    IL_014f:  brtrue.s   IL_0158

    IL_0151:  ldc.r4     1.
    IL_0156:  br.s       IL_015d

    IL_0158:  ldc.r4     0.75
    IL_015d:  stloc.s    V_4
    IL_015f:  ldloc.s    V_4
    IL_0161:  mul
    IL_0162:  ldarg.1
    IL_0163:  brfalse.s  IL_01a3

    IL_0165:  ldarg.1
    IL_0166:  ldloca.s   V_6
    IL_0168:  initobj    Game.ComponentLevel/Factor
    IL_016e:  ldloca.s   V_6
    IL_0170:  ldloc.s    V_4
    IL_0172:  stfld      float32 Game.ComponentLevel/Factor::Value
    IL_0177:  ldloca.s   V_6
    IL_0179:  ldarg.0
    IL_017a:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_017f:  callvirt   instance class Game.ComponentFlu Game.ComponentPlayer::get_ComponentFlu()
    IL_0184:  callvirt   instance bool Game.ComponentFlu::get_HasFlu()
    IL_0189:  brtrue.s   IL_0192

    IL_018b:  ldstr      "No Flu"
    IL_0190:  br.s       IL_0197

    IL_0192:  ldstr      "Flu"
    IL_0197:  stfld      string Game.ComponentLevel/Factor::Description
    IL_019c:  ldloc.s    V_6
    IL_019e:  callvirt   instance void class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor>::Add(!0)
    IL_01a3:  ldc.r4     1.
    IL_01a8:  stloc.s    V_5
    IL_01aa:  ldarg.0
    IL_01ab:  ldfld      class Game.SubsystemGameInfo Game.ComponentLevel::m_subsystemGameInfo
    IL_01b0:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_01b5:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_01ba:  ldc.i4.1
    IL_01bb:  bne.un.s   IL_01c4

    IL_01bd:  ldc.r4     1.5
    IL_01c2:  stloc.s    V_5
    IL_01c4:  ldarg.0
    IL_01c5:  ldfld      class Game.SubsystemGameInfo Game.ComponentLevel::m_subsystemGameInfo
    IL_01ca:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_01cf:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_01d4:  brtrue.s   IL_01dd

    IL_01d6:  ldc.r4     (00 00 80 7F)
    IL_01db:  stloc.s    V_5
    IL_01dd:  ldloc.s    V_5
    IL_01df:  mul
    IL_01e0:  ldarg.1
    IL_01e1:  brfalse.s  IL_0228

    IL_01e3:  ldarg.1
    IL_01e4:  ldloca.s   V_6
    IL_01e6:  initobj    Game.ComponentLevel/Factor
    IL_01ec:  ldloca.s   V_6
    IL_01ee:  ldloc.s    V_5
    IL_01f0:  stfld      float32 Game.ComponentLevel/Factor::Value
    IL_01f5:  ldloca.s   V_6
    IL_01f7:  ldarg.0
    IL_01f8:  ldfld      class Game.SubsystemGameInfo Game.ComponentLevel::m_subsystemGameInfo
    IL_01fd:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0202:  ldflda     valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_0207:  constrained. Game.GameMode
    IL_020d:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0212:  ldstr      " Mode"
    IL_0217:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_021c:  stfld      string Game.ComponentLevel/Factor::Description
    IL_0221:  ldloc.s    V_6
    IL_0223:  callvirt   instance void class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor>::Add(!0)
    IL_0228:  ret
  } // end of method ComponentLevel::CalculateResilienceFactor

  .method public hidebysig instance float32 
          CalculateSpeedFactor(class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor> factors) cil managed
  {
    // 代码大小       1058 (0x422)
    .maxstack  8
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5,
             float32 V_6,
             float32 V_7,
             float32 V_8,
             float32 V_9,
             float32 V_10,
             valuetype Game.ComponentLevel/Factor V_11,
             valuetype Game.PlayerClass V_12,
             float32 V_13,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32> V_14,
             valuetype [Engine]Engine.ReadOnlyList`1<int32> V_15)
    IL_0000:  ldc.r4     1.
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_000c:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_0011:  callvirt   instance valuetype Game.PlayerClass Game.PlayerData::get_PlayerClass()
    IL_0016:  ldc.i4.1
    IL_0017:  beq.s      IL_0020

    IL_0019:  ldc.r4     1.
    IL_001e:  br.s       IL_0025

    IL_0020:  ldc.r4     1.05
    IL_0025:  stloc.1
    IL_0026:  ldloc.0
    IL_0027:  ldloc.1
    IL_0028:  mul
    IL_0029:  stloc.0
    IL_002a:  ldarg.1
    IL_002b:  brfalse.s  IL_006b

    IL_002d:  ldarg.1
    IL_002e:  ldloca.s   V_11
    IL_0030:  initobj    Game.ComponentLevel/Factor
    IL_0036:  ldloca.s   V_11
    IL_0038:  ldloc.1
    IL_0039:  stfld      float32 Game.ComponentLevel/Factor::Value
    IL_003e:  ldloca.s   V_11
    IL_0040:  ldarg.0
    IL_0041:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_0046:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_004b:  callvirt   instance valuetype Game.PlayerClass Game.PlayerData::get_PlayerClass()
    IL_0050:  stloc.s    V_12
    IL_0052:  ldloca.s   V_12
    IL_0054:  constrained. Game.PlayerClass
    IL_005a:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_005f:  stfld      string Game.ComponentLevel/Factor::Description
    IL_0064:  ldloc.s    V_11
    IL_0066:  callvirt   instance void class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor>::Add(!0)
    IL_006b:  ldarg.0
    IL_006c:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_0071:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_0076:  callvirt   instance float32 Game.PlayerData::get_Level()
    IL_007b:  stloc.2
    IL_007c:  ldc.r4     1.
    IL_0081:  ldc.r4     2.e-002
    IL_0086:  ldloc.2
    IL_0087:  ldc.r4     1.
    IL_008c:  ldc.r4     21.
    IL_0091:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0096:  ldc.r4     1.
    IL_009b:  sub
    IL_009c:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_00a1:  mul
    IL_00a2:  add
    IL_00a3:  stloc.3
    IL_00a4:  ldloc.0
    IL_00a5:  ldloc.3
    IL_00a6:  mul
    IL_00a7:  stloc.0
    IL_00a8:  ldarg.1
    IL_00a9:  brfalse.s  IL_00e3

    IL_00ab:  ldarg.1
    IL_00ac:  ldloca.s   V_11
    IL_00ae:  initobj    Game.ComponentLevel/Factor
    IL_00b4:  ldloca.s   V_11
    IL_00b6:  ldloc.3
    IL_00b7:  stfld      float32 Game.ComponentLevel/Factor::Value
    IL_00bc:  ldloca.s   V_11
    IL_00be:  ldstr      "Level "
    IL_00c3:  ldloc.2
    IL_00c4:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_00c9:  stloc.s    V_13
    IL_00cb:  ldloca.s   V_13
    IL_00cd:  call       instance string [System.Runtime]System.Single::ToString()
    IL_00d2:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_00d7:  stfld      string Game.ComponentLevel/Factor::Description
    IL_00dc:  ldloc.s    V_11
    IL_00de:  callvirt   instance void class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor>::Add(!0)
    IL_00e3:  ldc.r4     1.
    IL_00e8:  stloc.s    V_4
    IL_00ea:  ldarg.0
    IL_00eb:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_00f0:  callvirt   instance class Game.ComponentClothing Game.ComponentPlayer::get_ComponentClothing()
    IL_00f5:  ldc.i4.0
    IL_00f6:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<int32> Game.ComponentClothing::GetClothes(valuetype Game.ClothingSlot)
    IL_00fb:  stloc.s    V_15
    IL_00fd:  ldloca.s   V_15
    IL_00ff:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<int32>::GetEnumerator()
    IL_0104:  stloc.s    V_14
    .try
    {
      IL_0106:  br.s       IL_0117

      IL_0108:  ldloca.s   V_14
      IL_010a:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>::get_Current()
      IL_010f:  ldloca.s   V_4
      IL_0111:  ldarg.1
      IL_0112:  call       void Game.ComponentLevel::AddClothingFactor(int32,
                                                                       float32&,
                                                                       class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor>)
      IL_0117:  ldloca.s   V_14
      IL_0119:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>::MoveNext()
      IL_011e:  brtrue.s   IL_0108

      IL_0120:  leave.s    IL_0130

    }  // end .try
    finally
    {
      IL_0122:  ldloca.s   V_14
      IL_0124:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>
      IL_012a:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_012f:  endfinally
    }  // end handler
    IL_0130:  ldarg.0
    IL_0131:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_0136:  callvirt   instance class Game.ComponentClothing Game.ComponentPlayer::get_ComponentClothing()
    IL_013b:  ldc.i4.1
    IL_013c:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<int32> Game.ComponentClothing::GetClothes(valuetype Game.ClothingSlot)
    IL_0141:  stloc.s    V_15
    IL_0143:  ldloca.s   V_15
    IL_0145:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<int32>::GetEnumerator()
    IL_014a:  stloc.s    V_14
    .try
    {
      IL_014c:  br.s       IL_015d

      IL_014e:  ldloca.s   V_14
      IL_0150:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>::get_Current()
      IL_0155:  ldloca.s   V_4
      IL_0157:  ldarg.1
      IL_0158:  call       void Game.ComponentLevel::AddClothingFactor(int32,
                                                                       float32&,
                                                                       class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor>)
      IL_015d:  ldloca.s   V_14
      IL_015f:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>::MoveNext()
      IL_0164:  brtrue.s   IL_014e

      IL_0166:  leave.s    IL_0176

    }  // end .try
    finally
    {
      IL_0168:  ldloca.s   V_14
      IL_016a:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>
      IL_0170:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0175:  endfinally
    }  // end handler
    IL_0176:  ldarg.0
    IL_0177:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_017c:  callvirt   instance class Game.ComponentClothing Game.ComponentPlayer::get_ComponentClothing()
    IL_0181:  ldc.i4.2
    IL_0182:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<int32> Game.ComponentClothing::GetClothes(valuetype Game.ClothingSlot)
    IL_0187:  stloc.s    V_15
    IL_0189:  ldloca.s   V_15
    IL_018b:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<int32>::GetEnumerator()
    IL_0190:  stloc.s    V_14
    .try
    {
      IL_0192:  br.s       IL_01a3

      IL_0194:  ldloca.s   V_14
      IL_0196:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>::get_Current()
      IL_019b:  ldloca.s   V_4
      IL_019d:  ldarg.1
      IL_019e:  call       void Game.ComponentLevel::AddClothingFactor(int32,
                                                                       float32&,
                                                                       class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor>)
      IL_01a3:  ldloca.s   V_14
      IL_01a5:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>::MoveNext()
      IL_01aa:  brtrue.s   IL_0194

      IL_01ac:  leave.s    IL_01bc

    }  // end .try
    finally
    {
      IL_01ae:  ldloca.s   V_14
      IL_01b0:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>
      IL_01b6:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01bb:  endfinally
    }  // end handler
    IL_01bc:  ldarg.0
    IL_01bd:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_01c2:  callvirt   instance class Game.ComponentClothing Game.ComponentPlayer::get_ComponentClothing()
    IL_01c7:  ldc.i4.3
    IL_01c8:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<int32> Game.ComponentClothing::GetClothes(valuetype Game.ClothingSlot)
    IL_01cd:  stloc.s    V_15
    IL_01cf:  ldloca.s   V_15
    IL_01d1:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<int32>::GetEnumerator()
    IL_01d6:  stloc.s    V_14
    .try
    {
      IL_01d8:  br.s       IL_01e9

      IL_01da:  ldloca.s   V_14
      IL_01dc:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>::get_Current()
      IL_01e1:  ldloca.s   V_4
      IL_01e3:  ldarg.1
      IL_01e4:  call       void Game.ComponentLevel::AddClothingFactor(int32,
                                                                       float32&,
                                                                       class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor>)
      IL_01e9:  ldloca.s   V_14
      IL_01eb:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>::MoveNext()
      IL_01f0:  brtrue.s   IL_01da

      IL_01f2:  leave.s    IL_0202

    }  // end .try
    finally
    {
      IL_01f4:  ldloca.s   V_14
      IL_01f6:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>
      IL_01fc:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0201:  endfinally
    }  // end handler
    IL_0202:  ldloc.0
    IL_0203:  ldloc.s    V_4
    IL_0205:  mul
    IL_0206:  stloc.0
    IL_0207:  ldarg.0
    IL_0208:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_020d:  callvirt   instance class Game.ComponentVitalStats Game.ComponentPlayer::get_ComponentVitalStats()
    IL_0212:  callvirt   instance float32 Game.ComponentVitalStats::get_Stamina()
    IL_0217:  stloc.s    V_5
    IL_0219:  ldc.r4     0.5
    IL_021e:  ldc.r4     1.
    IL_0223:  ldc.r4     4.
    IL_0228:  ldloc.s    V_5
    IL_022a:  mul
    IL_022b:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0230:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0235:  ldc.r4     0.89999998
    IL_023a:  ldc.r4     1.
    IL_023f:  ldloc.s    V_5
    IL_0241:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0246:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_024b:  mul
    IL_024c:  stloc.s    V_6
    IL_024e:  ldloc.0
    IL_024f:  ldloc.s    V_6
    IL_0251:  mul
    IL_0252:  stloc.0
    IL_0253:  ldarg.1
    IL_0254:  brfalse.s  IL_0296

    IL_0256:  ldarg.1
    IL_0257:  ldloca.s   V_11
    IL_0259:  initobj    Game.ComponentLevel/Factor
    IL_025f:  ldloca.s   V_11
    IL_0261:  ldloc.s    V_6
    IL_0263:  stfld      float32 Game.ComponentLevel/Factor::Value
    IL_0268:  ldloca.s   V_11
    IL_026a:  ldstr      "{0:0}% Stamina"
    IL_026f:  ldc.i4.1
    IL_0270:  newarr     [System.Runtime]System.Object
    IL_0275:  dup
    IL_0276:  ldc.i4.0
    IL_0277:  ldloc.s    V_5
    IL_0279:  ldc.r4     100.
    IL_027e:  mul
    IL_027f:  box        [System.Runtime]System.Single
    IL_0284:  stelem.ref
    IL_0285:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_028a:  stfld      string Game.ComponentLevel/Factor::Description
    IL_028f:  ldloc.s    V_11
    IL_0291:  callvirt   instance void class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor>::Add(!0)
    IL_0296:  ldarg.0
    IL_0297:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_029c:  callvirt   instance class Game.ComponentSickness Game.ComponentPlayer::get_ComponentSickness()
    IL_02a1:  callvirt   instance bool Game.ComponentSickness::get_IsSick()
    IL_02a6:  brtrue.s   IL_02af

    IL_02a8:  ldc.r4     1.
    IL_02ad:  br.s       IL_02b4

    IL_02af:  ldc.r4     0.75
    IL_02b4:  stloc.s    V_7
    IL_02b6:  ldloc.0
    IL_02b7:  ldloc.s    V_7
    IL_02b9:  mul
    IL_02ba:  stloc.0
    IL_02bb:  ldarg.1
    IL_02bc:  brfalse.s  IL_02fc

    IL_02be:  ldarg.1
    IL_02bf:  ldloca.s   V_11
    IL_02c1:  initobj    Game.ComponentLevel/Factor
    IL_02c7:  ldloca.s   V_11
    IL_02c9:  ldloc.s    V_7
    IL_02cb:  stfld      float32 Game.ComponentLevel/Factor::Value
    IL_02d0:  ldloca.s   V_11
    IL_02d2:  ldarg.0
    IL_02d3:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_02d8:  callvirt   instance class Game.ComponentSickness Game.ComponentPlayer::get_ComponentSickness()
    IL_02dd:  callvirt   instance bool Game.ComponentSickness::get_IsSick()
    IL_02e2:  brtrue.s   IL_02eb

    IL_02e4:  ldstr      "No Sickness"
    IL_02e9:  br.s       IL_02f0

    IL_02eb:  ldstr      "Sickness"
    IL_02f0:  stfld      string Game.ComponentLevel/Factor::Description
    IL_02f5:  ldloc.s    V_11
    IL_02f7:  callvirt   instance void class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor>::Add(!0)
    IL_02fc:  ldarg.0
    IL_02fd:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_0302:  callvirt   instance class Game.ComponentSickness Game.ComponentPlayer::get_ComponentSickness()
    IL_0307:  callvirt   instance bool Game.ComponentSickness::get_IsPuking()
    IL_030c:  brtrue.s   IL_0311

    IL_030e:  ldc.i4.1
    IL_030f:  br.s       IL_0312

    IL_0311:  ldc.i4.0
    IL_0312:  conv.r4
    IL_0313:  stloc.s    V_8
    IL_0315:  ldloc.0
    IL_0316:  ldloc.s    V_8
    IL_0318:  mul
    IL_0319:  stloc.0
    IL_031a:  ldarg.1
    IL_031b:  brfalse.s  IL_035b

    IL_031d:  ldarg.1
    IL_031e:  ldloca.s   V_11
    IL_0320:  initobj    Game.ComponentLevel/Factor
    IL_0326:  ldloca.s   V_11
    IL_0328:  ldloc.s    V_8
    IL_032a:  stfld      float32 Game.ComponentLevel/Factor::Value
    IL_032f:  ldloca.s   V_11
    IL_0331:  ldarg.0
    IL_0332:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_0337:  callvirt   instance class Game.ComponentSickness Game.ComponentPlayer::get_ComponentSickness()
    IL_033c:  callvirt   instance bool Game.ComponentSickness::get_IsPuking()
    IL_0341:  brtrue.s   IL_034a

    IL_0343:  ldstr      "Not Vomiting"
    IL_0348:  br.s       IL_034f

    IL_034a:  ldstr      "Vomiting"
    IL_034f:  stfld      string Game.ComponentLevel/Factor::Description
    IL_0354:  ldloc.s    V_11
    IL_0356:  callvirt   instance void class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor>::Add(!0)
    IL_035b:  ldarg.0
    IL_035c:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_0361:  callvirt   instance class Game.ComponentFlu Game.ComponentPlayer::get_ComponentFlu()
    IL_0366:  callvirt   instance bool Game.ComponentFlu::get_HasFlu()
    IL_036b:  brtrue.s   IL_0374

    IL_036d:  ldc.r4     1.
    IL_0372:  br.s       IL_0379

    IL_0374:  ldc.r4     0.75
    IL_0379:  stloc.s    V_9
    IL_037b:  ldloc.0
    IL_037c:  ldloc.s    V_9
    IL_037e:  mul
    IL_037f:  stloc.0
    IL_0380:  ldarg.1
    IL_0381:  brfalse.s  IL_03c1

    IL_0383:  ldarg.1
    IL_0384:  ldloca.s   V_11
    IL_0386:  initobj    Game.ComponentLevel/Factor
    IL_038c:  ldloca.s   V_11
    IL_038e:  ldloc.s    V_9
    IL_0390:  stfld      float32 Game.ComponentLevel/Factor::Value
    IL_0395:  ldloca.s   V_11
    IL_0397:  ldarg.0
    IL_0398:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_039d:  callvirt   instance class Game.ComponentFlu Game.ComponentPlayer::get_ComponentFlu()
    IL_03a2:  callvirt   instance bool Game.ComponentFlu::get_HasFlu()
    IL_03a7:  brtrue.s   IL_03b0

    IL_03a9:  ldstr      "No Flu"
    IL_03ae:  br.s       IL_03b5

    IL_03b0:  ldstr      "Flu"
    IL_03b5:  stfld      string Game.ComponentLevel/Factor::Description
    IL_03ba:  ldloc.s    V_11
    IL_03bc:  callvirt   instance void class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor>::Add(!0)
    IL_03c1:  ldarg.0
    IL_03c2:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_03c7:  callvirt   instance class Game.ComponentFlu Game.ComponentPlayer::get_ComponentFlu()
    IL_03cc:  callvirt   instance bool Game.ComponentFlu::get_IsCoughing()
    IL_03d1:  brtrue.s   IL_03d6

    IL_03d3:  ldc.i4.1
    IL_03d4:  br.s       IL_03d7

    IL_03d6:  ldc.i4.0
    IL_03d7:  conv.r4
    IL_03d8:  stloc.s    V_10
    IL_03da:  ldloc.0
    IL_03db:  ldloc.s    V_10
    IL_03dd:  mul
    IL_03de:  stloc.0
    IL_03df:  ldarg.1
    IL_03e0:  brfalse.s  IL_0420

    IL_03e2:  ldarg.1
    IL_03e3:  ldloca.s   V_11
    IL_03e5:  initobj    Game.ComponentLevel/Factor
    IL_03eb:  ldloca.s   V_11
    IL_03ed:  ldloc.s    V_10
    IL_03ef:  stfld      float32 Game.ComponentLevel/Factor::Value
    IL_03f4:  ldloca.s   V_11
    IL_03f6:  ldarg.0
    IL_03f7:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_03fc:  callvirt   instance class Game.ComponentFlu Game.ComponentPlayer::get_ComponentFlu()
    IL_0401:  callvirt   instance bool Game.ComponentFlu::get_IsCoughing()
    IL_0406:  brtrue.s   IL_040f

    IL_0408:  ldstr      "Not Coughing"
    IL_040d:  br.s       IL_0414

    IL_040f:  ldstr      "Coughing"
    IL_0414:  stfld      string Game.ComponentLevel/Factor::Description
    IL_0419:  ldloc.s    V_11
    IL_041b:  callvirt   instance void class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor>::Add(!0)
    IL_0420:  ldloc.0
    IL_0421:  ret
  } // end of method ComponentLevel::CalculateSpeedFactor

  .method public hidebysig instance float32 
          CalculateHungerFactor(class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor> factors) cil managed
  {
    // 代码大小       351 (0x15f)
    .maxstack  6
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             valuetype Game.ComponentLevel/Factor V_4,
             valuetype Game.PlayerClass V_5,
             float32 V_6)
    IL_0000:  ldc.r4     1.
    IL_0005:  ldarg.0
    IL_0006:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_000b:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_0010:  callvirt   instance valuetype Game.PlayerClass Game.PlayerData::get_PlayerClass()
    IL_0015:  ldc.i4.1
    IL_0016:  beq.s      IL_001f

    IL_0018:  ldc.r4     1.
    IL_001d:  br.s       IL_0024

    IL_001f:  ldc.r4     0.69999999
    IL_0024:  stloc.0
    IL_0025:  ldloc.0
    IL_0026:  mul
    IL_0027:  ldarg.1
    IL_0028:  brfalse.s  IL_0068

    IL_002a:  ldarg.1
    IL_002b:  ldloca.s   V_4
    IL_002d:  initobj    Game.ComponentLevel/Factor
    IL_0033:  ldloca.s   V_4
    IL_0035:  ldloc.0
    IL_0036:  stfld      float32 Game.ComponentLevel/Factor::Value
    IL_003b:  ldloca.s   V_4
    IL_003d:  ldarg.0
    IL_003e:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_0043:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_0048:  callvirt   instance valuetype Game.PlayerClass Game.PlayerData::get_PlayerClass()
    IL_004d:  stloc.s    V_5
    IL_004f:  ldloca.s   V_5
    IL_0051:  constrained. Game.PlayerClass
    IL_0057:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_005c:  stfld      string Game.ComponentLevel/Factor::Description
    IL_0061:  ldloc.s    V_4
    IL_0063:  callvirt   instance void class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor>::Add(!0)
    IL_0068:  ldarg.0
    IL_0069:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_006e:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_0073:  callvirt   instance float32 Game.PlayerData::get_Level()
    IL_0078:  stloc.1
    IL_0079:  ldc.r4     1.
    IL_007e:  ldc.r4     9.9999998e-003
    IL_0083:  ldloc.1
    IL_0084:  ldc.r4     1.
    IL_0089:  ldc.r4     21.
    IL_008e:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0093:  ldc.r4     1.
    IL_0098:  sub
    IL_0099:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_009e:  mul
    IL_009f:  sub
    IL_00a0:  stloc.2
    IL_00a1:  ldloc.2
    IL_00a2:  mul
    IL_00a3:  ldarg.1
    IL_00a4:  brfalse.s  IL_00de

    IL_00a6:  ldarg.1
    IL_00a7:  ldloca.s   V_4
    IL_00a9:  initobj    Game.ComponentLevel/Factor
    IL_00af:  ldloca.s   V_4
    IL_00b1:  ldloc.2
    IL_00b2:  stfld      float32 Game.ComponentLevel/Factor::Value
    IL_00b7:  ldloca.s   V_4
    IL_00b9:  ldstr      "Level "
    IL_00be:  ldloc.1
    IL_00bf:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_00c4:  stloc.s    V_6
    IL_00c6:  ldloca.s   V_6
    IL_00c8:  call       instance string [System.Runtime]System.Single::ToString()
    IL_00cd:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_00d2:  stfld      string Game.ComponentLevel/Factor::Description
    IL_00d7:  ldloc.s    V_4
    IL_00d9:  callvirt   instance void class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor>::Add(!0)
    IL_00de:  ldc.r4     1.
    IL_00e3:  stloc.3
    IL_00e4:  ldarg.0
    IL_00e5:  ldfld      class Game.SubsystemGameInfo Game.ComponentLevel::m_subsystemGameInfo
    IL_00ea:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_00ef:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_00f4:  ldc.i4.1
    IL_00f5:  bne.un.s   IL_00fd

    IL_00f7:  ldc.r4     0.66000003
    IL_00fc:  stloc.3
    IL_00fd:  ldarg.0
    IL_00fe:  ldfld      class Game.SubsystemGameInfo Game.ComponentLevel::m_subsystemGameInfo
    IL_0103:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0108:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_010d:  brtrue.s   IL_0115

    IL_010f:  ldc.r4     0.0
    IL_0114:  stloc.3
    IL_0115:  ldloc.3
    IL_0116:  mul
    IL_0117:  ldarg.1
    IL_0118:  brfalse.s  IL_015e

    IL_011a:  ldarg.1
    IL_011b:  ldloca.s   V_4
    IL_011d:  initobj    Game.ComponentLevel/Factor
    IL_0123:  ldloca.s   V_4
    IL_0125:  ldloc.3
    IL_0126:  stfld      float32 Game.ComponentLevel/Factor::Value
    IL_012b:  ldloca.s   V_4
    IL_012d:  ldarg.0
    IL_012e:  ldfld      class Game.SubsystemGameInfo Game.ComponentLevel::m_subsystemGameInfo
    IL_0133:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0138:  ldflda     valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_013d:  constrained. Game.GameMode
    IL_0143:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0148:  ldstr      " Mode"
    IL_014d:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0152:  stfld      string Game.ComponentLevel/Factor::Description
    IL_0157:  ldloc.s    V_4
    IL_0159:  callvirt   instance void class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor>::Add(!0)
    IL_015e:  ret
  } // end of method ComponentLevel::CalculateHungerFactor

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentLevel::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       284 (0x11c)
    .maxstack  3
    .locals init (float32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTime Game.ComponentLevel::m_subsystemTime
    IL_0006:  ldc.r8     180.
    IL_000f:  ldc.r8     179.
    IL_0018:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_001d:  brfalse.s  IL_0027

    IL_001f:  ldarg.0
    IL_0020:  ldc.i4.1
    IL_0021:  ldc.i4.0
    IL_0022:  call       instance void Game.ComponentLevel::AddExperience(int32,
                                                                          bool)
    IL_0027:  ldarg.0
    IL_0028:  ldarg.0
    IL_0029:  ldnull
    IL_002a:  call       instance float32 Game.ComponentLevel::CalculateStrengthFactor(class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor>)
    IL_002f:  call       instance void Game.ComponentLevel::set_StrengthFactor(float32)
    IL_0034:  ldarg.0
    IL_0035:  ldarg.0
    IL_0036:  ldnull
    IL_0037:  call       instance float32 Game.ComponentLevel::CalculateSpeedFactor(class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor>)
    IL_003c:  call       instance void Game.ComponentLevel::set_SpeedFactor(float32)
    IL_0041:  ldarg.0
    IL_0042:  ldarg.0
    IL_0043:  ldnull
    IL_0044:  call       instance float32 Game.ComponentLevel::CalculateHungerFactor(class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor>)
    IL_0049:  call       instance void Game.ComponentLevel::set_HungerFactor(float32)
    IL_004e:  ldarg.0
    IL_004f:  ldarg.0
    IL_0050:  ldnull
    IL_0051:  call       instance float32 Game.ComponentLevel::CalculateResilienceFactor(class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor>)
    IL_0056:  call       instance void Game.ComponentLevel::set_ResilienceFactor(float32)
    IL_005b:  ldarg.0
    IL_005c:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.ComponentLevel::m_lastLevelTextValue
    IL_0061:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_0066:  brfalse.s  IL_008a

    IL_0068:  ldarg.0
    IL_0069:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.ComponentLevel::m_lastLevelTextValue
    IL_006e:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0073:  ldarg.0
    IL_0074:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_0079:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_007e:  callvirt   instance float32 Game.PlayerData::get_Level()
    IL_0083:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0088:  beq.s      IL_00e6

    IL_008a:  ldarg.0
    IL_008b:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_0090:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0095:  callvirt   instance class Game.LabelWidget Game.ComponentGui::get_LevelLabelWidget()
    IL_009a:  ldstr      "Level "
    IL_009f:  ldarg.0
    IL_00a0:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_00a5:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_00aa:  callvirt   instance float32 Game.PlayerData::get_Level()
    IL_00af:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_00b4:  stloc.0
    IL_00b5:  ldloca.s   V_0
    IL_00b7:  call       instance string [System.Runtime]System.Single::ToString()
    IL_00bc:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_00c1:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00c6:  ldarg.0
    IL_00c7:  ldarg.0
    IL_00c8:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_00cd:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_00d2:  callvirt   instance float32 Game.PlayerData::get_Level()
    IL_00d7:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_00dc:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_00e1:  stfld      valuetype [System.Runtime]System.Nullable`1<float32> Game.ComponentLevel::m_lastLevelTextValue
    IL_00e6:  ldarg.0
    IL_00e7:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_00ec:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_00f1:  ldarg.0
    IL_00f2:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_00f7:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_00fc:  ldfld      float32 Game.PlayerStats::HighestLevel
    IL_0101:  ldarg.0
    IL_0102:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_0107:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_010c:  callvirt   instance float32 Game.PlayerData::get_Level()
    IL_0111:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0116:  stfld      float32 Game.PlayerStats::HighestLevel
    IL_011b:  ret
  } // end of method ComponentLevel::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       117 (0x75)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_000d:  stfld      class Game.SubsystemGameInfo Game.ComponentLevel::m_subsystemGameInfo
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_001f:  stfld      class Game.SubsystemTime Game.ComponentLevel::m_subsystemTime
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0031:  stfld      class Game.SubsystemAudio Game.ComponentLevel::m_subsystemAudio
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPlayer>(bool)
    IL_0043:  stfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_0048:  ldarg.0
    IL_0049:  ldc.r4     1.
    IL_004e:  call       instance void Game.ComponentLevel::set_StrengthFactor(float32)
    IL_0053:  ldarg.0
    IL_0054:  ldc.r4     1.
    IL_0059:  call       instance void Game.ComponentLevel::set_SpeedFactor(float32)
    IL_005e:  ldarg.0
    IL_005f:  ldc.r4     1.
    IL_0064:  call       instance void Game.ComponentLevel::set_HungerFactor(float32)
    IL_0069:  ldarg.0
    IL_006a:  ldc.r4     1.
    IL_006f:  call       instance void Game.ComponentLevel::set_ResilienceFactor(float32)
    IL_0074:  ret
  } // end of method ComponentLevel::Load

  .method private hidebysig static void  AddClothingFactor(int32 clothingValue,
                                                           float32& clothingFactor,
                                                           class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor> factors) cil managed
  {
    // 代码大小       81 (0x51)
    .maxstack  3
    .locals init (class Game.ClothingData V_0,
             valuetype Game.ComponentLevel/Factor V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       class Game.ClothingData Game.ClothingBlock::GetClothingData(int32)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldfld      float32 Game.ClothingData::MovementSpeedFactor
    IL_0012:  ldc.r4     1.
    IL_0017:  beq.s      IL_0050

    IL_0019:  ldarg.1
    IL_001a:  ldarg.1
    IL_001b:  ldind.r4
    IL_001c:  ldloc.0
    IL_001d:  ldfld      float32 Game.ClothingData::MovementSpeedFactor
    IL_0022:  mul
    IL_0023:  stind.r4
    IL_0024:  ldarg.2
    IL_0025:  brfalse.s  IL_0050

    IL_0027:  ldarg.2
    IL_0028:  ldloca.s   V_1
    IL_002a:  initobj    Game.ComponentLevel/Factor
    IL_0030:  ldloca.s   V_1
    IL_0032:  ldloc.0
    IL_0033:  ldfld      float32 Game.ClothingData::MovementSpeedFactor
    IL_0038:  stfld      float32 Game.ComponentLevel/Factor::Value
    IL_003d:  ldloca.s   V_1
    IL_003f:  ldloc.0
    IL_0040:  ldfld      string Game.ClothingData::DisplayName
    IL_0045:  stfld      string Game.ComponentLevel/Factor::Description
    IL_004a:  ldloc.1
    IL_004b:  callvirt   instance void class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor>::Add(!0)
    IL_0050:  ret
  } // end of method ComponentLevel::AddClothingFactor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.ComponentLevel::m_random
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ComponentLevel/Factor>::.ctor()
    IL_0011:  stfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ComponentLevel/Factor> Game.ComponentLevel::m_factors
    IL_0016:  ldarg.0
    IL_0017:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_001c:  ret
  } // end of method ComponentLevel::.ctor

  .method private hidebysig instance void 
          '<AddExperience>b__28_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentPlayer Game.ComponentLevel::m_componentPlayer
    IL_0006:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_000b:  ldstr      "You've gained a level!"
    IL_0010:  ldc.i4.1
    IL_0011:  ldc.i4.0
    IL_0012:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0017:  ret
  } // end of method ComponentLevel::'<AddExperience>b__28_0'

  .method private hidebysig instance void 
          '<AddExperience>b__28_1'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       37 (0x25)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemAudio Game.ComponentLevel::m_subsystemAudio
    IL_0006:  ldstr      "Audio/ExperienceCollected"
    IL_000b:  ldc.r4     1.
    IL_0010:  ldc.r4     -0.2
    IL_0015:  ldc.r4     0.0
    IL_001a:  ldc.r4     0.0
    IL_001f:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      float32,
                                                                      float32)
    IL_0024:  ret
  } // end of method ComponentLevel::'<AddExperience>b__28_1'

  .method private hidebysig instance void 
          '<AddExperience>b__28_2'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       37 (0x25)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemAudio Game.ComponentLevel::m_subsystemAudio
    IL_0006:  ldstr      "Audio/ExperienceCollected"
    IL_000b:  ldc.r4     1.
    IL_0010:  ldc.r4     -3.3333331e-002
    IL_0015:  ldc.r4     0.0
    IL_001a:  ldc.r4     0.0
    IL_001f:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      float32,
                                                                      float32)
    IL_0024:  ret
  } // end of method ComponentLevel::'<AddExperience>b__28_2'

  .method private hidebysig instance void 
          '<AddExperience>b__28_3'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       37 (0x25)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemAudio Game.ComponentLevel::m_subsystemAudio
    IL_0006:  ldstr      "Audio/ExperienceCollected"
    IL_000b:  ldc.r4     1.
    IL_0010:  ldc.r4     0.13333334
    IL_0015:  ldc.r4     0.0
    IL_001a:  ldc.r4     0.0
    IL_001f:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      float32,
                                                                      float32)
    IL_0024:  ret
  } // end of method ComponentLevel::'<AddExperience>b__28_3'

  .method private hidebysig instance void 
          '<AddExperience>b__28_4'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       37 (0x25)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemAudio Game.ComponentLevel::m_subsystemAudio
    IL_0006:  ldstr      "Audio/ExperienceCollected"
    IL_000b:  ldc.r4     1.
    IL_0010:  ldc.r4     0.38333333
    IL_0015:  ldc.r4     0.0
    IL_001a:  ldc.r4     0.0
    IL_001f:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      float32,
                                                                      float32)
    IL_0024:  ret
  } // end of method ComponentLevel::'<AddExperience>b__28_4'

  .method private hidebysig instance void 
          '<AddExperience>b__28_5'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       37 (0x25)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemAudio Game.ComponentLevel::m_subsystemAudio
    IL_0006:  ldstr      "Audio/ExperienceCollected"
    IL_000b:  ldc.r4     1.
    IL_0010:  ldc.r4     -3.3333331e-002
    IL_0015:  ldc.r4     0.0
    IL_001a:  ldc.r4     0.0
    IL_001f:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      float32,
                                                                      float32)
    IL_0024:  ret
  } // end of method ComponentLevel::'<AddExperience>b__28_5'

  .method private hidebysig instance void 
          '<AddExperience>b__28_6'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       37 (0x25)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemAudio Game.ComponentLevel::m_subsystemAudio
    IL_0006:  ldstr      "Audio/ExperienceCollected"
    IL_000b:  ldc.r4     1.
    IL_0010:  ldc.r4     0.38333333
    IL_0015:  ldc.r4     0.0
    IL_001a:  ldc.r4     0.0
    IL_001f:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      float32,
                                                                      float32)
    IL_0024:  ret
  } // end of method ComponentLevel::'<AddExperience>b__28_6'

  .property instance float32 StrengthFactor()
  {
    .get instance float32 Game.ComponentLevel::get_StrengthFactor()
    .set instance void Game.ComponentLevel::set_StrengthFactor(float32)
  } // end of property ComponentLevel::StrengthFactor
  .property instance float32 ResilienceFactor()
  {
    .get instance float32 Game.ComponentLevel::get_ResilienceFactor()
    .set instance void Game.ComponentLevel::set_ResilienceFactor(float32)
  } // end of property ComponentLevel::ResilienceFactor
  .property instance float32 SpeedFactor()
  {
    .get instance float32 Game.ComponentLevel::get_SpeedFactor()
    .set instance void Game.ComponentLevel::set_SpeedFactor(float32)
  } // end of property ComponentLevel::SpeedFactor
  .property instance float32 HungerFactor()
  {
    .get instance float32 Game.ComponentLevel::get_HungerFactor()
    .set instance void Game.ComponentLevel::set_HungerFactor(float32)
  } // end of property ComponentLevel::HungerFactor
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentLevel::get_UpdateOrder()
  } // end of property ComponentLevel::UpdateOrder
} // end of class Game.ComponentLevel