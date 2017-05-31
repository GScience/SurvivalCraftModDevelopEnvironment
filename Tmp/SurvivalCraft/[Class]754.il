.class public auto ansi beforefieldinit Game.SubsystemSky
       extends [EntitySystem]GameEntitySystem.Subsystem
       implements Game.IDrawable,
                  Game.IUpdateable
{
  .class sequential ansi sealed nested private beforefieldinit SkyVertex
         extends [System.Runtime]System.ValueType
  {
    .field public valuetype [Engine]Engine.Vector3 Position
    .field public valuetype [Engine]Engine.Color Color
  } // end of class SkyVertex

  .class sequential ansi sealed nested private beforefieldinit StarVertex
         extends [System.Runtime]System.ValueType
  {
    .field public valuetype [Engine]Engine.Vector3 Position
    .field public valuetype [Engine]Engine.Vector2 TextureCoordinate
    .field public valuetype [Engine]Engine.Color Color
  } // end of class StarVertex

  .field private class Game.SubsystemTimeOfDay m_subsystemTimeOfDay
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemWeather m_subsystemWeather
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.SubsystemBodies m_subsystemBodies
  .field private class Game.SubsystemFluidBlockBehavior m_subsystemFluidBlockBehavior
  .field private class [Engine]Engine.Graphics.PrimitivesRenderer3D m_primitivesRenderer
  .field private class Game.Random m_random
  .field private valuetype [Engine]Engine.Color m_fogColor
  .field private valuetype [Engine]Engine.Vector2 m_fogRange
  .field private bool m_isSkyVisible
  .field private class [Engine]Engine.Graphics.Texture2D m_sunTexture
  .field private class [Engine]Engine.Graphics.Texture2D m_glowTexture
  .field private class [Engine]Engine.Graphics.Texture2D m_cloudsTexture
  .field private class [Engine]Engine.Graphics.Texture2D[] m_moonTextures
  .field private class [Engine]Engine.Graphics.UnlitUberShader m_uberShader
  .field private valuetype Game.SubsystemSky/SkyVertex[] m_skyVertices
  .field private uint16[] m_skyIndices
  .field private class [Engine]Engine.Graphics.VertexBuffer m_skyVertexBuffer
  .field private class [Engine]Engine.Graphics.IndexBuffer m_skyIndexBuffer
  .field private class [Engine]Engine.Graphics.VertexDeclaration m_skyVertexDeclaration
  .field private class [Engine]Engine.Graphics.VertexBuffer m_starsVertexBuffer
  .field private class [Engine]Engine.Graphics.IndexBuffer m_starsIndexBuffer
  .field private class [Engine]Engine.Graphics.VertexDeclaration m_starsVertexDeclaration
  .field private static literal int32 m_skyVerticesCountX = int32(0x0000000A)
  .field private static literal int32 m_skyVerticesCountY = int32(0x00000008)
  .field private static literal int32 m_starsCount = int32(0x00000096)
  .field private valuetype [System.Runtime]System.Nullable`1<float32> m_lastUpdateTimeOfDay
  .field private valuetype [System.Runtime]System.Nullable`1<float32> m_lastUpdatePrecipitationIntensity
  .field private valuetype [System.Runtime]System.Nullable`1<int32> m_lastUpdateTemperature
  .field private float32 m_lastUpdateLightningStrikeBrightness
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> m_lightningStrikePosition
  .field private float32 m_lightningStrikeBrightness
  .field private float64 m_lastLightningStrikeTime
  .field public static literal float32 DawnStart = float32(0.2)
  .field public static literal float32 DayStart = float32(0.30000001)
  .field public static literal float32 DuskStart = float32(0.69999999)
  .field public static literal float32 NightStart = float32(0.80000001)
  .field public bool DrawSkyEnabled
  .field public bool DrawCloudsWireframe
  .field private float32 '<LightIntensity>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<UnderWaterDepth>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<UnderMagmaDepth>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private int32 '<LightValue>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<VisibilityRange>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private int32 '<MoonPhase>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private int32[] m_drawOrders
  .field private float32[] m_cloudsLayerRadii
  .field private valuetype [Engine]Engine.Color[] m_cloudsLayerColors
  .field private static int32[] m_lightValuesMoonless
  .field private static int32[] m_lightValuesNormal
  .method public hidebysig specialname instance float32 
          get_LightIntensity() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.SubsystemSky::'<LightIntensity>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemSky::get_LightIntensity

  .method private hidebysig specialname instance void 
          set_LightIntensity(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.SubsystemSky::'<LightIntensity>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemSky::set_LightIntensity

  .method public hidebysig specialname instance float32 
          get_UnderWaterDepth() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.SubsystemSky::'<UnderWaterDepth>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemSky::get_UnderWaterDepth

  .method private hidebysig specialname instance void 
          set_UnderWaterDepth(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.SubsystemSky::'<UnderWaterDepth>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemSky::set_UnderWaterDepth

  .method public hidebysig specialname instance float32 
          get_UnderMagmaDepth() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.SubsystemSky::'<UnderMagmaDepth>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemSky::get_UnderMagmaDepth

  .method private hidebysig specialname instance void 
          set_UnderMagmaDepth(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.SubsystemSky::'<UnderMagmaDepth>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemSky::set_UnderMagmaDepth

  .method public hidebysig specialname instance int32 
          get_LightValue() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.SubsystemSky::'<LightValue>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemSky::get_LightValue

  .method private hidebysig specialname instance void 
          set_LightValue(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 Game.SubsystemSky::'<LightValue>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemSky::set_LightValue

  .method public hidebysig specialname instance valuetype [Engine]Engine.Color 
          get_FogColor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Color Game.SubsystemSky::m_fogColor
    IL_0006:  ret
  } // end of method SubsystemSky::get_FogColor

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector2 
          get_FogRange() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector2 Game.SubsystemSky::m_fogRange
    IL_0006:  ret
  } // end of method SubsystemSky::get_FogRange

  .method public hidebysig specialname instance float32 
          get_VisibilityRange() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.SubsystemSky::'<VisibilityRange>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemSky::get_VisibilityRange

  .method private hidebysig specialname instance void 
          set_VisibilityRange(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.SubsystemSky::'<VisibilityRange>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemSky::set_VisibilityRange

  .method public hidebysig specialname instance int32 
          get_MoonPhase() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.SubsystemSky::'<MoonPhase>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemSky::get_MoonPhase

  .method private hidebysig specialname instance void 
          set_MoonPhase(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 Game.SubsystemSky::'<MoonPhase>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemSky::set_MoonPhase

  .method public hidebysig instance void 
          MakeLightningStrike(valuetype [Engine]Engine.Vector3 targetPosition) cil managed
  {
    // 代码大小       637 (0x27d)
    .maxstack  7
    .locals init (float32 V_0,
             float32 V_1,
             class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             float32 V_6,
             int32 V_7,
             class Game.ComponentBody V_8,
             class Game.ComponentCreature V_9,
             class Game.ComponentOnFire V_10)
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.SubsystemSky::m_lightningStrikePosition
    IL_0006:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_000b:  brtrue     IL_027c

    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.SubsystemTime Game.SubsystemSky::m_subsystemTime
    IL_0016:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_001b:  ldarg.0
    IL_001c:  ldfld      float64 Game.SubsystemSky::m_lastLightningStrikeTime
    IL_0021:  sub
    IL_0022:  ldc.r8     1.
    IL_002b:  ble.un     IL_027c

    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.SubsystemTime Game.SubsystemSky::m_subsystemTime
    IL_0037:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_003c:  stfld      float64 Game.SubsystemSky::m_lastLightningStrikeTime
    IL_0041:  ldarg.0
    IL_0042:  ldarg.1
    IL_0043:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0048:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.SubsystemSky::m_lightningStrikePosition
    IL_004d:  ldarg.0
    IL_004e:  ldc.r4     1.
    IL_0053:  stfld      float32 Game.SubsystemSky::m_lightningStrikeBrightness
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemAudio Game.SubsystemSky::m_subsystemAudio
    IL_005e:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemAudio::get_ListenerPosition()
    IL_0063:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0068:  ldarg.0
    IL_0069:  ldfld      class Game.SubsystemAudio Game.SubsystemSky::m_subsystemAudio
    IL_006e:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemAudio::get_ListenerPosition()
    IL_0073:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0078:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_007d:  ldarg.1
    IL_007e:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0083:  ldarg.1
    IL_0084:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0089:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_008e:  call       float32 [Engine]Engine.Vector2::Distance(valuetype [Engine]Engine.Vector2,
                                                                  valuetype [Engine]Engine.Vector2)
    IL_0093:  stloc.0
    IL_0094:  ldarg.0
    IL_0095:  ldfld      class Game.SubsystemAudio Game.SubsystemSky::m_subsystemAudio
    IL_009a:  ldloc.0
    IL_009b:  callvirt   instance float32 Game.SubsystemAudio::CalculateDelay(float32)
    IL_00a0:  stloc.1
    IL_00a1:  ldloc.0
    IL_00a2:  ldc.r4     40.
    IL_00a7:  bge.un.s   IL_00db

    IL_00a9:  ldarg.0
    IL_00aa:  ldfld      class Game.SubsystemAudio Game.SubsystemSky::m_subsystemAudio
    IL_00af:  ldstr      "Audio/ThunderNear"
    IL_00b4:  ldc.r4     1.
    IL_00b9:  ldarg.0
    IL_00ba:  ldfld      class Game.Random Game.SubsystemSky::m_random
    IL_00bf:  ldc.r4     -0.2
    IL_00c4:  ldc.r4     0.2
    IL_00c9:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00ce:  ldc.r4     0.0
    IL_00d3:  ldloc.1
    IL_00d4:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            float32,
                                                                            float32)
    IL_00d9:  br.s       IL_010b

    IL_00db:  ldarg.0
    IL_00dc:  ldfld      class Game.SubsystemAudio Game.SubsystemSky::m_subsystemAudio
    IL_00e1:  ldstr      "Audio/ThunderFar"
    IL_00e6:  ldc.r4     0.80000001
    IL_00eb:  ldarg.0
    IL_00ec:  ldfld      class Game.Random Game.SubsystemSky::m_random
    IL_00f1:  ldc.r4     -0.2
    IL_00f6:  ldc.r4     0.2
    IL_00fb:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0100:  ldc.r4     0.0
    IL_0105:  ldloc.1
    IL_0106:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            float32,
                                                                            float32)
    IL_010b:  ldarg.0
    IL_010c:  ldfld      class Game.SubsystemGameInfo Game.SubsystemSky::m_subsystemGameInfo
    IL_0111:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_0116:  ldfld      valuetype Game.EnvironmentBehaviorMode Game.WorldInfo::EnvironmentBehaviorMode
    IL_011b:  brtrue     IL_027c

    IL_0120:  newobj     instance void class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::.ctor()
    IL_0125:  stloc.2
    IL_0126:  ldarg.0
    IL_0127:  ldfld      class Game.SubsystemBodies Game.SubsystemSky::m_subsystemBodies
    IL_012c:  ldarg.1
    IL_012d:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0132:  ldarg.1
    IL_0133:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0138:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_013d:  ldc.r4     4.
    IL_0142:  ldloc.2
    IL_0143:  callvirt   instance void Game.SubsystemBodies::FindBodiesAroundPoint(valuetype [Engine]Engine.Vector2,
                                                                                   float32,
                                                                                   class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>)
    IL_0148:  ldc.i4.0
    IL_0149:  stloc.s    V_7
    IL_014b:  br         IL_0214

    IL_0150:  ldloc.2
    IL_0151:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::get_Array()
    IL_0156:  ldloc.s    V_7
    IL_0158:  ldelem.ref
    IL_0159:  stloc.s    V_8
    IL_015b:  ldloc.s    V_8
    IL_015d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0162:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0167:  ldarg.1
    IL_0168:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_016d:  ldc.r4     1.5
    IL_0172:  sub
    IL_0173:  ble.un.s   IL_01de

    IL_0175:  ldloc.s    V_8
    IL_0177:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_017c:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0181:  ldloc.s    V_8
    IL_0183:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0188:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_018d:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0192:  ldarg.1
    IL_0193:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0198:  ldarg.1
    IL_0199:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_019e:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01a3:  call       float32 [Engine]Engine.Vector2::Distance(valuetype [Engine]Engine.Vector2,
                                                                  valuetype [Engine]Engine.Vector2)
    IL_01a8:  ldc.r4     4.
    IL_01ad:  bge.un.s   IL_01de

    IL_01af:  ldloc.s    V_8
    IL_01b1:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_01b6:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentOnFire>()
    IL_01bb:  stloc.s    V_10
    IL_01bd:  ldloc.s    V_10
    IL_01bf:  brfalse.s  IL_01de

    IL_01c1:  ldloc.s    V_10
    IL_01c3:  ldnull
    IL_01c4:  ldarg.0
    IL_01c5:  ldfld      class Game.Random Game.SubsystemSky::m_random
    IL_01ca:  ldc.r4     12.
    IL_01cf:  ldc.r4     15.
    IL_01d4:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01d9:  callvirt   instance void Game.ComponentOnFire::SetOnFire(class Game.ComponentCreature,
                                                                       float32)
    IL_01de:  ldloc.s    V_8
    IL_01e0:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_01e5:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>()
    IL_01ea:  stloc.s    V_9
    IL_01ec:  ldloc.s    V_9
    IL_01ee:  brfalse.s  IL_020e

    IL_01f0:  ldloc.s    V_9
    IL_01f2:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_01f7:  brfalse.s  IL_020e

    IL_01f9:  ldloc.s    V_9
    IL_01fb:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_0200:  dup
    IL_0201:  ldfld      int64 Game.PlayerStats::StruckByLightning
    IL_0206:  ldc.i4.1
    IL_0207:  conv.i8
    IL_0208:  add
    IL_0209:  stfld      int64 Game.PlayerStats::StruckByLightning
    IL_020e:  ldloc.s    V_7
    IL_0210:  ldc.i4.1
    IL_0211:  add
    IL_0212:  stloc.s    V_7
    IL_0214:  ldloc.s    V_7
    IL_0216:  ldloc.2
    IL_0217:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::get_Count()
    IL_021c:  blt        IL_0150

    IL_0221:  ldarg.1
    IL_0222:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0227:  conv.i4
    IL_0228:  stloc.3
    IL_0229:  ldarg.1
    IL_022a:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_022f:  conv.i4
    IL_0230:  stloc.s    V_4
    IL_0232:  ldarg.1
    IL_0233:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0238:  conv.i4
    IL_0239:  stloc.s    V_5
    IL_023b:  ldarg.0
    IL_023c:  ldfld      class Game.Random Game.SubsystemSky::m_random
    IL_0241:  ldc.r4     0.0
    IL_0246:  ldc.r4     1.
    IL_024b:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0250:  ldc.r4     0.2
    IL_0255:  blt.s      IL_025b

    IL_0257:  ldc.i4.s   19
    IL_0259:  br.s       IL_025d

    IL_025b:  ldc.i4.s   39
    IL_025d:  conv.r4
    IL_025e:  stloc.s    V_6
    IL_0260:  ldarg.0
    IL_0261:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0266:  ldc.i4.1
    IL_0267:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemExplosions>(bool)
    IL_026c:  ldloc.3
    IL_026d:  ldloc.s    V_4
    IL_026f:  ldc.i4.1
    IL_0270:  add
    IL_0271:  ldloc.s    V_5
    IL_0273:  ldloc.s    V_6
    IL_0275:  ldc.i4.0
    IL_0276:  ldc.i4.1
    IL_0277:  callvirt   instance void Game.SubsystemExplosions::AddExplosion(int32,
                                                                              int32,
                                                                              int32,
                                                                              float32,
                                                                              bool,
                                                                              bool)
    IL_027c:  ret
  } // end of method SubsystemSky::MakeLightningStrike

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemSky::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       56 (0x38)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.SubsystemTimeOfDay Game.SubsystemSky::m_subsystemTimeOfDay
    IL_0007:  callvirt   instance float64 Game.SubsystemTimeOfDay::get_Day()
    IL_000c:  ldc.r8     0.5
    IL_0015:  sub
    IL_0016:  ldc.r8     5.
    IL_001f:  add
    IL_0020:  call       float64 [Engine]Engine.MathUtils::Floor(float64)
    IL_0025:  conv.i4
    IL_0026:  ldc.i4.8
    IL_0027:  rem
    IL_0028:  ldc.i4.8
    IL_0029:  add
    IL_002a:  ldc.i4.8
    IL_002b:  rem
    IL_002c:  call       instance void Game.SubsystemSky::set_MoonPhase(int32)
    IL_0031:  ldarg.0
    IL_0032:  call       instance void Game.SubsystemSky::UpdateLightAndViewParameters()
    IL_0037:  ret
  } // end of method SubsystemSky::Update

  .method public hidebysig newslot specialname virtual final 
          instance int32[]  get_DrawOrders() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32[] Game.SubsystemSky::m_drawOrders
    IL_0006:  ret
  } // end of method SubsystemSky::get_DrawOrders

  .method public hidebysig newslot virtual final 
          instance void  Draw(class Game.SubsystemDrawing subsystemDrawing,
                              int32 drawOrder) cil managed
  {
    // 代码大小       922 (0x39a)
    .maxstack  6
    .locals init (class Game.FluidBlock V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             valuetype [System.Runtime]System.Nullable`1<float32> V_5,
             int32 V_6,
             int32 V_7,
             valuetype [Engine]Engine.Color V_8,
             float32 V_9,
             float32 V_10,
             float32 V_11,
             int32 V_12,
             float32 V_13,
             float32 V_14)
    IL_0000:  ldarg.2
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int32[] Game.SubsystemSky::m_drawOrders
    IL_0007:  ldc.i4.0
    IL_0008:  ldelem.i4
    IL_0009:  bne.un     IL_0334

    IL_000e:  ldarg.0
    IL_000f:  ldc.r4     0.0
    IL_0014:  call       instance void Game.SubsystemSky::set_UnderWaterDepth(float32)
    IL_0019:  ldarg.0
    IL_001a:  ldc.r4     0.0
    IL_001f:  call       instance void Game.SubsystemSky::set_UnderMagmaDepth(float32)
    IL_0024:  ldarg.1
    IL_0025:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_002a:  stloc.1
    IL_002b:  ldloc.1
    IL_002c:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0031:  conv.i4
    IL_0032:  stloc.2
    IL_0033:  ldloc.1
    IL_0034:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0039:  conv.i4
    IL_003a:  stloc.3
    IL_003b:  ldloc.1
    IL_003c:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0041:  conv.i4
    IL_0042:  stloc.s    V_4
    IL_0044:  ldarg.0
    IL_0045:  ldfld      class Game.SubsystemFluidBlockBehavior Game.SubsystemSky::m_subsystemFluidBlockBehavior
    IL_004a:  ldloc.2
    IL_004b:  ldloc.3
    IL_004c:  ldloc.s    V_4
    IL_004e:  ldloca.s   V_0
    IL_0050:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemFluidBlockBehavior::GetSurfaceHeight(int32,
                                                                                                                                          int32,
                                                                                                                                          int32,
                                                                                                                                          class Game.FluidBlock&)
    IL_0055:  stloc.s    V_5
    IL_0057:  ldloca.s   V_5
    IL_0059:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_005e:  brfalse.s  IL_00a6

    IL_0060:  ldloc.0
    IL_0061:  isinst     Game.WaterBlock
    IL_0066:  brfalse.s  IL_0084

    IL_0068:  ldarg.0
    IL_0069:  ldloca.s   V_5
    IL_006b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0070:  ldc.r4     0.1
    IL_0075:  add
    IL_0076:  ldloc.1
    IL_0077:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_007c:  sub
    IL_007d:  call       instance void Game.SubsystemSky::set_UnderWaterDepth(float32)
    IL_0082:  br.s       IL_00a6

    IL_0084:  ldloc.0
    IL_0085:  isinst     Game.MagmaBlock
    IL_008a:  brfalse.s  IL_00a6

    IL_008c:  ldarg.0
    IL_008d:  ldloca.s   V_5
    IL_008f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0094:  ldc.r4     1.
    IL_0099:  add
    IL_009a:  ldloc.1
    IL_009b:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00a0:  sub
    IL_00a1:  call       instance void Game.SubsystemSky::set_UnderMagmaDepth(float32)
    IL_00a6:  ldarg.0
    IL_00a7:  call       instance float32 Game.SubsystemSky::get_UnderWaterDepth()
    IL_00ac:  ldc.r4     0.0
    IL_00b1:  ble.un     IL_01d3

    IL_00b6:  ldarg.0
    IL_00b7:  ldfld      class Game.SubsystemTerrain Game.SubsystemSky::m_subsystemTerrain
    IL_00bc:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00c1:  ldloc.2
    IL_00c2:  ldloc.s    V_4
    IL_00c4:  callvirt   instance bool Game.TerrainData::IsShaftValid(int32,
                                                                      int32)
    IL_00c9:  brtrue.s   IL_00ce

    IL_00cb:  ldc.i4.0
    IL_00cc:  br.s       IL_00e1

    IL_00ce:  ldarg.0
    IL_00cf:  ldfld      class Game.SubsystemTerrain Game.SubsystemSky::m_subsystemTerrain
    IL_00d4:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00d9:  ldloc.2
    IL_00da:  ldloc.s    V_4
    IL_00dc:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_00e1:  stloc.s    V_6
    IL_00e3:  ldarg.0
    IL_00e4:  ldfld      class Game.SubsystemTerrain Game.SubsystemSky::m_subsystemTerrain
    IL_00e9:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00ee:  ldloc.2
    IL_00ef:  ldloc.s    V_4
    IL_00f1:  callvirt   instance bool Game.TerrainData::IsShaftValid(int32,
                                                                      int32)
    IL_00f6:  brtrue.s   IL_00fb

    IL_00f8:  ldc.i4.0
    IL_00f9:  br.s       IL_010e

    IL_00fb:  ldarg.0
    IL_00fc:  ldfld      class Game.SubsystemTerrain Game.SubsystemSky::m_subsystemTerrain
    IL_0101:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0106:  ldloc.2
    IL_0107:  ldloc.s    V_4
    IL_0109:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_010e:  stloc.s    V_7
    IL_0110:  ldsfld     class Game.BlockColorsMap Game.BlockColorsMap::WaterColorsMap
    IL_0115:  ldloc.s    V_7
    IL_0117:  ldloc.s    V_6
    IL_0119:  callvirt   instance valuetype [Engine]Engine.Color Game.BlockColorsMap::Lookup(int32,
                                                                                             int32)
    IL_011e:  stloc.s    V_8
    IL_0120:  ldc.r4     1.
    IL_0125:  ldc.r4     0.5
    IL_012a:  ldloc.s    V_6
    IL_012c:  conv.r4
    IL_012d:  ldc.r4     15.
    IL_0132:  div
    IL_0133:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0138:  stloc.s    V_9
    IL_013a:  ldc.r4     1.
    IL_013f:  ldc.r4     0.2
    IL_0144:  ldc.r4     7.5000003e-002
    IL_0149:  ldarg.0
    IL_014a:  call       instance float32 Game.SubsystemSky::get_UnderWaterDepth()
    IL_014f:  ldc.r4     2.
    IL_0154:  sub
    IL_0155:  mul
    IL_0156:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_015b:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0160:  stloc.s    V_10
    IL_0162:  ldc.r4     0.33000001
    IL_0167:  ldc.r4     1.
    IL_016c:  ldarg.0
    IL_016d:  call       instance float32 Game.SubsystemSky::get_LightIntensity()
    IL_0172:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0177:  stloc.s    V_11
    IL_0179:  ldarg.0
    IL_017a:  ldflda     valuetype [Engine]Engine.Vector2 Game.SubsystemSky::m_fogRange
    IL_017f:  ldc.r4     0.0
    IL_0184:  stfld      float32 [Engine]Engine.Vector2::X
    IL_0189:  ldarg.0
    IL_018a:  ldflda     valuetype [Engine]Engine.Vector2 Game.SubsystemSky::m_fogRange
    IL_018f:  ldc.r4     4.
    IL_0194:  ldc.r4     10.
    IL_0199:  ldloc.s    V_9
    IL_019b:  ldloc.s    V_10
    IL_019d:  mul
    IL_019e:  ldloc.s    V_11
    IL_01a0:  mul
    IL_01a1:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_01a6:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_01ab:  ldarg.0
    IL_01ac:  ldc.r4     0.66000003
    IL_01b1:  ldloc.s    V_10
    IL_01b3:  mul
    IL_01b4:  ldloc.s    V_8
    IL_01b6:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(float32,
                                                                                          valuetype [Engine]Engine.Color)
    IL_01bb:  ldloc.s    V_11
    IL_01bd:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_01c2:  stfld      valuetype [Engine]Engine.Color Game.SubsystemSky::m_fogColor
    IL_01c7:  ldarg.0
    IL_01c8:  ldc.i4.0
    IL_01c9:  stfld      bool Game.SubsystemSky::m_isSkyVisible
    IL_01ce:  br         IL_030e

    IL_01d3:  ldarg.0
    IL_01d4:  call       instance float32 Game.SubsystemSky::get_UnderMagmaDepth()
    IL_01d9:  ldc.r4     0.0
    IL_01de:  ble.un.s   IL_021f

    IL_01e0:  ldarg.0
    IL_01e1:  ldflda     valuetype [Engine]Engine.Vector2 Game.SubsystemSky::m_fogRange
    IL_01e6:  ldc.r4     0.0
    IL_01eb:  stfld      float32 [Engine]Engine.Vector2::X
    IL_01f0:  ldarg.0
    IL_01f1:  ldflda     valuetype [Engine]Engine.Vector2 Game.SubsystemSky::m_fogRange
    IL_01f6:  ldc.r4     0.1
    IL_01fb:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_0200:  ldarg.0
    IL_0201:  ldc.i4     0xff
    IL_0206:  ldc.i4.s   80
    IL_0208:  ldc.i4.0
    IL_0209:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_020e:  stfld      valuetype [Engine]Engine.Color Game.SubsystemSky::m_fogColor
    IL_0213:  ldarg.0
    IL_0214:  ldc.i4.0
    IL_0215:  stfld      bool Game.SubsystemSky::m_isSkyVisible
    IL_021a:  br         IL_030e

    IL_021f:  ldc.i4.s   12
    IL_0221:  stloc.s    V_12
    IL_0223:  ldarg.0
    IL_0224:  ldfld      class Game.SubsystemTerrain Game.SubsystemSky::m_subsystemTerrain
    IL_0229:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_022e:  ldloc.1
    IL_022f:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0234:  conv.i4
    IL_0235:  ldloc.1
    IL_0236:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_023b:  conv.i4
    IL_023c:  callvirt   instance bool Game.TerrainData::IsShaftValid(int32,
                                                                      int32)
    IL_0241:  brfalse.s  IL_0263

    IL_0243:  ldarg.0
    IL_0244:  ldfld      class Game.SubsystemTerrain Game.SubsystemSky::m_subsystemTerrain
    IL_0249:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_024e:  ldloc.1
    IL_024f:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0254:  conv.i4
    IL_0255:  ldloc.1
    IL_0256:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_025b:  conv.i4
    IL_025c:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_0261:  stloc.s    V_12
    IL_0263:  ldc.r4     0.5
    IL_0268:  ldc.r4     0.0
    IL_026d:  ldarg.0
    IL_026e:  ldfld      class Game.SubsystemWeather Game.SubsystemSky::m_subsystemWeather
    IL_0273:  callvirt   instance float32 Game.SubsystemWeather::get_GlobalPrecipitationIntensity()
    IL_0278:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_027d:  stloc.s    V_13
    IL_027f:  ldc.r4     1.
    IL_0284:  ldc.r4     0.80000001
    IL_0289:  ldarg.0
    IL_028a:  ldfld      class Game.SubsystemWeather Game.SubsystemSky::m_subsystemWeather
    IL_028f:  callvirt   instance float32 Game.SubsystemWeather::get_GlobalPrecipitationIntensity()
    IL_0294:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0299:  stloc.s    V_14
    IL_029b:  ldarg.0
    IL_029c:  ldflda     valuetype [Engine]Engine.Vector2 Game.SubsystemSky::m_fogRange
    IL_02a1:  ldarg.0
    IL_02a2:  call       instance float32 Game.SubsystemSky::get_VisibilityRange()
    IL_02a7:  ldloc.s    V_13
    IL_02a9:  mul
    IL_02aa:  stfld      float32 [Engine]Engine.Vector2::X
    IL_02af:  ldarg.0
    IL_02b0:  ldflda     valuetype [Engine]Engine.Vector2 Game.SubsystemSky::m_fogRange
    IL_02b5:  ldarg.0
    IL_02b6:  call       instance float32 Game.SubsystemSky::get_VisibilityRange()
    IL_02bb:  ldloc.s    V_14
    IL_02bd:  mul
    IL_02be:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_02c3:  ldarg.0
    IL_02c4:  ldarg.0
    IL_02c5:  ldarg.1
    IL_02c6:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewDirection()
    IL_02cb:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_02d0:  ldc.r4     0.0
    IL_02d5:  ldarg.1
    IL_02d6:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewDirection()
    IL_02db:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_02e0:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_02e5:  ldarg.0
    IL_02e6:  ldfld      class Game.SubsystemTimeOfDay Game.SubsystemSky::m_subsystemTimeOfDay
    IL_02eb:  callvirt   instance float32 Game.SubsystemTimeOfDay::get_TimeOfDay()
    IL_02f0:  ldarg.0
    IL_02f1:  ldfld      class Game.SubsystemWeather Game.SubsystemSky::m_subsystemWeather
    IL_02f6:  callvirt   instance float32 Game.SubsystemWeather::get_GlobalPrecipitationIntensity()
    IL_02fb:  ldloc.s    V_12
    IL_02fd:  call       instance valuetype [Engine]Engine.Color Game.SubsystemSky::CalculateSkyColor(valuetype [Engine]Engine.Vector3,
                                                                                                      float32,
                                                                                                      float32,
                                                                                                      int32)
    IL_0302:  stfld      valuetype [Engine]Engine.Color Game.SubsystemSky::m_fogColor
    IL_0307:  ldarg.0
    IL_0308:  ldc.i4.1
    IL_0309:  stfld      bool Game.SubsystemSky::m_isSkyVisible
    IL_030e:  ldarg.0
    IL_030f:  ldfld      valuetype [Engine]Engine.Color Game.SubsystemSky::m_fogColor
    IL_0314:  newobj     instance void [Engine]Engine.Vector4::.ctor(valuetype [Engine]Engine.Color)
    IL_0319:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector4>::.ctor(!0)
    IL_031e:  ldc.r4     1.
    IL_0323:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_0328:  ldc.i4.0
    IL_0329:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_032e:  call       void [Engine]Engine.Graphics.Display::Clear(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector4>,
                                                                     valuetype [System.Runtime]System.Nullable`1<float32>,
                                                                     valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_0333:  ret

    IL_0334:  ldarg.2
    IL_0335:  ldarg.0
    IL_0336:  ldfld      int32[] Game.SubsystemSky::m_drawOrders
    IL_033b:  ldc.i4.1
    IL_033c:  ldelem.i4
    IL_033d:  bne.un.s   IL_0380

    IL_033f:  ldarg.0
    IL_0340:  ldfld      bool Game.SubsystemSky::DrawSkyEnabled
    IL_0345:  brfalse.s  IL_0357

    IL_0347:  ldarg.0
    IL_0348:  ldfld      bool Game.SubsystemSky::m_isSkyVisible
    IL_034d:  brfalse.s  IL_0357

    IL_034f:  call       valuetype Game.SkyRenderingMode Game.SettingsManager::get_SkyRenderingMode()
    IL_0354:  ldc.i4.2
    IL_0355:  bne.un.s   IL_0358

    IL_0357:  ret

    IL_0358:  ldarg.0
    IL_0359:  ldarg.1
    IL_035a:  call       instance void Game.SubsystemSky::DrawSkydomeAndStars(class Game.SubsystemDrawing)
    IL_035f:  ldarg.0
    IL_0360:  ldarg.1
    IL_0361:  call       instance void Game.SubsystemSky::DrawSunAndMoon(class Game.SubsystemDrawing)
    IL_0366:  ldarg.0
    IL_0367:  ldarg.1
    IL_0368:  call       instance void Game.SubsystemSky::DrawClouds(class Game.SubsystemDrawing)
    IL_036d:  ldarg.0
    IL_036e:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemSky::m_primitivesRenderer
    IL_0373:  ldarg.1
    IL_0374:  callvirt   instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ViewProjectionMatrix()
    IL_0379:  ldc.i4.1
    IL_037a:  callvirt   instance void class [Engine]Engine.Graphics.BasePrimitivesRenderer`3<class [Engine]Engine.Graphics.FlatBatch3D,class [Engine]Engine.Graphics.TexturedBatch3D,class [Engine]Engine.Graphics.FontBatch3D>::Flush(valuetype [Engine]Engine.Matrix,
                                                                                                                                                                                                                                        bool)
    IL_037f:  ret

    IL_0380:  ldarg.0
    IL_0381:  ldarg.1
    IL_0382:  call       instance void Game.SubsystemSky::DrawLightning(class Game.SubsystemDrawing)
    IL_0387:  ldarg.0
    IL_0388:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemSky::m_primitivesRenderer
    IL_038d:  ldarg.1
    IL_038e:  callvirt   instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ViewProjectionMatrix()
    IL_0393:  ldc.i4.1
    IL_0394:  callvirt   instance void class [Engine]Engine.Graphics.BasePrimitivesRenderer`3<class [Engine]Engine.Graphics.FlatBatch3D,class [Engine]Engine.Graphics.TexturedBatch3D,class [Engine]Engine.Graphics.FontBatch3D>::Flush(valuetype [Engine]Engine.Matrix,
                                                                                                                                                                                                                                        bool)
    IL_0399:  ret
  } // end of method SubsystemSky::Draw

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       274 (0x112)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTimeOfDay>(bool)
    IL_000d:  stfld      class Game.SubsystemTimeOfDay Game.SubsystemSky::m_subsystemTimeOfDay
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_001f:  stfld      class Game.SubsystemTime Game.SubsystemSky::m_subsystemTime
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_0031:  stfld      class Game.SubsystemGameInfo Game.SubsystemSky::m_subsystemGameInfo
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0043:  stfld      class Game.SubsystemTerrain Game.SubsystemSky::m_subsystemTerrain
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemWeather>(bool)
    IL_0055:  stfld      class Game.SubsystemWeather Game.SubsystemSky::m_subsystemWeather
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0067:  stfld      class Game.SubsystemAudio Game.SubsystemSky::m_subsystemAudio
    IL_006c:  ldarg.0
    IL_006d:  ldarg.0
    IL_006e:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0073:  ldc.i4.1
    IL_0074:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBodies>(bool)
    IL_0079:  stfld      class Game.SubsystemBodies Game.SubsystemSky::m_subsystemBodies
    IL_007e:  ldarg.0
    IL_007f:  ldarg.0
    IL_0080:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0085:  ldc.i4.1
    IL_0086:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemFluidBlockBehavior>(bool)
    IL_008b:  stfld      class Game.SubsystemFluidBlockBehavior Game.SubsystemSky::m_subsystemFluidBlockBehavior
    IL_0090:  ldarg.0
    IL_0091:  ldfld      class [Engine]Engine.Graphics.UnlitUberShader Game.SubsystemSky::m_uberShader
    IL_0096:  ldc.i4.1
    IL_0097:  stfld      bool [Engine]Engine.Graphics.UnlitUberShader::UseVertexColor
    IL_009c:  ldarg.0
    IL_009d:  ldstr      "Textures/Sun"
    IL_00a2:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_00a7:  stfld      class [Engine]Engine.Graphics.Texture2D Game.SubsystemSky::m_sunTexture
    IL_00ac:  ldarg.0
    IL_00ad:  ldstr      "Textures/SkyGlow"
    IL_00b2:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_00b7:  stfld      class [Engine]Engine.Graphics.Texture2D Game.SubsystemSky::m_glowTexture
    IL_00bc:  ldarg.0
    IL_00bd:  ldstr      "Textures/Clouds"
    IL_00c2:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_00c7:  stfld      class [Engine]Engine.Graphics.Texture2D Game.SubsystemSky::m_cloudsTexture
    IL_00cc:  ldc.i4.0
    IL_00cd:  stloc.0
    IL_00ce:  br.s       IL_00f6

    IL_00d0:  ldarg.0
    IL_00d1:  ldfld      class [Engine]Engine.Graphics.Texture2D[] Game.SubsystemSky::m_moonTextures
    IL_00d6:  ldloc.0
    IL_00d7:  ldstr      "Textures/Moon"
    IL_00dc:  ldloc.0
    IL_00dd:  ldc.i4.1
    IL_00de:  add
    IL_00df:  stloc.1
    IL_00e0:  ldloca.s   V_1
    IL_00e2:  call       instance string [System.Runtime]System.Int32::ToString()
    IL_00e7:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_00ec:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_00f1:  stelem.ref
    IL_00f2:  ldloc.0
    IL_00f3:  ldc.i4.1
    IL_00f4:  add
    IL_00f5:  stloc.0
    IL_00f6:  ldloc.0
    IL_00f7:  ldc.i4.8
    IL_00f8:  blt.s      IL_00d0

    IL_00fa:  ldarg.0
    IL_00fb:  call       instance void Game.SubsystemSky::UpdateLightAndViewParameters()
    IL_0100:  ldarg.0
    IL_0101:  ldftn      instance void Game.SubsystemSky::Display_DeviceReset()
    IL_0107:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_010c:  call       void [Engine]Engine.Graphics.Display::add_DeviceReset(class [System.Runtime]System.Action)
    IL_0111:  ret
  } // end of method SubsystemSky::Load

  .method public hidebysig virtual instance void 
          Dispose() cil managed
  {
    // 代码大小       62 (0x3e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldftn      instance void Game.SubsystemSky::Display_DeviceReset()
    IL_0007:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_000c:  call       void [Engine]Engine.Graphics.Display::remove_DeviceReset(class [System.Runtime]System.Action)
    IL_0011:  ldarg.0
    IL_0012:  ldflda     class [Engine]Engine.Graphics.VertexBuffer Game.SubsystemSky::m_skyVertexBuffer
    IL_0017:  call       void [Engine]Engine.Utilities::Dispose<class [Engine]Engine.Graphics.VertexBuffer>(!!0&)
    IL_001c:  ldarg.0
    IL_001d:  ldflda     class [Engine]Engine.Graphics.IndexBuffer Game.SubsystemSky::m_skyIndexBuffer
    IL_0022:  call       void [Engine]Engine.Utilities::Dispose<class [Engine]Engine.Graphics.IndexBuffer>(!!0&)
    IL_0027:  ldarg.0
    IL_0028:  ldflda     class [Engine]Engine.Graphics.VertexBuffer Game.SubsystemSky::m_starsVertexBuffer
    IL_002d:  call       void [Engine]Engine.Utilities::Dispose<class [Engine]Engine.Graphics.VertexBuffer>(!!0&)
    IL_0032:  ldarg.0
    IL_0033:  ldflda     class [Engine]Engine.Graphics.IndexBuffer Game.SubsystemSky::m_starsIndexBuffer
    IL_0038:  call       void [Engine]Engine.Utilities::Dispose<class [Engine]Engine.Graphics.IndexBuffer>(!!0&)
    IL_003d:  ret
  } // end of method SubsystemSky::Dispose

  .method private hidebysig instance void 
          Display_DeviceReset() cil managed
  {
    // 代码大小       45 (0x2d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldflda     class [Engine]Engine.Graphics.VertexBuffer Game.SubsystemSky::m_skyVertexBuffer
    IL_0006:  call       void [Engine]Engine.Utilities::Dispose<class [Engine]Engine.Graphics.VertexBuffer>(!!0&)
    IL_000b:  ldarg.0
    IL_000c:  ldflda     class [Engine]Engine.Graphics.IndexBuffer Game.SubsystemSky::m_skyIndexBuffer
    IL_0011:  call       void [Engine]Engine.Utilities::Dispose<class [Engine]Engine.Graphics.IndexBuffer>(!!0&)
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [Engine]Engine.Graphics.VertexBuffer Game.SubsystemSky::m_starsVertexBuffer
    IL_001c:  call       void [Engine]Engine.Utilities::Dispose<class [Engine]Engine.Graphics.VertexBuffer>(!!0&)
    IL_0021:  ldarg.0
    IL_0022:  ldflda     class [Engine]Engine.Graphics.IndexBuffer Game.SubsystemSky::m_starsIndexBuffer
    IL_0027:  call       void [Engine]Engine.Utilities::Dispose<class [Engine]Engine.Graphics.IndexBuffer>(!!0&)
    IL_002c:  ret
  } // end of method SubsystemSky::Display_DeviceReset

  .method private hidebysig instance void 
          DrawSkydomeAndStars(class Game.SubsystemDrawing subsystemDrawing) cil managed
  {
    // 代码大小       851 (0x353)
    .maxstack  6
    .locals init (int32 V_0,
             int32 V_1,
             float32 V_2,
             float32 V_3,
             int32 V_4,
             valuetype [Engine]Engine.Matrix V_5,
             float32 V_6,
             valuetype [System.Runtime]System.Nullable`1<int32> V_7)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_0006:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_000b:  conv.i4
    IL_000c:  stloc.0
    IL_000d:  ldarg.1
    IL_000e:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_0013:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0018:  conv.i4
    IL_0019:  stloc.1
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.SubsystemWeather Game.SubsystemSky::m_subsystemWeather
    IL_0020:  callvirt   instance float32 Game.SubsystemWeather::get_GlobalPrecipitationIntensity()
    IL_0025:  stloc.2
    IL_0026:  ldarg.0
    IL_0027:  ldfld      class Game.SubsystemTimeOfDay Game.SubsystemSky::m_subsystemTimeOfDay
    IL_002c:  callvirt   instance float32 Game.SubsystemTimeOfDay::get_TimeOfDay()
    IL_0031:  stloc.3
    IL_0032:  ldarg.0
    IL_0033:  ldfld      class Game.SubsystemTerrain Game.SubsystemSky::m_subsystemTerrain
    IL_0038:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_003d:  ldloc.0
    IL_003e:  ldloc.1
    IL_003f:  callvirt   instance bool Game.TerrainData::IsShaftValid(int32,
                                                                      int32)
    IL_0044:  brtrue.s   IL_004a

    IL_0046:  ldc.i4.s   12
    IL_0048:  br.s       IL_005c

    IL_004a:  ldarg.0
    IL_004b:  ldfld      class Game.SubsystemTerrain Game.SubsystemSky::m_subsystemTerrain
    IL_0050:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0055:  ldloc.0
    IL_0056:  ldloc.1
    IL_0057:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_005c:  stloc.s    V_4
    IL_005e:  ldarg.0
    IL_005f:  ldfld      class [Engine]Engine.Graphics.VertexBuffer Game.SubsystemSky::m_skyVertexBuffer
    IL_0064:  brfalse.s  IL_006e

    IL_0066:  ldarg.0
    IL_0067:  ldfld      class [Engine]Engine.Graphics.IndexBuffer Game.SubsystemSky::m_skyIndexBuffer
    IL_006c:  brtrue.s   IL_00ba

    IL_006e:  ldarg.0
    IL_006f:  ldflda     class [Engine]Engine.Graphics.VertexBuffer Game.SubsystemSky::m_skyVertexBuffer
    IL_0074:  call       void [Engine]Engine.Utilities::Dispose<class [Engine]Engine.Graphics.VertexBuffer>(!!0&)
    IL_0079:  ldarg.0
    IL_007a:  ldflda     class [Engine]Engine.Graphics.IndexBuffer Game.SubsystemSky::m_skyIndexBuffer
    IL_007f:  call       void [Engine]Engine.Utilities::Dispose<class [Engine]Engine.Graphics.IndexBuffer>(!!0&)
    IL_0084:  ldarg.0
    IL_0085:  ldarg.0
    IL_0086:  ldfld      class [Engine]Engine.Graphics.VertexDeclaration Game.SubsystemSky::m_skyVertexDeclaration
    IL_008b:  ldc.i4.s   80
    IL_008d:  newobj     instance void [Engine]Engine.Graphics.VertexBuffer::.ctor(class [Engine]Engine.Graphics.VertexDeclaration,
                                                                                   int32)
    IL_0092:  stfld      class [Engine]Engine.Graphics.VertexBuffer Game.SubsystemSky::m_skyVertexBuffer
    IL_0097:  ldarg.0
    IL_0098:  ldc.i4.0
    IL_0099:  ldc.i4     0x1a4
    IL_009e:  newobj     instance void [Engine]Engine.Graphics.IndexBuffer::.ctor(valuetype [Engine]Engine.Graphics.IndexFormat,
                                                                                  int32)
    IL_00a3:  stfld      class [Engine]Engine.Graphics.IndexBuffer Game.SubsystemSky::m_skyIndexBuffer
    IL_00a8:  ldarg.0
    IL_00a9:  call       instance void Game.SubsystemSky::FillSkyIndexBuffer()
    IL_00ae:  ldarg.0
    IL_00af:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemSky::m_lastUpdateTimeOfDay
    IL_00b4:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
    IL_00ba:  ldarg.0
    IL_00bb:  ldfld      class [Engine]Engine.Graphics.VertexBuffer Game.SubsystemSky::m_starsVertexBuffer
    IL_00c0:  brfalse.s  IL_00ca

    IL_00c2:  ldarg.0
    IL_00c3:  ldfld      class [Engine]Engine.Graphics.IndexBuffer Game.SubsystemSky::m_starsIndexBuffer
    IL_00c8:  brtrue.s   IL_010d

    IL_00ca:  ldarg.0
    IL_00cb:  ldflda     class [Engine]Engine.Graphics.VertexBuffer Game.SubsystemSky::m_starsVertexBuffer
    IL_00d0:  call       void [Engine]Engine.Utilities::Dispose<class [Engine]Engine.Graphics.VertexBuffer>(!!0&)
    IL_00d5:  ldarg.0
    IL_00d6:  ldflda     class [Engine]Engine.Graphics.IndexBuffer Game.SubsystemSky::m_starsIndexBuffer
    IL_00db:  call       void [Engine]Engine.Utilities::Dispose<class [Engine]Engine.Graphics.IndexBuffer>(!!0&)
    IL_00e0:  ldarg.0
    IL_00e1:  ldarg.0
    IL_00e2:  ldfld      class [Engine]Engine.Graphics.VertexDeclaration Game.SubsystemSky::m_starsVertexDeclaration
    IL_00e7:  ldc.i4     0x258
    IL_00ec:  newobj     instance void [Engine]Engine.Graphics.VertexBuffer::.ctor(class [Engine]Engine.Graphics.VertexDeclaration,
                                                                                   int32)
    IL_00f1:  stfld      class [Engine]Engine.Graphics.VertexBuffer Game.SubsystemSky::m_starsVertexBuffer
    IL_00f6:  ldarg.0
    IL_00f7:  ldc.i4.0
    IL_00f8:  ldc.i4     0x384
    IL_00fd:  newobj     instance void [Engine]Engine.Graphics.IndexBuffer::.ctor(valuetype [Engine]Engine.Graphics.IndexFormat,
                                                                                  int32)
    IL_0102:  stfld      class [Engine]Engine.Graphics.IndexBuffer Game.SubsystemSky::m_starsIndexBuffer
    IL_0107:  ldarg.0
    IL_0108:  call       instance void Game.SubsystemSky::FillStarsBuffers()
    IL_010d:  ldarg.0
    IL_010e:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemSky::m_lastUpdateTimeOfDay
    IL_0113:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_0118:  brfalse    IL_01ba

    IL_011d:  ldloc.3
    IL_011e:  ldarg.0
    IL_011f:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemSky::m_lastUpdateTimeOfDay
    IL_0124:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0129:  sub
    IL_012a:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_012f:  ldc.r4     1.e-003
    IL_0134:  bgt        IL_01ba

    IL_0139:  ldarg.0
    IL_013a:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemSky::m_lastUpdatePrecipitationIntensity
    IL_013f:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_0144:  brfalse.s  IL_01ba

    IL_0146:  ldloc.2
    IL_0147:  ldarg.0
    IL_0148:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemSky::m_lastUpdatePrecipitationIntensity
    IL_014d:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0152:  sub
    IL_0153:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0158:  ldc.r4     2.e-002
    IL_015d:  bgt.s      IL_01ba

    IL_015f:  ldloc.2
    IL_0160:  ldc.r4     0.0
    IL_0165:  beq.s      IL_016f

    IL_0167:  ldloc.2
    IL_0168:  ldc.r4     1.
    IL_016d:  bne.un.s   IL_017d

    IL_016f:  ldarg.0
    IL_0170:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemSky::m_lastUpdatePrecipitationIntensity
    IL_0175:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_017a:  ldloc.2
    IL_017b:  bne.un.s   IL_01ba

    IL_017d:  ldarg.0
    IL_017e:  ldfld      float32 Game.SubsystemSky::m_lightningStrikeBrightness
    IL_0183:  ldarg.0
    IL_0184:  ldfld      float32 Game.SubsystemSky::m_lastUpdateLightningStrikeBrightness
    IL_0189:  bne.un.s   IL_01ba

    IL_018b:  ldarg.0
    IL_018c:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.SubsystemSky::m_lastUpdateTemperature
    IL_0191:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0196:  brfalse.s  IL_01ba

    IL_0198:  ldloc.s    V_4
    IL_019a:  ldarg.0
    IL_019b:  ldfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.SubsystemSky::m_lastUpdateTemperature
    IL_01a0:  stloc.s    V_7
    IL_01a2:  ldloca.s   V_7
    IL_01a4:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::GetValueOrDefault()
    IL_01a9:  beq.s      IL_01ae

    IL_01ab:  ldc.i4.1
    IL_01ac:  br.s       IL_01b8

    IL_01ae:  ldloca.s   V_7
    IL_01b0:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_01b5:  ldc.i4.0
    IL_01b6:  ceq
    IL_01b8:  brfalse.s  IL_01f5

    IL_01ba:  ldarg.0
    IL_01bb:  ldloc.3
    IL_01bc:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_01c1:  stfld      valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemSky::m_lastUpdateTimeOfDay
    IL_01c6:  ldarg.0
    IL_01c7:  ldloc.2
    IL_01c8:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_01cd:  stfld      valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemSky::m_lastUpdatePrecipitationIntensity
    IL_01d2:  ldarg.0
    IL_01d3:  ldarg.0
    IL_01d4:  ldfld      float32 Game.SubsystemSky::m_lightningStrikeBrightness
    IL_01d9:  stfld      float32 Game.SubsystemSky::m_lastUpdateLightningStrikeBrightness
    IL_01de:  ldarg.0
    IL_01df:  ldloc.s    V_4
    IL_01e1:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_01e6:  stfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.SubsystemSky::m_lastUpdateTemperature
    IL_01eb:  ldarg.0
    IL_01ec:  ldloc.3
    IL_01ed:  ldloc.2
    IL_01ee:  ldloc.s    V_4
    IL_01f0:  call       instance void Game.SubsystemSky::FillSkyVertexBuffer(float32,
                                                                              float32,
                                                                              int32)
    IL_01f5:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::DepthRead
    IL_01fa:  call       void [Engine]Engine.Graphics.Display::set_DepthStencilState(class [Engine]Engine.Graphics.DepthStencilState)
    IL_01ff:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullNone
    IL_0204:  call       void [Engine]Engine.Graphics.Display::set_RasterizerState(class [Engine]Engine.Graphics.RasterizerState)
    IL_0209:  ldarg.1
    IL_020a:  callvirt   instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ViewProjectionMatrix()
    IL_020f:  stloc.s    V_5
    IL_0211:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::Opaque
    IL_0216:  call       void [Engine]Engine.Graphics.Display::set_BlendState(class [Engine]Engine.Graphics.BlendState)
    IL_021b:  ldarg.0
    IL_021c:  ldfld      class [Engine]Engine.Graphics.UnlitUberShader Game.SubsystemSky::m_uberShader
    IL_0221:  ldarg.1
    IL_0222:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_0227:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(valuetype [Engine]Engine.Vector3)
    IL_022c:  ldloc.s    V_5
    IL_022e:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0233:  stfld      valuetype [Engine]Engine.Matrix [Engine]Engine.Graphics.UnlitUberShader::WorldViewProjection
    IL_0238:  ldarg.0
    IL_0239:  ldfld      class [Engine]Engine.Graphics.UnlitUberShader Game.SubsystemSky::m_uberShader
    IL_023e:  ldsfld     valuetype [Engine]Engine.Vector4 [Engine]Engine.Vector4::One
    IL_0243:  stfld      valuetype [Engine]Engine.Vector4 [Engine]Engine.Graphics.UnlitUberShader::Color
    IL_0248:  ldarg.0
    IL_0249:  ldfld      class [Engine]Engine.Graphics.UnlitUberShader Game.SubsystemSky::m_uberShader
    IL_024e:  ldnull
    IL_024f:  stfld      class [Engine]Engine.Graphics.Texture2D [Engine]Engine.Graphics.UnlitUberShader::Texture
    IL_0254:  ldc.i4.2
    IL_0255:  ldarg.0
    IL_0256:  ldfld      class [Engine]Engine.Graphics.UnlitUberShader Game.SubsystemSky::m_uberShader
    IL_025b:  callvirt   instance class [Engine]Engine.Graphics.Shader [Engine]Engine.Graphics.UnlitUberShader::PrepareShader()
    IL_0260:  ldarg.0
    IL_0261:  ldfld      class [Engine]Engine.Graphics.VertexBuffer Game.SubsystemSky::m_skyVertexBuffer
    IL_0266:  ldarg.0
    IL_0267:  ldfld      class [Engine]Engine.Graphics.IndexBuffer Game.SubsystemSky::m_skyIndexBuffer
    IL_026c:  ldc.i4.0
    IL_026d:  ldarg.0
    IL_026e:  ldfld      class [Engine]Engine.Graphics.IndexBuffer Game.SubsystemSky::m_skyIndexBuffer
    IL_0273:  callvirt   instance int32 [Engine]Engine.Graphics.IndexBuffer::get_IndicesCount()
    IL_0278:  call       void [Engine]Engine.Graphics.Display::DrawIndexed(valuetype [Engine]Engine.Graphics.PrimitiveType,
                                                                           class [Engine]Engine.Graphics.Shader,
                                                                           class [Engine]Engine.Graphics.VertexBuffer,
                                                                           class [Engine]Engine.Graphics.IndexBuffer,
                                                                           int32,
                                                                           int32)
    IL_027d:  ldc.r4     1.
    IL_0282:  ldarg.0
    IL_0283:  ldloc.3
    IL_0284:  call       instance float32 Game.SubsystemSky::CalculateLightIntensity(float32)
    IL_0289:  sub
    IL_028a:  ldc.r4     1.
    IL_028f:  ldloc.2
    IL_0290:  sub
    IL_0291:  mul
    IL_0292:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
    IL_0297:  stloc.s    V_6
    IL_0299:  ldloc.s    V_6
    IL_029b:  ldc.r4     9.9999998e-003
    IL_02a0:  ble.un     IL_0352

    IL_02a5:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::Additive
    IL_02aa:  call       void [Engine]Engine.Graphics.Display::set_BlendState(class [Engine]Engine.Graphics.BlendState)
    IL_02af:  ldarg.0
    IL_02b0:  ldfld      class [Engine]Engine.Graphics.UnlitUberShader Game.SubsystemSky::m_uberShader
    IL_02b5:  ldc.r4     -2.
    IL_02ba:  ldloc.3
    IL_02bb:  mul
    IL_02bc:  ldc.r4     3.1415927
    IL_02c1:  mul
    IL_02c2:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationZ(float32)
    IL_02c7:  ldarg.1
    IL_02c8:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_02cd:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(valuetype [Engine]Engine.Vector3)
    IL_02d2:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_02d7:  ldloc.s    V_5
    IL_02d9:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_02de:  stfld      valuetype [Engine]Engine.Matrix [Engine]Engine.Graphics.UnlitUberShader::WorldViewProjection
    IL_02e3:  ldarg.0
    IL_02e4:  ldfld      class [Engine]Engine.Graphics.UnlitUberShader Game.SubsystemSky::m_uberShader
    IL_02e9:  ldc.r4     1.
    IL_02ee:  ldc.r4     1.
    IL_02f3:  ldc.r4     1.
    IL_02f8:  ldloc.s    V_6
    IL_02fa:  newobj     instance void [Engine]Engine.Vector4::.ctor(float32,
                                                                     float32,
                                                                     float32,
                                                                     float32)
    IL_02ff:  stfld      valuetype [Engine]Engine.Vector4 [Engine]Engine.Graphics.UnlitUberShader::Color
    IL_0304:  ldarg.0
    IL_0305:  ldfld      class [Engine]Engine.Graphics.UnlitUberShader Game.SubsystemSky::m_uberShader
    IL_030a:  ldstr      "Textures/Star"
    IL_030f:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_0314:  stfld      class [Engine]Engine.Graphics.Texture2D [Engine]Engine.Graphics.UnlitUberShader::Texture
    IL_0319:  ldarg.0
    IL_031a:  ldfld      class [Engine]Engine.Graphics.UnlitUberShader Game.SubsystemSky::m_uberShader
    IL_031f:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::LinearClamp
    IL_0324:  stfld      class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.UnlitUberShader::SamplerState
    IL_0329:  ldc.i4.2
    IL_032a:  ldarg.0
    IL_032b:  ldfld      class [Engine]Engine.Graphics.UnlitUberShader Game.SubsystemSky::m_uberShader
    IL_0330:  callvirt   instance class [Engine]Engine.Graphics.Shader [Engine]Engine.Graphics.UnlitUberShader::PrepareShader()
    IL_0335:  ldarg.0
    IL_0336:  ldfld      class [Engine]Engine.Graphics.VertexBuffer Game.SubsystemSky::m_starsVertexBuffer
    IL_033b:  ldarg.0
    IL_033c:  ldfld      class [Engine]Engine.Graphics.IndexBuffer Game.SubsystemSky::m_starsIndexBuffer
    IL_0341:  ldc.i4.0
    IL_0342:  ldarg.0
    IL_0343:  ldfld      class [Engine]Engine.Graphics.IndexBuffer Game.SubsystemSky::m_starsIndexBuffer
    IL_0348:  callvirt   instance int32 [Engine]Engine.Graphics.IndexBuffer::get_IndicesCount()
    IL_034d:  call       void [Engine]Engine.Graphics.Display::DrawIndexed(valuetype [Engine]Engine.Graphics.PrimitiveType,
                                                                           class [Engine]Engine.Graphics.Shader,
                                                                           class [Engine]Engine.Graphics.VertexBuffer,
                                                                           class [Engine]Engine.Graphics.IndexBuffer,
                                                                           int32,
                                                                           int32)
    IL_0352:  ret
  } // end of method SubsystemSky::DrawSkydomeAndStars

  .method private hidebysig instance void 
          DrawSunAndMoon(class Game.SubsystemDrawing subsystemDrawing) cil managed
  {
    // 代码大小       514 (0x202)
    .maxstack  8
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5,
             float32 V_6,
             valuetype [Engine]Engine.Color V_7,
             valuetype [Engine]Engine.Color V_8,
             valuetype [Engine]Engine.Color V_9,
             valuetype [Engine]Engine.Color V_10,
             class [Engine]Engine.Graphics.TexturedBatch3D V_11,
             class [Engine]Engine.Graphics.TexturedBatch3D V_12,
             class [Engine]Engine.Graphics.TexturedBatch3D V_13)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemWeather Game.SubsystemSky::m_subsystemWeather
    IL_0006:  callvirt   instance float32 Game.SubsystemWeather::get_GlobalPrecipitationIntensity()
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldfld      class Game.SubsystemTimeOfDay Game.SubsystemSky::m_subsystemTimeOfDay
    IL_0012:  callvirt   instance float32 Game.SubsystemTimeOfDay::get_TimeOfDay()
    IL_0017:  stloc.1
    IL_0018:  ldloc.1
    IL_0019:  call       float32 Game.SubsystemSky::CalculateDawnGlowIntensity(float32)
    IL_001e:  ldloc.1
    IL_001f:  call       float32 Game.SubsystemSky::CalculateDuskGlowIntensity(float32)
    IL_0024:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0029:  stloc.2
    IL_002a:  ldc.r4     2.
    IL_002f:  ldloc.1
    IL_0030:  mul
    IL_0031:  ldc.r4     3.1415927
    IL_0036:  mul
    IL_0037:  stloc.3
    IL_0038:  ldloc.3
    IL_0039:  ldc.r4     3.1415927
    IL_003e:  add
    IL_003f:  stloc.s    V_4
    IL_0041:  ldc.r4     90.
    IL_0046:  ldc.r4     160.
    IL_004b:  ldloc.2
    IL_004c:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0051:  stloc.s    V_5
    IL_0053:  ldc.r4     60.
    IL_0058:  ldc.r4     80.
    IL_005d:  ldloc.2
    IL_005e:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0063:  stloc.s    V_6
    IL_0065:  ldc.i4     0xff
    IL_006a:  ldc.i4     0xff
    IL_006f:  ldc.i4     0xff
    IL_0074:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0079:  ldc.i4     0xff
    IL_007e:  ldc.i4     0xff
    IL_0083:  ldc.i4     0xa0
    IL_0088:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_008d:  ldloc.2
    IL_008e:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::Lerp(valuetype [Engine]Engine.Color,
                                                                                   valuetype [Engine]Engine.Color,
                                                                                   float32)
    IL_0093:  stloc.s    V_7
    IL_0095:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_009a:  stloc.s    V_8
    IL_009c:  ldloc.s    V_8
    IL_009e:  ldc.r4     1.
    IL_00a3:  ldarg.0
    IL_00a4:  call       instance float32 Game.SubsystemSky::get_LightIntensity()
    IL_00a9:  sub
    IL_00aa:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_00af:  stloc.s    V_8
    IL_00b1:  ldloc.s    V_7
    IL_00b3:  ldc.r4     1.
    IL_00b8:  ldc.r4     0.0
    IL_00bd:  ldloc.0
    IL_00be:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_00c3:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_00c8:  stloc.s    V_7
    IL_00ca:  ldloc.s    V_8
    IL_00cc:  ldc.r4     1.
    IL_00d1:  ldc.r4     0.0
    IL_00d6:  ldloc.0
    IL_00d7:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_00dc:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_00e1:  stloc.s    V_8
    IL_00e3:  ldloc.s    V_7
    IL_00e5:  ldc.r4     0.60000002
    IL_00ea:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_00ef:  ldc.r4     1.
    IL_00f4:  ldc.r4     0.0
    IL_00f9:  ldloc.0
    IL_00fa:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_00ff:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_0104:  stloc.s    V_9
    IL_0106:  ldloc.s    V_7
    IL_0108:  ldc.r4     0.2
    IL_010d:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_0112:  ldc.r4     1.
    IL_0117:  ldc.r4     0.0
    IL_011c:  ldloc.0
    IL_011d:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0122:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_0127:  stloc.s    V_10
    IL_0129:  ldarg.0
    IL_012a:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemSky::m_primitivesRenderer
    IL_012f:  ldarg.0
    IL_0130:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.SubsystemSky::m_glowTexture
    IL_0135:  ldc.i4.0
    IL_0136:  ldc.i4.0
    IL_0137:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::DepthRead
    IL_013c:  ldnull
    IL_013d:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::Additive
    IL_0142:  ldnull
    IL_0143:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_0148:  stloc.s    V_11
    IL_014a:  ldarg.0
    IL_014b:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemSky::m_primitivesRenderer
    IL_0150:  ldarg.0
    IL_0151:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.SubsystemSky::m_sunTexture
    IL_0156:  ldc.i4.0
    IL_0157:  ldc.i4.1
    IL_0158:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::DepthRead
    IL_015d:  ldnull
    IL_015e:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::AlphaBlend
    IL_0163:  ldnull
    IL_0164:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_0169:  stloc.s    V_12
    IL_016b:  ldarg.0
    IL_016c:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemSky::m_primitivesRenderer
    IL_0171:  ldarg.0
    IL_0172:  ldfld      class [Engine]Engine.Graphics.Texture2D[] Game.SubsystemSky::m_moonTextures
    IL_0177:  ldarg.0
    IL_0178:  call       instance int32 Game.SubsystemSky::get_MoonPhase()
    IL_017d:  ldelem.ref
    IL_017e:  ldc.i4.0
    IL_017f:  ldc.i4.1
    IL_0180:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::DepthRead
    IL_0185:  ldnull
    IL_0186:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::AlphaBlend
    IL_018b:  ldnull
    IL_018c:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_0191:  stloc.s    V_13
    IL_0193:  ldarg.0
    IL_0194:  ldloc.s    V_11
    IL_0196:  ldarg.1
    IL_0197:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_019c:  ldloc.s    V_9
    IL_019e:  ldc.r4     900.
    IL_01a3:  ldc.r4     3.5
    IL_01a8:  ldloc.s    V_5
    IL_01aa:  mul
    IL_01ab:  ldloc.3
    IL_01ac:  call       instance void Game.SubsystemSky::QueueCelestialBody(class [Engine]Engine.Graphics.TexturedBatch3D,
                                                                             valuetype [Engine]Engine.Vector3,
                                                                             valuetype [Engine]Engine.Color,
                                                                             float32,
                                                                             float32,
                                                                             float32)
    IL_01b1:  ldarg.0
    IL_01b2:  ldloc.s    V_11
    IL_01b4:  ldarg.1
    IL_01b5:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_01ba:  ldloc.s    V_10
    IL_01bc:  ldc.r4     900.
    IL_01c1:  ldc.r4     3.5
    IL_01c6:  ldloc.s    V_6
    IL_01c8:  mul
    IL_01c9:  ldloc.s    V_4
    IL_01cb:  call       instance void Game.SubsystemSky::QueueCelestialBody(class [Engine]Engine.Graphics.TexturedBatch3D,
                                                                             valuetype [Engine]Engine.Vector3,
                                                                             valuetype [Engine]Engine.Color,
                                                                             float32,
                                                                             float32,
                                                                             float32)
    IL_01d0:  ldarg.0
    IL_01d1:  ldloc.s    V_12
    IL_01d3:  ldarg.1
    IL_01d4:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_01d9:  ldloc.s    V_7
    IL_01db:  ldc.r4     900.
    IL_01e0:  ldloc.s    V_5
    IL_01e2:  ldloc.3
    IL_01e3:  call       instance void Game.SubsystemSky::QueueCelestialBody(class [Engine]Engine.Graphics.TexturedBatch3D,
                                                                             valuetype [Engine]Engine.Vector3,
                                                                             valuetype [Engine]Engine.Color,
                                                                             float32,
                                                                             float32,
                                                                             float32)
    IL_01e8:  ldarg.0
    IL_01e9:  ldloc.s    V_13
    IL_01eb:  ldarg.1
    IL_01ec:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_01f1:  ldloc.s    V_8
    IL_01f3:  ldc.r4     900.
    IL_01f8:  ldloc.s    V_6
    IL_01fa:  ldloc.s    V_4
    IL_01fc:  call       instance void Game.SubsystemSky::QueueCelestialBody(class [Engine]Engine.Graphics.TexturedBatch3D,
                                                                             valuetype [Engine]Engine.Vector3,
                                                                             valuetype [Engine]Engine.Color,
                                                                             float32,
                                                                             float32,
                                                                             float32)
    IL_0201:  ret
  } // end of method SubsystemSky::DrawSunAndMoon

  .method private hidebysig instance void 
          DrawLightning(class Game.SubsystemDrawing subsystemDrawing) cil managed
  {
    // 代码大小       1014 (0x3f6)
    .maxstack  6
    .locals init (class [Engine]Engine.Graphics.FlatBatch3D V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             valuetype [Engine]Engine.Graphics.Viewport V_4,
             float32 V_5,
             float32 V_6,
             int32 V_7,
             float32 V_8,
             valuetype [Engine]Engine.Vector3 V_9,
             float32 V_10,
             uint32 V_11,
             float32 V_12,
             float32 V_13,
             float32 V_14,
             float32 V_15,
             float32 V_16,
             float32 V_17,
             float32 V_18,
             valuetype [Engine]Engine.Vector3 V_19,
             valuetype [Engine]Engine.Vector3 V_20,
             valuetype [Engine]Engine.Vector3 V_21,
             valuetype [Engine]Engine.Vector3 V_22,
             valuetype [Engine]Engine.Color V_23,
             valuetype [Engine]Engine.Color V_24,
             valuetype [Engine]Engine.Color V_25,
             valuetype [Engine]Engine.Color V_26)
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.SubsystemSky::m_lightningStrikePosition
    IL_0006:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_000b:  brfalse    IL_03f5

    IL_0010:  ldarg.0
    IL_0011:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemSky::m_primitivesRenderer
    IL_0016:  ldc.i4.0
    IL_0017:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::DepthRead
    IL_001c:  ldnull
    IL_001d:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::Additive
    IL_0022:  callvirt   instance class [Engine]Engine.Graphics.FlatBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::FlatBatch(int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState)
    IL_0027:  stloc.0
    IL_0028:  ldarg.0
    IL_0029:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.SubsystemSky::m_lightningStrikePosition
    IL_002e:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0033:  stloc.1
    IL_0034:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0039:  stloc.2
    IL_003a:  ldarg.1
    IL_003b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewDirection()
    IL_0040:  ldloc.2
    IL_0041:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_0046:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_004b:  stloc.3
    IL_004c:  call       valuetype [Engine]Engine.Graphics.Viewport [Engine]Engine.Graphics.Display::get_Viewport()
    IL_0051:  stloc.s    V_4
    IL_0053:  ldloc.1
    IL_0054:  ldc.r4     1.
    IL_0059:  newobj     instance void [Engine]Engine.Vector4::.ctor(valuetype [Engine]Engine.Vector3,
                                                                     float32)
    IL_005e:  ldarg.1
    IL_005f:  callvirt   instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ViewProjectionMatrix()
    IL_0064:  call       valuetype [Engine]Engine.Vector4 [Engine]Engine.Vector4::Transform(valuetype [Engine]Engine.Vector4,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0069:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_006e:  ldc.r4     2.
    IL_0073:  mul
    IL_0074:  ldloc.s    V_4
    IL_0076:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_007b:  conv.r4
    IL_007c:  ldarg.1
    IL_007d:  callvirt   instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ProjectionMatrix()
    IL_0082:  ldfld      float32 [Engine]Engine.Matrix::M11
    IL_0087:  mul
    IL_0088:  div
    IL_0089:  stloc.s    V_5
    IL_008b:  ldc.i4.0
    IL_008c:  stloc.s    V_7
    IL_008e:  br         IL_035c

    IL_0093:  ldarg.0
    IL_0094:  ldfld      class Game.Random Game.SubsystemSky::m_random
    IL_0099:  ldc.r4     0.0
    IL_009e:  ldc.r4     1.
    IL_00a3:  ldloc.s    V_5
    IL_00a5:  mul
    IL_00a6:  callvirt   instance float32 Game.Random::NormalFloat(float32,
                                                                   float32)
    IL_00ab:  ldarg.0
    IL_00ac:  ldfld      class Game.Random Game.SubsystemSky::m_random
    IL_00b1:  ldc.r4     0.0
    IL_00b6:  ldc.r4     1.
    IL_00bb:  ldloc.s    V_5
    IL_00bd:  mul
    IL_00be:  callvirt   instance float32 Game.Random::NormalFloat(float32,
                                                                   float32)
    IL_00c3:  stloc.s    V_8
    IL_00c5:  ldloc.3
    IL_00c6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00cb:  ldloc.s    V_8
    IL_00cd:  ldloc.2
    IL_00ce:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00d3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00d8:  stloc.s    V_9
    IL_00da:  ldc.r4     130.
    IL_00df:  stloc.s    V_10
    IL_00e1:  br         IL_0349

    IL_00e6:  ldarg.0
    IL_00e7:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.SubsystemSky::m_lightningStrikePosition
    IL_00ec:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_00f1:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00f6:  ldc.r4     100.
    IL_00fb:  ldarg.0
    IL_00fc:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.SubsystemSky::m_lightningStrikePosition
    IL_0101:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0106:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_010b:  mul
    IL_010c:  add
    IL_010d:  ldc.r4     200.
    IL_0112:  ldloc.s    V_10
    IL_0114:  mul
    IL_0115:  add
    IL_0116:  conv.u4
    IL_0117:  call       uint32 [Engine]Engine.MathUtils::Hash(uint32)
    IL_011c:  stloc.s    V_11
    IL_011e:  ldc.r4     4.
    IL_0123:  ldc.r4     10.
    IL_0128:  ldloc.s    V_11
    IL_012a:  ldc.i4     0xff
    IL_012f:  and
    IL_0130:  conv.r.un
    IL_0131:  conv.r4
    IL_0132:  ldc.r4     255.
    IL_0137:  div
    IL_0138:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_013d:  stloc.s    V_12
    IL_013f:  ldloc.s    V_11
    IL_0141:  ldc.i4.1
    IL_0142:  and
    IL_0143:  brfalse.s  IL_0148

    IL_0145:  ldc.i4.m1
    IL_0146:  br.s       IL_0149

    IL_0148:  ldc.i4.1
    IL_0149:  conv.r4
    IL_014a:  stloc.s    V_13
    IL_014c:  ldc.r4     5.0000001e-002
    IL_0151:  ldc.r4     0.2
    IL_0156:  ldloc.s    V_11
    IL_0158:  ldc.i4.8
    IL_0159:  shr.un
    IL_015a:  ldc.i4     0xff
    IL_015f:  and
    IL_0160:  conv.r.un
    IL_0161:  conv.r4
    IL_0162:  ldc.r4     255.
    IL_0167:  div
    IL_0168:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_016d:  stloc.s    V_14
    IL_016f:  ldloc.s    V_10
    IL_0171:  stloc.s    V_15
    IL_0173:  ldloc.s    V_15
    IL_0175:  ldloc.s    V_12
    IL_0177:  ldc.r4     0.44999999
    IL_017c:  ldc.r4     0.55000001
    IL_0181:  ldloc.s    V_11
    IL_0183:  ldc.i4.s   16
    IL_0185:  shr.un
    IL_0186:  ldc.i4     0xff
    IL_018b:  and
    IL_018c:  conv.r.un
    IL_018d:  conv.r4
    IL_018e:  ldc.r4     255.
    IL_0193:  div
    IL_0194:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0199:  mul
    IL_019a:  sub
    IL_019b:  stloc.s    V_16
    IL_019d:  ldloc.s    V_15
    IL_019f:  ldloc.s    V_12
    IL_01a1:  ldc.r4     0.44999999
    IL_01a6:  ldc.r4     0.55000001
    IL_01ab:  ldloc.s    V_11
    IL_01ad:  ldc.i4.s   24
    IL_01af:  shr.un
    IL_01b0:  ldc.i4     0xff
    IL_01b5:  and
    IL_01b6:  conv.r.un
    IL_01b7:  conv.r4
    IL_01b8:  ldc.r4     255.
    IL_01bd:  div
    IL_01be:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_01c3:  mul
    IL_01c4:  sub
    IL_01c5:  stloc.s    V_17
    IL_01c7:  ldloc.s    V_15
    IL_01c9:  ldloc.s    V_12
    IL_01cb:  sub
    IL_01cc:  stloc.s    V_18
    IL_01ce:  ldloc.1
    IL_01cf:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_01d4:  ldloc.s    V_15
    IL_01d6:  ldloc.1
    IL_01d7:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01dc:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01e1:  ldloc.s    V_9
    IL_01e3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01e8:  stloc.s    V_19
    IL_01ea:  ldloc.1
    IL_01eb:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_01f0:  ldloc.s    V_16
    IL_01f2:  ldloc.1
    IL_01f3:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01f8:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01fd:  ldloc.s    V_9
    IL_01ff:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0204:  ldloc.s    V_12
    IL_0206:  ldloc.3
    IL_0207:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_020c:  ldloc.s    V_13
    IL_020e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0213:  ldloc.s    V_14
    IL_0215:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_021a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_021f:  stloc.s    V_20
    IL_0221:  ldloc.1
    IL_0222:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0227:  ldloc.s    V_17
    IL_0229:  ldloc.1
    IL_022a:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_022f:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0234:  ldloc.s    V_9
    IL_0236:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_023b:  ldloc.s    V_12
    IL_023d:  ldloc.3
    IL_023e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0243:  ldloc.s    V_13
    IL_0245:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_024a:  ldloc.s    V_14
    IL_024c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0251:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0256:  stloc.s    V_21
    IL_0258:  ldloc.1
    IL_0259:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_025e:  ldloc.s    V_18
    IL_0260:  ldloc.1
    IL_0261:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0266:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_026b:  ldloc.s    V_9
    IL_026d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0272:  stloc.s    V_22
    IL_0274:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0279:  ldc.r4     0.2
    IL_027e:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_0283:  ldc.r4     130.
    IL_0288:  ldloc.s    V_15
    IL_028a:  sub
    IL_028b:  ldc.r4     0.2
    IL_0290:  mul
    IL_0291:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0296:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_029b:  stloc.s    V_23
    IL_029d:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_02a2:  ldc.r4     0.2
    IL_02a7:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_02ac:  ldc.r4     130.
    IL_02b1:  ldloc.s    V_16
    IL_02b3:  sub
    IL_02b4:  ldc.r4     0.2
    IL_02b9:  mul
    IL_02ba:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_02bf:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_02c4:  stloc.s    V_24
    IL_02c6:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_02cb:  ldc.r4     0.2
    IL_02d0:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_02d5:  ldc.r4     130.
    IL_02da:  ldloc.s    V_17
    IL_02dc:  sub
    IL_02dd:  ldc.r4     0.2
    IL_02e2:  mul
    IL_02e3:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_02e8:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_02ed:  stloc.s    V_25
    IL_02ef:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_02f4:  ldc.r4     0.2
    IL_02f9:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_02fe:  ldc.r4     130.
    IL_0303:  ldloc.s    V_18
    IL_0305:  sub
    IL_0306:  ldc.r4     0.2
    IL_030b:  mul
    IL_030c:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0311:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_0316:  stloc.s    V_26
    IL_0318:  ldloc.0
    IL_0319:  ldloc.s    V_19
    IL_031b:  ldloc.s    V_20
    IL_031d:  ldloc.s    V_23
    IL_031f:  ldloc.s    V_24
    IL_0321:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueLine(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0326:  ldloc.0
    IL_0327:  ldloc.s    V_20
    IL_0329:  ldloc.s    V_21
    IL_032b:  ldloc.s    V_24
    IL_032d:  ldloc.s    V_25
    IL_032f:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueLine(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0334:  ldloc.0
    IL_0335:  ldloc.s    V_21
    IL_0337:  ldloc.s    V_22
    IL_0339:  ldloc.s    V_25
    IL_033b:  ldloc.s    V_26
    IL_033d:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch3D::QueueLine(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Color,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0342:  ldloc.s    V_10
    IL_0344:  ldloc.s    V_12
    IL_0346:  sub
    IL_0347:  stloc.s    V_10
    IL_0349:  ldloc.s    V_10
    IL_034b:  ldloc.1
    IL_034c:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0351:  bgt        IL_00e6

    IL_0356:  ldloc.s    V_7
    IL_0358:  ldc.i4.1
    IL_0359:  add
    IL_035a:  stloc.s    V_7
    IL_035c:  ldloc.s    V_7
    IL_035e:  ldarg.0
    IL_035f:  ldfld      float32 Game.SubsystemSky::m_lightningStrikeBrightness
    IL_0364:  ldc.r4     30.
    IL_0369:  mul
    IL_036a:  conv.i4
    IL_036b:  blt        IL_0093

    IL_0370:  ldc.r4     0.30000001
    IL_0375:  ldc.r4     0.75
    IL_037a:  ldc.r4     0.5
    IL_037f:  ldc.r8     1.
    IL_0388:  ldarg.0
    IL_0389:  ldfld      class Game.SubsystemTime Game.SubsystemSky::m_subsystemTime
    IL_038e:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0393:  mul
    IL_0394:  ldc.r8     6.2831854820251465
    IL_039d:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_03a2:  call       float64 [Engine]Engine.MathUtils::Sin(float64)
    IL_03a7:  conv.r4
    IL_03a8:  mul
    IL_03a9:  ldc.r4     0.5
    IL_03ae:  add
    IL_03af:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_03b4:  stloc.s    V_6
    IL_03b6:  ldarg.0
    IL_03b7:  ldarg.0
    IL_03b8:  ldfld      float32 Game.SubsystemSky::m_lightningStrikeBrightness
    IL_03bd:  ldarg.0
    IL_03be:  ldfld      class Game.SubsystemTime Game.SubsystemSky::m_subsystemTime
    IL_03c3:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_03c8:  ldloc.s    V_6
    IL_03ca:  div
    IL_03cb:  sub
    IL_03cc:  stfld      float32 Game.SubsystemSky::m_lightningStrikeBrightness
    IL_03d1:  ldarg.0
    IL_03d2:  ldfld      float32 Game.SubsystemSky::m_lightningStrikeBrightness
    IL_03d7:  ldc.r4     0.0
    IL_03dc:  bgt.un.s   IL_03f5

    IL_03de:  ldarg.0
    IL_03df:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.SubsystemSky::m_lightningStrikePosition
    IL_03e4:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_03ea:  ldarg.0
    IL_03eb:  ldc.r4     0.0
    IL_03f0:  stfld      float32 Game.SubsystemSky::m_lightningStrikeBrightness
    IL_03f5:  ret
  } // end of method SubsystemSky::DrawLightning

  .method private hidebysig instance void 
          DrawClouds(class Game.SubsystemDrawing subsystemDrawing) cil managed
  {
    // 代码大小       1108 (0x454)
    .maxstack  8
    .locals init (float32 V_0,
             float32 V_1,
             float64 V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             valuetype [Engine]Engine.Vector2 V_4,
             class [Engine]Engine.Graphics.TexturedBatch3D V_5,
             class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture> V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12,
             int32 V_13,
             int32 V_14,
             float32 V_15,
             float32 V_16,
             float32 V_17,
             float32 V_18,
             float32 V_19,
             valuetype [Engine]Engine.Vector3 V_20,
             valuetype [Engine]Engine.Vector2 V_21,
             valuetype [Engine]Engine.Color V_22,
             uint16 V_23,
             uint16 V_24,
             uint16 V_25,
             uint16 V_26)
    IL_0000:  call       valuetype Game.SkyRenderingMode Game.SettingsManager::get_SkyRenderingMode()
    IL_0005:  ldc.i4.1
    IL_0006:  beq        IL_0453

    IL_000b:  ldarg.0
    IL_000c:  ldfld      class Game.SubsystemWeather Game.SubsystemSky::m_subsystemWeather
    IL_0011:  callvirt   instance float32 Game.SubsystemWeather::get_GlobalPrecipitationIntensity()
    IL_0016:  stloc.0
    IL_0017:  ldc.r4     2.9999999e-002
    IL_001c:  ldc.r4     1.
    IL_0021:  ldarg.0
    IL_0022:  call       instance float32 Game.SubsystemSky::get_LightIntensity()
    IL_0027:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
    IL_002c:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0031:  ldc.r4     1.
    IL_0036:  ldc.r4     0.2
    IL_003b:  ldloc.0
    IL_003c:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0041:  mul
    IL_0042:  stloc.1
    IL_0043:  ldarg.0
    IL_0044:  ldfld      valuetype [Engine]Engine.Color[] Game.SubsystemSky::m_cloudsLayerColors
    IL_0049:  ldc.i4.0
    IL_004a:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_004f:  ldloc.1
    IL_0050:  ldc.r4     0.75
    IL_0055:  mul
    IL_0056:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_005b:  stelem     [Engine]Engine.Color
    IL_0060:  ldarg.0
    IL_0061:  ldfld      valuetype [Engine]Engine.Color[] Game.SubsystemSky::m_cloudsLayerColors
    IL_0066:  ldc.i4.1
    IL_0067:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_006c:  ldloc.1
    IL_006d:  ldc.r4     0.66000003
    IL_0072:  mul
    IL_0073:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_0078:  stelem     [Engine]Engine.Color
    IL_007d:  ldarg.0
    IL_007e:  ldfld      valuetype [Engine]Engine.Color[] Game.SubsystemSky::m_cloudsLayerColors
    IL_0083:  ldc.i4.2
    IL_0084:  ldarg.0
    IL_0085:  call       instance valuetype [Engine]Engine.Color Game.SubsystemSky::get_FogColor()
    IL_008a:  stelem     [Engine]Engine.Color
    IL_008f:  ldarg.0
    IL_0090:  ldfld      valuetype [Engine]Engine.Color[] Game.SubsystemSky::m_cloudsLayerColors
    IL_0095:  ldc.i4.3
    IL_0096:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_009b:  stelem     [Engine]Engine.Color
    IL_00a0:  ldarg.0
    IL_00a1:  ldfld      class Game.SubsystemTime Game.SubsystemSky::m_subsystemTime
    IL_00a6:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_00ab:  stloc.2
    IL_00ac:  ldarg.1
    IL_00ad:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_00b2:  stloc.3
    IL_00b3:  ldloca.s   V_4
    IL_00b5:  ldc.r8     2.0000000949949026e-003
    IL_00be:  ldloc.2
    IL_00bf:  mul
    IL_00c0:  ldloc.3
    IL_00c1:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00c6:  ldc.r4     1000.
    IL_00cb:  div
    IL_00cc:  ldc.r4     1.5
    IL_00d1:  mul
    IL_00d2:  conv.r8
    IL_00d3:  sub
    IL_00d4:  ldc.r8     1.
    IL_00dd:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_00e2:  conv.r4
    IL_00e3:  ldloc.3
    IL_00e4:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00e9:  ldc.r4     1000.
    IL_00ee:  div
    IL_00ef:  ldc.r4     1.5
    IL_00f4:  mul
    IL_00f5:  add
    IL_00f6:  ldc.r8     2.0000000949949026e-003
    IL_00ff:  ldloc.2
    IL_0100:  mul
    IL_0101:  ldloc.3
    IL_0102:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0107:  ldc.r4     1000.
    IL_010c:  div
    IL_010d:  ldc.r4     1.5
    IL_0112:  mul
    IL_0113:  conv.r8
    IL_0114:  sub
    IL_0115:  ldc.r8     1.
    IL_011e:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_0123:  conv.r4
    IL_0124:  ldloc.3
    IL_0125:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_012a:  ldc.r4     1000.
    IL_012f:  div
    IL_0130:  ldc.r4     1.5
    IL_0135:  mul
    IL_0136:  add
    IL_0137:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_013c:  ldarg.0
    IL_013d:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemSky::m_primitivesRenderer
    IL_0142:  ldarg.0
    IL_0143:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.SubsystemSky::m_cloudsTexture
    IL_0148:  ldc.i4.0
    IL_0149:  ldc.i4.2
    IL_014a:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::DepthRead
    IL_014f:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullNone
    IL_0154:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::AlphaBlend
    IL_0159:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::LinearWrap
    IL_015e:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_0163:  stloc.s    V_5
    IL_0165:  ldloc.s    V_5
    IL_0167:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleVertices
    IL_016c:  stloc.s    V_6
    IL_016e:  ldloc.s    V_5
    IL_0170:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleIndices
    IL_0175:  ldloc.s    V_6
    IL_0177:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Count()
    IL_017c:  stloc.s    V_7
    IL_017e:  ldloc.s    V_6
    IL_0180:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Count()
    IL_0185:  stloc.s    V_8
    IL_0187:  dup
    IL_0188:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_018d:  stloc.s    V_9
    IL_018f:  ldloc.s    V_6
    IL_0191:  dup
    IL_0192:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Count()
    IL_0197:  ldc.i4.s   49
    IL_0199:  add
    IL_019a:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::set_Count(int32)
    IL_019f:  dup
    IL_01a0:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_01a5:  ldc.i4     0xd8
    IL_01aa:  add
    IL_01ab:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_01b0:  ldc.i4.0
    IL_01b1:  stloc.s    V_10
    IL_01b3:  br         IL_0444

    IL_01b8:  ldc.i4.0
    IL_01b9:  stloc.s    V_11
    IL_01bb:  br         IL_0436

    IL_01c0:  ldloc.s    V_11
    IL_01c2:  ldc.i4.3
    IL_01c3:  sub
    IL_01c4:  stloc.s    V_12
    IL_01c6:  ldloc.s    V_10
    IL_01c8:  ldc.i4.3
    IL_01c9:  sub
    IL_01ca:  stloc.s    V_13
    IL_01cc:  ldloc.s    V_12
    IL_01ce:  call       int32 [Engine]Engine.MathUtils::Abs(int32)
    IL_01d3:  ldloc.s    V_13
    IL_01d5:  call       int32 [Engine]Engine.MathUtils::Abs(int32)
    IL_01da:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_01df:  stloc.s    V_14
    IL_01e1:  ldarg.0
    IL_01e2:  ldfld      float32[] Game.SubsystemSky::m_cloudsLayerRadii
    IL_01e7:  ldloc.s    V_14
    IL_01e9:  ldelem.r4
    IL_01ea:  stloc.s    V_15
    IL_01ec:  ldloc.s    V_14
    IL_01ee:  ldc.i4.0
    IL_01ef:  bgt.s      IL_01f8

    IL_01f1:  ldc.r4     0.0
    IL_01f6:  br.s       IL_020c

    IL_01f8:  ldloc.s    V_15
    IL_01fa:  ldloc.s    V_12
    IL_01fc:  ldloc.s    V_12
    IL_01fe:  mul
    IL_01ff:  ldloc.s    V_13
    IL_0201:  ldloc.s    V_13
    IL_0203:  mul
    IL_0204:  add
    IL_0205:  conv.r4
    IL_0206:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_020b:  div
    IL_020c:  stloc.s    V_16
    IL_020e:  ldloc.s    V_12
    IL_0210:  conv.r4
    IL_0211:  ldloc.s    V_16
    IL_0213:  mul
    IL_0214:  stloc.s    V_17
    IL_0216:  ldloc.s    V_13
    IL_0218:  conv.r4
    IL_0219:  ldloc.s    V_16
    IL_021b:  mul
    IL_021c:  stloc.s    V_18
    IL_021e:  ldc.r4     250.
    IL_0223:  ldc.r4     50.
    IL_0228:  ldloc.s    V_15
    IL_022a:  ldloc.s    V_15
    IL_022c:  mul
    IL_022d:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0232:  stloc.s    V_19
    IL_0234:  ldloca.s   V_20
    IL_0236:  ldloc.3
    IL_0237:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_023c:  ldloc.s    V_17
    IL_023e:  ldc.r4     1000.
    IL_0243:  mul
    IL_0244:  add
    IL_0245:  ldloc.s    V_19
    IL_0247:  ldloc.3
    IL_0248:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_024d:  ldloc.s    V_18
    IL_024f:  ldc.r4     1000.
    IL_0254:  mul
    IL_0255:  add
    IL_0256:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_025b:  ldloc.s    V_20
    IL_025d:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0262:  ldloc.s    V_20
    IL_0264:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0269:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_026e:  ldc.r4     1000.
    IL_0273:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0278:  ldc.r4     1.5
    IL_027d:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0282:  ldloc.s    V_4
    IL_0284:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_0289:  stloc.s    V_21
    IL_028b:  ldarg.0
    IL_028c:  ldfld      valuetype [Engine]Engine.Color[] Game.SubsystemSky::m_cloudsLayerColors
    IL_0291:  ldloc.s    V_14
    IL_0293:  ldelem     [Engine]Engine.Color
    IL_0298:  stloc.s    V_22
    IL_029a:  ldloc.s    V_5
    IL_029c:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleVertices
    IL_02a1:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Array()
    IL_02a6:  ldloc.s    V_8
    IL_02a8:  dup
    IL_02a9:  ldc.i4.1
    IL_02aa:  add
    IL_02ab:  stloc.s    V_8
    IL_02ad:  ldloc.s    V_20
    IL_02af:  ldloc.s    V_22
    IL_02b1:  ldloc.s    V_21
    IL_02b3:  newobj     instance void [Engine]Engine.Graphics.VertexPositionColorTexture::.ctor(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Color,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_02b8:  stelem     [Engine]Engine.Graphics.VertexPositionColorTexture
    IL_02bd:  ldloc.s    V_11
    IL_02bf:  ldc.i4.0
    IL_02c0:  ble        IL_0430

    IL_02c5:  ldloc.s    V_10
    IL_02c7:  ldc.i4.0
    IL_02c8:  ble        IL_0430

    IL_02cd:  ldloc.s    V_7
    IL_02cf:  ldloc.s    V_11
    IL_02d1:  add
    IL_02d2:  ldloc.s    V_10
    IL_02d4:  ldc.i4.7
    IL_02d5:  mul
    IL_02d6:  add
    IL_02d7:  conv.u2
    IL_02d8:  stloc.s    V_23
    IL_02da:  ldloc.s    V_7
    IL_02dc:  ldloc.s    V_11
    IL_02de:  ldc.i4.1
    IL_02df:  sub
    IL_02e0:  add
    IL_02e1:  ldloc.s    V_10
    IL_02e3:  ldc.i4.7
    IL_02e4:  mul
    IL_02e5:  add
    IL_02e6:  conv.u2
    IL_02e7:  stloc.s    V_24
    IL_02e9:  ldloc.s    V_7
    IL_02eb:  ldloc.s    V_11
    IL_02ed:  ldc.i4.1
    IL_02ee:  sub
    IL_02ef:  add
    IL_02f0:  ldloc.s    V_10
    IL_02f2:  ldc.i4.1
    IL_02f3:  sub
    IL_02f4:  ldc.i4.7
    IL_02f5:  mul
    IL_02f6:  add
    IL_02f7:  conv.u2
    IL_02f8:  stloc.s    V_25
    IL_02fa:  ldloc.s    V_7
    IL_02fc:  ldloc.s    V_11
    IL_02fe:  add
    IL_02ff:  ldloc.s    V_10
    IL_0301:  ldc.i4.1
    IL_0302:  sub
    IL_0303:  ldc.i4.7
    IL_0304:  mul
    IL_0305:  add
    IL_0306:  conv.u2
    IL_0307:  stloc.s    V_26
    IL_0309:  ldloc.s    V_12
    IL_030b:  ldc.i4.0
    IL_030c:  bgt.s      IL_0313

    IL_030e:  ldloc.s    V_13
    IL_0310:  ldc.i4.0
    IL_0311:  ble.s      IL_0323

    IL_0313:  ldloc.s    V_12
    IL_0315:  ldc.i4.0
    IL_0316:  ble        IL_03ac

    IL_031b:  ldloc.s    V_13
    IL_031d:  ldc.i4.0
    IL_031e:  ble        IL_03ac

    IL_0323:  ldloc.s    V_5
    IL_0325:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleIndices
    IL_032a:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_032f:  ldloc.s    V_9
    IL_0331:  dup
    IL_0332:  ldc.i4.1
    IL_0333:  add
    IL_0334:  stloc.s    V_9
    IL_0336:  ldloc.s    V_23
    IL_0338:  stelem.i2
    IL_0339:  ldloc.s    V_5
    IL_033b:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleIndices
    IL_0340:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0345:  ldloc.s    V_9
    IL_0347:  dup
    IL_0348:  ldc.i4.1
    IL_0349:  add
    IL_034a:  stloc.s    V_9
    IL_034c:  ldloc.s    V_24
    IL_034e:  stelem.i2
    IL_034f:  ldloc.s    V_5
    IL_0351:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleIndices
    IL_0356:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_035b:  ldloc.s    V_9
    IL_035d:  dup
    IL_035e:  ldc.i4.1
    IL_035f:  add
    IL_0360:  stloc.s    V_9
    IL_0362:  ldloc.s    V_25
    IL_0364:  stelem.i2
    IL_0365:  ldloc.s    V_5
    IL_0367:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleIndices
    IL_036c:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0371:  ldloc.s    V_9
    IL_0373:  dup
    IL_0374:  ldc.i4.1
    IL_0375:  add
    IL_0376:  stloc.s    V_9
    IL_0378:  ldloc.s    V_25
    IL_037a:  stelem.i2
    IL_037b:  ldloc.s    V_5
    IL_037d:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleIndices
    IL_0382:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0387:  ldloc.s    V_9
    IL_0389:  dup
    IL_038a:  ldc.i4.1
    IL_038b:  add
    IL_038c:  stloc.s    V_9
    IL_038e:  ldloc.s    V_26
    IL_0390:  stelem.i2
    IL_0391:  ldloc.s    V_5
    IL_0393:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleIndices
    IL_0398:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_039d:  ldloc.s    V_9
    IL_039f:  dup
    IL_03a0:  ldc.i4.1
    IL_03a1:  add
    IL_03a2:  stloc.s    V_9
    IL_03a4:  ldloc.s    V_23
    IL_03a6:  stelem.i2
    IL_03a7:  br         IL_0430

    IL_03ac:  ldloc.s    V_5
    IL_03ae:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleIndices
    IL_03b3:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_03b8:  ldloc.s    V_9
    IL_03ba:  dup
    IL_03bb:  ldc.i4.1
    IL_03bc:  add
    IL_03bd:  stloc.s    V_9
    IL_03bf:  ldloc.s    V_23
    IL_03c1:  stelem.i2
    IL_03c2:  ldloc.s    V_5
    IL_03c4:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleIndices
    IL_03c9:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_03ce:  ldloc.s    V_9
    IL_03d0:  dup
    IL_03d1:  ldc.i4.1
    IL_03d2:  add
    IL_03d3:  stloc.s    V_9
    IL_03d5:  ldloc.s    V_24
    IL_03d7:  stelem.i2
    IL_03d8:  ldloc.s    V_5
    IL_03da:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleIndices
    IL_03df:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_03e4:  ldloc.s    V_9
    IL_03e6:  dup
    IL_03e7:  ldc.i4.1
    IL_03e8:  add
    IL_03e9:  stloc.s    V_9
    IL_03eb:  ldloc.s    V_26
    IL_03ed:  stelem.i2
    IL_03ee:  ldloc.s    V_5
    IL_03f0:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleIndices
    IL_03f5:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_03fa:  ldloc.s    V_9
    IL_03fc:  dup
    IL_03fd:  ldc.i4.1
    IL_03fe:  add
    IL_03ff:  stloc.s    V_9
    IL_0401:  ldloc.s    V_24
    IL_0403:  stelem.i2
    IL_0404:  ldloc.s    V_5
    IL_0406:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleIndices
    IL_040b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0410:  ldloc.s    V_9
    IL_0412:  dup
    IL_0413:  ldc.i4.1
    IL_0414:  add
    IL_0415:  stloc.s    V_9
    IL_0417:  ldloc.s    V_25
    IL_0419:  stelem.i2
    IL_041a:  ldloc.s    V_5
    IL_041c:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleIndices
    IL_0421:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0426:  ldloc.s    V_9
    IL_0428:  dup
    IL_0429:  ldc.i4.1
    IL_042a:  add
    IL_042b:  stloc.s    V_9
    IL_042d:  ldloc.s    V_26
    IL_042f:  stelem.i2
    IL_0430:  ldloc.s    V_11
    IL_0432:  ldc.i4.1
    IL_0433:  add
    IL_0434:  stloc.s    V_11
    IL_0436:  ldloc.s    V_11
    IL_0438:  ldc.i4.7
    IL_0439:  blt        IL_01c0

    IL_043e:  ldloc.s    V_10
    IL_0440:  ldc.i4.1
    IL_0441:  add
    IL_0442:  stloc.s    V_10
    IL_0444:  ldloc.s    V_10
    IL_0446:  ldc.i4.7
    IL_0447:  blt        IL_01b8

    IL_044c:  ldarg.0
    IL_044d:  ldfld      bool Game.SubsystemSky::DrawCloudsWireframe
    IL_0452:  pop
    IL_0453:  ret
  } // end of method SubsystemSky::DrawClouds

  .method private hidebysig instance void 
          QueueCelestialBody(class [Engine]Engine.Graphics.TexturedBatch3D batch,
                             valuetype [Engine]Engine.Vector3 viewPosition,
                             valuetype [Engine]Engine.Color color,
                             float32 distance,
                             float32 radius,
                             float32 angle) cil managed
  {
    // 代码大小       322 (0x142)
    .maxstack  10
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             valuetype [Engine]Engine.Vector3 V_6,
             valuetype [Engine]Engine.Vector3 V_7)
    IL_0000:  ldarga.s   color
    IL_0002:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_0007:  ldc.i4.0
    IL_0008:  ble        IL_0141

    IL_000d:  ldloca.s   V_7
    IL_000f:  initobj    [Engine]Engine.Vector3
    IL_0015:  ldloca.s   V_7
    IL_0017:  ldarg.s    angle
    IL_0019:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_001e:  neg
    IL_001f:  stfld      float32 [Engine]Engine.Vector3::X
    IL_0024:  ldloca.s   V_7
    IL_0026:  ldarg.s    angle
    IL_0028:  call       float32 [Engine]Engine.MathUtils::Cos(float32)
    IL_002d:  neg
    IL_002e:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_0033:  ldloca.s   V_7
    IL_0035:  ldc.r4     0.0
    IL_003a:  stfld      float32 [Engine]Engine.Vector3::Z
    IL_003f:  ldloc.s    V_7
    IL_0041:  stloc.0
    IL_0042:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitZ
    IL_0047:  stloc.1
    IL_0048:  ldloc.1
    IL_0049:  ldloc.0
    IL_004a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_004f:  stloc.2
    IL_0050:  ldarg.2
    IL_0051:  ldloc.0
    IL_0052:  ldarg.s    distance
    IL_0054:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0059:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_005e:  ldarg.s    radius
    IL_0060:  ldloc.1
    IL_0061:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0066:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_006b:  ldarg.s    radius
    IL_006d:  ldloc.2
    IL_006e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0073:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0078:  stloc.3
    IL_0079:  ldarg.2
    IL_007a:  ldloc.0
    IL_007b:  ldarg.s    distance
    IL_007d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0082:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0087:  ldarg.s    radius
    IL_0089:  ldloc.1
    IL_008a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_008f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0094:  ldarg.s    radius
    IL_0096:  ldloc.2
    IL_0097:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_009c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00a1:  stloc.s    V_4
    IL_00a3:  ldarg.2
    IL_00a4:  ldloc.0
    IL_00a5:  ldarg.s    distance
    IL_00a7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_00ac:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00b1:  ldarg.s    radius
    IL_00b3:  ldloc.1
    IL_00b4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00b9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00be:  ldarg.s    radius
    IL_00c0:  ldloc.2
    IL_00c1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00c6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00cb:  stloc.s    V_5
    IL_00cd:  ldarg.2
    IL_00ce:  ldloc.0
    IL_00cf:  ldarg.s    distance
    IL_00d1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_00d6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00db:  ldarg.s    radius
    IL_00dd:  ldloc.1
    IL_00de:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00e3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00e8:  ldarg.s    radius
    IL_00ea:  ldloc.2
    IL_00eb:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00f0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00f5:  stloc.s    V_6
    IL_00f7:  ldarg.1
    IL_00f8:  ldloc.3
    IL_00f9:  ldloc.s    V_4
    IL_00fb:  ldloc.s    V_5
    IL_00fd:  ldloc.s    V_6
    IL_00ff:  ldc.r4     0.0
    IL_0104:  ldc.r4     0.0
    IL_0109:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_010e:  ldc.r4     1.
    IL_0113:  ldc.r4     0.0
    IL_0118:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_011d:  ldc.r4     1.
    IL_0122:  ldc.r4     1.
    IL_0127:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_012c:  ldc.r4     0.0
    IL_0131:  ldc.r4     1.
    IL_0136:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_013b:  ldarg.3
    IL_013c:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueQuad(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0141:  ret
  } // end of method SubsystemSky::QueueCelestialBody

  .method private hidebysig instance void 
          UpdateLightAndViewParameters() cil managed
  {
    // 代码大小       145 (0x91)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  call       int32 Game.SettingsManager::get_VisibilityRange()
    IL_0006:  ldc.i4.s   16
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.SubsystemTerrain Game.SubsystemSky::m_subsystemTerrain
    IL_000e:  callvirt   instance int32 Game.SubsystemTerrain::get_ChunksCount()
    IL_0013:  mul
    IL_0014:  ldc.i4.2
    IL_0015:  div
    IL_0016:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_001b:  conv.r4
    IL_001c:  call       instance void Game.SubsystemSky::set_VisibilityRange(float32)
    IL_0021:  ldarg.0
    IL_0022:  ldarg.0
    IL_0023:  ldarg.0
    IL_0024:  ldfld      class Game.SubsystemTimeOfDay Game.SubsystemSky::m_subsystemTimeOfDay
    IL_0029:  callvirt   instance float32 Game.SubsystemTimeOfDay::get_TimeOfDay()
    IL_002e:  call       instance float32 Game.SubsystemSky::CalculateLightIntensity(float32)
    IL_0033:  call       instance void Game.SubsystemSky::set_LightIntensity(float32)
    IL_0038:  ldarg.0
    IL_0039:  call       instance int32 Game.SubsystemSky::get_MoonPhase()
    IL_003e:  ldc.i4.4
    IL_003f:  bne.un.s   IL_0069

    IL_0041:  ldarg.0
    IL_0042:  ldsfld     int32[] Game.SubsystemSky::m_lightValuesMoonless
    IL_0047:  ldc.r4     0.0
    IL_004c:  ldc.r4     5.
    IL_0051:  ldarg.0
    IL_0052:  call       instance float32 Game.SubsystemSky::get_LightIntensity()
    IL_0057:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_005c:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0061:  conv.i4
    IL_0062:  ldelem.i4
    IL_0063:  call       instance void Game.SubsystemSky::set_LightValue(int32)
    IL_0068:  ret

    IL_0069:  ldarg.0
    IL_006a:  ldsfld     int32[] Game.SubsystemSky::m_lightValuesNormal
    IL_006f:  ldc.r4     0.0
    IL_0074:  ldc.r4     5.
    IL_0079:  ldarg.0
    IL_007a:  call       instance float32 Game.SubsystemSky::get_LightIntensity()
    IL_007f:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0084:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0089:  conv.i4
    IL_008a:  ldelem.i4
    IL_008b:  call       instance void Game.SubsystemSky::set_LightValue(int32)
    IL_0090:  ret
  } // end of method SubsystemSky::UpdateLightAndViewParameters

  .method private hidebysig instance float32 
          CalculateLightIntensity(float32 timeOfDay) cil managed
  {
    // 代码大小       94 (0x5e)
    .maxstack  3
    IL_0000:  ldarg.1
    IL_0001:  ldc.r4     0.2
    IL_0006:  ble.s      IL_0010

    IL_0008:  ldarg.1
    IL_0009:  ldc.r4     0.80000001
    IL_000e:  ble.un.s   IL_0016

    IL_0010:  ldc.r4     0.0
    IL_0015:  ret

    IL_0016:  ldarg.1
    IL_0017:  ldc.r4     0.2
    IL_001c:  ble.un.s   IL_0034

    IL_001e:  ldarg.1
    IL_001f:  ldc.r4     0.30000001
    IL_0024:  bgt.un.s   IL_0034

    IL_0026:  ldarg.1
    IL_0027:  ldc.r4     0.2
    IL_002c:  sub
    IL_002d:  ldc.r4     0.10000001
    IL_0032:  div
    IL_0033:  ret

    IL_0034:  ldarg.1
    IL_0035:  ldc.r4     0.30000001
    IL_003a:  ble.un.s   IL_004a

    IL_003c:  ldarg.1
    IL_003d:  ldc.r4     0.69999999
    IL_0042:  bgt.un.s   IL_004a

    IL_0044:  ldc.r4     1.
    IL_0049:  ret

    IL_004a:  ldc.r4     1.
    IL_004f:  ldarg.1
    IL_0050:  ldc.r4     0.69999999
    IL_0055:  sub
    IL_0056:  ldc.r4     (D0 CC CC 3D)
    IL_005b:  div
    IL_005c:  sub
    IL_005d:  ret
  } // end of method SubsystemSky::CalculateLightIntensity

  .method private hidebysig instance valuetype [Engine]Engine.Color 
          CalculateSkyColor(valuetype [Engine]Engine.Vector3 direction,
                            float32 timeOfDay,
                            float32 precipitationIntensity,
                            int32 temperature) cil managed
  {
    // 代码大小       422 (0x1a6)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Vector2 V_0,
             float32 V_1,
             float32 V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             valuetype [Engine]Engine.Vector3 V_6,
             valuetype [Engine]Engine.Vector3 V_7,
             float32 V_8,
             float32 V_9,
             float32 V_10,
             float32 V_11)
    IL_0000:  ldarg.1
    IL_0001:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0006:  starg.s    direction
    IL_0008:  ldarg.1
    IL_0009:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_000e:  ldarg.1
    IL_000f:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0014:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0019:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Normalize(valuetype [Engine]Engine.Vector2)
    IL_001e:  stloc.0
    IL_001f:  ldarg.0
    IL_0020:  ldarg.2
    IL_0021:  call       instance float32 Game.SubsystemSky::CalculateLightIntensity(float32)
    IL_0026:  stloc.1
    IL_0027:  ldarg.s    temperature
    IL_0029:  conv.r4
    IL_002a:  ldc.r4     15.
    IL_002f:  div
    IL_0030:  stloc.2
    IL_0031:  ldc.r4     0.64999998
    IL_0036:  ldc.r4     0.68000001
    IL_003b:  ldc.r4     0.69999999
    IL_0040:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0045:  ldloc.1
    IL_0046:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_004b:  stloc.3
    IL_004c:  ldc.r4     0.28
    IL_0051:  ldc.r4     0.38
    IL_0056:  ldc.r4     0.51999998
    IL_005b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0060:  ldc.r4     0.15000001
    IL_0065:  ldc.r4     0.30000001
    IL_006a:  ldc.r4     0.56
    IL_006f:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0074:  ldloc.2
    IL_0075:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Lerp(valuetype [Engine]Engine.Vector3,
                                                                                       valuetype [Engine]Engine.Vector3,
                                                                                       float32)
    IL_007a:  stloc.s    V_4
    IL_007c:  ldc.r4     0.69999999
    IL_0081:  ldc.r4     0.79000002
    IL_0086:  ldc.r4     0.88
    IL_008b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0090:  ldc.r4     0.63999999
    IL_0095:  ldc.r4     0.76999998
    IL_009a:  ldc.r4     0.91000003
    IL_009f:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00a4:  ldloc.2
    IL_00a5:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Lerp(valuetype [Engine]Engine.Vector3,
                                                                                       valuetype [Engine]Engine.Vector3,
                                                                                       float32)
    IL_00aa:  ldloc.s    V_4
    IL_00ac:  ldloc.3
    IL_00ad:  ldarg.3
    IL_00ae:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Lerp(valuetype [Engine]Engine.Vector3,
                                                                                       valuetype [Engine]Engine.Vector3,
                                                                                       float32)
    IL_00b3:  ldloc.1
    IL_00b4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_00b9:  stloc.s    V_5
    IL_00bb:  ldloc.3
    IL_00bc:  ldarg.3
    IL_00bd:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Lerp(valuetype [Engine]Engine.Vector3,
                                                                                       valuetype [Engine]Engine.Vector3,
                                                                                       float32)
    IL_00c2:  ldloc.1
    IL_00c3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_00c8:  ldloca.s   V_6
    IL_00ca:  ldc.r4     1.
    IL_00cf:  ldc.r4     0.30000001
    IL_00d4:  ldc.r4     -0.2
    IL_00d9:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00de:  ldloca.s   V_7
    IL_00e0:  ldc.r4     1.
    IL_00e5:  ldc.r4     0.30000001
    IL_00ea:  ldc.r4     -0.2
    IL_00ef:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00f4:  ldarg.0
    IL_00f5:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.SubsystemSky::m_lightningStrikePosition
    IL_00fa:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_00ff:  brfalse.s  IL_0115

    IL_0101:  ldarg.0
    IL_0102:  ldfld      float32 Game.SubsystemSky::m_lightningStrikeBrightness
    IL_0107:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_010c:  ldloc.s    V_5
    IL_010e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Max(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3)
    IL_0113:  stloc.s    V_5
    IL_0115:  ldarg.2
    IL_0116:  call       float32 Game.SubsystemSky::CalculateDawnGlowIntensity(float32)
    IL_011b:  ldc.r4     0.0
    IL_0120:  ldarg.3
    IL_0121:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0126:  ldarg.2
    IL_0127:  call       float32 Game.SubsystemSky::CalculateDuskGlowIntensity(float32)
    IL_012c:  ldc.r4     0.0
    IL_0131:  ldarg.3
    IL_0132:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0137:  stloc.s    V_8
    IL_0139:  ldarg.1
    IL_013a:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_013f:  ldc.r4     0.1
    IL_0144:  sub
    IL_0145:  ldc.r4     0.40000001
    IL_014a:  div
    IL_014b:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0150:  stloc.s    V_9
    IL_0152:  ldloc.0
    IL_0153:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0158:  neg
    IL_0159:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_015e:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
    IL_0163:  mul
    IL_0164:  stloc.s    V_10
    IL_0166:  ldloc.s    V_8
    IL_0168:  ldloc.0
    IL_0169:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_016e:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0173:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
    IL_0178:  mul
    IL_0179:  stloc.s    V_11
    IL_017b:  ldloc.s    V_6
    IL_017d:  ldloc.s    V_10
    IL_017f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0184:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0189:  ldloc.s    V_7
    IL_018b:  ldloc.s    V_11
    IL_018d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0192:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0197:  ldloc.s    V_5
    IL_0199:  ldloc.s    V_9
    IL_019b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Lerp(valuetype [Engine]Engine.Vector3,
                                                                                       valuetype [Engine]Engine.Vector3,
                                                                                       float32)
    IL_01a0:  newobj     instance void [Engine]Engine.Color::.ctor(valuetype [Engine]Engine.Vector3)
    IL_01a5:  ret
  } // end of method SubsystemSky::CalculateSkyColor

  .method private hidebysig instance void 
          FillSkyVertexBuffer(float32 timeOfDay,
                              float32 precipitationIntensity,
                              int32 temperature) cil managed
  {
    // 代码大小       284 (0x11c)
    .maxstack  6
    .locals init (int32 V_0,
             float32 V_1,
             int32 V_2,
             int32 V_3,
             float32 V_4,
             float32 V_5)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br         IL_00f9

    IL_0007:  ldc.r4     1.5707964
    IL_000c:  ldloc.0
    IL_000d:  conv.r4
    IL_000e:  ldc.r4     7.
    IL_0013:  div
    IL_0014:  ldc.r4     2.
    IL_0019:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_001e:  mul
    IL_001f:  stloc.1
    IL_0020:  ldc.i4.0
    IL_0021:  stloc.2
    IL_0022:  br         IL_00ed

    IL_0027:  ldloc.2
    IL_0028:  ldloc.0
    IL_0029:  ldc.i4.s   10
    IL_002b:  mul
    IL_002c:  add
    IL_002d:  stloc.3
    IL_002e:  ldc.r4     6.2831855
    IL_0033:  ldloc.2
    IL_0034:  conv.r4
    IL_0035:  mul
    IL_0036:  ldc.r4     10.
    IL_003b:  div
    IL_003c:  stloc.s    V_4
    IL_003e:  ldc.r4     900.
    IL_0043:  ldloc.1
    IL_0044:  call       float32 [Engine]Engine.MathUtils::Cos(float32)
    IL_0049:  mul
    IL_004a:  stloc.s    V_5
    IL_004c:  ldarg.0
    IL_004d:  ldfld      valuetype Game.SubsystemSky/SkyVertex[] Game.SubsystemSky::m_skyVertices
    IL_0052:  ldloc.3
    IL_0053:  ldelema    Game.SubsystemSky/SkyVertex
    IL_0058:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemSky/SkyVertex::Position
    IL_005d:  ldloc.s    V_5
    IL_005f:  ldloc.s    V_4
    IL_0061:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_0066:  mul
    IL_0067:  stfld      float32 [Engine]Engine.Vector3::X
    IL_006c:  ldarg.0
    IL_006d:  ldfld      valuetype Game.SubsystemSky/SkyVertex[] Game.SubsystemSky::m_skyVertices
    IL_0072:  ldloc.3
    IL_0073:  ldelema    Game.SubsystemSky/SkyVertex
    IL_0078:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemSky/SkyVertex::Position
    IL_007d:  ldloc.s    V_5
    IL_007f:  ldloc.s    V_4
    IL_0081:  call       float32 [Engine]Engine.MathUtils::Cos(float32)
    IL_0086:  mul
    IL_0087:  stfld      float32 [Engine]Engine.Vector3::Z
    IL_008c:  ldarg.0
    IL_008d:  ldfld      valuetype Game.SubsystemSky/SkyVertex[] Game.SubsystemSky::m_skyVertices
    IL_0092:  ldloc.3
    IL_0093:  ldelema    Game.SubsystemSky/SkyVertex
    IL_0098:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemSky/SkyVertex::Position
    IL_009d:  ldc.r4     900.
    IL_00a2:  ldloc.1
    IL_00a3:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_00a8:  mul
    IL_00a9:  ldloc.0
    IL_00aa:  brfalse.s  IL_00b3

    IL_00ac:  ldc.r4     0.0
    IL_00b1:  br.s       IL_00b8

    IL_00b3:  ldc.r4     450.
    IL_00b8:  sub
    IL_00b9:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_00be:  ldarg.0
    IL_00bf:  ldfld      valuetype Game.SubsystemSky/SkyVertex[] Game.SubsystemSky::m_skyVertices
    IL_00c4:  ldloc.3
    IL_00c5:  ldelema    Game.SubsystemSky/SkyVertex
    IL_00ca:  ldarg.0
    IL_00cb:  ldarg.0
    IL_00cc:  ldfld      valuetype Game.SubsystemSky/SkyVertex[] Game.SubsystemSky::m_skyVertices
    IL_00d1:  ldloc.3
    IL_00d2:  ldelema    Game.SubsystemSky/SkyVertex
    IL_00d7:  ldfld      valuetype [Engine]Engine.Vector3 Game.SubsystemSky/SkyVertex::Position
    IL_00dc:  ldarg.1
    IL_00dd:  ldarg.2
    IL_00de:  ldarg.3
    IL_00df:  call       instance valuetype [Engine]Engine.Color Game.SubsystemSky::CalculateSkyColor(valuetype [Engine]Engine.Vector3,
                                                                                                      float32,
                                                                                                      float32,
                                                                                                      int32)
    IL_00e4:  stfld      valuetype [Engine]Engine.Color Game.SubsystemSky/SkyVertex::Color
    IL_00e9:  ldloc.2
    IL_00ea:  ldc.i4.1
    IL_00eb:  add
    IL_00ec:  stloc.2
    IL_00ed:  ldloc.2
    IL_00ee:  ldc.i4.s   10
    IL_00f0:  blt        IL_0027

    IL_00f5:  ldloc.0
    IL_00f6:  ldc.i4.1
    IL_00f7:  add
    IL_00f8:  stloc.0
    IL_00f9:  ldloc.0
    IL_00fa:  ldc.i4.8
    IL_00fb:  blt        IL_0007

    IL_0100:  ldarg.0
    IL_0101:  ldfld      class [Engine]Engine.Graphics.VertexBuffer Game.SubsystemSky::m_skyVertexBuffer
    IL_0106:  ldarg.0
    IL_0107:  ldfld      valuetype Game.SubsystemSky/SkyVertex[] Game.SubsystemSky::m_skyVertices
    IL_010c:  ldc.i4.0
    IL_010d:  ldarg.0
    IL_010e:  ldfld      valuetype Game.SubsystemSky/SkyVertex[] Game.SubsystemSky::m_skyVertices
    IL_0113:  ldlen
    IL_0114:  conv.i4
    IL_0115:  ldc.i4.0
    IL_0116:  callvirt   instance void [Engine]Engine.Graphics.VertexBuffer::SetData<valuetype Game.SubsystemSky/SkyVertex>(!!0[],
                                                                                                                            int32,
                                                                                                                            int32,
                                                                                                                            int32)
    IL_011b:  ret
  } // end of method SubsystemSky::FillSkyVertexBuffer

  .method private hidebysig instance void 
          FillSkyIndexBuffer() cil managed
  {
    // 代码大小       208 (0xd0)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldc.i4.0
    IL_0003:  stloc.1
    IL_0004:  br         IL_00ad

    IL_0009:  ldc.i4.0
    IL_000a:  stloc.2
    IL_000b:  br         IL_00a1

    IL_0010:  ldloc.2
    IL_0011:  stloc.3
    IL_0012:  ldloc.2
    IL_0013:  ldc.i4.1
    IL_0014:  add
    IL_0015:  ldc.i4.s   10
    IL_0017:  rem
    IL_0018:  stloc.s    V_4
    IL_001a:  ldloc.1
    IL_001b:  stloc.s    V_5
    IL_001d:  ldloc.1
    IL_001e:  ldc.i4.1
    IL_001f:  add
    IL_0020:  stloc.s    V_6
    IL_0022:  ldarg.0
    IL_0023:  ldfld      uint16[] Game.SubsystemSky::m_skyIndices
    IL_0028:  ldloc.0
    IL_0029:  dup
    IL_002a:  ldc.i4.1
    IL_002b:  add
    IL_002c:  stloc.0
    IL_002d:  ldloc.3
    IL_002e:  ldloc.s    V_5
    IL_0030:  ldc.i4.s   10
    IL_0032:  mul
    IL_0033:  add
    IL_0034:  conv.u2
    IL_0035:  stelem.i2
    IL_0036:  ldarg.0
    IL_0037:  ldfld      uint16[] Game.SubsystemSky::m_skyIndices
    IL_003c:  ldloc.0
    IL_003d:  dup
    IL_003e:  ldc.i4.1
    IL_003f:  add
    IL_0040:  stloc.0
    IL_0041:  ldloc.s    V_4
    IL_0043:  ldloc.s    V_5
    IL_0045:  ldc.i4.s   10
    IL_0047:  mul
    IL_0048:  add
    IL_0049:  conv.u2
    IL_004a:  stelem.i2
    IL_004b:  ldarg.0
    IL_004c:  ldfld      uint16[] Game.SubsystemSky::m_skyIndices
    IL_0051:  ldloc.0
    IL_0052:  dup
    IL_0053:  ldc.i4.1
    IL_0054:  add
    IL_0055:  stloc.0
    IL_0056:  ldloc.s    V_4
    IL_0058:  ldloc.s    V_6
    IL_005a:  ldc.i4.s   10
    IL_005c:  mul
    IL_005d:  add
    IL_005e:  conv.u2
    IL_005f:  stelem.i2
    IL_0060:  ldarg.0
    IL_0061:  ldfld      uint16[] Game.SubsystemSky::m_skyIndices
    IL_0066:  ldloc.0
    IL_0067:  dup
    IL_0068:  ldc.i4.1
    IL_0069:  add
    IL_006a:  stloc.0
    IL_006b:  ldloc.s    V_4
    IL_006d:  ldloc.s    V_6
    IL_006f:  ldc.i4.s   10
    IL_0071:  mul
    IL_0072:  add
    IL_0073:  conv.u2
    IL_0074:  stelem.i2
    IL_0075:  ldarg.0
    IL_0076:  ldfld      uint16[] Game.SubsystemSky::m_skyIndices
    IL_007b:  ldloc.0
    IL_007c:  dup
    IL_007d:  ldc.i4.1
    IL_007e:  add
    IL_007f:  stloc.0
    IL_0080:  ldloc.3
    IL_0081:  ldloc.s    V_6
    IL_0083:  ldc.i4.s   10
    IL_0085:  mul
    IL_0086:  add
    IL_0087:  conv.u2
    IL_0088:  stelem.i2
    IL_0089:  ldarg.0
    IL_008a:  ldfld      uint16[] Game.SubsystemSky::m_skyIndices
    IL_008f:  ldloc.0
    IL_0090:  dup
    IL_0091:  ldc.i4.1
    IL_0092:  add
    IL_0093:  stloc.0
    IL_0094:  ldloc.3
    IL_0095:  ldloc.s    V_5
    IL_0097:  ldc.i4.s   10
    IL_0099:  mul
    IL_009a:  add
    IL_009b:  conv.u2
    IL_009c:  stelem.i2
    IL_009d:  ldloc.2
    IL_009e:  ldc.i4.1
    IL_009f:  add
    IL_00a0:  stloc.2
    IL_00a1:  ldloc.2
    IL_00a2:  ldc.i4.s   10
    IL_00a4:  blt        IL_0010

    IL_00a9:  ldloc.1
    IL_00aa:  ldc.i4.1
    IL_00ab:  add
    IL_00ac:  stloc.1
    IL_00ad:  ldloc.1
    IL_00ae:  ldc.i4.7
    IL_00af:  blt        IL_0009

    IL_00b4:  ldarg.0
    IL_00b5:  ldfld      class [Engine]Engine.Graphics.IndexBuffer Game.SubsystemSky::m_skyIndexBuffer
    IL_00ba:  ldarg.0
    IL_00bb:  ldfld      uint16[] Game.SubsystemSky::m_skyIndices
    IL_00c0:  ldc.i4.0
    IL_00c1:  ldarg.0
    IL_00c2:  ldfld      uint16[] Game.SubsystemSky::m_skyIndices
    IL_00c7:  ldlen
    IL_00c8:  conv.i4
    IL_00c9:  ldc.i4.0
    IL_00ca:  callvirt   instance void [Engine]Engine.Graphics.IndexBuffer::SetData<uint16>(!!0[],
                                                                                            int32,
                                                                                            int32,
                                                                                            int32)
    IL_00cf:  ret
  } // end of method SubsystemSky::FillSkyIndexBuffer

  .method private hidebysig instance void 
          FillStarsBuffers() cil managed
  {
    // 代码大小       783 (0x30f)
    .maxstack  6
    .locals init (class Game.Random V_0,
             valuetype Game.SubsystemSky/StarVertex[] V_1,
             uint16[] V_2,
             int32 V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             float32 V_5,
             float32 V_6,
             valuetype [Engine]Engine.Color V_7,
             valuetype [Engine]Engine.Vector3 V_8,
             valuetype [Engine]Engine.Vector3 V_9,
             valuetype [Engine]Engine.Vector3 V_10,
             valuetype [Engine]Engine.Vector3 V_11,
             valuetype [Engine]Engine.Vector3 V_12,
             valuetype [Engine]Engine.Vector3 V_13,
             valuetype Game.SubsystemSky/StarVertex V_14,
             int32 V_15)
    IL_0000:  ldc.i4.7
    IL_0001:  newobj     instance void Game.Random::.ctor(int32)
    IL_0006:  stloc.0
    IL_0007:  ldc.i4     0x258
    IL_000c:  newarr     Game.SubsystemSky/StarVertex
    IL_0011:  stloc.1
    IL_0012:  ldc.i4.0
    IL_0013:  stloc.3
    IL_0014:  br         IL_026e

    IL_0019:  ldloca.s   V_4
    IL_001b:  ldloc.0
    IL_001c:  ldc.r4     -1.
    IL_0021:  ldc.r4     1.
    IL_0026:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_002b:  ldloc.0
    IL_002c:  ldc.r4     -1.
    IL_0031:  ldc.r4     1.
    IL_0036:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_003b:  ldloc.0
    IL_003c:  ldc.r4     -1.
    IL_0041:  ldc.r4     1.
    IL_0046:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_004b:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0050:  ldloca.s   V_4
    IL_0052:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
    IL_0057:  ldc.r4     1.
    IL_005c:  bgt.s      IL_0019

    IL_005e:  ldloc.s    V_4
    IL_0060:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0065:  stloc.s    V_4
    IL_0067:  ldc.r4     9.
    IL_006c:  ldloc.0
    IL_006d:  ldc.r4     1.
    IL_0072:  ldc.r4     0.1
    IL_0077:  callvirt   instance float32 Game.Random::NormalFloat(float32,
                                                                   float32)
    IL_007c:  mul
    IL_007d:  stloc.s    V_5
    IL_007f:  ldloc.0
    IL_0080:  ldc.r4     0.60000002
    IL_0085:  ldc.r4     0.40000001
    IL_008a:  callvirt   instance float32 Game.Random::NormalFloat(float32,
                                                                   float32)
    IL_008f:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0094:  stloc.s    V_6
    IL_0096:  ldloca.s   V_7
    IL_0098:  ldloc.0
    IL_0099:  ldc.r4     0.60000002
    IL_009e:  ldc.r4     1.
    IL_00a3:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00a8:  ldc.r4     0.69999999
    IL_00ad:  ldloc.0
    IL_00ae:  ldc.r4     0.80000001
    IL_00b3:  ldc.r4     1.
    IL_00b8:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00bd:  ldloc.s    V_6
    IL_00bf:  newobj     instance void [Engine]Engine.Vector4::.ctor(float32,
                                                                     float32,
                                                                     float32,
                                                                     float32)
    IL_00c4:  call       instance void [Engine]Engine.Color::.ctor(valuetype [Engine]Engine.Vector4)
    IL_00c9:  ldc.r4     900.
    IL_00ce:  ldloc.s    V_4
    IL_00d0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00d5:  ldloc.s    V_4
    IL_00d7:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00dc:  ldloc.s    V_4
    IL_00de:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00e3:  bgt.s      IL_00ec

    IL_00e5:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitX
    IL_00ea:  br.s       IL_00f1

    IL_00ec:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_00f1:  ldloc.s    V_4
    IL_00f3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_00f8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_00fd:  stloc.s    V_8
    IL_00ff:  ldloc.s    V_8
    IL_0101:  ldloc.s    V_4
    IL_0103:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_0108:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_010d:  stloc.s    V_9
    IL_010f:  dup
    IL_0110:  ldloc.s    V_5
    IL_0112:  ldloc.s    V_8
    IL_0114:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_0119:  ldloc.s    V_9
    IL_011b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0120:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0125:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_012a:  stloc.s    V_10
    IL_012c:  dup
    IL_012d:  ldloc.s    V_5
    IL_012f:  ldloc.s    V_8
    IL_0131:  ldloc.s    V_9
    IL_0133:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0138:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_013d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0142:  stloc.s    V_11
    IL_0144:  dup
    IL_0145:  ldloc.s    V_5
    IL_0147:  ldloc.s    V_8
    IL_0149:  ldloc.s    V_9
    IL_014b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0150:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0155:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_015a:  stloc.s    V_12
    IL_015c:  ldloc.s    V_5
    IL_015e:  ldloc.s    V_8
    IL_0160:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_0165:  ldloc.s    V_9
    IL_0167:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_016c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0171:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0176:  stloc.s    V_13
    IL_0178:  ldloc.1
    IL_0179:  ldloc.3
    IL_017a:  ldc.i4.4
    IL_017b:  mul
    IL_017c:  ldloca.s   V_14
    IL_017e:  initobj    Game.SubsystemSky/StarVertex
    IL_0184:  ldloca.s   V_14
    IL_0186:  ldloc.s    V_10
    IL_0188:  stfld      valuetype [Engine]Engine.Vector3 Game.SubsystemSky/StarVertex::Position
    IL_018d:  ldloca.s   V_14
    IL_018f:  ldc.r4     0.0
    IL_0194:  ldc.r4     0.0
    IL_0199:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_019e:  stfld      valuetype [Engine]Engine.Vector2 Game.SubsystemSky/StarVertex::TextureCoordinate
    IL_01a3:  ldloca.s   V_14
    IL_01a5:  ldloc.s    V_7
    IL_01a7:  stfld      valuetype [Engine]Engine.Color Game.SubsystemSky/StarVertex::Color
    IL_01ac:  ldloc.s    V_14
    IL_01ae:  stelem     Game.SubsystemSky/StarVertex
    IL_01b3:  ldloc.1
    IL_01b4:  ldloc.3
    IL_01b5:  ldc.i4.4
    IL_01b6:  mul
    IL_01b7:  ldc.i4.1
    IL_01b8:  add
    IL_01b9:  ldloca.s   V_14
    IL_01bb:  initobj    Game.SubsystemSky/StarVertex
    IL_01c1:  ldloca.s   V_14
    IL_01c3:  ldloc.s    V_11
    IL_01c5:  stfld      valuetype [Engine]Engine.Vector3 Game.SubsystemSky/StarVertex::Position
    IL_01ca:  ldloca.s   V_14
    IL_01cc:  ldc.r4     1.
    IL_01d1:  ldc.r4     0.0
    IL_01d6:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01db:  stfld      valuetype [Engine]Engine.Vector2 Game.SubsystemSky/StarVertex::TextureCoordinate
    IL_01e0:  ldloca.s   V_14
    IL_01e2:  ldloc.s    V_7
    IL_01e4:  stfld      valuetype [Engine]Engine.Color Game.SubsystemSky/StarVertex::Color
    IL_01e9:  ldloc.s    V_14
    IL_01eb:  stelem     Game.SubsystemSky/StarVertex
    IL_01f0:  ldloc.1
    IL_01f1:  ldloc.3
    IL_01f2:  ldc.i4.4
    IL_01f3:  mul
    IL_01f4:  ldc.i4.2
    IL_01f5:  add
    IL_01f6:  ldloca.s   V_14
    IL_01f8:  initobj    Game.SubsystemSky/StarVertex
    IL_01fe:  ldloca.s   V_14
    IL_0200:  ldloc.s    V_12
    IL_0202:  stfld      valuetype [Engine]Engine.Vector3 Game.SubsystemSky/StarVertex::Position
    IL_0207:  ldloca.s   V_14
    IL_0209:  ldc.r4     1.
    IL_020e:  ldc.r4     1.
    IL_0213:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0218:  stfld      valuetype [Engine]Engine.Vector2 Game.SubsystemSky/StarVertex::TextureCoordinate
    IL_021d:  ldloca.s   V_14
    IL_021f:  ldloc.s    V_7
    IL_0221:  stfld      valuetype [Engine]Engine.Color Game.SubsystemSky/StarVertex::Color
    IL_0226:  ldloc.s    V_14
    IL_0228:  stelem     Game.SubsystemSky/StarVertex
    IL_022d:  ldloc.1
    IL_022e:  ldloc.3
    IL_022f:  ldc.i4.4
    IL_0230:  mul
    IL_0231:  ldc.i4.3
    IL_0232:  add
    IL_0233:  ldloca.s   V_14
    IL_0235:  initobj    Game.SubsystemSky/StarVertex
    IL_023b:  ldloca.s   V_14
    IL_023d:  ldloc.s    V_13
    IL_023f:  stfld      valuetype [Engine]Engine.Vector3 Game.SubsystemSky/StarVertex::Position
    IL_0244:  ldloca.s   V_14
    IL_0246:  ldc.r4     0.0
    IL_024b:  ldc.r4     1.
    IL_0250:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0255:  stfld      valuetype [Engine]Engine.Vector2 Game.SubsystemSky/StarVertex::TextureCoordinate
    IL_025a:  ldloca.s   V_14
    IL_025c:  ldloc.s    V_7
    IL_025e:  stfld      valuetype [Engine]Engine.Color Game.SubsystemSky/StarVertex::Color
    IL_0263:  ldloc.s    V_14
    IL_0265:  stelem     Game.SubsystemSky/StarVertex
    IL_026a:  ldloc.3
    IL_026b:  ldc.i4.1
    IL_026c:  add
    IL_026d:  stloc.3
    IL_026e:  ldloc.3
    IL_026f:  ldc.i4     0x96
    IL_0274:  blt        IL_0019

    IL_0279:  ldarg.0
    IL_027a:  ldfld      class [Engine]Engine.Graphics.VertexBuffer Game.SubsystemSky::m_starsVertexBuffer
    IL_027f:  ldloc.1
    IL_0280:  ldc.i4.0
    IL_0281:  ldloc.1
    IL_0282:  ldlen
    IL_0283:  conv.i4
    IL_0284:  ldc.i4.0
    IL_0285:  callvirt   instance void [Engine]Engine.Graphics.VertexBuffer::SetData<valuetype Game.SubsystemSky/StarVertex>(!!0[],
                                                                                                                             int32,
                                                                                                                             int32,
                                                                                                                             int32)
    IL_028a:  ldc.i4     0x384
    IL_028f:  newarr     [System.Runtime]System.UInt16
    IL_0294:  stloc.2
    IL_0295:  ldc.i4.0
    IL_0296:  stloc.s    V_15
    IL_0298:  br.s       IL_02f4

    IL_029a:  ldloc.2
    IL_029b:  ldloc.s    V_15
    IL_029d:  ldc.i4.6
    IL_029e:  mul
    IL_029f:  ldloc.s    V_15
    IL_02a1:  ldc.i4.4
    IL_02a2:  mul
    IL_02a3:  conv.u2
    IL_02a4:  stelem.i2
    IL_02a5:  ldloc.2
    IL_02a6:  ldloc.s    V_15
    IL_02a8:  ldc.i4.6
    IL_02a9:  mul
    IL_02aa:  ldc.i4.1
    IL_02ab:  add
    IL_02ac:  ldloc.s    V_15
    IL_02ae:  ldc.i4.4
    IL_02af:  mul
    IL_02b0:  ldc.i4.1
    IL_02b1:  add
    IL_02b2:  conv.u2
    IL_02b3:  stelem.i2
    IL_02b4:  ldloc.2
    IL_02b5:  ldloc.s    V_15
    IL_02b7:  ldc.i4.6
    IL_02b8:  mul
    IL_02b9:  ldc.i4.2
    IL_02ba:  add
    IL_02bb:  ldloc.s    V_15
    IL_02bd:  ldc.i4.4
    IL_02be:  mul
    IL_02bf:  ldc.i4.2
    IL_02c0:  add
    IL_02c1:  conv.u2
    IL_02c2:  stelem.i2
    IL_02c3:  ldloc.2
    IL_02c4:  ldloc.s    V_15
    IL_02c6:  ldc.i4.6
    IL_02c7:  mul
    IL_02c8:  ldc.i4.3
    IL_02c9:  add
    IL_02ca:  ldloc.s    V_15
    IL_02cc:  ldc.i4.4
    IL_02cd:  mul
    IL_02ce:  ldc.i4.2
    IL_02cf:  add
    IL_02d0:  conv.u2
    IL_02d1:  stelem.i2
    IL_02d2:  ldloc.2
    IL_02d3:  ldloc.s    V_15
    IL_02d5:  ldc.i4.6
    IL_02d6:  mul
    IL_02d7:  ldc.i4.4
    IL_02d8:  add
    IL_02d9:  ldloc.s    V_15
    IL_02db:  ldc.i4.4
    IL_02dc:  mul
    IL_02dd:  ldc.i4.3
    IL_02de:  add
    IL_02df:  conv.u2
    IL_02e0:  stelem.i2
    IL_02e1:  ldloc.2
    IL_02e2:  ldloc.s    V_15
    IL_02e4:  ldc.i4.6
    IL_02e5:  mul
    IL_02e6:  ldc.i4.5
    IL_02e7:  add
    IL_02e8:  ldloc.s    V_15
    IL_02ea:  ldc.i4.4
    IL_02eb:  mul
    IL_02ec:  conv.u2
    IL_02ed:  stelem.i2
    IL_02ee:  ldloc.s    V_15
    IL_02f0:  ldc.i4.1
    IL_02f1:  add
    IL_02f2:  stloc.s    V_15
    IL_02f4:  ldloc.s    V_15
    IL_02f6:  ldc.i4     0x96
    IL_02fb:  blt.s      IL_029a

    IL_02fd:  ldarg.0
    IL_02fe:  ldfld      class [Engine]Engine.Graphics.IndexBuffer Game.SubsystemSky::m_starsIndexBuffer
    IL_0303:  ldloc.2
    IL_0304:  ldc.i4.0
    IL_0305:  ldloc.2
    IL_0306:  ldlen
    IL_0307:  conv.i4
    IL_0308:  ldc.i4.0
    IL_0309:  callvirt   instance void [Engine]Engine.Graphics.IndexBuffer::SetData<uint16>(!!0[],
                                                                                            int32,
                                                                                            int32,
                                                                                            int32)
    IL_030e:  ret
  } // end of method SubsystemSky::FillStarsBuffers

  .method private hidebysig static float32 
          CalculateDawnGlowIntensity(float32 timeOfDay) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  8
    IL_0000:  ldc.r4     1.
    IL_0005:  ldarg.0
    IL_0006:  ldc.r4     0.25
    IL_000b:  sub
    IL_000c:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0011:  ldc.r4     0.10000001
    IL_0016:  div
    IL_0017:  ldc.r4     2.
    IL_001c:  mul
    IL_001d:  sub
    IL_001e:  ldc.r4     0.0
    IL_0023:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0028:  ret
  } // end of method SubsystemSky::CalculateDawnGlowIntensity

  .method private hidebysig static float32 
          CalculateDuskGlowIntensity(float32 timeOfDay) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  8
    IL_0000:  ldc.r4     1.
    IL_0005:  ldarg.0
    IL_0006:  ldc.r4     0.75
    IL_000b:  sub
    IL_000c:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0011:  ldc.r4     (D0 CC CC 3D)
    IL_0016:  div
    IL_0017:  ldc.r4     2.
    IL_001c:  mul
    IL_001d:  sub
    IL_001e:  ldc.r4     0.0
    IL_0023:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0028:  ret
  } // end of method SubsystemSky::CalculateDuskGlowIntensity

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       238 (0xee)
    .maxstack  7
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void [Engine]Engine.Graphics.PrimitivesRenderer3D::.ctor()
    IL_0006:  stfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemSky::m_primitivesRenderer
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.Random::.ctor()
    IL_0011:  stfld      class Game.Random Game.SubsystemSky::m_random
    IL_0016:  ldarg.0
    IL_0017:  ldc.i4.8
    IL_0018:  newarr     [Engine]Engine.Graphics.Texture2D
    IL_001d:  stfld      class [Engine]Engine.Graphics.Texture2D[] Game.SubsystemSky::m_moonTextures
    IL_0022:  ldarg.0
    IL_0023:  newobj     instance void [Engine]Engine.Graphics.UnlitUberShader::.ctor()
    IL_0028:  stfld      class [Engine]Engine.Graphics.UnlitUberShader Game.SubsystemSky::m_uberShader
    IL_002d:  ldarg.0
    IL_002e:  ldc.i4.s   80
    IL_0030:  newarr     Game.SubsystemSky/SkyVertex
    IL_0035:  stfld      valuetype Game.SubsystemSky/SkyVertex[] Game.SubsystemSky::m_skyVertices
    IL_003a:  ldarg.0
    IL_003b:  ldc.i4     0x1a4
    IL_0040:  newarr     [System.Runtime]System.UInt16
    IL_0045:  stfld      uint16[] Game.SubsystemSky::m_skyIndices
    IL_004a:  ldarg.0
    IL_004b:  ldc.i4.2
    IL_004c:  newarr     [Engine]Engine.Graphics.VertexElement
    IL_0051:  dup
    IL_0052:  ldc.i4.0
    IL_0053:  ldc.i4.0
    IL_0054:  ldc.i4.2
    IL_0055:  ldc.i4.0
    IL_0056:  newobj     instance void [Engine]Engine.Graphics.VertexElement::.ctor(int32,
                                                                                    valuetype [Engine]Engine.Graphics.VertexElementFormat,
                                                                                    valuetype [Engine]Engine.Graphics.VertexElementSemantic)
    IL_005b:  stelem.ref
    IL_005c:  dup
    IL_005d:  ldc.i4.1
    IL_005e:  ldc.i4.s   12
    IL_0060:  ldc.i4.5
    IL_0061:  ldc.i4.1
    IL_0062:  newobj     instance void [Engine]Engine.Graphics.VertexElement::.ctor(int32,
                                                                                    valuetype [Engine]Engine.Graphics.VertexElementFormat,
                                                                                    valuetype [Engine]Engine.Graphics.VertexElementSemantic)
    IL_0067:  stelem.ref
    IL_0068:  newobj     instance void [Engine]Engine.Graphics.VertexDeclaration::.ctor(class [Engine]Engine.Graphics.VertexElement[])
    IL_006d:  stfld      class [Engine]Engine.Graphics.VertexDeclaration Game.SubsystemSky::m_skyVertexDeclaration
    IL_0072:  ldarg.0
    IL_0073:  ldc.i4.3
    IL_0074:  newarr     [Engine]Engine.Graphics.VertexElement
    IL_0079:  dup
    IL_007a:  ldc.i4.0
    IL_007b:  ldc.i4.0
    IL_007c:  ldc.i4.2
    IL_007d:  ldc.i4.0
    IL_007e:  newobj     instance void [Engine]Engine.Graphics.VertexElement::.ctor(int32,
                                                                                    valuetype [Engine]Engine.Graphics.VertexElementFormat,
                                                                                    valuetype [Engine]Engine.Graphics.VertexElementSemantic)
    IL_0083:  stelem.ref
    IL_0084:  dup
    IL_0085:  ldc.i4.1
    IL_0086:  ldc.i4.s   12
    IL_0088:  ldc.i4.1
    IL_0089:  ldc.i4.3
    IL_008a:  newobj     instance void [Engine]Engine.Graphics.VertexElement::.ctor(int32,
                                                                                    valuetype [Engine]Engine.Graphics.VertexElementFormat,
                                                                                    valuetype [Engine]Engine.Graphics.VertexElementSemantic)
    IL_008f:  stelem.ref
    IL_0090:  dup
    IL_0091:  ldc.i4.2
    IL_0092:  ldc.i4.s   20
    IL_0094:  ldc.i4.5
    IL_0095:  ldc.i4.1
    IL_0096:  newobj     instance void [Engine]Engine.Graphics.VertexElement::.ctor(int32,
                                                                                    valuetype [Engine]Engine.Graphics.VertexElementFormat,
                                                                                    valuetype [Engine]Engine.Graphics.VertexElementSemantic)
    IL_009b:  stelem.ref
    IL_009c:  newobj     instance void [Engine]Engine.Graphics.VertexDeclaration::.ctor(class [Engine]Engine.Graphics.VertexElement[])
    IL_00a1:  stfld      class [Engine]Engine.Graphics.VertexDeclaration Game.SubsystemSky::m_starsVertexDeclaration
    IL_00a6:  ldarg.0
    IL_00a7:  ldc.i4.1
    IL_00a8:  stfld      bool Game.SubsystemSky::DrawSkyEnabled
    IL_00ad:  ldarg.0
    IL_00ae:  ldc.i4.3
    IL_00af:  newarr     [System.Runtime]System.Int32
    IL_00b4:  dup
    IL_00b5:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=12' '<PrivateImplementationDetails>'::'9ECBBB0CB6C0E4FF148E2AC81D5CDEF01D97EAA3'
    IL_00ba:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_00bf:  stfld      int32[] Game.SubsystemSky::m_drawOrders
    IL_00c4:  ldarg.0
    IL_00c5:  ldc.i4.4
    IL_00c6:  newarr     [System.Runtime]System.Single
    IL_00cb:  dup
    IL_00cc:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' '<PrivateImplementationDetails>'::'849FC91250EA16FE392C9F15B55D2BD1487B23F0'
    IL_00d1:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_00d6:  stfld      float32[] Game.SubsystemSky::m_cloudsLayerRadii
    IL_00db:  ldarg.0
    IL_00dc:  ldc.i4.5
    IL_00dd:  newarr     [Engine]Engine.Color
    IL_00e2:  stfld      valuetype [Engine]Engine.Color[] Game.SubsystemSky::m_cloudsLayerColors
    IL_00e7:  ldarg.0
    IL_00e8:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_00ed:  ret
  } // end of method SubsystemSky::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       45 (0x2d)
    .maxstack  8
    IL_0000:  ldc.i4.6
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=24' '<PrivateImplementationDetails>'::'747DA013591C626557CA3624FD03327F7AB64E67'
    IL_000c:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0011:  stsfld     int32[] Game.SubsystemSky::m_lightValuesMoonless
    IL_0016:  ldc.i4.6
    IL_0017:  newarr     [System.Runtime]System.Int32
    IL_001c:  dup
    IL_001d:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=24' '<PrivateImplementationDetails>'::A50DEDA16E4876F791AB2953D8FCA8D8F9A4DE70
    IL_0022:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0027:  stsfld     int32[] Game.SubsystemSky::m_lightValuesNormal
    IL_002c:  ret
  } // end of method SubsystemSky::.cctor

  .property instance float32 LightIntensity()
  {
    .get instance float32 Game.SubsystemSky::get_LightIntensity()
    .set instance void Game.SubsystemSky::set_LightIntensity(float32)
  } // end of property SubsystemSky::LightIntensity
  .property instance float32 UnderWaterDepth()
  {
    .get instance float32 Game.SubsystemSky::get_UnderWaterDepth()
    .set instance void Game.SubsystemSky::set_UnderWaterDepth(float32)
  } // end of property SubsystemSky::UnderWaterDepth
  .property instance float32 UnderMagmaDepth()
  {
    .get instance float32 Game.SubsystemSky::get_UnderMagmaDepth()
    .set instance void Game.SubsystemSky::set_UnderMagmaDepth(float32)
  } // end of property SubsystemSky::UnderMagmaDepth
  .property instance int32 LightValue()
  {
    .get instance int32 Game.SubsystemSky::get_LightValue()
    .set instance void Game.SubsystemSky::set_LightValue(int32)
  } // end of property SubsystemSky::LightValue
  .property instance valuetype [Engine]Engine.Color
          FogColor()
  {
    .get instance valuetype [Engine]Engine.Color Game.SubsystemSky::get_FogColor()
  } // end of property SubsystemSky::FogColor
  .property instance valuetype [Engine]Engine.Vector2
          FogRange()
  {
    .get instance valuetype [Engine]Engine.Vector2 Game.SubsystemSky::get_FogRange()
  } // end of property SubsystemSky::FogRange
  .property instance float32 VisibilityRange()
  {
    .get instance float32 Game.SubsystemSky::get_VisibilityRange()
    .set instance void Game.SubsystemSky::set_VisibilityRange(float32)
  } // end of property SubsystemSky::VisibilityRange
  .property instance int32 MoonPhase()
  {
    .get instance int32 Game.SubsystemSky::get_MoonPhase()
    .set instance void Game.SubsystemSky::set_MoonPhase(int32)
  } // end of property SubsystemSky::MoonPhase
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemSky::get_UpdateOrder()
  } // end of property SubsystemSky::UpdateOrder
  .property instance int32[] DrawOrders()
  {
    .get instance int32[] Game.SubsystemSky::get_DrawOrders()
  } // end of property SubsystemSky::DrawOrders
} // end of class Game.SubsystemSky