.class public auto ansi beforefieldinit Game.SubsystemParticles
       extends [EntitySystem]GameEntitySystem.Subsystem
       implements Game.IDrawable,
                  Game.IUpdateable
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
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemParticles::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       160 (0xa0)
    .maxstack  2
    .locals init (valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ParticleSystemBase,bool> V_0,
             class Game.ParticleSystemBase V_1,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ParticleSystemBase> V_2,
             class Game.ParticleSystemBase V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.SubsystemParticles::ParticleSystemsSimulate
    IL_0006:  brfalse    IL_009f

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
      IL_0027:  br.s       IL_0050

      IL_0029:  ldloca.s   V_0
      IL_002b:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ParticleSystemBase,bool>::get_Current()
      IL_0030:  stloc.1
      IL_0031:  ldloc.1
      IL_0032:  ldarg.0
      IL_0033:  ldfld      class Game.SubsystemTime Game.SubsystemParticles::m_subsystemTime
      IL_0038:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
      IL_003d:  callvirt   instance bool Game.ParticleSystemBase::Simulate(float32)
      IL_0042:  brfalse.s  IL_0050

      IL_0044:  ldarg.0
      IL_0045:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ParticleSystemBase> Game.SubsystemParticles::m_endedParticleSystems
      IL_004a:  ldloc.1
      IL_004b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ParticleSystemBase>::Add(!0)
      IL_0050:  ldloca.s   V_0
      IL_0052:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ParticleSystemBase,bool>::MoveNext()
      IL_0057:  brtrue.s   IL_0029

      IL_0059:  leave.s    IL_0069

    }  // end .try
    finally
    {
      IL_005b:  ldloca.s   V_0
      IL_005d:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ParticleSystemBase,bool>
      IL_0063:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0068:  endfinally
    }  // end handler
    IL_0069:  ldarg.0
    IL_006a:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ParticleSystemBase> Game.SubsystemParticles::m_endedParticleSystems
    IL_006f:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.ParticleSystemBase>::GetEnumerator()
    IL_0074:  stloc.2
    .try
    {
      IL_0075:  br.s       IL_0086

      IL_0077:  ldloca.s   V_2
      IL_0079:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ParticleSystemBase>::get_Current()
      IL_007e:  stloc.3
      IL_007f:  ldarg.0
      IL_0080:  ldloc.3
      IL_0081:  call       instance void Game.SubsystemParticles::RemoveParticleSystem(class Game.ParticleSystemBase)
      IL_0086:  ldloca.s   V_2
      IL_0088:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ParticleSystemBase>::MoveNext()
      IL_008d:  brtrue.s   IL_0077

      IL_008f:  leave.s    IL_009f

    }  // end .try
    finally
    {
      IL_0091:  ldloca.s   V_2
      IL_0093:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ParticleSystemBase>
      IL_0099:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_009e:  endfinally
    }  // end handler
    IL_009f:  ret
  } // end of method SubsystemParticles::Update

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
          instance void  Draw(class Game.Camera camera,
                              int32 drawOrder) cil managed
  {
    // 代码大小       89 (0x59)
    .maxstack  4
    .locals init (valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ParticleSystemBase,bool> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.SubsystemParticles::ParticleSystemsDraw
    IL_0006:  brfalse.s  IL_0058

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ParticleSystemBase,bool> Game.SubsystemParticles::m_particleSystems
    IL_000e:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ParticleSystemBase,bool>::get_Keys()
    IL_0013:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class Game.ParticleSystemBase,bool>::GetEnumerator()
    IL_0018:  stloc.0
    .try
    {
      IL_0019:  br.s       IL_0028

      IL_001b:  ldloca.s   V_0
      IL_001d:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ParticleSystemBase,bool>::get_Current()
      IL_0022:  ldarg.1
      IL_0023:  callvirt   instance void Game.ParticleSystemBase::Draw(class Game.Camera)
      IL_0028:  ldloca.s   V_0
      IL_002a:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ParticleSystemBase,bool>::MoveNext()
      IL_002f:  brtrue.s   IL_001b

      IL_0031:  leave.s    IL_0041

    }  // end .try
    finally
    {
      IL_0033:  ldloca.s   V_0
      IL_0035:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ParticleSystemBase,bool>
      IL_003b:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0040:  endfinally
    }  // end handler
    IL_0041:  ldarg.0
    IL_0042:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemParticles::PrimitivesRenderer
    IL_0047:  ldarg.1
    IL_0048:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ViewProjectionMatrix()
    IL_004d:  ldc.i4.1
    IL_004e:  ldc.i4     0x7fffffff
    IL_0053:  callvirt   instance void class [Engine]Engine.Graphics.BasePrimitivesRenderer`3<class [Engine]Engine.Graphics.FlatBatch3D,class [Engine]Engine.Graphics.TexturedBatch3D,class [Engine]Engine.Graphics.FontBatch3D>::Flush(valuetype [Engine]Engine.Matrix,
                                                                                                                                                                                                                                        bool,
                                                                                                                                                                                                                                        int32)
    IL_0058:  ret
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

  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemParticles::get_UpdateOrder()
  } // end of property SubsystemParticles::UpdateOrder
  .property instance int32[] DrawOrders()
  {
    .get instance int32[] Game.SubsystemParticles::get_DrawOrders()
  } // end of property SubsystemParticles::DrawOrders
} // end of class Game.SubsystemParticles