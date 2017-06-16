.class public auto ansi beforefieldinit Game.SubsystemParticles
       extends [EntitySystem]GameEntitySystem.Subsystem
       implements Game.IDrawable
{
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ParticleSystemBase,bool> m_particleSystems
  .field public class [Engine]Engine.Graphics.PrimitivesRenderer3D PrimitivesRenderer
  .field public bool ParticleSystemsDraw
  .field public bool ParticleSystemsSimulate
  .field private int32[] m_drawOrders
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.ParticleSystemBase> m_endedParticleSystems
  .method public hidebysig instance void 
          AddParticleSystem(class Game.ParticleSystemBase particleSystem) cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldfld      class Game.SubsystemParticles Game.ParticleSystemBase::SubsystemParticles
    IL_0006:  brtrue.s   IL_001d

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ParticleSystemBase,bool> Game.SubsystemParticles::m_particleSystems
    IL_000e:  ldarg.1
    IL_000f:  ldc.i4.1
    IL_0010:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ParticleSystemBase,bool>::Add(!0,
                                                                                                                                                  !1)
    IL_0015:  ldarg.1
    IL_0016:  ldarg.0
    IL_0017:  stfld      class Game.SubsystemParticles Game.ParticleSystemBase::SubsystemParticles
    IL_001c:  ret

    IL_001d:  ldstr      "Particle system is already added."
    IL_0022:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0027:  throw
  } // end of method SubsystemParticles::AddParticleSystem

  .method public hidebysig instance void 
          RemoveParticleSystem(class Game.ParticleSystemBase particleSystem) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldfld      class Game.SubsystemParticles Game.ParticleSystemBase::SubsystemParticles
    IL_0006:  ldarg.0
    IL_0007:  bne.un.s   IL_001e

    IL_0009:  ldarg.0
    IL_000a:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ParticleSystemBase,bool> Game.SubsystemParticles::m_particleSystems
    IL_000f:  ldarg.1
    IL_0010:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ParticleSystemBase,bool>::Remove(!0)
    IL_0015:  pop
    IL_0016:  ldarg.1
    IL_0017:  ldnull
    IL_0018:  stfld      class Game.SubsystemParticles Game.ParticleSystemBase::SubsystemParticles
    IL_001d:  ret

    IL_001e:  ldstr      "Particle system is not added."
    IL_0023:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0028:  throw
  } // end of method SubsystemParticles::RemoveParticleSystem

  .method public hidebysig instance bool 
          ContainsParticleSystem(class Game.ParticleSystemBase particleSystem) cil managed
  {
    // 代码大小       10 (0xa)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldfld      class Game.SubsystemParticles Game.ParticleSystemBase::SubsystemParticles
    IL_0006:  ldarg.0
    IL_0007:  ceq
    IL_0009:  ret
  } // end of method SubsystemParticles::ContainsParticleSystem

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_000d:  stfld      class Game.SubsystemTime Game.SubsystemParticles::m_subsystemTime
    IL_0012:  ret
  } // end of method SubsystemParticles::Load

  .method public hidebysig newslot specialname virtual final 
          instance int32[]  get_DrawOrders() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32[] Game.SubsystemParticles::m_drawOrders
    IL_0006:  ret
  } // end of method SubsystemParticles::get_DrawOrders

  .method public hidebysig newslot virtual final 
          instance void  Draw(class Game.SubsystemDrawing subsystemDrawing,
                              int32 drawOrder) cil managed
  {
    // 代码大小       244 (0xf4)
    .maxstack  3
    .locals init (valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ParticleSystemBase,bool> V_0,
             class Game.ParticleSystemBase V_1,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ParticleSystemBase> V_2,
             class Game.ParticleSystemBase V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.SubsystemParticles::ParticleSystemsSimulate
    IL_0006:  brfalse    IL_00a0

    IL_000b:  ldarg.0
    IL_000c:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ParticleSystemBase> Game.SubsystemParticles::m_endedParticleSystems
    IL_0011:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ParticleSystemBase>::Clear()
    IL_0016:  ldarg.0
    IL_0017:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ParticleSystemBase,bool> Game.SubsystemParticles::m_particleSystems
    IL_001c:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ParticleSystemBase,bool>::get_Keys()
    IL_0021:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class Game.ParticleSystemBase,bool>::GetEnumerator()
    IL_0026:  stloc.0
    .try
    {
      IL_0027:  br.s       IL_0051

      IL_0029:  ldloca.s   V_0
      IL_002b:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ParticleSystemBase,bool>::get_Current()
      IL_0030:  stloc.1
      IL_0031:  ldloc.1
      IL_0032:  ldarg.1
      IL_0033:  ldarg.0
      IL_0034:  ldfld      class Game.SubsystemTime Game.SubsystemParticles::m_subsystemTime
      IL_0039:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
      IL_003e:  callvirt   instance bool Game.ParticleSystemBase::Simulate(class Game.SubsystemDrawing,
                                                                           float32)
      IL_0043:  brfalse.s  IL_0051

      IL_0045:  ldarg.0
      IL_0046:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ParticleSystemBase> Game.SubsystemParticles::m_endedParticleSystems
      IL_004b:  ldloc.1
      IL_004c:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ParticleSystemBase>::Add(!0)
      IL_0051:  ldloca.s   V_0
      IL_0053:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ParticleSystemBase,bool>::MoveNext()
      IL_0058:  brtrue.s   IL_0029

      IL_005a:  leave.s    IL_006a

    }  // end .try
    finally
    {
      IL_005c:  ldloca.s   V_0
      IL_005e:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ParticleSystemBase,bool>
      IL_0064:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0069:  endfinally
    }  // end handler
    IL_006a:  ldarg.0
    IL_006b:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ParticleSystemBase> Game.SubsystemParticles::m_endedParticleSystems
    IL_0070:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.ParticleSystemBase>::GetEnumerator()
    IL_0075:  stloc.2
    .try
    {
      IL_0076:  br.s       IL_0087

      IL_0078:  ldloca.s   V_2
      IL_007a:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ParticleSystemBase>::get_Current()
      IL_007f:  stloc.3
      IL_0080:  ldarg.0
      IL_0081:  ldloc.3
      IL_0082:  call       instance void Game.SubsystemParticles::RemoveParticleSystem(class Game.ParticleSystemBase)
      IL_0087:  ldloca.s   V_2
      IL_0089:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ParticleSystemBase>::MoveNext()
      IL_008e:  brtrue.s   IL_0078

      IL_0090:  leave.s    IL_00a0

    }  // end .try
    finally
    {
      IL_0092:  ldloca.s   V_2
      IL_0094:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ParticleSystemBase>
      IL_009a:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_009f:  endfinally
    }  // end handler
    IL_00a0:  ldarg.0
    IL_00a1:  ldfld      bool Game.SubsystemParticles::ParticleSystemsDraw
    IL_00a6:  brfalse.s  IL_00f3

    IL_00a8:  ldarg.0
    IL_00a9:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ParticleSystemBase,bool> Game.SubsystemParticles::m_particleSystems
    IL_00ae:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ParticleSystemBase,bool>::get_Keys()
    IL_00b3:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class Game.ParticleSystemBase,bool>::GetEnumerator()
    IL_00b8:  stloc.0
    .try
    {
      IL_00b9:  br.s       IL_00c8

      IL_00bb:  ldloca.s   V_0
      IL_00bd:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ParticleSystemBase,bool>::get_Current()
      IL_00c2:  ldarg.1
      IL_00c3:  callvirt   instance void Game.ParticleSystemBase::Draw(class Game.SubsystemDrawing)
      IL_00c8:  ldloca.s   V_0
      IL_00ca:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ParticleSystemBase,bool>::MoveNext()
      IL_00cf:  brtrue.s   IL_00bb

      IL_00d1:  leave.s    IL_00e1

    }  // end .try
    finally
    {
      IL_00d3:  ldloca.s   V_0
      IL_00d5:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ParticleSystemBase,bool>
      IL_00db:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00e0:  endfinally
    }  // end handler
    IL_00e1:  ldarg.0
    IL_00e2:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemParticles::PrimitivesRenderer
    IL_00e7:  ldarg.1
    IL_00e8:  callvirt   instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ViewProjectionMatrix()
    IL_00ed:  ldc.i4.1
    IL_00ee:  callvirt   instance void class [Engine]Engine.Graphics.BasePrimitivesRenderer`3<class [Engine]Engine.Graphics.FlatBatch3D,class [Engine]Engine.Graphics.TexturedBatch3D,class [Engine]Engine.Graphics.FontBatch3D>::Flush(valuetype [Engine]Engine.Matrix,
                                                                                                                                                                                                                                        bool)
    IL_00f3:  ret
  } // end of method SubsystemParticles::Draw

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       74 (0x4a)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ParticleSystemBase,bool>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ParticleSystemBase,bool> Game.SubsystemParticles::m_particleSystems
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void [Engine]Engine.Graphics.PrimitivesRenderer3D::.ctor()
    IL_0011:  stfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemParticles::PrimitivesRenderer
    IL_0016:  ldarg.0
    IL_0017:  ldc.i4.1
    IL_0018:  stfld      bool Game.SubsystemParticles::ParticleSystemsDraw
    IL_001d:  ldarg.0
    IL_001e:  ldc.i4.1
    IL_001f:  stfld      bool Game.SubsystemParticles::ParticleSystemsSimulate
    IL_0024:  ldarg.0
    IL_0025:  ldc.i4.1
    IL_0026:  newarr     [System.Runtime]System.Int32
    IL_002b:  dup
    IL_002c:  ldc.i4.0
    IL_002d:  ldc.i4     0x12c
    IL_0032:  stelem.i4
    IL_0033:  stfld      int32[] Game.SubsystemParticles::m_drawOrders
    IL_0038:  ldarg.0
    IL_0039:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ParticleSystemBase>::.ctor()
    IL_003e:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ParticleSystemBase> Game.SubsystemParticles::m_endedParticleSystems
    IL_0043:  ldarg.0
    IL_0044:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_0049:  ret
  } // end of method SubsystemParticles::.ctor

  .property instance int32[] DrawOrders()
  {
    .get instance int32[] Game.SubsystemParticles::get_DrawOrders()
  } // end of property SubsystemParticles::DrawOrders
} // end of class Game.SubsystemParticles