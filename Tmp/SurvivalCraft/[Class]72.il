.class public auto ansi beforefieldinit Game.ComponentSleep
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IUpdateable
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.ComponentSleep/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`3<int32,float32,bool> '<>9__13_0'
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
            '<CanSleep>b__13_0'(int32 'value',
                                float32 distance) cil managed
    {
      // 代码大小       10 (0xa)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_0006:  ldc.i4.0
      IL_0007:  cgt.un
      IL_0009:  ret
    } // end of method '<>c'::'<CanSleep>b__13_0'

  } // end of class '<>c'

  .field private class Game.SubsystemPlayer m_subsystemPlayer
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemMainLoop m_subsystemMainLoop
  .field private class Game.SubsystemCamera m_subsystemCamera
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemTimeOfDay m_subsystemTimeOfDay
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemScreenOverlays m_subsystemScreenOverlays
  .field private class Game.ComponentPlayer m_componentPlayer
  .field private valuetype [System.Runtime]System.Nullable`1<float64> m_sleepStartTime
  .field private float32 m_sleepFactor
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

  .method public hidebysig instance bool 
          CanSleep([out] string& reason) cil managed
  {
    // 代码大小       333 (0x14d)
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
    IL_003a:  call       int32 Game.TerrainData::ExtractContents(int32)
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

    IL_009d:  ldc.i4.m1
    IL_009e:  stloc.2
    IL_009f:  br         IL_013d

    IL_00a4:  ldc.i4.m1
    IL_00a5:  stloc.3
    IL_00a6:  br         IL_0132

    IL_00ab:  ldarg.0
    IL_00ac:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_00b1:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00b6:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_00bb:  ldloc.2
    IL_00bc:  conv.r4
    IL_00bd:  ldc.r4     1.
    IL_00c2:  ldloc.3
    IL_00c3:  conv.r4
    IL_00c4:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00c9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00ce:  stloc.s    V_4
    IL_00d0:  ldloca.s   V_5
    IL_00d2:  ldloc.s    V_4
    IL_00d4:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00d9:  ldc.r4     127.
    IL_00de:  ldloc.s    V_4
    IL_00e0:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00e5:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00ea:  ldarg.0
    IL_00eb:  ldfld      class Game.SubsystemTerrain Game.ComponentSleep::m_subsystemTerrain
    IL_00f0:  ldloc.s    V_4
    IL_00f2:  ldloc.s    V_5
    IL_00f4:  ldc.i4.0
    IL_00f5:  ldc.i4.1
    IL_00f6:  ldsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.ComponentSleep/'<>c'::'<>9__13_0'
    IL_00fb:  dup
    IL_00fc:  brtrue.s   IL_0115

    IL_00fe:  pop
    IL_00ff:  ldsfld     class Game.ComponentSleep/'<>c' Game.ComponentSleep/'<>c'::'<>9'
    IL_0104:  ldftn      instance bool Game.ComponentSleep/'<>c'::'<CanSleep>b__13_0'(int32,
                                                                                      float32)
    IL_010a:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                      native int)
    IL_010f:  dup
    IL_0110:  stsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.ComponentSleep/'<>c'::'<>9__13_0'
    IL_0115:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                                                  bool,
                                                                                                                                                  bool,
                                                                                                                                                  class [System.Runtime]System.Func`3<int32,float32,bool>)
    IL_011a:  stloc.s    V_6
    IL_011c:  ldloca.s   V_6
    IL_011e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_0123:  brtrue.s   IL_012e

    IL_0125:  ldarg.1
    IL_0126:  ldstr      "You need a better shelter"
    IL_012b:  stind.ref
    IL_012c:  ldc.i4.0
    IL_012d:  ret

    IL_012e:  ldloc.3
    IL_012f:  ldc.i4.1
    IL_0130:  add
    IL_0131:  stloc.3
    IL_0132:  ldloc.3
    IL_0133:  ldc.i4.1
    IL_0134:  ble        IL_00ab

    IL_0139:  ldloc.2
    IL_013a:  ldc.i4.1
    IL_013b:  add
    IL_013c:  stloc.2
    IL_013d:  ldloc.2
    IL_013e:  ldc.i4.1
    IL_013f:  ble        IL_00a4

    IL_0144:  ldarg.1
    IL_0145:  ldsfld     string [System.Runtime]System.String::Empty
    IL_014a:  stind.ref
    IL_014b:  ldc.i4.1
    IL_014c:  ret
  } // end of method ComponentSleep::CanSleep

  .method public hidebysig instance void 
          Sleep() cil managed
  {
    // 代码大小       69 (0x45)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  call       instance bool Game.ComponentSleep::get_IsSleeping()
    IL_0006:  brtrue.s   IL_0044

    IL_0008:  ldarg.0
    IL_0009:  ldarg.0
    IL_000a:  ldfld      class Game.SubsystemGameInfo Game.ComponentSleep::m_subsystemGameInfo
    IL_000f:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_0014:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_0019:  stfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSleep::m_sleepStartTime
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_0024:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_0029:  brfalse.s  IL_0044

    IL_002b:  ldarg.0
    IL_002c:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_0031:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_0036:  dup
    IL_0037:  ldfld      int64 Game.PlayerStats::TimesWentToSleep
    IL_003c:  ldc.i4.1
    IL_003d:  conv.i8
    IL_003e:  add
    IL_003f:  stfld      int64 Game.PlayerStats::TimesWentToSleep
    IL_0044:  ret
  } // end of method ComponentSleep::Sleep

  .method public hidebysig instance void 
          WakeUp() cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSleep::m_sleepStartTime
    IL_0006:  initobj    valuetype [System.Runtime]System.Nullable`1<float64>
    IL_000c:  ret
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
    // 代码大小       552 (0x228)
    .maxstack  5
    .locals init (float32 V_0,
             float64 V_1,
             float64 V_2)
    IL_0000:  ldarg.0
    IL_0001:  call       instance bool Game.ComponentSleep::get_IsSleeping()
    IL_0006:  brfalse    IL_0186

    IL_000b:  ldarg.0
    IL_000c:  ldarg.0
    IL_000d:  ldfld      float32 Game.ComponentSleep::m_sleepFactor
    IL_0012:  ldc.r4     0.33000001
    IL_0017:  ldarg.0
    IL_0018:  ldfld      class Game.SubsystemTime Game.ComponentSleep::m_subsystemTime
    IL_001d:  callvirt   instance float32 Game.SubsystemTime::get_RealTimeDelta()
    IL_0022:  mul
    IL_0023:  add
    IL_0024:  ldc.r4     1.
    IL_0029:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_002e:  stfld      float32 Game.ComponentSleep::m_sleepFactor
    IL_0033:  ldarg.0
    IL_0034:  ldfld      class Game.SubsystemTimeOfDay Game.ComponentSleep::m_subsystemTimeOfDay
    IL_0039:  ldarg.0
    IL_003a:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSleep::m_sleepStartTime
    IL_003f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::get_Value()
    IL_0044:  callvirt   instance float32 Game.SubsystemTimeOfDay::CalculateTimeOfDay(float64)
    IL_0049:  ldc.r4     0.30000001
    IL_004e:  sub
    IL_004f:  ldc.r4     1.
    IL_0054:  add
    IL_0055:  ldc.r4     1.
    IL_005a:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_005f:  stloc.0
    IL_0060:  ldarg.0
    IL_0061:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSleep::m_sleepStartTime
    IL_0066:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::get_Value()
    IL_006b:  ldc.r4     1.
    IL_0070:  ldloc.0
    IL_0071:  sub
    IL_0072:  ldc.r4     1200.
    IL_0077:  mul
    IL_0078:  conv.r8
    IL_0079:  add
    IL_007a:  stloc.1
    IL_007b:  ldloc.1
    IL_007c:  ldarg.0
    IL_007d:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSleep::m_sleepStartTime
    IL_0082:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::get_Value()
    IL_0087:  sub
    IL_0088:  ldc.r8     14.
    IL_0091:  div
    IL_0092:  ldarg.0
    IL_0093:  ldfld      class Game.SubsystemTime Game.ComponentSleep::m_subsystemTime
    IL_0098:  callvirt   instance float32 Game.SubsystemTime::get_RealTimeDelta()
    IL_009d:  conv.r8
    IL_009e:  mul
    IL_009f:  ldarg.0
    IL_00a0:  ldfld      class Game.SubsystemGameInfo Game.ComponentSleep::m_subsystemGameInfo
    IL_00a5:  callvirt   instance float32 Game.SubsystemGameInfo::get_TotalElapsedGameTimeDelta()
    IL_00aa:  conv.r8
    IL_00ab:  sub
    IL_00ac:  ldc.r8     0.0
    IL_00b5:  call       float64 [Engine]Engine.MathUtils::Max(float64,
                                                               float64)
    IL_00ba:  stloc.2
    IL_00bb:  ldarg.0
    IL_00bc:  ldfld      class Game.SubsystemGameInfo Game.ComponentSleep::m_subsystemGameInfo
    IL_00c1:  dup
    IL_00c2:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_00c7:  ldloc.2
    IL_00c8:  add
    IL_00c9:  callvirt   instance void Game.SubsystemGameInfo::set_TotalElapsedGameTime(float64)
    IL_00ce:  ldarg.0
    IL_00cf:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_00d4:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_00d9:  brfalse.s  IL_0100

    IL_00db:  ldarg.0
    IL_00dc:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_00e1:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_00e6:  dup
    IL_00e7:  ldfld      float64 Game.PlayerStats::TimeSlept
    IL_00ec:  ldloc.2
    IL_00ed:  ldarg.0
    IL_00ee:  ldfld      class Game.SubsystemGameInfo Game.ComponentSleep::m_subsystemGameInfo
    IL_00f3:  callvirt   instance float32 Game.SubsystemGameInfo::get_TotalElapsedGameTimeDelta()
    IL_00f8:  conv.r8
    IL_00f9:  add
    IL_00fa:  add
    IL_00fb:  stfld      float64 Game.PlayerStats::TimeSlept
    IL_0100:  ldarg.0
    IL_0101:  ldfld      float32 Game.ComponentSleep::m_sleepFactor
    IL_0106:  ldc.r4     1.
    IL_010b:  blt.un.s   IL_0113

    IL_010d:  ldarg.0
    IL_010e:  call       instance void Game.ComponentSleep::EnterSleepState()
    IL_0113:  ldarg.0
    IL_0114:  ldfld      class Game.SubsystemGameInfo Game.ComponentSleep::m_subsystemGameInfo
    IL_0119:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_011e:  ldloc.1
    IL_011f:  blt.un.s   IL_0167

    IL_0121:  ldarg.0
    IL_0122:  ldfld      class Game.SubsystemGameInfo Game.ComponentSleep::m_subsystemGameInfo
    IL_0127:  ldloc.1
    IL_0128:  callvirt   instance void Game.SubsystemGameInfo::set_TotalElapsedGameTime(float64)
    IL_012d:  ldarg.0
    IL_012e:  ldfld      class Game.SubsystemPlayer Game.ComponentSleep::m_subsystemPlayer
    IL_0133:  ldarg.0
    IL_0134:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_0139:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_013e:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0143:  ldc.r4     0.0
    IL_0148:  ldc.r4     0.1
    IL_014d:  ldc.r4     0.0
    IL_0152:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0157:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_015c:  callvirt   instance void Game.SubsystemPlayer::set_ProposedSpawnPosition(valuetype [Engine]Engine.Vector3)
    IL_0161:  ldarg.0
    IL_0162:  call       instance void Game.ComponentSleep::WakeUp()
    IL_0167:  ldarg.0
    IL_0168:  ldfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_016d:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0172:  callvirt   instance float32 Game.ComponentHealth::get_HealthChange()
    IL_0177:  ldc.r4     0.0
    IL_017c:  bge.un.s   IL_01b4

    IL_017e:  ldarg.0
    IL_017f:  call       instance void Game.ComponentSleep::WakeUp()
    IL_0184:  br.s       IL_01b4

    IL_0186:  ldarg.0
    IL_0187:  ldarg.0
    IL_0188:  ldfld      float32 Game.ComponentSleep::m_sleepFactor
    IL_018d:  ldc.r4     1.
    IL_0192:  ldarg.0
    IL_0193:  ldfld      class Game.SubsystemTime Game.ComponentSleep::m_subsystemTime
    IL_0198:  callvirt   instance float32 Game.SubsystemTime::get_RealTimeDelta()
    IL_019d:  mul
    IL_019e:  sub
    IL_019f:  ldc.r4     0.0
    IL_01a4:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_01a9:  stfld      float32 Game.ComponentSleep::m_sleepFactor
    IL_01ae:  ldarg.0
    IL_01af:  call       instance void Game.ComponentSleep::LeaveSleepState()
    IL_01b4:  ldarg.0
    IL_01b5:  ldfld      class Game.SubsystemCamera Game.ComponentSleep::m_subsystemCamera
    IL_01ba:  ldarg.0
    IL_01bb:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_01c0:  callvirt   instance bool Game.SubsystemCamera::IsEntityTarget(class [EntitySystem]GameEntitySystem.Entity)
    IL_01c5:  brfalse.s  IL_0227

    IL_01c7:  ldarg.0
    IL_01c8:  ldfld      class Game.SubsystemScreenOverlays Game.ComponentSleep::m_subsystemScreenOverlays
    IL_01cd:  ldarg.0
    IL_01ce:  ldfld      class Game.SubsystemScreenOverlays Game.ComponentSleep::m_subsystemScreenOverlays
    IL_01d3:  callvirt   instance float32 Game.SubsystemScreenOverlays::get_BlackoutFactor()
    IL_01d8:  ldarg.0
    IL_01d9:  ldfld      float32 Game.ComponentSleep::m_sleepFactor
    IL_01de:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_01e3:  callvirt   instance void Game.SubsystemScreenOverlays::set_BlackoutFactor(float32)
    IL_01e8:  ldarg.0
    IL_01e9:  ldfld      float32 Game.ComponentSleep::m_sleepFactor
    IL_01ee:  ldc.r4     9.9999998e-003
    IL_01f3:  ble.un.s   IL_0227

    IL_01f5:  ldarg.0
    IL_01f6:  ldfld      class Game.SubsystemScreenOverlays Game.ComponentSleep::m_subsystemScreenOverlays
    IL_01fb:  ldstr      "Zzz..."
    IL_0200:  callvirt   instance void Game.SubsystemScreenOverlays::set_FloatingMessage(string)
    IL_0205:  ldarg.0
    IL_0206:  ldfld      class Game.SubsystemScreenOverlays Game.ComponentSleep::m_subsystemScreenOverlays
    IL_020b:  ldc.r4     10.
    IL_0210:  ldarg.0
    IL_0211:  ldfld      float32 Game.ComponentSleep::m_sleepFactor
    IL_0216:  ldc.r4     0.89999998
    IL_021b:  sub
    IL_021c:  mul
    IL_021d:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0222:  callvirt   instance void Game.SubsystemScreenOverlays::set_FloatingMessageFactor(float32)
    IL_0227:  ret
  } // end of method ComponentSleep::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       260 (0x104)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Nullable`1<float64> V_0,
             float64 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPlayer>(bool)
    IL_000d:  stfld      class Game.SubsystemPlayer Game.ComponentSleep::m_subsystemPlayer
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
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemMainLoop>(bool)
    IL_0031:  stfld      class Game.SubsystemMainLoop Game.ComponentSleep::m_subsystemMainLoop
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemCamera>(bool)
    IL_0043:  stfld      class Game.SubsystemCamera Game.ComponentSleep::m_subsystemCamera
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_0055:  stfld      class Game.SubsystemGameInfo Game.ComponentSleep::m_subsystemGameInfo
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTimeOfDay>(bool)
    IL_0067:  stfld      class Game.SubsystemTimeOfDay Game.ComponentSleep::m_subsystemTimeOfDay
    IL_006c:  ldarg.0
    IL_006d:  ldarg.0
    IL_006e:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0073:  ldc.i4.1
    IL_0074:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0079:  stfld      class Game.SubsystemTerrain Game.ComponentSleep::m_subsystemTerrain
    IL_007e:  ldarg.0
    IL_007f:  ldarg.0
    IL_0080:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0085:  ldc.i4.1
    IL_0086:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemScreenOverlays>(bool)
    IL_008b:  stfld      class Game.SubsystemScreenOverlays Game.ComponentSleep::m_subsystemScreenOverlays
    IL_0090:  ldarg.0
    IL_0091:  ldarg.0
    IL_0092:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0097:  ldc.i4.1
    IL_0098:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPlayer>(bool)
    IL_009d:  stfld      class Game.ComponentPlayer Game.ComponentSleep::m_componentPlayer
    IL_00a2:  ldarg.0
    IL_00a3:  ldarg.1
    IL_00a4:  ldstr      "SleepStartTime"
    IL_00a9:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float64>(string)
    IL_00ae:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_00b3:  stfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSleep::m_sleepStartTime
    IL_00b8:  ldarg.0
    IL_00b9:  ldfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSleep::m_sleepStartTime
    IL_00be:  stloc.0
    IL_00bf:  ldc.r8     0.0
    IL_00c8:  stloc.1
    IL_00c9:  ldloca.s   V_0
    IL_00cb:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::GetValueOrDefault()
    IL_00d0:  ldloc.1
    IL_00d1:  beq.s      IL_00d6

    IL_00d3:  ldc.i4.0
    IL_00d4:  br.s       IL_00dd

    IL_00d6:  ldloca.s   V_0
    IL_00d8:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_00dd:  brfalse.s  IL_00eb

    IL_00df:  ldarg.0
    IL_00e0:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSleep::m_sleepStartTime
    IL_00e5:  initobj    valuetype [System.Runtime]System.Nullable`1<float64>
    IL_00eb:  ldarg.0
    IL_00ec:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSleep::m_sleepStartTime
    IL_00f1:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_00f6:  brfalse.s  IL_0103

    IL_00f8:  ldarg.0
    IL_00f9:  ldc.r4     1.
    IL_00fe:  stfld      float32 Game.ComponentSleep::m_sleepFactor
    IL_0103:  ret
  } // end of method ComponentSleep::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.EntityToIdMap entityToIdMap) cil managed
  {
    // 代码大小       47 (0x2f)
    .maxstack  8
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
    IL_002e:  ret
  } // end of method ComponentSleep::Save

  .method family hidebysig virtual instance void 
          OnEntityRemoved() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.ComponentSleep::LeaveSleepState()
    IL_0006:  ret
  } // end of method ComponentSleep::OnEntityRemoved

  .method private hidebysig instance void 
          EnterSleepState() cil managed
  {
    // 代码大小       35 (0x23)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTime Game.ComponentSleep::m_subsystemTime
    IL_0006:  ldc.r4     5.0000001e-002
    IL_000b:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_0010:  callvirt   instance void Game.SubsystemTime::set_FixedTimeStep(valuetype [System.Runtime]System.Nullable`1<float32>)
    IL_0015:  ldarg.0
    IL_0016:  ldfld      class Game.SubsystemMainLoop Game.ComponentSleep::m_subsystemMainLoop
    IL_001b:  ldc.i4.s   10
    IL_001d:  callvirt   instance void Game.SubsystemMainLoop::set_UpdatesPerFrame(int32)
    IL_0022:  ret
  } // end of method ComponentSleep::EnterSleepState

  .method private hidebysig instance void 
          LeaveSleepState() cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<float32> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTime Game.ComponentSleep::m_subsystemTime
    IL_0006:  ldloca.s   V_0
    IL_0008:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
    IL_000e:  ldloc.0
    IL_000f:  callvirt   instance void Game.SubsystemTime::set_FixedTimeStep(valuetype [System.Runtime]System.Nullable`1<float32>)
    IL_0014:  ldarg.0
    IL_0015:  ldfld      class Game.SubsystemMainLoop Game.ComponentSleep::m_subsystemMainLoop
    IL_001a:  ldc.i4.1
    IL_001b:  callvirt   instance void Game.SubsystemMainLoop::set_UpdatesPerFrame(int32)
    IL_0020:  ret
  } // end of method ComponentSleep::LeaveSleepState

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_0006:  ret
  } // end of method ComponentSleep::.ctor

  .property instance bool IsSleeping()
  {
    .get instance bool Game.ComponentSleep::get_IsSleeping()
  } // end of property ComponentSleep::IsSleeping
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentSleep::get_UpdateOrder()
  } // end of property ComponentSleep::UpdateOrder
} // end of class Game.ComponentSleep