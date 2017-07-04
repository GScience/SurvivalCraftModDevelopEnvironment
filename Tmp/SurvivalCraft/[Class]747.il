.class public auto ansi beforefieldinit Game.OnFireParticleSystem
       extends class Game.ParticleSystem`1<class Game.OnFireParticleSystem/Particle>
{
  .class auto ansi nested public beforefieldinit Particle
         extends Game.Particle
  {
    .field public float32 Time
    .field public float32 Duration
    .field public valuetype [Engine]Engine.Vector3 Velocity
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void Game.Particle::.ctor()
      IL_0006:  ret
    } // end of method Particle::.ctor

  } // end of class Particle

  .field private class Game.Random m_random
  .field private float32 m_toGenerate
  .field private bool m_visible
  .field private bool '<IsStopped>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Vector3 '<Position>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<Radius>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.OnFireParticleSystem::m_random
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.s   25
    IL_000e:  call       instance void class Game.ParticleSystem`1<class Game.OnFireParticleSystem/Particle>::.ctor(int32)
    IL_0013:  ldarg.0
    IL_0014:  ldstr      "Textures/FireParticle"
    IL_0019:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_001e:  call       instance void class Game.ParticleSystem`1<class Game.OnFireParticleSystem/Particle>::set_Texture(class [Engine]Engine.Graphics.Texture2D)
    IL_0023:  ldarg.0
    IL_0024:  ldc.i4.3
    IL_0025:  call       instance void class Game.ParticleSystem`1<class Game.OnFireParticleSystem/Particle>::set_TextureSlotsCount(int32)
    IL_002a:  ret
  } // end of method OnFireParticleSystem::.ctor

  .method public hidebysig specialname instance bool 
          get_IsStopped() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.OnFireParticleSystem::'<IsStopped>k__BackingField'
    IL_0006:  ret
  } // end of method OnFireParticleSystem::get_IsStopped

  .method public hidebysig specialname instance void 
          set_IsStopped(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.OnFireParticleSystem::'<IsStopped>k__BackingField'
    IL_0007:  ret
  } // end of method OnFireParticleSystem::set_IsStopped

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector3 
          get_Position() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.OnFireParticleSystem::'<Position>k__BackingField'
    IL_0006:  ret
  } // end of method OnFireParticleSystem::get_Position

  .method public hidebysig specialname instance void 
          set_Position(valuetype [Engine]Engine.Vector3 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector3 Game.OnFireParticleSystem::'<Position>k__BackingField'
    IL_0007:  ret
  } // end of method OnFireParticleSystem::set_Position

  .method public hidebysig specialname instance float32 
          get_Radius() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.OnFireParticleSystem::'<Radius>k__BackingField'
    IL_0006:  ret
  } // end of method OnFireParticleSystem::get_Radius

  .method public hidebysig specialname instance void 
          set_Radius(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.OnFireParticleSystem::'<Radius>k__BackingField'
    IL_0007:  ret
  } // end of method OnFireParticleSystem::set_Radius

  .method public hidebysig virtual instance bool 
          Simulate(float32 dt) cil managed
  {
    // 代码大小       580 (0x244)
    .maxstack  6
    .locals init (bool V_0,
             float32 V_1,
             int32 V_2,
             class Game.OnFireParticleSystem/Particle V_3,
             valuetype [Engine]Engine.Vector3 V_4)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldarg.0
    IL_0003:  ldfld      bool Game.OnFireParticleSystem::m_visible
    IL_0008:  brfalse    IL_0235

    IL_000d:  ldarg.0
    IL_000e:  ldarg.0
    IL_000f:  ldfld      float32 Game.OnFireParticleSystem::m_toGenerate
    IL_0014:  ldc.r4     20.
    IL_0019:  ldarg.1
    IL_001a:  mul
    IL_001b:  add
    IL_001c:  stfld      float32 Game.OnFireParticleSystem::m_toGenerate
    IL_0021:  ldc.r4     2.e-002
    IL_0026:  ldarg.1
    IL_0027:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_002c:  stloc.1
    IL_002d:  ldc.i4.0
    IL_002e:  stloc.2
    IL_002f:  br         IL_020a

    IL_0034:  ldarg.0
    IL_0035:  call       instance !0[] class Game.ParticleSystem`1<class Game.OnFireParticleSystem/Particle>::get_Particles()
    IL_003a:  ldloc.2
    IL_003b:  ldelem.ref
    IL_003c:  stloc.3
    IL_003d:  ldloc.3
    IL_003e:  ldfld      bool Game.Particle::IsActive
    IL_0043:  brfalse    IL_00e6

    IL_0048:  ldc.i4.1
    IL_0049:  stloc.0
    IL_004a:  ldloc.3
    IL_004b:  dup
    IL_004c:  ldfld      float32 Game.OnFireParticleSystem/Particle::Time
    IL_0051:  ldarg.1
    IL_0052:  add
    IL_0053:  stfld      float32 Game.OnFireParticleSystem/Particle::Time
    IL_0058:  ldloc.3
    IL_0059:  ldfld      float32 Game.OnFireParticleSystem/Particle::Time
    IL_005e:  ldloc.3
    IL_005f:  ldfld      float32 Game.OnFireParticleSystem/Particle::Duration
    IL_0064:  bgt.un.s   IL_00da

    IL_0066:  ldloc.3
    IL_0067:  dup
    IL_0068:  ldfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_006d:  ldloc.3
    IL_006e:  ldfld      valuetype [Engine]Engine.Vector3 Game.OnFireParticleSystem/Particle::Velocity
    IL_0073:  ldarg.1
    IL_0074:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0079:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_007e:  stfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_0083:  ldloc.3
    IL_0084:  dup
    IL_0085:  ldfld      valuetype [Engine]Engine.Vector3 Game.OnFireParticleSystem/Particle::Velocity
    IL_008a:  ldloc.1
    IL_008b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0090:  stfld      valuetype [Engine]Engine.Vector3 Game.OnFireParticleSystem/Particle::Velocity
    IL_0095:  ldloc.3
    IL_0096:  ldflda     valuetype [Engine]Engine.Vector3 Game.OnFireParticleSystem/Particle::Velocity
    IL_009b:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_00a0:  dup
    IL_00a1:  ldind.r4
    IL_00a2:  ldc.r4     10.
    IL_00a7:  ldarg.1
    IL_00a8:  mul
    IL_00a9:  add
    IL_00aa:  stind.r4
    IL_00ab:  ldloc.3
    IL_00ac:  ldc.r4     9.
    IL_00b1:  ldloc.3
    IL_00b2:  ldfld      float32 Game.OnFireParticleSystem/Particle::Time
    IL_00b7:  mul
    IL_00b8:  ldloc.3
    IL_00b9:  ldfld      float32 Game.OnFireParticleSystem/Particle::Duration
    IL_00be:  div
    IL_00bf:  ldc.r4     1.2
    IL_00c4:  mul
    IL_00c5:  ldc.r4     8.
    IL_00ca:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_00cf:  conv.i4
    IL_00d0:  stfld      int32 Game.Particle::TextureSlot
    IL_00d5:  br         IL_0206

    IL_00da:  ldloc.3
    IL_00db:  ldc.i4.0
    IL_00dc:  stfld      bool Game.Particle::IsActive
    IL_00e1:  br         IL_0206

    IL_00e6:  ldarg.0
    IL_00e7:  call       instance bool Game.OnFireParticleSystem::get_IsStopped()
    IL_00ec:  brtrue     IL_01fb

    IL_00f1:  ldarg.0
    IL_00f2:  ldfld      float32 Game.OnFireParticleSystem::m_toGenerate
    IL_00f7:  ldc.r4     1.
    IL_00fc:  blt.un     IL_0206

    IL_0101:  ldloc.3
    IL_0102:  ldc.i4.1
    IL_0103:  stfld      bool Game.Particle::IsActive
    IL_0108:  ldloca.s   V_4
    IL_010a:  ldarg.0
    IL_010b:  ldfld      class Game.Random Game.OnFireParticleSystem::m_random
    IL_0110:  ldc.r4     -1.
    IL_0115:  ldc.r4     1.
    IL_011a:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_011f:  ldarg.0
    IL_0120:  ldfld      class Game.Random Game.OnFireParticleSystem::m_random
    IL_0125:  ldc.r4     0.0
    IL_012a:  ldc.r4     1.
    IL_012f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0134:  ldarg.0
    IL_0135:  ldfld      class Game.Random Game.OnFireParticleSystem::m_random
    IL_013a:  ldc.r4     -1.
    IL_013f:  ldc.r4     1.
    IL_0144:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0149:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_014e:  ldloc.3
    IL_014f:  ldarg.0
    IL_0150:  call       instance valuetype [Engine]Engine.Vector3 Game.OnFireParticleSystem::get_Position()
    IL_0155:  ldc.r4     0.75
    IL_015a:  ldarg.0
    IL_015b:  call       instance float32 Game.OnFireParticleSystem::get_Radius()
    IL_0160:  mul
    IL_0161:  ldloc.s    V_4
    IL_0163:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0168:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_016d:  stfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_0172:  ldloc.3
    IL_0173:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0178:  stfld      valuetype [Engine]Engine.Color Game.Particle::Color
    IL_017d:  ldloc.3
    IL_017e:  ldc.r4     1.5
    IL_0183:  ldloc.s    V_4
    IL_0185:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_018a:  stfld      valuetype [Engine]Engine.Vector3 Game.OnFireParticleSystem/Particle::Velocity
    IL_018f:  ldloc.3
    IL_0190:  ldc.r4     0.5
    IL_0195:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_019a:  stfld      valuetype [Engine]Engine.Vector2 Game.Particle::Size
    IL_019f:  ldloc.3
    IL_01a0:  ldc.r4     0.0
    IL_01a5:  stfld      float32 Game.OnFireParticleSystem/Particle::Time
    IL_01aa:  ldloc.3
    IL_01ab:  ldarg.0
    IL_01ac:  ldfld      class Game.Random Game.OnFireParticleSystem::m_random
    IL_01b1:  ldc.r4     0.5
    IL_01b6:  ldc.r4     1.5
    IL_01bb:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01c0:  stfld      float32 Game.OnFireParticleSystem/Particle::Duration
    IL_01c5:  ldloc.3
    IL_01c6:  ldarg.0
    IL_01c7:  ldfld      class Game.Random Game.OnFireParticleSystem::m_random
    IL_01cc:  callvirt   instance bool Game.Random::Bool()
    IL_01d1:  stfld      bool Game.Particle::FlipX
    IL_01d6:  ldloc.3
    IL_01d7:  ldarg.0
    IL_01d8:  ldfld      class Game.Random Game.OnFireParticleSystem::m_random
    IL_01dd:  callvirt   instance bool Game.Random::Bool()
    IL_01e2:  stfld      bool Game.Particle::FlipY
    IL_01e7:  ldarg.0
    IL_01e8:  ldarg.0
    IL_01e9:  ldfld      float32 Game.OnFireParticleSystem::m_toGenerate
    IL_01ee:  ldc.r4     1.
    IL_01f3:  sub
    IL_01f4:  stfld      float32 Game.OnFireParticleSystem::m_toGenerate
    IL_01f9:  br.s       IL_0206

    IL_01fb:  ldarg.0
    IL_01fc:  ldc.r4     0.0
    IL_0201:  stfld      float32 Game.OnFireParticleSystem::m_toGenerate
    IL_0206:  ldloc.2
    IL_0207:  ldc.i4.1
    IL_0208:  add
    IL_0209:  stloc.2
    IL_020a:  ldloc.2
    IL_020b:  ldarg.0
    IL_020c:  call       instance !0[] class Game.ParticleSystem`1<class Game.OnFireParticleSystem/Particle>::get_Particles()
    IL_0211:  ldlen
    IL_0212:  conv.i4
    IL_0213:  blt        IL_0034

    IL_0218:  ldarg.0
    IL_0219:  ldarg.0
    IL_021a:  ldfld      float32 Game.OnFireParticleSystem::m_toGenerate
    IL_021f:  ldc.r4     1.
    IL_0224:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_0229:  stfld      float32 Game.OnFireParticleSystem::m_toGenerate
    IL_022e:  ldarg.0
    IL_022f:  ldc.i4.0
    IL_0230:  stfld      bool Game.OnFireParticleSystem::m_visible
    IL_0235:  ldarg.0
    IL_0236:  call       instance bool Game.OnFireParticleSystem::get_IsStopped()
    IL_023b:  brfalse.s  IL_0242

    IL_023d:  ldloc.0
    IL_023e:  brtrue.s   IL_0242

    IL_0240:  ldc.i4.1
    IL_0241:  ret

    IL_0242:  ldc.i4.0
    IL_0243:  ret
  } // end of method OnFireParticleSystem::Simulate

  .method public hidebysig virtual instance void 
          Draw(class Game.Camera camera) cil managed
  {
    // 代码大小       60 (0x3c)
    .maxstack  2
    .locals init (float32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [Engine]Engine.Vector3 Game.OnFireParticleSystem::get_Position()
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_000c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0011:  ldarg.1
    IL_0012:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewDirection()
    IL_0017:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_001c:  stloc.0
    IL_001d:  ldloc.0
    IL_001e:  ldc.r4     -5.
    IL_0023:  ble.un.s   IL_003b

    IL_0025:  ldloc.0
    IL_0026:  ldc.r4     48.
    IL_002b:  bgt.un.s   IL_003b

    IL_002d:  ldarg.0
    IL_002e:  ldc.i4.1
    IL_002f:  stfld      bool Game.OnFireParticleSystem::m_visible
    IL_0034:  ldarg.0
    IL_0035:  ldarg.1
    IL_0036:  call       instance void class Game.ParticleSystem`1<class Game.OnFireParticleSystem/Particle>::Draw(class Game.Camera)
    IL_003b:  ret
  } // end of method OnFireParticleSystem::Draw

  .property instance bool IsStopped()
  {
    .get instance bool Game.OnFireParticleSystem::get_IsStopped()
    .set instance void Game.OnFireParticleSystem::set_IsStopped(bool)
  } // end of property OnFireParticleSystem::IsStopped
  .property instance valuetype [Engine]Engine.Vector3
          Position()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.OnFireParticleSystem::get_Position()
    .set instance void Game.OnFireParticleSystem::set_Position(valuetype [Engine]Engine.Vector3)
  } // end of property OnFireParticleSystem::Position
  .property instance float32 Radius()
  {
    .get instance float32 Game.OnFireParticleSystem::get_Radius()
    .set instance void Game.OnFireParticleSystem::set_Radius(float32)
  } // end of property OnFireParticleSystem::Radius
} // end of class Game.OnFireParticleSystem