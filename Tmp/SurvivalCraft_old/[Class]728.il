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
          Reset(valuetype Game.PrecipitationType precipitationType,
                valuetype [Engine]Engine.Vector2 position) cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype Game.PrecipitationType Game.PrecipitationShaftParticleSystem::m_precipitationType
    IL_0007:  ldarg.0
    IL_0008:  ldarg.2
    IL_0009:  stfld      valuetype [Engine]Engine.Vector2 Game.PrecipitationShaftParticleSystem::m_position
    IL_000e:  ldarg.0
    IL_000f:  ldc.i4.1
    IL_0010:  stfld      bool Game.PrecipitationShaftParticleSystem::m_isResetPending
    IL_0015:  ret
  } // end of method PrecipitationShaftParticleSystem::Reset

  .method public hidebysig virtual instance bool 
          Simulate(class Game.SubsystemDrawing subsystemDrawing,
                   float32 dt) cil managed
  {
    // 代码大小       871 (0x367)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Vector2 V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5,
             float32 V_6,
             float32 V_7,
             float32 V_8,
             int32 V_9,
             int32 V_10,
             class Game.PrecipitationShaftParticleSystem/Particle V_11)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.PrecipitationShaftParticleSystem::m_isEmpty
    IL_0006:  brfalse.s  IL_0034

    IL_0008:  ldarg.0
    IL_0009:  call       instance float32 Game.PrecipitationShaftParticleSystem::get_Intensity()
    IL_000e:  ldc.r4     0.0
    IL_0013:  ble.un     IL_034f

    IL_0018:  ldarg.0
    IL_0019:  call       instance float32 Game.PrecipitationShaftParticleSystem::get_YLimit()
    IL_001e:  ldarg.1
    IL_001f:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_0024:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0029:  ldc.r4     4.
    IL_002e:  add
    IL_002f:  bge.un     IL_034f

    IL_0034:  ldarg.1
    IL_0035:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewDirection()
    IL_003a:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_003f:  ldarg.1
    IL_0040:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewDirection()
    IL_0045:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_004a:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_004f:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Normalize(valuetype [Engine]Engine.Vector2)
    IL_0054:  stloc.0
    IL_0055:  ldarg.0
    IL_0056:  ldflda     valuetype [Engine]Engine.Vector2 Game.PrecipitationShaftParticleSystem::m_position
    IL_005b:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0060:  ldc.r4     0.5
    IL_0065:  add
    IL_0066:  ldarg.1
    IL_0067:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_006c:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0071:  sub
    IL_0072:  ldc.r4     0.69999999
    IL_0077:  ldloc.0
    IL_0078:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_007d:  mul
    IL_007e:  add
    IL_007f:  ldarg.0
    IL_0080:  ldflda     valuetype [Engine]Engine.Vector2 Game.PrecipitationShaftParticleSystem::m_position
    IL_0085:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_008a:  ldc.r4     0.5
    IL_008f:  add
    IL_0090:  ldarg.1
    IL_0091:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_0096:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_009b:  sub
    IL_009c:  ldc.r4     0.69999999
    IL_00a1:  ldloc.0
    IL_00a2:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00a7:  mul
    IL_00a8:  add
    IL_00a9:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00ae:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Normalize(valuetype [Engine]Engine.Vector2)
    IL_00b3:  stloc.1
    IL_00b4:  ldloc.0
    IL_00b5:  ldloc.1
    IL_00b6:  call       float32 [Engine]Engine.Vector2::Dot(valuetype [Engine]Engine.Vector2,
                                                             valuetype [Engine]Engine.Vector2)
    IL_00bb:  stloc.2
    IL_00bc:  ldarg.0
    IL_00bd:  ldloc.2
    IL_00be:  ldc.r4     0.60000002
    IL_00c3:  cgt
    IL_00c5:  stfld      bool Game.PrecipitationShaftParticleSystem::m_isVisible
    IL_00ca:  ldarg.0
    IL_00cb:  ldfld      bool Game.PrecipitationShaftParticleSystem::m_isVisible
    IL_00d0:  brfalse    IL_0348

    IL_00d5:  ldarg.0
    IL_00d6:  ldfld      bool Game.PrecipitationShaftParticleSystem::m_isResetPending
    IL_00db:  brfalse.s  IL_00ea

    IL_00dd:  ldarg.0
    IL_00de:  ldc.i4.0
    IL_00df:  stfld      bool Game.PrecipitationShaftParticleSystem::m_isResetPending
    IL_00e4:  ldarg.0
    IL_00e5:  call       instance void Game.PrecipitationShaftParticleSystem::PerformReset()
    IL_00ea:  ldarg.1
    IL_00eb:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_00f0:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00f5:  stloc.3
    IL_00f6:  ldloc.3
    IL_00f7:  ldc.r4     4.
    IL_00fc:  sub
    IL_00fd:  stloc.s    V_4
    IL_00ff:  ldloc.3
    IL_0100:  ldc.r4     4.
    IL_0105:  add
    IL_0106:  stloc.s    V_5
    IL_0108:  ldc.r4     0.0
    IL_010d:  stloc.s    V_6
    IL_010f:  ldc.r4     0.0
    IL_0114:  stloc.s    V_7
    IL_0116:  ldarg.0
    IL_0117:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.PrecipitationShaftParticleSystem::m_lastViewY
    IL_011c:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_0121:  brfalse.s  IL_0163

    IL_0123:  ldloc.3
    IL_0124:  ldarg.0
    IL_0125:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.PrecipitationShaftParticleSystem::m_lastViewY
    IL_012a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_012f:  bge.un.s   IL_014a

    IL_0131:  ldloc.s    V_4
    IL_0133:  stloc.s    V_6
    IL_0135:  ldarg.0
    IL_0136:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.PrecipitationShaftParticleSystem::m_lastViewY
    IL_013b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0140:  ldc.r4     4.
    IL_0145:  sub
    IL_0146:  stloc.s    V_7
    IL_0148:  br.s       IL_016b

    IL_014a:  ldarg.0
    IL_014b:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.PrecipitationShaftParticleSystem::m_lastViewY
    IL_0150:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0155:  ldc.r4     4.
    IL_015a:  add
    IL_015b:  stloc.s    V_6
    IL_015d:  ldloc.s    V_5
    IL_015f:  stloc.s    V_7
    IL_0161:  br.s       IL_016b

    IL_0163:  ldloc.s    V_4
    IL_0165:  stloc.s    V_6
    IL_0167:  ldloc.s    V_5
    IL_0169:  stloc.s    V_7
    IL_016b:  ldloc.s    V_7
    IL_016d:  ldloc.s    V_6
    IL_016f:  sub
    IL_0170:  ldc.r4     8.
    IL_0175:  div
    IL_0176:  ldarg.0
    IL_0177:  ldfld      class Game.PrecipitationShaftParticleSystem/Particle[] Game.PrecipitationShaftParticleSystem::m_particles
    IL_017c:  ldlen
    IL_017d:  conv.i4
    IL_017e:  conv.r4
    IL_017f:  mul
    IL_0180:  ldarg.0
    IL_0181:  call       instance float32 Game.PrecipitationShaftParticleSystem::get_Intensity()
    IL_0186:  mul
    IL_0187:  stloc.s    V_8
    IL_0189:  ldloc.s    V_8
    IL_018b:  conv.i4
    IL_018c:  ldarg.0
    IL_018d:  ldfld      class Game.Random Game.PrecipitationShaftParticleSystem::m_random
    IL_0192:  ldc.r4     0.0
    IL_0197:  ldc.r4     1.
    IL_019c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01a1:  ldloc.s    V_8
    IL_01a3:  ldloc.s    V_8
    IL_01a5:  conv.i4
    IL_01a6:  conv.r4
    IL_01a7:  sub
    IL_01a8:  blt.s      IL_01ad

    IL_01aa:  ldc.i4.0
    IL_01ab:  br.s       IL_01ae

    IL_01ad:  ldc.i4.1
    IL_01ae:  add
    IL_01af:  stloc.s    V_9
    IL_01b1:  ldarg.0
    IL_01b2:  ldloc.3
    IL_01b3:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_01b8:  stfld      valuetype [System.Runtime]System.Nullable`1<float32> Game.PrecipitationShaftParticleSystem::m_lastViewY
    IL_01bd:  ldarg.0
    IL_01be:  ldarg.0
    IL_01bf:  ldfld      float32 Game.PrecipitationShaftParticleSystem::m_toCreate
    IL_01c4:  ldarg.0
    IL_01c5:  ldfld      class Game.PrecipitationShaftParticleSystem/Particle[] Game.PrecipitationShaftParticleSystem::m_particles
    IL_01ca:  ldlen
    IL_01cb:  conv.i4
    IL_01cc:  conv.r4
    IL_01cd:  ldarg.0
    IL_01ce:  call       instance float32 Game.PrecipitationShaftParticleSystem::get_Intensity()
    IL_01d3:  mul
    IL_01d4:  ldc.r4     8.
    IL_01d9:  div
    IL_01da:  ldarg.0
    IL_01db:  ldfld      float32 Game.PrecipitationShaftParticleSystem::m_averageSpeed
    IL_01e0:  mul
    IL_01e1:  ldarg.2
    IL_01e2:  mul
    IL_01e3:  add
    IL_01e4:  stfld      float32 Game.PrecipitationShaftParticleSystem::m_toCreate
    IL_01e9:  ldarg.0
    IL_01ea:  ldc.i4.1
    IL_01eb:  stfld      bool Game.PrecipitationShaftParticleSystem::m_isEmpty
    IL_01f0:  ldc.i4.0
    IL_01f1:  stloc.s    V_10
    IL_01f3:  br         IL_031f

    IL_01f8:  ldarg.0
    IL_01f9:  ldfld      class Game.PrecipitationShaftParticleSystem/Particle[] Game.PrecipitationShaftParticleSystem::m_particles
    IL_01fe:  ldloc.s    V_10
    IL_0200:  ldelem.ref
    IL_0201:  stloc.s    V_11
    IL_0203:  ldloc.s    V_11
    IL_0205:  ldfld      bool Game.PrecipitationShaftParticleSystem/Particle::IsActive
    IL_020a:  brfalse.s  IL_0272

    IL_020c:  ldloc.s    V_11
    IL_020e:  ldflda     valuetype [Engine]Engine.Vector3 Game.PrecipitationShaftParticleSystem/Particle::Position
    IL_0213:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0218:  ldloc.s    V_4
    IL_021a:  blt.un.s   IL_0265

    IL_021c:  ldloc.s    V_11
    IL_021e:  ldflda     valuetype [Engine]Engine.Vector3 Game.PrecipitationShaftParticleSystem/Particle::Position
    IL_0223:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0228:  ldloc.s    V_5
    IL_022a:  bgt.un.s   IL_0265

    IL_022c:  ldloc.s    V_11
    IL_022e:  ldflda     valuetype [Engine]Engine.Vector3 Game.PrecipitationShaftParticleSystem/Particle::Position
    IL_0233:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0238:  ldarg.0
    IL_0239:  call       instance float32 Game.PrecipitationShaftParticleSystem::get_YLimit()
    IL_023e:  blt.un.s   IL_0265

    IL_0240:  ldloc.s    V_11
    IL_0242:  ldflda     valuetype [Engine]Engine.Vector3 Game.PrecipitationShaftParticleSystem/Particle::Position
    IL_0247:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_024c:  dup
    IL_024d:  ldind.r4
    IL_024e:  ldloc.s    V_11
    IL_0250:  ldfld      float32 Game.PrecipitationShaftParticleSystem/Particle::Speed
    IL_0255:  ldarg.2
    IL_0256:  mul
    IL_0257:  sub
    IL_0258:  stind.r4
    IL_0259:  ldarg.0
    IL_025a:  ldc.i4.0
    IL_025b:  stfld      bool Game.PrecipitationShaftParticleSystem::m_isEmpty
    IL_0260:  br         IL_0319

    IL_0265:  ldloc.s    V_11
    IL_0267:  ldc.i4.0
    IL_0268:  stfld      bool Game.PrecipitationShaftParticleSystem/Particle::IsActive
    IL_026d:  br         IL_0319

    IL_0272:  ldloc.s    V_9
    IL_0274:  ldc.i4.0
    IL_0275:  ble.s      IL_02b8

    IL_0277:  ldloc.s    V_11
    IL_0279:  ldflda     valuetype [Engine]Engine.Vector3 Game.PrecipitationShaftParticleSystem/Particle::Position
    IL_027e:  ldarg.0
    IL_027f:  ldfld      class Game.Random Game.PrecipitationShaftParticleSystem::m_random
    IL_0284:  ldloc.s    V_6
    IL_0286:  ldloc.s    V_7
    IL_0288:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_028d:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_0292:  ldloc.s    V_11
    IL_0294:  ldloc.s    V_11
    IL_0296:  ldflda     valuetype [Engine]Engine.Vector3 Game.PrecipitationShaftParticleSystem/Particle::Position
    IL_029b:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_02a0:  ldarg.0
    IL_02a1:  call       instance float32 Game.PrecipitationShaftParticleSystem::get_YLimit()
    IL_02a6:  clt.un
    IL_02a8:  ldc.i4.0
    IL_02a9:  ceq
    IL_02ab:  stfld      bool Game.PrecipitationShaftParticleSystem/Particle::IsActive
    IL_02b0:  ldloc.s    V_9
    IL_02b2:  ldc.i4.1
    IL_02b3:  sub
    IL_02b4:  stloc.s    V_9
    IL_02b6:  br.s       IL_0319

    IL_02b8:  ldarg.0
    IL_02b9:  ldfld      float32 Game.PrecipitationShaftParticleSystem::m_toCreate
    IL_02be:  ldc.r4     1.
    IL_02c3:  blt.un.s   IL_0319

    IL_02c5:  ldloc.s    V_11
    IL_02c7:  ldflda     valuetype [Engine]Engine.Vector3 Game.PrecipitationShaftParticleSystem/Particle::Position
    IL_02cc:  ldarg.0
    IL_02cd:  ldfld      class Game.Random Game.PrecipitationShaftParticleSystem::m_random
    IL_02d2:  ldloc.s    V_5
    IL_02d4:  ldarg.0
    IL_02d5:  ldfld      float32 Game.PrecipitationShaftParticleSystem::m_averageSpeed
    IL_02da:  ldarg.2
    IL_02db:  mul
    IL_02dc:  sub
    IL_02dd:  ldloc.s    V_5
    IL_02df:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_02e4:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_02e9:  ldloc.s    V_11
    IL_02eb:  ldloc.s    V_11
    IL_02ed:  ldflda     valuetype [Engine]Engine.Vector3 Game.PrecipitationShaftParticleSystem/Particle::Position
    IL_02f2:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_02f7:  ldarg.0
    IL_02f8:  call       instance float32 Game.PrecipitationShaftParticleSystem::get_YLimit()
    IL_02fd:  clt.un
    IL_02ff:  ldc.i4.0
    IL_0300:  ceq
    IL_0302:  stfld      bool Game.PrecipitationShaftParticleSystem/Particle::IsActive
    IL_0307:  ldarg.0
    IL_0308:  ldarg.0
    IL_0309:  ldfld      float32 Game.PrecipitationShaftParticleSystem::m_toCreate
    IL_030e:  ldc.r4     1.
    IL_0313:  sub
    IL_0314:  stfld      float32 Game.PrecipitationShaftParticleSystem::m_toCreate
    IL_0319:  ldloc.s    V_10
    IL_031b:  ldc.i4.1
    IL_031c:  add
    IL_031d:  stloc.s    V_10
    IL_031f:  ldloc.s    V_10
    IL_0321:  ldarg.0
    IL_0322:  ldfld      class Game.PrecipitationShaftParticleSystem/Particle[] Game.PrecipitationShaftParticleSystem::m_particles
    IL_0327:  ldlen
    IL_0328:  conv.i4
    IL_0329:  blt        IL_01f8

    IL_032e:  ldarg.0
    IL_032f:  ldarg.0
    IL_0330:  ldfld      float32 Game.PrecipitationShaftParticleSystem::m_toCreate
    IL_0335:  ldarg.0
    IL_0336:  ldfld      float32 Game.PrecipitationShaftParticleSystem::m_toCreate
    IL_033b:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0340:  sub
    IL_0341:  stfld      float32 Game.PrecipitationShaftParticleSystem::m_toCreate
    IL_0346:  br.s       IL_034f

    IL_0348:  ldarg.0
    IL_0349:  ldc.i4.1
    IL_034a:  stfld      bool Game.PrecipitationShaftParticleSystem::m_isResetPending
    IL_034f:  ldarg.0
    IL_0350:  ldfld      bool Game.PrecipitationShaftParticleSystem::m_isEmpty
    IL_0355:  brfalse.s  IL_0365

    IL_0357:  ldarg.0
    IL_0358:  call       instance float32 Game.PrecipitationShaftParticleSystem::get_Intensity()
    IL_035d:  ldc.r4     0.0
    IL_0362:  ceq
    IL_0364:  ret

    IL_0365:  ldc.i4.0
    IL_0366:  ret
  } // end of method PrecipitationShaftParticleSystem::Simulate

  .method public hidebysig virtual instance void 
          Draw(class Game.SubsystemDrawing subsystemDrawing) cil managed
  {
    // 代码大小       811 (0x32b)
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

    IL_0011:  ldarg.0
    IL_0012:  ldfld      class [Engine]Engine.Graphics.TexturedBatch3D Game.PrecipitationShaftParticleSystem::m_batch
    IL_0017:  brtrue.s   IL_0047

    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.SubsystemParticles Game.ParticleSystemBase::SubsystemParticles
    IL_0020:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemParticles::PrimitivesRenderer
    IL_0025:  ldarg.0
    IL_0026:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.PrecipitationShaftParticleSystem::m_texture
    IL_002b:  ldc.i4.0
    IL_002c:  ldc.i4.0
    IL_002d:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::DepthRead
    IL_0032:  ldnull
    IL_0033:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::AlphaBlend
    IL_0038:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
    IL_003d:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_0042:  stfld      class [Engine]Engine.Graphics.TexturedBatch3D Game.PrecipitationShaftParticleSystem::m_batch
    IL_0047:  ldarg.1
    IL_0048:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_004d:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0052:  ldc.r4     4.
    IL_0057:  add
    IL_0058:  stloc.0
    IL_0059:  ldarg.1
    IL_005a:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewDirection()
    IL_005f:  stloc.1
    IL_0060:  ldloc.1
    IL_0061:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0066:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_006b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0070:  stloc.2
    IL_0071:  ldarg.0
    IL_0072:  ldfld      bool Game.PrecipitationShaftParticleSystem::m_useVerticalBillboarding
    IL_0077:  brtrue.s   IL_0087

    IL_0079:  ldloc.1
    IL_007a:  ldloc.2
    IL_007b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_0080:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0085:  br.s       IL_008c

    IL_0087:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_008c:  ldloc.2
    IL_008d:  ldarg.0
    IL_008e:  ldflda     valuetype [Engine]Engine.Vector2 Game.PrecipitationShaftParticleSystem::m_size
    IL_0093:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0098:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_009d:  stloc.3
    IL_009e:  ldarg.0
    IL_009f:  ldflda     valuetype [Engine]Engine.Vector2 Game.PrecipitationShaftParticleSystem::m_size
    IL_00a4:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00a9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_00ae:  stloc.s    V_4
    IL_00b0:  ldarg.0
    IL_00b1:  ldfld      bool Game.PrecipitationShaftParticleSystem::m_useTriangularParticles
    IL_00b6:  brfalse    IL_01dc

    IL_00bb:  ldloc.3
    IL_00bc:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_00c1:  ldloc.s    V_4
    IL_00c3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00c8:  stloc.s    V_5
    IL_00ca:  ldloc.3
    IL_00cb:  ldloc.s    V_4
    IL_00cd:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00d2:  stloc.s    V_6
    IL_00d4:  ldloc.s    V_4
    IL_00d6:  stloc.s    V_7
    IL_00d8:  ldc.i4.0
    IL_00d9:  stloc.s    V_8
    IL_00db:  br         IL_01cc

    IL_00e0:  ldarg.0
    IL_00e1:  ldfld      class Game.PrecipitationShaftParticleSystem/Particle[] Game.PrecipitationShaftParticleSystem::m_particles
    IL_00e6:  ldloc.s    V_8
    IL_00e8:  ldelem.ref
    IL_00e9:  stloc.s    V_9
    IL_00eb:  ldloc.s    V_9
    IL_00ed:  ldfld      bool Game.PrecipitationShaftParticleSystem/Particle::IsActive
    IL_00f2:  brfalse    IL_01c6

    IL_00f7:  ldloc.s    V_9
    IL_00f9:  ldfld      valuetype [Engine]Engine.Vector3 Game.PrecipitationShaftParticleSystem/Particle::Position
    IL_00fe:  ldloc.s    V_5
    IL_0100:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0105:  stloc.s    V_10
    IL_0107:  ldloc.s    V_9
    IL_0109:  ldfld      valuetype [Engine]Engine.Vector3 Game.PrecipitationShaftParticleSystem/Particle::Position
    IL_010e:  ldloc.s    V_6
    IL_0110:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0115:  stloc.s    V_11
    IL_0117:  ldloc.s    V_9
    IL_0119:  ldfld      valuetype [Engine]Engine.Vector3 Game.PrecipitationShaftParticleSystem/Particle::Position
    IL_011e:  ldloc.s    V_7
    IL_0120:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0125:  stloc.s    V_12
    IL_0127:  ldc.r4     0.60000002
    IL_012c:  ldloc.0
    IL_012d:  ldloc.s    V_9
    IL_012f:  ldflda     valuetype [Engine]Engine.Vector3 Game.PrecipitationShaftParticleSystem/Particle::Position
    IL_0134:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0139:  sub
    IL_013a:  mul
    IL_013b:  ldc.r4     1.
    IL_0140:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0145:  stloc.s    V_13
    IL_0147:  ldloca.s   V_14
    IL_0149:  ldarg.0
    IL_014a:  call       instance valuetype [Engine]Engine.Color Game.PrecipitationShaftParticleSystem::get_Color()
    IL_014f:  stloc.s    V_15
    IL_0151:  ldloca.s   V_15
    IL_0153:  call       instance uint8 [Engine]Engine.Color::get_R()
    IL_0158:  conv.r4
    IL_0159:  ldloc.s    V_13
    IL_015b:  mul
    IL_015c:  conv.u1
    IL_015d:  ldarg.0
    IL_015e:  call       instance valuetype [Engine]Engine.Color Game.PrecipitationShaftParticleSystem::get_Color()
    IL_0163:  stloc.s    V_15
    IL_0165:  ldloca.s   V_15
    IL_0167:  call       instance uint8 [Engine]Engine.Color::get_G()
    IL_016c:  conv.r4
    IL_016d:  ldloc.s    V_13
    IL_016f:  mul
    IL_0170:  conv.u1
    IL_0171:  ldarg.0
    IL_0172:  call       instance valuetype [Engine]Engine.Color Game.PrecipitationShaftParticleSystem::get_Color()
    IL_0177:  stloc.s    V_15
    IL_0179:  ldloca.s   V_15
    IL_017b:  call       instance uint8 [Engine]Engine.Color::get_B()
    IL_0180:  conv.r4
    IL_0181:  ldloc.s    V_13
    IL_0183:  mul
    IL_0184:  conv.u1
    IL_0185:  ldarg.0
    IL_0186:  call       instance valuetype [Engine]Engine.Color Game.PrecipitationShaftParticleSystem::get_Color()
    IL_018b:  stloc.s    V_15
    IL_018d:  ldloca.s   V_15
    IL_018f:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_0194:  conv.r4
    IL_0195:  ldloc.s    V_13
    IL_0197:  mul
    IL_0198:  conv.u1
    IL_0199:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8,
                                                                   uint8)
    IL_019e:  ldarg.0
    IL_019f:  ldfld      class [Engine]Engine.Graphics.TexturedBatch3D Game.PrecipitationShaftParticleSystem::m_batch
    IL_01a4:  ldloc.s    V_10
    IL_01a6:  ldloc.s    V_11
    IL_01a8:  ldloc.s    V_12
    IL_01aa:  ldloc.s    V_9
    IL_01ac:  ldfld      valuetype [Engine]Engine.Vector2 Game.PrecipitationShaftParticleSystem/Particle::TexCoord1
    IL_01b1:  ldloc.s    V_9
    IL_01b3:  ldfld      valuetype [Engine]Engine.Vector2 Game.PrecipitationShaftParticleSystem/Particle::TexCoord2
    IL_01b8:  ldloc.s    V_9
    IL_01ba:  ldfld      valuetype [Engine]Engine.Vector2 Game.PrecipitationShaftParticleSystem/Particle::TexCoord3
    IL_01bf:  ldloc.s    V_14
    IL_01c1:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueTriangle(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color)
    IL_01c6:  ldloc.s    V_8
    IL_01c8:  ldc.i4.1
    IL_01c9:  add
    IL_01ca:  stloc.s    V_8
    IL_01cc:  ldloc.s    V_8
    IL_01ce:  ldarg.0
    IL_01cf:  ldfld      class Game.PrecipitationShaftParticleSystem/Particle[] Game.PrecipitationShaftParticleSystem::m_particles
    IL_01d4:  ldlen
    IL_01d5:  conv.i4
    IL_01d6:  blt        IL_00e0

    IL_01db:  ret

    IL_01dc:  ldloc.3
    IL_01dd:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_01e2:  ldloc.s    V_4
    IL_01e4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_01e9:  stloc.s    V_16
    IL_01eb:  ldloc.3
    IL_01ec:  ldloc.s    V_4
    IL_01ee:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_01f3:  stloc.s    V_17
    IL_01f5:  ldloc.3
    IL_01f6:  ldloc.s    V_4
    IL_01f8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01fd:  stloc.s    V_18
    IL_01ff:  ldloc.3
    IL_0200:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_0205:  ldloc.s    V_4
    IL_0207:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_020c:  stloc.s    V_19
    IL_020e:  ldc.i4.0
    IL_020f:  stloc.s    V_20
    IL_0211:  br         IL_031b

    IL_0216:  ldarg.0
    IL_0217:  ldfld      class Game.PrecipitationShaftParticleSystem/Particle[] Game.PrecipitationShaftParticleSystem::m_particles
    IL_021c:  ldloc.s    V_20
    IL_021e:  ldelem.ref
    IL_021f:  stloc.s    V_21
    IL_0221:  ldloc.s    V_21
    IL_0223:  ldfld      bool Game.PrecipitationShaftParticleSystem/Particle::IsActive
    IL_0228:  brfalse    IL_0315

    IL_022d:  ldloc.s    V_21
    IL_022f:  ldfld      valuetype [Engine]Engine.Vector3 Game.PrecipitationShaftParticleSystem/Particle::Position
    IL_0234:  ldloc.s    V_16
    IL_0236:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_023b:  stloc.s    V_22
    IL_023d:  ldloc.s    V_21
    IL_023f:  ldfld      valuetype [Engine]Engine.Vector3 Game.PrecipitationShaftParticleSystem/Particle::Position
    IL_0244:  ldloc.s    V_17
    IL_0246:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_024b:  stloc.s    V_23
    IL_024d:  ldloc.s    V_21
    IL_024f:  ldfld      valuetype [Engine]Engine.Vector3 Game.PrecipitationShaftParticleSystem/Particle::Position
    IL_0254:  ldloc.s    V_18
    IL_0256:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_025b:  stloc.s    V_24
    IL_025d:  ldloc.s    V_21
    IL_025f:  ldfld      valuetype [Engine]Engine.Vector3 Game.PrecipitationShaftParticleSystem/Particle::Position
    IL_0264:  ldloc.s    V_19
    IL_0266:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_026b:  stloc.s    V_25
    IL_026d:  ldc.r4     0.60000002
    IL_0272:  ldloc.0
    IL_0273:  ldloc.s    V_21
    IL_0275:  ldflda     valuetype [Engine]Engine.Vector3 Game.PrecipitationShaftParticleSystem/Particle::Position
    IL_027a:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_027f:  sub
    IL_0280:  mul
    IL_0281:  ldc.r4     1.
    IL_0286:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_028b:  stloc.s    V_26
    IL_028d:  ldloca.s   V_27
    IL_028f:  ldarg.0
    IL_0290:  call       instance valuetype [Engine]Engine.Color Game.PrecipitationShaftParticleSystem::get_Color()
    IL_0295:  stloc.s    V_15
    IL_0297:  ldloca.s   V_15
    IL_0299:  call       instance uint8 [Engine]Engine.Color::get_R()
    IL_029e:  conv.r4
    IL_029f:  ldloc.s    V_26
    IL_02a1:  mul
    IL_02a2:  conv.u1
    IL_02a3:  ldarg.0
    IL_02a4:  call       instance valuetype [Engine]Engine.Color Game.PrecipitationShaftParticleSystem::get_Color()
    IL_02a9:  stloc.s    V_15
    IL_02ab:  ldloca.s   V_15
    IL_02ad:  call       instance uint8 [Engine]Engine.Color::get_G()
    IL_02b2:  conv.r4
    IL_02b3:  ldloc.s    V_26
    IL_02b5:  mul
    IL_02b6:  conv.u1
    IL_02b7:  ldarg.0
    IL_02b8:  call       instance valuetype [Engine]Engine.Color Game.PrecipitationShaftParticleSystem::get_Color()
    IL_02bd:  stloc.s    V_15
    IL_02bf:  ldloca.s   V_15
    IL_02c1:  call       instance uint8 [Engine]Engine.Color::get_B()
    IL_02c6:  conv.r4
    IL_02c7:  ldloc.s    V_26
    IL_02c9:  mul
    IL_02ca:  conv.u1
    IL_02cb:  ldarg.0
    IL_02cc:  call       instance valuetype [Engine]Engine.Color Game.PrecipitationShaftParticleSystem::get_Color()
    IL_02d1:  stloc.s    V_15
    IL_02d3:  ldloca.s   V_15
    IL_02d5:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_02da:  conv.r4
    IL_02db:  ldloc.s    V_26
    IL_02dd:  mul
    IL_02de:  conv.u1
    IL_02df:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8,
                                                                   uint8)
    IL_02e4:  ldarg.0
    IL_02e5:  ldfld      class [Engine]Engine.Graphics.TexturedBatch3D Game.PrecipitationShaftParticleSystem::m_batch
    IL_02ea:  ldloc.s    V_22
    IL_02ec:  ldloc.s    V_23
    IL_02ee:  ldloc.s    V_24
    IL_02f0:  ldloc.s    V_25
    IL_02f2:  ldloc.s    V_21
    IL_02f4:  ldfld      valuetype [Engine]Engine.Vector2 Game.PrecipitationShaftParticleSystem/Particle::TexCoord1
    IL_02f9:  ldloc.s    V_21
    IL_02fb:  ldfld      valuetype [Engine]Engine.Vector2 Game.PrecipitationShaftParticleSystem/Particle::TexCoord2
    IL_0300:  ldloc.s    V_21
    IL_0302:  ldfld      valuetype [Engine]Engine.Vector2 Game.PrecipitationShaftParticleSystem/Particle::TexCoord3
    IL_0307:  ldloc.s    V_21
    IL_0309:  ldfld      valuetype [Engine]Engine.Vector2 Game.PrecipitationShaftParticleSystem/Particle::TexCoord4
    IL_030e:  ldloc.s    V_27
    IL_0310:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueQuad(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0315:  ldloc.s    V_20
    IL_0317:  ldc.i4.1
    IL_0318:  add
    IL_0319:  stloc.s    V_20
    IL_031b:  ldloc.s    V_20
    IL_031d:  ldarg.0
    IL_031e:  ldfld      class Game.PrecipitationShaftParticleSystem/Particle[] Game.PrecipitationShaftParticleSystem::m_particles
    IL_0323:  ldlen
    IL_0324:  conv.i4
    IL_0325:  blt        IL_0216

    IL_032a:  ret
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