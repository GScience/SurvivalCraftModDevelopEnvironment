.class public auto ansi beforefieldinit Game.ComponentSleep
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IUpdateable
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.ComponentSleep/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`3<int32,float32,bool> '<>9__16_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.ComponentSleep/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.ComponentSleep/'<>c' Game.ComponentSleep/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance bool 
            '<CanSleep>b__16_0'(int32 'value',
                                float32 distance) cil managed
    {
      // 代码大小       10 (0xa)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  call       int32 Game.Terrain::ExtractContents(int32)
      IL_0006:  ldc.i4.0
      IL_0007:  cgt.un
      IL_0009:  ret
    } // end of method '<>c'::'<CanSleep>b__16_0'

  } // end of class '<>c'

  .field private class Game.SubsystemPlayers m_subsystemPlayers
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemUpdate m_subsystemUpdate
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemTimeOfDay m_subsystemTimeOfDay
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.ComponentPlayer m_componentPlayer
  .field private valuetype [System.Runtime]System.Nullable`1<float64> m_sleepStartTime
  .field private float32 m_sleepFactor
  .field private bool m_allowManualWakeUp
  .field private float32 m_minWetness
  .field private float32 m_messageFactor
  .method public hidebysig specialname instance bool 
          get_IsSleeping() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSleep::m_sleepStartTime
    IL_0006:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_000b:  ret
  } // end of method ComponentSleep::get_IsSleeping

  .method public hidebysig specialname instance float32 
          get_SleepFactor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentSleep::m_sleepFactor
    IL_0006:  ret
  } // end of method ComponentSleep::get_SleepFactor

  .method public hidebysig instance bool 
          CanSleep([out] string& reason) cil managed
  {
    // 代码大小       365 (0x16d)
    .maxstack  7
    .locals init (class Game.Block V_0,
             valuetype [System.Runtime]System.Nullable`1<int32> V_1,
             int32 V_2,
             int32 V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_6)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_0006:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_000b:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_0010:  stloc.1
    IL_0011:  ldloca.s   V_1
    IL_0013:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0018:  brtrue.s   IL_001d

    IL_001a:  ldnull
    IL_001b:  br.s       IL_0040

    IL_001d:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_0028:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_002d:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_0032:  stloc.1
    IL_0033:  ldloca.s   V_1
    IL_0035:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_003a:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_003f:  ldelem.ref
    IL_0040:  stloc.0
    IL_0041:  ldloc.0
    IL_0042:  brfalse.s  IL_005b

    IL_0044:  ldarg.0
    IL_0045:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_004a:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_004f:  callvirt   instance float32 Game.ComponentBody::get_ImmersionDepth()
    IL_0054:  ldc.r4     0.0
    IL_0059:  ble.un.s   IL_0064

    IL_005b:  ldarg.1
    IL_005c:  ldstr      "You must be on dry land"
    IL_0061:  stind.ref
    IL_0062:  ldc.i4.0
    IL_0063:  ret

    IL_0064:  ldloc.0
    IL_0065:  brfalse.s  IL_007d

    IL_0067:  ldloc.0
    IL_0068:  ldfld      float32 Game.Block::SleepSuitability
    IL_006d:  ldc.r4     0.0
    IL_0072:  bne.un.s   IL_007d

    IL_0074:  ldarg.1
    IL_0075:  ldstr      "Too uncomfortable to sleep"
    IL_007a:  stind.ref
    IL_007b:  ldc.i4.0
    IL_007c:  ret

    IL_007d:  ldarg.0
    IL_007e:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_0083:  callvirt   instance class Game.ComponentVitalStats Game.ComponentPlayer::get_ComponentVitalStats()
    IL_0088:  callvirt   instance float32 Game.ComponentVitalStats::get_Sleep()
    IL_008d:  ldc.r4     0.99000001
    IL_0092:  ble.un.s   IL_009d

    IL_0094:  ldarg.1
    IL_0095:  ldstr      "You are not tired enough"
    IL_009a:  stind.ref
    IL_009b:  ldc.i4.0
    IL_009c:  ret

    IL_009d:  ldarg.0
    IL_009e:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_00a3:  callvirt   instance class Game.ComponentVitalStats Game.ComponentPlayer::get_ComponentVitalStats()
    IL_00a8:  callvirt   instance float32 Game.ComponentVitalStats::get_Wetness()
    IL_00ad:  ldc.r4     0.94999999
    IL_00b2:  ble.un.s   IL_00bd

    IL_00b4:  ldarg.1
    IL_00b5:  ldstr      "You are too wet"
    IL_00ba:  stind.ref
    IL_00bb:  ldc.i4.0
    IL_00bc:  ret

    IL_00bd:  ldc.i4.m1
    IL_00be:  stloc.2
    IL_00bf:  br         IL_015d

    IL_00c4:  ldc.i4.m1
    IL_00c5:  stloc.3
    IL_00c6:  br         IL_0152

    IL_00cb:  ldarg.0
    IL_00cc:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_00d1:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00d6:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_00db:  ldloc.2
    IL_00dc:  conv.r4
    IL_00dd:  ldc.r4     1.
    IL_00e2:  ldloc.3
    IL_00e3:  conv.r4
    IL_00e4:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00e9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00ee:  stloc.s    V_4
    IL_00f0:  ldloca.s   V_5
    IL_00f2:  ldloc.s    V_4
    IL_00f4:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00f9:  ldc.r4     127.
    IL_00fe:  ldloc.s    V_4
    IL_0100:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0105:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_010a:  ldarg.0
    IL_010b:  ldfld      class Game.SubsystemTerrain Game.ComponentSleep::m_subsystemTerrain
    IL_0110:  ldloc.s    V_4
    IL_0112:  ldloc.s    V_5
    IL_0114:  ldc.i4.0
    IL_0115:  ldc.i4.1
    IL_0116:  ldsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.ComponentSleep/'<>c'::'<>9__16_0'
    IL_011b:  dup
    IL_011c:  brtrue.s   IL_0135

    IL_011e:  pop
    IL_011f:  ldsfld     class Game.ComponentSleep/'<>c' Game.ComponentSleep/'<>c'::'<>9'
    IL_0124:  ldftn      instance bool Game.ComponentSleep/'<>c'::'<CanSleep>b__16_0'(int32,
                                                                                      float32)
    IL_012a:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                      native int)
    IL_012f:  dup
    IL_0130:  stsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.ComponentSleep/'<>c'::'<>9__16_0'
    IL_0135:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                                                  bool,
                                                                                                                                                  bool,
                                                                                                                                                  class [System.Runtime]System.Func`3<int32,float32,bool>)
    IL_013a:  stloc.s    V_6
    IL_013c:  ldloca.s   V_6
    IL_013e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_0143:  brtrue.s   IL_014e

    IL_0145:  ldarg.1
    IL_0146:  ldstr      "You need a better shelter"
    IL_014b:  stind.ref
    IL_014c:  ldc.i4.0
    IL_014d:  ret

    IL_014e:  ldloc.3
    IL_014f:  ldc.i4.1
    IL_0150:  add
    IL_0151:  stloc.3
    IL_0152:  ldloc.3
    IL_0153:  ldc.i4.1
    IL_0154:  ble        IL_00cb

    IL_0159:  ldloc.2
    IL_015a:  ldc.i4.1
    IL_015b:  add
    IL_015c:  stloc.2
    IL_015d:  ldloc.2
    IL_015e:  ldc.i4.1
    IL_015f:  ble        IL_00c4

    IL_0164:  ldarg.1
    IL_0165:  ldsfld     string [System.Runtime]System.String::Empty
    IL_016a:  stind.ref
    IL_016b:  ldc.i4.1
    IL_016c:  ret
  } // end of method ComponentSleep::CanSleep

  .method public hidebysig instance void 
          Sleep(bool allowManualWakeup) cil managed
  {
    // 代码大小       98 (0x62)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  call       instance bool Game.ComponentSleep::get_IsSleeping()
    IL_0006:  brtrue.s   IL_0061

    IL_0008:  ldarg.0
    IL_0009:  ldarg.0
    IL_000a:  ldfld      class Game.SubsystemGameInfo Game.ComponentSleep::m_subsystemGameInfo
    IL_000f:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_0014:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_0019:  stfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSleep::m_sleepStartTime
    IL_001e:  ldarg.0
    IL_001f:  ldarg.1
    IL_0020:  stfld      bool Game.ComponentSleep::m_allowManualWakeUp
    IL_0025:  ldarg.0
    IL_0026:  ldc.r4     3.4028235e+038
    IL_002b:  stfld      float32 Game.ComponentSleep::m_minWetness
    IL_0030:  ldarg.0
    IL_0031:  ldc.r4     0.0
    IL_0036:  stfld      float32 Game.ComponentSleep::m_messageFactor
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_0041:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_0046:  brfalse.s  IL_0061

    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_004e:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_0053:  dup
    IL_0054:  ldfld      int64 Game.PlayerStats::TimesWentToSleep
    IL_0059:  ldc.i4.1
    IL_005a:  conv.i8
    IL_005b:  add
    IL_005c:  stfld      int64 Game.PlayerStats::TimesWentToSleep
    IL_0061:  ret
  } // end of method ComponentSleep::Sleep

  .method public hidebysig instance void 
          WakeUp() cil managed
  {
    // 代码大小       83 (0x53)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSleep::m_sleepStartTime
    IL_0006:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_000b:  brfalse.s  IL_0052

    IL_000d:  ldarg.0
    IL_000e:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSleep::m_sleepStartTime
    IL_0013:  initobj    valuetype [System.Runtime]System.Nullable`1<float64>
    IL_0019:  ldarg.0
    IL_001a:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_001f:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_0024:  ldarg.0
    IL_0025:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_002a:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_002f:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0034:  ldc.r4     0.0
    IL_0039:  ldc.r4     0.1
    IL_003e:  ldc.r4     0.0
    IL_0043:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0048:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_004d:  callvirt   instance void Game.PlayerData::set_SpawnPosition(valuetype [Engine]Engine.Vector3)
    IL_0052:  ret
  } // end of method ComponentSleep::WakeUp

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentSleep::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       1003 (0x3eb)
    .maxstack  4
    .locals init (valuetype [System.Runtime]System.Nullable`1<float64> V_0,
             valuetype [System.Runtime]System.Nullable`1<float64> V_1,
             float64 V_2,
             valuetype [System.Runtime]System.Nullable`1<float64> V_3,
             float32 V_4)
    IL_0000:  ldarg.0
    IL_0001:  call       instance bool Game.ComponentSleep::get_IsSleeping()
    IL_0006:  brfalse    IL_0354

    IL_000b:  ldarg.0
    IL_000c:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_0011:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0016:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_001b:  ldc.r4     0.0
    IL_0020:  ble.un     IL_0354

    IL_0025:  ldarg.0
    IL_0026:  ldarg.0
    IL_0027:  ldfld      float32 Game.ComponentSleep::m_sleepFactor
    IL_002c:  ldc.r4     0.33000001
    IL_0031:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_0036:  mul
    IL_0037:  add
    IL_0038:  ldc.r4     1.
    IL_003d:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0042:  stfld      float32 Game.ComponentSleep::m_sleepFactor
    IL_0047:  ldarg.0
    IL_0048:  ldarg.0
    IL_0049:  ldfld      float32 Game.ComponentSleep::m_minWetness
    IL_004e:  ldarg.0
    IL_004f:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_0054:  callvirt   instance class Game.ComponentVitalStats Game.ComponentPlayer::get_ComponentVitalStats()
    IL_0059:  callvirt   instance float32 Game.ComponentVitalStats::get_Wetness()
    IL_005e:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0063:  stfld      float32 Game.ComponentSleep::m_minWetness
    IL_0068:  ldarg.0
    IL_0069:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_006e:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_0073:  dup
    IL_0074:  ldfld      float64 Game.PlayerStats::TimeSlept
    IL_0079:  ldarg.0
    IL_007a:  ldfld      class Game.SubsystemGameInfo Game.ComponentSleep::m_subsystemGameInfo
    IL_007f:  callvirt   instance float32 Game.SubsystemGameInfo::get_TotalElapsedGameTimeDelta()
    IL_0084:  conv.r8
    IL_0085:  add
    IL_0086:  stfld      float64 Game.PlayerStats::TimeSlept
    IL_008b:  ldarg.0
    IL_008c:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_0091:  callvirt   instance class Game.ComponentVitalStats Game.ComponentPlayer::get_ComponentVitalStats()
    IL_0096:  callvirt   instance float32 Game.ComponentVitalStats::get_Sleep()
    IL_009b:  ldc.r4     1.
    IL_00a0:  bge.s      IL_00b7

    IL_00a2:  ldarg.0
    IL_00a3:  ldfld      class Game.SubsystemGameInfo Game.ComponentSleep::m_subsystemGameInfo
    IL_00a8:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_00ad:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_00b2:  brtrue     IL_013f

    IL_00b7:  ldarg.0
    IL_00b8:  ldfld      class Game.SubsystemTimeOfDay Game.ComponentSleep::m_subsystemTimeOfDay
    IL_00bd:  callvirt   instance float32 Game.SubsystemTimeOfDay::get_TimeOfDay()
    IL_00c2:  ldc.r4     0.30000001
    IL_00c7:  ble.un.s   IL_013f

    IL_00c9:  ldarg.0
    IL_00ca:  ldfld      class Game.SubsystemTimeOfDay Game.ComponentSleep::m_subsystemTimeOfDay
    IL_00cf:  callvirt   instance float32 Game.SubsystemTimeOfDay::get_TimeOfDay()
    IL_00d4:  ldc.r4     0.59999996
    IL_00d9:  bge.un.s   IL_013f

    IL_00db:  ldarg.0
    IL_00dc:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSleep::m_sleepStartTime
    IL_00e1:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_00e6:  brfalse.s  IL_013f

    IL_00e8:  ldarg.0
    IL_00e9:  ldfld      class Game.SubsystemGameInfo Game.ComponentSleep::m_subsystemGameInfo
    IL_00ee:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_00f3:  ldarg.0
    IL_00f4:  ldfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSleep::m_sleepStartTime
    IL_00f9:  stloc.1
    IL_00fa:  ldc.r4     180.
    IL_00ff:  conv.r8
    IL_0100:  stloc.2
    IL_0101:  ldloca.s   V_1
    IL_0103:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_0108:  brtrue.s   IL_0115

    IL_010a:  ldloca.s   V_3
    IL_010c:  initobj    valuetype [System.Runtime]System.Nullable`1<float64>
    IL_0112:  ldloc.3
    IL_0113:  br.s       IL_0123

    IL_0115:  ldloca.s   V_1
    IL_0117:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::GetValueOrDefault()
    IL_011c:  ldloc.2
    IL_011d:  add
    IL_011e:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_0123:  stloc.0
    IL_0124:  ldloca.s   V_0
    IL_0126:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::GetValueOrDefault()
    IL_012b:  bgt.s      IL_0130

    IL_012d:  ldc.i4.0
    IL_012e:  br.s       IL_0137

    IL_0130:  ldloca.s   V_0
    IL_0132:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_0137:  brfalse.s  IL_013f

    IL_0139:  ldarg.0
    IL_013a:  call       instance void Game.ComponentSleep::WakeUp()
    IL_013f:  ldarg.0
    IL_0140:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_0145:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_014a:  callvirt   instance float32 Game.ComponentHealth::get_HealthChange()
    IL_014f:  ldc.r4     0.0
    IL_0154:  bge.un.s   IL_018a

    IL_0156:  ldarg.0
    IL_0157:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_015c:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0161:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_0166:  ldc.r4     0.5
    IL_016b:  blt.s      IL_0184

    IL_016d:  ldarg.0
    IL_016e:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_0173:  callvirt   instance class Game.ComponentVitalStats Game.ComponentPlayer::get_ComponentVitalStats()
    IL_0178:  callvirt   instance float32 Game.ComponentVitalStats::get_Sleep()
    IL_017d:  ldc.r4     0.5
    IL_0182:  ble.un.s   IL_018a

    IL_0184:  ldarg.0
    IL_0185:  call       instance void Game.ComponentSleep::WakeUp()
    IL_018a:  ldarg.0
    IL_018b:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_0190:  callvirt   instance class Game.ComponentVitalStats Game.ComponentPlayer::get_ComponentVitalStats()
    IL_0195:  callvirt   instance float32 Game.ComponentVitalStats::get_Wetness()
    IL_019a:  ldarg.0
    IL_019b:  ldfld      float32 Game.ComponentSleep::m_minWetness
    IL_01a0:  ldc.r4     5.0000001e-002
    IL_01a5:  add
    IL_01a6:  ble.un.s   IL_01f1

    IL_01a8:  ldarg.0
    IL_01a9:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_01ae:  callvirt   instance class Game.ComponentVitalStats Game.ComponentPlayer::get_ComponentVitalStats()
    IL_01b3:  callvirt   instance float32 Game.ComponentVitalStats::get_Sleep()
    IL_01b8:  ldc.r4     0.2
    IL_01bd:  ble.un.s   IL_01f1

    IL_01bf:  ldarg.0
    IL_01c0:  call       instance void Game.ComponentSleep::WakeUp()
    IL_01c5:  ldarg.0
    IL_01c6:  ldfld      class Game.SubsystemTime Game.ComponentSleep::m_subsystemTime
    IL_01cb:  ldarg.0
    IL_01cc:  ldfld      class Game.SubsystemTime Game.ComponentSleep::m_subsystemTime
    IL_01d1:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_01d6:  ldc.r8     1.
    IL_01df:  add
    IL_01e0:  ldarg.0
    IL_01e1:  ldftn      instance void Game.ComponentSleep::'<Update>b__21_0'()
    IL_01e7:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01ec:  callvirt   instance void Game.SubsystemTime::QueueGameTimeDelayedExecution(float64,
                                                                                         class [System.Runtime]System.Action)
    IL_01f1:  ldarg.0
    IL_01f2:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSleep::m_sleepStartTime
    IL_01f7:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_01fc:  brfalse    IL_0376

    IL_0201:  ldarg.0
    IL_0202:  ldfld      class Game.SubsystemGameInfo Game.ComponentSleep::m_subsystemGameInfo
    IL_0207:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_020c:  ldarg.0
    IL_020d:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSleep::m_sleepStartTime
    IL_0212:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::get_Value()
    IL_0217:  sub
    IL_0218:  conv.r4
    IL_0219:  stloc.s    V_4
    IL_021b:  ldarg.0
    IL_021c:  ldfld      bool Game.ComponentSleep::m_allowManualWakeUp
    IL_0221:  brfalse    IL_02f4

    IL_0226:  ldloc.s    V_4
    IL_0228:  ldc.r4     10.
    IL_022d:  ble.un     IL_02f4

    IL_0232:  ldarg.0
    IL_0233:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_0238:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_023d:  callvirt   instance class Game.WidgetInput Game.View::get_Input()
    IL_0242:  callvirt   instance bool Game.WidgetInput::get_Any()
    IL_0247:  brfalse.s  IL_02a7

    IL_0249:  ldarg.0
    IL_024a:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_024f:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_0254:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_0259:  call       bool Game.DialogsManager::HasDialogs(class Game.ContainerWidget)
    IL_025e:  brtrue.s   IL_02a7

    IL_0260:  ldarg.0
    IL_0261:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_0266:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_026b:  callvirt   instance class Game.WidgetInput Game.View::get_Input()
    IL_0270:  callvirt   instance void Game.WidgetInput::Clear()
    IL_0275:  ldarg.0
    IL_0276:  call       instance void Game.ComponentSleep::WakeUp()
    IL_027b:  ldarg.0
    IL_027c:  ldfld      class Game.SubsystemTime Game.ComponentSleep::m_subsystemTime
    IL_0281:  ldarg.0
    IL_0282:  ldfld      class Game.SubsystemTime Game.ComponentSleep::m_subsystemTime
    IL_0287:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_028c:  ldc.r8     2.
    IL_0295:  add
    IL_0296:  ldarg.0
    IL_0297:  ldftn      instance void Game.ComponentSleep::'<Update>b__21_1'()
    IL_029d:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_02a2:  callvirt   instance void Game.SubsystemTime::QueueGameTimeDelayedExecution(float64,
                                                                                         class [System.Runtime]System.Action)
    IL_02a7:  ldarg.0
    IL_02a8:  ldarg.0
    IL_02a9:  ldfld      float32 Game.ComponentSleep::m_messageFactor
    IL_02ae:  ldc.r4     0.5
    IL_02b3:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_02b8:  mul
    IL_02b9:  add
    IL_02ba:  ldc.r4     1.
    IL_02bf:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_02c4:  stfld      float32 Game.ComponentSleep::m_messageFactor
    IL_02c9:  ldarg.0
    IL_02ca:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_02cf:  callvirt   instance class Game.ComponentScreenOverlays Game.ComponentPlayer::get_ComponentScreenOverlays()
    IL_02d4:  ldstr      "Tap to wake up early"
    IL_02d9:  callvirt   instance void Game.ComponentScreenOverlays::set_Message(string)
    IL_02de:  ldarg.0
    IL_02df:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_02e4:  callvirt   instance class Game.ComponentScreenOverlays Game.ComponentPlayer::get_ComponentScreenOverlays()
    IL_02e9:  ldarg.0
    IL_02ea:  ldfld      float32 Game.ComponentSleep::m_messageFactor
    IL_02ef:  callvirt   instance void Game.ComponentScreenOverlays::set_MessageFactor(float32)
    IL_02f4:  ldarg.0
    IL_02f5:  ldfld      bool Game.ComponentSleep::m_allowManualWakeUp
    IL_02fa:  brtrue.s   IL_0376

    IL_02fc:  ldloc.s    V_4
    IL_02fe:  ldc.r4     5.
    IL_0303:  ble.un.s   IL_0376

    IL_0305:  ldarg.0
    IL_0306:  ldarg.0
    IL_0307:  ldfld      float32 Game.ComponentSleep::m_messageFactor
    IL_030c:  ldc.r4     1.
    IL_0311:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_0316:  mul
    IL_0317:  add
    IL_0318:  ldc.r4     1.
    IL_031d:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0322:  stfld      float32 Game.ComponentSleep::m_messageFactor
    IL_0327:  ldarg.0
    IL_0328:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_032d:  callvirt   instance class Game.ComponentScreenOverlays Game.ComponentPlayer::get_ComponentScreenOverlays()
    IL_0332:  ldstr      "You fell unconscious from lack of sleep"
    IL_0337:  callvirt   instance void Game.ComponentScreenOverlays::set_Message(string)
    IL_033c:  ldarg.0
    IL_033d:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_0342:  callvirt   instance class Game.ComponentScreenOverlays Game.ComponentPlayer::get_ComponentScreenOverlays()
    IL_0347:  ldarg.0
    IL_0348:  ldfld      float32 Game.ComponentSleep::m_messageFactor
    IL_034d:  callvirt   instance void Game.ComponentScreenOverlays::set_MessageFactor(float32)
    IL_0352:  br.s       IL_0376

    IL_0354:  ldarg.0
    IL_0355:  ldarg.0
    IL_0356:  ldfld      float32 Game.ComponentSleep::m_sleepFactor
    IL_035b:  ldc.r4     1.
    IL_0360:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_0365:  mul
    IL_0366:  sub
    IL_0367:  ldc.r4     0.0
    IL_036c:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0371:  stfld      float32 Game.ComponentSleep::m_sleepFactor
    IL_0376:  ldarg.0
    IL_0377:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_037c:  callvirt   instance class Game.ComponentScreenOverlays Game.ComponentPlayer::get_ComponentScreenOverlays()
    IL_0381:  ldarg.0
    IL_0382:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_0387:  callvirt   instance class Game.ComponentScreenOverlays Game.ComponentPlayer::get_ComponentScreenOverlays()
    IL_038c:  callvirt   instance float32 Game.ComponentScreenOverlays::get_BlackoutFactor()
    IL_0391:  ldarg.0
    IL_0392:  ldfld      float32 Game.ComponentSleep::m_sleepFactor
    IL_0397:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_039c:  callvirt   instance void Game.ComponentScreenOverlays::set_BlackoutFactor(float32)
    IL_03a1:  ldarg.0
    IL_03a2:  ldfld      float32 Game.ComponentSleep::m_sleepFactor
    IL_03a7:  ldc.r4     9.9999998e-003
    IL_03ac:  ble.un.s   IL_03ea

    IL_03ae:  ldarg.0
    IL_03af:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_03b4:  callvirt   instance class Game.ComponentScreenOverlays Game.ComponentPlayer::get_ComponentScreenOverlays()
    IL_03b9:  ldstr      "Zzz..."
    IL_03be:  callvirt   instance void Game.ComponentScreenOverlays::set_FloatingMessage(string)
    IL_03c3:  ldarg.0
    IL_03c4:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_03c9:  callvirt   instance class Game.ComponentScreenOverlays Game.ComponentPlayer::get_ComponentScreenOverlays()
    IL_03ce:  ldc.r4     10.
    IL_03d3:  ldarg.0
    IL_03d4:  ldfld      float32 Game.ComponentSleep::m_sleepFactor
    IL_03d9:  ldc.r4     0.89999998
    IL_03de:  sub
    IL_03df:  mul
    IL_03e0:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_03e5:  callvirt   instance void Game.ComponentScreenOverlays::set_FloatingMessageFactor(float32)
    IL_03ea:  ret
  } // end of method ComponentSleep::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       280 (0x118)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Nullable`1<float64> V_0,
             float64 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPlayers>(bool)
    IL_000d:  stfld      class Game.SubsystemPlayers Game.ComponentSleep::m_subsystemPlayers
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_001f:  stfld      class Game.SubsystemTime Game.ComponentSleep::m_subsystemTime
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemUpdate>(bool)
    IL_0031:  stfld      class Game.SubsystemUpdate Game.ComponentSleep::m_subsystemUpdate
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_0043:  stfld      class Game.SubsystemGameInfo Game.ComponentSleep::m_subsystemGameInfo
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTimeOfDay>(bool)
    IL_0055:  stfld      class Game.SubsystemTimeOfDay Game.ComponentSleep::m_subsystemTimeOfDay
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0067:  stfld      class Game.SubsystemTerrain Game.ComponentSleep::m_subsystemTerrain
    IL_006c:  ldarg.0
    IL_006d:  ldarg.0
    IL_006e:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0073:  ldc.i4.1
    IL_0074:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPlayer>(bool)
    IL_0079:  stfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_007e:  ldarg.0
    IL_007f:  ldarg.1
    IL_0080:  ldstr      "SleepStartTime"
    IL_0085:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float64>(string)
    IL_008a:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_008f:  stfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSleep::m_sleepStartTime
    IL_0094:  ldarg.0
    IL_0095:  ldarg.1
    IL_0096:  ldstr      "AllowManualWakeUp"
    IL_009b:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<bool>(string)
    IL_00a0:  stfld      bool Game.ComponentSleep::m_allowManualWakeUp
    IL_00a5:  ldarg.0
    IL_00a6:  ldfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSleep::m_sleepStartTime
    IL_00ab:  stloc.0
    IL_00ac:  ldc.r8     0.0
    IL_00b5:  stloc.1
    IL_00b6:  ldloca.s   V_0
    IL_00b8:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::GetValueOrDefault()
    IL_00bd:  ldloc.1
    IL_00be:  beq.s      IL_00c3

    IL_00c0:  ldc.i4.0
    IL_00c1:  br.s       IL_00ca

    IL_00c3:  ldloca.s   V_0
    IL_00c5:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_00ca:  brfalse.s  IL_00d8

    IL_00cc:  ldarg.0
    IL_00cd:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSleep::m_sleepStartTime
    IL_00d2:  initobj    valuetype [System.Runtime]System.Nullable`1<float64>
    IL_00d8:  ldarg.0
    IL_00d9:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSleep::m_sleepStartTime
    IL_00de:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_00e3:  brfalse.s  IL_00fb

    IL_00e5:  ldarg.0
    IL_00e6:  ldc.r4     1.
    IL_00eb:  stfld      float32 Game.ComponentSleep::m_sleepFactor
    IL_00f0:  ldarg.0
    IL_00f1:  ldc.r4     3.4028235e+038
    IL_00f6:  stfld      float32 Game.ComponentSleep::m_minWetness
    IL_00fb:  ldarg.0
    IL_00fc:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_0101:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0106:  ldarg.0
    IL_0107:  ldftn      instance void Game.ComponentSleep::'<Load>b__22_0'(class Game.ComponentCreature)
    IL_010d:  newobj     instance void class [System.Runtime]System.Action`1<class Game.ComponentCreature>::.ctor(object,
                                                                                                                  native int)
    IL_0112:  callvirt   instance void Game.ComponentHealth::add_Attacked(class [System.Runtime]System.Action`1<class Game.ComponentCreature>)
    IL_0117:  ret
  } // end of method ComponentSleep::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.EntityToIdMap entityToIdMap) cil managed
  {
    // 代码大小       64 (0x40)
    .maxstack  3
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "SleepStartTime"
    IL_0006:  ldarg.0
    IL_0007:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSleep::m_sleepStartTime
    IL_000c:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_0011:  brtrue.s   IL_001e

    IL_0013:  ldc.r8     0.0
    IL_001c:  br.s       IL_0029

    IL_001e:  ldarg.0
    IL_001f:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSleep::m_sleepStartTime
    IL_0024:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::get_Value()
    IL_0029:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float64>(string,
                                                                                                           !!0)
    IL_002e:  ldarg.1
    IL_002f:  ldstr      "AllowManualWakeUp"
    IL_0034:  ldarg.0
    IL_0035:  ldfld      bool Game.ComponentSleep::m_allowManualWakeUp
    IL_003a:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<bool>(string,
                                                                                                        !!0)
    IL_003f:  ret
  } // end of method ComponentSleep::Save

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_0006:  ret
  } // end of method ComponentSleep::.ctor

  .method private hidebysig instance void 
          '<Update>b__21_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_0006:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_000b:  ldstr      "Brrr, wet!"
    IL_0010:  ldc.i4.1
    IL_0011:  ldc.i4.1
    IL_0012:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0017:  ret
  } // end of method ComponentSleep::'<Update>b__21_0'

  .method private hidebysig instance void 
          '<Update>b__21_1'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_0006:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_000b:  ldstr      "Ehh... what time is it\?"
    IL_0010:  ldc.i4.1
    IL_0011:  ldc.i4.0
    IL_0012:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0017:  ret
  } // end of method ComponentSleep::'<Update>b__21_1'

  .method private hidebysig instance void 
          '<Load>b__22_0'(class Game.ComponentCreature '<obj>') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       38 (0x26)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance bool Game.ComponentSleep::get_IsSleeping()
    IL_0006:  brfalse.s  IL_0025

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_000e:  callvirt   instance class Game.ComponentVitalStats Game.ComponentPlayer::get_ComponentVitalStats()
    IL_0013:  callvirt   instance float32 Game.ComponentVitalStats::get_Sleep()
    IL_0018:  ldc.r4     0.25
    IL_001d:  ble.un.s   IL_0025

    IL_001f:  ldarg.0
    IL_0020:  call       instance void Game.ComponentSleep::WakeUp()
    IL_0025:  ret
  } // end of method ComponentSleep::'<Load>b__22_0'

  .property instance bool IsSleeping()
  {
    .get instance bool Game.ComponentSleep::get_IsSleeping()
  } // end of property ComponentSleep::IsSleeping
  .property instance float32 SleepFactor()
  {
    .get instance float32 Game.ComponentSleep::get_SleepFactor()
  } // end of property ComponentSleep::SleepFactor
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentSleep::get_UpdateOrder()
  } // end of property ComponentSleep::UpdateOrder
} // end of class Game.ComponentSleep