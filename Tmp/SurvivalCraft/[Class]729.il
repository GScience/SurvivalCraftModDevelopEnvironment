.class public auto ansi beforefieldinit Game.ShapeshiftParticleSystem
       extends class Game.ParticleSystem`1<class Game.ShapeshiftParticleSystem/Particle>
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
  .field private float32 m_generationSpeed
  .field private float32 m_toGenerate
  .field private bool '<Stopped>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Vector3 '<Position>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.BoundingBox '<BoundingBox>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.ShapeshiftParticleSystem::m_random
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.s   40
    IL_000e:  call       instance void class Game.ParticleSystem`1<class Game.ShapeshiftParticleSystem/Particle>::.ctor(int32)
    IL_0013:  ldarg.0
    IL_0014:  ldstr      "Textures/ShapeshiftParticle"
    IL_0019:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_001e:  call       instance void class Game.ParticleSystem`1<class Game.ShapeshiftParticleSystem/Particle>::set_Texture(class [Engine]Engine.Graphics.Texture2D)
    IL_0023:  ldarg.0
    IL_0024:  ldc.i4.3
    IL_0025:  call       instance void class Game.ParticleSystem`1<class Game.ShapeshiftParticleSystem/Particle>::set_TextureSlotsCount(int32)
    IL_002a:  ret
  } // end of method ShapeshiftParticleSystem::.ctor

  .method public hidebysig specialname instance bool 
          get_Stopped() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ShapeshiftParticleSystem::'<Stopped>k__BackingField'
    IL_0006:  ret
  } // end of method ShapeshiftParticleSystem::get_Stopped

  .method public hidebysig specialname instance void 
          set_Stopped(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ShapeshiftParticleSystem::'<Stopped>k__BackingField'
    IL_0007:  ret
  } // end of method ShapeshiftParticleSystem::set_Stopped

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector3 
          get_Position() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.ShapeshiftParticleSystem::'<Position>k__BackingField'
    IL_0006:  ret
  } // end of method ShapeshiftParticleSystem::get_Position

  .method public hidebysig specialname instance void 
          set_Position(valuetype [Engine]Engine.Vector3 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector3 Game.ShapeshiftParticleSystem::'<Position>k__BackingField'
    IL_0007:  ret
  } // end of method ShapeshiftParticleSystem::set_Position

  .method public hidebysig specialname instance valuetype [Engine]Engine.BoundingBox 
          get_BoundingBox() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.BoundingBox Game.ShapeshiftParticleSystem::'<BoundingBox>k__BackingField'
    IL_0006:  ret
  } // end of method ShapeshiftParticleSystem::get_BoundingBox

  .method public hidebysig specialname instance void 
          set_BoundingBox(valuetype [Engine]Engine.BoundingBox 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.BoundingBox Game.ShapeshiftParticleSystem::'<BoundingBox>k__BackingField'
    IL_0007:  ret
  } // end of method ShapeshiftParticleSystem::set_BoundingBox

  .method public hidebysig virtual instance bool 
          Simulate(class Game.SubsystemDrawing subsystemDrawing,
                   float32 dt) cil managed
  {
    // 代码大小       620 (0x26c)
    .maxstack  5
    .locals init (bool V_0,
             int32 V_1,
             class Game.ShapeshiftParticleSystem/Particle V_2)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldarg.0
    IL_0003:  ldarg.0
    IL_0004:  ldfld      float32 Game.ShapeshiftParticleSystem::m_generationSpeed
    IL_0009:  ldc.r4     15.
    IL_000e:  ldarg.2
    IL_000f:  mul
    IL_0010:  add
    IL_0011:  ldc.r4     35.
    IL_0016:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_001b:  stfld      float32 Game.ShapeshiftParticleSystem::m_generationSpeed
    IL_0020:  ldarg.0
    IL_0021:  ldarg.0
    IL_0022:  ldfld      float32 Game.ShapeshiftParticleSystem::m_toGenerate
    IL_0027:  ldarg.0
    IL_0028:  ldfld      float32 Game.ShapeshiftParticleSystem::m_generationSpeed
    IL_002d:  ldarg.2
    IL_002e:  mul
    IL_002f:  add
    IL_0030:  stfld      float32 Game.ShapeshiftParticleSystem::m_toGenerate
    IL_0035:  ldc.i4.0
    IL_0036:  stloc.1
    IL_0037:  br         IL_0239

    IL_003c:  ldarg.0
    IL_003d:  call       instance !0[] class Game.ParticleSystem`1<class Game.ShapeshiftParticleSystem/Particle>::get_Particles()
    IL_0042:  ldloc.1
    IL_0043:  ldelem.ref
    IL_0044:  stloc.2
    IL_0045:  ldloc.2
    IL_0046:  ldfld      bool Game.Particle::IsActive
    IL_004b:  brfalse    IL_00e2

    IL_0050:  ldc.i4.1
    IL_0051:  stloc.0
    IL_0052:  ldloc.2
    IL_0053:  dup
    IL_0054:  ldfld      float32 Game.ShapeshiftParticleSystem/Particle::Time
    IL_0059:  ldarg.2
    IL_005a:  add
    IL_005b:  stfld      float32 Game.ShapeshiftParticleSystem/Particle::Time
    IL_0060:  ldloc.2
    IL_0061:  ldfld      float32 Game.ShapeshiftParticleSystem/Particle::Time
    IL_0066:  ldloc.2
    IL_0067:  ldfld      float32 Game.ShapeshiftParticleSystem/Particle::Duration
    IL_006c:  bgt.un.s   IL_00d6

    IL_006e:  ldloc.2
    IL_006f:  dup
    IL_0070:  ldfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_0075:  ldloc.2
    IL_0076:  ldfld      valuetype [Engine]Engine.Vector3 Game.ShapeshiftParticleSystem/Particle::Velocity
    IL_007b:  ldarg.2
    IL_007c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0081:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0086:  stfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_008b:  ldloc.2
    IL_008c:  ldarg.0
    IL_008d:  ldfld      class Game.Random Game.ShapeshiftParticleSystem::m_random
    IL_0092:  callvirt   instance bool Game.Random::Bool()
    IL_0097:  stfld      bool Game.Particle::FlipX
    IL_009c:  ldloc.2
    IL_009d:  ldarg.0
    IL_009e:  ldfld      class Game.Random Game.ShapeshiftParticleSystem::m_random
    IL_00a3:  callvirt   instance bool Game.Random::Bool()
    IL_00a8:  stfld      bool Game.Particle::FlipY
    IL_00ad:  ldloc.2
    IL_00ae:  ldc.r4     9.9000006
    IL_00b3:  ldloc.2
    IL_00b4:  ldfld      float32 Game.ShapeshiftParticleSystem/Particle::Time
    IL_00b9:  mul
    IL_00ba:  ldloc.2
    IL_00bb:  ldfld      float32 Game.ShapeshiftParticleSystem/Particle::Duration
    IL_00c0:  div
    IL_00c1:  ldc.r4     8.
    IL_00c6:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_00cb:  conv.i4
    IL_00cc:  stfld      int32 Game.Particle::TextureSlot
    IL_00d1:  br         IL_0235

    IL_00d6:  ldloc.2
    IL_00d7:  ldc.i4.0
    IL_00d8:  stfld      bool Game.Particle::IsActive
    IL_00dd:  br         IL_0235

    IL_00e2:  ldarg.0
    IL_00e3:  call       instance bool Game.ShapeshiftParticleSystem::get_Stopped()
    IL_00e8:  brtrue     IL_022a

    IL_00ed:  br         IL_0218

    IL_00f2:  ldloc.2
    IL_00f3:  ldc.i4.1
    IL_00f4:  stfld      bool Game.Particle::IsActive
    IL_00f9:  ldloc.2
    IL_00fa:  ldflda     valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_00ff:  ldarg.0
    IL_0100:  ldfld      class Game.Random Game.ShapeshiftParticleSystem::m_random
    IL_0105:  ldarg.0
    IL_0106:  call       instance valuetype [Engine]Engine.BoundingBox Game.ShapeshiftParticleSystem::get_BoundingBox()
    IL_010b:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0110:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0115:  ldarg.0
    IL_0116:  call       instance valuetype [Engine]Engine.BoundingBox Game.ShapeshiftParticleSystem::get_BoundingBox()
    IL_011b:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0120:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0125:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_012a:  stfld      float32 [Engine]Engine.Vector3::X
    IL_012f:  ldloc.2
    IL_0130:  ldflda     valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_0135:  ldarg.0
    IL_0136:  ldfld      class Game.Random Game.ShapeshiftParticleSystem::m_random
    IL_013b:  ldarg.0
    IL_013c:  call       instance valuetype [Engine]Engine.BoundingBox Game.ShapeshiftParticleSystem::get_BoundingBox()
    IL_0141:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0146:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_014b:  ldarg.0
    IL_014c:  call       instance valuetype [Engine]Engine.BoundingBox Game.ShapeshiftParticleSystem::get_BoundingBox()
    IL_0151:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0156:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_015b:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0160:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_0165:  ldloc.2
    IL_0166:  ldflda     valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_016b:  ldarg.0
    IL_016c:  ldfld      class Game.Random Game.ShapeshiftParticleSystem::m_random
    IL_0171:  ldarg.0
    IL_0172:  call       instance valuetype [Engine]Engine.BoundingBox Game.ShapeshiftParticleSystem::get_BoundingBox()
    IL_0177:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_017c:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0181:  ldarg.0
    IL_0182:  call       instance valuetype [Engine]Engine.BoundingBox Game.ShapeshiftParticleSystem::get_BoundingBox()
    IL_0187:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_018c:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0191:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0196:  stfld      float32 [Engine]Engine.Vector3::Z
    IL_019b:  ldloc.2
    IL_019c:  ldc.r4     0.0
    IL_01a1:  ldarg.0
    IL_01a2:  ldfld      class Game.Random Game.ShapeshiftParticleSystem::m_random
    IL_01a7:  ldc.r4     0.5
    IL_01ac:  ldc.r4     1.5
    IL_01b1:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01b6:  ldc.r4     0.0
    IL_01bb:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01c0:  stfld      valuetype [Engine]Engine.Vector3 Game.ShapeshiftParticleSystem/Particle::Velocity
    IL_01c5:  ldloc.2
    IL_01c6:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_01cb:  stfld      valuetype [Engine]Engine.Color Game.Particle::Color
    IL_01d0:  ldloc.2
    IL_01d1:  ldc.r4     0.40000001
    IL_01d6:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_01db:  stfld      valuetype [Engine]Engine.Vector2 Game.Particle::Size
    IL_01e0:  ldloc.2
    IL_01e1:  ldc.r4     0.0
    IL_01e6:  stfld      float32 Game.ShapeshiftParticleSystem/Particle::Time
    IL_01eb:  ldloc.2
    IL_01ec:  ldarg.0
    IL_01ed:  ldfld      class Game.Random Game.ShapeshiftParticleSystem::m_random
    IL_01f2:  ldc.r4     0.75
    IL_01f7:  ldc.r4     1.5
    IL_01fc:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0201:  stfld      float32 Game.ShapeshiftParticleSystem/Particle::Duration
    IL_0206:  ldarg.0
    IL_0207:  ldarg.0
    IL_0208:  ldfld      float32 Game.ShapeshiftParticleSystem::m_toGenerate
    IL_020d:  ldc.r4     1.
    IL_0212:  sub
    IL_0213:  stfld      float32 Game.ShapeshiftParticleSystem::m_toGenerate
    IL_0218:  ldarg.0
    IL_0219:  ldfld      float32 Game.ShapeshiftParticleSystem::m_toGenerate
    IL_021e:  ldc.r4     1.
    IL_0223:  bge        IL_00f2

    IL_0228:  br.s       IL_0235

    IL_022a:  ldarg.0
    IL_022b:  ldc.r4     0.0
    IL_0230:  stfld      float32 Game.ShapeshiftParticleSystem::m_toGenerate
    IL_0235:  ldloc.1
    IL_0236:  ldc.i4.1
    IL_0237:  add
    IL_0238:  stloc.1
    IL_0239:  ldloc.1
    IL_023a:  ldarg.0
    IL_023b:  call       instance !0[] class Game.ParticleSystem`1<class Game.ShapeshiftParticleSystem/Particle>::get_Particles()
    IL_0240:  ldlen
    IL_0241:  conv.i4
    IL_0242:  blt        IL_003c

    IL_0247:  ldarg.0
    IL_0248:  ldarg.0
    IL_0249:  ldfld      float32 Game.ShapeshiftParticleSystem::m_toGenerate
    IL_024e:  ldc.r4     1.
    IL_0253:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_0258:  stfld      float32 Game.ShapeshiftParticleSystem::m_toGenerate
    IL_025d:  ldarg.0
    IL_025e:  call       instance bool Game.ShapeshiftParticleSystem::get_Stopped()
    IL_0263:  brfalse.s  IL_026a

    IL_0265:  ldloc.0
    IL_0266:  brtrue.s   IL_026a

    IL_0268:  ldc.i4.1
    IL_0269:  ret

    IL_026a:  ldc.i4.0
    IL_026b:  ret
  } // end of method ShapeshiftParticleSystem::Simulate

  .property instance bool Stopped()
  {
    .get instance bool Game.ShapeshiftParticleSystem::get_Stopped()
    .set instance void Game.ShapeshiftParticleSystem::set_Stopped(bool)
  } // end of property ShapeshiftParticleSystem::Stopped
  .property instance valuetype [Engine]Engine.Vector3
          Position()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.ShapeshiftParticleSystem::get_Position()
    .set instance void Game.ShapeshiftParticleSystem::set_Position(valuetype [Engine]Engine.Vector3)
  } // end of property ShapeshiftParticleSystem::Position
  .property instance valuetype [Engine]Engine.BoundingBox
          BoundingBox()
  {
    .get instance valuetype [Engine]Engine.BoundingBox Game.ShapeshiftParticleSystem::get_BoundingBox()
    .set instance void Game.ShapeshiftParticleSystem::set_BoundingBox(valuetype [Engine]Engine.BoundingBox)
  } // end of property ShapeshiftParticleSystem::BoundingBox
} // end of class Game.ShapeshiftParticleSystem