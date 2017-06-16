.class public auto ansi beforefieldinit Game.SubsystemNoise
       extends [EntitySystem]GameEntitySystem.Subsystem
{
  .field private class Game.SubsystemBodies m_subsystemBodies
  .field private class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> m_componentBodies
  .method public hidebysig instance void 
          MakeNoise(valuetype [Engine]Engine.Vector3 position,
                    float32 loudness,
                    float32 range) cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldnull
    IL_0002:  ldarg.1
    IL_0003:  ldarg.2
    IL_0004:  ldarg.3
    IL_0005:  call       instance void Game.SubsystemNoise::MakeNoiseInternal(class Game.ComponentBody,
                                                                              valuetype [Engine]Engine.Vector3,
                                                                              float32,
                                                                              float32)
    IL_000a:  ret
  } // end of method SubsystemNoise::MakeNoise

  .method public hidebysig instance void 
          MakeNoise(class Game.ComponentBody sourceBody,
                    float32 loudness,
                    float32 range) cil managed
  {
    // 代码大小       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.1
    IL_0003:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0008:  ldarg.2
    IL_0009:  ldarg.3
    IL_000a:  call       instance void Game.SubsystemNoise::MakeNoiseInternal(class Game.ComponentBody,
                                                                              valuetype [Engine]Engine.Vector3,
                                                                              float32,
                                                                              float32)
    IL_000f:  ret
  } // end of method SubsystemNoise::MakeNoise

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBodies>(bool)
    IL_000d:  stfld      class Game.SubsystemBodies Game.SubsystemNoise::m_subsystemBodies
    IL_0012:  ret
  } // end of method SubsystemNoise::Load

  .method private hidebysig instance void 
          MakeNoiseInternal(class Game.ComponentBody sourceBody,
                            valuetype [Engine]Engine.Vector3 position,
                            float32 loudness,
                            float32 range) cil managed
  {
    // 代码大小       172 (0xac)
    .maxstack  4
    .locals init (float32 V_0,
             int32 V_1,
             class Game.ComponentBody V_2,
             valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.INoiseListener> V_3,
             valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.INoiseListener> V_4)
    IL_0000:  ldarg.s    range
    IL_0002:  ldarg.s    range
    IL_0004:  mul
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.SubsystemNoise::m_componentBodies
    IL_000c:  callvirt   instance void class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::Clear()
    IL_0011:  ldarg.0
    IL_0012:  ldfld      class Game.SubsystemBodies Game.SubsystemNoise::m_subsystemBodies
    IL_0017:  ldarg.2
    IL_0018:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_001d:  ldarg.2
    IL_001e:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0023:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0028:  ldarg.s    range
    IL_002a:  ldarg.0
    IL_002b:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.SubsystemNoise::m_componentBodies
    IL_0030:  callvirt   instance void Game.SubsystemBodies::FindBodiesAroundPoint(valuetype [Engine]Engine.Vector2,
                                                                                   float32,
                                                                                   class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>)
    IL_0035:  ldc.i4.0
    IL_0036:  stloc.1
    IL_0037:  br.s       IL_009d

    IL_0039:  ldarg.0
    IL_003a:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.SubsystemNoise::m_componentBodies
    IL_003f:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::get_Array()
    IL_0044:  ldloc.1
    IL_0045:  ldelem.ref
    IL_0046:  stloc.2
    IL_0047:  ldloc.2
    IL_0048:  ldarg.1
    IL_0049:  beq.s      IL_0099

    IL_004b:  ldloc.2
    IL_004c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0051:  ldarg.2
    IL_0052:  call       float32 [Engine]Engine.Vector3::DistanceSquared(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0057:  ldloc.0
    IL_0058:  bge.un.s   IL_0099

    IL_005a:  ldloc.2
    IL_005b:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0060:  callvirt   instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<!!0> [EntitySystem]GameEntitySystem.Entity::FindComponents<class Game.INoiseListener>()
    IL_0065:  stloc.s    V_4
    IL_0067:  ldloca.s   V_4
    IL_0069:  call       instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<!0> valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.INoiseListener>::GetEnumerator()
    IL_006e:  stloc.3
    .try
    {
      IL_006f:  br.s       IL_0080

      IL_0071:  ldloca.s   V_3
      IL_0073:  call       instance !0 valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.INoiseListener>::get_Current()
      IL_0078:  ldarg.1
      IL_0079:  ldarg.2
      IL_007a:  ldarg.3
      IL_007b:  callvirt   instance void Game.INoiseListener::HearNoise(class Game.ComponentBody,
                                                                        valuetype [Engine]Engine.Vector3,
                                                                        float32)
      IL_0080:  ldloca.s   V_3
      IL_0082:  call       instance bool valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.INoiseListener>::MoveNext()
      IL_0087:  brtrue.s   IL_0071

      IL_0089:  leave.s    IL_0099

    }  // end .try
    finally
    {
      IL_008b:  ldloca.s   V_3
      IL_008d:  constrained. valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.INoiseListener>
      IL_0093:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0098:  endfinally
    }  // end handler
    IL_0099:  ldloc.1
    IL_009a:  ldc.i4.1
    IL_009b:  add
    IL_009c:  stloc.1
    IL_009d:  ldloc.1
    IL_009e:  ldarg.0
    IL_009f:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.SubsystemNoise::m_componentBodies
    IL_00a4:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::get_Count()
    IL_00a9:  blt.s      IL_0039

    IL_00ab:  ret
  } // end of method SubsystemNoise::MakeNoiseInternal

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::.ctor()
    IL_0006:  stfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.SubsystemNoise::m_componentBodies
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_0011:  ret
  } // end of method SubsystemNoise::.ctor

} // end of class Game.SubsystemNoise