.class public auto ansi beforefieldinit Game.SubsystemNames
       extends [EntitySystem]GameEntitySystem.Subsystem
{
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.ComponentName> m_componentsByName
  .method public hidebysig instance class [EntitySystem]GameEntitySystem.Component 
          FindComponentByName(string name,
                              class [System.Runtime]System.Type componentType,
                              string componentName) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  4
    .locals init (class [EntitySystem]GameEntitySystem.Entity V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Entity Game.SubsystemNames::FindEntityByName(string)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  brtrue.s   IL_000d

    IL_000b:  ldnull
    IL_000c:  ret

    IL_000d:  ldloc.0
    IL_000e:  ldarg.2
    IL_000f:  ldarg.3
    IL_0010:  ldc.i4.0
    IL_0011:  callvirt   instance class [EntitySystem]GameEntitySystem.Component [EntitySystem]GameEntitySystem.Entity::FindComponent(class [System.Runtime]System.Type,
                                                                                                                                      string,
                                                                                                                                      bool)
    IL_0016:  ret
  } // end of method SubsystemNames::FindComponentByName

  .method public hidebysig instance !!T  FindComponentByName<([EntitySystem]GameEntitySystem.Component) T>(string name,
                                                                                                           string componentName) cil managed
  {
    // 代码大小       30 (0x1e)
    .maxstack  3
    .locals init (class [EntitySystem]GameEntitySystem.Entity V_0,
             !!T V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Entity Game.SubsystemNames::FindEntityByName(string)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  brtrue.s   IL_0015

    IL_000b:  ldloca.s   V_1
    IL_000d:  initobj    !!T
    IL_0013:  ldloc.1
    IL_0014:  ret

    IL_0015:  ldloc.0
    IL_0016:  ldarg.2
    IL_0017:  ldc.i4.0
    IL_0018:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<!!0>(string,
                                                                                                bool)
    IL_001d:  ret
  } // end of method SubsystemNames::FindComponentByName

  .method public hidebysig instance class [EntitySystem]GameEntitySystem.Entity 
          FindEntityByName(string name) cil managed
  {
    // 代码大小       27 (0x1b)
    .maxstack  3
    .locals init (class Game.ComponentName V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.ComponentName> Game.SubsystemNames::m_componentsByName
    IL_0006:  ldarg.1
    IL_0007:  ldloca.s   V_0
    IL_0009:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.ComponentName>::TryGetValue(!0,
                                                                                                                                                       !1&)
    IL_000e:  pop
    IL_000f:  ldloc.0
    IL_0010:  brtrue.s   IL_0014

    IL_0012:  ldnull
    IL_0013:  ret

    IL_0014:  ldloc.0
    IL_0015:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_001a:  ret
  } // end of method SubsystemNames::FindEntityByName

  .method public hidebysig static string 
          GetEntityName(class [EntitySystem]GameEntitySystem.Entity entity) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  1
    .locals init (class Game.ComponentName V_0)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentName>()
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  brfalse.s  IL_0011

    IL_000a:  ldloc.0
    IL_000b:  callvirt   instance string Game.ComponentName::get_Name()
    IL_0010:  ret

    IL_0011:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0016:  ret
  } // end of method SubsystemNames::GetEntityName

  .method family hidebysig virtual instance void 
          OnEntityAdded(class [EntitySystem]GameEntitySystem.Entity entity) cil managed
  {
    // 代码大小       69 (0x45)
    .maxstack  3
    .locals init (valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentName> V_0,
             valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.ComponentName> V_1,
             class Game.ComponentName V_2)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<!!0> [EntitySystem]GameEntitySystem.Entity::FindComponents<class Game.ComponentName>()
    IL_0006:  stloc.1
    IL_0007:  ldloca.s   V_1
    IL_0009:  call       instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<!0> valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.ComponentName>::GetEnumerator()
    IL_000e:  stloc.0
    .try
    {
      IL_000f:  br.s       IL_002b

      IL_0011:  ldloca.s   V_0
      IL_0013:  call       instance !0 valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentName>::get_Current()
      IL_0018:  stloc.2
      IL_0019:  ldarg.0
      IL_001a:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.ComponentName> Game.SubsystemNames::m_componentsByName
      IL_001f:  ldloc.2
      IL_0020:  callvirt   instance string Game.ComponentName::get_Name()
      IL_0025:  ldloc.2
      IL_0026:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.ComponentName>::Add(!0,
                                                                                                                                                 !1)
      IL_002b:  ldloca.s   V_0
      IL_002d:  call       instance bool valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentName>::MoveNext()
      IL_0032:  brtrue.s   IL_0011

      IL_0034:  leave.s    IL_0044

    }  // end .try
    finally
    {
      IL_0036:  ldloca.s   V_0
      IL_0038:  constrained. valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentName>
      IL_003e:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0043:  endfinally
    }  // end handler
    IL_0044:  ret
  } // end of method SubsystemNames::OnEntityAdded

  .method family hidebysig virtual instance void 
          OnEntityRemoved(class [EntitySystem]GameEntitySystem.Entity entity) cil managed
  {
    // 代码大小       69 (0x45)
    .maxstack  2
    .locals init (valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentName> V_0,
             valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.ComponentName> V_1,
             class Game.ComponentName V_2)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<!!0> [EntitySystem]GameEntitySystem.Entity::FindComponents<class Game.ComponentName>()
    IL_0006:  stloc.1
    IL_0007:  ldloca.s   V_1
    IL_0009:  call       instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<!0> valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.ComponentName>::GetEnumerator()
    IL_000e:  stloc.0
    .try
    {
      IL_000f:  br.s       IL_002b

      IL_0011:  ldloca.s   V_0
      IL_0013:  call       instance !0 valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentName>::get_Current()
      IL_0018:  stloc.2
      IL_0019:  ldarg.0
      IL_001a:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.ComponentName> Game.SubsystemNames::m_componentsByName
      IL_001f:  ldloc.2
      IL_0020:  callvirt   instance string Game.ComponentName::get_Name()
      IL_0025:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.ComponentName>::Remove(!0)
      IL_002a:  pop
      IL_002b:  ldloca.s   V_0
      IL_002d:  call       instance bool valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentName>::MoveNext()
      IL_0032:  brtrue.s   IL_0011

      IL_0034:  leave.s    IL_0044

    }  // end .try
    finally
    {
      IL_0036:  ldloca.s   V_0
      IL_0038:  constrained. valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentName>
      IL_003e:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0043:  endfinally
    }  // end handler
    IL_0044:  ret
  } // end of method SubsystemNames::OnEntityRemoved

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.ComponentName>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.ComponentName> Game.SubsystemNames::m_componentsByName
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_0011:  ret
  } // end of method SubsystemNames::.ctor

} // end of class Game.SubsystemNames