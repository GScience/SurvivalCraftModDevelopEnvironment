.class public auto ansi beforefieldinit Game.SubsystemDrawing
       extends [EntitySystem]GameEntitySystem.Subsystem
{
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IDrawable,bool> m_drawables
  .field private class Game.SortedMultiCollection`2<int32,class Game.IDrawable> m_sortedDrawables
  .method public hidebysig specialname instance int32 
          get_DrawablesCount() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IDrawable,bool> Game.SubsystemDrawing::m_drawables
    IL_0006:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IDrawable,bool>::get_Count()
    IL_000b:  ret
  } // end of method SubsystemDrawing::get_DrawablesCount

  .method public hidebysig instance void 
          AddDrawable(class Game.IDrawable drawable) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IDrawable,bool> Game.SubsystemDrawing::m_drawables
    IL_0006:  ldarg.1
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IDrawable,bool>::Add(!0,
                                                                                                                                         !1)
    IL_000d:  ret
  } // end of method SubsystemDrawing::AddDrawable

  .method public hidebysig instance void 
          RemoveDrawable(class Game.IDrawable drawable) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IDrawable,bool> Game.SubsystemDrawing::m_drawables
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IDrawable,bool>::Remove(!0)
    IL_000c:  pop
    IL_000d:  ret
  } // end of method SubsystemDrawing::RemoveDrawable

  .method public hidebysig instance void 
          Draw(class Game.Camera camera) cil managed
  {
    // 代码大小       171 (0xab)
    .maxstack  3
    .locals init (valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.IDrawable,bool> V_0,
             class Game.IDrawable V_1,
             int32[] V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,class Game.IDrawable> V_6)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SortedMultiCollection`2<int32,class Game.IDrawable> Game.SubsystemDrawing::m_sortedDrawables
    IL_0006:  callvirt   instance void class Game.SortedMultiCollection`2<int32,class Game.IDrawable>::Clear()
    IL_000b:  ldarg.0
    IL_000c:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IDrawable,bool> Game.SubsystemDrawing::m_drawables
    IL_0011:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IDrawable,bool>::get_Keys()
    IL_0016:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class Game.IDrawable,bool>::GetEnumerator()
    IL_001b:  stloc.0
    .try
    {
      IL_001c:  br.s       IL_004e

      IL_001e:  ldloca.s   V_0
      IL_0020:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.IDrawable,bool>::get_Current()
      IL_0025:  stloc.1
      IL_0026:  ldloc.1
      IL_0027:  callvirt   instance int32[] Game.IDrawable::get_DrawOrders()
      IL_002c:  stloc.2
      IL_002d:  ldc.i4.0
      IL_002e:  stloc.3
      IL_002f:  br.s       IL_0048

      IL_0031:  ldloc.2
      IL_0032:  ldloc.3
      IL_0033:  ldelem.i4
      IL_0034:  stloc.s    V_4
      IL_0036:  ldarg.0
      IL_0037:  ldfld      class Game.SortedMultiCollection`2<int32,class Game.IDrawable> Game.SubsystemDrawing::m_sortedDrawables
      IL_003c:  ldloc.s    V_4
      IL_003e:  ldloc.1
      IL_003f:  callvirt   instance void class Game.SortedMultiCollection`2<int32,class Game.IDrawable>::Add(!0,
                                                                                                             !1)
      IL_0044:  ldloc.3
      IL_0045:  ldc.i4.1
      IL_0046:  add
      IL_0047:  stloc.3
      IL_0048:  ldloc.3
      IL_0049:  ldloc.2
      IL_004a:  ldlen
      IL_004b:  conv.i4
      IL_004c:  blt.s      IL_0031

      IL_004e:  ldloca.s   V_0
      IL_0050:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.IDrawable,bool>::MoveNext()
      IL_0055:  brtrue.s   IL_001e

      IL_0057:  leave.s    IL_0067

    }  // end .try
    finally
    {
      IL_0059:  ldloca.s   V_0
      IL_005b:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.IDrawable,bool>
      IL_0061:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0066:  endfinally
    }  // end handler
    IL_0067:  ldc.i4.0
    IL_0068:  stloc.s    V_5
    IL_006a:  br.s       IL_009b

    IL_006c:  nop
    .try
    {
      IL_006d:  ldarg.0
      IL_006e:  ldfld      class Game.SortedMultiCollection`2<int32,class Game.IDrawable> Game.SubsystemDrawing::m_sortedDrawables
      IL_0073:  ldloc.s    V_5
      IL_0075:  callvirt   instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> class Game.SortedMultiCollection`2<int32,class Game.IDrawable>::get_Item(int32)
      IL_007a:  stloc.s    V_6
      IL_007c:  ldloca.s   V_6
      IL_007e:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,class Game.IDrawable>::get_Value()
      IL_0083:  ldarg.1
      IL_0084:  ldloca.s   V_6
      IL_0086:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,class Game.IDrawable>::get_Key()
      IL_008b:  callvirt   instance void Game.IDrawable::Draw(class Game.Camera,
                                                              int32)
      IL_0090:  leave.s    IL_0095

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0092:  pop
      IL_0093:  leave.s    IL_0095

    }  // end handler
    IL_0095:  ldloc.s    V_5
    IL_0097:  ldc.i4.1
    IL_0098:  add
    IL_0099:  stloc.s    V_5
    IL_009b:  ldloc.s    V_5
    IL_009d:  ldarg.0
    IL_009e:  ldfld      class Game.SortedMultiCollection`2<int32,class Game.IDrawable> Game.SubsystemDrawing::m_sortedDrawables
    IL_00a3:  callvirt   instance int32 class Game.SortedMultiCollection`2<int32,class Game.IDrawable>::get_Count()
    IL_00a8:  blt.s      IL_006c

    IL_00aa:  ret
  } // end of method SubsystemDrawing::Draw

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       54 (0x36)
    .maxstack  2
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.IDrawable> V_0,
             class Game.IDrawable V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0006:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [EntitySystem]GameEntitySystem.Project::FindSubsystems<class Game.IDrawable>()
    IL_000b:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.IDrawable>::GetEnumerator()
    IL_0010:  stloc.0
    .try
    {
      IL_0011:  br.s       IL_0021

      IL_0013:  ldloc.0
      IL_0014:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.IDrawable>::get_Current()
      IL_0019:  stloc.1
      IL_001a:  ldarg.0
      IL_001b:  ldloc.1
      IL_001c:  call       instance void Game.SubsystemDrawing::AddDrawable(class Game.IDrawable)
      IL_0021:  ldloc.0
      IL_0022:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0027:  brtrue.s   IL_0013

      IL_0029:  leave.s    IL_0035

    }  // end .try
    finally
    {
      IL_002b:  ldloc.0
      IL_002c:  brfalse.s  IL_0034

      IL_002e:  ldloc.0
      IL_002f:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0034:  endfinally
    }  // end handler
    IL_0035:  ret
  } // end of method SubsystemDrawing::Load

  .method family hidebysig virtual instance void 
          OnEntityAdded(class [EntitySystem]GameEntitySystem.Entity entity) cil managed
  {
    // 代码大小       58 (0x3a)
    .maxstack  2
    .locals init (valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IDrawable> V_0,
             valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.IDrawable> V_1,
             class Game.IDrawable V_2)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<!!0> [EntitySystem]GameEntitySystem.Entity::FindComponents<class Game.IDrawable>()
    IL_0006:  stloc.1
    IL_0007:  ldloca.s   V_1
    IL_0009:  call       instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<!0> valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.IDrawable>::GetEnumerator()
    IL_000e:  stloc.0
    .try
    {
      IL_000f:  br.s       IL_0020

      IL_0011:  ldloca.s   V_0
      IL_0013:  call       instance !0 valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IDrawable>::get_Current()
      IL_0018:  stloc.2
      IL_0019:  ldarg.0
      IL_001a:  ldloc.2
      IL_001b:  call       instance void Game.SubsystemDrawing::AddDrawable(class Game.IDrawable)
      IL_0020:  ldloca.s   V_0
      IL_0022:  call       instance bool valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IDrawable>::MoveNext()
      IL_0027:  brtrue.s   IL_0011

      IL_0029:  leave.s    IL_0039

    }  // end .try
    finally
    {
      IL_002b:  ldloca.s   V_0
      IL_002d:  constrained. valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IDrawable>
      IL_0033:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0038:  endfinally
    }  // end handler
    IL_0039:  ret
  } // end of method SubsystemDrawing::OnEntityAdded

  .method family hidebysig virtual instance void 
          OnEntityRemoved(class [EntitySystem]GameEntitySystem.Entity entity) cil managed
  {
    // 代码大小       58 (0x3a)
    .maxstack  2
    .locals init (valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IDrawable> V_0,
             valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.IDrawable> V_1,
             class Game.IDrawable V_2)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<!!0> [EntitySystem]GameEntitySystem.Entity::FindComponents<class Game.IDrawable>()
    IL_0006:  stloc.1
    IL_0007:  ldloca.s   V_1
    IL_0009:  call       instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<!0> valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.IDrawable>::GetEnumerator()
    IL_000e:  stloc.0
    .try
    {
      IL_000f:  br.s       IL_0020

      IL_0011:  ldloca.s   V_0
      IL_0013:  call       instance !0 valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IDrawable>::get_Current()
      IL_0018:  stloc.2
      IL_0019:  ldarg.0
      IL_001a:  ldloc.2
      IL_001b:  call       instance void Game.SubsystemDrawing::RemoveDrawable(class Game.IDrawable)
      IL_0020:  ldloca.s   V_0
      IL_0022:  call       instance bool valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IDrawable>::MoveNext()
      IL_0027:  brtrue.s   IL_0011

      IL_0029:  leave.s    IL_0039

    }  // end .try
    finally
    {
      IL_002b:  ldloca.s   V_0
      IL_002d:  constrained. valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IDrawable>
      IL_0033:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0038:  endfinally
    }  // end handler
    IL_0039:  ret
  } // end of method SubsystemDrawing::OnEntityRemoved

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IDrawable,bool>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IDrawable,bool> Game.SubsystemDrawing::m_drawables
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class Game.SortedMultiCollection`2<int32,class Game.IDrawable>::.ctor()
    IL_0011:  stfld      class Game.SortedMultiCollection`2<int32,class Game.IDrawable> Game.SubsystemDrawing::m_sortedDrawables
    IL_0016:  ldarg.0
    IL_0017:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_001c:  ret
  } // end of method SubsystemDrawing::.ctor

  .property instance int32 DrawablesCount()
  {
    .get instance int32 Game.SubsystemDrawing::get_DrawablesCount()
  } // end of property SubsystemDrawing::DrawablesCount
} // end of class Game.SubsystemDrawing