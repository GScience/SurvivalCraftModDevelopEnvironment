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
  .field private class Game.SubsystemSky m_subsystemSky
  .field private class Game.SubsystemParticles m_subsystemParticles
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private static literal int32 m_precipitationRadius = int32(0x00000006)
  .field private class Game.Random m_random
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemWeather/Shaft> m_shaftsCache
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft> m_activeShafts
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemWeather/Shaft> m_toRemove
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> m_lastShaftsUpdatePosition
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
    // 代码大小       242 (0xf2)
    .maxstack  3
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             valuetype Game.PrecipitationShaftInfo V_3,
             int32 V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemWeather::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  ldarg.1
    IL_000c:  ldarg.2
    IL_000d:  callvirt   instance bool Game.TerrainData::IsShaftValid(int32,
                                                                      int32)
    IL_0012:  brfalse    IL_00cc

    IL_0017:  ldarg.0
    IL_0018:  ldfld      class Game.SubsystemTerrain Game.SubsystemWeather::m_subsystemTerrain
    IL_001d:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0022:  ldarg.1
    IL_0023:  ldarg.2
    IL_0024:  callvirt   instance int32 Game.TerrainData::GetShaftValueFast(int32,
                                                                            int32)
    IL_0029:  stloc.0
    IL_002a:  ldloc.0
    IL_002b:  call       int32 Game.TerrainData::ExtractTemperature(int32)
    IL_0030:  stloc.1
    IL_0031:  ldloc.0
    IL_0032:  call       int32 Game.TerrainData::ExtractTopHeight(int32)
    IL_0037:  stloc.2
    IL_0038:  ldloc.1
    IL_0039:  ldloc.2
    IL_003a:  call       bool Game.SubsystemWeather::IsPlaceFrozen(int32,
                                                                   int32)
    IL_003f:  brfalse.s  IL_006a

    IL_0041:  ldloca.s   V_3
    IL_0043:  initobj    Game.PrecipitationShaftInfo
    IL_0049:  ldloca.s   V_3
    IL_004b:  ldarg.0
    IL_004c:  ldfld      float32 Game.SubsystemWeather::m_globalPrecipitationIntensity
    IL_0051:  stfld      float32 Game.PrecipitationShaftInfo::Intensity
    IL_0056:  ldloca.s   V_3
    IL_0058:  ldc.i4.1
    IL_0059:  stfld      valuetype Game.PrecipitationType Game.PrecipitationShaftInfo::Type
    IL_005e:  ldloca.s   V_3
    IL_0060:  ldloc.2
    IL_0061:  ldc.i4.1
    IL_0062:  add
    IL_0063:  stfld      int32 Game.PrecipitationShaftInfo::YLimit
    IL_0068:  ldloc.3
    IL_0069:  ret

    IL_006a:  ldloc.0
    IL_006b:  call       int32 Game.TerrainData::ExtractHumidity(int32)
    IL_0070:  stloc.s    V_4
    IL_0072:  ldloc.1
    IL_0073:  ldc.i4.8
    IL_0074:  ble.s      IL_007b

    IL_0076:  ldloc.s    V_4
    IL_0078:  ldc.i4.8
    IL_0079:  blt.s      IL_00a4

    IL_007b:  ldloca.s   V_3
    IL_007d:  initobj    Game.PrecipitationShaftInfo
    IL_0083:  ldloca.s   V_3
    IL_0085:  ldarg.0
    IL_0086:  ldfld      float32 Game.SubsystemWeather::m_globalPrecipitationIntensity
    IL_008b:  stfld      float32 Game.PrecipitationShaftInfo::Intensity
    IL_0090:  ldloca.s   V_3
    IL_0092:  ldc.i4.0
    IL_0093:  stfld      valuetype Game.PrecipitationType Game.PrecipitationShaftInfo::Type
    IL_0098:  ldloca.s   V_3
    IL_009a:  ldloc.2
    IL_009b:  ldc.i4.1
    IL_009c:  add
    IL_009d:  stfld      int32 Game.PrecipitationShaftInfo::YLimit
    IL_00a2:  ldloc.3
    IL_00a3:  ret

    IL_00a4:  ldloca.s   V_3
    IL_00a6:  initobj    Game.PrecipitationShaftInfo
    IL_00ac:  ldloca.s   V_3
    IL_00ae:  ldc.r4     0.0
    IL_00b3:  stfld      float32 Game.PrecipitationShaftInfo::Intensity
    IL_00b8:  ldloca.s   V_3
    IL_00ba:  ldc.i4.0
    IL_00bb:  stfld      valuetype Game.PrecipitationType Game.PrecipitationShaftInfo::Type
    IL_00c0:  ldloca.s   V_3
    IL_00c2:  ldloc.2
    IL_00c3:  ldc.i4.1
    IL_00c4:  add
    IL_00c5:  stfld      int32 Game.PrecipitationShaftInfo::YLimit
    IL_00ca:  ldloc.3
    IL_00cb:  ret

    IL_00cc:  ldloca.s   V_3
    IL_00ce:  initobj    Game.PrecipitationShaftInfo
    IL_00d4:  ldloca.s   V_3
    IL_00d6:  ldc.r4     0.0
    IL_00db:  stfld      float32 Game.PrecipitationShaftInfo::Intensity
    IL_00e0:  ldloca.s   V_3
    IL_00e2:  ldc.i4.0
    IL_00e3:  stfld      valuetype Game.PrecipitationType Game.PrecipitationShaftInfo::Type
    IL_00e8:  ldloca.s   V_3
    IL_00ea:  ldc.i4.1
    IL_00eb:  stfld      int32 Game.PrecipitationShaftInfo::YLimit
    IL_00f0:  ldloc.3
    IL_00f1:  ret
  } // end of method SubsystemWeather::GetPrecipitationShaftInfo

  .method public hidebysig instance void 
          ManualLightingStrike() cil managed
  {
    // 代码大小       272 (0x110)
    .maxstack  4
    .locals init (class Game.SubsystemDrawing V_0,
             int32 V_1,
             int32 V_2,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0006:  ldc.i4.1
    IL_0007:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemDrawing>(bool)
    IL_000c:  stloc.0
    IL_000d:  ldloc.0
    IL_000e:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_0013:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0018:  ldloc.0
    IL_0019:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewDirection()
    IL_001e:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0023:  ldc.r4     32.
    IL_0028:  mul
    IL_0029:  add
    IL_002a:  conv.i4
    IL_002b:  stloc.1
    IL_002c:  ldloc.0
    IL_002d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_0032:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0037:  ldloc.0
    IL_0038:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewDirection()
    IL_003d:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0042:  ldc.r4     32.
    IL_0047:  mul
    IL_0048:  add
    IL_0049:  conv.i4
    IL_004a:  stloc.2
    IL_004b:  ldloca.s   V_3
    IL_004d:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_0053:  ldc.i4.0
    IL_0054:  stloc.s    V_4
    IL_0056:  br         IL_00e8

    IL_005b:  ldarg.0
    IL_005c:  ldfld      class Game.Random Game.SubsystemWeather::m_random
    IL_0061:  ldc.i4.s   -8
    IL_0063:  ldc.i4.8
    IL_0064:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0069:  stloc.s    V_5
    IL_006b:  ldarg.0
    IL_006c:  ldfld      class Game.Random Game.SubsystemWeather::m_random
    IL_0071:  ldc.i4.s   -8
    IL_0073:  ldc.i4.8
    IL_0074:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0079:  stloc.s    V_6
    IL_007b:  ldloc.1
    IL_007c:  ldloc.s    V_5
    IL_007e:  add
    IL_007f:  stloc.s    V_7
    IL_0081:  ldloc.2
    IL_0082:  ldloc.s    V_6
    IL_0084:  add
    IL_0085:  stloc.s    V_8
    IL_0087:  ldarg.0
    IL_0088:  ldfld      class Game.SubsystemTerrain Game.SubsystemWeather::m_subsystemTerrain
    IL_008d:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0092:  ldloc.s    V_7
    IL_0094:  ldloc.s    V_8
    IL_0096:  callvirt   instance bool Game.TerrainData::IsShaftValid(int32,
                                                                      int32)
    IL_009b:  brfalse.s  IL_00e2

    IL_009d:  ldarg.0
    IL_009e:  ldfld      class Game.SubsystemTerrain Game.SubsystemWeather::m_subsystemTerrain
    IL_00a3:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00a8:  ldloc.s    V_7
    IL_00aa:  ldloc.s    V_8
    IL_00ac:  callvirt   instance int32 Game.TerrainData::CalculateTopmostCellHeight(int32,
                                                                                     int32)
    IL_00b1:  stloc.s    V_9
    IL_00b3:  ldloca.s   V_3
    IL_00b5:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_00ba:  brfalse.s  IL_00cd

    IL_00bc:  ldloc.s    V_9
    IL_00be:  conv.r4
    IL_00bf:  ldloca.s   V_3
    IL_00c1:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_00c6:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00cb:  ble.un.s   IL_00e2

    IL_00cd:  ldloca.s   V_3
    IL_00cf:  ldloc.s    V_7
    IL_00d1:  conv.r4
    IL_00d2:  ldloc.s    V_9
    IL_00d4:  conv.r4
    IL_00d5:  ldloc.s    V_8
    IL_00d7:  conv.r4
    IL_00d8:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00dd:  call       instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_00e2:  ldloc.s    V_4
    IL_00e4:  ldc.i4.1
    IL_00e5:  add
    IL_00e6:  stloc.s    V_4
    IL_00e8:  ldloc.s    V_4
    IL_00ea:  ldc.i4     0x12c
    IL_00ef:  blt        IL_005b

    IL_00f4:  ldloca.s   V_3
    IL_00f6:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_00fb:  brfalse.s  IL_010f

    IL_00fd:  ldarg.0
    IL_00fe:  ldfld      class Game.SubsystemSky Game.SubsystemWeather::m_subsystemSky
    IL_0103:  ldloca.s   V_3
    IL_0105:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_010a:  callvirt   instance void Game.SubsystemSky::MakeLightningStrike(valuetype [Engine]Engine.Vector3)
    IL_010f:  ret
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
          instance void  Draw(class Game.SubsystemDrawing subsystemDrawing,
                              int32 drawOrder) cil managed
  {
    // 代码大小       753 (0x2f1)
    .maxstack  4
    .locals init (uint8 V_0,
             uint8 V_1,
             valuetype [Engine]Engine.Vector2 V_2,
             valuetype [Engine]Engine.Point2 V_3,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft> V_4,
             class Game.SubsystemWeather/Shaft V_5,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemWeather/Shaft> V_6,
             class Game.SubsystemWeather/Shaft V_7,
             int32 V_8,
             int32 V_9,
             valuetype [Engine]Engine.Point2 V_10,
             class Game.SubsystemWeather/Shaft V_11,
             class Game.SubsystemWeather/Shaft V_12)
    IL_0000:  ldc.r4     255.
    IL_0005:  ldc.r4     0.1
    IL_000a:  ldc.r4     1.
    IL_000f:  ldarg.0
    IL_0010:  ldfld      class Game.SubsystemSky Game.SubsystemWeather::m_subsystemSky
    IL_0015:  callvirt   instance float32 Game.SubsystemSky::get_LightIntensity()
    IL_001a:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_001f:  mul
    IL_0020:  conv.u1
    IL_0021:  stloc.0
    IL_0022:  ldarg.0
    IL_0023:  ldloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.0
    IL_0026:  newobj     instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8)
    IL_002b:  stfld      valuetype [Engine]Engine.Color Game.SubsystemWeather::m_snowColor
    IL_0030:  ldc.r4     255.
    IL_0035:  ldc.r4     0.1
    IL_003a:  ldc.r4     1.
    IL_003f:  ldarg.0
    IL_0040:  ldfld      class Game.SubsystemSky Game.SubsystemWeather::m_subsystemSky
    IL_0045:  callvirt   instance float32 Game.SubsystemSky::get_LightIntensity()
    IL_004a:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_004f:  mul
    IL_0050:  conv.u1
    IL_0051:  stloc.1
    IL_0052:  ldarg.0
    IL_0053:  ldloc.1
    IL_0054:  ldloc.1
    IL_0055:  ldloc.1
    IL_0056:  newobj     instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8)
    IL_005b:  stfld      valuetype [Engine]Engine.Color Game.SubsystemWeather::m_rainColor
    IL_0060:  ldloca.s   V_2
    IL_0062:  ldarg.1
    IL_0063:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_0068:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_006d:  ldarg.1
    IL_006e:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_0073:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0078:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_007d:  ldloca.s   V_3
    IL_007f:  ldloc.2
    IL_0080:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0085:  conv.i4
    IL_0086:  ldloc.2
    IL_0087:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_008c:  conv.i4
    IL_008d:  call       instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_0092:  ldarg.0
    IL_0093:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.SubsystemWeather::m_lastShaftsUpdatePosition
    IL_0098:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_009d:  brfalse.s  IL_00ba

    IL_009f:  ldarg.0
    IL_00a0:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.SubsystemWeather::m_lastShaftsUpdatePosition
    IL_00a5:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_00aa:  ldloc.2
    IL_00ab:  call       float32 [Engine]Engine.Vector2::DistanceSquared(valuetype [Engine]Engine.Vector2,
                                                                         valuetype [Engine]Engine.Vector2)
    IL_00b0:  ldc.r4     1.
    IL_00b5:  ble.un     IL_024d

    IL_00ba:  ldarg.0
    IL_00bb:  ldloc.2
    IL_00bc:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_00c1:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.SubsystemWeather::m_lastShaftsUpdatePosition
    IL_00c6:  ldarg.0
    IL_00c7:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemWeather/Shaft> Game.SubsystemWeather::m_toRemove
    IL_00cc:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemWeather/Shaft>::Clear()
    IL_00d1:  ldarg.0
    IL_00d2:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft> Game.SubsystemWeather::m_activeShafts
    IL_00d7:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft>::get_Values()
    IL_00dc:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft>::GetEnumerator()
    IL_00e1:  stloc.s    V_4
    .try
    {
      IL_00e3:  br.s       IL_0141

      IL_00e5:  ldloca.s   V_4
      IL_00e7:  call       instance !1 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft>::get_Current()
      IL_00ec:  stloc.s    V_5
      IL_00ee:  ldloc.s    V_5
      IL_00f0:  ldflda     valuetype [Engine]Engine.Point2 Game.SubsystemWeather/Shaft::Point
      IL_00f5:  ldfld      int32 [Engine]Engine.Point2::X
      IL_00fa:  conv.r4
      IL_00fb:  ldc.r4     0.5
      IL_0100:  add
      IL_0101:  ldloc.2
      IL_0102:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0107:  sub
      IL_0108:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
      IL_010d:  ldloc.s    V_5
      IL_010f:  ldflda     valuetype [Engine]Engine.Point2 Game.SubsystemWeather/Shaft::Point
      IL_0114:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_0119:  conv.r4
      IL_011a:  ldc.r4     0.5
      IL_011f:  add
      IL_0120:  ldloc.2
      IL_0121:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0126:  sub
      IL_0127:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
      IL_012c:  add
      IL_012d:  ldc.r4     37.
      IL_0132:  ble.un.s   IL_0141

      IL_0134:  ldarg.0
      IL_0135:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemWeather/Shaft> Game.SubsystemWeather::m_toRemove
      IL_013a:  ldloc.s    V_5
      IL_013c:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemWeather/Shaft>::Add(!0)
      IL_0141:  ldloca.s   V_4
      IL_0143:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft>::MoveNext()
      IL_0148:  brtrue.s   IL_00e5

      IL_014a:  leave.s    IL_015a

    }  // end .try
    finally
    {
      IL_014c:  ldloca.s   V_4
      IL_014e:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft>
      IL_0154:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0159:  endfinally
    }  // end handler
    IL_015a:  ldarg.0
    IL_015b:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemWeather/Shaft> Game.SubsystemWeather::m_toRemove
    IL_0160:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemWeather/Shaft>::GetEnumerator()
    IL_0165:  stloc.s    V_6
    .try
    {
      IL_0167:  br.s       IL_018d

      IL_0169:  ldloca.s   V_6
      IL_016b:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemWeather/Shaft>::get_Current()
      IL_0170:  stloc.s    V_7
      IL_0172:  ldarg.0
      IL_0173:  ldloc.s    V_7
      IL_0175:  call       instance void Game.SubsystemWeather::FreeShaft(class Game.SubsystemWeather/Shaft)
      IL_017a:  ldarg.0
      IL_017b:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft> Game.SubsystemWeather::m_activeShafts
      IL_0180:  ldloc.s    V_7
      IL_0182:  ldfld      valuetype [Engine]Engine.Point2 Game.SubsystemWeather/Shaft::Point
      IL_0187:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft>::Remove(!0)
      IL_018c:  pop
      IL_018d:  ldloca.s   V_6
      IL_018f:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemWeather/Shaft>::MoveNext()
      IL_0194:  brtrue.s   IL_0169

      IL_0196:  leave.s    IL_01a6

    }  // end .try
    finally
    {
      IL_0198:  ldloca.s   V_6
      IL_019a:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemWeather/Shaft>
      IL_01a0:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01a5:  endfinally
    }  // end handler
    IL_01a6:  ldloc.3
    IL_01a7:  ldfld      int32 [Engine]Engine.Point2::X
    IL_01ac:  ldc.i4.6
    IL_01ad:  sub
    IL_01ae:  stloc.s    V_8
    IL_01b0:  br         IL_023e

    IL_01b5:  ldloc.3
    IL_01b6:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_01bb:  ldc.i4.6
    IL_01bc:  sub
    IL_01bd:  stloc.s    V_9
    IL_01bf:  br.s       IL_022c

    IL_01c1:  ldloc.s    V_8
    IL_01c3:  conv.r4
    IL_01c4:  ldc.r4     0.5
    IL_01c9:  add
    IL_01ca:  ldloc.2
    IL_01cb:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_01d0:  sub
    IL_01d1:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
    IL_01d6:  ldloc.s    V_9
    IL_01d8:  conv.r4
    IL_01d9:  ldc.r4     0.5
    IL_01de:  add
    IL_01df:  ldloc.2
    IL_01e0:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_01e5:  sub
    IL_01e6:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
    IL_01eb:  add
    IL_01ec:  ldc.r4     36.
    IL_01f1:  bgt.un.s   IL_0226

    IL_01f3:  ldloca.s   V_10
    IL_01f5:  ldloc.s    V_8
    IL_01f7:  ldloc.s    V_9
    IL_01f9:  call       instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_01fe:  ldarg.0
    IL_01ff:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft> Game.SubsystemWeather::m_activeShafts
    IL_0204:  ldloc.s    V_10
    IL_0206:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft>::ContainsKey(!0)
    IL_020b:  brtrue.s   IL_0226

    IL_020d:  ldarg.0
    IL_020e:  ldloc.s    V_10
    IL_0210:  call       instance class Game.SubsystemWeather/Shaft Game.SubsystemWeather::AllocateShaft(valuetype [Engine]Engine.Point2)
    IL_0215:  stloc.s    V_11
    IL_0217:  ldarg.0
    IL_0218:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft> Game.SubsystemWeather::m_activeShafts
    IL_021d:  ldloc.s    V_10
    IL_021f:  ldloc.s    V_11
    IL_0221:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft>::Add(!0,
                                                                                                                                                                                 !1)
    IL_0226:  ldloc.s    V_9
    IL_0228:  ldc.i4.1
    IL_0229:  add
    IL_022a:  stloc.s    V_9
    IL_022c:  ldloc.s    V_9
    IL_022e:  ldloc.3
    IL_022f:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0234:  ldc.i4.6
    IL_0235:  add
    IL_0236:  ble.s      IL_01c1

    IL_0238:  ldloc.s    V_8
    IL_023a:  ldc.i4.1
    IL_023b:  add
    IL_023c:  stloc.s    V_8
    IL_023e:  ldloc.s    V_8
    IL_0240:  ldloc.3
    IL_0241:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0246:  ldc.i4.6
    IL_0247:  add
    IL_0248:  ble        IL_01b5

    IL_024d:  ldarg.0
    IL_024e:  ldfld      class Game.SubsystemTime Game.SubsystemWeather::m_subsystemTime
    IL_0253:  ldc.r8     1.
    IL_025c:  ldc.r8     0.0
    IL_0265:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_026a:  brtrue.s   IL_029c

    IL_026c:  ldarg.0
    IL_026d:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemWeather::m_lastShaftsUpdateLightIntensity
    IL_0272:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_0277:  brfalse.s  IL_029c

    IL_0279:  ldarg.0
    IL_027a:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemWeather::m_lastShaftsUpdateLightIntensity
    IL_027f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0284:  ldarg.0
    IL_0285:  ldfld      class Game.SubsystemSky Game.SubsystemWeather::m_subsystemSky
    IL_028a:  callvirt   instance float32 Game.SubsystemSky::get_LightIntensity()
    IL_028f:  sub
    IL_0290:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0295:  ldc.r4     0.1
    IL_029a:  ble.un.s   IL_02f0

    IL_029c:  ldarg.0
    IL_029d:  ldarg.0
    IL_029e:  ldfld      class Game.SubsystemSky Game.SubsystemWeather::m_subsystemSky
    IL_02a3:  callvirt   instance float32 Game.SubsystemSky::get_LightIntensity()
    IL_02a8:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_02ad:  stfld      valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemWeather::m_lastShaftsUpdateLightIntensity
    IL_02b2:  ldarg.0
    IL_02b3:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft> Game.SubsystemWeather::m_activeShafts
    IL_02b8:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft>::get_Values()
    IL_02bd:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft>::GetEnumerator()
    IL_02c2:  stloc.s    V_4
    .try
    {
      IL_02c4:  br.s       IL_02d7

      IL_02c6:  ldloca.s   V_4
      IL_02c8:  call       instance !1 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft>::get_Current()
      IL_02cd:  stloc.s    V_12
      IL_02cf:  ldarg.0
      IL_02d0:  ldloc.s    V_12
      IL_02d2:  call       instance void Game.SubsystemWeather::UpdateShaft(class Game.SubsystemWeather/Shaft)
      IL_02d7:  ldloca.s   V_4
      IL_02d9:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft>::MoveNext()
      IL_02de:  brtrue.s   IL_02c6

      IL_02e0:  leave.s    IL_02f0

    }  // end .try
    finally
    {
      IL_02e2:  ldloca.s   V_4
      IL_02e4:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft>
      IL_02ea:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_02ef:  endfinally
    }  // end handler
    IL_02f0:  ret
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
    // 代码大小       1425 (0x591)
    .maxstack  6
    .locals init (float32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11,
             float32 V_12,
             int32 V_13,
             int32 V_14,
             int32 V_15,
             int32 V_16,
             int32 V_17,
             valuetype Game.PrecipitationShaftInfo V_18,
             valuetype [Engine]Engine.Vector3 V_19,
             float32 V_20,
             float32 V_21,
             float32 V_22)
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
    IL_0147:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_014c:  ldfld      bool Game.WorldInfo::AreWeatherEffectsEnabled
    IL_0151:  brtrue.s   IL_015a

    IL_0153:  ldc.r4     0.0
    IL_0158:  br.s       IL_0166

    IL_015a:  ldloc.0
    IL_015b:  ldc.r4     0.1
    IL_0160:  mul
    IL_0161:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0166:  stfld      float32 Game.SubsystemWeather::m_globalPrecipitationIntensity
    IL_016b:  ldarg.0
    IL_016c:  ldfld      class Game.SubsystemGameInfo Game.SubsystemWeather::m_subsystemGameInfo
    IL_0171:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_0176:  ldfld      valuetype Game.EnvironmentBehaviorMode Game.WorldInfo::EnvironmentBehaviorMode
    IL_017b:  brtrue.s   IL_01c5

    IL_017d:  ldarg.0
    IL_017e:  ldfld      class Game.SubsystemTime Game.SubsystemWeather::m_subsystemTime
    IL_0183:  ldc.r8     60.
    IL_018c:  ldc.r8     30.
    IL_0195:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_019a:  brfalse.s  IL_01c5

    IL_019c:  ldarg.0
    IL_019d:  ldarg.0
    IL_019e:  ldfld      class Game.SubsystemTerrain Game.SubsystemWeather::m_subsystemTerrain
    IL_01a3:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_01a8:  callvirt   instance int32 Game.TerrainData::get_SizeX()
    IL_01ad:  ldarg.0
    IL_01ae:  ldfld      class Game.SubsystemTerrain Game.SubsystemWeather::m_subsystemTerrain
    IL_01b3:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_01b8:  callvirt   instance int32 Game.TerrainData::get_SizeZ()
    IL_01bd:  mul
    IL_01be:  ldc.i4.4
    IL_01bf:  div
    IL_01c0:  call       instance void Game.SubsystemWeather::FreezeThawAndDepositSnow(int32)
    IL_01c5:  ldarg.0
    IL_01c6:  ldfld      float32 Game.SubsystemWeather::m_globalPrecipitationIntensity
    IL_01cb:  ldc.r4     1.
    IL_01d0:  bne.un     IL_0369

    IL_01d5:  ldarg.0
    IL_01d6:  ldfld      class Game.SubsystemTime Game.SubsystemWeather::m_subsystemTime
    IL_01db:  ldc.r8     7.5
    IL_01e4:  ldc.r8     0.0
    IL_01ed:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_01f2:  brfalse    IL_0369

    IL_01f7:  ldarg.0
    IL_01f8:  ldfld      class Game.Random Game.SubsystemWeather::m_random
    IL_01fd:  ldc.r4     0.0
    IL_0202:  ldc.r4     1.
    IL_0207:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_020c:  ldarg.0
    IL_020d:  ldfld      float32 Game.SubsystemWeather::m_lightningIntensity
    IL_0212:  bge.un     IL_0369

    IL_0217:  ldarg.0
    IL_0218:  ldfld      class Game.SubsystemTerrain Game.SubsystemWeather::m_subsystemTerrain
    IL_021d:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0222:  callvirt   instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
    IL_0227:  ldfld      int32 [Engine]Engine.Point2::X
    IL_022c:  ldarg.0
    IL_022d:  ldfld      class Game.SubsystemTerrain Game.SubsystemWeather::m_subsystemTerrain
    IL_0232:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0237:  callvirt   instance int32 Game.TerrainData::get_SizeX()
    IL_023c:  ldc.i4.2
    IL_023d:  div
    IL_023e:  add
    IL_023f:  stloc.1
    IL_0240:  ldarg.0
    IL_0241:  ldfld      class Game.SubsystemTerrain Game.SubsystemWeather::m_subsystemTerrain
    IL_0246:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_024b:  callvirt   instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
    IL_0250:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0255:  ldarg.0
    IL_0256:  ldfld      class Game.SubsystemTerrain Game.SubsystemWeather::m_subsystemTerrain
    IL_025b:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0260:  callvirt   instance int32 Game.TerrainData::get_SizeZ()
    IL_0265:  ldc.i4.2
    IL_0266:  div
    IL_0267:  add
    IL_0268:  ldarg.0
    IL_0269:  ldfld      class Game.SubsystemTerrain Game.SubsystemWeather::m_subsystemTerrain
    IL_026e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0273:  callvirt   instance int32 Game.TerrainData::get_SizeX()
    IL_0278:  ldc.i4.2
    IL_0279:  div
    IL_027a:  ldc.i4.s   120
    IL_027c:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0281:  stloc.2
    IL_0282:  ldloc.1
    IL_0283:  ldarg.0
    IL_0284:  ldfld      class Game.Random Game.SubsystemWeather::m_random
    IL_0289:  ldloc.2
    IL_028a:  neg
    IL_028b:  ldloc.2
    IL_028c:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0291:  add
    IL_0292:  stloc.3
    IL_0293:  ldarg.0
    IL_0294:  ldfld      class Game.Random Game.SubsystemWeather::m_random
    IL_0299:  ldloc.2
    IL_029a:  neg
    IL_029b:  ldloc.2
    IL_029c:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_02a1:  add
    IL_02a2:  stloc.s    V_4
    IL_02a4:  ldloca.s   V_5
    IL_02a6:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_02ac:  ldc.i4.0
    IL_02ad:  stloc.s    V_6
    IL_02af:  br         IL_0342

    IL_02b4:  ldarg.0
    IL_02b5:  ldfld      class Game.Random Game.SubsystemWeather::m_random
    IL_02ba:  ldc.i4.s   -8
    IL_02bc:  ldc.i4.8
    IL_02bd:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_02c2:  stloc.s    V_7
    IL_02c4:  ldarg.0
    IL_02c5:  ldfld      class Game.Random Game.SubsystemWeather::m_random
    IL_02ca:  ldc.i4.s   -8
    IL_02cc:  ldc.i4.8
    IL_02cd:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_02d2:  stloc.s    V_8
    IL_02d4:  ldloc.3
    IL_02d5:  ldloc.s    V_7
    IL_02d7:  add
    IL_02d8:  stloc.s    V_9
    IL_02da:  ldloc.s    V_4
    IL_02dc:  ldloc.s    V_8
    IL_02de:  add
    IL_02df:  stloc.s    V_10
    IL_02e1:  ldarg.0
    IL_02e2:  ldfld      class Game.SubsystemTerrain Game.SubsystemWeather::m_subsystemTerrain
    IL_02e7:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_02ec:  ldloc.s    V_9
    IL_02ee:  ldloc.s    V_10
    IL_02f0:  callvirt   instance bool Game.TerrainData::IsShaftValid(int32,
                                                                      int32)
    IL_02f5:  brfalse.s  IL_033c

    IL_02f7:  ldarg.0
    IL_02f8:  ldfld      class Game.SubsystemTerrain Game.SubsystemWeather::m_subsystemTerrain
    IL_02fd:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0302:  ldloc.s    V_9
    IL_0304:  ldloc.s    V_10
    IL_0306:  callvirt   instance int32 Game.TerrainData::CalculateTopmostCellHeight(int32,
                                                                                     int32)
    IL_030b:  stloc.s    V_11
    IL_030d:  ldloca.s   V_5
    IL_030f:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0314:  brfalse.s  IL_0327

    IL_0316:  ldloc.s    V_11
    IL_0318:  conv.r4
    IL_0319:  ldloca.s   V_5
    IL_031b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0320:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0325:  ble.un.s   IL_033c

    IL_0327:  ldloca.s   V_5
    IL_0329:  ldloc.s    V_9
    IL_032b:  conv.r4
    IL_032c:  ldloc.s    V_11
    IL_032e:  conv.r4
    IL_032f:  ldloc.s    V_10
    IL_0331:  conv.r4
    IL_0332:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0337:  call       instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_033c:  ldloc.s    V_6
    IL_033e:  ldc.i4.1
    IL_033f:  add
    IL_0340:  stloc.s    V_6
    IL_0342:  ldloc.s    V_6
    IL_0344:  ldc.i4     0x12c
    IL_0349:  blt        IL_02b4

    IL_034e:  ldloca.s   V_5
    IL_0350:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0355:  brfalse.s  IL_0369

    IL_0357:  ldarg.0
    IL_0358:  ldfld      class Game.SubsystemSky Game.SubsystemWeather::m_subsystemSky
    IL_035d:  ldloca.s   V_5
    IL_035f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0364:  callvirt   instance void Game.SubsystemSky::MakeLightningStrike(valuetype [Engine]Engine.Vector3)
    IL_0369:  ldarg.0
    IL_036a:  ldfld      class Game.SubsystemTime Game.SubsystemWeather::m_subsystemTime
    IL_036f:  ldc.r8     0.5
    IL_0378:  ldc.r8     0.0
    IL_0381:  callvirt   instance bool Game.SubsystemTime::PeriodicRealTimeEvent(float64,
                                                                                 float64)
    IL_0386:  brfalse    IL_0534

    IL_038b:  ldc.r4     0.0
    IL_0390:  stloc.s    V_12
    IL_0392:  ldarg.0
    IL_0393:  ldfld      float32 Game.SubsystemWeather::m_globalPrecipitationIntensity
    IL_0398:  ldc.r4     0.0
    IL_039d:  ble.un     IL_051a

    IL_03a2:  ldarg.0
    IL_03a3:  ldfld      class Game.SubsystemAudio Game.SubsystemWeather::m_subsystemAudio
    IL_03a8:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemAudio::get_ListenerPosition()
    IL_03ad:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_03b2:  conv.i4
    IL_03b3:  ldc.i4.5
    IL_03b4:  sub
    IL_03b5:  ldarg.0
    IL_03b6:  ldfld      class Game.SubsystemAudio Game.SubsystemWeather::m_subsystemAudio
    IL_03bb:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemAudio::get_ListenerPosition()
    IL_03c0:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_03c5:  conv.i4
    IL_03c6:  ldc.i4.5
    IL_03c7:  sub
    IL_03c8:  stloc.s    V_13
    IL_03ca:  ldarg.0
    IL_03cb:  ldfld      class Game.SubsystemAudio Game.SubsystemWeather::m_subsystemAudio
    IL_03d0:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemAudio::get_ListenerPosition()
    IL_03d5:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_03da:  conv.i4
    IL_03db:  ldc.i4.5
    IL_03dc:  add
    IL_03dd:  stloc.s    V_14
    IL_03df:  ldarg.0
    IL_03e0:  ldfld      class Game.SubsystemAudio Game.SubsystemWeather::m_subsystemAudio
    IL_03e5:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemAudio::get_ListenerPosition()
    IL_03ea:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_03ef:  conv.i4
    IL_03f0:  ldc.i4.5
    IL_03f1:  add
    IL_03f2:  stloc.s    V_15
    IL_03f4:  stloc.s    V_16
    IL_03f6:  br         IL_0511

    IL_03fb:  ldloc.s    V_13
    IL_03fd:  stloc.s    V_17
    IL_03ff:  br         IL_0502

    IL_0404:  ldarg.0
    IL_0405:  ldloc.s    V_16
    IL_0407:  ldloc.s    V_17
    IL_0409:  call       instance valuetype Game.PrecipitationShaftInfo Game.SubsystemWeather::GetPrecipitationShaftInfo(int32,
                                                                                                                         int32)
    IL_040e:  stloc.s    V_18
    IL_0410:  ldloc.s    V_18
    IL_0412:  ldfld      valuetype Game.PrecipitationType Game.PrecipitationShaftInfo::Type
    IL_0417:  brtrue     IL_04fc

    IL_041c:  ldloc.s    V_18
    IL_041e:  ldfld      float32 Game.PrecipitationShaftInfo::Intensity
    IL_0423:  ldc.r4     0.0
    IL_0428:  ble.un     IL_04fc

    IL_042d:  ldloca.s   V_19
    IL_042f:  ldloc.s    V_16
    IL_0431:  conv.r4
    IL_0432:  ldc.r4     0.5
    IL_0437:  add
    IL_0438:  stfld      float32 [Engine]Engine.Vector3::X
    IL_043d:  ldloca.s   V_19
    IL_043f:  ldloc.s    V_18
    IL_0441:  ldfld      int32 Game.PrecipitationShaftInfo::YLimit
    IL_0446:  conv.r4
    IL_0447:  ldarg.0
    IL_0448:  ldfld      class Game.SubsystemAudio Game.SubsystemWeather::m_subsystemAudio
    IL_044d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemAudio::get_ListenerPosition()
    IL_0452:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0457:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_045c:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_0461:  ldloca.s   V_19
    IL_0463:  ldloc.s    V_17
    IL_0465:  conv.r4
    IL_0466:  ldc.r4     0.5
    IL_046b:  add
    IL_046c:  stfld      float32 [Engine]Engine.Vector3::Z
    IL_0471:  ldloc.s    V_19
    IL_0473:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0478:  ldarg.0
    IL_0479:  ldfld      class Game.SubsystemAudio Game.SubsystemWeather::m_subsystemAudio
    IL_047e:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemAudio::get_ListenerPosition()
    IL_0483:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0488:  sub
    IL_0489:  ldc.r4     8.
    IL_048e:  ldloc.s    V_19
    IL_0490:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0495:  ldarg.0
    IL_0496:  ldfld      class Game.SubsystemAudio Game.SubsystemWeather::m_subsystemAudio
    IL_049b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemAudio::get_ListenerPosition()
    IL_04a0:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_04a5:  sub
    IL_04a6:  mul
    IL_04a7:  stloc.s    V_20
    IL_04a9:  ldloc.s    V_19
    IL_04ab:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_04b0:  ldarg.0
    IL_04b1:  ldfld      class Game.SubsystemAudio Game.SubsystemWeather::m_subsystemAudio
    IL_04b6:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemAudio::get_ListenerPosition()
    IL_04bb:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_04c0:  sub
    IL_04c1:  stloc.s    V_21
    IL_04c3:  dup
    IL_04c4:  mul
    IL_04c5:  ldloc.s    V_20
    IL_04c7:  ldloc.s    V_20
    IL_04c9:  mul
    IL_04ca:  add
    IL_04cb:  ldloc.s    V_21
    IL_04cd:  ldloc.s    V_21
    IL_04cf:  mul
    IL_04d0:  add
    IL_04d1:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_04d6:  stloc.s    V_22
    IL_04d8:  ldloc.s    V_12
    IL_04da:  ldarg.0
    IL_04db:  ldfld      class Game.SubsystemAudio Game.SubsystemWeather::m_subsystemAudio
    IL_04e0:  ldloc.s    V_22
    IL_04e2:  ldc.r4     1.5
    IL_04e7:  ldc.r4     2.
    IL_04ec:  callvirt   instance float32 Game.SubsystemAudio::CalculateVolume(float32,
                                                                               float32,
                                                                               float32)
    IL_04f1:  ldloc.s    V_18
    IL_04f3:  ldfld      float32 Game.PrecipitationShaftInfo::Intensity
    IL_04f8:  mul
    IL_04f9:  add
    IL_04fa:  stloc.s    V_12
    IL_04fc:  ldloc.s    V_17
    IL_04fe:  ldc.i4.1
    IL_04ff:  add
    IL_0500:  stloc.s    V_17
    IL_0502:  ldloc.s    V_17
    IL_0504:  ldloc.s    V_15
    IL_0506:  ble        IL_0404

    IL_050b:  ldloc.s    V_16
    IL_050d:  ldc.i4.1
    IL_050e:  add
    IL_050f:  stloc.s    V_16
    IL_0511:  ldloc.s    V_16
    IL_0513:  ldloc.s    V_14
    IL_0515:  ble        IL_03fb

    IL_051a:  ldarg.0
    IL_051b:  ldc.r4     1.5
    IL_0520:  ldloc.s    V_12
    IL_0522:  mul
    IL_0523:  ldarg.0
    IL_0524:  ldfld      float32 Game.SubsystemWeather::m_rainVolumeFactor
    IL_0529:  div
    IL_052a:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_052f:  stfld      float32 Game.SubsystemWeather::m_targetRainSoundVolume
    IL_0534:  ldarg.0
    IL_0535:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemWeather::m_rainSound
    IL_053a:  ldarg.0
    IL_053b:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemWeather::m_rainSound
    IL_0540:  callvirt   instance float32 [Engine]Engine.Audio.BaseSound::get_Volume()
    IL_0545:  call       float32 Game.AudioManager::get_GlobalVolume()
    IL_054a:  ldarg.0
    IL_054b:  ldfld      float32 Game.SubsystemWeather::m_targetRainSoundVolume
    IL_0550:  mul
    IL_0551:  ldc.r4     5.
    IL_0556:  ldarg.1
    IL_0557:  mul
    IL_0558:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_055d:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0562:  callvirt   instance void [Engine]Engine.Audio.BaseSound::set_Volume(float32)
    IL_0567:  ldarg.0
    IL_0568:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemWeather::m_rainSound
    IL_056d:  callvirt   instance float32 [Engine]Engine.Audio.BaseSound::get_Volume()
    IL_0572:  call       float32 Game.AudioManager::get_MinAudibleVolume()
    IL_0577:  ble.un.s   IL_0585

    IL_0579:  ldarg.0
    IL_057a:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemWeather::m_rainSound
    IL_057f:  callvirt   instance void [Engine]Engine.Audio.BaseSound::Play()
    IL_0584:  ret

    IL_0585:  ldarg.0
    IL_0586:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemWeather::m_rainSound
    IL_058b:  callvirt   instance void [Engine]Engine.Audio.BaseSound::Pause()
    IL_0590:  ret
  } // end of method SubsystemWeather::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       296 (0x128)
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
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemSky>(bool)
    IL_0031:  stfld      class Game.SubsystemSky Game.SubsystemWeather::m_subsystemSky
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemParticles>(bool)
    IL_0043:  stfld      class Game.SubsystemParticles Game.SubsystemWeather::m_subsystemParticles
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_0055:  stfld      class Game.SubsystemTime Game.SubsystemWeather::m_subsystemTime
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0067:  stfld      class Game.SubsystemAudio Game.SubsystemWeather::m_subsystemAudio
    IL_006c:  ldarg.0
    IL_006d:  ldarg.1
    IL_006e:  ldstr      "WeatherStartTime"
    IL_0073:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float64>(string)
    IL_0078:  stfld      float64 Game.SubsystemWeather::m_precipitationStartTime
    IL_007d:  ldarg.0
    IL_007e:  ldarg.1
    IL_007f:  ldstr      "WeatherEndTime"
    IL_0084:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float64>(string)
    IL_0089:  stfld      float64 Game.SubsystemWeather::m_precipitationEndTime
    IL_008e:  ldarg.0
    IL_008f:  ldarg.1
    IL_0090:  ldstr      "LightningIntensity"
    IL_0095:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_009a:  stfld      float32 Game.SubsystemWeather::m_lightningIntensity
    IL_009f:  ldarg.0
    IL_00a0:  ldarg.0
    IL_00a1:  ldfld      class Game.SubsystemAudio Game.SubsystemWeather::m_subsystemAudio
    IL_00a6:  ldstr      "Audio/Rain"
    IL_00ab:  callvirt   instance class [Engine]Engine.Audio.Sound Game.SubsystemAudio::CreateSound(string)
    IL_00b0:  stfld      class [Engine]Engine.Audio.Sound Game.SubsystemWeather::m_rainSound
    IL_00b5:  ldarg.0
    IL_00b6:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemWeather::m_rainSound
    IL_00bb:  ldc.i4.1
    IL_00bc:  callvirt   instance void [Engine]Engine.Audio.BaseSound::set_IsLooped(bool)
    IL_00c1:  ldarg.0
    IL_00c2:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemWeather::m_rainSound
    IL_00c7:  ldc.r4     0.0
    IL_00cc:  callvirt   instance void [Engine]Engine.Audio.BaseSound::set_Volume(float32)
    IL_00d1:  ldarg.0
    IL_00d2:  ldc.r4     0.0
    IL_00d7:  stfld      float32 Game.SubsystemWeather::m_rainVolumeFactor
    IL_00dc:  ldc.i4.s   -5
    IL_00de:  stloc.0
    IL_00df:  br.s       IL_0123

    IL_00e1:  ldc.i4.s   -5
    IL_00e3:  stloc.1
    IL_00e4:  br.s       IL_011b

    IL_00e6:  ldloc.0
    IL_00e7:  ldloc.0
    IL_00e8:  mul
    IL_00e9:  ldloc.1
    IL_00ea:  ldloc.1
    IL_00eb:  mul
    IL_00ec:  add
    IL_00ed:  conv.r4
    IL_00ee:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_00f3:  stloc.2
    IL_00f4:  ldarg.0
    IL_00f5:  ldarg.0
    IL_00f6:  ldfld      float32 Game.SubsystemWeather::m_rainVolumeFactor
    IL_00fb:  ldarg.0
    IL_00fc:  ldfld      class Game.SubsystemAudio Game.SubsystemWeather::m_subsystemAudio
    IL_0101:  ldloc.2
    IL_0102:  ldc.r4     1.5
    IL_0107:  ldc.r4     2.
    IL_010c:  callvirt   instance float32 Game.SubsystemAudio::CalculateVolume(float32,
                                                                               float32,
                                                                               float32)
    IL_0111:  add
    IL_0112:  stfld      float32 Game.SubsystemWeather::m_rainVolumeFactor
    IL_0117:  ldloc.1
    IL_0118:  ldc.i4.1
    IL_0119:  add
    IL_011a:  stloc.1
    IL_011b:  ldloc.1
    IL_011c:  ldc.i4.5
    IL_011d:  ble.s      IL_00e6

    IL_011f:  ldloc.0
    IL_0120:  ldc.i4.1
    IL_0121:  add
    IL_0122:  stloc.0
    IL_0123:  ldloc.0
    IL_0124:  ldc.i4.5
    IL_0125:  ble.s      IL_00e1

    IL_0127:  ret
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

  .method private hidebysig instance class Game.SubsystemWeather/Shaft 
          AllocateShaft(valuetype [Engine]Engine.Point2 point) cil managed
  {
    // 代码大小       168 (0xa8)
    .maxstack  4
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
    IL_0058:  ldarg.1
    IL_0059:  stfld      valuetype [Engine]Engine.Point2 Game.SubsystemWeather/Shaft::Point
    IL_005e:  ldloc.0
    IL_005f:  ldarg.0
    IL_0060:  ldarg.1
    IL_0061:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0066:  ldarg.1
    IL_0067:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_006c:  call       instance valuetype Game.PrecipitationShaftInfo Game.SubsystemWeather::GetPrecipitationShaftInfo(int32,
                                                                                                                         int32)
    IL_0071:  ldfld      valuetype Game.PrecipitationType Game.PrecipitationShaftInfo::Type
    IL_0076:  stfld      valuetype Game.PrecipitationType Game.SubsystemWeather/Shaft::PrecipitationType
    IL_007b:  ldloc.0
    IL_007c:  ldfld      class Game.PrecipitationShaftParticleSystem Game.SubsystemWeather/Shaft::ParticleSystem
    IL_0081:  ldloc.0
    IL_0082:  ldfld      valuetype Game.PrecipitationType Game.SubsystemWeather/Shaft::PrecipitationType
    IL_0087:  ldarg.1
    IL_0088:  ldfld      int32 [Engine]Engine.Point2::X
    IL_008d:  conv.r4
    IL_008e:  ldarg.1
    IL_008f:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0094:  conv.r4
    IL_0095:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_009a:  callvirt   instance void Game.PrecipitationShaftParticleSystem::Reset(valuetype Game.PrecipitationType,
                                                                                    valuetype [Engine]Engine.Vector2)
    IL_009f:  ldarg.0
    IL_00a0:  ldloc.0
    IL_00a1:  call       instance void Game.SubsystemWeather::UpdateShaft(class Game.SubsystemWeather/Shaft)
    IL_00a6:  ldloc.0
    IL_00a7:  ret
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
          FreezeThawAndDepositSnow(int32 attemptsCount) cil managed
  {
    // 代码大小       549 (0x225)
    .maxstack  8
    .locals init (class Game.TerrainData V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             class Game.TerrainChunk V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11,
             valuetype Game.PrecipitationShaftInfo V_12,
             int32 V_13,
             int32 V_14,
             int32 V_15,
             int32 V_16,
             int32 V_17,
             bool V_18,
             bool V_19,
             bool V_20)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemWeather::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  stloc.0
    IL_000c:  ldc.i4.0
    IL_000d:  stloc.1
    IL_000e:  br         IL_021d

    IL_0013:  ldloc.0
    IL_0014:  callvirt   instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
    IL_0019:  ldfld      int32 [Engine]Engine.Point2::X
    IL_001e:  stloc.2
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
    IL_0025:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_002a:  stloc.3
    IL_002b:  ldloc.2
    IL_002c:  ldloc.0
    IL_002d:  callvirt   instance int32 Game.TerrainData::get_SizeX()
    IL_0032:  add
    IL_0033:  stloc.s    V_4
    IL_0035:  ldloc.3
    IL_0036:  ldloc.0
    IL_0037:  callvirt   instance int32 Game.TerrainData::get_SizeZ()
    IL_003c:  add
    IL_003d:  stloc.s    V_5
    IL_003f:  ldarg.0
    IL_0040:  ldfld      class Game.Random Game.SubsystemWeather::m_random
    IL_0045:  ldloc.2
    IL_0046:  ldloc.s    V_4
    IL_0048:  ldc.i4.1
    IL_0049:  sub
    IL_004a:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_004f:  stloc.s    V_6
    IL_0051:  ldarg.0
    IL_0052:  ldfld      class Game.Random Game.SubsystemWeather::m_random
    IL_0057:  ldloc.3
    IL_0058:  ldloc.s    V_5
    IL_005a:  ldc.i4.1
    IL_005b:  sub
    IL_005c:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0061:  stloc.s    V_7
    IL_0063:  ldarg.0
    IL_0064:  ldfld      class Game.SubsystemTerrain Game.SubsystemWeather::m_subsystemTerrain
    IL_0069:  ldloc.s    V_6
    IL_006b:  ldloc.s    V_7
    IL_006d:  callvirt   instance class Game.TerrainChunk Game.SubsystemTerrain::CellToChunk(int32,
                                                                                             int32)
    IL_0072:  stloc.s    V_8
    IL_0074:  ldloc.s    V_8
    IL_0076:  brfalse    IL_0219

    IL_007b:  ldloc.s    V_8
    IL_007d:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_0082:  ldc.i4.5
    IL_0083:  blt        IL_0219

    IL_0088:  ldc.i4.0
    IL_0089:  stloc.s    V_9
    IL_008b:  ldloc.0
    IL_008c:  ldloc.s    V_6
    IL_008e:  ldloc.s    V_7
    IL_0090:  callvirt   instance int32 Game.TerrainData::GetTopHeightFast(int32,
                                                                           int32)
    IL_0095:  stloc.s    V_10
    IL_0097:  br.s       IL_00c4

    IL_0099:  ldloc.0
    IL_009a:  ldloc.s    V_6
    IL_009c:  ldloc.s    V_10
    IL_009e:  ldloc.s    V_7
    IL_00a0:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_00a5:  stloc.s    V_13
    IL_00a7:  ldloc.s    V_13
    IL_00a9:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_00ae:  brfalse.s  IL_00b6

    IL_00b0:  ldloc.s    V_13
    IL_00b2:  stloc.s    V_9
    IL_00b4:  br.s       IL_00be

    IL_00b6:  ldloc.s    V_10
    IL_00b8:  ldc.i4.1
    IL_00b9:  sub
    IL_00ba:  stloc.s    V_10
    IL_00bc:  br.s       IL_00ca

    IL_00be:  ldloc.s    V_10
    IL_00c0:  ldc.i4.1
    IL_00c1:  add
    IL_00c2:  stloc.s    V_10
    IL_00c4:  ldloc.s    V_10
    IL_00c6:  ldc.i4.s   127
    IL_00c8:  blt.s      IL_0099

    IL_00ca:  ldloc.s    V_9
    IL_00cc:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_00d1:  stloc.s    V_11
    IL_00d3:  ldarg.0
    IL_00d4:  ldloc.s    V_6
    IL_00d6:  ldloc.s    V_7
    IL_00d8:  call       instance valuetype Game.PrecipitationShaftInfo Game.SubsystemWeather::GetPrecipitationShaftInfo(int32,
                                                                                                                         int32)
    IL_00dd:  stloc.s    V_12
    IL_00df:  ldloc.s    V_12
    IL_00e1:  ldfld      valuetype Game.PrecipitationType Game.PrecipitationShaftInfo::Type
    IL_00e6:  ldc.i4.1
    IL_00e7:  bne.un     IL_01e1

    IL_00ec:  ldloc.s    V_11
    IL_00ee:  ldc.i4.s   18
    IL_00f0:  bne.un     IL_019c

    IL_00f5:  ldloc.0
    IL_00f6:  ldloc.s    V_6
    IL_00f8:  ldc.i4.1
    IL_00f9:  add
    IL_00fa:  ldloc.s    V_10
    IL_00fc:  ldloc.s    V_7
    IL_00fe:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_0103:  stloc.s    V_14
    IL_0105:  ldloc.0
    IL_0106:  ldloc.s    V_6
    IL_0108:  ldc.i4.1
    IL_0109:  sub
    IL_010a:  ldloc.s    V_10
    IL_010c:  ldloc.s    V_7
    IL_010e:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_0113:  stloc.s    V_15
    IL_0115:  ldloc.0
    IL_0116:  ldloc.s    V_6
    IL_0118:  ldloc.s    V_10
    IL_011a:  ldloc.s    V_7
    IL_011c:  ldc.i4.1
    IL_011d:  sub
    IL_011e:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_0123:  stloc.s    V_16
    IL_0125:  ldloc.0
    IL_0126:  ldloc.s    V_6
    IL_0128:  ldloc.s    V_10
    IL_012a:  ldloc.s    V_7
    IL_012c:  ldc.i4.1
    IL_012d:  add
    IL_012e:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_0133:  stloc.s    V_17
    IL_0135:  ldloc.s    V_14
    IL_0137:  ldc.i4.s   18
    IL_0139:  beq.s      IL_0142

    IL_013b:  ldloc.s    V_14
    IL_013d:  ldc.i4.0
    IL_013e:  cgt.un
    IL_0140:  br.s       IL_0143

    IL_0142:  ldc.i4.0
    IL_0143:  ldloc.s    V_15
    IL_0145:  ldc.i4.s   18
    IL_0147:  beq.s      IL_0150

    IL_0149:  ldloc.s    V_15
    IL_014b:  ldc.i4.0
    IL_014c:  cgt.un
    IL_014e:  br.s       IL_0151

    IL_0150:  ldc.i4.0
    IL_0151:  stloc.s    V_18
    IL_0153:  ldloc.s    V_16
    IL_0155:  ldc.i4.s   18
    IL_0157:  beq.s      IL_0160

    IL_0159:  ldloc.s    V_16
    IL_015b:  ldc.i4.0
    IL_015c:  cgt.un
    IL_015e:  br.s       IL_0161

    IL_0160:  ldc.i4.0
    IL_0161:  stloc.s    V_19
    IL_0163:  ldloc.s    V_17
    IL_0165:  ldc.i4.s   18
    IL_0167:  beq.s      IL_0170

    IL_0169:  ldloc.s    V_17
    IL_016b:  ldc.i4.0
    IL_016c:  cgt.un
    IL_016e:  br.s       IL_0171

    IL_0170:  ldc.i4.0
    IL_0171:  stloc.s    V_20
    IL_0173:  ldloc.s    V_18
    IL_0175:  or
    IL_0176:  ldloc.s    V_19
    IL_0178:  or
    IL_0179:  ldloc.s    V_20
    IL_017b:  or
    IL_017c:  brfalse    IL_0219

    IL_0181:  ldarg.0
    IL_0182:  ldfld      class Game.SubsystemTerrain Game.SubsystemWeather::m_subsystemTerrain
    IL_0187:  ldloc.s    V_6
    IL_0189:  ldloc.s    V_10
    IL_018b:  ldloc.s    V_7
    IL_018d:  ldc.i4.s   62
    IL_018f:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_0194:  ldc.i4.1
    IL_0195:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_019a:  br.s       IL_0219

    IL_019c:  ldloc.s    V_12
    IL_019e:  ldfld      float32 Game.PrecipitationShaftInfo::Intensity
    IL_01a3:  ldc.r4     0.5
    IL_01a8:  ble.un.s   IL_0219

    IL_01aa:  ldloc.s    V_9
    IL_01ac:  call       bool Game.SubsystemSnowBlockBehavior::CanSupportSnow(int32)
    IL_01b1:  brfalse.s  IL_0219

    IL_01b3:  ldloc.s    V_11
    IL_01b5:  ldc.i4.s   62
    IL_01b7:  bne.un.s   IL_01c4

    IL_01b9:  ldloc.s    V_6
    IL_01bb:  ldloc.s    V_7
    IL_01bd:  call       bool Game.SubsystemWeather::ShaftHasSnowOnIce(int32,
                                                                       int32)
    IL_01c2:  brfalse.s  IL_0219

    IL_01c4:  ldarg.0
    IL_01c5:  ldfld      class Game.SubsystemTerrain Game.SubsystemWeather::m_subsystemTerrain
    IL_01ca:  ldloc.s    V_6
    IL_01cc:  ldloc.s    V_10
    IL_01ce:  ldc.i4.1
    IL_01cf:  add
    IL_01d0:  ldloc.s    V_7
    IL_01d2:  ldc.i4.s   61
    IL_01d4:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_01d9:  ldc.i4.1
    IL_01da:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_01df:  br.s       IL_0219

    IL_01e1:  ldloc.s    V_11
    IL_01e3:  ldc.i4.s   61
    IL_01e5:  bne.un.s   IL_01fe

    IL_01e7:  ldarg.0
    IL_01e8:  ldfld      class Game.SubsystemTerrain Game.SubsystemWeather::m_subsystemTerrain
    IL_01ed:  ldc.i4.0
    IL_01ee:  ldloc.s    V_6
    IL_01f0:  ldloc.s    V_10
    IL_01f2:  ldloc.s    V_7
    IL_01f4:  ldc.i4.0
    IL_01f5:  ldc.i4.1
    IL_01f6:  ldc.i4.1
    IL_01f7:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_01fc:  br.s       IL_0219

    IL_01fe:  ldloc.s    V_11
    IL_0200:  ldc.i4.s   62
    IL_0202:  bne.un.s   IL_0219

    IL_0204:  ldarg.0
    IL_0205:  ldfld      class Game.SubsystemTerrain Game.SubsystemWeather::m_subsystemTerrain
    IL_020a:  ldc.i4.0
    IL_020b:  ldloc.s    V_6
    IL_020d:  ldloc.s    V_10
    IL_020f:  ldloc.s    V_7
    IL_0211:  ldc.i4.0
    IL_0212:  ldc.i4.0
    IL_0213:  ldc.i4.1
    IL_0214:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_0219:  ldloc.1
    IL_021a:  ldc.i4.1
    IL_021b:  add
    IL_021c:  stloc.1
    IL_021d:  ldloc.1
    IL_021e:  ldarg.1
    IL_021f:  blt        IL_0013

    IL_0224:  ret
  } // end of method SubsystemWeather::FreezeThawAndDepositSnow

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       51 (0x33)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.SubsystemWeather::m_random
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemWeather/Shaft>::.ctor()
    IL_0011:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemWeather/Shaft> Game.SubsystemWeather::m_shaftsCache
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft>::.ctor()
    IL_001c:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SubsystemWeather/Shaft> Game.SubsystemWeather::m_activeShafts
    IL_0021:  ldarg.0
    IL_0022:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemWeather/Shaft>::.ctor()
    IL_0027:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemWeather/Shaft> Game.SubsystemWeather::m_toRemove
    IL_002c:  ldarg.0
    IL_002d:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_0032:  ret
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