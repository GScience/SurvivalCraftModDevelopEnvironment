.class public auto ansi beforefieldinit Game.PrecipitationShaftParticleSystem
       extends Game.ParticleSystemBase
{
  .class auto ansi nested public beforefieldinit Particle
         extends [System.Runtime]System.Object
  {
    .field public bool IsActive
    .field public valuetype [Engine]Engine.Vector3 Position
    .field public valuetype [Engine]Engine.Vector2 TexCoord1
    .field public valuetype [Engine]Engine.Vector2 TexCoord2
    .field public valuetype [Engine]Engine.Vector2 TexCoord3
    .field public valuetype [Engine]Engine.Vector2 TexCoord4
    .field public float32 Speed
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method Particle::.ctor

  } // end of class Particle

  .field private static literal float32 m_viewHeight = float32(8.)
  .field private static literal int32 m_particlesCount = int32(0x00000004)
  .field private class Game.View m_view
  .field private class Game.Random m_random
  .field private class [Engine]Engine.Graphics.TexturedBatch3D m_batch
  .field private class Game.PrecipitationShaftParticleSystem/Particle[] m_particles
  .field private bool m_isVisible
  .field private bool m_isEmpty
  .field private valuetype [System.Runtime]System.Nullable`1<float32> m_lastViewY
  .field private float32 m_toCreate
  .field private float32 m_averageSpeed
  .field private class [Engine]Engine.Graphics.Texture2D m_texture
  .field private valuetype [Engine]Engine.Vector2 m_size
  .field private bool m_useTriangularParticles
  .field private bool m_useVerticalBillboarding
  .field private valuetype Game.PrecipitationType m_precipitationType
  .field private valuetype [Engine]Engine.Vector2 m_position
  .field private bool m_isResetPending
  .field private valuetype [Engine]Engine.Color '<Color>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<Intensity>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<YLimit>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.Random random) cil managed
  {
    // 代码大小       65 (0x41)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.4
    IL_0002:  newarr     Game.PrecipitationShaftParticleSystem/Particle
    IL_0007:  stfld      class Game.PrecipitationShaftParticleSystem/Particle[] Game.PrecipitationShaftParticleSystem::m_particles
    IL_000c:  ldarg.0
    IL_000d:  ldc.i4.1
    IL_000e:  stfld      bool Game.PrecipitationShaftParticleSystem::m_isResetPending
    IL_0013:  ldarg.0
    IL_0014:  call       instance void Game.ParticleSystemBase::.ctor()
    IL_0019:  ldarg.0
    IL_001a:  ldarg.1
    IL_001b:  stfld      class Game.Random Game.PrecipitationShaftParticleSystem::m_random
    IL_0020:  ldc.i4.0
    IL_0021:  stloc.0
    IL_0022:  br.s       IL_0035

    IL_0024:  ldarg.0
    IL_0025:  ldfld      class Game.PrecipitationShaftParticleSystem/Particle[] Game.PrecipitationShaftParticleSystem::m_particles
    IL_002a:  ldloc.0
    IL_002b:  newobj     instance void Game.PrecipitationShaftParticleSystem/Particle::.ctor()
    IL_0030:  stelem.ref
    IL_0031:  ldloc.0
    IL_0032:  ldc.i4.1
    IL_0033:  add
    IL_0034:  stloc.0
    IL_0035:  ldloc.0
    IL_0036:  ldarg.0
    IL_0037:  ldfld      class Game.PrecipitationShaftParticleSystem/Particle[] Game.PrecipitationShaftParticleSystem::m_particles
    IL_003c:  ldlen
    IL_003d:  conv.i4
    IL_003e:  blt.s      IL_0024

    IL_0040:  ret
  } // end of method PrecipitationShaftParticleSystem::.ctor

  .method public hidebysig specialname instance valuetype [Engine]Engine.Color 
          get_Color() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Color Game.PrecipitationShaftParticleSystem::'<Color>k__BackingField'
    IL_0006:  ret
  } // end of method PrecipitationShaftParticleSystem::get_Color

  .method public hidebysig specialname instance void 
          set_Color(valuetype [Engine]Engine.Color 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Color Game.PrecipitationShaftParticleSystem::'<Color>k__BackingField'
    IL_0007:  ret
  } // end of method PrecipitationShaftParticleSystem::set_Color

  .method public hidebysig specialname instance float32 
          get_Intensity() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.PrecipitationShaftParticleSystem::'<Intensity>k__BackingField'
    IL_0006:  ret
  } // end of method PrecipitationShaftParticleSystem::get_Intensity

  .method public hidebysig specialname instance void 
          set_Intensity(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.PrecipitationShaftParticleSystem::'<Intensity>k__BackingField'
    IL_0007:  ret
  } // end of method PrecipitationShaftParticleSystem::set_Intensity

  .method public hidebysig specialname instance float32 
          get_YLimit() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.PrecipitationShaftParticleSystem::'<YLimit>k__BackingField'
    IL_0006:  ret
  } // end of method PrecipitationShaftParticleSystem::get_YLimit

  .method public hidebysig specialname instance void 
          set_YLimit(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.PrecipitationShaftParticleSystem::'<YLimit>k__BackingField'
    IL_0007:  ret
  } // end of method PrecipitationShaftParticleSystem::set_YLimit

  .method public hidebysig instance void 
          Reset(class Game.View view,
                valuetype Game.PrecipitationType precipitationType,
                valuetype [Engine]Engine.Vector2 position) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.View Game.PrecipitationShaftParticleSystem::m_view
    IL_0007:  ldarg.0
    IL_0008:  ldarg.2
    IL_0009:  stfld      valuetype Game.PrecipitationType Game.PrecipitationShaftParticleSystem::m_precipitationType
    IL_000e:  ldarg.0
    IL_000f:  ldarg.3
    IL_0010:  stfld      valuetype [Engine]Engine.Vector2 Game.PrecipitationShaftParticleSystem::m_position
    IL_0015:  ldarg.0
    IL_0016:  ldc.i4.1
    IL_0017:  stfld      bool Game.PrecipitationShaftParticleSystem::m_isResetPending
    IL_001c:  ret
  } // end of method PrecipitationShaftParticleSystem::Reset

  .method public hidebysig virtual instance bool 
          Simulate(float32 dt) cil managed
  {
    // 代码大小       888 (0x378)
    .maxstack  5
    .locals init (class Game.Camera V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             valuetype [Engine]Engine.Vector2 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5,
             float32 V_6,
             float32 V_7,
             float32 V_8,
             float32 V_9,
             int32 V_10,
             int32 V_11,
             class Game.PrecipitationShaftParticleSystem/Particle V_12)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.View Game.PrecipitationShaftParticleSystem::m_view
    IL_0006:  callvirt   instance class Game.Camera Game.View::get_ActiveCamera()
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldfld      bool Game.PrecipitationShaftParticleSystem::m_isEmpty
    IL_0012:  brfalse.s  IL_0040

    IL_0014:  ldarg.0
    IL_0015:  call       instance float32 Game.PrecipitationShaftParticleSystem::get_Intensity()
    IL_001a:  ldc.r4     0.0
    IL_001f:  ble.un     IL_0360

    IL_0024:  ldarg.0
    IL_0025:  call       instance float32 Game.PrecipitationShaftParticleSystem::get_YLimit()
    IL_002a:  ldloc.0
    IL_002b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_0030:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0035:  ldc.r4     4.
    IL_003a:  add
    IL_003b:  bge.un     IL_0360

    IL_0040:  ldloc.0
    IL_0041:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewDirection()
    IL_0046:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_004b:  ldloc.0
    IL_004c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewDirection()
    IL_0051:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0056:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_005b:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Normalize(valuetype [Engine]Engine.Vector2)
    IL_0060:  stloc.1
    IL_0061:  ldarg.0
    IL_0062:  ldflda     valuetype [Engine]Engine.Vector2 Game.PrecipitationShaftParticleSystem::m_position
    IL_0067:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_006c:  ldc.r4     0.5
    IL_0071:  add
    IL_0072:  ldloc.0
    IL_0073:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_0078:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_007d:  sub
    IL_007e:  ldc.r4     0.69999999
    IL_0083:  ldloc.1
    IL_0084:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0089:  mul
    IL_008a:  add
    IL_008b:  ldarg.0
    IL_008c:  ldflda     valuetype [Engine]Engine.Vector2 Game.PrecipitationShaftParticleSystem::m_position
    IL_0091:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0096:  ldc.r4     0.5
    IL_009b:  add
    IL_009c:  ldloc.0
    IL_009d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_00a2:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00a7:  sub
    IL_00a8:  ldc.r4     0.69999999
    IL_00ad:  ldloc.1
    IL_00ae:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00b3:  mul
    IL_00b4:  add
    IL_00b5:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00ba:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Normalize(valuetype [Engine]Engine.Vector2)
    IL_00bf:  stloc.2
    IL_00c0:  ldloc.1
    IL_00c1:  ldloc.2
    IL_00c2:  call       float32 [Engine]Engine.Vector2::Dot(valuetype [Engine]Engine.Vector2,
                                                             valuetype [Engine]Engine.Vector2)
    IL_00c7:  stloc.3
    IL_00c8:  ldarg.0
    IL_00c9:  ldloc.3
    IL_00ca:  ldc.r4     0.60000002
    IL_00cf:  cgt
    IL_00d1:  stfld      bool Game.PrecipitationShaftParticleSystem::m_isVisible
    IL_00d6:  ldarg.0
    IL_00d7:  ldfld      bool Game.PrecipitationShaftParticleSystem::m_isVisible
    IL_00dc:  brfalse    IL_0359

    IL_00e1:  ldarg.0
    IL_00e2:  ldfld      bool Game.PrecipitationShaftParticleSystem::m_isResetPending
    IL_00e7:  brfalse.s  IL_00f6

    IL_00e9:  ldarg.0
    IL_00ea:  ldc.i4.0
    IL_00eb:  stfld      bool Game.PrecipitationShaftParticleSystem::m_isResetPending
    IL_00f0:  ldarg.0
    IL_00f1:  call       instance void Game.PrecipitationShaftParticleSystem::PerformReset()
    IL_00f6:  ldloc.0
    IL_00f7:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_00fc:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0101:  stloc.s    V_4
    IL_0103:  ldloc.s    V_4
    IL_0105:  ldc.r4     4.
    IL_010a:  sub
    IL_010b:  stloc.s    V_5
    IL_010d:  ldloc.s    V_4
    IL_010f:  ldc.r4     4.
    IL_0114:  add
    IL_0115:  stloc.s    V_6
    IL_0117:  ldc.r4     0.0
    IL_011c:  stloc.s    V_7
    IL_011e:  ldc.r4     0.0
    IL_0123:  stloc.s    V_8
    IL_0125:  ldarg.0
    IL_0126:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.PrecipitationShaftParticleSystem::m_lastViewY
    IL_012b:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_0130:  brfalse.s  IL_0173

    IL_0132:  ldloc.s    V_4
    IL_0134:  ldarg.0
    IL_0135:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.PrecipitationShaftParticleSystem::m_lastViewY
    IL_013a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_013f:  bge.un.s   IL_015a

    IL_0141:  ldloc.s    V_5
    IL_0143:  stloc.s    V_7
    IL_0145:  ldarg.0
    IL_0146:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.PrecipitationShaftParticleSystem::m_lastViewY
    IL_014b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0150:  ldc.r4     4.
    IL_0155:  sub
    IL_0156:  stloc.s    V_8
    IL_0158:  br.s       IL_017b

    IL_015a:  ldarg.0
    IL_015b:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.PrecipitationShaftParticleSystem::m_lastViewY
    IL_0160:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0165:  ldc.r4     4.
    IL_016a:  add
    IL_016b:  stloc.s    V_7
    IL_016d:  ldloc.s    V_6
    IL_016f:  stloc.s    V_8
    IL_0171:  br.s       IL_017b

    IL_0173:  ldloc.s    V_5
    IL_0175:  stloc.s    V_7
    IL_0177:  ldloc.s    V_6
    IL_0179:  stloc.s    V_8
    IL_017b:  ldloc.s    V_8
    IL_017d:  ldloc.s    V_7
    IL_017f:  sub
    IL_0180:  ldc.r4     8.
    IL_0185:  div
    IL_0186:  ldarg.0
    IL_0187:  ldfld      class Game.PrecipitationShaftParticleSystem/Particle[] Game.PrecipitationShaftParticleSystem::m_particles
    IL_018c:  ldlen
    IL_018d:  conv.i4
    IL_018e:  conv.r4
    IL_018f:  mul
    IL_0190:  ldarg.0
    IL_0191:  call       instance float32 Game.PrecipitationShaftParticleSystem::get_Intensity()
    IL_0196:  mul
    IL_0197:  stloc.s    V_9
    IL_0199:  ldloc.s    V_9
    IL_019b:  conv.i4
    IL_019c:  ldarg.0
    IL_019d:  ldfld      class Game.Random Game.PrecipitationShaftParticleSystem::m_random
    IL_01a2:  ldc.r4     0.0
    IL_01a7:  ldc.r4     1.
    IL_01ac:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01b1:  ldloc.s    V_9
    IL_01b3:  ldloc.s    V_9
    IL_01b5:  conv.i4
    IL_01b6:  conv.r4
    IL_01b7:  sub
    IL_01b8:  blt.s      IL_01bd

    IL_01ba:  ldc.i4.0
    IL_01bb:  br.s       IL_01be

    IL_01bd:  ldc.i4.1
    IL_01be:  add
    IL_01bf:  stloc.s    V_10
    IL_01c1:  ldarg.0
    IL_01c2:  ldloc.s    V_4
    IL_01c4:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_01c9:  stfld      valuetype [System.Runtime]System.Nullable`1<float32> Game.PrecipitationShaftParticleSystem::m_lastViewY
    IL_01ce:  ldarg.0
    IL_01cf:  ldarg.0
    IL_01d0:  ldfld      float32 Game.PrecipitationShaftParticleSystem::m_toCreate
    IL_01d5:  ldarg.0
    IL_01d6:  ldfld      class Game.PrecipitationShaftParticleSystem/Particle[] Game.PrecipitationShaftParticleSystem::m_particles
    IL_01db:  ldlen
    IL_01dc:  conv.i4
    IL_01dd:  conv.r4
    IL_01de:  ldarg.0
    IL_01df:  call       instance float32 Game.PrecipitationShaftParticleSystem::get_Intensity()
    IL_01e4:  mul
    IL_01e5:  ldc.r4     8.
    IL_01ea:  div
    IL_01eb:  ldarg.0
    IL_01ec:  ldfld      float32 Game.PrecipitationShaftParticleSystem::m_averageSpeed
    IL_01f1:  mul
    IL_01f2:  ldarg.1
    IL_01f3:  mul
    IL_01f4:  add
    IL_01f5:  stfld      float32 Game.PrecipitationShaftParticleSystem::m_toCreate
    IL_01fa:  ldarg.0
    IL_01fb:  ldc.i4.1
    IL_01fc:  stfld      bool Game.PrecipitationShaftParticleSystem::m_isEmpty
    IL_0201:  ldc.i4.0
    IL_0202:  stloc.s    V_11
    IL_0204:  br         IL_0330

    IL_0209:  ldarg.0
    IL_020a:  ldfld      class Game.PrecipitationShaftParticleSystem/Particle[] Game.PrecipitationShaftParticleSystem::m_particles
    IL_020f:  ldloc.s    V_11
    IL_0211:  ldelem.ref
    IL_0212:  stloc.s    V_12
    IL_0214:  ldloc.s    V_12
    IL_0216:  ldfld      bool Game.PrecipitationShaftParticleSystem/Particle::IsActive
    IL_021b:  brfalse.s  IL_0283

    IL_021d:  ldloc.s    V_12
    IL_021f:  ldflda     valuetype [Engine]Engine.Vector3 Game.PrecipitationShaftParticleSystem/Particle::Position
    IL_0224:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0229:  ldloc.s    V_5
    IL_022b:  blt.un.s   IL_0276

    IL_022d:  ldloc.s    V_12
    IL_022f:  ldflda     valuetype [Engine]Engine.Vector3 Game.PrecipitationShaftParticleSystem/Particle::Position
    IL_0234:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0239:  ldloc.s    V_6
    IL_023b:  bgt.un.s   IL_0276

    IL_023d:  ldloc.s    V_12
    IL_023f:  ldflda     valuetype [Engine]Engine.Vector3 Game.PrecipitationShaftParticleSystem/Particle::Position
    IL_0244:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0249:  ldarg.0
    IL_024a:  call       instance float32 Game.PrecipitationShaftParticleSystem::get_YLimit()
    IL_024f:  blt.un.s   IL_0276

    IL_0251:  ldloc.s    V_12
    IL_0253:  ldflda     valuetype [Engine]Engine.Vector3 Game.PrecipitationShaftParticleSystem/Particle::Position
    IL_0258:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_025d:  dup
    IL_025e:  ldind.r4
    IL_025f:  ldloc.s    V_12
    IL_0261:  ldfld      float32 Game.PrecipitationShaftParticleSystem/Particle::Speed
    IL_0266:  ldarg.1
    IL_0267:  mul
    IL_0268:  sub
    IL_0269:  stind.r4
    IL_026a:  ldarg.0
    IL_026b:  ldc.i4.0
    IL_026c:  stfld      bool Game.PrecipitationShaftParticleSystem::m_isEmpty
    IL_0271:  br         IL_032a

    IL_0276:  ldloc.s    V_12
    IL_0278:  ldc.i4.0
    IL_0279:  stfld      bool Game.PrecipitationShaftParticleSystem/Particle::IsActive
    IL_027e:  br         IL_032a

    IL_0283:  ldloc.s    V_10
    IL_0285:  ldc.i4.0
    IL_0286:  ble.s      IL_02c9

    IL_0288:  ldloc.s    V_12
    IL_028a:  ldflda     valuetype [Engine]Engine.Vector3 Game.PrecipitationShaftParticleSystem/Particle::Position
    IL_028f:  ldarg.0
    IL_0290:  ldfld      class Game.Random Game.PrecipitationShaftParticleSystem::m_random
    IL_0295:  ldloc.s    V_7
    IL_0297:  ldloc.s    V_8
    IL_0299:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_029e:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_02a3:  ldloc.s    V_12
    IL_02a5:  ldloc.s    V_12
    IL_02a7:  ldflda     valuetype [Engine]Engine.Vector3 Game.PrecipitationShaftParticleSystem/Particle::Position
    IL_02ac:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_02b1:  ldarg.0
    IL_02b2:  call       instance float32 Game.PrecipitationShaftParticleSystem::get_YLimit()
    IL_02b7:  clt.un
    IL_02b9:  ldc.i4.0
    IL_02ba:  ceq
    IL_02bc:  stfld      bool Game.PrecipitationShaftParticleSystem/Particle::IsActive
    IL_02c1:  ldloc.s    V_10
    IL_02c3:  ldc.i4.1
    IL_02c4:  sub
    IL_02c5:  stloc.s    V_10
    IL_02c7:  br.s       IL_032a

    IL_02c9:  ldarg.0
    IL_02ca:  ldfld      float32 Game.PrecipitationShaftParticleSystem::m_toCreate
    IL_02cf:  ldc.r4     1.
    IL_02d4:  blt.un.s   IL_032a

    IL_02d6:  ldloc.s    V_12
    IL_02d8:  ldflda     valuetype [Engine]Engine.Vector3 Game.PrecipitationShaftParticleSystem/Particle::Position
    IL_02dd:  ldarg.0
    IL_02de:  ldfld      class Game.Random Game.PrecipitationShaftParticleSystem::m_random
    IL_02e3:  ldloc.s    V_6
    IL_02e5:  ldarg.0
    IL_02e6:  ldfld      float32 Game.PrecipitationShaftParticleSystem::m_averageSpeed
    IL_02eb:  ldarg.1
    IL_02ec:  mul
    IL_02ed:  sub
    IL_02ee:  ldloc.s    V_6
    IL_02f0:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_02f5:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_02fa:  ldloc.s    V_12
    IL_02fc:  ldloc.s    V_12
    IL_02fe:  ldflda     valuetype [Engine]Engine.Vector3 Game.PrecipitationShaftParticleSystem/Particle::Position
    IL_0303:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0308:  ldarg.0
    IL_0309:  call       instance float32 Game.PrecipitationShaftParticleSystem::get_YLimit()
    IL_030e:  clt.un
    IL_0310:  ldc.i4.0
    IL_0311:  ceq
    IL_0313:  stfld      bool Game.PrecipitationShaftParticleSystem/Particle::IsActive
    IL_0318:  ldarg.0
    IL_0319:  ldarg.0
    IL_031a:  ldfld      float32 Game.PrecipitationShaftParticleSystem::m_toCreate
    IL_031f:  ldc.r4     1.
    IL_0324:  sub
    IL_0325:  stfld      float32 Game.PrecipitationShaftParticleSystem::m_toCreate
    IL_032a:  ldloc.s    V_11
    IL_032c:  ldc.i4.1
    IL_032d:  add
    IL_032e:  stloc.s    V_11
    IL_0330:  ldloc.s    V_11
    IL_0332:  ldarg.0
    IL_0333:  ldfld      class Game.PrecipitationShaftParticleSystem/Particle[] Game.PrecipitationShaftParticleSystem::m_particles
    IL_0338:  ldlen
    IL_0339:  conv.i4
    IL_033a:  blt        IL_0209

    IL_033f:  ldarg.0
    IL_0340:  ldarg.0
    IL_0341:  ldfld      float32 Game.PrecipitationShaftParticleSystem::m_toCreate
    IL_0346:  ldarg.0
    IL_0347:  ldfld      float32 Game.PrecipitationShaftParticleSystem::m_toCreate
    IL_034c:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0351:  sub
    IL_0352:  stfld      float32 Game.PrecipitationShaftParticleSystem::m_toCreate
    IL_0357:  br.s       IL_0360

    IL_0359:  ldarg.0
    IL_035a:  ldc.i4.1
    IL_035b:  stfld      bool Game.PrecipitationShaftParticleSystem::m_isResetPending
    IL_0360:  ldarg.0
    IL_0361:  ldfld      bool Game.PrecipitationShaftParticleSystem::m_isEmpty
    IL_0366:  brfalse.s  IL_0376

    IL_0368:  ldarg.0
    IL_0369:  call       instance float32 Game.PrecipitationShaftParticleSystem::get_Intensity()
    IL_036e:  ldc.r4     0.0
    IL_0373:  ceq
    IL_0375:  ret

    IL_0376:  ldc.i4.0
    IL_0377:  ret
  } // end of method PrecipitationShaftParticleSystem::Simulate

  .method public hidebysig virtual instance void 
          Draw(class Game.Camera camera) cil managed
  {
    // 代码大小       826 (0x33a)
    .maxstack  10
    .locals init (float32 V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             valuetype [Engine]Engine.Vector3 V_6,
             valuetype [Engine]Engine.Vector3 V_7,
             int32 V_8,
             class Game.PrecipitationShaftParticleSystem/Particle V_9,
             valuetype [Engine]Engine.Vector3 V_10,
             valuetype [Engine]Engine.Vector3 V_11,
             valuetype [Engine]Engine.Vector3 V_12,
             float32 V_13,
             valuetype [Engine]Engine.Color V_14,
             valuetype [Engine]Engine.Color V_15,
             valuetype [Engine]Engine.Vector3 V_16,
             valuetype [Engine]Engine.Vector3 V_17,
             valuetype [Engine]Engine.Vector3 V_18,
             valuetype [Engine]Engine.Vector3 V_19,
             int32 V_20,
             class Game.PrecipitationShaftParticleSystem/Particle V_21,
             valuetype [Engine]Engine.Vector3 V_22,
             valuetype [Engine]Engine.Vector3 V_23,
             valuetype [Engine]Engine.Vector3 V_24,
             valuetype [Engine]Engine.Vector3 V_25,
             float32 V_26,
             valuetype [Engine]Engine.Color V_27)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.PrecipitationShaftParticleSystem::m_isVisible
    IL_0006:  brfalse.s  IL_0010

    IL_0008:  ldarg.0
    IL_0009:  ldfld      bool Game.PrecipitationShaftParticleSystem::m_isEmpty
    IL_000e:  brfalse.s  IL_0011

    IL_0010:  ret

    IL_0011:  ldarg.1
    IL_0012:  callvirt   instance class Game.View Game.Camera::get_View()
    IL_0017:  ldarg.0
    IL_0018:  ldfld      class Game.View Game.PrecipitationShaftParticleSystem::m_view
    IL_001d:  beq.s      IL_0020

    IL_001f:  ret

    IL_0020:  ldarg.0
    IL_0021:  ldfld      class [Engine]Engine.Graphics.TexturedBatch3D Game.PrecipitationShaftParticleSystem::m_batch
    IL_0026:  brtrue.s   IL_0056

    IL_0028:  ldarg.0
    IL_0029:  ldarg.0
    IL_002a:  ldfld      class Game.SubsystemParticles Game.ParticleSystemBase::SubsystemParticles
    IL_002f:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemParticles::PrimitivesRenderer
    IL_0034:  ldarg.0
    IL_0035:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.PrecipitationShaftParticleSystem::m_texture
    IL_003a:  ldc.i4.0
    IL_003b:  ldc.i4.0
    IL_003c:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::DepthRead
    IL_0041:  ldnull
    IL_0042:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::AlphaBlend
    IL_0047:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
    IL_004c:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_0051:  stfld      class [Engine]Engine.Graphics.TexturedBatch3D Game.PrecipitationShaftParticleSystem::m_batch
    IL_0056:  ldarg.1
    IL_0057:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_005c:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0061:  ldc.r4     4.
    IL_0066:  add
    IL_0067:  stloc.0
    IL_0068:  ldarg.1
    IL_0069:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewDirection()
    IL_006e:  stloc.1
    IL_006f:  ldloc.1
    IL_0070:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0075:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_007a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_007f:  stloc.2
    IL_0080:  ldarg.0
    IL_0081:  ldfld      bool Game.PrecipitationShaftParticleSystem::m_useVerticalBillboarding
    IL_0086:  brtrue.s   IL_0096

    IL_0088:  ldloc.1
    IL_0089:  ldloc.2
    IL_008a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_008f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0094:  br.s       IL_009b

    IL_0096:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_009b:  ldloc.2
    IL_009c:  ldarg.0
    IL_009d:  ldflda     valuetype [Engine]Engine.Vector2 Game.PrecipitationShaftParticleSystem::m_size
    IL_00a2:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00a7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_00ac:  stloc.3
    IL_00ad:  ldarg.0
    IL_00ae:  ldflda     valuetype [Engine]Engine.Vector2 Game.PrecipitationShaftParticleSystem::m_size
    IL_00b3:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00b8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_00bd:  stloc.s    V_4
    IL_00bf:  ldarg.0
    IL_00c0:  ldfld      bool Game.PrecipitationShaftParticleSystem::m_useTriangularParticles
    IL_00c5:  brfalse    IL_01eb

    IL_00ca:  ldloc.3
    IL_00cb:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_00d0:  ldloc.s    V_4
    IL_00d2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00d7:  stloc.s    V_5
    IL_00d9:  ldloc.3
    IL_00da:  ldloc.s    V_4
    IL_00dc:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00e1:  stloc.s    V_6
    IL_00e3:  ldloc.s    V_4
    IL_00e5:  stloc.s    V_7
    IL_00e7:  ldc.i4.0
    IL_00e8:  stloc.s    V_8
    IL_00ea:  br         IL_01db

    IL_00ef:  ldarg.0
    IL_00f0:  ldfld      class Game.PrecipitationShaftParticleSystem/Particle[] Game.PrecipitationShaftParticleSystem::m_particles
    IL_00f5:  ldloc.s    V_8
    IL_00f7:  ldelem.ref
    IL_00f8:  stloc.s    V_9
    IL_00fa:  ldloc.s    V_9
    IL_00fc:  ldfld      bool Game.PrecipitationShaftParticleSystem/Particle::IsActive
    IL_0101:  brfalse    IL_01d5

    IL_0106:  ldloc.s    V_9
    IL_0108:  ldfld      valuetype [Engine]Engine.Vector3 Game.PrecipitationShaftParticleSystem/Particle::Position
    IL_010d:  ldloc.s    V_5
    IL_010f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0114:  stloc.s    V_10
    IL_0116:  ldloc.s    V_9
    IL_0118:  ldfld      valuetype [Engine]Engine.Vector3 Game.PrecipitationShaftParticleSystem/Particle::Position
    IL_011d:  ldloc.s    V_6
    IL_011f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0124:  stloc.s    V_11
    IL_0126:  ldloc.s    V_9
    IL_0128:  ldfld      valuetype [Engine]Engine.Vector3 Game.PrecipitationShaftParticleSystem/Particle::Position
    IL_012d:  ldloc.s    V_7
    IL_012f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0134:  stloc.s    V_12
    IL_0136:  ldc.r4     0.60000002
    IL_013b:  ldloc.0
    IL_013c:  ldloc.s    V_9
    IL_013e:  ldflda     valuetype [Engine]Engine.Vector3 Game.PrecipitationShaftParticleSystem/Particle::Position
    IL_0143:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0148:  sub
    IL_0149:  mul
    IL_014a:  ldc.r4     1.
    IL_014f:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0154:  stloc.s    V_13
    IL_0156:  ldloca.s   V_14
    IL_0158:  ldarg.0
    IL_0159:  call       instance valuetype [Engine]Engine.Color Game.PrecipitationShaftParticleSystem::get_Color()
    IL_015e:  stloc.s    V_15
    IL_0160:  ldloca.s   V_15
    IL_0162:  call       instance uint8 [Engine]Engine.Color::get_R()
    IL_0167:  conv.r4
    IL_0168:  ldloc.s    V_13
    IL_016a:  mul
    IL_016b:  conv.u1
    IL_016c:  ldarg.0
    IL_016d:  call       instance valuetype [Engine]Engine.Color Game.PrecipitationShaftParticleSystem::get_Color()
    IL_0172:  stloc.s    V_15
    IL_0174:  ldloca.s   V_15
    IL_0176:  call       instance uint8 [Engine]Engine.Color::get_G()
    IL_017b:  conv.r4
    IL_017c:  ldloc.s    V_13
    IL_017e:  mul
    IL_017f:  conv.u1
    IL_0180:  ldarg.0
    IL_0181:  call       instance valuetype [Engine]Engine.Color Game.PrecipitationShaftParticleSystem::get_Color()
    IL_0186:  stloc.s    V_15
    IL_0188:  ldloca.s   V_15
    IL_018a:  call       instance uint8 [Engine]Engine.Color::get_B()
    IL_018f:  conv.r4
    IL_0190:  ldloc.s    V_13
    IL_0192:  mul
    IL_0193:  conv.u1
    IL_0194:  ldarg.0
    IL_0195:  call       instance valuetype [Engine]Engine.Color Game.PrecipitationShaftParticleSystem::get_Color()
    IL_019a:  stloc.s    V_15
    IL_019c:  ldloca.s   V_15
    IL_019e:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_01a3:  conv.r4
    IL_01a4:  ldloc.s    V_13
    IL_01a6:  mul
    IL_01a7:  conv.u1
    IL_01a8:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8,
                                                                   uint8)
    IL_01ad:  ldarg.0
    IL_01ae:  ldfld      class [Engine]Engine.Graphics.TexturedBatch3D Game.PrecipitationShaftParticleSystem::m_batch
    IL_01b3:  ldloc.s    V_10
    IL_01b5:  ldloc.s    V_11
    IL_01b7:  ldloc.s    V_12
    IL_01b9:  ldloc.s    V_9
    IL_01bb:  ldfld      valuetype [Engine]Engine.Vector2 Game.PrecipitationShaftParticleSystem/Particle::TexCoord1
    IL_01c0:  ldloc.s    V_9
    IL_01c2:  ldfld      valuetype [Engine]Engine.Vector2 Game.PrecipitationShaftParticleSystem/Particle::TexCoord2
    IL_01c7:  ldloc.s    V_9
    IL_01c9:  ldfld      valuetype [Engine]Engine.Vector2 Game.PrecipitationShaftParticleSystem/Particle::TexCoord3
    IL_01ce:  ldloc.s    V_14
    IL_01d0:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueTriangle(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color)
    IL_01d5:  ldloc.s    V_8
    IL_01d7:  ldc.i4.1
    IL_01d8:  add
    IL_01d9:  stloc.s    V_8
    IL_01db:  ldloc.s    V_8
    IL_01dd:  ldarg.0
    IL_01de:  ldfld      class Game.PrecipitationShaftParticleSystem/Particle[] Game.PrecipitationShaftParticleSystem::m_particles
    IL_01e3:  ldlen
    IL_01e4:  conv.i4
    IL_01e5:  blt        IL_00ef

    IL_01ea:  ret

    IL_01eb:  ldloc.3
    IL_01ec:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_01f1:  ldloc.s    V_4
    IL_01f3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_01f8:  stloc.s    V_16
    IL_01fa:  ldloc.3
    IL_01fb:  ldloc.s    V_4
    IL_01fd:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0202:  stloc.s    V_17
    IL_0204:  ldloc.3
    IL_0205:  ldloc.s    V_4
    IL_0207:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_020c:  stloc.s    V_18
    IL_020e:  ldloc.3
    IL_020f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_0214:  ldloc.s    V_4
    IL_0216:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_021b:  stloc.s    V_19
    IL_021d:  ldc.i4.0
    IL_021e:  stloc.s    V_20
    IL_0220:  br         IL_032a

    IL_0225:  ldarg.0
    IL_0226:  ldfld      class Game.PrecipitationShaftParticleSystem/Particle[] Game.PrecipitationShaftParticleSystem::m_particles
    IL_022b:  ldloc.s    V_20
    IL_022d:  ldelem.ref
    IL_022e:  stloc.s    V_21
    IL_0230:  ldloc.s    V_21
    IL_0232:  ldfld      bool Game.PrecipitationShaftParticleSystem/Particle::IsActive
    IL_0237:  brfalse    IL_0324

    IL_023c:  ldloc.s    V_21
    IL_023e:  ldfld      valuetype [Engine]Engine.Vector3 Game.PrecipitationShaftParticleSystem/Particle::Position
    IL_0243:  ldloc.s    V_16
    IL_0245:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_024a:  stloc.s    V_22
    IL_024c:  ldloc.s    V_21
    IL_024e:  ldfld      valuetype [Engine]Engine.Vector3 Game.PrecipitationShaftParticleSystem/Particle::Position
    IL_0253:  ldloc.s    V_17
    IL_0255:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_025a:  stloc.s    V_23
    IL_025c:  ldloc.s    V_21
    IL_025e:  ldfld      valuetype [Engine]Engine.Vector3 Game.PrecipitationShaftParticleSystem/Particle::Position
    IL_0263:  ldloc.s    V_18
    IL_0265:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_026a:  stloc.s    V_24
    IL_026c:  ldloc.s    V_21
    IL_026e:  ldfld      valuetype [Engine]Engine.Vector3 Game.PrecipitationShaftParticleSystem/Particle::Position
    IL_0273:  ldloc.s    V_19
    IL_0275:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_027a:  stloc.s    V_25
    IL_027c:  ldc.r4     0.60000002
    IL_0281:  ldloc.0
    IL_0282:  ldloc.s    V_21
    IL_0284:  ldflda     valuetype [Engine]Engine.Vector3 Game.PrecipitationShaftParticleSystem/Particle::Position
    IL_0289:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_028e:  sub
    IL_028f:  mul
    IL_0290:  ldc.r4     1.
    IL_0295:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_029a:  stloc.s    V_26
    IL_029c:  ldloca.s   V_27
    IL_029e:  ldarg.0
    IL_029f:  call       instance valuetype [Engine]Engine.Color Game.PrecipitationShaftParticleSystem::get_Color()
    IL_02a4:  stloc.s    V_15
    IL_02a6:  ldloca.s   V_15
    IL_02a8:  call       instance uint8 [Engine]Engine.Color::get_R()
    IL_02ad:  conv.r4
    IL_02ae:  ldloc.s    V_26
    IL_02b0:  mul
    IL_02b1:  conv.u1
    IL_02b2:  ldarg.0
    IL_02b3:  call       instance valuetype [Engine]Engine.Color Game.PrecipitationShaftParticleSystem::get_Color()
    IL_02b8:  stloc.s    V_15
    IL_02ba:  ldloca.s   V_15
    IL_02bc:  call       instance uint8 [Engine]Engine.Color::get_G()
    IL_02c1:  conv.r4
    IL_02c2:  ldloc.s    V_26
    IL_02c4:  mul
    IL_02c5:  conv.u1
    IL_02c6:  ldarg.0
    IL_02c7:  call       instance valuetype [Engine]Engine.Color Game.PrecipitationShaftParticleSystem::get_Color()
    IL_02cc:  stloc.s    V_15
    IL_02ce:  ldloca.s   V_15
    IL_02d0:  call       instance uint8 [Engine]Engine.Color::get_B()
    IL_02d5:  conv.r4
    IL_02d6:  ldloc.s    V_26
    IL_02d8:  mul
    IL_02d9:  conv.u1
    IL_02da:  ldarg.0
    IL_02db:  call       instance valuetype [Engine]Engine.Color Game.PrecipitationShaftParticleSystem::get_Color()
    IL_02e0:  stloc.s    V_15
    IL_02e2:  ldloca.s   V_15
    IL_02e4:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_02e9:  conv.r4
    IL_02ea:  ldloc.s    V_26
    IL_02ec:  mul
    IL_02ed:  conv.u1
    IL_02ee:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8,
                                                                   uint8)
    IL_02f3:  ldarg.0
    IL_02f4:  ldfld      class [Engine]Engine.Graphics.TexturedBatch3D Game.PrecipitationShaftParticleSystem::m_batch
    IL_02f9:  ldloc.s    V_22
    IL_02fb:  ldloc.s    V_23
    IL_02fd:  ldloc.s    V_24
    IL_02ff:  ldloc.s    V_25
    IL_0301:  ldloc.s    V_21
    IL_0303:  ldfld      valuetype [Engine]Engine.Vector2 Game.PrecipitationShaftParticleSystem/Particle::TexCoord1
    IL_0308:  ldloc.s    V_21
    IL_030a:  ldfld      valuetype [Engine]Engine.Vector2 Game.PrecipitationShaftParticleSystem/Particle::TexCoord2
    IL_030f:  ldloc.s    V_21
    IL_0311:  ldfld      valuetype [Engine]Engine.Vector2 Game.PrecipitationShaftParticleSystem/Particle::TexCoord3
    IL_0316:  ldloc.s    V_21
    IL_0318:  ldfld      valuetype [Engine]Engine.Vector2 Game.PrecipitationShaftParticleSystem/Particle::TexCoord4
    IL_031d:  ldloc.s    V_27
    IL_031f:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueQuad(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0324:  ldloc.s    V_20
    IL_0326:  ldc.i4.1
    IL_0327:  add
    IL_0328:  stloc.s    V_20
    IL_032a:  ldloc.s    V_20
    IL_032c:  ldarg.0
    IL_032d:  ldfld      class Game.PrecipitationShaftParticleSystem/Particle[] Game.PrecipitationShaftParticleSystem::m_particles
    IL_0332:  ldlen
    IL_0333:  conv.i4
    IL_0334:  blt        IL_0225

    IL_0339:  ret
  } // end of method PrecipitationShaftParticleSystem::Draw

  .method private hidebysig instance void 
          PerformReset() cil managed
  {
    // 代码大小       699 (0x2bb)
    .maxstack  6
    .locals init (int32 V_0,
             valuetype Game.PrecipitationType V_1,
             float32 V_2,
             float32 V_3,
             int32 V_4,
             float32 V_5,
             float32 V_6,
             float32 V_7,
             int32 V_8,
             int32 V_9,
             valuetype [Engine]Engine.Vector2 V_10)
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.PrecipitationShaftParticleSystem::m_lastViewY
    IL_0006:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
    IL_000c:  ldarg.0
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.Random Game.PrecipitationShaftParticleSystem::m_random
    IL_0013:  ldc.r4     0.0
    IL_0018:  ldc.r4     0.89999998
    IL_001d:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0022:  stfld      float32 Game.PrecipitationShaftParticleSystem::m_toCreate
    IL_0027:  ldarg.0
    IL_0028:  ldnull
    IL_0029:  stfld      class [Engine]Engine.Graphics.TexturedBatch3D Game.PrecipitationShaftParticleSystem::m_batch
    IL_002e:  ldc.i4.0
    IL_002f:  stloc.0
    IL_0030:  br.s       IL_00ac

    IL_0032:  ldarg.0
    IL_0033:  ldfld      class Game.PrecipitationShaftParticleSystem/Particle[] Game.PrecipitationShaftParticleSystem::m_particles
    IL_0038:  ldloc.0
    IL_0039:  ldelem.ref
    IL_003a:  dup
    IL_003b:  ldc.i4.0
    IL_003c:  stfld      bool Game.PrecipitationShaftParticleSystem/Particle::IsActive
    IL_0041:  dup
    IL_0042:  ldflda     valuetype [Engine]Engine.Vector3 Game.PrecipitationShaftParticleSystem/Particle::Position
    IL_0047:  ldarg.0
    IL_0048:  ldflda     valuetype [Engine]Engine.Vector2 Game.PrecipitationShaftParticleSystem::m_position
    IL_004d:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0052:  ldarg.0
    IL_0053:  ldfld      class Game.Random Game.PrecipitationShaftParticleSystem::m_random
    IL_0058:  ldc.r4     0.0
    IL_005d:  ldc.r4     1.
    IL_0062:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0067:  add
    IL_0068:  stfld      float32 [Engine]Engine.Vector3::X
    IL_006d:  dup
    IL_006e:  ldflda     valuetype [Engine]Engine.Vector3 Game.PrecipitationShaftParticleSystem/Particle::Position
    IL_0073:  ldc.r4     0.0
    IL_0078:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_007d:  ldflda     valuetype [Engine]Engine.Vector3 Game.PrecipitationShaftParticleSystem/Particle::Position
    IL_0082:  ldarg.0
    IL_0083:  ldflda     valuetype [Engine]Engine.Vector2 Game.PrecipitationShaftParticleSystem::m_position
    IL_0088:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_008d:  ldarg.0
    IL_008e:  ldfld      class Game.Random Game.PrecipitationShaftParticleSystem::m_random
    IL_0093:  ldc.r4     0.0
    IL_0098:  ldc.r4     1.
    IL_009d:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00a2:  add
    IL_00a3:  stfld      float32 [Engine]Engine.Vector3::Z
    IL_00a8:  ldloc.0
    IL_00a9:  ldc.i4.1
    IL_00aa:  add
    IL_00ab:  stloc.0
    IL_00ac:  ldloc.0
    IL_00ad:  ldarg.0
    IL_00ae:  ldfld      class Game.PrecipitationShaftParticleSystem/Particle[] Game.PrecipitationShaftParticleSystem::m_particles
    IL_00b3:  ldlen
    IL_00b4:  conv.i4
    IL_00b5:  blt        IL_0032

    IL_00ba:  ldarg.0
    IL_00bb:  ldfld      valuetype Game.PrecipitationType Game.PrecipitationShaftParticleSystem::m_precipitationType
    IL_00c0:  stloc.1
    IL_00c1:  ldloc.1
    IL_00c2:  brfalse.s  IL_00d0

    IL_00c4:  ldloc.1
    IL_00c5:  ldc.i4.1
    IL_00c6:  beq        IL_0190

    IL_00cb:  br         IL_02b0

    IL_00d0:  ldc.r4     8.
    IL_00d5:  stloc.2
    IL_00d6:  ldc.r4     12.
    IL_00db:  stloc.3
    IL_00dc:  ldarg.0
    IL_00dd:  ldloc.2
    IL_00de:  ldloc.3
    IL_00df:  add
    IL_00e0:  ldc.r4     2.
    IL_00e5:  div
    IL_00e6:  stfld      float32 Game.PrecipitationShaftParticleSystem::m_averageSpeed
    IL_00eb:  ldarg.0
    IL_00ec:  ldc.r4     2.e-002
    IL_00f1:  ldc.r4     0.15000001
    IL_00f6:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00fb:  stfld      valuetype [Engine]Engine.Vector2 Game.PrecipitationShaftParticleSystem::m_size
    IL_0100:  ldarg.0
    IL_0101:  ldstr      "Textures/RainParticle"
    IL_0106:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_010b:  stfld      class [Engine]Engine.Graphics.Texture2D Game.PrecipitationShaftParticleSystem::m_texture
    IL_0110:  ldarg.0
    IL_0111:  ldc.i4.1
    IL_0112:  stfld      bool Game.PrecipitationShaftParticleSystem::m_useTriangularParticles
    IL_0117:  ldarg.0
    IL_0118:  ldc.i4.1
    IL_0119:  stfld      bool Game.PrecipitationShaftParticleSystem::m_useVerticalBillboarding
    IL_011e:  ldc.i4.0
    IL_011f:  stloc.s    V_4
    IL_0121:  br.s       IL_0183

    IL_0123:  ldarg.0
    IL_0124:  ldfld      class Game.PrecipitationShaftParticleSystem/Particle[] Game.PrecipitationShaftParticleSystem::m_particles
    IL_0129:  ldloc.s    V_4
    IL_012b:  ldelem.ref
    IL_012c:  dup
    IL_012d:  ldc.r4     0.0
    IL_0132:  ldc.r4     1.
    IL_0137:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_013c:  stfld      valuetype [Engine]Engine.Vector2 Game.PrecipitationShaftParticleSystem/Particle::TexCoord1
    IL_0141:  dup
    IL_0142:  ldc.r4     1.
    IL_0147:  ldc.r4     1.
    IL_014c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0151:  stfld      valuetype [Engine]Engine.Vector2 Game.PrecipitationShaftParticleSystem/Particle::TexCoord2
    IL_0156:  dup
    IL_0157:  ldc.r4     0.5
    IL_015c:  ldc.r4     0.0
    IL_0161:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0166:  stfld      valuetype [Engine]Engine.Vector2 Game.PrecipitationShaftParticleSystem/Particle::TexCoord3
    IL_016b:  ldarg.0
    IL_016c:  ldfld      class Game.Random Game.PrecipitationShaftParticleSystem::m_random
    IL_0171:  ldloc.2
    IL_0172:  ldloc.3
    IL_0173:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0178:  stfld      float32 Game.PrecipitationShaftParticleSystem/Particle::Speed
    IL_017d:  ldloc.s    V_4
    IL_017f:  ldc.i4.1
    IL_0180:  add
    IL_0181:  stloc.s    V_4
    IL_0183:  ldloc.s    V_4
    IL_0185:  ldarg.0
    IL_0186:  ldfld      class Game.PrecipitationShaftParticleSystem/Particle[] Game.PrecipitationShaftParticleSystem::m_particles
    IL_018b:  ldlen
    IL_018c:  conv.i4
    IL_018d:  blt.s      IL_0123

    IL_018f:  ret

    IL_0190:  ldc.r4     0.25
    IL_0195:  stloc.s    V_5
    IL_0197:  ldc.r4     0.5
    IL_019c:  stloc.s    V_6
    IL_019e:  ldc.r4     3.
    IL_01a3:  stloc.s    V_7
    IL_01a5:  ldarg.0
    IL_01a6:  ldloc.s    V_6
    IL_01a8:  ldloc.s    V_7
    IL_01aa:  add
    IL_01ab:  ldc.r4     2.
    IL_01b0:  div
    IL_01b1:  stfld      float32 Game.PrecipitationShaftParticleSystem::m_averageSpeed
    IL_01b6:  ldarg.0
    IL_01b7:  ldc.r4     7.e-002
    IL_01bc:  ldc.r4     7.e-002
    IL_01c1:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01c6:  stfld      valuetype [Engine]Engine.Vector2 Game.PrecipitationShaftParticleSystem::m_size
    IL_01cb:  ldarg.0
    IL_01cc:  ldstr      "Textures/SnowParticle"
    IL_01d1:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_01d6:  stfld      class [Engine]Engine.Graphics.Texture2D Game.PrecipitationShaftParticleSystem::m_texture
    IL_01db:  ldarg.0
    IL_01dc:  ldc.i4.0
    IL_01dd:  stfld      bool Game.PrecipitationShaftParticleSystem::m_useTriangularParticles
    IL_01e2:  ldarg.0
    IL_01e3:  ldc.i4.0
    IL_01e4:  stfld      bool Game.PrecipitationShaftParticleSystem::m_useVerticalBillboarding
    IL_01e9:  ldc.i4.0
    IL_01ea:  stloc.s    V_8
    IL_01ec:  br         IL_02a0

    IL_01f1:  ldarg.0
    IL_01f2:  ldfld      class Game.PrecipitationShaftParticleSystem/Particle[] Game.PrecipitationShaftParticleSystem::m_particles
    IL_01f7:  ldloc.s    V_8
    IL_01f9:  ldelem.ref
    IL_01fa:  ldarg.0
    IL_01fb:  ldfld      class Game.Random Game.PrecipitationShaftParticleSystem::m_random
    IL_0200:  ldc.i4.0
    IL_0201:  ldc.i4.s   15
    IL_0203:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0208:  stloc.s    V_9
    IL_020a:  ldloc.s    V_9
    IL_020c:  ldc.i4.4
    IL_020d:  rem
    IL_020e:  conv.r4
    IL_020f:  ldloc.s    V_9
    IL_0211:  ldc.i4.4
    IL_0212:  div
    IL_0213:  conv.r4
    IL_0214:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0219:  ldloc.s    V_5
    IL_021b:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0220:  stloc.s    V_10
    IL_0222:  dup
    IL_0223:  ldloc.s    V_10
    IL_0225:  ldc.r4     0.0
    IL_022a:  ldc.r4     0.0
    IL_022f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0234:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0239:  stfld      valuetype [Engine]Engine.Vector2 Game.PrecipitationShaftParticleSystem/Particle::TexCoord1
    IL_023e:  dup
    IL_023f:  ldloc.s    V_10
    IL_0241:  ldloc.s    V_5
    IL_0243:  ldc.r4     0.0
    IL_0248:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_024d:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0252:  stfld      valuetype [Engine]Engine.Vector2 Game.PrecipitationShaftParticleSystem/Particle::TexCoord2
    IL_0257:  dup
    IL_0258:  ldloc.s    V_10
    IL_025a:  ldloc.s    V_5
    IL_025c:  ldloc.s    V_5
    IL_025e:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0263:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0268:  stfld      valuetype [Engine]Engine.Vector2 Game.PrecipitationShaftParticleSystem/Particle::TexCoord3
    IL_026d:  dup
    IL_026e:  ldloc.s    V_10
    IL_0270:  ldc.r4     0.0
    IL_0275:  ldloc.s    V_5
    IL_0277:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_027c:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0281:  stfld      valuetype [Engine]Engine.Vector2 Game.PrecipitationShaftParticleSystem/Particle::TexCoord4
    IL_0286:  ldarg.0
    IL_0287:  ldfld      class Game.Random Game.PrecipitationShaftParticleSystem::m_random
    IL_028c:  ldloc.s    V_6
    IL_028e:  ldloc.s    V_7
    IL_0290:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0295:  stfld      float32 Game.PrecipitationShaftParticleSystem/Particle::Speed
    IL_029a:  ldloc.s    V_8
    IL_029c:  ldc.i4.1
    IL_029d:  add
    IL_029e:  stloc.s    V_8
    IL_02a0:  ldloc.s    V_8
    IL_02a2:  ldarg.0
    IL_02a3:  ldfld      class Game.PrecipitationShaftParticleSystem/Particle[] Game.PrecipitationShaftParticleSystem::m_particles
    IL_02a8:  ldlen
    IL_02a9:  conv.i4
    IL_02aa:  blt        IL_01f1

    IL_02af:  ret

    IL_02b0:  ldstr      "Unknown precipitation type."
    IL_02b5:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_02ba:  throw
  } // end of method PrecipitationShaftParticleSystem::PerformReset

  .property instance valuetype [Engine]Engine.Color
          Color()
  {
    .get instance valuetype [Engine]Engine.Color Game.PrecipitationShaftParticleSystem::get_Color()
    .set instance void Game.PrecipitationShaftParticleSystem::set_Color(valuetype [Engine]Engine.Color)
  } // end of property PrecipitationShaftParticleSystem::Color
  .property instance float32 Intensity()
  {
    .get instance float32 Game.PrecipitationShaftParticleSystem::get_Intensity()
    .set instance void Game.PrecipitationShaftParticleSystem::set_Intensity(float32)
  } // end of property PrecipitationShaftParticleSystem::Intensity
  .property instance float32 YLimit()
  {
    .get instance float32 Game.PrecipitationShaftParticleSystem::get_YLimit()
    .set instance void Game.PrecipitationShaftParticleSystem::set_YLimit(float32)
  } // end of property PrecipitationShaftParticleSystem::YLimit
} // end of class Game.PrecipitationShaftParticleSystem