.class public auto ansi beforefieldinit Game.ExplosionParticleSystem
       extends class Game.ParticleSystem`1<class Game.ExplosionParticleSystem/Particle>
{
  .class auto ansi nested public beforefieldinit Particle
         extends Game.Particle
  {
    .field public float32 Strength
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

  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.ExplosionParticleSystem/Particle> m_particlesByPoint
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.ExplosionParticleSystem/Particle> m_inactiveParticles
  .field private class Game.Random m_random
  .field private static literal float32 m_duration = float32(1.5)
  .field private bool m_isEmpty
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       85 (0x55)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.ExplosionParticleSystem/Particle>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.ExplosionParticleSystem/Particle> Game.ExplosionParticleSystem::m_particlesByPoint
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ExplosionParticleSystem/Particle>::.ctor()
    IL_0011:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ExplosionParticleSystem/Particle> Game.ExplosionParticleSystem::m_inactiveParticles
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void Game.Random::.ctor()
    IL_001c:  stfld      class Game.Random Game.ExplosionParticleSystem::m_random
    IL_0021:  ldarg.0
    IL_0022:  ldc.i4     0x3e8
    IL_0027:  call       instance void class Game.ParticleSystem`1<class Game.ExplosionParticleSystem/Particle>::.ctor(int32)
    IL_002c:  ldarg.0
    IL_002d:  ldstr      "Textures/FireParticle"
    IL_0032:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_0037:  call       instance void class Game.ParticleSystem`1<class Game.ExplosionParticleSystem/Particle>::set_Texture(class [Engine]Engine.Graphics.Texture2D)
    IL_003c:  ldarg.0
    IL_003d:  ldc.i4.3
    IL_003e:  call       instance void class Game.ParticleSystem`1<class Game.ExplosionParticleSystem/Particle>::set_TextureSlotsCount(int32)
    IL_0043:  ldarg.0
    IL_0044:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ExplosionParticleSystem/Particle> Game.ExplosionParticleSystem::m_inactiveParticles
    IL_0049:  ldarg.0
    IL_004a:  call       instance !0[] class Game.ParticleSystem`1<class Game.ExplosionParticleSystem/Particle>::get_Particles()
    IL_004f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ExplosionParticleSystem/Particle>::AddRange(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
    IL_0054:  ret
  } // end of method ExplosionParticleSystem::.ctor

  .method public hidebysig instance void 
          SetExplosionCell(valuetype [Engine]Engine.Point3 point,
                           float32 strength) cil managed
  {
    // 代码大小       361 (0x169)
    .maxstack  8
    .locals init (class Game.ExplosionParticleSystem/Particle V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.ExplosionParticleSystem/Particle> Game.ExplosionParticleSystem::m_particlesByPoint
    IL_0006:  ldarg.1
    IL_0007:  ldloca.s   V_0
    IL_0009:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.ExplosionParticleSystem/Particle>::TryGetValue(!0,
                                                                                                                                                                                                   !1&)
    IL_000e:  brtrue     IL_00a0

    IL_0013:  ldarg.0
    IL_0014:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ExplosionParticleSystem/Particle> Game.ExplosionParticleSystem::m_inactiveParticles
    IL_0019:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.ExplosionParticleSystem/Particle>::get_Count()
    IL_001e:  ldc.i4.0
    IL_001f:  ble.s      IL_0054

    IL_0021:  ldarg.0
    IL_0022:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ExplosionParticleSystem/Particle> Game.ExplosionParticleSystem::m_inactiveParticles
    IL_0027:  ldarg.0
    IL_0028:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ExplosionParticleSystem/Particle> Game.ExplosionParticleSystem::m_inactiveParticles
    IL_002d:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.ExplosionParticleSystem/Particle>::get_Count()
    IL_0032:  ldc.i4.1
    IL_0033:  sub
    IL_0034:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.ExplosionParticleSystem/Particle>::get_Item(int32)
    IL_0039:  stloc.0
    IL_003a:  ldarg.0
    IL_003b:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ExplosionParticleSystem/Particle> Game.ExplosionParticleSystem::m_inactiveParticles
    IL_0040:  ldarg.0
    IL_0041:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ExplosionParticleSystem/Particle> Game.ExplosionParticleSystem::m_inactiveParticles
    IL_0046:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.ExplosionParticleSystem/Particle>::get_Count()
    IL_004b:  ldc.i4.1
    IL_004c:  sub
    IL_004d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ExplosionParticleSystem/Particle>::RemoveAt(int32)
    IL_0052:  br.s       IL_0090

    IL_0054:  ldc.i4.0
    IL_0055:  stloc.1
    IL_0056:  br.s       IL_008c

    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.Random Game.ExplosionParticleSystem::m_random
    IL_005e:  ldc.i4.0
    IL_005f:  ldarg.0
    IL_0060:  call       instance !0[] class Game.ParticleSystem`1<class Game.ExplosionParticleSystem/Particle>::get_Particles()
    IL_0065:  ldlen
    IL_0066:  conv.i4
    IL_0067:  ldc.i4.1
    IL_0068:  sub
    IL_0069:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_006e:  stloc.2
    IL_006f:  ldarg.2
    IL_0070:  ldarg.0
    IL_0071:  call       instance !0[] class Game.ParticleSystem`1<class Game.ExplosionParticleSystem/Particle>::get_Particles()
    IL_0076:  ldloc.2
    IL_0077:  ldelem.ref
    IL_0078:  ldfld      float32 Game.ExplosionParticleSystem/Particle::Strength
    IL_007d:  ble.un.s   IL_0088

    IL_007f:  ldarg.0
    IL_0080:  call       instance !0[] class Game.ParticleSystem`1<class Game.ExplosionParticleSystem/Particle>::get_Particles()
    IL_0085:  ldloc.2
    IL_0086:  ldelem.ref
    IL_0087:  stloc.0
    IL_0088:  ldloc.1
    IL_0089:  ldc.i4.1
    IL_008a:  add
    IL_008b:  stloc.1
    IL_008c:  ldloc.1
    IL_008d:  ldc.i4.5
    IL_008e:  blt.s      IL_0058

    IL_0090:  ldloc.0
    IL_0091:  brfalse.s  IL_00a0

    IL_0093:  ldarg.0
    IL_0094:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.ExplosionParticleSystem/Particle> Game.ExplosionParticleSystem::m_particlesByPoint
    IL_0099:  ldarg.1
    IL_009a:  ldloc.0
    IL_009b:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.ExplosionParticleSystem/Particle>::Add(!0,
                                                                                                                                                                                           !1)
    IL_00a0:  ldloc.0
    IL_00a1:  brfalse    IL_0168

    IL_00a6:  ldloc.0
    IL_00a7:  ldc.i4.1
    IL_00a8:  stfld      bool Game.Particle::IsActive
    IL_00ad:  ldloc.0
    IL_00ae:  ldarg.1
    IL_00af:  ldfld      int32 [Engine]Engine.Point3::X
    IL_00b4:  conv.r4
    IL_00b5:  ldarg.1
    IL_00b6:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00bb:  conv.r4
    IL_00bc:  ldarg.1
    IL_00bd:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_00c2:  conv.r4
    IL_00c3:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00c8:  ldc.r4     0.5
    IL_00cd:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_00d2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00d7:  ldc.r4     0.2
    IL_00dc:  ldarg.0
    IL_00dd:  ldfld      class Game.Random Game.ExplosionParticleSystem::m_random
    IL_00e2:  ldc.r4     -1.
    IL_00e7:  ldc.r4     1.
    IL_00ec:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00f1:  ldarg.0
    IL_00f2:  ldfld      class Game.Random Game.ExplosionParticleSystem::m_random
    IL_00f7:  ldc.r4     -1.
    IL_00fc:  ldc.r4     1.
    IL_0101:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0106:  ldarg.0
    IL_0107:  ldfld      class Game.Random Game.ExplosionParticleSystem::m_random
    IL_010c:  ldc.r4     -1.
    IL_0111:  ldc.r4     1.
    IL_0116:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_011b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0120:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0125:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_012a:  stfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_012f:  ldloc.0
    IL_0130:  ldarg.0
    IL_0131:  ldfld      class Game.Random Game.ExplosionParticleSystem::m_random
    IL_0136:  ldc.r4     0.60000002
    IL_013b:  ldc.r4     0.89999998
    IL_0140:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0145:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_014a:  stfld      valuetype [Engine]Engine.Vector2 Game.Particle::Size
    IL_014f:  ldloc.0
    IL_0150:  ldarg.2
    IL_0151:  stfld      float32 Game.ExplosionParticleSystem/Particle::Strength
    IL_0156:  ldloc.0
    IL_0157:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_015c:  stfld      valuetype [Engine]Engine.Color Game.Particle::Color
    IL_0161:  ldarg.0
    IL_0162:  ldc.i4.0
    IL_0163:  stfld      bool Game.ExplosionParticleSystem::m_isEmpty
    IL_0168:  ret
  } // end of method ExplosionParticleSystem::SetExplosionCell

  .method public hidebysig virtual instance bool 
          Simulate(float32 dt) cil managed
  {
    // 代码大小       218 (0xda)
    .maxstack  5
    .locals init (int32 V_0,
             class Game.ExplosionParticleSystem/Particle V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ExplosionParticleSystem::m_isEmpty
    IL_0006:  brtrue     IL_00d8

    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.1
    IL_000d:  stfld      bool Game.ExplosionParticleSystem::m_isEmpty
    IL_0012:  ldc.i4.0
    IL_0013:  stloc.0
    IL_0014:  br         IL_00ca

    IL_0019:  ldarg.0
    IL_001a:  call       instance !0[] class Game.ParticleSystem`1<class Game.ExplosionParticleSystem/Particle>::get_Particles()
    IL_001f:  ldloc.0
    IL_0020:  ldelem.ref
    IL_0021:  stloc.1
    IL_0022:  ldloc.1
    IL_0023:  ldfld      bool Game.Particle::IsActive
    IL_0028:  brfalse    IL_00c6

    IL_002d:  ldarg.0
    IL_002e:  ldc.i4.0
    IL_002f:  stfld      bool Game.ExplosionParticleSystem::m_isEmpty
    IL_0034:  ldloc.1
    IL_0035:  dup
    IL_0036:  ldfld      float32 Game.ExplosionParticleSystem/Particle::Strength
    IL_003b:  ldarg.1
    IL_003c:  ldc.r4     1.5
    IL_0041:  div
    IL_0042:  sub
    IL_0043:  stfld      float32 Game.ExplosionParticleSystem/Particle::Strength
    IL_0048:  ldloc.1
    IL_0049:  ldfld      float32 Game.ExplosionParticleSystem/Particle::Strength
    IL_004e:  ldc.r4     0.0
    IL_0053:  ble.un.s   IL_00b3

    IL_0055:  ldloc.1
    IL_0056:  ldc.r4     9.
    IL_005b:  ldc.r4     1.
    IL_0060:  ldloc.1
    IL_0061:  ldfld      float32 Game.ExplosionParticleSystem/Particle::Strength
    IL_0066:  sub
    IL_0067:  mul
    IL_0068:  ldc.r4     0.60000002
    IL_006d:  mul
    IL_006e:  ldc.r4     8.
    IL_0073:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0078:  conv.i4
    IL_0079:  stfld      int32 Game.Particle::TextureSlot
    IL_007e:  ldloc.1
    IL_007f:  ldflda     valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_0084:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_0089:  dup
    IL_008a:  ldind.r4
    IL_008b:  ldc.r4     2.
    IL_0090:  ldc.r4     1.
    IL_0095:  ldloc.1
    IL_0096:  ldfld      float32 Game.ExplosionParticleSystem/Particle::Strength
    IL_009b:  sub
    IL_009c:  ldc.r4     0.25
    IL_00a1:  sub
    IL_00a2:  ldc.r4     0.0
    IL_00a7:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_00ac:  mul
    IL_00ad:  ldarg.1
    IL_00ae:  mul
    IL_00af:  add
    IL_00b0:  stind.r4
    IL_00b1:  br.s       IL_00c6

    IL_00b3:  ldloc.1
    IL_00b4:  ldc.i4.0
    IL_00b5:  stfld      bool Game.Particle::IsActive
    IL_00ba:  ldarg.0
    IL_00bb:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ExplosionParticleSystem/Particle> Game.ExplosionParticleSystem::m_inactiveParticles
    IL_00c0:  ldloc.1
    IL_00c1:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ExplosionParticleSystem/Particle>::Add(!0)
    IL_00c6:  ldloc.0
    IL_00c7:  ldc.i4.1
    IL_00c8:  add
    IL_00c9:  stloc.0
    IL_00ca:  ldloc.0
    IL_00cb:  ldarg.0
    IL_00cc:  call       instance !0[] class Game.ParticleSystem`1<class Game.ExplosionParticleSystem/Particle>::get_Particles()
    IL_00d1:  ldlen
    IL_00d2:  conv.i4
    IL_00d3:  blt        IL_0019

    IL_00d8:  ldc.i4.0
    IL_00d9:  ret
  } // end of method ExplosionParticleSystem::Simulate

  .method public hidebysig virtual instance void 
          Draw(class Game.Camera camera) cil managed
  {
    // 代码大小       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ExplosionParticleSystem::m_isEmpty
    IL_0006:  brtrue.s   IL_000f

    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  call       instance void class Game.ParticleSystem`1<class Game.ExplosionParticleSystem/Particle>::Draw(class Game.Camera)
    IL_000f:  ret
  } // end of method ExplosionParticleSystem::Draw

} // end of class Game.ExplosionParticleSystem