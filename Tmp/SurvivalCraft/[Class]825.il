.class public auto ansi beforefieldinit Game.SubsystemWeather
       extends [EntitySystem]GameEntitySystem.Subsystem
       implements Game.IDrawable,
                  Game.IUpdateable
{
  .class auto ansi nested private beforefieldinit Shaft
         extends [System.Runtime]System.Object
  {
    .field public valuetype [Engine]Engine.Point2 Point
    .field public valuetype Game.PrecipitationType PrecipitationType
    .field public class Game.PrecipitationShaftParticleSystem ParticleSystem
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method Shaft::.ctor

  } // end of class Shaft

  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemBlocksScanner m_subsystemBlocksScanner
  .field private class Game.SubsystemSky m_subsystemSky
  .field private class Game.SubsystemParticles m_subsystemParticles
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.Random m_random
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemWeather/Shaft> m_shaftsCache
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.View,class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft>> m_activeShafts
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemWeather/Shaft> m_toRemove
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.View,valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>> m_lastShaftsUpdatePositions
  .field private valuetype [System.Runtime]System.Nullable`1<float32> m_lastShaftsUpdateLightIntensity
  .field private valuetype [Engine]Engine.Color m_snowColor
  .field private valuetype [Engine]Engine.Color m_rainColor
  .field private float32 m_targetRainSoundVolume
  .field private float64 m_precipitationStartTime
  .field private float64 m_precipitationEndTime
  .field private float32 m_lightningIntensity
  .field private float32 m_globalPrecipitationIntensity
  .field private static literal int32 m_rainSoundRadius = int32(0x00000005)
  .field private float32 m_rainVolumeFactor
  .field private class [Engine]Engine.Audio.Sound m_rainSound
  .field private static int32[] m_drawOrders
  .method public hidebysig static bool  IsPlaceFrozen(int32 temperature,
                                                      int32 y) cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     15.
    IL_0006:  ldarg.1
    IL_0007:  ldc.i4.s   90
    IL_0009:  sub
    IL_000a:  conv.r4
    IL_000b:  ldc.r4     38.
    IL_0010:  div
    IL_0011:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0016:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
    IL_001b:  mul
    IL_001c:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0021:  conv.i4
    IL_0022:  cgt
    IL_0024:  ldc.i4.0
    IL_0025:  ceq
    IL_0027:  ret
  } // end of method SubsystemWeather::IsPlaceFrozen

  .method public hidebysig static bool  ShaftHasSnowOnIce(int32 x,
                                                          int32 z) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0xffff
    IL_0006:  and
    IL_0007:  ldarg.1
    IL_0008:  ldc.i4.s   16
    IL_000a:  shl
    IL_000b:  or
    IL_000c:  call       uint32 [Engine]Engine.MathUtils::Hash(uint32)
    IL_0011:  ldc.i4     0xff
    IL_0016:  and
    IL_0017:  ldc.i4.s   25
    IL_0019:  cgt.un
    IL_001b:  ret
  } // end of method SubsystemWeather::ShaftHasSnowOnIce

  .method public hidebysig specialname instance float32 
          get_GlobalPrecipitationIntensity() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.SubsystemWeather::m_globalPrecipitationIntensity
    IL_0006:  ret
  } // end of method SubsystemWeather::get_GlobalPrecipitationIntensity

  .method public hidebysig instance valuetype Game.PrecipitationShaftInfo 
          GetPrecipitationShaftInfo(int32 x,
                                    int32 z) cil managed
  {
    // 代码大小       181 (0xb5)
    .maxstack  3
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             valuetype Game.PrecipitationShaftInfo V_3,
             int32 V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemWeather::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  ldarg.1
    IL_000c:  ldarg.2
    IL_000d:  callvirt   instance int32 Game.Terrain::GetShaftValue(int32,
                                                                    int32)
    IL_0012:  stloc.0
    IL_0013:  ldloc.0
    IL_0014:  call       int32 Game.Terrain::ExtractTemperature(int32)
    IL_0019:  stloc.1
    IL_001a:  ldloc.0
    IL_001b:  call       int32 Game.Terrain::ExtractTopHeight(int32)
    IL_0020:  stloc.2
    IL_0021:  ldloc.1
    IL_0022:  ldloc.2
    IL_0023:  call       bool Game.SubsystemWeather::IsPlaceFrozen(int32,
                                                                   int32)
    IL_0028:  brfalse.s  IL_0053

    IL_002a:  ldloca.s   V_3
    IL_002c:  initobj    Game.PrecipitationShaftInfo
    IL_0032:  ldloca.s   V_3
    IL_0034:  ldarg.0
    IL_0035:  ldfld      float32 Game.SubsystemWeather::m_globalPrecipitationIntensity
    IL_003a:  stfld      float32 Game.PrecipitationShaftInfo::Intensity
    IL_003f:  ldloca.s   V_3
    IL_0041:  ldc.i4.1
    IL_0042:  stfld      valuetype Game.PrecipitationType Game.PrecipitationShaftInfo::Type
    IL_0047:  ldloca.s   V_3
    IL_0049:  ldloc.2
    IL_004a:  ldc.i4.1
    IL_004b:  add
    IL_004c:  stfld      int32 Game.PrecipitationShaftInfo::YLimit
    IL_0051:  ldloc.3
    IL_0052:  ret

    IL_0053:  ldloc.0
    IL_0054:  call       int32 Game.Terrain::ExtractHumidity(int32)
    IL_0059:  stloc.s    V_4
    IL_005b:  ldloc.1
    IL_005c:  ldc.i4.8
    IL_005d:  ble.s      IL_0064

    IL_005f:  ldloc.s    V_4
    IL_0061:  ldc.i4.8
    IL_0062:  blt.s      IL_008d

    IL_0064:  ldloca.s   V_3
    IL_0066:  initobj    Game.PrecipitationShaftInfo
    IL_006c:  ldloca.s   V_3
    IL_006e:  ldarg.0
    IL_006f:  ldfld      float32 Game.SubsystemWeather::m_globalPrecipitationIntensity
    IL_0074:  stfld      float32 Game.PrecipitationShaftInfo::Intensity
    IL_0079:  ldloca.s   V_3
    IL_007b:  ldc.i4.0
    IL_007c:  stfld      valuetype Game.PrecipitationType Game.PrecipitationShaftInfo::Type
    IL_0081:  ldloca.s   V_3
    IL_0083:  ldloc.2
    IL_0084:  ldc.i4.1
    IL_0085:  add
    IL_0086:  stfld      int32 Game.PrecipitationShaftInfo::YLimit
    IL_008b:  ldloc.3
    IL_008c:  ret

    IL_008d:  ldloca.s   V_3
    IL_008f:  initobj    Game.PrecipitationShaftInfo
    IL_0095:  ldloca.s   V_3
    IL_0097:  ldc.r4     0.0
    IL_009c:  stfld      float32 Game.PrecipitationShaftInfo::Intensity
    IL_00a1:  ldloca.s   V_3
    IL_00a3:  ldc.i4.0
    IL_00a4:  stfld      valuetype Game.PrecipitationType Game.PrecipitationShaftInfo::Type
    IL_00a9:  ldloca.s   V_3
    IL_00ab:  ldloc.2
    IL_00ac:  ldc.i4.1
    IL_00ad:  add
    IL_00ae:  stfld      int32 Game.PrecipitationShaftInfo::YLimit
    IL_00b3:  ldloc.3
    IL_00b4:  ret
  } // end of method SubsystemWeather::GetPrecipitationShaftInfo

  .method public hidebysig instance void 
          ManualLightingStrike(valuetype [Engine]Engine.Vector3 position,
                               valuetype [Engine]Engine.Vector3 direction) cil managed
  {
    // 代码大小       215 (0xd7)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8)
    IL_0000:  ldarg.1
    IL_0001:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0006:  ldarg.2
    IL_0007:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_000c:  ldc.r4     32.
    IL_0011:  mul
    IL_0012:  add
    IL_0013:  call       int32 Game.Terrain::ToCell(float32)
    IL_0018:  stloc.0
    IL_0019:  ldarg.1
    IL_001a:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_001f:  ldarg.2
    IL_0020:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0025:  ldc.r4     32.
    IL_002a:  mul
    IL_002b:  add
    IL_002c:  call       int32 Game.Terrain::ToCell(float32)
    IL_0031:  stloc.1
    IL_0032:  ldloca.s   V_2
    IL_0034:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_003a:  ldc.i4.0
    IL_003b:  stloc.3
    IL_003c:  br.s       IL_00b3

    IL_003e:  ldarg.0
    IL_003f:  ldfld      class Game.Random Game.SubsystemWeather::m_random
    IL_0044:  ldc.i4.s   -8
    IL_0046:  ldc.i4.8
    IL_0047:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_004c:  stloc.s    V_4
    IL_004e:  ldarg.0
    IL_004f:  ldfld      class Game.Random Game.SubsystemWeather::m_random
    IL_0054:  ldc.i4.s   -8
    IL_0056:  ldc.i4.8
    IL_0057:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_005c:  stloc.s    V_5
    IL_005e:  ldloc.0
    IL_005f:  ldloc.s    V_4
    IL_0061:  add
    IL_0062:  stloc.s    V_6
    IL_0064:  ldloc.1
    IL_0065:  ldloc.s    V_5
    IL_0067:  add
    IL_0068:  stloc.s    V_7
    IL_006a:  ldarg.0
    IL_006b:  ldfld      class Game.SubsystemTerrain Game.SubsystemWeather::m_subsystemTerrain
    IL_0070:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0075:  ldloc.s    V_6
    IL_0077:  ldloc.s    V_7
    IL_0079:  callvirt   instance int32 Game.Terrain::CalculateTopmostCellHeight(int32,
                                                                                 int32)
    IL_007e:  stloc.s    V_8
    IL_0080:  ldloca.s   V_2
    IL_0082:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0087:  brfalse.s  IL_009a

    IL_0089:  ldloc.s    V_8
    IL_008b:  conv.r4
    IL_008c:  ldloca.s   V_2
    IL_008e:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0093:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0098:  ble.un.s   IL_00af

    IL_009a:  ldloca.s   V_2
    IL_009c:  ldloc.s    V_6
    IL_009e:  conv.r4
    IL_009f:  ldloc.s    V_8
    IL_00a1:  conv.r4
    IL_00a2:  ldloc.s    V_7
    IL_00a4:  conv.r4
    IL_00a5:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00aa:  call       instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_00af:  ldloc.3
    IL_00b0:  ldc.i4.1
    IL_00b1:  add
    IL_00b2:  stloc.3
    IL_00b3:  ldloc.3
    IL_00b4:  ldc.i4     0x12c
    IL_00b9:  blt.s      IL_003e

    IL_00bb:  ldloca.s   V_2
    IL_00bd:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_00c2:  brfalse.s  IL_00d6

    IL_00c4:  ldarg.0
    IL_00c5:  ldfld      class Game.SubsystemSky Game.SubsystemWeather::m_subsystemSky
    IL_00ca:  ldloca.s   V_2
    IL_00cc:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_00d1:  callvirt   instance void Game.SubsystemSky::MakeLightningStrike(valuetype [Engine]Engine.Vector3)
    IL_00d6:  ret
  } // end of method SubsystemWeather::ManualLightingStrike

  .method public hidebysig newslot specialname virtual final 
          instance int32[]  get_DrawOrders() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     int32[] Game.SubsystemWeather::m_drawOrders
    IL_0005:  ret
  } // end of method SubsystemWeather::get_DrawOrders

  .method public hidebysig newslot virtual final 
          instance void  Draw(class Game.Camera camera,
                              int32 drawOrder) cil managed
  {
    // 代码大小       835 (0x343)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft> V_2,
             uint8 V_3,
             uint8 V_4,
             valuetype [Engine]Engine.Vector2 V_5,
             valuetype [Engine]Engine.Point2 V_6,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_7,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft> V_8,
             class Game.SubsystemWeather/Shaft V_9,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemWeather/Shaft> V_10,
             class Game.SubsystemWeather/Shaft V_11,
             int32 V_12,
             int32 V_13,
             valuetype [Engine]Engine.Point2 V_14,
             class Game.SubsystemWeather/Shaft V_15,
             class Game.SubsystemWeather/Shaft V_16)
    IL_0000:  call       int32 Game.SettingsManager::get_VisibilityRange()
    IL_0005:  ldc.i4     0x200
    IL_000a:  blt.s      IL_0011

    IL_000c:  ldc.i4.s   9
    IL_000e:  stloc.0
    IL_000f:  br.s       IL_0033

    IL_0011:  call       int32 Game.SettingsManager::get_VisibilityRange()
    IL_0016:  ldc.i4     0x100
    IL_001b:  blt.s      IL_0021

    IL_001d:  ldc.i4.8
    IL_001e:  stloc.0
    IL_001f:  br.s       IL_0033

    IL_0021:  call       int32 Game.SettingsManager::get_VisibilityRange()
    IL_0026:  ldc.i4     0x80
    IL_002b:  blt.s      IL_0031

    IL_002d:  ldc.i4.7
    IL_002e:  stloc.0
    IL_002f:  br.s       IL_0033

    IL_0031:  ldc.i4.6
    IL_0032:  stloc.0
    IL_0033:  ldloc.0
    IL_0034:  ldloc.0
    IL_0035:  mul
    IL_0036:  stloc.1
    IL_0037:  ldarg.0
    IL_0038:  ldarg.1
    IL_0039:  callvirt   instance class Game.View Game.Camera::get_View()
    IL_003e:  call       instance class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft> Game.SubsystemWeather::GetActiveShafts(class Game.View)
    IL_0043:  stloc.2
    IL_0044:  ldc.r4     255.
    IL_0049:  ldc.r4     0.1
    IL_004e:  ldc.r4     1.
    IL_0053:  ldarg.0
    IL_0054:  ldfld      class Game.SubsystemSky Game.SubsystemWeather::m_subsystemSky
    IL_0059:  callvirt   instance float32 Game.SubsystemSky::get_SkyLightIntensity()
    IL_005e:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0063:  mul
    IL_0064:  conv.u1
    IL_0065:  stloc.3
    IL_0066:  ldarg.0
    IL_0067:  ldloc.3
    IL_0068:  ldloc.3
    IL_0069:  ldloc.3
    IL_006a:  newobj     instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8)
    IL_006f:  stfld      valuetype [Engine]Engine.Color Game.SubsystemWeather::m_snowColor
    IL_0074:  ldc.r4     255.
    IL_0079:  ldc.r4     0.1
    IL_007e:  ldc.r4     1.
    IL_0083:  ldarg.0
    IL_0084:  ldfld      class Game.SubsystemSky Game.SubsystemWeather::m_subsystemSky
    IL_0089:  callvirt   instance float32 Game.SubsystemSky::get_SkyLightIntensity()
    IL_008e:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0093:  mul
    IL_0094:  conv.u1
    IL_0095:  stloc.s    V_4
    IL_0097:  ldarg.0
    IL_0098:  ldloc.s    V_4
    IL_009a:  ldloc.s    V_4
    IL_009c:  ldloc.s    V_4
    IL_009e:  newobj     instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8)
    IL_00a3:  stfld      valuetype [Engine]Engine.Color Game.SubsystemWeather::m_rainColor
    IL_00a8:  ldloca.s   V_5
    IL_00aa:  ldarg.1
    IL_00ab:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_00b0:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00b5:  ldarg.1
    IL_00b6:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_00bb:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00c0:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00c5:  ldloc.s    V_5
    IL_00c7:  call       valuetype [Engine]Engine.Point2 Game.Terrain::ToCell(valuetype [Engine]Engine.Vector2)
    IL_00cc:  stloc.s    V_6
    IL_00ce:  ldloca.s   V_7
    IL_00d0:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
    IL_00d6:  ldarg.0
    IL_00d7:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.View,valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>> Game.SubsystemWeather::m_lastShaftsUpdatePositions
    IL_00dc:  ldarg.1
    IL_00dd:  callvirt   instance class Game.View Game.Camera::get_View()
    IL_00e2:  ldloca.s   V_7
    IL_00e4:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.View,valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>>::TryGetValue(!0,
                                                                                                                                                                                                                     !1&)
    IL_00e9:  pop
    IL_00ea:  ldloca.s   V_7
    IL_00ec:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_00f1:  brfalse.s  IL_010b

    IL_00f3:  ldloca.s   V_7
    IL_00f5:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_00fa:  ldloc.s    V_5
    IL_00fc:  call       float32 [Engine]Engine.Vector2::DistanceSquared(valuetype [Engine]Engine.Vector2,
                                                                         valuetype [Engine]Engine.Vector2)
    IL_0101:  ldc.r4     1.
    IL_0106:  ble.un     IL_02a4

    IL_010b:  ldarg.0
    IL_010c:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.View,valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>> Game.SubsystemWeather::m_lastShaftsUpdatePositions
    IL_0111:  ldarg.1
    IL_0112:  callvirt   instance class Game.View Game.Camera::get_View()
    IL_0117:  ldloc.s    V_5
    IL_0119:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_011e:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.View,valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>>::set_Item(!0,
                                                                                                                                                                                                                  !1)
    IL_0123:  ldarg.0
    IL_0124:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemWeather/Shaft> Game.SubsystemWeather::m_toRemove
    IL_0129:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemWeather/Shaft>::Clear()
    IL_012e:  ldloc.2
    IL_012f:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft>::get_Values()
    IL_0134:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft>::GetEnumerator()
    IL_0139:  stloc.s    V_8
    .try
    {
      IL_013b:  br.s       IL_019e

      IL_013d:  ldloca.s   V_8
      IL_013f:  call       instance !1 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft>::get_Current()
      IL_0144:  stloc.s    V_9
      IL_0146:  ldloc.s    V_9
      IL_0148:  ldflda     valuetype [Engine]Engine.Point2 Game.SubsystemWeather/Shaft::Point
      IL_014d:  ldfld      int32 [Engine]Engine.Point2::X
      IL_0152:  conv.r4
      IL_0153:  ldc.r4     0.5
      IL_0158:  add
      IL_0159:  ldloc.s    V_5
      IL_015b:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0160:  sub
      IL_0161:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
      IL_0166:  ldloc.s    V_9
      IL_0168:  ldflda     valuetype [Engine]Engine.Point2 Game.SubsystemWeather/Shaft::Point
      IL_016d:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_0172:  conv.r4
      IL_0173:  ldc.r4     0.5
      IL_0178:  add
      IL_0179:  ldloc.s    V_5
      IL_017b:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0180:  sub
      IL_0181:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
      IL_0186:  add
      IL_0187:  ldloc.1
      IL_0188:  conv.r4
      IL_0189:  ldc.r4     1.
      IL_018e:  add
      IL_018f:  ble.un.s   IL_019e

      IL_0191:  ldarg.0
      IL_0192:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemWeather/Shaft> Game.SubsystemWeather::m_toRemove
      IL_0197:  ldloc.s    V_9
      IL_0199:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemWeather/Shaft>::Add(!0)
      IL_019e:  ldloca.s   V_8
      IL_01a0:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft>::MoveNext()
      IL_01a5:  brtrue.s   IL_013d

      IL_01a7:  leave.s    IL_01b7

    }  // end .try
    finally
    {
      IL_01a9:  ldloca.s   V_8
      IL_01ab:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft>
      IL_01b1:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01b6:  endfinally
    }  // end handler
    IL_01b7:  ldarg.0
    IL_01b8:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemWeather/Shaft> Game.SubsystemWeather::m_toRemove
    IL_01bd:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemWeather/Shaft>::GetEnumerator()
    IL_01c2:  stloc.s    V_10
    .try
    {
      IL_01c4:  br.s       IL_01e5

      IL_01c6:  ldloca.s   V_10
      IL_01c8:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemWeather/Shaft>::get_Current()
      IL_01cd:  stloc.s    V_11
      IL_01cf:  ldarg.0
      IL_01d0:  ldloc.s    V_11
      IL_01d2:  call       instance void Game.SubsystemWeather::FreeShaft(class Game.SubsystemWeather/Shaft)
      IL_01d7:  ldloc.2
      IL_01d8:  ldloc.s    V_11
      IL_01da:  ldfld      valuetype [Engine]Engine.Point2 Game.SubsystemWeather/Shaft::Point
      IL_01df:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft>::Remove(!0)
      IL_01e4:  pop
      IL_01e5:  ldloca.s   V_10
      IL_01e7:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemWeather/Shaft>::MoveNext()
      IL_01ec:  brtrue.s   IL_01c6

      IL_01ee:  leave.s    IL_01fe

    }  // end .try
    finally
    {
      IL_01f0:  ldloca.s   V_10
      IL_01f2:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemWeather/Shaft>
      IL_01f8:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01fd:  endfinally
    }  // end handler
    IL_01fe:  ldloc.s    V_6
    IL_0200:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0205:  ldloc.0
    IL_0206:  sub
    IL_0207:  stloc.s    V_12
    IL_0209:  br         IL_0294

    IL_020e:  ldloc.s    V_6
    IL_0210:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0215:  ldloc.0
    IL_0216:  sub
    IL_0217:  stloc.s    V_13
    IL_0219:  br.s       IL_0281

    IL_021b:  ldloc.s    V_12
    IL_021d:  conv.r4
    IL_021e:  ldc.r4     0.5
    IL_0223:  add
    IL_0224:  ldloc.s    V_5
    IL_0226:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_022b:  sub
    IL_022c:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
    IL_0231:  ldloc.s    V_13
    IL_0233:  conv.r4
    IL_0234:  ldc.r4     0.5
    IL_0239:  add
    IL_023a:  ldloc.s    V_5
    IL_023c:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0241:  sub
    IL_0242:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
    IL_0247:  add
    IL_0248:  ldloc.1
    IL_0249:  conv.r4
    IL_024a:  bgt.un.s   IL_027b

    IL_024c:  ldloca.s   V_14
    IL_024e:  ldloc.s    V_12
    IL_0250:  ldloc.s    V_13
    IL_0252:  call       instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_0257:  ldloc.2
    IL_0258:  ldloc.s    V_14
    IL_025a:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft>::ContainsKey(!0)
    IL_025f:  brtrue.s   IL_027b

    IL_0261:  ldarg.0
    IL_0262:  ldarg.1
    IL_0263:  callvirt   instance class Game.View Game.Camera::get_View()
    IL_0268:  ldloc.s    V_14
    IL_026a:  call       instance class Game.SubsystemWeather/Shaft Game.SubsystemWeather::AllocateShaft(class Game.View,
                                                                                                         valuetype [Engine]Engine.Point2)
    IL_026f:  stloc.s    V_15
    IL_0271:  ldloc.2
    IL_0272:  ldloc.s    V_14
    IL_0274:  ldloc.s    V_15
    IL_0276:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft>::Add(!0,
                                                                                                                                                                                 !1)
    IL_027b:  ldloc.s    V_13
    IL_027d:  ldc.i4.1
    IL_027e:  add
    IL_027f:  stloc.s    V_13
    IL_0281:  ldloc.s    V_13
    IL_0283:  ldloc.s    V_6
    IL_0285:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_028a:  ldloc.0
    IL_028b:  add
    IL_028c:  ble.s      IL_021b

    IL_028e:  ldloc.s    V_12
    IL_0290:  ldc.i4.1
    IL_0291:  add
    IL_0292:  stloc.s    V_12
    IL_0294:  ldloc.s    V_12
    IL_0296:  ldloc.s    V_6
    IL_0298:  ldfld      int32 [Engine]Engine.Point2::X
    IL_029d:  ldloc.0
    IL_029e:  add
    IL_029f:  ble        IL_020e

    IL_02a4:  ldarg.0
    IL_02a5:  ldfld      class Game.SubsystemTime Game.SubsystemWeather::m_subsystemTime
    IL_02aa:  ldc.r8     1.
    IL_02b3:  ldc.r8     0.0
    IL_02bc:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_02c1:  brtrue.s   IL_02f3

    IL_02c3:  ldarg.0
    IL_02c4:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemWeather::m_lastShaftsUpdateLightIntensity
    IL_02c9:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_02ce:  brfalse.s  IL_02f3

    IL_02d0:  ldarg.0
    IL_02d1:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemWeather::m_lastShaftsUpdateLightIntensity
    IL_02d6:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_02db:  ldarg.0
    IL_02dc:  ldfld      class Game.SubsystemSky Game.SubsystemWeather::m_subsystemSky
    IL_02e1:  callvirt   instance float32 Game.SubsystemSky::get_SkyLightIntensity()
    IL_02e6:  sub
    IL_02e7:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_02ec:  ldc.r4     0.1
    IL_02f1:  ble.un.s   IL_0342

    IL_02f3:  ldarg.0
    IL_02f4:  ldarg.0
    IL_02f5:  ldfld      class Game.SubsystemSky Game.SubsystemWeather::m_subsystemSky
    IL_02fa:  callvirt   instance float32 Game.SubsystemSky::get_SkyLightIntensity()
    IL_02ff:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_0304:  stfld      valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemWeather::m_lastShaftsUpdateLightIntensity
    IL_0309:  ldloc.2
    IL_030a:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft>::get_Values()
    IL_030f:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft>::GetEnumerator()
    IL_0314:  stloc.s    V_8
    .try
    {
      IL_0316:  br.s       IL_0329

      IL_0318:  ldloca.s   V_8
      IL_031a:  call       instance !1 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft>::get_Current()
      IL_031f:  stloc.s    V_16
      IL_0321:  ldarg.0
      IL_0322:  ldloc.s    V_16
      IL_0324:  call       instance void Game.SubsystemWeather::UpdateShaft(class Game.SubsystemWeather/Shaft)
      IL_0329:  ldloca.s   V_8
      IL_032b:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft>::MoveNext()
      IL_0330:  brtrue.s   IL_0318

      IL_0332:  leave.s    IL_0342

    }  // end .try
    finally
    {
      IL_0334:  ldloca.s   V_8
      IL_0336:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft>
      IL_033c:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0341:  endfinally
    }  // end handler
    IL_0342:  ret
  } // end of method SubsystemWeather::Draw

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemWeather::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       1287 (0x507)
    .maxstack  6
    .locals init (float32 V_0,
             class Game.TerrainChunk[] V_1,
             int32 V_2,
             class Game.TerrainChunk V_3,
             int32 V_4,
             int32 V_5,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             float32 V_10,
             float32 V_11,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Vector3> V_12,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Vector3> V_13,
             valuetype [Engine]Engine.Vector3 V_14,
             int32 V_15,
             int32 V_16,
             int32 V_17,
             int32 V_18,
             int32 V_19,
             valuetype Game.PrecipitationShaftInfo V_20,
             valuetype [Engine]Engine.Vector3 V_21,
             float32 V_22,
             float32 V_23,
             float32 V_24)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemGameInfo Game.SubsystemWeather::m_subsystemGameInfo
    IL_0006:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_000b:  ldarg.0
    IL_000c:  ldfld      float64 Game.SubsystemWeather::m_precipitationEndTime
    IL_0011:  ble.un     IL_0107

    IL_0016:  ldarg.0
    IL_0017:  ldfld      float64 Game.SubsystemWeather::m_precipitationEndTime
    IL_001c:  ldc.r8     0.0
    IL_0025:  bne.un.s   IL_0072

    IL_0027:  ldarg.0
    IL_0028:  ldarg.0
    IL_0029:  ldfld      class Game.SubsystemGameInfo Game.SubsystemWeather::m_subsystemGameInfo
    IL_002e:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_0033:  ldc.r4     60.
    IL_0038:  ldarg.0
    IL_0039:  ldfld      class Game.Random Game.SubsystemWeather::m_random
    IL_003e:  ldc.r4     3.
    IL_0043:  ldc.r4     6.
    IL_0048:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_004d:  mul
    IL_004e:  conv.r8
    IL_004f:  add
    IL_0050:  stfld      float64 Game.SubsystemWeather::m_precipitationStartTime
    IL_0055:  ldarg.0
    IL_0056:  ldarg.0
    IL_0057:  ldfld      class Game.Random Game.SubsystemWeather::m_random
    IL_005c:  ldc.r4     0.33000001
    IL_0061:  ldc.r4     0.66000003
    IL_0066:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_006b:  stfld      float32 Game.SubsystemWeather::m_lightningIntensity
    IL_0070:  br.s       IL_00de

    IL_0072:  ldarg.0
    IL_0073:  ldarg.0
    IL_0074:  ldfld      class Game.SubsystemGameInfo Game.SubsystemWeather::m_subsystemGameInfo
    IL_0079:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_007e:  ldc.r4     60.
    IL_0083:  ldarg.0
    IL_0084:  ldfld      class Game.Random Game.SubsystemWeather::m_random
    IL_0089:  ldc.r4     5.
    IL_008e:  ldc.r4     45.
    IL_0093:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0098:  mul
    IL_0099:  conv.r8
    IL_009a:  add
    IL_009b:  stfld      float64 Game.SubsystemWeather::m_precipitationStartTime
    IL_00a0:  ldarg.0
    IL_00a1:  ldarg.0
    IL_00a2:  ldfld      class Game.Random Game.SubsystemWeather::m_random
    IL_00a7:  ldc.r4     0.0
    IL_00ac:  ldc.r4     1.
    IL_00b1:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00b6:  ldc.r4     0.5
    IL_00bb:  blt.s      IL_00c4

    IL_00bd:  ldc.r4     0.0
    IL_00c2:  br.s       IL_00d9

    IL_00c4:  ldarg.0
    IL_00c5:  ldfld      class Game.Random Game.SubsystemWeather::m_random
    IL_00ca:  ldc.r4     0.33000001
    IL_00cf:  ldc.r4     1.
    IL_00d4:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00d9:  stfld      float32 Game.SubsystemWeather::m_lightningIntensity
    IL_00de:  ldarg.0
    IL_00df:  ldarg.0
    IL_00e0:  ldfld      float64 Game.SubsystemWeather::m_precipitationStartTime
    IL_00e5:  ldc.r4     60.
    IL_00ea:  ldarg.0
    IL_00eb:  ldfld      class Game.Random Game.SubsystemWeather::m_random
    IL_00f0:  ldc.r4     3.
    IL_00f5:  ldc.r4     6.
    IL_00fa:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00ff:  mul
    IL_0100:  conv.r8
    IL_0101:  add
    IL_0102:  stfld      float64 Game.SubsystemWeather::m_precipitationEndTime
    IL_0107:  ldc.r8     0.0
    IL_0110:  ldarg.0
    IL_0111:  ldfld      class Game.SubsystemGameInfo Game.SubsystemWeather::m_subsystemGameInfo
    IL_0116:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_011b:  ldarg.0
    IL_011c:  ldfld      float64 Game.SubsystemWeather::m_precipitationStartTime
    IL_0121:  sub
    IL_0122:  ldarg.0
    IL_0123:  ldfld      float64 Game.SubsystemWeather::m_precipitationEndTime
    IL_0128:  ldarg.0
    IL_0129:  ldfld      class Game.SubsystemGameInfo Game.SubsystemWeather::m_subsystemGameInfo
    IL_012e:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_0133:  sub
    IL_0134:  call       float64 [Engine]Engine.MathUtils::Min(float64,
                                                               float64)
    IL_0139:  call       float64 [Engine]Engine.MathUtils::Max(float64,
                                                               float64)
    IL_013e:  conv.r4
    IL_013f:  stloc.0
    IL_0140:  ldarg.0
    IL_0141:  ldarg.0
    IL_0142:  ldfld      class Game.SubsystemGameInfo Game.SubsystemWeather::m_subsystemGameInfo
    IL_0147:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_014c:  ldfld      bool Game.WorldSettings::AreWeatherEffectsEnabled
    IL_0151:  brtrue.s   IL_015a

    IL_0153:  ldc.r4     0.0
    IL_0158:  br.s       IL_0166

    IL_015a:  ldloc.0
    IL_015b:  ldc.r4     3.9999999e-002
    IL_0160:  mul
    IL_0161:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0166:  stfld      float32 Game.SubsystemWeather::m_globalPrecipitationIntensity
    IL_016b:  ldarg.0
    IL_016c:  ldfld      float32 Game.SubsystemWeather::m_globalPrecipitationIntensity
    IL_0171:  ldc.r4     1.
    IL_0176:  bne.un     IL_02cb

    IL_017b:  ldarg.0
    IL_017c:  ldfld      class Game.SubsystemTime Game.SubsystemWeather::m_subsystemTime
    IL_0181:  ldc.r8     1.
    IL_018a:  ldc.r8     0.0
    IL_0193:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_0198:  brfalse    IL_02cb

    IL_019d:  ldarg.0
    IL_019e:  ldfld      class Game.SubsystemTerrain Game.SubsystemWeather::m_subsystemTerrain
    IL_01a3:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_01a8:  callvirt   instance class Game.TerrainChunk[] Game.Terrain::get_AllocatedChunks()
    IL_01ad:  stloc.1
    IL_01ae:  ldc.i4.0
    IL_01af:  stloc.2
    IL_01b0:  br         IL_02c2

    IL_01b5:  ldloc.1
    IL_01b6:  ldarg.0
    IL_01b7:  ldfld      class Game.Random Game.SubsystemWeather::m_random
    IL_01bc:  ldc.i4.0
    IL_01bd:  ldloc.1
    IL_01be:  ldlen
    IL_01bf:  conv.i4
    IL_01c0:  ldc.i4.1
    IL_01c1:  sub
    IL_01c2:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_01c7:  ldelem.ref
    IL_01c8:  stloc.3
    IL_01c9:  ldloc.3
    IL_01ca:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_01cf:  ldc.i4.7
    IL_01d0:  blt        IL_02be

    IL_01d5:  ldarg.0
    IL_01d6:  ldfld      class Game.Random Game.SubsystemWeather::m_random
    IL_01db:  ldarg.0
    IL_01dc:  ldfld      float32 Game.SubsystemWeather::m_lightningIntensity
    IL_01e1:  ldc.r4     1.9999999e-004
    IL_01e6:  mul
    IL_01e7:  callvirt   instance bool Game.Random::Bool(float32)
    IL_01ec:  brfalse    IL_02be

    IL_01f1:  ldloc.3
    IL_01f2:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_01f7:  ldfld      int32 [Engine]Engine.Point2::X
    IL_01fc:  ldarg.0
    IL_01fd:  ldfld      class Game.Random Game.SubsystemWeather::m_random
    IL_0202:  ldc.i4.0
    IL_0203:  ldc.i4.s   15
    IL_0205:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_020a:  add
    IL_020b:  stloc.s    V_4
    IL_020d:  ldloc.3
    IL_020e:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0213:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0218:  ldarg.0
    IL_0219:  ldfld      class Game.Random Game.SubsystemWeather::m_random
    IL_021e:  ldc.i4.0
    IL_021f:  ldc.i4.s   15
    IL_0221:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0226:  add
    IL_0227:  stloc.s    V_5
    IL_0229:  ldloca.s   V_6
    IL_022b:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_0231:  ldloc.s    V_4
    IL_0233:  ldc.i4.8
    IL_0234:  sub
    IL_0235:  stloc.s    V_7
    IL_0237:  br.s       IL_029a

    IL_0239:  ldloc.s    V_5
    IL_023b:  ldc.i4.8
    IL_023c:  sub
    IL_023d:  stloc.s    V_8
    IL_023f:  br.s       IL_028c

    IL_0241:  ldarg.0
    IL_0242:  ldfld      class Game.SubsystemTerrain Game.SubsystemWeather::m_subsystemTerrain
    IL_0247:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_024c:  ldloc.s    V_7
    IL_024e:  ldloc.s    V_8
    IL_0250:  callvirt   instance int32 Game.Terrain::GetTopHeight(int32,
                                                                   int32)
    IL_0255:  stloc.s    V_9
    IL_0257:  ldloca.s   V_6
    IL_0259:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_025e:  brfalse.s  IL_0271

    IL_0260:  ldloc.s    V_9
    IL_0262:  conv.r4
    IL_0263:  ldloca.s   V_6
    IL_0265:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_026a:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_026f:  ble.un.s   IL_0286

    IL_0271:  ldloca.s   V_6
    IL_0273:  ldloc.s    V_7
    IL_0275:  conv.r4
    IL_0276:  ldloc.s    V_9
    IL_0278:  conv.r4
    IL_0279:  ldloc.s    V_8
    IL_027b:  conv.r4
    IL_027c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0281:  call       instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0286:  ldloc.s    V_8
    IL_0288:  ldc.i4.1
    IL_0289:  add
    IL_028a:  stloc.s    V_8
    IL_028c:  ldloc.s    V_8
    IL_028e:  ldloc.s    V_5
    IL_0290:  ldc.i4.8
    IL_0291:  add
    IL_0292:  blt.s      IL_0241

    IL_0294:  ldloc.s    V_7
    IL_0296:  ldc.i4.1
    IL_0297:  add
    IL_0298:  stloc.s    V_7
    IL_029a:  ldloc.s    V_7
    IL_029c:  ldloc.s    V_4
    IL_029e:  ldc.i4.8
    IL_029f:  add
    IL_02a0:  blt.s      IL_0239

    IL_02a2:  ldloca.s   V_6
    IL_02a4:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_02a9:  brfalse.s  IL_02be

    IL_02ab:  ldarg.0
    IL_02ac:  ldfld      class Game.SubsystemSky Game.SubsystemWeather::m_subsystemSky
    IL_02b1:  ldloca.s   V_6
    IL_02b3:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_02b8:  callvirt   instance void Game.SubsystemSky::MakeLightningStrike(valuetype [Engine]Engine.Vector3)
    IL_02bd:  ret

    IL_02be:  ldloc.2
    IL_02bf:  ldc.i4.1
    IL_02c0:  add
    IL_02c1:  stloc.2
    IL_02c2:  ldloc.2
    IL_02c3:  ldloc.1
    IL_02c4:  ldlen
    IL_02c5:  conv.i4
    IL_02c6:  blt        IL_01b5

    IL_02cb:  ldc.r8     0.5
    IL_02d4:  ldc.r8     0.0
    IL_02dd:  call       bool [Engine]Engine.Time::PeriodicEvent(float64,
                                                                 float64)
    IL_02e2:  brfalse    IL_04aa

    IL_02e7:  ldc.r4     0.0
    IL_02ec:  stloc.s    V_10
    IL_02ee:  ldarg.0
    IL_02ef:  ldfld      float32 Game.SubsystemWeather::m_globalPrecipitationIntensity
    IL_02f4:  ldc.r4     0.0
    IL_02f9:  ble.un     IL_0490

    IL_02fe:  ldc.r4     0.0
    IL_0303:  stloc.s    V_11
    IL_0305:  ldarg.0
    IL_0306:  ldfld      class Game.SubsystemAudio Game.SubsystemWeather::m_subsystemAudio
    IL_030b:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Vector3> Game.SubsystemAudio::get_ListenerPositions()
    IL_0310:  stloc.s    V_13
    IL_0312:  ldloca.s   V_13
    IL_0314:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Vector3>::GetEnumerator()
    IL_0319:  stloc.s    V_12
    .try
    {
      IL_031b:  br         IL_0469

      IL_0320:  ldloca.s   V_12
      IL_0322:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Vector3>::get_Current()
      IL_0327:  stloc.s    V_14
      IL_0329:  ldloc.s    V_14
      IL_032b:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0330:  call       int32 Game.Terrain::ToCell(float32)
      IL_0335:  ldc.i4.5
      IL_0336:  sub
      IL_0337:  ldloc.s    V_14
      IL_0339:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_033e:  call       int32 Game.Terrain::ToCell(float32)
      IL_0343:  ldc.i4.5
      IL_0344:  sub
      IL_0345:  stloc.s    V_15
      IL_0347:  ldloc.s    V_14
      IL_0349:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_034e:  call       int32 Game.Terrain::ToCell(float32)
      IL_0353:  ldc.i4.5
      IL_0354:  add
      IL_0355:  stloc.s    V_16
      IL_0357:  ldloc.s    V_14
      IL_0359:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_035e:  call       int32 Game.Terrain::ToCell(float32)
      IL_0363:  ldc.i4.5
      IL_0364:  add
      IL_0365:  stloc.s    V_17
      IL_0367:  stloc.s    V_18
      IL_0369:  br         IL_0460

      IL_036e:  ldloc.s    V_15
      IL_0370:  stloc.s    V_19
      IL_0372:  br         IL_0451

      IL_0377:  ldarg.0
      IL_0378:  ldloc.s    V_18
      IL_037a:  ldloc.s    V_19
      IL_037c:  call       instance valuetype Game.PrecipitationShaftInfo Game.SubsystemWeather::GetPrecipitationShaftInfo(int32,
                                                                                                                           int32)
      IL_0381:  stloc.s    V_20
      IL_0383:  ldloc.s    V_20
      IL_0385:  ldfld      valuetype Game.PrecipitationType Game.PrecipitationShaftInfo::Type
      IL_038a:  brtrue     IL_044b

      IL_038f:  ldloc.s    V_20
      IL_0391:  ldfld      float32 Game.PrecipitationShaftInfo::Intensity
      IL_0396:  ldc.r4     0.0
      IL_039b:  ble.un     IL_044b

      IL_03a0:  ldloca.s   V_21
      IL_03a2:  ldloc.s    V_18
      IL_03a4:  conv.r4
      IL_03a5:  ldc.r4     0.5
      IL_03aa:  add
      IL_03ab:  stfld      float32 [Engine]Engine.Vector3::X
      IL_03b0:  ldloca.s   V_21
      IL_03b2:  ldloc.s    V_20
      IL_03b4:  ldfld      int32 Game.PrecipitationShaftInfo::YLimit
      IL_03b9:  conv.r4
      IL_03ba:  ldloc.s    V_14
      IL_03bc:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_03c1:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_03c6:  stfld      float32 [Engine]Engine.Vector3::Y
      IL_03cb:  ldloca.s   V_21
      IL_03cd:  ldloc.s    V_19
      IL_03cf:  conv.r4
      IL_03d0:  ldc.r4     0.5
      IL_03d5:  add
      IL_03d6:  stfld      float32 [Engine]Engine.Vector3::Z
      IL_03db:  ldloc.s    V_21
      IL_03dd:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_03e2:  ldloc.s    V_14
      IL_03e4:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_03e9:  sub
      IL_03ea:  ldc.r4     8.
      IL_03ef:  ldloc.s    V_21
      IL_03f1:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_03f6:  ldloc.s    V_14
      IL_03f8:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_03fd:  sub
      IL_03fe:  mul
      IL_03ff:  stloc.s    V_22
      IL_0401:  ldloc.s    V_21
      IL_0403:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0408:  ldloc.s    V_14
      IL_040a:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_040f:  sub
      IL_0410:  stloc.s    V_23
      IL_0412:  dup
      IL_0413:  mul
      IL_0414:  ldloc.s    V_22
      IL_0416:  ldloc.s    V_22
      IL_0418:  mul
      IL_0419:  add
      IL_041a:  ldloc.s    V_23
      IL_041c:  ldloc.s    V_23
      IL_041e:  mul
      IL_041f:  add
      IL_0420:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
      IL_0425:  stloc.s    V_24
      IL_0427:  ldloc.s    V_11
      IL_0429:  ldarg.0
      IL_042a:  ldfld      class Game.SubsystemAudio Game.SubsystemWeather::m_subsystemAudio
      IL_042f:  ldloc.s    V_24
      IL_0431:  ldc.r4     1.5
      IL_0436:  ldc.r4     2.
      IL_043b:  callvirt   instance float32 Game.SubsystemAudio::CalculateVolume(float32,
                                                                                 float32,
                                                                                 float32)
      IL_0440:  ldloc.s    V_20
      IL_0442:  ldfld      float32 Game.PrecipitationShaftInfo::Intensity
      IL_0447:  mul
      IL_0448:  add
      IL_0449:  stloc.s    V_11
      IL_044b:  ldloc.s    V_19
      IL_044d:  ldc.i4.1
      IL_044e:  add
      IL_044f:  stloc.s    V_19
      IL_0451:  ldloc.s    V_19
      IL_0453:  ldloc.s    V_17
      IL_0455:  ble        IL_0377

      IL_045a:  ldloc.s    V_18
      IL_045c:  ldc.i4.1
      IL_045d:  add
      IL_045e:  stloc.s    V_18
      IL_0460:  ldloc.s    V_18
      IL_0462:  ldloc.s    V_16
      IL_0464:  ble        IL_036e

      IL_0469:  ldloca.s   V_12
      IL_046b:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Vector3>::MoveNext()
      IL_0470:  brtrue     IL_0320

      IL_0475:  leave.s    IL_0485

    }  // end .try
    finally
    {
      IL_0477:  ldloca.s   V_12
      IL_0479:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Vector3>
      IL_047f:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0484:  endfinally
    }  // end handler
    IL_0485:  ldloc.s    V_10
    IL_0487:  ldloc.s    V_11
    IL_0489:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_048e:  stloc.s    V_10
    IL_0490:  ldarg.0
    IL_0491:  ldc.r4     1.5
    IL_0496:  ldloc.s    V_10
    IL_0498:  mul
    IL_0499:  ldarg.0
    IL_049a:  ldfld      float32 Game.SubsystemWeather::m_rainVolumeFactor
    IL_049f:  div
    IL_04a0:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_04a5:  stfld      float32 Game.SubsystemWeather::m_targetRainSoundVolume
    IL_04aa:  ldarg.0
    IL_04ab:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemWeather::m_rainSound
    IL_04b0:  ldarg.0
    IL_04b1:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemWeather::m_rainSound
    IL_04b6:  callvirt   instance float32 [Engine]Engine.Audio.BaseSound::get_Volume()
    IL_04bb:  call       float32 Game.SettingsManager::get_SoundsVolume()
    IL_04c0:  ldarg.0
    IL_04c1:  ldfld      float32 Game.SubsystemWeather::m_targetRainSoundVolume
    IL_04c6:  mul
    IL_04c7:  ldc.r4     5.
    IL_04cc:  ldarg.1
    IL_04cd:  mul
    IL_04ce:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_04d3:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_04d8:  callvirt   instance void [Engine]Engine.Audio.BaseSound::set_Volume(float32)
    IL_04dd:  ldarg.0
    IL_04de:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemWeather::m_rainSound
    IL_04e3:  callvirt   instance float32 [Engine]Engine.Audio.BaseSound::get_Volume()
    IL_04e8:  call       float32 Game.AudioManager::get_MinAudibleVolume()
    IL_04ed:  ble.un.s   IL_04fb

    IL_04ef:  ldarg.0
    IL_04f0:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemWeather::m_rainSound
    IL_04f5:  callvirt   instance void [Engine]Engine.Audio.BaseSound::Play()
    IL_04fa:  ret

    IL_04fb:  ldarg.0
    IL_04fc:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemWeather::m_rainSound
    IL_0501:  callvirt   instance void [Engine]Engine.Audio.BaseSound::Pause()
    IL_0506:  ret
  } // end of method SubsystemWeather::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       337 (0x151)
    .maxstack  6
    .locals init (int32 V_0,
             int32 V_1,
             float32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_000d:  stfld      class Game.SubsystemGameInfo Game.SubsystemWeather::m_subsystemGameInfo
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_001f:  stfld      class Game.SubsystemTerrain Game.SubsystemWeather::m_subsystemTerrain
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBlocksScanner>(bool)
    IL_0031:  stfld      class Game.SubsystemBlocksScanner Game.SubsystemWeather::m_subsystemBlocksScanner
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemSky>(bool)
    IL_0043:  stfld      class Game.SubsystemSky Game.SubsystemWeather::m_subsystemSky
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemParticles>(bool)
    IL_0055:  stfld      class Game.SubsystemParticles Game.SubsystemWeather::m_subsystemParticles
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_0067:  stfld      class Game.SubsystemTime Game.SubsystemWeather::m_subsystemTime
    IL_006c:  ldarg.0
    IL_006d:  ldarg.0
    IL_006e:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0073:  ldc.i4.1
    IL_0074:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0079:  stfld      class Game.SubsystemAudio Game.SubsystemWeather::m_subsystemAudio
    IL_007e:  ldarg.0
    IL_007f:  ldarg.1
    IL_0080:  ldstr      "WeatherStartTime"
    IL_0085:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float64>(string)
    IL_008a:  stfld      float64 Game.SubsystemWeather::m_precipitationStartTime
    IL_008f:  ldarg.0
    IL_0090:  ldarg.1
    IL_0091:  ldstr      "WeatherEndTime"
    IL_0096:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float64>(string)
    IL_009b:  stfld      float64 Game.SubsystemWeather::m_precipitationEndTime
    IL_00a0:  ldarg.0
    IL_00a1:  ldarg.1
    IL_00a2:  ldstr      "LightningIntensity"
    IL_00a7:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00ac:  stfld      float32 Game.SubsystemWeather::m_lightningIntensity
    IL_00b1:  ldarg.0
    IL_00b2:  ldarg.0
    IL_00b3:  ldfld      class Game.SubsystemAudio Game.SubsystemWeather::m_subsystemAudio
    IL_00b8:  ldstr      "Audio/Rain"
    IL_00bd:  callvirt   instance class [Engine]Engine.Audio.Sound Game.SubsystemAudio::CreateSound(string)
    IL_00c2:  stfld      class [Engine]Engine.Audio.Sound Game.SubsystemWeather::m_rainSound
    IL_00c7:  ldarg.0
    IL_00c8:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemWeather::m_rainSound
    IL_00cd:  ldc.i4.1
    IL_00ce:  callvirt   instance void [Engine]Engine.Audio.BaseSound::set_IsLooped(bool)
    IL_00d3:  ldarg.0
    IL_00d4:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemWeather::m_rainSound
    IL_00d9:  ldc.r4     0.0
    IL_00de:  callvirt   instance void [Engine]Engine.Audio.BaseSound::set_Volume(float32)
    IL_00e3:  ldarg.0
    IL_00e4:  ldc.r4     0.0
    IL_00e9:  stfld      float32 Game.SubsystemWeather::m_rainVolumeFactor
    IL_00ee:  ldc.i4.s   -5
    IL_00f0:  stloc.0
    IL_00f1:  br.s       IL_0135

    IL_00f3:  ldc.i4.s   -5
    IL_00f5:  stloc.1
    IL_00f6:  br.s       IL_012d

    IL_00f8:  ldloc.0
    IL_00f9:  ldloc.0
    IL_00fa:  mul
    IL_00fb:  ldloc.1
    IL_00fc:  ldloc.1
    IL_00fd:  mul
    IL_00fe:  add
    IL_00ff:  conv.r4
    IL_0100:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_0105:  stloc.2
    IL_0106:  ldarg.0
    IL_0107:  ldarg.0
    IL_0108:  ldfld      float32 Game.SubsystemWeather::m_rainVolumeFactor
    IL_010d:  ldarg.0
    IL_010e:  ldfld      class Game.SubsystemAudio Game.SubsystemWeather::m_subsystemAudio
    IL_0113:  ldloc.2
    IL_0114:  ldc.r4     1.5
    IL_0119:  ldc.r4     2.
    IL_011e:  callvirt   instance float32 Game.SubsystemAudio::CalculateVolume(float32,
                                                                               float32,
                                                                               float32)
    IL_0123:  add
    IL_0124:  stfld      float32 Game.SubsystemWeather::m_rainVolumeFactor
    IL_0129:  ldloc.1
    IL_012a:  ldc.i4.1
    IL_012b:  add
    IL_012c:  stloc.1
    IL_012d:  ldloc.1
    IL_012e:  ldc.i4.5
    IL_012f:  ble.s      IL_00f8

    IL_0131:  ldloc.0
    IL_0132:  ldc.i4.1
    IL_0133:  add
    IL_0134:  stloc.0
    IL_0135:  ldloc.0
    IL_0136:  ldc.i4.5
    IL_0137:  ble.s      IL_00f3

    IL_0139:  ldarg.0
    IL_013a:  ldfld      class Game.SubsystemBlocksScanner Game.SubsystemWeather::m_subsystemBlocksScanner
    IL_013f:  ldarg.0
    IL_0140:  ldftn      instance void Game.SubsystemWeather::'<Load>b__37_0'(class Game.TerrainChunk)
    IL_0146:  newobj     instance void class [System.Runtime]System.Action`1<class Game.TerrainChunk>::.ctor(object,
                                                                                                             native int)
    IL_014b:  callvirt   instance void Game.SubsystemBlocksScanner::add_ScanningChunkCompleted(class [System.Runtime]System.Action`1<class Game.TerrainChunk>)
    IL_0150:  ret
  } // end of method SubsystemWeather::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       52 (0x34)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "WeatherStartTime"
    IL_0006:  ldarg.0
    IL_0007:  ldfld      float64 Game.SubsystemWeather::m_precipitationStartTime
    IL_000c:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float64>(string,
                                                                                                           !!0)
    IL_0011:  ldarg.1
    IL_0012:  ldstr      "WeatherEndTime"
    IL_0017:  ldarg.0
    IL_0018:  ldfld      float64 Game.SubsystemWeather::m_precipitationEndTime
    IL_001d:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float64>(string,
                                                                                                           !!0)
    IL_0022:  ldarg.1
    IL_0023:  ldstr      "LightningIntensity"
    IL_0028:  ldarg.0
    IL_0029:  ldfld      float32 Game.SubsystemWeather::m_lightningIntensity
    IL_002e:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float32>(string,
                                                                                                           !!0)
    IL_0033:  ret
  } // end of method SubsystemWeather::Save

  .method private hidebysig instance class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft> 
          GetActiveShafts(class Game.View view) cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  3
    .locals init (class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.View,class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft>> Game.SubsystemWeather::m_activeShafts
    IL_0006:  ldarg.1
    IL_0007:  ldloca.s   V_0
    IL_0009:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.View,class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft>>::TryGetValue(!0,
                                                                                                                                                                                                                                                                            !1&)
    IL_000e:  brtrue.s   IL_0023

    IL_0010:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft>::.ctor()
    IL_0015:  stloc.0
    IL_0016:  ldarg.0
    IL_0017:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.View,class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft>> Game.SubsystemWeather::m_activeShafts
    IL_001c:  ldarg.1
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.View,class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft>>::Add(!0,
                                                                                                                                                                                                                                                                    !1)
    IL_0023:  ldloc.0
    IL_0024:  ret
  } // end of method SubsystemWeather::GetActiveShafts

  .method private hidebysig instance class Game.SubsystemWeather/Shaft 
          AllocateShaft(class Game.View view,
                        valuetype [Engine]Engine.Point2 point) cil managed
  {
    // 代码大小       169 (0xa9)
    .maxstack  5
    .locals init (class Game.SubsystemWeather/Shaft V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemWeather/Shaft> Game.SubsystemWeather::m_shaftsCache
    IL_0006:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemWeather/Shaft>::get_Count()
    IL_000b:  brtrue.s   IL_0026

    IL_000d:  newobj     instance void Game.SubsystemWeather/Shaft::.ctor()
    IL_0012:  stloc.0
    IL_0013:  ldloc.0
    IL_0014:  ldarg.0
    IL_0015:  ldfld      class Game.Random Game.SubsystemWeather::m_random
    IL_001a:  newobj     instance void Game.PrecipitationShaftParticleSystem::.ctor(class Game.Random)
    IL_001f:  stfld      class Game.PrecipitationShaftParticleSystem Game.SubsystemWeather/Shaft::ParticleSystem
    IL_0024:  br.s       IL_0057

    IL_0026:  ldarg.0
    IL_0027:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemWeather/Shaft> Game.SubsystemWeather::m_shaftsCache
    IL_002c:  ldarg.0
    IL_002d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemWeather/Shaft> Game.SubsystemWeather::m_shaftsCache
    IL_0032:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemWeather/Shaft>::get_Count()
    IL_0037:  ldc.i4.1
    IL_0038:  sub
    IL_0039:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemWeather/Shaft>::get_Item(int32)
    IL_003e:  stloc.0
    IL_003f:  ldarg.0
    IL_0040:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemWeather/Shaft> Game.SubsystemWeather::m_shaftsCache
    IL_0045:  ldarg.0
    IL_0046:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemWeather/Shaft> Game.SubsystemWeather::m_shaftsCache
    IL_004b:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemWeather/Shaft>::get_Count()
    IL_0050:  ldc.i4.1
    IL_0051:  sub
    IL_0052:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemWeather/Shaft>::RemoveAt(int32)
    IL_0057:  ldloc.0
    IL_0058:  ldarg.2
    IL_0059:  stfld      valuetype [Engine]Engine.Point2 Game.SubsystemWeather/Shaft::Point
    IL_005e:  ldloc.0
    IL_005f:  ldarg.0
    IL_0060:  ldarg.2
    IL_0061:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0066:  ldarg.2
    IL_0067:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_006c:  call       instance valuetype Game.PrecipitationShaftInfo Game.SubsystemWeather::GetPrecipitationShaftInfo(int32,
                                                                                                                         int32)
    IL_0071:  ldfld      valuetype Game.PrecipitationType Game.PrecipitationShaftInfo::Type
    IL_0076:  stfld      valuetype Game.PrecipitationType Game.SubsystemWeather/Shaft::PrecipitationType
    IL_007b:  ldloc.0
    IL_007c:  ldfld      class Game.PrecipitationShaftParticleSystem Game.SubsystemWeather/Shaft::ParticleSystem
    IL_0081:  ldarg.1
    IL_0082:  ldloc.0
    IL_0083:  ldfld      valuetype Game.PrecipitationType Game.SubsystemWeather/Shaft::PrecipitationType
    IL_0088:  ldarg.2
    IL_0089:  ldfld      int32 [Engine]Engine.Point2::X
    IL_008e:  conv.r4
    IL_008f:  ldarg.2
    IL_0090:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0095:  conv.r4
    IL_0096:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_009b:  callvirt   instance void Game.PrecipitationShaftParticleSystem::Reset(class Game.View,
                                                                                    valuetype Game.PrecipitationType,
                                                                                    valuetype [Engine]Engine.Vector2)
    IL_00a0:  ldarg.0
    IL_00a1:  ldloc.0
    IL_00a2:  call       instance void Game.SubsystemWeather::UpdateShaft(class Game.SubsystemWeather/Shaft)
    IL_00a7:  ldloc.0
    IL_00a8:  ret
  } // end of method SubsystemWeather::AllocateShaft

  .method private hidebysig instance void 
          FreeShaft(class Game.SubsystemWeather/Shaft shaft) cil managed
  {
    // 代码大小       49 (0x31)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemParticles Game.SubsystemWeather::m_subsystemParticles
    IL_0006:  ldarg.1
    IL_0007:  ldfld      class Game.PrecipitationShaftParticleSystem Game.SubsystemWeather/Shaft::ParticleSystem
    IL_000c:  callvirt   instance bool Game.SubsystemParticles::ContainsParticleSystem(class Game.ParticleSystemBase)
    IL_0011:  brfalse.s  IL_0024

    IL_0013:  ldarg.0
    IL_0014:  ldfld      class Game.SubsystemParticles Game.SubsystemWeather::m_subsystemParticles
    IL_0019:  ldarg.1
    IL_001a:  ldfld      class Game.PrecipitationShaftParticleSystem Game.SubsystemWeather/Shaft::ParticleSystem
    IL_001f:  callvirt   instance void Game.SubsystemParticles::RemoveParticleSystem(class Game.ParticleSystemBase)
    IL_0024:  ldarg.0
    IL_0025:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemWeather/Shaft> Game.SubsystemWeather::m_shaftsCache
    IL_002a:  ldarg.1
    IL_002b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemWeather/Shaft>::Add(!0)
    IL_0030:  ret
  } // end of method SubsystemWeather::FreeShaft

  .method private hidebysig instance void 
          UpdateShaft(class Game.SubsystemWeather/Shaft shaft) cil managed
  {
    // 代码大小       171 (0xab)
    .maxstack  3
    .locals init (valuetype Game.PrecipitationShaftInfo V_0,
             valuetype Game.PrecipitationType V_1)
    IL_0000:  ldarg.1
    IL_0001:  ldfld      valuetype Game.PrecipitationType Game.SubsystemWeather/Shaft::PrecipitationType
    IL_0006:  stloc.1
    IL_0007:  ldloc.1
    IL_0008:  brfalse.s  IL_0010

    IL_000a:  ldloc.1
    IL_000b:  ldc.i4.1
    IL_000c:  beq.s      IL_0023

    IL_000e:  br.s       IL_0034

    IL_0010:  ldarg.1
    IL_0011:  ldfld      class Game.PrecipitationShaftParticleSystem Game.SubsystemWeather/Shaft::ParticleSystem
    IL_0016:  ldarg.0
    IL_0017:  ldfld      valuetype [Engine]Engine.Color Game.SubsystemWeather::m_rainColor
    IL_001c:  callvirt   instance void Game.PrecipitationShaftParticleSystem::set_Color(valuetype [Engine]Engine.Color)
    IL_0021:  br.s       IL_0034

    IL_0023:  ldarg.1
    IL_0024:  ldfld      class Game.PrecipitationShaftParticleSystem Game.SubsystemWeather/Shaft::ParticleSystem
    IL_0029:  ldarg.0
    IL_002a:  ldfld      valuetype [Engine]Engine.Color Game.SubsystemWeather::m_snowColor
    IL_002f:  callvirt   instance void Game.PrecipitationShaftParticleSystem::set_Color(valuetype [Engine]Engine.Color)
    IL_0034:  ldarg.0
    IL_0035:  ldarg.1
    IL_0036:  ldflda     valuetype [Engine]Engine.Point2 Game.SubsystemWeather/Shaft::Point
    IL_003b:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0040:  ldarg.1
    IL_0041:  ldflda     valuetype [Engine]Engine.Point2 Game.SubsystemWeather/Shaft::Point
    IL_0046:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_004b:  call       instance valuetype Game.PrecipitationShaftInfo Game.SubsystemWeather::GetPrecipitationShaftInfo(int32,
                                                                                                                         int32)
    IL_0050:  stloc.0
    IL_0051:  ldarg.1
    IL_0052:  ldfld      class Game.PrecipitationShaftParticleSystem Game.SubsystemWeather/Shaft::ParticleSystem
    IL_0057:  ldloc.0
    IL_0058:  ldfld      float32 Game.PrecipitationShaftInfo::Intensity
    IL_005d:  callvirt   instance void Game.PrecipitationShaftParticleSystem::set_Intensity(float32)
    IL_0062:  ldarg.1
    IL_0063:  ldfld      class Game.PrecipitationShaftParticleSystem Game.SubsystemWeather/Shaft::ParticleSystem
    IL_0068:  ldloc.0
    IL_0069:  ldfld      int32 Game.PrecipitationShaftInfo::YLimit
    IL_006e:  conv.r4
    IL_006f:  callvirt   instance void Game.PrecipitationShaftParticleSystem::set_YLimit(float32)
    IL_0074:  ldarg.1
    IL_0075:  ldfld      class Game.PrecipitationShaftParticleSystem Game.SubsystemWeather/Shaft::ParticleSystem
    IL_007a:  callvirt   instance float32 Game.PrecipitationShaftParticleSystem::get_Intensity()
    IL_007f:  ldc.r4     0.0
    IL_0084:  ble.un.s   IL_00aa

    IL_0086:  ldarg.0
    IL_0087:  ldfld      class Game.SubsystemParticles Game.SubsystemWeather::m_subsystemParticles
    IL_008c:  ldarg.1
    IL_008d:  ldfld      class Game.PrecipitationShaftParticleSystem Game.SubsystemWeather/Shaft::ParticleSystem
    IL_0092:  callvirt   instance bool Game.SubsystemParticles::ContainsParticleSystem(class Game.ParticleSystemBase)
    IL_0097:  brtrue.s   IL_00aa

    IL_0099:  ldarg.0
    IL_009a:  ldfld      class Game.SubsystemParticles Game.SubsystemWeather::m_subsystemParticles
    IL_009f:  ldarg.1
    IL_00a0:  ldfld      class Game.PrecipitationShaftParticleSystem Game.SubsystemWeather/Shaft::ParticleSystem
    IL_00a5:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
    IL_00aa:  ret
  } // end of method SubsystemWeather::UpdateShaft

  .method private hidebysig instance void 
          FreezeThawAndDepositSnow(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       455 (0x1c7)
    .maxstack  8
    .locals init (class Game.Terrain V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             valuetype Game.PrecipitationShaftInfo V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12,
             int32 V_13,
             bool V_14,
             bool V_15,
             bool V_16)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemWeather::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  stloc.0
    IL_000c:  ldc.i4.0
    IL_000d:  stloc.1
    IL_000e:  br         IL_01be

    IL_0013:  ldc.i4.0
    IL_0014:  stloc.2
    IL_0015:  br         IL_01b2

    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.Random Game.SubsystemWeather::m_random
    IL_0020:  callvirt   instance int32 Game.Random::Int()
    IL_0025:  ldc.i4.2
    IL_0026:  rem
    IL_0027:  brfalse    IL_01ae

    IL_002c:  ldarg.1
    IL_002d:  ldloc.1
    IL_002e:  ldloc.2
    IL_002f:  callvirt   instance int32 Game.TerrainChunk::GetTopHeightFast(int32,
                                                                            int32)
    IL_0034:  stloc.3
    IL_0035:  ldarg.1
    IL_0036:  ldloc.1
    IL_0037:  ldloc.3
    IL_0038:  ldloc.2
    IL_0039:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32,
                                                                            int32,
                                                                            int32)
    IL_003e:  stloc.s    V_4
    IL_0040:  ldloc.s    V_4
    IL_0042:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0047:  stloc.s    V_5
    IL_0049:  ldarg.1
    IL_004a:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_004f:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0054:  ldloc.1
    IL_0055:  add
    IL_0056:  stloc.s    V_6
    IL_0058:  ldloc.3
    IL_0059:  stloc.s    V_7
    IL_005b:  ldarg.1
    IL_005c:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0061:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0066:  ldloc.2
    IL_0067:  add
    IL_0068:  stloc.s    V_8
    IL_006a:  ldarg.0
    IL_006b:  ldloc.s    V_6
    IL_006d:  ldloc.s    V_8
    IL_006f:  call       instance valuetype Game.PrecipitationShaftInfo Game.SubsystemWeather::GetPrecipitationShaftInfo(int32,
                                                                                                                         int32)
    IL_0074:  stloc.s    V_9
    IL_0076:  ldloc.s    V_9
    IL_0078:  ldfld      valuetype Game.PrecipitationType Game.PrecipitationShaftInfo::Type
    IL_007d:  ldc.i4.1
    IL_007e:  bne.un     IL_0176

    IL_0083:  ldloc.s    V_5
    IL_0085:  ldc.i4.s   18
    IL_0087:  bne.un     IL_0133

    IL_008c:  ldloc.0
    IL_008d:  ldloc.s    V_6
    IL_008f:  ldc.i4.1
    IL_0090:  add
    IL_0091:  ldloc.s    V_7
    IL_0093:  ldloc.s    V_8
    IL_0095:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_009a:  stloc.s    V_10
    IL_009c:  ldloc.0
    IL_009d:  ldloc.s    V_6
    IL_009f:  ldc.i4.1
    IL_00a0:  sub
    IL_00a1:  ldloc.s    V_7
    IL_00a3:  ldloc.s    V_8
    IL_00a5:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_00aa:  stloc.s    V_11
    IL_00ac:  ldloc.0
    IL_00ad:  ldloc.s    V_6
    IL_00af:  ldloc.s    V_7
    IL_00b1:  ldloc.s    V_8
    IL_00b3:  ldc.i4.1
    IL_00b4:  sub
    IL_00b5:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_00ba:  stloc.s    V_12
    IL_00bc:  ldloc.0
    IL_00bd:  ldloc.s    V_6
    IL_00bf:  ldloc.s    V_7
    IL_00c1:  ldloc.s    V_8
    IL_00c3:  ldc.i4.1
    IL_00c4:  add
    IL_00c5:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_00ca:  stloc.s    V_13
    IL_00cc:  ldloc.s    V_10
    IL_00ce:  ldc.i4.s   18
    IL_00d0:  beq.s      IL_00d9

    IL_00d2:  ldloc.s    V_10
    IL_00d4:  ldc.i4.0
    IL_00d5:  cgt.un
    IL_00d7:  br.s       IL_00da

    IL_00d9:  ldc.i4.0
    IL_00da:  ldloc.s    V_11
    IL_00dc:  ldc.i4.s   18
    IL_00de:  beq.s      IL_00e7

    IL_00e0:  ldloc.s    V_11
    IL_00e2:  ldc.i4.0
    IL_00e3:  cgt.un
    IL_00e5:  br.s       IL_00e8

    IL_00e7:  ldc.i4.0
    IL_00e8:  stloc.s    V_14
    IL_00ea:  ldloc.s    V_12
    IL_00ec:  ldc.i4.s   18
    IL_00ee:  beq.s      IL_00f7

    IL_00f0:  ldloc.s    V_12
    IL_00f2:  ldc.i4.0
    IL_00f3:  cgt.un
    IL_00f5:  br.s       IL_00f8

    IL_00f7:  ldc.i4.0
    IL_00f8:  stloc.s    V_15
    IL_00fa:  ldloc.s    V_13
    IL_00fc:  ldc.i4.s   18
    IL_00fe:  beq.s      IL_0107

    IL_0100:  ldloc.s    V_13
    IL_0102:  ldc.i4.0
    IL_0103:  cgt.un
    IL_0105:  br.s       IL_0108

    IL_0107:  ldc.i4.0
    IL_0108:  stloc.s    V_16
    IL_010a:  ldloc.s    V_14
    IL_010c:  or
    IL_010d:  ldloc.s    V_15
    IL_010f:  or
    IL_0110:  ldloc.s    V_16
    IL_0112:  or
    IL_0113:  brfalse    IL_01ae

    IL_0118:  ldarg.0
    IL_0119:  ldfld      class Game.SubsystemTerrain Game.SubsystemWeather::m_subsystemTerrain
    IL_011e:  ldloc.s    V_6
    IL_0120:  ldloc.s    V_7
    IL_0122:  ldloc.s    V_8
    IL_0124:  ldc.i4.s   62
    IL_0126:  call       int32 Game.Terrain::MakeBlockValue(int32)
    IL_012b:  ldc.i4.1
    IL_012c:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_0131:  br.s       IL_01ae

    IL_0133:  ldloc.s    V_9
    IL_0135:  ldfld      float32 Game.PrecipitationShaftInfo::Intensity
    IL_013a:  ldc.r4     0.5
    IL_013f:  ble.un.s   IL_01ae

    IL_0141:  ldloc.s    V_4
    IL_0143:  call       bool Game.SubsystemSnowBlockBehavior::CanSupportSnow(int32)
    IL_0148:  brfalse.s  IL_01ae

    IL_014a:  ldloc.s    V_5
    IL_014c:  ldc.i4.s   62
    IL_014e:  bne.un.s   IL_0159

    IL_0150:  ldloc.1
    IL_0151:  ldloc.2
    IL_0152:  call       bool Game.SubsystemWeather::ShaftHasSnowOnIce(int32,
                                                                       int32)
    IL_0157:  brfalse.s  IL_01ae

    IL_0159:  ldarg.0
    IL_015a:  ldfld      class Game.SubsystemTerrain Game.SubsystemWeather::m_subsystemTerrain
    IL_015f:  ldloc.s    V_6
    IL_0161:  ldloc.s    V_7
    IL_0163:  ldc.i4.1
    IL_0164:  add
    IL_0165:  ldloc.s    V_8
    IL_0167:  ldc.i4.s   61
    IL_0169:  call       int32 Game.Terrain::MakeBlockValue(int32)
    IL_016e:  ldc.i4.1
    IL_016f:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_0174:  br.s       IL_01ae

    IL_0176:  ldloc.s    V_5
    IL_0178:  ldc.i4.s   61
    IL_017a:  bne.un.s   IL_0193

    IL_017c:  ldarg.0
    IL_017d:  ldfld      class Game.SubsystemTerrain Game.SubsystemWeather::m_subsystemTerrain
    IL_0182:  ldc.i4.0
    IL_0183:  ldloc.s    V_6
    IL_0185:  ldloc.s    V_7
    IL_0187:  ldloc.s    V_8
    IL_0189:  ldc.i4.0
    IL_018a:  ldc.i4.1
    IL_018b:  ldc.i4.1
    IL_018c:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_0191:  br.s       IL_01ae

    IL_0193:  ldloc.s    V_5
    IL_0195:  ldc.i4.s   62
    IL_0197:  bne.un.s   IL_01ae

    IL_0199:  ldarg.0
    IL_019a:  ldfld      class Game.SubsystemTerrain Game.SubsystemWeather::m_subsystemTerrain
    IL_019f:  ldc.i4.0
    IL_01a0:  ldloc.s    V_6
    IL_01a2:  ldloc.s    V_7
    IL_01a4:  ldloc.s    V_8
    IL_01a6:  ldc.i4.0
    IL_01a7:  ldc.i4.0
    IL_01a8:  ldc.i4.1
    IL_01a9:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_01ae:  ldloc.2
    IL_01af:  ldc.i4.1
    IL_01b0:  add
    IL_01b1:  stloc.2
    IL_01b2:  ldloc.2
    IL_01b3:  ldc.i4.s   16
    IL_01b5:  blt        IL_001a

    IL_01ba:  ldloc.1
    IL_01bb:  ldc.i4.1
    IL_01bc:  add
    IL_01bd:  stloc.1
    IL_01be:  ldloc.1
    IL_01bf:  ldc.i4.s   16
    IL_01c1:  blt        IL_0013

    IL_01c6:  ret
  } // end of method SubsystemWeather::FreezeThawAndDepositSnow

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       62 (0x3e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.SubsystemWeather::m_random
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemWeather/Shaft>::.ctor()
    IL_0011:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemWeather/Shaft> Game.SubsystemWeather::m_shaftsCache
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.View,class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft>>::.ctor()
    IL_001c:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.View,class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft>> Game.SubsystemWeather::m_activeShafts
    IL_0021:  ldarg.0
    IL_0022:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemWeather/Shaft>::.ctor()
    IL_0027:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemWeather/Shaft> Game.SubsystemWeather::m_toRemove
    IL_002c:  ldarg.0
    IL_002d:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.View,valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>>::.ctor()
    IL_0032:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.View,valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>> Game.SubsystemWeather::m_lastShaftsUpdatePositions
    IL_0037:  ldarg.0
    IL_0038:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_003d:  ret
  } // end of method SubsystemWeather::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4.s   50
    IL_000a:  stelem.i4
    IL_000b:  stsfld     int32[] Game.SubsystemWeather::m_drawOrders
    IL_0010:  ret
  } // end of method SubsystemWeather::.cctor

  .method private hidebysig instance void 
          '<Load>b__37_0'(class Game.TerrainChunk chunk) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       26 (0x1a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemGameInfo Game.SubsystemWeather::m_subsystemGameInfo
    IL_0006:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_000b:  ldfld      valuetype Game.EnvironmentBehaviorMode Game.WorldSettings::EnvironmentBehaviorMode
    IL_0010:  brtrue.s   IL_0019

    IL_0012:  ldarg.0
    IL_0013:  ldarg.1
    IL_0014:  call       instance void Game.SubsystemWeather::FreezeThawAndDepositSnow(class Game.TerrainChunk)
    IL_0019:  ret
  } // end of method SubsystemWeather::'<Load>b__37_0'

  .property instance float32 GlobalPrecipitationIntensity()
  {
    .get instance float32 Game.SubsystemWeather::get_GlobalPrecipitationIntensity()
  } // end of property SubsystemWeather::GlobalPrecipitationIntensity
  .property instance int32[] DrawOrders()
  {
    .get instance int32[] Game.SubsystemWeather::get_DrawOrders()
  } // end of property SubsystemWeather::DrawOrders
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemWeather::get_UpdateOrder()
  } // end of property SubsystemWeather::UpdateOrder
} // end of class Game.SubsystemWeather