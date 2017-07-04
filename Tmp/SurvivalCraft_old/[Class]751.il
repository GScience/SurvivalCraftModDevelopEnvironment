.class public auto ansi beforefieldinit Game.ParticleSystem`1<.ctor (Game.Particle) T>
       extends Game.ParticleSystemBase
{
  .field private !T[] m_particles
  .field private class [Engine]Engine.Graphics.Texture2D m_texture
  .field private class [Engine]Engine.Graphics.TexturedBatch3D AdditiveBatch
  .field private class [Engine]Engine.Graphics.TexturedBatch3D AlphaBlendedBatch
  .field private int32 '<TextureSlotsCount>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<UseVerticalBillboarding>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method family hidebysig specialname rtspecialname 
          instance void  .ctor(int32 particlesCount) cil managed
  {
    // 代码大小       55 (0x37)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.ParticleSystemBase::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  newarr     !T
    IL_000d:  stfld      !0[] class Game.ParticleSystem`1<!T>::m_particles
    IL_0012:  ldc.i4.0
    IL_0013:  stloc.0
    IL_0014:  br.s       IL_002b

    IL_0016:  ldarg.0
    IL_0017:  ldfld      !0[] class Game.ParticleSystem`1<!T>::m_particles
    IL_001c:  ldloc.0
    IL_001d:  call       !!0 [System.Runtime]System.Activator::CreateInstance<!T>()
    IL_0022:  stelem     !T
    IL_0027:  ldloc.0
    IL_0028:  ldc.i4.1
    IL_0029:  add
    IL_002a:  stloc.0
    IL_002b:  ldloc.0
    IL_002c:  ldarg.0
    IL_002d:  ldfld      !0[] class Game.ParticleSystem`1<!T>::m_particles
    IL_0032:  ldlen
    IL_0033:  conv.i4
    IL_0034:  blt.s      IL_0016

    IL_0036:  ret
  } // end of method ParticleSystem`1::.ctor

  .method family hidebysig specialname instance !T[] 
          get_Particles() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      !0[] class Game.ParticleSystem`1<!T>::m_particles
    IL_0006:  ret
  } // end of method ParticleSystem`1::get_Particles

  .method family hidebysig specialname instance class [Engine]Engine.Graphics.Texture2D 
          get_Texture() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.Graphics.Texture2D class Game.ParticleSystem`1<!T>::m_texture
    IL_0006:  ret
  } // end of method ParticleSystem`1::get_Texture

  .method family hidebysig specialname instance void 
          set_Texture(class [Engine]Engine.Graphics.Texture2D 'value') cil managed
  {
    // 代码大小       31 (0x1f)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [Engine]Engine.Graphics.Texture2D class Game.ParticleSystem`1<!T>::m_texture
    IL_0007:  beq.s      IL_001e

    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  stfld      class [Engine]Engine.Graphics.Texture2D class Game.ParticleSystem`1<!T>::m_texture
    IL_0010:  ldarg.0
    IL_0011:  ldnull
    IL_0012:  stfld      class [Engine]Engine.Graphics.TexturedBatch3D class Game.ParticleSystem`1<!T>::AdditiveBatch
    IL_0017:  ldarg.0
    IL_0018:  ldnull
    IL_0019:  stfld      class [Engine]Engine.Graphics.TexturedBatch3D class Game.ParticleSystem`1<!T>::AlphaBlendedBatch
    IL_001e:  ret
  } // end of method ParticleSystem`1::set_Texture

  .method family hidebysig specialname instance int32 
          get_TextureSlotsCount() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 class Game.ParticleSystem`1<!T>::'<TextureSlotsCount>k__BackingField'
    IL_0006:  ret
  } // end of method ParticleSystem`1::get_TextureSlotsCount

  .method family hidebysig specialname instance void 
          set_TextureSlotsCount(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 class Game.ParticleSystem`1<!T>::'<TextureSlotsCount>k__BackingField'
    IL_0007:  ret
  } // end of method ParticleSystem`1::set_TextureSlotsCount

  .method family hidebysig specialname instance bool 
          get_UseVerticalBillboarding() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool class Game.ParticleSystem`1<!T>::'<UseVerticalBillboarding>k__BackingField'
    IL_0006:  ret
  } // end of method ParticleSystem`1::get_UseVerticalBillboarding

  .method family hidebysig specialname instance void 
          set_UseVerticalBillboarding(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool class Game.ParticleSystem`1<!T>::'<UseVerticalBillboarding>k__BackingField'
    IL_0007:  ret
  } // end of method ParticleSystem`1::set_UseVerticalBillboarding

  .method public hidebysig virtual instance void 
          Draw(class Game.Camera camera) cil managed
  {
    // 代码大小       875 (0x36b)
    .maxstack  10
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             float32 V_3,
             int32 V_4,
             class Game.Particle V_5,
             valuetype [Engine]Engine.Vector3 V_6,
             valuetype [Engine]Engine.Vector2 V_7,
             float32 V_8,
             int32 V_9,
             valuetype [Engine]Engine.Vector3 V_10,
             valuetype [Engine]Engine.Vector3 V_11,
             valuetype [Engine]Engine.Vector3 V_12,
             valuetype [Engine]Engine.Vector3 V_13,
             float32 V_14,
             float32 V_15,
             float32 V_16,
             float32 V_17,
             valuetype [Engine]Engine.Vector2 V_18,
             valuetype [Engine]Engine.Vector2 V_19,
             valuetype [Engine]Engine.Vector2 V_20,
             valuetype [Engine]Engine.Vector2 V_21,
             valuetype [Engine]Engine.Vector3 V_22,
             valuetype [Engine]Engine.Vector3 V_23,
             valuetype [Engine]Engine.Vector3 V_24,
             valuetype [Engine]Engine.Vector3 V_25)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.Graphics.TexturedBatch3D class Game.ParticleSystem`1<!T>::AdditiveBatch
    IL_0006:  brfalse.s  IL_0010

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class [Engine]Engine.Graphics.TexturedBatch3D class Game.ParticleSystem`1<!T>::AlphaBlendedBatch
    IL_000e:  brtrue.s   IL_006c

    IL_0010:  ldarg.0
    IL_0011:  ldarg.0
    IL_0012:  ldfld      class Game.SubsystemParticles Game.ParticleSystemBase::SubsystemParticles
    IL_0017:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemParticles::PrimitivesRenderer
    IL_001c:  ldarg.0
    IL_001d:  ldfld      class [Engine]Engine.Graphics.Texture2D class Game.ParticleSystem`1<!T>::m_texture
    IL_0022:  ldc.i4.1
    IL_0023:  ldc.i4.0
    IL_0024:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::DepthRead
    IL_0029:  ldnull
    IL_002a:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::Additive
    IL_002f:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
    IL_0034:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_0039:  stfld      class [Engine]Engine.Graphics.TexturedBatch3D class Game.ParticleSystem`1<!T>::AdditiveBatch
    IL_003e:  ldarg.0
    IL_003f:  ldarg.0
    IL_0040:  ldfld      class Game.SubsystemParticles Game.ParticleSystemBase::SubsystemParticles
    IL_0045:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemParticles::PrimitivesRenderer
    IL_004a:  ldarg.0
    IL_004b:  ldfld      class [Engine]Engine.Graphics.Texture2D class Game.ParticleSystem`1<!T>::m_texture
    IL_0050:  ldc.i4.1
    IL_0051:  ldc.i4.0
    IL_0052:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::Default
    IL_0057:  ldnull
    IL_0058:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::AlphaBlend
    IL_005d:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
    IL_0062:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_0067:  stfld      class [Engine]Engine.Graphics.TexturedBatch3D class Game.ParticleSystem`1<!T>::AlphaBlendedBatch
    IL_006c:  ldarg.1
    IL_006d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewDirection()
    IL_0072:  stloc.0
    IL_0073:  ldloc.0
    IL_0074:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0079:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_007e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0083:  stloc.1
    IL_0084:  ldarg.0
    IL_0085:  call       instance bool class Game.ParticleSystem`1<!T>::get_UseVerticalBillboarding()
    IL_008a:  brtrue.s   IL_009a

    IL_008c:  ldloc.1
    IL_008d:  ldloc.0
    IL_008e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_0093:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0098:  br.s       IL_009f

    IL_009a:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_009f:  stloc.2
    IL_00a0:  ldc.r4     1.
    IL_00a5:  ldarg.0
    IL_00a6:  call       instance int32 class Game.ParticleSystem`1<!T>::get_TextureSlotsCount()
    IL_00ab:  conv.r4
    IL_00ac:  div
    IL_00ad:  stloc.3
    IL_00ae:  ldc.i4.0
    IL_00af:  stloc.s    V_4
    IL_00b1:  br         IL_035b

    IL_00b6:  ldarg.0
    IL_00b7:  ldfld      !0[] class Game.ParticleSystem`1<!T>::m_particles
    IL_00bc:  ldloc.s    V_4
    IL_00be:  ldelem     !T
    IL_00c3:  box        !T
    IL_00c8:  stloc.s    V_5
    IL_00ca:  ldloc.s    V_5
    IL_00cc:  ldfld      bool Game.Particle::IsActive
    IL_00d1:  brfalse    IL_0355

    IL_00d6:  ldloc.s    V_5
    IL_00d8:  ldfld      valuetype [Engine]Engine.Vector3 Game.Particle::Position
    IL_00dd:  stloc.s    V_6
    IL_00df:  ldloc.s    V_5
    IL_00e1:  ldfld      valuetype [Engine]Engine.Vector2 Game.Particle::Size
    IL_00e6:  stloc.s    V_7
    IL_00e8:  ldloc.s    V_5
    IL_00ea:  ldfld      float32 Game.Particle::Rotation
    IL_00ef:  stloc.s    V_8
    IL_00f1:  ldloc.s    V_5
    IL_00f3:  ldfld      int32 Game.Particle::TextureSlot
    IL_00f8:  stloc.s    V_9
    IL_00fa:  ldloc.s    V_8
    IL_00fc:  ldc.r4     0.0
    IL_0101:  beq        IL_01e8

    IL_0106:  ldloc.0
    IL_0107:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_010c:  ldloc.0
    IL_010d:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0112:  mul
    IL_0113:  ldloc.0
    IL_0114:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0119:  ldloc.0
    IL_011a:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_011f:  mul
    IL_0120:  bgt.s      IL_013c

    IL_0122:  ldloc.s    V_8
    IL_0124:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_0129:  ldloc.s    V_8
    IL_012b:  call       float32 [Engine]Engine.MathUtils::Cos(float32)
    IL_0130:  ldc.r4     0.0
    IL_0135:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_013a:  br.s       IL_0154

    IL_013c:  ldc.r4     0.0
    IL_0141:  ldloc.s    V_8
    IL_0143:  call       float32 [Engine]Engine.MathUtils::Cos(float32)
    IL_0148:  ldloc.s    V_8
    IL_014a:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_014f:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0154:  stloc.s    V_22
    IL_0156:  ldloc.0
    IL_0157:  ldloc.s    V_22
    IL_0159:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_015e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0163:  stloc.s    V_23
    IL_0165:  ldloc.0
    IL_0166:  ldloc.s    V_23
    IL_0168:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_016d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0172:  stloc.s    V_22
    IL_0174:  ldloc.s    V_23
    IL_0176:  ldloc.s    V_7
    IL_0178:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_017d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0182:  stloc.s    V_23
    IL_0184:  ldloc.s    V_22
    IL_0186:  ldloc.s    V_7
    IL_0188:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_018d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0192:  stloc.s    V_22
    IL_0194:  ldloc.s    V_6
    IL_0196:  ldloc.s    V_23
    IL_0198:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_019d:  ldloc.s    V_22
    IL_019f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_01a4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01a9:  stloc.s    V_10
    IL_01ab:  ldloc.s    V_6
    IL_01ad:  ldloc.s    V_23
    IL_01af:  ldloc.s    V_22
    IL_01b1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_01b6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01bb:  stloc.s    V_11
    IL_01bd:  ldloc.s    V_6
    IL_01bf:  ldloc.s    V_23
    IL_01c1:  ldloc.s    V_22
    IL_01c3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01c8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01cd:  stloc.s    V_12
    IL_01cf:  ldloc.s    V_6
    IL_01d1:  ldloc.s    V_23
    IL_01d3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_01d8:  ldloc.s    V_22
    IL_01da:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01df:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01e4:  stloc.s    V_13
    IL_01e6:  br.s       IL_0258

    IL_01e8:  ldloc.1
    IL_01e9:  ldloc.s    V_7
    IL_01eb:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_01f0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_01f5:  stloc.s    V_24
    IL_01f7:  ldloc.2
    IL_01f8:  ldloc.s    V_7
    IL_01fa:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_01ff:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0204:  stloc.s    V_25
    IL_0206:  ldloc.s    V_6
    IL_0208:  ldloc.s    V_24
    IL_020a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_020f:  ldloc.s    V_25
    IL_0211:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0216:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_021b:  stloc.s    V_10
    IL_021d:  ldloc.s    V_6
    IL_021f:  ldloc.s    V_24
    IL_0221:  ldloc.s    V_25
    IL_0223:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0228:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_022d:  stloc.s    V_11
    IL_022f:  ldloc.s    V_6
    IL_0231:  ldloc.s    V_24
    IL_0233:  ldloc.s    V_25
    IL_0235:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_023a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_023f:  stloc.s    V_12
    IL_0241:  ldloc.s    V_6
    IL_0243:  ldloc.s    V_24
    IL_0245:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_024a:  ldloc.s    V_25
    IL_024c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0251:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0256:  stloc.s    V_13
    IL_0258:  ldloc.s    V_5
    IL_025a:  ldfld      bool Game.Particle::UseAdditiveBlending
    IL_025f:  brtrue.s   IL_0269

    IL_0261:  ldarg.0
    IL_0262:  ldfld      class [Engine]Engine.Graphics.TexturedBatch3D class Game.ParticleSystem`1<!T>::AlphaBlendedBatch
    IL_0267:  br.s       IL_026f

    IL_0269:  ldarg.0
    IL_026a:  ldfld      class [Engine]Engine.Graphics.TexturedBatch3D class Game.ParticleSystem`1<!T>::AdditiveBatch
    IL_026f:  ldloc.s    V_9
    IL_0271:  ldarg.0
    IL_0272:  call       instance int32 class Game.ParticleSystem`1<!T>::get_TextureSlotsCount()
    IL_0277:  rem
    IL_0278:  conv.r4
    IL_0279:  ldloc.s    V_9
    IL_027b:  ldarg.0
    IL_027c:  call       instance int32 class Game.ParticleSystem`1<!T>::get_TextureSlotsCount()
    IL_0281:  div
    IL_0282:  conv.r4
    IL_0283:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0288:  ldc.r4     0.0
    IL_028d:  stloc.s    V_14
    IL_028f:  ldc.r4     1.
    IL_0294:  stloc.s    V_15
    IL_0296:  ldc.r4     1.
    IL_029b:  stloc.s    V_16
    IL_029d:  ldc.r4     0.0
    IL_02a2:  stloc.s    V_17
    IL_02a4:  ldloc.s    V_5
    IL_02a6:  ldfld      bool Game.Particle::FlipX
    IL_02ab:  brfalse.s  IL_02c1

    IL_02ad:  ldc.r4     1.
    IL_02b2:  ldloc.s    V_14
    IL_02b4:  sub
    IL_02b5:  stloc.s    V_14
    IL_02b7:  ldc.r4     1.
    IL_02bc:  ldloc.s    V_15
    IL_02be:  sub
    IL_02bf:  stloc.s    V_15
    IL_02c1:  ldloc.s    V_5
    IL_02c3:  ldfld      bool Game.Particle::FlipY
    IL_02c8:  brfalse.s  IL_02de

    IL_02ca:  ldc.r4     1.
    IL_02cf:  ldloc.s    V_16
    IL_02d1:  sub
    IL_02d2:  stloc.s    V_16
    IL_02d4:  ldc.r4     1.
    IL_02d9:  ldloc.s    V_17
    IL_02db:  sub
    IL_02dc:  stloc.s    V_17
    IL_02de:  dup
    IL_02df:  ldloc.s    V_14
    IL_02e1:  ldloc.s    V_16
    IL_02e3:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02e8:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_02ed:  ldloc.3
    IL_02ee:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_02f3:  stloc.s    V_18
    IL_02f5:  dup
    IL_02f6:  ldloc.s    V_15
    IL_02f8:  ldloc.s    V_16
    IL_02fa:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02ff:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0304:  ldloc.3
    IL_0305:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_030a:  stloc.s    V_19
    IL_030c:  dup
    IL_030d:  ldloc.s    V_15
    IL_030f:  ldloc.s    V_17
    IL_0311:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0316:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_031b:  ldloc.3
    IL_031c:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0321:  stloc.s    V_20
    IL_0323:  ldloc.s    V_14
    IL_0325:  ldloc.s    V_17
    IL_0327:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_032c:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0331:  ldloc.3
    IL_0332:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0337:  stloc.s    V_21
    IL_0339:  ldloc.s    V_10
    IL_033b:  ldloc.s    V_11
    IL_033d:  ldloc.s    V_12
    IL_033f:  ldloc.s    V_13
    IL_0341:  ldloc.s    V_18
    IL_0343:  ldloc.s    V_19
    IL_0345:  ldloc.s    V_20
    IL_0347:  ldloc.s    V_21
    IL_0349:  ldloc.s    V_5
    IL_034b:  ldfld      valuetype [Engine]Engine.Color Game.Particle::Color
    IL_0350:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueQuad(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0355:  ldloc.s    V_4
    IL_0357:  ldc.i4.1
    IL_0358:  add
    IL_0359:  stloc.s    V_4
    IL_035b:  ldloc.s    V_4
    IL_035d:  ldarg.0
    IL_035e:  ldfld      !0[] class Game.ParticleSystem`1<!T>::m_particles
    IL_0363:  ldlen
    IL_0364:  conv.i4
    IL_0365:  blt        IL_00b6

    IL_036a:  ret
  } // end of method ParticleSystem`1::Draw

  .method public hidebysig virtual instance bool 
          Simulate(float32 dt) cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ParticleSystem`1::Simulate

  .property instance !T[] Particles()
  {
    .get instance !T[] Game.ParticleSystem`1::get_Particles()
  } // end of property ParticleSystem`1::Particles
  .property instance class [Engine]Engine.Graphics.Texture2D
          Texture()
  {
    .get instance class [Engine]Engine.Graphics.Texture2D Game.ParticleSystem`1::get_Texture()
    .set instance void Game.ParticleSystem`1::set_Texture(class [Engine]Engine.Graphics.Texture2D)
  } // end of property ParticleSystem`1::Texture
  .property instance int32 TextureSlotsCount()
  {
    .get instance int32 Game.ParticleSystem`1::get_TextureSlotsCount()
    .set instance void Game.ParticleSystem`1::set_TextureSlotsCount(int32)
  } // end of property ParticleSystem`1::TextureSlotsCount
  .property instance bool UseVerticalBillboarding()
  {
    .get instance bool Game.ParticleSystem`1::get_UseVerticalBillboarding()
    .set instance void Game.ParticleSystem`1::set_UseVerticalBillboarding(bool)
  } // end of property ParticleSystem`1::UseVerticalBillboarding
} // end of class Game.ParticleSystem`1