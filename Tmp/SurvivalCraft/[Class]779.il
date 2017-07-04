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

  .class auto ansi nested private beforefieldinit SkyDome
         extends [System.Runtime]System.Object
         implements [System.Runtime]System.IDisposable
  {
    .field public static literal int32 VerticesCountX = int32(0x0000000A)
    .field public static literal int32 VerticesCountY = int32(0x00000008)
    .field public valuetype [System.Runtime]System.Nullable`1<float32> LastUpdateTimeOfDay
    .field public valuetype [System.Runtime]System.Nullable`1<float32> LastUpdatePrecipitationIntensity
    .field public valuetype [System.Runtime]System.Nullable`1<int32> LastUpdateTemperature
    .field public float32 LastUpdateLightningStrikeBrightness
    .field public valuetype Game.SubsystemSky/SkyVertex[] Vertices
    .field public uint16[] Indices
    .field public class [Engine]Engine.Graphics.VertexBuffer VertexBuffer
    .field public class [Engine]Engine.Graphics.IndexBuffer IndexBuffer
    .method public hidebysig newslot virtual final 
            instance void  Dispose() cil managed
    {
      // 代码大小       23 (0x17)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldflda     class [Engine]Engine.Graphics.VertexBuffer Game.SubsystemSky/SkyDome::VertexBuffer
      IL_0006:  call       void [Engine]Engine.Utilities::Dispose<class [Engine]Engine.Graphics.VertexBuffer>(!!0&)
      IL_000b:  ldarg.0
      IL_000c:  ldflda     class [Engine]Engine.Graphics.IndexBuffer Game.SubsystemSky/SkyDome::IndexBuffer
      IL_0011:  call       void [Engine]Engine.Utilities::Dispose<class [Engine]Engine.Graphics.IndexBuffer>(!!0&)
      IL_0016:  ret
    } // end of method SkyDome::Dispose

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       36 (0x24)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldc.i4.s   80
      IL_0003:  newarr     Game.SubsystemSky/SkyVertex
      IL_0008:  stfld      valuetype Game.SubsystemSky/SkyVertex[] Game.SubsystemSky/SkyDome::Vertices
      IL_000d:  ldarg.0
      IL_000e:  ldc.i4     0x1bc
      IL_0013:  newarr     [System.Runtime]System.UInt16
      IL_0018:  stfld      uint16[] Game.SubsystemSky/SkyDome::Indices
      IL_001d:  ldarg.0
      IL_001e:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0023:  ret
    } // end of method SkyDome::.ctor

  } // end of class SkyDome

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
  .field private class [Engine]Engine.Graphics.PrimitivesRenderer2D m_primitivesRenderer2d
  .field private class [Engine]Engine.Graphics.PrimitivesRenderer3D m_primitivesRenderer3d
  .field private class Game.Random m_random
  .field private valuetype [Engine]Engine.Color m_viewFogColor
  .field private valuetype [Engine]Engine.Vector2 m_viewFogRange
  .field private bool m_viewIsSkyVisible
  .field private class [Engine]Engine.Graphics.Texture2D m_sunTexture
  .field private class [Engine]Engine.Graphics.Texture2D m_glowTexture
  .field private class [Engine]Engine.Graphics.Texture2D m_cloudsTexture
  .field private class [Engine]Engine.Graphics.Texture2D[] m_moonTextures
  .field private static class [Engine]Engine.Graphics.UnlitShader m_shaderFlat
  .field private static class [Engine]Engine.Graphics.UnlitShader m_shaderTextured
  .field private class [Engine]Engine.Graphics.VertexDeclaration m_skyVertexDeclaration
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.View,class Game.SubsystemSky/SkyDome> m_skyDomes
  .field private class [Engine]Engine.Graphics.VertexBuffer m_starsVertexBuffer
  .field private class [Engine]Engine.Graphics.IndexBuffer m_starsIndexBuffer
  .field private class [Engine]Engine.Graphics.VertexDeclaration m_starsVertexDeclaration
  .field private static literal int32 m_starsCount = int32(0x00000096)
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> m_lightningStrikePosition
  .field private float32 m_lightningStrikeBrightness
  .field private float64 m_lastLightningStrikeTime
  .field public static literal float32 DawnStart = float32(0.2)
  .field public static literal float32 DayStart = float32(0.30000001)
  .field public static literal float32 DuskStart = float32(0.69999999)
  .field public static literal float32 NightStart = float32(0.80000001)
  .field public bool DrawSkyEnabled
  .field public bool DrawCloudsWireframe
  .field private float32 '<SkyLightIntensity>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private int32 '<MoonPhase>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private int32 '<SkyLightValue>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<VisibilityRange>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<ViewUnderWaterDepth>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<ViewUnderMagmaDepth>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private int32[] m_drawOrders
  .field private float32[] m_cloudsLayerRadii
  .field private valuetype [Engine]Engine.Color[] m_cloudsLayerColors
  .field private static int32[] m_lightValuesMoonless
  .field private static int32[] m_lightValuesNormal
  .method public hidebysig specialname instance float32 
          get_SkyLightIntensity() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.SubsystemSky::'<SkyLightIntensity>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemSky::get_SkyLightIntensity

  .method private hidebysig specialname instance void 
          set_SkyLightIntensity(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.SubsystemSky::'<SkyLightIntensity>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemSky::set_SkyLightIntensity

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

  .method public hidebysig specialname instance int32 
          get_SkyLightValue() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.SubsystemSky::'<SkyLightValue>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemSky::get_SkyLightValue

  .method private hidebysig specialname instance void 
          set_SkyLightValue(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 Game.SubsystemSky::'<SkyLightValue>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemSky::set_SkyLightValue

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

  .method public hidebysig specialname instance float32 
          get_ViewUnderWaterDepth() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.SubsystemSky::'<ViewUnderWaterDepth>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemSky::get_ViewUnderWaterDepth

  .method private hidebysig specialname instance void 
          set_ViewUnderWaterDepth(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.SubsystemSky::'<ViewUnderWaterDepth>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemSky::set_ViewUnderWaterDepth

  .method public hidebysig specialname instance float32 
          get_ViewUnderMagmaDepth() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.SubsystemSky::'<ViewUnderMagmaDepth>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemSky::get_ViewUnderMagmaDepth

  .method private hidebysig specialname instance void 
          set_ViewUnderMagmaDepth(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.SubsystemSky::'<ViewUnderMagmaDepth>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemSky::set_ViewUnderMagmaDepth

  .method public hidebysig specialname instance valuetype [Engine]Engine.Color 
          get_ViewFogColor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Color Game.SubsystemSky::m_viewFogColor
    IL_0006:  ret
  } // end of method SubsystemSky::get_ViewFogColor

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector2 
          get_ViewFogRange() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector2 Game.SubsystemSky::m_viewFogRange
    IL_0006:  ret
  } // end of method SubsystemSky::get_ViewFogRange

  .method public hidebysig instance void 
          MakeLightningStrike(valuetype [Engine]Engine.Vector3 targetPosition) cil managed
  {
    // 代码大小       716 (0x2cc)
    .maxstack  7
    .locals init (float32 V_0,
             float32 V_1,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Vector3> V_2,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Vector3> V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             float32 V_5,
             class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             float32 V_10,
             int32 V_11,
             class Game.ComponentBody V_12,
             class Game.ComponentCreature V_13,
             class Game.ComponentOnFire V_14)
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.SubsystemSky::m_lightningStrikePosition
    IL_0006:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_000b:  brtrue     IL_02cb

    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.SubsystemTime Game.SubsystemSky::m_subsystemTime
    IL_0016:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_001b:  ldarg.0
    IL_001c:  ldfld      float64 Game.SubsystemSky::m_lastLightningStrikeTime
    IL_0021:  sub
    IL_0022:  ldc.r8     1.
    IL_002b:  ble.un     IL_02cb

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
    IL_0058:  ldc.r4     3.4028235e+038
    IL_005d:  stloc.0
    IL_005e:  ldarg.0
    IL_005f:  ldfld      class Game.SubsystemAudio Game.SubsystemSky::m_subsystemAudio
    IL_0064:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Vector3> Game.SubsystemAudio::get_ListenerPositions()
    IL_0069:  stloc.3
    IL_006a:  ldloca.s   V_3
    IL_006c:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Vector3>::GetEnumerator()
    IL_0071:  stloc.2
    .try
    {
      IL_0072:  br.s       IL_00b0

      IL_0074:  ldloca.s   V_2
      IL_0076:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Vector3>::get_Current()
      IL_007b:  stloc.s    V_4
      IL_007d:  ldloc.s    V_4
      IL_007f:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0084:  ldloc.s    V_4
      IL_0086:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_008b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_0090:  ldarg.1
      IL_0091:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0096:  ldarg.1
      IL_0097:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_009c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_00a1:  call       float32 [Engine]Engine.Vector2::Distance(valuetype [Engine]Engine.Vector2,
                                                                    valuetype [Engine]Engine.Vector2)
      IL_00a6:  stloc.s    V_5
      IL_00a8:  ldloc.s    V_5
      IL_00aa:  ldloc.0
      IL_00ab:  bge.un.s   IL_00b0

      IL_00ad:  ldloc.s    V_5
      IL_00af:  stloc.0
      IL_00b0:  ldloca.s   V_2
      IL_00b2:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Vector3>::MoveNext()
      IL_00b7:  brtrue.s   IL_0074

      IL_00b9:  leave.s    IL_00c9

    }  // end .try
    finally
    {
      IL_00bb:  ldloca.s   V_2
      IL_00bd:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Vector3>
      IL_00c3:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00c8:  endfinally
    }  // end handler
    IL_00c9:  ldarg.0
    IL_00ca:  ldfld      class Game.SubsystemAudio Game.SubsystemSky::m_subsystemAudio
    IL_00cf:  ldloc.0
    IL_00d0:  callvirt   instance float32 Game.SubsystemAudio::CalculateDelay(float32)
    IL_00d5:  stloc.1
    IL_00d6:  ldloc.0
    IL_00d7:  ldc.r4     40.
    IL_00dc:  bge.un.s   IL_0110

    IL_00de:  ldarg.0
    IL_00df:  ldfld      class Game.SubsystemAudio Game.SubsystemSky::m_subsystemAudio
    IL_00e4:  ldstr      "Audio/ThunderNear"
    IL_00e9:  ldc.r4     1.
    IL_00ee:  ldarg.0
    IL_00ef:  ldfld      class Game.Random Game.SubsystemSky::m_random
    IL_00f4:  ldc.r4     -0.2
    IL_00f9:  ldc.r4     0.2
    IL_00fe:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0103:  ldc.r4     0.0
    IL_0108:  ldloc.1
    IL_0109:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            float32,
                                                                            float32)
    IL_010e:  br.s       IL_0148

    IL_0110:  ldloc.0
    IL_0111:  ldc.r4     200.
    IL_0116:  bge.un.s   IL_0148

    IL_0118:  ldarg.0
    IL_0119:  ldfld      class Game.SubsystemAudio Game.SubsystemSky::m_subsystemAudio
    IL_011e:  ldstr      "Audio/ThunderFar"
    IL_0123:  ldc.r4     0.80000001
    IL_0128:  ldarg.0
    IL_0129:  ldfld      class Game.Random Game.SubsystemSky::m_random
    IL_012e:  ldc.r4     -0.2
    IL_0133:  ldc.r4     0.2
    IL_0138:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_013d:  ldc.r4     0.0
    IL_0142:  ldloc.1
    IL_0143:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            float32,
                                                                            float32)
    IL_0148:  ldarg.0
    IL_0149:  ldfld      class Game.SubsystemGameInfo Game.SubsystemSky::m_subsystemGameInfo
    IL_014e:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0153:  ldfld      valuetype Game.EnvironmentBehaviorMode Game.WorldSettings::EnvironmentBehaviorMode
    IL_0158:  brtrue     IL_02cb

    IL_015d:  newobj     instance void class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::.ctor()
    IL_0162:  stloc.s    V_6
    IL_0164:  ldarg.0
    IL_0165:  ldfld      class Game.SubsystemBodies Game.SubsystemSky::m_subsystemBodies
    IL_016a:  ldarg.1
    IL_016b:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0170:  ldarg.1
    IL_0171:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0176:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_017b:  ldc.r4     4.
    IL_0180:  ldloc.s    V_6
    IL_0182:  callvirt   instance void Game.SubsystemBodies::FindBodiesAroundPoint(valuetype [Engine]Engine.Vector2,
                                                                                   float32,
                                                                                   class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>)
    IL_0187:  ldc.i4.0
    IL_0188:  stloc.s    V_11
    IL_018a:  br         IL_0254

    IL_018f:  ldloc.s    V_6
    IL_0191:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::get_Array()
    IL_0196:  ldloc.s    V_11
    IL_0198:  ldelem.ref
    IL_0199:  stloc.s    V_12
    IL_019b:  ldloc.s    V_12
    IL_019d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_01a2:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_01a7:  ldarg.1
    IL_01a8:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_01ad:  ldc.r4     1.5
    IL_01b2:  sub
    IL_01b3:  ble.un.s   IL_021e

    IL_01b5:  ldloc.s    V_12
    IL_01b7:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_01bc:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_01c1:  ldloc.s    V_12
    IL_01c3:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_01c8:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01cd:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01d2:  ldarg.1
    IL_01d3:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_01d8:  ldarg.1
    IL_01d9:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01de:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01e3:  call       float32 [Engine]Engine.Vector2::Distance(valuetype [Engine]Engine.Vector2,
                                                                  valuetype [Engine]Engine.Vector2)
    IL_01e8:  ldc.r4     4.
    IL_01ed:  bge.un.s   IL_021e

    IL_01ef:  ldloc.s    V_12
    IL_01f1:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_01f6:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentOnFire>()
    IL_01fb:  stloc.s    V_14
    IL_01fd:  ldloc.s    V_14
    IL_01ff:  brfalse.s  IL_021e

    IL_0201:  ldloc.s    V_14
    IL_0203:  ldnull
    IL_0204:  ldarg.0
    IL_0205:  ldfld      class Game.Random Game.SubsystemSky::m_random
    IL_020a:  ldc.r4     12.
    IL_020f:  ldc.r4     15.
    IL_0214:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0219:  callvirt   instance void Game.ComponentOnFire::SetOnFire(class Game.ComponentCreature,
                                                                       float32)
    IL_021e:  ldloc.s    V_12
    IL_0220:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0225:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>()
    IL_022a:  stloc.s    V_13
    IL_022c:  ldloc.s    V_13
    IL_022e:  brfalse.s  IL_024e

    IL_0230:  ldloc.s    V_13
    IL_0232:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_0237:  brfalse.s  IL_024e

    IL_0239:  ldloc.s    V_13
    IL_023b:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_0240:  dup
    IL_0241:  ldfld      int64 Game.PlayerStats::StruckByLightning
    IL_0246:  ldc.i4.1
    IL_0247:  conv.i8
    IL_0248:  add
    IL_0249:  stfld      int64 Game.PlayerStats::StruckByLightning
    IL_024e:  ldloc.s    V_11
    IL_0250:  ldc.i4.1
    IL_0251:  add
    IL_0252:  stloc.s    V_11
    IL_0254:  ldloc.s    V_11
    IL_0256:  ldloc.s    V_6
    IL_0258:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::get_Count()
    IL_025d:  blt        IL_018f

    IL_0262:  ldarg.1
    IL_0263:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0268:  call       int32 Game.Terrain::ToCell(float32)
    IL_026d:  stloc.s    V_7
    IL_026f:  ldarg.1
    IL_0270:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0275:  call       int32 Game.Terrain::ToCell(float32)
    IL_027a:  stloc.s    V_8
    IL_027c:  ldarg.1
    IL_027d:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0282:  call       int32 Game.Terrain::ToCell(float32)
    IL_0287:  stloc.s    V_9
    IL_0289:  ldarg.0
    IL_028a:  ldfld      class Game.Random Game.SubsystemSky::m_random
    IL_028f:  ldc.r4     0.0
    IL_0294:  ldc.r4     1.
    IL_0299:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_029e:  ldc.r4     0.2
    IL_02a3:  blt.s      IL_02a9

    IL_02a5:  ldc.i4.s   19
    IL_02a7:  br.s       IL_02ab

    IL_02a9:  ldc.i4.s   39
    IL_02ab:  conv.r4
    IL_02ac:  stloc.s    V_10
    IL_02ae:  ldarg.0
    IL_02af:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_02b4:  ldc.i4.1
    IL_02b5:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemExplosions>(bool)
    IL_02ba:  ldloc.s    V_7
    IL_02bc:  ldloc.s    V_8
    IL_02be:  ldc.i4.1
    IL_02bf:  add
    IL_02c0:  ldloc.s    V_9
    IL_02c2:  ldloc.s    V_10
    IL_02c4:  ldc.i4.0
    IL_02c5:  ldc.i4.1
    IL_02c6:  callvirt   instance void Game.SubsystemExplosions::AddExplosion(int32,
                                                                              int32,
                                                                              int32,
                                                                              float32,
                                                                              bool,
                                                                              bool)
    IL_02cb:  ret
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
          instance void  Draw(class Game.Camera camera,
                              int32 drawOrder) cil managed
  {
    // 代码大小       973 (0x3cd)
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
             float32 V_14,
             class Game.GameViewWidget V_15,
             int32 V_16)
    IL_0000:  ldarg.2
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int32[] Game.SubsystemSky::m_drawOrders
    IL_0007:  ldc.i4.0
    IL_0008:  ldelem.i4
    IL_0009:  bne.un     IL_0357

    IL_000e:  ldarg.0
    IL_000f:  ldc.r4     0.0
    IL_0014:  call       instance void Game.SubsystemSky::set_ViewUnderWaterDepth(float32)
    IL_0019:  ldarg.0
    IL_001a:  ldc.r4     0.0
    IL_001f:  call       instance void Game.SubsystemSky::set_ViewUnderMagmaDepth(float32)
    IL_0024:  ldarg.1
    IL_0025:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_002a:  stloc.1
    IL_002b:  ldloc.1
    IL_002c:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0031:  call       int32 Game.Terrain::ToCell(float32)
    IL_0036:  stloc.2
    IL_0037:  ldloc.1
    IL_0038:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_003d:  call       int32 Game.Terrain::ToCell(float32)
    IL_0042:  stloc.3
    IL_0043:  ldloc.1
    IL_0044:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0049:  call       int32 Game.Terrain::ToCell(float32)
    IL_004e:  stloc.s    V_4
    IL_0050:  ldarg.0
    IL_0051:  ldfld      class Game.SubsystemFluidBlockBehavior Game.SubsystemSky::m_subsystemFluidBlockBehavior
    IL_0056:  ldloc.2
    IL_0057:  ldloc.3
    IL_0058:  ldloc.s    V_4
    IL_005a:  ldloca.s   V_0
    IL_005c:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemFluidBlockBehavior::GetSurfaceHeight(int32,
                                                                                                                                          int32,
                                                                                                                                          int32,
                                                                                                                                          class Game.FluidBlock&)
    IL_0061:  stloc.s    V_5
    IL_0063:  ldloca.s   V_5
    IL_0065:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_006a:  brfalse.s  IL_00b2

    IL_006c:  ldloc.0
    IL_006d:  isinst     Game.WaterBlock
    IL_0072:  brfalse.s  IL_0090

    IL_0074:  ldarg.0
    IL_0075:  ldloca.s   V_5
    IL_0077:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_007c:  ldc.r4     0.1
    IL_0081:  add
    IL_0082:  ldloc.1
    IL_0083:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0088:  sub
    IL_0089:  call       instance void Game.SubsystemSky::set_ViewUnderWaterDepth(float32)
    IL_008e:  br.s       IL_00b2

    IL_0090:  ldloc.0
    IL_0091:  isinst     Game.MagmaBlock
    IL_0096:  brfalse.s  IL_00b2

    IL_0098:  ldarg.0
    IL_0099:  ldloca.s   V_5
    IL_009b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_00a0:  ldc.r4     1.
    IL_00a5:  add
    IL_00a6:  ldloc.1
    IL_00a7:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00ac:  sub
    IL_00ad:  call       instance void Game.SubsystemSky::set_ViewUnderMagmaDepth(float32)
    IL_00b2:  ldarg.0
    IL_00b3:  call       instance float32 Game.SubsystemSky::get_ViewUnderWaterDepth()
    IL_00b8:  ldc.r4     0.0
    IL_00bd:  ble.un     IL_01ab

    IL_00c2:  ldarg.0
    IL_00c3:  ldfld      class Game.SubsystemTerrain Game.SubsystemSky::m_subsystemTerrain
    IL_00c8:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00cd:  ldloc.2
    IL_00ce:  ldloc.s    V_4
    IL_00d0:  callvirt   instance int32 Game.Terrain::GetHumidity(int32,
                                                                  int32)
    IL_00d5:  stloc.s    V_6
    IL_00d7:  ldarg.0
    IL_00d8:  ldfld      class Game.SubsystemTerrain Game.SubsystemSky::m_subsystemTerrain
    IL_00dd:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00e2:  ldloc.2
    IL_00e3:  ldloc.s    V_4
    IL_00e5:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_00ea:  stloc.s    V_7
    IL_00ec:  ldsfld     class Game.BlockColorsMap Game.BlockColorsMap::WaterColorsMap
    IL_00f1:  ldloc.s    V_7
    IL_00f3:  ldloc.s    V_6
    IL_00f5:  callvirt   instance valuetype [Engine]Engine.Color Game.BlockColorsMap::Lookup(int32,
                                                                                             int32)
    IL_00fa:  stloc.s    V_8
    IL_00fc:  ldc.r4     1.
    IL_0101:  ldc.r4     0.5
    IL_0106:  ldloc.s    V_6
    IL_0108:  conv.r4
    IL_0109:  ldc.r4     15.
    IL_010e:  div
    IL_010f:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0114:  stloc.s    V_9
    IL_0116:  ldc.r4     1.
    IL_011b:  ldc.r4     0.2
    IL_0120:  ldc.r4     7.5000003e-002
    IL_0125:  ldarg.0
    IL_0126:  call       instance float32 Game.SubsystemSky::get_ViewUnderWaterDepth()
    IL_012b:  ldc.r4     2.
    IL_0130:  sub
    IL_0131:  mul
    IL_0132:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0137:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_013c:  stloc.s    V_10
    IL_013e:  ldc.r4     0.33000001
    IL_0143:  ldc.r4     1.
    IL_0148:  ldarg.0
    IL_0149:  call       instance float32 Game.SubsystemSky::get_SkyLightIntensity()
    IL_014e:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0153:  stloc.s    V_11
    IL_0155:  ldarg.0
    IL_0156:  ldflda     valuetype [Engine]Engine.Vector2 Game.SubsystemSky::m_viewFogRange
    IL_015b:  ldc.r4     0.0
    IL_0160:  stfld      float32 [Engine]Engine.Vector2::X
    IL_0165:  ldarg.0
    IL_0166:  ldflda     valuetype [Engine]Engine.Vector2 Game.SubsystemSky::m_viewFogRange
    IL_016b:  ldc.r4     4.
    IL_0170:  ldc.r4     10.
    IL_0175:  ldloc.s    V_9
    IL_0177:  ldloc.s    V_10
    IL_0179:  mul
    IL_017a:  ldloc.s    V_11
    IL_017c:  mul
    IL_017d:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0182:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_0187:  ldarg.0
    IL_0188:  ldloc.s    V_8
    IL_018a:  ldc.r4     0.66000003
    IL_018f:  ldloc.s    V_10
    IL_0191:  mul
    IL_0192:  ldloc.s    V_11
    IL_0194:  mul
    IL_0195:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::MultiplyColorOnly(valuetype [Engine]Engine.Color,
                                                                                                float32)
    IL_019a:  stfld      valuetype [Engine]Engine.Color Game.SubsystemSky::m_viewFogColor
    IL_019f:  ldarg.0
    IL_01a0:  ldc.i4.0
    IL_01a1:  stfld      bool Game.SubsystemSky::m_viewIsSkyVisible
    IL_01a6:  br         IL_02ca

    IL_01ab:  ldarg.0
    IL_01ac:  call       instance float32 Game.SubsystemSky::get_ViewUnderMagmaDepth()
    IL_01b1:  ldc.r4     0.0
    IL_01b6:  ble.un.s   IL_01f7

    IL_01b8:  ldarg.0
    IL_01b9:  ldflda     valuetype [Engine]Engine.Vector2 Game.SubsystemSky::m_viewFogRange
    IL_01be:  ldc.r4     0.0
    IL_01c3:  stfld      float32 [Engine]Engine.Vector2::X
    IL_01c8:  ldarg.0
    IL_01c9:  ldflda     valuetype [Engine]Engine.Vector2 Game.SubsystemSky::m_viewFogRange
    IL_01ce:  ldc.r4     0.1
    IL_01d3:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_01d8:  ldarg.0
    IL_01d9:  ldc.i4     0xff
    IL_01de:  ldc.i4.s   80
    IL_01e0:  ldc.i4.0
    IL_01e1:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_01e6:  stfld      valuetype [Engine]Engine.Color Game.SubsystemSky::m_viewFogColor
    IL_01eb:  ldarg.0
    IL_01ec:  ldc.i4.0
    IL_01ed:  stfld      bool Game.SubsystemSky::m_viewIsSkyVisible
    IL_01f2:  br         IL_02ca

    IL_01f7:  ldarg.0
    IL_01f8:  ldfld      class Game.SubsystemTerrain Game.SubsystemSky::m_subsystemTerrain
    IL_01fd:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0202:  ldloc.1
    IL_0203:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0208:  call       int32 Game.Terrain::ToCell(float32)
    IL_020d:  ldloc.1
    IL_020e:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0213:  call       int32 Game.Terrain::ToCell(float32)
    IL_0218:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_021d:  stloc.s    V_12
    IL_021f:  ldc.r4     0.5
    IL_0224:  ldc.r4     0.0
    IL_0229:  ldarg.0
    IL_022a:  ldfld      class Game.SubsystemWeather Game.SubsystemSky::m_subsystemWeather
    IL_022f:  callvirt   instance float32 Game.SubsystemWeather::get_GlobalPrecipitationIntensity()
    IL_0234:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0239:  stloc.s    V_13
    IL_023b:  ldc.r4     1.
    IL_0240:  ldc.r4     0.80000001
    IL_0245:  ldarg.0
    IL_0246:  ldfld      class Game.SubsystemWeather Game.SubsystemSky::m_subsystemWeather
    IL_024b:  callvirt   instance float32 Game.SubsystemWeather::get_GlobalPrecipitationIntensity()
    IL_0250:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0255:  stloc.s    V_14
    IL_0257:  ldarg.0
    IL_0258:  ldflda     valuetype [Engine]Engine.Vector2 Game.SubsystemSky::m_viewFogRange
    IL_025d:  ldarg.0
    IL_025e:  call       instance float32 Game.SubsystemSky::get_VisibilityRange()
    IL_0263:  ldloc.s    V_13
    IL_0265:  mul
    IL_0266:  stfld      float32 [Engine]Engine.Vector2::X
    IL_026b:  ldarg.0
    IL_026c:  ldflda     valuetype [Engine]Engine.Vector2 Game.SubsystemSky::m_viewFogRange
    IL_0271:  ldarg.0
    IL_0272:  call       instance float32 Game.SubsystemSky::get_VisibilityRange()
    IL_0277:  ldloc.s    V_14
    IL_0279:  mul
    IL_027a:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_027f:  ldarg.0
    IL_0280:  ldarg.0
    IL_0281:  ldarg.1
    IL_0282:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewDirection()
    IL_0287:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_028c:  ldc.r4     0.0
    IL_0291:  ldarg.1
    IL_0292:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewDirection()
    IL_0297:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_029c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_02a1:  ldarg.0
    IL_02a2:  ldfld      class Game.SubsystemTimeOfDay Game.SubsystemSky::m_subsystemTimeOfDay
    IL_02a7:  callvirt   instance float32 Game.SubsystemTimeOfDay::get_TimeOfDay()
    IL_02ac:  ldarg.0
    IL_02ad:  ldfld      class Game.SubsystemWeather Game.SubsystemSky::m_subsystemWeather
    IL_02b2:  callvirt   instance float32 Game.SubsystemWeather::get_GlobalPrecipitationIntensity()
    IL_02b7:  ldloc.s    V_12
    IL_02b9:  call       instance valuetype [Engine]Engine.Color Game.SubsystemSky::CalculateSkyColor(valuetype [Engine]Engine.Vector3,
                                                                                                      float32,
                                                                                                      float32,
                                                                                                      int32)
    IL_02be:  stfld      valuetype [Engine]Engine.Color Game.SubsystemSky::m_viewFogColor
    IL_02c3:  ldarg.0
    IL_02c4:  ldc.i4.1
    IL_02c5:  stfld      bool Game.SubsystemSky::m_viewIsSkyVisible
    IL_02ca:  ldarg.0
    IL_02cb:  ldfld      bool Game.SubsystemSky::DrawSkyEnabled
    IL_02d0:  brfalse.s  IL_02e5

    IL_02d2:  ldarg.0
    IL_02d3:  ldfld      bool Game.SubsystemSky::m_viewIsSkyVisible
    IL_02d8:  brfalse.s  IL_02e5

    IL_02da:  call       valuetype Game.SkyRenderingMode Game.SettingsManager::get_SkyRenderingMode()
    IL_02df:  ldc.i4.2
    IL_02e0:  bne.un     IL_03cc

    IL_02e5:  ldarg.1
    IL_02e6:  callvirt   instance class Game.View Game.Camera::get_View()
    IL_02eb:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_02f0:  callvirt   instance class Game.GameViewWidget Game.GameWidget::get_GameViewWidget()
    IL_02f5:  stloc.s    V_15
    IL_02f7:  ldarg.0
    IL_02f8:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.SubsystemSky::m_primitivesRenderer2d
    IL_02fd:  ldc.i4.m1
    IL_02fe:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_0303:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullNoneScissor
    IL_0308:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::Opaque
    IL_030d:  callvirt   instance class [Engine]Engine.Graphics.FlatBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::FlatBatch(int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState)
    IL_0312:  dup
    IL_0313:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColor> [Engine]Engine.Graphics.BaseFlatBatch::TriangleVertices
    IL_0318:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColor>::get_Count()
    IL_031d:  stloc.s    V_16
    IL_031f:  dup
    IL_0320:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0325:  ldloc.s    V_15
    IL_0327:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_032c:  ldc.r4     0.0
    IL_0331:  ldarg.0
    IL_0332:  ldfld      valuetype [Engine]Engine.Color Game.SubsystemSky::m_viewFogColor
    IL_0337:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_033c:  ldarg.1
    IL_033d:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_WidgetMatrix()
    IL_0342:  ldloc.s    V_16
    IL_0344:  ldc.i4.m1
    IL_0345:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::TransformTriangles(valuetype [Engine]Engine.Matrix,
                                                                                               int32,
                                                                                               int32)
    IL_034a:  ldarg.0
    IL_034b:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.SubsystemSky::m_primitivesRenderer2d
    IL_0350:  ldc.i4.1
    IL_0351:  callvirt   instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::Flush(bool)
    IL_0356:  ret

    IL_0357:  ldarg.2
    IL_0358:  ldarg.0
    IL_0359:  ldfld      int32[] Game.SubsystemSky::m_drawOrders
    IL_035e:  ldc.i4.1
    IL_035f:  ldelem.i4
    IL_0360:  bne.un.s   IL_03ae

    IL_0362:  ldarg.0
    IL_0363:  ldfld      bool Game.SubsystemSky::DrawSkyEnabled
    IL_0368:  brfalse.s  IL_03cc

    IL_036a:  ldarg.0
    IL_036b:  ldfld      bool Game.SubsystemSky::m_viewIsSkyVisible
    IL_0370:  brfalse.s  IL_03cc

    IL_0372:  call       valuetype Game.SkyRenderingMode Game.SettingsManager::get_SkyRenderingMode()
    IL_0377:  ldc.i4.2
    IL_0378:  beq.s      IL_03cc

    IL_037a:  ldarg.0
    IL_037b:  ldarg.1
    IL_037c:  call       instance void Game.SubsystemSky::DrawSkydome(class Game.Camera)
    IL_0381:  ldarg.0
    IL_0382:  ldarg.1
    IL_0383:  call       instance void Game.SubsystemSky::DrawStars(class Game.Camera)
    IL_0388:  ldarg.0
    IL_0389:  ldarg.1
    IL_038a:  call       instance void Game.SubsystemSky::DrawSunAndMoon(class Game.Camera)
    IL_038f:  ldarg.0
    IL_0390:  ldarg.1
    IL_0391:  call       instance void Game.SubsystemSky::DrawClouds(class Game.Camera)
    IL_0396:  ldarg.0
    IL_0397:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemSky::m_primitivesRenderer3d
    IL_039c:  ldarg.1
    IL_039d:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ViewProjectionMatrix()
    IL_03a2:  ldc.i4.1
    IL_03a3:  ldc.i4     0x7fffffff
    IL_03a8:  callvirt   instance void class [Engine]Engine.Graphics.BasePrimitivesRenderer`3<class [Engine]Engine.Graphics.FlatBatch3D,class [Engine]Engine.Graphics.TexturedBatch3D,class [Engine]Engine.Graphics.FontBatch3D>::Flush(valuetype [Engine]Engine.Matrix,
                                                                                                                                                                                                                                        bool,
                                                                                                                                                                                                                                        int32)
    IL_03ad:  ret

    IL_03ae:  ldarg.0
    IL_03af:  ldarg.1
    IL_03b0:  call       instance void Game.SubsystemSky::DrawLightning(class Game.Camera)
    IL_03b5:  ldarg.0
    IL_03b6:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemSky::m_primitivesRenderer3d
    IL_03bb:  ldarg.1
    IL_03bc:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ViewProjectionMatrix()
    IL_03c1:  ldc.i4.1
    IL_03c2:  ldc.i4     0x7fffffff
    IL_03c7:  callvirt   instance void class [Engine]Engine.Graphics.BasePrimitivesRenderer`3<class [Engine]Engine.Graphics.FlatBatch3D,class [Engine]Engine.Graphics.TexturedBatch3D,class [Engine]Engine.Graphics.FontBatch3D>::Flush(valuetype [Engine]Engine.Matrix,
                                                                                                                                                                                                                                        bool,
                                                                                                                                                                                                                                        int32)
    IL_03cc:  ret
  } // end of method SubsystemSky::Draw

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       267 (0x10b)
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
    IL_0091:  ldstr      "Textures/Sun"
    IL_0096:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_009b:  stfld      class [Engine]Engine.Graphics.Texture2D Game.SubsystemSky::m_sunTexture
    IL_00a0:  ldarg.0
    IL_00a1:  ldstr      "Textures/SkyGlow"
    IL_00a6:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_00ab:  stfld      class [Engine]Engine.Graphics.Texture2D Game.SubsystemSky::m_glowTexture
    IL_00b0:  ldarg.0
    IL_00b1:  ldstr      "Textures/Clouds"
    IL_00b6:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_00bb:  stfld      class [Engine]Engine.Graphics.Texture2D Game.SubsystemSky::m_cloudsTexture
    IL_00c0:  ldc.i4.0
    IL_00c1:  stloc.0
    IL_00c2:  br.s       IL_00ef

    IL_00c4:  ldarg.0
    IL_00c5:  ldfld      class [Engine]Engine.Graphics.Texture2D[] Game.SubsystemSky::m_moonTextures
    IL_00ca:  ldloc.0
    IL_00cb:  ldstr      "Textures/Moon"
    IL_00d0:  ldloc.0
    IL_00d1:  ldc.i4.1
    IL_00d2:  add
    IL_00d3:  stloc.1
    IL_00d4:  ldloca.s   V_1
    IL_00d6:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_00db:  call       instance string [System.Runtime]System.Int32::ToString(class [System.Runtime]System.IFormatProvider)
    IL_00e0:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_00e5:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_00ea:  stelem.ref
    IL_00eb:  ldloc.0
    IL_00ec:  ldc.i4.1
    IL_00ed:  add
    IL_00ee:  stloc.0
    IL_00ef:  ldloc.0
    IL_00f0:  ldc.i4.8
    IL_00f1:  blt.s      IL_00c4

    IL_00f3:  ldarg.0
    IL_00f4:  call       instance void Game.SubsystemSky::UpdateLightAndViewParameters()
    IL_00f9:  ldarg.0
    IL_00fa:  ldftn      instance void Game.SubsystemSky::Display_DeviceReset()
    IL_0100:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0105:  call       void [Engine]Engine.Graphics.Display::add_DeviceReset(class [System.Runtime]System.Action)
    IL_010a:  ret
  } // end of method SubsystemSky::Load

  .method public hidebysig virtual instance void 
          Dispose() cil managed
  {
    // 代码大小       107 (0x6b)
    .maxstack  2
    .locals init (valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<class Game.View,class Game.SubsystemSky/SkyDome> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldftn      instance void Game.SubsystemSky::Display_DeviceReset()
    IL_0007:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_000c:  call       void [Engine]Engine.Graphics.Display::remove_DeviceReset(class [System.Runtime]System.Action)
    IL_0011:  ldarg.0
    IL_0012:  ldflda     class [Engine]Engine.Graphics.VertexBuffer Game.SubsystemSky::m_starsVertexBuffer
    IL_0017:  call       void [Engine]Engine.Utilities::Dispose<class [Engine]Engine.Graphics.VertexBuffer>(!!0&)
    IL_001c:  ldarg.0
    IL_001d:  ldflda     class [Engine]Engine.Graphics.IndexBuffer Game.SubsystemSky::m_starsIndexBuffer
    IL_0022:  call       void [Engine]Engine.Utilities::Dispose<class [Engine]Engine.Graphics.IndexBuffer>(!!0&)
    IL_0027:  ldarg.0
    IL_0028:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.View,class Game.SubsystemSky/SkyDome> Game.SubsystemSky::m_skyDomes
    IL_002d:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.View,class Game.SubsystemSky/SkyDome>::get_Values()
    IL_0032:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<class Game.View,class Game.SubsystemSky/SkyDome>::GetEnumerator()
    IL_0037:  stloc.0
    .try
    {
      IL_0038:  br.s       IL_0046

      IL_003a:  ldloca.s   V_0
      IL_003c:  call       instance !1 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<class Game.View,class Game.SubsystemSky/SkyDome>::get_Current()
      IL_0041:  callvirt   instance void Game.SubsystemSky/SkyDome::Dispose()
      IL_0046:  ldloca.s   V_0
      IL_0048:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<class Game.View,class Game.SubsystemSky/SkyDome>::MoveNext()
      IL_004d:  brtrue.s   IL_003a

      IL_004f:  leave.s    IL_005f

    }  // end .try
    finally
    {
      IL_0051:  ldloca.s   V_0
      IL_0053:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<class Game.View,class Game.SubsystemSky/SkyDome>
      IL_0059:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_005e:  endfinally
    }  // end handler
    IL_005f:  ldarg.0
    IL_0060:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.View,class Game.SubsystemSky/SkyDome> Game.SubsystemSky::m_skyDomes
    IL_0065:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.View,class Game.SubsystemSky/SkyDome>::Clear()
    IL_006a:  ret
  } // end of method SubsystemSky::Dispose

  .method private hidebysig instance void 
          Display_DeviceReset() cil managed
  {
    // 代码大小       90 (0x5a)
    .maxstack  1
    .locals init (valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<class Game.View,class Game.SubsystemSky/SkyDome> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldflda     class [Engine]Engine.Graphics.VertexBuffer Game.SubsystemSky::m_starsVertexBuffer
    IL_0006:  call       void [Engine]Engine.Utilities::Dispose<class [Engine]Engine.Graphics.VertexBuffer>(!!0&)
    IL_000b:  ldarg.0
    IL_000c:  ldflda     class [Engine]Engine.Graphics.IndexBuffer Game.SubsystemSky::m_starsIndexBuffer
    IL_0011:  call       void [Engine]Engine.Utilities::Dispose<class [Engine]Engine.Graphics.IndexBuffer>(!!0&)
    IL_0016:  ldarg.0
    IL_0017:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.View,class Game.SubsystemSky/SkyDome> Game.SubsystemSky::m_skyDomes
    IL_001c:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.View,class Game.SubsystemSky/SkyDome>::get_Values()
    IL_0021:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<class Game.View,class Game.SubsystemSky/SkyDome>::GetEnumerator()
    IL_0026:  stloc.0
    .try
    {
      IL_0027:  br.s       IL_0035

      IL_0029:  ldloca.s   V_0
      IL_002b:  call       instance !1 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<class Game.View,class Game.SubsystemSky/SkyDome>::get_Current()
      IL_0030:  callvirt   instance void Game.SubsystemSky/SkyDome::Dispose()
      IL_0035:  ldloca.s   V_0
      IL_0037:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<class Game.View,class Game.SubsystemSky/SkyDome>::MoveNext()
      IL_003c:  brtrue.s   IL_0029

      IL_003e:  leave.s    IL_004e

    }  // end .try
    finally
    {
      IL_0040:  ldloca.s   V_0
      IL_0042:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<class Game.View,class Game.SubsystemSky/SkyDome>
      IL_0048:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_004d:  endfinally
    }  // end handler
    IL_004e:  ldarg.0
    IL_004f:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.View,class Game.SubsystemSky/SkyDome> Game.SubsystemSky::m_skyDomes
    IL_0054:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.View,class Game.SubsystemSky/SkyDome>::Clear()
    IL_0059:  ret
  } // end of method SubsystemSky::Display_DeviceReset

  .method private hidebysig instance void 
          DrawSkydome(class Game.Camera camera) cil managed
  {
    // 代码大小       586 (0x24a)
    .maxstack  6
    .locals init (class Game.SubsystemSky/SkyDome V_0,
             int32 V_1,
             int32 V_2,
             float32 V_3,
             float32 V_4,
             int32 V_5,
             valuetype [System.Runtime]System.Nullable`1<int32> V_6)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.View,class Game.SubsystemSky/SkyDome> Game.SubsystemSky::m_skyDomes
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance class Game.View Game.Camera::get_View()
    IL_000c:  ldloca.s   V_0
    IL_000e:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.View,class Game.SubsystemSky/SkyDome>::TryGetValue(!0,
                                                                                                                                                                       !1&)
    IL_0013:  brtrue.s   IL_002d

    IL_0015:  newobj     instance void Game.SubsystemSky/SkyDome::.ctor()
    IL_001a:  stloc.0
    IL_001b:  ldarg.0
    IL_001c:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.View,class Game.SubsystemSky/SkyDome> Game.SubsystemSky::m_skyDomes
    IL_0021:  ldarg.1
    IL_0022:  callvirt   instance class Game.View Game.Camera::get_View()
    IL_0027:  ldloc.0
    IL_0028:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.View,class Game.SubsystemSky/SkyDome>::Add(!0,
                                                                                                                                                               !1)
    IL_002d:  ldloc.0
    IL_002e:  ldfld      class [Engine]Engine.Graphics.VertexBuffer Game.SubsystemSky/SkyDome::VertexBuffer
    IL_0033:  brfalse.s  IL_003d

    IL_0035:  ldloc.0
    IL_0036:  ldfld      class [Engine]Engine.Graphics.IndexBuffer Game.SubsystemSky/SkyDome::IndexBuffer
    IL_003b:  brtrue.s   IL_0093

    IL_003d:  ldloc.0
    IL_003e:  ldflda     class [Engine]Engine.Graphics.VertexBuffer Game.SubsystemSky/SkyDome::VertexBuffer
    IL_0043:  call       void [Engine]Engine.Utilities::Dispose<class [Engine]Engine.Graphics.VertexBuffer>(!!0&)
    IL_0048:  ldloc.0
    IL_0049:  ldflda     class [Engine]Engine.Graphics.IndexBuffer Game.SubsystemSky/SkyDome::IndexBuffer
    IL_004e:  call       void [Engine]Engine.Utilities::Dispose<class [Engine]Engine.Graphics.IndexBuffer>(!!0&)
    IL_0053:  ldloc.0
    IL_0054:  ldarg.0
    IL_0055:  ldfld      class [Engine]Engine.Graphics.VertexDeclaration Game.SubsystemSky::m_skyVertexDeclaration
    IL_005a:  ldloc.0
    IL_005b:  ldfld      valuetype Game.SubsystemSky/SkyVertex[] Game.SubsystemSky/SkyDome::Vertices
    IL_0060:  ldlen
    IL_0061:  conv.i4
    IL_0062:  newobj     instance void [Engine]Engine.Graphics.VertexBuffer::.ctor(class [Engine]Engine.Graphics.VertexDeclaration,
                                                                                   int32)
    IL_0067:  stfld      class [Engine]Engine.Graphics.VertexBuffer Game.SubsystemSky/SkyDome::VertexBuffer
    IL_006c:  ldloc.0
    IL_006d:  ldc.i4.0
    IL_006e:  ldloc.0
    IL_006f:  ldfld      uint16[] Game.SubsystemSky/SkyDome::Indices
    IL_0074:  ldlen
    IL_0075:  conv.i4
    IL_0076:  newobj     instance void [Engine]Engine.Graphics.IndexBuffer::.ctor(valuetype [Engine]Engine.Graphics.IndexFormat,
                                                                                  int32)
    IL_007b:  stfld      class [Engine]Engine.Graphics.IndexBuffer Game.SubsystemSky/SkyDome::IndexBuffer
    IL_0080:  ldarg.0
    IL_0081:  ldloc.0
    IL_0082:  call       instance void Game.SubsystemSky::FillSkyIndexBuffer(class Game.SubsystemSky/SkyDome)
    IL_0087:  ldloc.0
    IL_0088:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemSky/SkyDome::LastUpdateTimeOfDay
    IL_008d:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
    IL_0093:  ldarg.1
    IL_0094:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_0099:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_009e:  call       int32 Game.Terrain::ToCell(float32)
    IL_00a3:  stloc.1
    IL_00a4:  ldarg.1
    IL_00a5:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_00aa:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00af:  call       int32 Game.Terrain::ToCell(float32)
    IL_00b4:  stloc.2
    IL_00b5:  ldarg.0
    IL_00b6:  ldfld      class Game.SubsystemWeather Game.SubsystemSky::m_subsystemWeather
    IL_00bb:  callvirt   instance float32 Game.SubsystemWeather::get_GlobalPrecipitationIntensity()
    IL_00c0:  stloc.3
    IL_00c1:  ldarg.0
    IL_00c2:  ldfld      class Game.SubsystemTimeOfDay Game.SubsystemSky::m_subsystemTimeOfDay
    IL_00c7:  callvirt   instance float32 Game.SubsystemTimeOfDay::get_TimeOfDay()
    IL_00cc:  stloc.s    V_4
    IL_00ce:  ldarg.0
    IL_00cf:  ldfld      class Game.SubsystemTerrain Game.SubsystemSky::m_subsystemTerrain
    IL_00d4:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00d9:  ldloc.1
    IL_00da:  ldloc.2
    IL_00db:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_00e0:  stloc.s    V_5
    IL_00e2:  ldloc.0
    IL_00e3:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemSky/SkyDome::LastUpdateTimeOfDay
    IL_00e8:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_00ed:  brfalse    IL_0190

    IL_00f2:  ldloc.s    V_4
    IL_00f4:  ldloc.0
    IL_00f5:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemSky/SkyDome::LastUpdateTimeOfDay
    IL_00fa:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_00ff:  sub
    IL_0100:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0105:  ldc.r4     1.e-003
    IL_010a:  bgt        IL_0190

    IL_010f:  ldloc.0
    IL_0110:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemSky/SkyDome::LastUpdatePrecipitationIntensity
    IL_0115:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_011a:  brfalse.s  IL_0190

    IL_011c:  ldloc.3
    IL_011d:  ldloc.0
    IL_011e:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemSky/SkyDome::LastUpdatePrecipitationIntensity
    IL_0123:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0128:  sub
    IL_0129:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_012e:  ldc.r4     2.e-002
    IL_0133:  bgt.s      IL_0190

    IL_0135:  ldloc.3
    IL_0136:  ldc.r4     0.0
    IL_013b:  beq.s      IL_0145

    IL_013d:  ldloc.3
    IL_013e:  ldc.r4     1.
    IL_0143:  bne.un.s   IL_0153

    IL_0145:  ldloc.0
    IL_0146:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemSky/SkyDome::LastUpdatePrecipitationIntensity
    IL_014b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0150:  ldloc.3
    IL_0151:  bne.un.s   IL_0190

    IL_0153:  ldarg.0
    IL_0154:  ldfld      float32 Game.SubsystemSky::m_lightningStrikeBrightness
    IL_0159:  ldloc.0
    IL_015a:  ldfld      float32 Game.SubsystemSky/SkyDome::LastUpdateLightningStrikeBrightness
    IL_015f:  bne.un.s   IL_0190

    IL_0161:  ldloc.0
    IL_0162:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.SubsystemSky/SkyDome::LastUpdateTemperature
    IL_0167:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_016c:  brfalse.s  IL_0190

    IL_016e:  ldloc.s    V_5
    IL_0170:  ldloc.0
    IL_0171:  ldfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.SubsystemSky/SkyDome::LastUpdateTemperature
    IL_0176:  stloc.s    V_6
    IL_0178:  ldloca.s   V_6
    IL_017a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::GetValueOrDefault()
    IL_017f:  beq.s      IL_0184

    IL_0181:  ldc.i4.1
    IL_0182:  br.s       IL_018e

    IL_0184:  ldloca.s   V_6
    IL_0186:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_018b:  ldc.i4.0
    IL_018c:  ceq
    IL_018e:  brfalse.s  IL_01ce

    IL_0190:  ldloc.0
    IL_0191:  ldloc.s    V_4
    IL_0193:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_0198:  stfld      valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemSky/SkyDome::LastUpdateTimeOfDay
    IL_019d:  ldloc.0
    IL_019e:  ldloc.3
    IL_019f:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_01a4:  stfld      valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemSky/SkyDome::LastUpdatePrecipitationIntensity
    IL_01a9:  ldloc.0
    IL_01aa:  ldarg.0
    IL_01ab:  ldfld      float32 Game.SubsystemSky::m_lightningStrikeBrightness
    IL_01b0:  stfld      float32 Game.SubsystemSky/SkyDome::LastUpdateLightningStrikeBrightness
    IL_01b5:  ldloc.0
    IL_01b6:  ldloc.s    V_5
    IL_01b8:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_01bd:  stfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.SubsystemSky/SkyDome::LastUpdateTemperature
    IL_01c2:  ldarg.0
    IL_01c3:  ldloc.0
    IL_01c4:  ldloc.s    V_4
    IL_01c6:  ldloc.3
    IL_01c7:  ldloc.s    V_5
    IL_01c9:  call       instance void Game.SubsystemSky::FillSkyVertexBuffer(class Game.SubsystemSky/SkyDome,
                                                                              float32,
                                                                              float32,
                                                                              int32)
    IL_01ce:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::DepthRead
    IL_01d3:  call       void [Engine]Engine.Graphics.Display::set_DepthStencilState(class [Engine]Engine.Graphics.DepthStencilState)
    IL_01d8:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullNoneScissor
    IL_01dd:  call       void [Engine]Engine.Graphics.Display::set_RasterizerState(class [Engine]Engine.Graphics.RasterizerState)
    IL_01e2:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::Opaque
    IL_01e7:  call       void [Engine]Engine.Graphics.Display::set_BlendState(class [Engine]Engine.Graphics.BlendState)
    IL_01ec:  ldsfld     class [Engine]Engine.Graphics.UnlitShader Game.SubsystemSky::m_shaderFlat
    IL_01f1:  ldfld      class [Engine]Engine.Graphics.ShaderTransforms [Engine]Engine.Graphics.UnlitShader::Transforms
    IL_01f6:  callvirt   instance class [Engine]Engine.Graphics.ShaderTransforms/WorldMatrixList [Engine]Engine.Graphics.ShaderTransforms::get_World()
    IL_01fb:  ldc.i4.0
    IL_01fc:  ldarg.1
    IL_01fd:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_0202:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(valuetype [Engine]Engine.Vector3)
    IL_0207:  ldarg.1
    IL_0208:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ViewProjectionMatrix()
    IL_020d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0212:  callvirt   instance void [Engine]Engine.Graphics.ShaderTransforms/WorldMatrixList::set_Item(int32,
                                                                                                          valuetype [Engine]Engine.Matrix)
    IL_0217:  ldsfld     class [Engine]Engine.Graphics.UnlitShader Game.SubsystemSky::m_shaderFlat
    IL_021c:  ldsfld     valuetype [Engine]Engine.Vector4 [Engine]Engine.Vector4::One
    IL_0221:  callvirt   instance void [Engine]Engine.Graphics.UnlitShader::set_Color(valuetype [Engine]Engine.Vector4)
    IL_0226:  ldc.i4.2
    IL_0227:  ldsfld     class [Engine]Engine.Graphics.UnlitShader Game.SubsystemSky::m_shaderFlat
    IL_022c:  ldloc.0
    IL_022d:  ldfld      class [Engine]Engine.Graphics.VertexBuffer Game.SubsystemSky/SkyDome::VertexBuffer
    IL_0232:  ldloc.0
    IL_0233:  ldfld      class [Engine]Engine.Graphics.IndexBuffer Game.SubsystemSky/SkyDome::IndexBuffer
    IL_0238:  ldc.i4.0
    IL_0239:  ldloc.0
    IL_023a:  ldfld      class [Engine]Engine.Graphics.IndexBuffer Game.SubsystemSky/SkyDome::IndexBuffer
    IL_023f:  callvirt   instance int32 [Engine]Engine.Graphics.IndexBuffer::get_IndicesCount()
    IL_0244:  call       void [Engine]Engine.Graphics.Display::DrawIndexed(valuetype [Engine]Engine.Graphics.PrimitiveType,
                                                                           class [Engine]Engine.Graphics.Shader,
                                                                           class [Engine]Engine.Graphics.VertexBuffer,
                                                                           class [Engine]Engine.Graphics.IndexBuffer,
                                                                           int32,
                                                                           int32)
    IL_0249:  ret
  } // end of method SubsystemSky::DrawSkydome

  .method private hidebysig instance void 
          DrawStars(class Game.Camera camera) cil managed
  {
    // 代码大小       343 (0x157)
    .maxstack  6
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemWeather Game.SubsystemSky::m_subsystemWeather
    IL_0006:  callvirt   instance float32 Game.SubsystemWeather::get_GlobalPrecipitationIntensity()
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldfld      class Game.SubsystemTimeOfDay Game.SubsystemSky::m_subsystemTimeOfDay
    IL_0012:  callvirt   instance float32 Game.SubsystemTimeOfDay::get_TimeOfDay()
    IL_0017:  stloc.1
    IL_0018:  ldarg.0
    IL_0019:  ldfld      class [Engine]Engine.Graphics.VertexBuffer Game.SubsystemSky::m_starsVertexBuffer
    IL_001e:  brfalse.s  IL_0028

    IL_0020:  ldarg.0
    IL_0021:  ldfld      class [Engine]Engine.Graphics.IndexBuffer Game.SubsystemSky::m_starsIndexBuffer
    IL_0026:  brtrue.s   IL_006b

    IL_0028:  ldarg.0
    IL_0029:  ldflda     class [Engine]Engine.Graphics.VertexBuffer Game.SubsystemSky::m_starsVertexBuffer
    IL_002e:  call       void [Engine]Engine.Utilities::Dispose<class [Engine]Engine.Graphics.VertexBuffer>(!!0&)
    IL_0033:  ldarg.0
    IL_0034:  ldflda     class [Engine]Engine.Graphics.IndexBuffer Game.SubsystemSky::m_starsIndexBuffer
    IL_0039:  call       void [Engine]Engine.Utilities::Dispose<class [Engine]Engine.Graphics.IndexBuffer>(!!0&)
    IL_003e:  ldarg.0
    IL_003f:  ldarg.0
    IL_0040:  ldfld      class [Engine]Engine.Graphics.VertexDeclaration Game.SubsystemSky::m_starsVertexDeclaration
    IL_0045:  ldc.i4     0x258
    IL_004a:  newobj     instance void [Engine]Engine.Graphics.VertexBuffer::.ctor(class [Engine]Engine.Graphics.VertexDeclaration,
                                                                                   int32)
    IL_004f:  stfld      class [Engine]Engine.Graphics.VertexBuffer Game.SubsystemSky::m_starsVertexBuffer
    IL_0054:  ldarg.0
    IL_0055:  ldc.i4.0
    IL_0056:  ldc.i4     0x384
    IL_005b:  newobj     instance void [Engine]Engine.Graphics.IndexBuffer::.ctor(valuetype [Engine]Engine.Graphics.IndexFormat,
                                                                                  int32)
    IL_0060:  stfld      class [Engine]Engine.Graphics.IndexBuffer Game.SubsystemSky::m_starsIndexBuffer
    IL_0065:  ldarg.0
    IL_0066:  call       instance void Game.SubsystemSky::FillStarsBuffers()
    IL_006b:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::DepthRead
    IL_0070:  call       void [Engine]Engine.Graphics.Display::set_DepthStencilState(class [Engine]Engine.Graphics.DepthStencilState)
    IL_0075:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullNoneScissor
    IL_007a:  call       void [Engine]Engine.Graphics.Display::set_RasterizerState(class [Engine]Engine.Graphics.RasterizerState)
    IL_007f:  ldc.r4     1.
    IL_0084:  ldarg.0
    IL_0085:  ldloc.1
    IL_0086:  call       instance float32 Game.SubsystemSky::CalculateLightIntensity(float32)
    IL_008b:  sub
    IL_008c:  ldc.r4     1.
    IL_0091:  ldloc.0
    IL_0092:  sub
    IL_0093:  mul
    IL_0094:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
    IL_0099:  stloc.2
    IL_009a:  ldloc.2
    IL_009b:  ldc.r4     9.9999998e-003
    IL_00a0:  ble.un     IL_0156

    IL_00a5:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::Additive
    IL_00aa:  call       void [Engine]Engine.Graphics.Display::set_BlendState(class [Engine]Engine.Graphics.BlendState)
    IL_00af:  ldsfld     class [Engine]Engine.Graphics.UnlitShader Game.SubsystemSky::m_shaderTextured
    IL_00b4:  ldfld      class [Engine]Engine.Graphics.ShaderTransforms [Engine]Engine.Graphics.UnlitShader::Transforms
    IL_00b9:  callvirt   instance class [Engine]Engine.Graphics.ShaderTransforms/WorldMatrixList [Engine]Engine.Graphics.ShaderTransforms::get_World()
    IL_00be:  ldc.i4.0
    IL_00bf:  ldc.r4     -2.
    IL_00c4:  ldloc.1
    IL_00c5:  mul
    IL_00c6:  ldc.r4     3.1415927
    IL_00cb:  mul
    IL_00cc:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationZ(float32)
    IL_00d1:  ldarg.1
    IL_00d2:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_00d7:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(valuetype [Engine]Engine.Vector3)
    IL_00dc:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00e1:  ldarg.1
    IL_00e2:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ViewProjectionMatrix()
    IL_00e7:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00ec:  callvirt   instance void [Engine]Engine.Graphics.ShaderTransforms/WorldMatrixList::set_Item(int32,
                                                                                                          valuetype [Engine]Engine.Matrix)
    IL_00f1:  ldsfld     class [Engine]Engine.Graphics.UnlitShader Game.SubsystemSky::m_shaderTextured
    IL_00f6:  ldc.r4     1.
    IL_00fb:  ldc.r4     1.
    IL_0100:  ldc.r4     1.
    IL_0105:  ldloc.2
    IL_0106:  newobj     instance void [Engine]Engine.Vector4::.ctor(float32,
                                                                     float32,
                                                                     float32,
                                                                     float32)
    IL_010b:  callvirt   instance void [Engine]Engine.Graphics.UnlitShader::set_Color(valuetype [Engine]Engine.Vector4)
    IL_0110:  ldsfld     class [Engine]Engine.Graphics.UnlitShader Game.SubsystemSky::m_shaderTextured
    IL_0115:  ldstr      "Textures/Star"
    IL_011a:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_011f:  callvirt   instance void [Engine]Engine.Graphics.UnlitShader::set_Texture(class [Engine]Engine.Graphics.Texture2D)
    IL_0124:  ldsfld     class [Engine]Engine.Graphics.UnlitShader Game.SubsystemSky::m_shaderTextured
    IL_0129:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::LinearClamp
    IL_012e:  callvirt   instance void [Engine]Engine.Graphics.UnlitShader::set_SamplerState(class [Engine]Engine.Graphics.SamplerState)
    IL_0133:  ldc.i4.2
    IL_0134:  ldsfld     class [Engine]Engine.Graphics.UnlitShader Game.SubsystemSky::m_shaderTextured
    IL_0139:  ldarg.0
    IL_013a:  ldfld      class [Engine]Engine.Graphics.VertexBuffer Game.SubsystemSky::m_starsVertexBuffer
    IL_013f:  ldarg.0
    IL_0140:  ldfld      class [Engine]Engine.Graphics.IndexBuffer Game.SubsystemSky::m_starsIndexBuffer
    IL_0145:  ldc.i4.0
    IL_0146:  ldarg.0
    IL_0147:  ldfld      class [Engine]Engine.Graphics.IndexBuffer Game.SubsystemSky::m_starsIndexBuffer
    IL_014c:  callvirt   instance int32 [Engine]Engine.Graphics.IndexBuffer::get_IndicesCount()
    IL_0151:  call       void [Engine]Engine.Graphics.Display::DrawIndexed(valuetype [Engine]Engine.Graphics.PrimitiveType,
                                                                           class [Engine]Engine.Graphics.Shader,
                                                                           class [Engine]Engine.Graphics.VertexBuffer,
                                                                           class [Engine]Engine.Graphics.IndexBuffer,
                                                                           int32,
                                                                           int32)
    IL_0156:  ret
  } // end of method SubsystemSky::DrawStars

  .method private hidebysig instance void 
          DrawSunAndMoon(class Game.Camera camera) cil managed
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
    IL_00a4:  call       instance float32 Game.SubsystemSky::get_SkyLightIntensity()
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
    IL_012a:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemSky::m_primitivesRenderer3d
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
    IL_014b:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemSky::m_primitivesRenderer3d
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
    IL_016c:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemSky::m_primitivesRenderer3d
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
    IL_0197:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
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
    IL_01b5:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
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
    IL_01d4:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
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
    IL_01ec:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
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
          DrawLightning(class Game.Camera camera) cil managed
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
    IL_0011:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemSky::m_primitivesRenderer3d
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
    IL_003b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewDirection()
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
    IL_005f:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ViewProjectionMatrix()
    IL_0064:  call       valuetype [Engine]Engine.Vector4 [Engine]Engine.Vector4::Transform(valuetype [Engine]Engine.Vector4,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0069:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_006e:  ldc.r4     2.
    IL_0073:  mul
    IL_0074:  ldloc.s    V_4
    IL_0076:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_007b:  conv.r4
    IL_007c:  ldarg.1
    IL_007d:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ProjectionMatrix()
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
          DrawClouds(class Game.Camera camera) cil managed
  {
    // 代码大小       1104 (0x450)
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
    IL_0006:  beq        IL_044f

    IL_000b:  ldarg.0
    IL_000c:  ldfld      class Game.SubsystemWeather Game.SubsystemSky::m_subsystemWeather
    IL_0011:  callvirt   instance float32 Game.SubsystemWeather::get_GlobalPrecipitationIntensity()
    IL_0016:  stloc.0
    IL_0017:  ldc.r4     2.9999999e-002
    IL_001c:  ldc.r4     1.
    IL_0021:  ldarg.0
    IL_0022:  call       instance float32 Game.SubsystemSky::get_SkyLightIntensity()
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
    IL_0085:  call       instance valuetype [Engine]Engine.Color Game.SubsystemSky::get_ViewFogColor()
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
    IL_00ad:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
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
    IL_013d:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemSky::m_primitivesRenderer3d
    IL_0142:  ldarg.0
    IL_0143:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.SubsystemSky::m_cloudsTexture
    IL_0148:  ldc.i4.0
    IL_0149:  ldc.i4.2
    IL_014a:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::DepthRead
    IL_014f:  ldnull
    IL_0150:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::AlphaBlend
    IL_0155:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::LinearWrap
    IL_015a:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_015f:  stloc.s    V_5
    IL_0161:  ldloc.s    V_5
    IL_0163:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleVertices
    IL_0168:  stloc.s    V_6
    IL_016a:  ldloc.s    V_5
    IL_016c:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleIndices
    IL_0171:  ldloc.s    V_6
    IL_0173:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Count()
    IL_0178:  stloc.s    V_7
    IL_017a:  ldloc.s    V_6
    IL_017c:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Count()
    IL_0181:  stloc.s    V_8
    IL_0183:  dup
    IL_0184:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0189:  stloc.s    V_9
    IL_018b:  ldloc.s    V_6
    IL_018d:  dup
    IL_018e:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Count()
    IL_0193:  ldc.i4.s   49
    IL_0195:  add
    IL_0196:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::set_Count(int32)
    IL_019b:  dup
    IL_019c:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_01a1:  ldc.i4     0xd8
    IL_01a6:  add
    IL_01a7:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_01ac:  ldc.i4.0
    IL_01ad:  stloc.s    V_10
    IL_01af:  br         IL_0440

    IL_01b4:  ldc.i4.0
    IL_01b5:  stloc.s    V_11
    IL_01b7:  br         IL_0432

    IL_01bc:  ldloc.s    V_11
    IL_01be:  ldc.i4.3
    IL_01bf:  sub
    IL_01c0:  stloc.s    V_12
    IL_01c2:  ldloc.s    V_10
    IL_01c4:  ldc.i4.3
    IL_01c5:  sub
    IL_01c6:  stloc.s    V_13
    IL_01c8:  ldloc.s    V_12
    IL_01ca:  call       int32 [Engine]Engine.MathUtils::Abs(int32)
    IL_01cf:  ldloc.s    V_13
    IL_01d1:  call       int32 [Engine]Engine.MathUtils::Abs(int32)
    IL_01d6:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_01db:  stloc.s    V_14
    IL_01dd:  ldarg.0
    IL_01de:  ldfld      float32[] Game.SubsystemSky::m_cloudsLayerRadii
    IL_01e3:  ldloc.s    V_14
    IL_01e5:  ldelem.r4
    IL_01e6:  stloc.s    V_15
    IL_01e8:  ldloc.s    V_14
    IL_01ea:  ldc.i4.0
    IL_01eb:  bgt.s      IL_01f4

    IL_01ed:  ldc.r4     0.0
    IL_01f2:  br.s       IL_0208

    IL_01f4:  ldloc.s    V_15
    IL_01f6:  ldloc.s    V_12
    IL_01f8:  ldloc.s    V_12
    IL_01fa:  mul
    IL_01fb:  ldloc.s    V_13
    IL_01fd:  ldloc.s    V_13
    IL_01ff:  mul
    IL_0200:  add
    IL_0201:  conv.r4
    IL_0202:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_0207:  div
    IL_0208:  stloc.s    V_16
    IL_020a:  ldloc.s    V_12
    IL_020c:  conv.r4
    IL_020d:  ldloc.s    V_16
    IL_020f:  mul
    IL_0210:  stloc.s    V_17
    IL_0212:  ldloc.s    V_13
    IL_0214:  conv.r4
    IL_0215:  ldloc.s    V_16
    IL_0217:  mul
    IL_0218:  stloc.s    V_18
    IL_021a:  ldc.r4     250.
    IL_021f:  ldc.r4     50.
    IL_0224:  ldloc.s    V_15
    IL_0226:  ldloc.s    V_15
    IL_0228:  mul
    IL_0229:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_022e:  stloc.s    V_19
    IL_0230:  ldloca.s   V_20
    IL_0232:  ldloc.3
    IL_0233:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0238:  ldloc.s    V_17
    IL_023a:  ldc.r4     1000.
    IL_023f:  mul
    IL_0240:  add
    IL_0241:  ldloc.s    V_19
    IL_0243:  ldloc.3
    IL_0244:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0249:  ldloc.s    V_18
    IL_024b:  ldc.r4     1000.
    IL_0250:  mul
    IL_0251:  add
    IL_0252:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0257:  ldloc.s    V_20
    IL_0259:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_025e:  ldloc.s    V_20
    IL_0260:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0265:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_026a:  ldc.r4     1000.
    IL_026f:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0274:  ldc.r4     1.5
    IL_0279:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_027e:  ldloc.s    V_4
    IL_0280:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_0285:  stloc.s    V_21
    IL_0287:  ldarg.0
    IL_0288:  ldfld      valuetype [Engine]Engine.Color[] Game.SubsystemSky::m_cloudsLayerColors
    IL_028d:  ldloc.s    V_14
    IL_028f:  ldelem     [Engine]Engine.Color
    IL_0294:  stloc.s    V_22
    IL_0296:  ldloc.s    V_5
    IL_0298:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleVertices
    IL_029d:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Array()
    IL_02a2:  ldloc.s    V_8
    IL_02a4:  dup
    IL_02a5:  ldc.i4.1
    IL_02a6:  add
    IL_02a7:  stloc.s    V_8
    IL_02a9:  ldloc.s    V_20
    IL_02ab:  ldloc.s    V_22
    IL_02ad:  ldloc.s    V_21
    IL_02af:  newobj     instance void [Engine]Engine.Graphics.VertexPositionColorTexture::.ctor(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Color,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_02b4:  stelem     [Engine]Engine.Graphics.VertexPositionColorTexture
    IL_02b9:  ldloc.s    V_11
    IL_02bb:  ldc.i4.0
    IL_02bc:  ble        IL_042c

    IL_02c1:  ldloc.s    V_10
    IL_02c3:  ldc.i4.0
    IL_02c4:  ble        IL_042c

    IL_02c9:  ldloc.s    V_7
    IL_02cb:  ldloc.s    V_11
    IL_02cd:  add
    IL_02ce:  ldloc.s    V_10
    IL_02d0:  ldc.i4.7
    IL_02d1:  mul
    IL_02d2:  add
    IL_02d3:  conv.u2
    IL_02d4:  stloc.s    V_23
    IL_02d6:  ldloc.s    V_7
    IL_02d8:  ldloc.s    V_11
    IL_02da:  ldc.i4.1
    IL_02db:  sub
    IL_02dc:  add
    IL_02dd:  ldloc.s    V_10
    IL_02df:  ldc.i4.7
    IL_02e0:  mul
    IL_02e1:  add
    IL_02e2:  conv.u2
    IL_02e3:  stloc.s    V_24
    IL_02e5:  ldloc.s    V_7
    IL_02e7:  ldloc.s    V_11
    IL_02e9:  ldc.i4.1
    IL_02ea:  sub
    IL_02eb:  add
    IL_02ec:  ldloc.s    V_10
    IL_02ee:  ldc.i4.1
    IL_02ef:  sub
    IL_02f0:  ldc.i4.7
    IL_02f1:  mul
    IL_02f2:  add
    IL_02f3:  conv.u2
    IL_02f4:  stloc.s    V_25
    IL_02f6:  ldloc.s    V_7
    IL_02f8:  ldloc.s    V_11
    IL_02fa:  add
    IL_02fb:  ldloc.s    V_10
    IL_02fd:  ldc.i4.1
    IL_02fe:  sub
    IL_02ff:  ldc.i4.7
    IL_0300:  mul
    IL_0301:  add
    IL_0302:  conv.u2
    IL_0303:  stloc.s    V_26
    IL_0305:  ldloc.s    V_12
    IL_0307:  ldc.i4.0
    IL_0308:  bgt.s      IL_030f

    IL_030a:  ldloc.s    V_13
    IL_030c:  ldc.i4.0
    IL_030d:  ble.s      IL_031f

    IL_030f:  ldloc.s    V_12
    IL_0311:  ldc.i4.0
    IL_0312:  ble        IL_03a8

    IL_0317:  ldloc.s    V_13
    IL_0319:  ldc.i4.0
    IL_031a:  ble        IL_03a8

    IL_031f:  ldloc.s    V_5
    IL_0321:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleIndices
    IL_0326:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_032b:  ldloc.s    V_9
    IL_032d:  dup
    IL_032e:  ldc.i4.1
    IL_032f:  add
    IL_0330:  stloc.s    V_9
    IL_0332:  ldloc.s    V_23
    IL_0334:  stelem.i2
    IL_0335:  ldloc.s    V_5
    IL_0337:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleIndices
    IL_033c:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0341:  ldloc.s    V_9
    IL_0343:  dup
    IL_0344:  ldc.i4.1
    IL_0345:  add
    IL_0346:  stloc.s    V_9
    IL_0348:  ldloc.s    V_24
    IL_034a:  stelem.i2
    IL_034b:  ldloc.s    V_5
    IL_034d:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleIndices
    IL_0352:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0357:  ldloc.s    V_9
    IL_0359:  dup
    IL_035a:  ldc.i4.1
    IL_035b:  add
    IL_035c:  stloc.s    V_9
    IL_035e:  ldloc.s    V_25
    IL_0360:  stelem.i2
    IL_0361:  ldloc.s    V_5
    IL_0363:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleIndices
    IL_0368:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_036d:  ldloc.s    V_9
    IL_036f:  dup
    IL_0370:  ldc.i4.1
    IL_0371:  add
    IL_0372:  stloc.s    V_9
    IL_0374:  ldloc.s    V_25
    IL_0376:  stelem.i2
    IL_0377:  ldloc.s    V_5
    IL_0379:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleIndices
    IL_037e:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0383:  ldloc.s    V_9
    IL_0385:  dup
    IL_0386:  ldc.i4.1
    IL_0387:  add
    IL_0388:  stloc.s    V_9
    IL_038a:  ldloc.s    V_26
    IL_038c:  stelem.i2
    IL_038d:  ldloc.s    V_5
    IL_038f:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleIndices
    IL_0394:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0399:  ldloc.s    V_9
    IL_039b:  dup
    IL_039c:  ldc.i4.1
    IL_039d:  add
    IL_039e:  stloc.s    V_9
    IL_03a0:  ldloc.s    V_23
    IL_03a2:  stelem.i2
    IL_03a3:  br         IL_042c

    IL_03a8:  ldloc.s    V_5
    IL_03aa:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleIndices
    IL_03af:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_03b4:  ldloc.s    V_9
    IL_03b6:  dup
    IL_03b7:  ldc.i4.1
    IL_03b8:  add
    IL_03b9:  stloc.s    V_9
    IL_03bb:  ldloc.s    V_23
    IL_03bd:  stelem.i2
    IL_03be:  ldloc.s    V_5
    IL_03c0:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleIndices
    IL_03c5:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_03ca:  ldloc.s    V_9
    IL_03cc:  dup
    IL_03cd:  ldc.i4.1
    IL_03ce:  add
    IL_03cf:  stloc.s    V_9
    IL_03d1:  ldloc.s    V_24
    IL_03d3:  stelem.i2
    IL_03d4:  ldloc.s    V_5
    IL_03d6:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleIndices
    IL_03db:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_03e0:  ldloc.s    V_9
    IL_03e2:  dup
    IL_03e3:  ldc.i4.1
    IL_03e4:  add
    IL_03e5:  stloc.s    V_9
    IL_03e7:  ldloc.s    V_26
    IL_03e9:  stelem.i2
    IL_03ea:  ldloc.s    V_5
    IL_03ec:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleIndices
    IL_03f1:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_03f6:  ldloc.s    V_9
    IL_03f8:  dup
    IL_03f9:  ldc.i4.1
    IL_03fa:  add
    IL_03fb:  stloc.s    V_9
    IL_03fd:  ldloc.s    V_24
    IL_03ff:  stelem.i2
    IL_0400:  ldloc.s    V_5
    IL_0402:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleIndices
    IL_0407:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_040c:  ldloc.s    V_9
    IL_040e:  dup
    IL_040f:  ldc.i4.1
    IL_0410:  add
    IL_0411:  stloc.s    V_9
    IL_0413:  ldloc.s    V_25
    IL_0415:  stelem.i2
    IL_0416:  ldloc.s    V_5
    IL_0418:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleIndices
    IL_041d:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0422:  ldloc.s    V_9
    IL_0424:  dup
    IL_0425:  ldc.i4.1
    IL_0426:  add
    IL_0427:  stloc.s    V_9
    IL_0429:  ldloc.s    V_26
    IL_042b:  stelem.i2
    IL_042c:  ldloc.s    V_11
    IL_042e:  ldc.i4.1
    IL_042f:  add
    IL_0430:  stloc.s    V_11
    IL_0432:  ldloc.s    V_11
    IL_0434:  ldc.i4.7
    IL_0435:  blt        IL_01bc

    IL_043a:  ldloc.s    V_10
    IL_043c:  ldc.i4.1
    IL_043d:  add
    IL_043e:  stloc.s    V_10
    IL_0440:  ldloc.s    V_10
    IL_0442:  ldc.i4.7
    IL_0443:  blt        IL_01b4

    IL_0448:  ldarg.0
    IL_0449:  ldfld      bool Game.SubsystemSky::DrawCloudsWireframe
    IL_044e:  pop
    IL_044f:  ret
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
    // 代码大小       124 (0x7c)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  call       int32 Game.SettingsManager::get_VisibilityRange()
    IL_0006:  conv.r4
    IL_0007:  call       instance void Game.SubsystemSky::set_VisibilityRange(float32)
    IL_000c:  ldarg.0
    IL_000d:  ldarg.0
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Game.SubsystemTimeOfDay Game.SubsystemSky::m_subsystemTimeOfDay
    IL_0014:  callvirt   instance float32 Game.SubsystemTimeOfDay::get_TimeOfDay()
    IL_0019:  call       instance float32 Game.SubsystemSky::CalculateLightIntensity(float32)
    IL_001e:  call       instance void Game.SubsystemSky::set_SkyLightIntensity(float32)
    IL_0023:  ldarg.0
    IL_0024:  call       instance int32 Game.SubsystemSky::get_MoonPhase()
    IL_0029:  ldc.i4.4
    IL_002a:  bne.un.s   IL_0054

    IL_002c:  ldarg.0
    IL_002d:  ldsfld     int32[] Game.SubsystemSky::m_lightValuesMoonless
    IL_0032:  ldc.r4     0.0
    IL_0037:  ldc.r4     5.
    IL_003c:  ldarg.0
    IL_003d:  call       instance float32 Game.SubsystemSky::get_SkyLightIntensity()
    IL_0042:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0047:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_004c:  conv.i4
    IL_004d:  ldelem.i4
    IL_004e:  call       instance void Game.SubsystemSky::set_SkyLightValue(int32)
    IL_0053:  ret

    IL_0054:  ldarg.0
    IL_0055:  ldsfld     int32[] Game.SubsystemSky::m_lightValuesNormal
    IL_005a:  ldc.r4     0.0
    IL_005f:  ldc.r4     5.
    IL_0064:  ldarg.0
    IL_0065:  call       instance float32 Game.SubsystemSky::get_SkyLightIntensity()
    IL_006a:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_006f:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0074:  conv.i4
    IL_0075:  ldelem.i4
    IL_0076:  call       instance void Game.SubsystemSky::set_SkyLightValue(int32)
    IL_007b:  ret
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
          FillSkyVertexBuffer(class Game.SubsystemSky/SkyDome skyDome,
                              float32 timeOfDay,
                              float32 precipitationIntensity,
                              int32 temperature) cil managed
  {
    // 代码大小       280 (0x118)
    .maxstack  6
    .locals init (int32 V_0,
             float32 V_1,
             int32 V_2,
             int32 V_3,
             float32 V_4,
             float32 V_5)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br         IL_00f5

    IL_0007:  ldc.r4     1.5707964
    IL_000c:  ldloc.0
    IL_000d:  conv.r4
    IL_000e:  ldc.r4     7.
    IL_0013:  div
    IL_0014:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
    IL_0019:  mul
    IL_001a:  stloc.1
    IL_001b:  ldc.i4.0
    IL_001c:  stloc.2
    IL_001d:  br         IL_00e9

    IL_0022:  ldloc.2
    IL_0023:  ldloc.0
    IL_0024:  ldc.i4.s   10
    IL_0026:  mul
    IL_0027:  add
    IL_0028:  stloc.3
    IL_0029:  ldc.r4     6.2831855
    IL_002e:  ldloc.2
    IL_002f:  conv.r4
    IL_0030:  mul
    IL_0031:  ldc.r4     10.
    IL_0036:  div
    IL_0037:  stloc.s    V_4
    IL_0039:  ldc.r4     900.
    IL_003e:  ldloc.1
    IL_003f:  call       float32 [Engine]Engine.MathUtils::Cos(float32)
    IL_0044:  mul
    IL_0045:  stloc.s    V_5
    IL_0047:  ldarg.1
    IL_0048:  ldfld      valuetype Game.SubsystemSky/SkyVertex[] Game.SubsystemSky/SkyDome::Vertices
    IL_004d:  ldloc.3
    IL_004e:  ldelema    Game.SubsystemSky/SkyVertex
    IL_0053:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemSky/SkyVertex::Position
    IL_0058:  ldloc.s    V_5
    IL_005a:  ldloc.s    V_4
    IL_005c:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_0061:  mul
    IL_0062:  stfld      float32 [Engine]Engine.Vector3::X
    IL_0067:  ldarg.1
    IL_0068:  ldfld      valuetype Game.SubsystemSky/SkyVertex[] Game.SubsystemSky/SkyDome::Vertices
    IL_006d:  ldloc.3
    IL_006e:  ldelema    Game.SubsystemSky/SkyVertex
    IL_0073:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemSky/SkyVertex::Position
    IL_0078:  ldloc.s    V_5
    IL_007a:  ldloc.s    V_4
    IL_007c:  call       float32 [Engine]Engine.MathUtils::Cos(float32)
    IL_0081:  mul
    IL_0082:  stfld      float32 [Engine]Engine.Vector3::Z
    IL_0087:  ldarg.1
    IL_0088:  ldfld      valuetype Game.SubsystemSky/SkyVertex[] Game.SubsystemSky/SkyDome::Vertices
    IL_008d:  ldloc.3
    IL_008e:  ldelema    Game.SubsystemSky/SkyVertex
    IL_0093:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemSky/SkyVertex::Position
    IL_0098:  ldc.r4     900.
    IL_009d:  ldloc.1
    IL_009e:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_00a3:  mul
    IL_00a4:  ldloc.0
    IL_00a5:  brfalse.s  IL_00ae

    IL_00a7:  ldc.r4     0.0
    IL_00ac:  br.s       IL_00b3

    IL_00ae:  ldc.r4     225.
    IL_00b3:  sub
    IL_00b4:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_00b9:  ldarg.1
    IL_00ba:  ldfld      valuetype Game.SubsystemSky/SkyVertex[] Game.SubsystemSky/SkyDome::Vertices
    IL_00bf:  ldloc.3
    IL_00c0:  ldelema    Game.SubsystemSky/SkyVertex
    IL_00c5:  ldarg.0
    IL_00c6:  ldarg.1
    IL_00c7:  ldfld      valuetype Game.SubsystemSky/SkyVertex[] Game.SubsystemSky/SkyDome::Vertices
    IL_00cc:  ldloc.3
    IL_00cd:  ldelema    Game.SubsystemSky/SkyVertex
    IL_00d2:  ldfld      valuetype [Engine]Engine.Vector3 Game.SubsystemSky/SkyVertex::Position
    IL_00d7:  ldarg.2
    IL_00d8:  ldarg.3
    IL_00d9:  ldarg.s    temperature
    IL_00db:  call       instance valuetype [Engine]Engine.Color Game.SubsystemSky::CalculateSkyColor(valuetype [Engine]Engine.Vector3,
                                                                                                      float32,
                                                                                                      float32,
                                                                                                      int32)
    IL_00e0:  stfld      valuetype [Engine]Engine.Color Game.SubsystemSky/SkyVertex::Color
    IL_00e5:  ldloc.2
    IL_00e6:  ldc.i4.1
    IL_00e7:  add
    IL_00e8:  stloc.2
    IL_00e9:  ldloc.2
    IL_00ea:  ldc.i4.s   10
    IL_00ec:  blt        IL_0022

    IL_00f1:  ldloc.0
    IL_00f2:  ldc.i4.1
    IL_00f3:  add
    IL_00f4:  stloc.0
    IL_00f5:  ldloc.0
    IL_00f6:  ldc.i4.8
    IL_00f7:  blt        IL_0007

    IL_00fc:  ldarg.1
    IL_00fd:  ldfld      class [Engine]Engine.Graphics.VertexBuffer Game.SubsystemSky/SkyDome::VertexBuffer
    IL_0102:  ldarg.1
    IL_0103:  ldfld      valuetype Game.SubsystemSky/SkyVertex[] Game.SubsystemSky/SkyDome::Vertices
    IL_0108:  ldc.i4.0
    IL_0109:  ldarg.1
    IL_010a:  ldfld      valuetype Game.SubsystemSky/SkyVertex[] Game.SubsystemSky/SkyDome::Vertices
    IL_010f:  ldlen
    IL_0110:  conv.i4
    IL_0111:  ldc.i4.0
    IL_0112:  callvirt   instance void [Engine]Engine.Graphics.VertexBuffer::SetData<valuetype Game.SubsystemSky/SkyVertex>(!!0[],
                                                                                                                            int32,
                                                                                                                            int32,
                                                                                                                            int32)
    IL_0117:  ret
  } // end of method SubsystemSky::FillSkyVertexBuffer

  .method private hidebysig instance void 
          FillSkyIndexBuffer(class Game.SubsystemSky/SkyDome skyDome) cil managed
  {
    // 代码大小       270 (0x10e)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7)
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
    IL_0022:  ldarg.1
    IL_0023:  ldfld      uint16[] Game.SubsystemSky/SkyDome::Indices
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
    IL_0036:  ldarg.1
    IL_0037:  ldfld      uint16[] Game.SubsystemSky/SkyDome::Indices
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
    IL_004b:  ldarg.1
    IL_004c:  ldfld      uint16[] Game.SubsystemSky/SkyDome::Indices
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
    IL_0060:  ldarg.1
    IL_0061:  ldfld      uint16[] Game.SubsystemSky/SkyDome::Indices
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
    IL_0075:  ldarg.1
    IL_0076:  ldfld      uint16[] Game.SubsystemSky/SkyDome::Indices
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
    IL_0089:  ldarg.1
    IL_008a:  ldfld      uint16[] Game.SubsystemSky/SkyDome::Indices
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

    IL_00b4:  ldc.i4.2
    IL_00b5:  stloc.s    V_7
    IL_00b7:  br.s       IL_00ec

    IL_00b9:  ldarg.1
    IL_00ba:  ldfld      uint16[] Game.SubsystemSky/SkyDome::Indices
    IL_00bf:  ldloc.0
    IL_00c0:  dup
    IL_00c1:  ldc.i4.1
    IL_00c2:  add
    IL_00c3:  stloc.0
    IL_00c4:  ldc.i4.0
    IL_00c5:  stelem.i2
    IL_00c6:  ldarg.1
    IL_00c7:  ldfld      uint16[] Game.SubsystemSky/SkyDome::Indices
    IL_00cc:  ldloc.0
    IL_00cd:  dup
    IL_00ce:  ldc.i4.1
    IL_00cf:  add
    IL_00d0:  stloc.0
    IL_00d1:  ldloc.s    V_7
    IL_00d3:  ldc.i4.1
    IL_00d4:  sub
    IL_00d5:  conv.u2
    IL_00d6:  stelem.i2
    IL_00d7:  ldarg.1
    IL_00d8:  ldfld      uint16[] Game.SubsystemSky/SkyDome::Indices
    IL_00dd:  ldloc.0
    IL_00de:  dup
    IL_00df:  ldc.i4.1
    IL_00e0:  add
    IL_00e1:  stloc.0
    IL_00e2:  ldloc.s    V_7
    IL_00e4:  conv.u2
    IL_00e5:  stelem.i2
    IL_00e6:  ldloc.s    V_7
    IL_00e8:  ldc.i4.1
    IL_00e9:  add
    IL_00ea:  stloc.s    V_7
    IL_00ec:  ldloc.s    V_7
    IL_00ee:  ldc.i4.s   10
    IL_00f0:  blt.s      IL_00b9

    IL_00f2:  ldarg.1
    IL_00f3:  ldfld      class [Engine]Engine.Graphics.IndexBuffer Game.SubsystemSky/SkyDome::IndexBuffer
    IL_00f8:  ldarg.1
    IL_00f9:  ldfld      uint16[] Game.SubsystemSky/SkyDome::Indices
    IL_00fe:  ldc.i4.0
    IL_00ff:  ldarg.1
    IL_0100:  ldfld      uint16[] Game.SubsystemSky/SkyDome::Indices
    IL_0105:  ldlen
    IL_0106:  conv.i4
    IL_0107:  ldc.i4.0
    IL_0108:  callvirt   instance void [Engine]Engine.Graphics.IndexBuffer::SetData<uint16>(!!0[],
                                                                                            int32,
                                                                                            int32,
                                                                                            int32)
    IL_010d:  ret
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
    // 代码大小       220 (0xdc)
    .maxstack  7
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::.ctor()
    IL_0006:  stfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.SubsystemSky::m_primitivesRenderer2d
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void [Engine]Engine.Graphics.PrimitivesRenderer3D::.ctor()
    IL_0011:  stfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemSky::m_primitivesRenderer3d
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void Game.Random::.ctor()
    IL_001c:  stfld      class Game.Random Game.SubsystemSky::m_random
    IL_0021:  ldarg.0
    IL_0022:  ldc.i4.8
    IL_0023:  newarr     [Engine]Engine.Graphics.Texture2D
    IL_0028:  stfld      class [Engine]Engine.Graphics.Texture2D[] Game.SubsystemSky::m_moonTextures
    IL_002d:  ldarg.0
    IL_002e:  ldc.i4.2
    IL_002f:  newarr     [Engine]Engine.Graphics.VertexElement
    IL_0034:  dup
    IL_0035:  ldc.i4.0
    IL_0036:  ldc.i4.0
    IL_0037:  ldc.i4.2
    IL_0038:  ldc.i4.0
    IL_0039:  newobj     instance void [Engine]Engine.Graphics.VertexElement::.ctor(int32,
                                                                                    valuetype [Engine]Engine.Graphics.VertexElementFormat,
                                                                                    valuetype [Engine]Engine.Graphics.VertexElementSemantic)
    IL_003e:  stelem.ref
    IL_003f:  dup
    IL_0040:  ldc.i4.1
    IL_0041:  ldc.i4.s   12
    IL_0043:  ldc.i4.5
    IL_0044:  ldc.i4.1
    IL_0045:  newobj     instance void [Engine]Engine.Graphics.VertexElement::.ctor(int32,
                                                                                    valuetype [Engine]Engine.Graphics.VertexElementFormat,
                                                                                    valuetype [Engine]Engine.Graphics.VertexElementSemantic)
    IL_004a:  stelem.ref
    IL_004b:  newobj     instance void [Engine]Engine.Graphics.VertexDeclaration::.ctor(class [Engine]Engine.Graphics.VertexElement[])
    IL_0050:  stfld      class [Engine]Engine.Graphics.VertexDeclaration Game.SubsystemSky::m_skyVertexDeclaration
    IL_0055:  ldarg.0
    IL_0056:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.View,class Game.SubsystemSky/SkyDome>::.ctor()
    IL_005b:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.View,class Game.SubsystemSky/SkyDome> Game.SubsystemSky::m_skyDomes
    IL_0060:  ldarg.0
    IL_0061:  ldc.i4.3
    IL_0062:  newarr     [Engine]Engine.Graphics.VertexElement
    IL_0067:  dup
    IL_0068:  ldc.i4.0
    IL_0069:  ldc.i4.0
    IL_006a:  ldc.i4.2
    IL_006b:  ldc.i4.0
    IL_006c:  newobj     instance void [Engine]Engine.Graphics.VertexElement::.ctor(int32,
                                                                                    valuetype [Engine]Engine.Graphics.VertexElementFormat,
                                                                                    valuetype [Engine]Engine.Graphics.VertexElementSemantic)
    IL_0071:  stelem.ref
    IL_0072:  dup
    IL_0073:  ldc.i4.1
    IL_0074:  ldc.i4.s   12
    IL_0076:  ldc.i4.1
    IL_0077:  ldc.i4.3
    IL_0078:  newobj     instance void [Engine]Engine.Graphics.VertexElement::.ctor(int32,
                                                                                    valuetype [Engine]Engine.Graphics.VertexElementFormat,
                                                                                    valuetype [Engine]Engine.Graphics.VertexElementSemantic)
    IL_007d:  stelem.ref
    IL_007e:  dup
    IL_007f:  ldc.i4.2
    IL_0080:  ldc.i4.s   20
    IL_0082:  ldc.i4.5
    IL_0083:  ldc.i4.1
    IL_0084:  newobj     instance void [Engine]Engine.Graphics.VertexElement::.ctor(int32,
                                                                                    valuetype [Engine]Engine.Graphics.VertexElementFormat,
                                                                                    valuetype [Engine]Engine.Graphics.VertexElementSemantic)
    IL_0089:  stelem.ref
    IL_008a:  newobj     instance void [Engine]Engine.Graphics.VertexDeclaration::.ctor(class [Engine]Engine.Graphics.VertexElement[])
    IL_008f:  stfld      class [Engine]Engine.Graphics.VertexDeclaration Game.SubsystemSky::m_starsVertexDeclaration
    IL_0094:  ldarg.0
    IL_0095:  ldc.i4.1
    IL_0096:  stfld      bool Game.SubsystemSky::DrawSkyEnabled
    IL_009b:  ldarg.0
    IL_009c:  ldc.i4.3
    IL_009d:  newarr     [System.Runtime]System.Int32
    IL_00a2:  dup
    IL_00a3:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=12' '<PrivateImplementationDetails>'::'9ECBBB0CB6C0E4FF148E2AC81D5CDEF01D97EAA3'
    IL_00a8:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_00ad:  stfld      int32[] Game.SubsystemSky::m_drawOrders
    IL_00b2:  ldarg.0
    IL_00b3:  ldc.i4.4
    IL_00b4:  newarr     [System.Runtime]System.Single
    IL_00b9:  dup
    IL_00ba:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' '<PrivateImplementationDetails>'::'849FC91250EA16FE392C9F15B55D2BD1487B23F0'
    IL_00bf:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_00c4:  stfld      float32[] Game.SubsystemSky::m_cloudsLayerRadii
    IL_00c9:  ldarg.0
    IL_00ca:  ldc.i4.5
    IL_00cb:  newarr     [Engine]Engine.Color
    IL_00d0:  stfld      valuetype [Engine]Engine.Color[] Game.SubsystemSky::m_cloudsLayerColors
    IL_00d5:  ldarg.0
    IL_00d6:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_00db:  ret
  } // end of method SubsystemSky::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       71 (0x47)
    .maxstack  3
    IL_0000:  ldc.i4.1
    IL_0001:  ldc.i4.0
    IL_0002:  ldc.i4.0
    IL_0003:  newobj     instance void [Engine]Engine.Graphics.UnlitShader::.ctor(bool,
                                                                                  bool,
                                                                                  bool)
    IL_0008:  stsfld     class [Engine]Engine.Graphics.UnlitShader Game.SubsystemSky::m_shaderFlat
    IL_000d:  ldc.i4.1
    IL_000e:  ldc.i4.1
    IL_000f:  ldc.i4.0
    IL_0010:  newobj     instance void [Engine]Engine.Graphics.UnlitShader::.ctor(bool,
                                                                                  bool,
                                                                                  bool)
    IL_0015:  stsfld     class [Engine]Engine.Graphics.UnlitShader Game.SubsystemSky::m_shaderTextured
    IL_001a:  ldc.i4.6
    IL_001b:  newarr     [System.Runtime]System.Int32
    IL_0020:  dup
    IL_0021:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=24' '<PrivateImplementationDetails>'::'747DA013591C626557CA3624FD03327F7AB64E67'
    IL_0026:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_002b:  stsfld     int32[] Game.SubsystemSky::m_lightValuesMoonless
    IL_0030:  ldc.i4.6
    IL_0031:  newarr     [System.Runtime]System.Int32
    IL_0036:  dup
    IL_0037:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=24' '<PrivateImplementationDetails>'::A50DEDA16E4876F791AB2953D8FCA8D8F9A4DE70
    IL_003c:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0041:  stsfld     int32[] Game.SubsystemSky::m_lightValuesNormal
    IL_0046:  ret
  } // end of method SubsystemSky::.cctor

  .property instance float32 SkyLightIntensity()
  {
    .get instance float32 Game.SubsystemSky::get_SkyLightIntensity()
    .set instance void Game.SubsystemSky::set_SkyLightIntensity(float32)
  } // end of property SubsystemSky::SkyLightIntensity
  .property instance int32 MoonPhase()
  {
    .get instance int32 Game.SubsystemSky::get_MoonPhase()
    .set instance void Game.SubsystemSky::set_MoonPhase(int32)
  } // end of property SubsystemSky::MoonPhase
  .property instance int32 SkyLightValue()
  {
    .get instance int32 Game.SubsystemSky::get_SkyLightValue()
    .set instance void Game.SubsystemSky::set_SkyLightValue(int32)
  } // end of property SubsystemSky::SkyLightValue
  .property instance float32 VisibilityRange()
  {
    .get instance float32 Game.SubsystemSky::get_VisibilityRange()
    .set instance void Game.SubsystemSky::set_VisibilityRange(float32)
  } // end of property SubsystemSky::VisibilityRange
  .property instance float32 ViewUnderWaterDepth()
  {
    .get instance float32 Game.SubsystemSky::get_ViewUnderWaterDepth()
    .set instance void Game.SubsystemSky::set_ViewUnderWaterDepth(float32)
  } // end of property SubsystemSky::ViewUnderWaterDepth
  .property instance float32 ViewUnderMagmaDepth()
  {
    .get instance float32 Game.SubsystemSky::get_ViewUnderMagmaDepth()
    .set instance void Game.SubsystemSky::set_ViewUnderMagmaDepth(float32)
  } // end of property SubsystemSky::ViewUnderMagmaDepth
  .property instance valuetype [Engine]Engine.Color
          ViewFogColor()
  {
    .get instance valuetype [Engine]Engine.Color Game.SubsystemSky::get_ViewFogColor()
  } // end of property SubsystemSky::ViewFogColor
  .property instance valuetype [Engine]Engine.Vector2
          ViewFogRange()
  {
    .get instance valuetype [Engine]Engine.Vector2 Game.SubsystemSky::get_ViewFogRange()
  } // end of property SubsystemSky::ViewFogRange
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemSky::get_UpdateOrder()
  } // end of property SubsystemSky::UpdateOrder
  .property instance int32[] DrawOrders()
  {
    .get instance int32[] Game.SubsystemSky::get_DrawOrders()
  } // end of property SubsystemSky::DrawOrders
} // end of class Game.SubsystemSky