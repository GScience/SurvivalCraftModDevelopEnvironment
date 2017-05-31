.class public auto ansi beforefieldinit Game.ComponentBehaviorSelector
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IUpdateable
{
  .field private class Game.ComponentCreature m_componentCreature
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentBehavior> m_behaviors
  .field public static bool ShowAIBehavior
  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentBehaviorSelector::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       186 (0xba)
    .maxstack  2
    .locals init (class Game.ComponentBehavior V_0,
             float32 V_1,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ComponentBehavior> V_2,
             class Game.ComponentBehavior V_3,
             float32 V_4,
             class Game.ComponentBehavior V_5)
    IL_0000:  ldnull
    IL_0001:  stloc.0
    IL_0002:  ldarg.0
    IL_0003:  ldfld      class Game.ComponentCreature Game.ComponentBehaviorSelector::m_componentCreature
    IL_0008:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_000d:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_0012:  ldc.r4     0.0
    IL_0017:  ble.un.s   IL_0060

    IL_0019:  ldc.r4     0.0
    IL_001e:  stloc.1
    IL_001f:  ldarg.0
    IL_0020:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentBehavior> Game.ComponentBehaviorSelector::m_behaviors
    IL_0025:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentBehavior>::GetEnumerator()
    IL_002a:  stloc.2
    .try
    {
      IL_002b:  br.s       IL_0047

      IL_002d:  ldloca.s   V_2
      IL_002f:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ComponentBehavior>::get_Current()
      IL_0034:  stloc.3
      IL_0035:  ldloc.3
      IL_0036:  callvirt   instance float32 Game.ComponentBehavior::get_ImportanceLevel()
      IL_003b:  stloc.s    V_4
      IL_003d:  ldloc.s    V_4
      IL_003f:  ldloc.1
      IL_0040:  ble.un.s   IL_0047

      IL_0042:  ldloc.s    V_4
      IL_0044:  stloc.1
      IL_0045:  ldloc.3
      IL_0046:  stloc.0
      IL_0047:  ldloca.s   V_2
      IL_0049:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ComponentBehavior>::MoveNext()
      IL_004e:  brtrue.s   IL_002d

      IL_0050:  leave.s    IL_0060

    }  // end .try
    finally
    {
      IL_0052:  ldloca.s   V_2
      IL_0054:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ComponentBehavior>
      IL_005a:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_005f:  endfinally
    }  // end handler
    IL_0060:  ldarg.0
    IL_0061:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentBehavior> Game.ComponentBehaviorSelector::m_behaviors
    IL_0066:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentBehavior>::GetEnumerator()
    IL_006b:  stloc.2
    .try
    {
      IL_006c:  br.s       IL_00a0

      IL_006e:  ldloca.s   V_2
      IL_0070:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ComponentBehavior>::get_Current()
      IL_0075:  stloc.s    V_5
      IL_0077:  ldloc.s    V_5
      IL_0079:  ldloc.0
      IL_007a:  bne.un.s   IL_008f

      IL_007c:  ldloc.s    V_5
      IL_007e:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
      IL_0083:  brtrue.s   IL_00a0

      IL_0085:  ldloc.s    V_5
      IL_0087:  ldc.i4.1
      IL_0088:  callvirt   instance void Game.ComponentBehavior::set_IsActive(bool)
      IL_008d:  br.s       IL_00a0

      IL_008f:  ldloc.s    V_5
      IL_0091:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
      IL_0096:  brfalse.s  IL_00a0

      IL_0098:  ldloc.s    V_5
      IL_009a:  ldc.i4.0
      IL_009b:  callvirt   instance void Game.ComponentBehavior::set_IsActive(bool)
      IL_00a0:  ldloca.s   V_2
      IL_00a2:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ComponentBehavior>::MoveNext()
      IL_00a7:  brtrue.s   IL_006e

      IL_00a9:  leave.s    IL_00b9

    }  // end .try
    finally
    {
      IL_00ab:  ldloca.s   V_2
      IL_00ad:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ComponentBehavior>
      IL_00b3:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00b8:  endfinally
    }  // end handler
    IL_00b9:  ret
  } // end of method ComponentBehaviorSelector::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       86 (0x56)
    .maxstack  3
    .locals init (valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentBehavior> V_0,
             valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.ComponentBehavior> V_1,
             class Game.ComponentBehavior V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_000d:  stfld      class Game.ComponentCreature Game.ComponentBehaviorSelector::m_componentCreature
    IL_0012:  ldarg.0
    IL_0013:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0018:  callvirt   instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<!!0> [EntitySystem]GameEntitySystem.Entity::FindComponents<class Game.ComponentBehavior>()
    IL_001d:  stloc.1
    IL_001e:  ldloca.s   V_1
    IL_0020:  call       instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<!0> valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.ComponentBehavior>::GetEnumerator()
    IL_0025:  stloc.0
    .try
    {
      IL_0026:  br.s       IL_003c

      IL_0028:  ldloca.s   V_0
      IL_002a:  call       instance !0 valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentBehavior>::get_Current()
      IL_002f:  stloc.2
      IL_0030:  ldarg.0
      IL_0031:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentBehavior> Game.ComponentBehaviorSelector::m_behaviors
      IL_0036:  ldloc.2
      IL_0037:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentBehavior>::Add(!0)
      IL_003c:  ldloca.s   V_0
      IL_003e:  call       instance bool valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentBehavior>::MoveNext()
      IL_0043:  brtrue.s   IL_0028

      IL_0045:  leave.s    IL_0055

    }  // end .try
    finally
    {
      IL_0047:  ldloca.s   V_0
      IL_0049:  constrained. valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentBehavior>
      IL_004f:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0054:  endfinally
    }  // end handler
    IL_0055:  ret
  } // end of method ComponentBehaviorSelector::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentBehavior>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentBehavior> Game.ComponentBehaviorSelector::m_behaviors
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_0011:  ret
  } // end of method ComponentBehaviorSelector::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method ComponentBehaviorSelector::.cctor

  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentBehaviorSelector::get_UpdateOrder()
  } // end of property ComponentBehaviorSelector::UpdateOrder
} // end of class Game.ComponentBehaviorSelector