.class public auto ansi beforefieldinit Game.SubsystemUpdate
       extends [EntitySystem]GameEntitySystem.Subsystem
{
  .class auto ansi nested private beforefieldinit UpdateableInfo
         extends [System.Runtime]System.Object
  {
    .field public int32 UpdateOrder
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method UpdateableInfo::.ctor

  } // end of class UpdateableInfo

  .class auto ansi nested private beforefieldinit Comparer
         extends [System.Runtime]System.Object
         implements class [System.Runtime]System.Collections.Generic.IComparer`1<class Game.IUpdateable>
  {
    .field public static class Game.SubsystemUpdate/Comparer Instance
    .method public hidebysig newslot virtual final 
            instance int32  Compare(class Game.IUpdateable u1,
                                    class Game.IUpdateable u2) cil managed
    {
      // 代码大小       33 (0x21)
      .maxstack  2
      .locals init (int32 V_0)
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance int32 Game.IUpdateable::get_UpdateOrder()
      IL_0006:  ldarg.2
      IL_0007:  callvirt   instance int32 Game.IUpdateable::get_UpdateOrder()
      IL_000c:  sub
      IL_000d:  stloc.0
      IL_000e:  ldloc.0
      IL_000f:  brfalse.s  IL_0013

      IL_0011:  ldloc.0
      IL_0012:  ret

      IL_0013:  ldarg.1
      IL_0014:  callvirt   instance int32 [System.Runtime]System.Object::GetHashCode()
      IL_0019:  ldarg.2
      IL_001a:  callvirt   instance int32 [System.Runtime]System.Object::GetHashCode()
      IL_001f:  sub
      IL_0020:  ret
    } // end of method Comparer::Compare

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method Comparer::.ctor

    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.SubsystemUpdate/Comparer::.ctor()
      IL_0005:  stsfld     class Game.SubsystemUpdate/Comparer Game.SubsystemUpdate/Comparer::Instance
      IL_000a:  ret
    } // end of method Comparer::.cctor

  } // end of class Comparer

  .field private class Game.SubsystemTime m_subsystemTime
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo> m_updateables
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IUpdateable,bool> m_toAddOrRemove
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.IUpdateable> m_sortedUpdateables
  .method public hidebysig specialname instance int32 
          get_UpdateablesCount() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo> Game.SubsystemUpdate::m_updateables
    IL_0006:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo>::get_Count()
    IL_000b:  ret
  } // end of method SubsystemUpdate::get_UpdateablesCount

  .method public hidebysig instance void 
          Update() cil managed
  {
    // 代码大小       418 (0x1a2)
    .maxstack  5
    .locals init (bool V_0,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<class Game.IUpdateable,bool> V_1,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class Game.IUpdateable,bool> V_2,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo> V_3,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo> V_4,
             int32 V_5,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo> V_6,
             class Game.IUpdateable V_7,
             float32 V_8,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.IUpdateable> V_9,
             class Game.IUpdateable V_10)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldarg.0
    IL_0003:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IUpdateable,bool> Game.SubsystemUpdate::m_toAddOrRemove
    IL_0008:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IUpdateable,bool>::GetEnumerator()
    IL_000d:  stloc.1
    .try
    {
      IL_000e:  br.s       IL_0063

      IL_0010:  ldloca.s   V_1
      IL_0012:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<class Game.IUpdateable,bool>::get_Current()
      IL_0017:  stloc.2
      IL_0018:  ldloca.s   V_2
      IL_001a:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class Game.IUpdateable,bool>::get_Value()
      IL_001f:  brfalse.s  IL_004e

      IL_0021:  ldarg.0
      IL_0022:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo> Game.SubsystemUpdate::m_updateables
      IL_0027:  ldloca.s   V_2
      IL_0029:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class Game.IUpdateable,bool>::get_Key()
      IL_002e:  newobj     instance void Game.SubsystemUpdate/UpdateableInfo::.ctor()
      IL_0033:  dup
      IL_0034:  ldloca.s   V_2
      IL_0036:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class Game.IUpdateable,bool>::get_Key()
      IL_003b:  callvirt   instance int32 Game.IUpdateable::get_UpdateOrder()
      IL_0040:  stfld      int32 Game.SubsystemUpdate/UpdateableInfo::UpdateOrder
      IL_0045:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo>::Add(!0,
                                                                                                                                                                                  !1)
      IL_004a:  ldc.i4.1
      IL_004b:  stloc.0
      IL_004c:  br.s       IL_0063

      IL_004e:  ldarg.0
      IL_004f:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo> Game.SubsystemUpdate::m_updateables
      IL_0054:  ldloca.s   V_2
      IL_0056:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class Game.IUpdateable,bool>::get_Key()
      IL_005b:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo>::Remove(!0)
      IL_0060:  pop
      IL_0061:  ldc.i4.1
      IL_0062:  stloc.0
      IL_0063:  ldloca.s   V_1
      IL_0065:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<class Game.IUpdateable,bool>::MoveNext()
      IL_006a:  brtrue.s   IL_0010

      IL_006c:  leave.s    IL_007c

    }  // end .try
    finally
    {
      IL_006e:  ldloca.s   V_1
      IL_0070:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<class Game.IUpdateable,bool>
      IL_0076:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_007b:  endfinally
    }  // end handler
    IL_007c:  ldarg.0
    IL_007d:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IUpdateable,bool> Game.SubsystemUpdate::m_toAddOrRemove
    IL_0082:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IUpdateable,bool>::Clear()
    IL_0087:  ldarg.0
    IL_0088:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo> Game.SubsystemUpdate::m_updateables
    IL_008d:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo>::GetEnumerator()
    IL_0092:  stloc.3
    .try
    {
      IL_0093:  br.s       IL_00cc

      IL_0095:  ldloca.s   V_3
      IL_0097:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo>::get_Current()
      IL_009c:  stloc.s    V_4
      IL_009e:  ldloca.s   V_4
      IL_00a0:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo>::get_Key()
      IL_00a5:  callvirt   instance int32 Game.IUpdateable::get_UpdateOrder()
      IL_00aa:  stloc.s    V_5
      IL_00ac:  ldloc.s    V_5
      IL_00ae:  ldloca.s   V_4
      IL_00b0:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo>::get_Value()
      IL_00b5:  ldfld      int32 Game.SubsystemUpdate/UpdateableInfo::UpdateOrder
      IL_00ba:  beq.s      IL_00cc

      IL_00bc:  ldc.i4.1
      IL_00bd:  stloc.0
      IL_00be:  ldloca.s   V_4
      IL_00c0:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo>::get_Value()
      IL_00c5:  ldloc.s    V_5
      IL_00c7:  stfld      int32 Game.SubsystemUpdate/UpdateableInfo::UpdateOrder
      IL_00cc:  ldloca.s   V_3
      IL_00ce:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo>::MoveNext()
      IL_00d3:  brtrue.s   IL_0095

      IL_00d5:  leave.s    IL_00e5

    }  // end .try
    finally
    {
      IL_00d7:  ldloca.s   V_3
      IL_00d9:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo>
      IL_00df:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00e4:  endfinally
    }  // end handler
    IL_00e5:  ldloc.0
    IL_00e6:  brfalse.s  IL_0146

    IL_00e8:  ldarg.0
    IL_00e9:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.IUpdateable> Game.SubsystemUpdate::m_sortedUpdateables
    IL_00ee:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.IUpdateable>::Clear()
    IL_00f3:  ldarg.0
    IL_00f4:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo> Game.SubsystemUpdate::m_updateables
    IL_00f9:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo>::get_Keys()
    IL_00fe:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo>::GetEnumerator()
    IL_0103:  stloc.s    V_6
    .try
    {
      IL_0105:  br.s       IL_011d

      IL_0107:  ldloca.s   V_6
      IL_0109:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo>::get_Current()
      IL_010e:  stloc.s    V_7
      IL_0110:  ldarg.0
      IL_0111:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.IUpdateable> Game.SubsystemUpdate::m_sortedUpdateables
      IL_0116:  ldloc.s    V_7
      IL_0118:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.IUpdateable>::Add(!0)
      IL_011d:  ldloca.s   V_6
      IL_011f:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo>::MoveNext()
      IL_0124:  brtrue.s   IL_0107

      IL_0126:  leave.s    IL_0136

    }  // end .try
    finally
    {
      IL_0128:  ldloca.s   V_6
      IL_012a:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo>
      IL_0130:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0135:  endfinally
    }  // end handler
    IL_0136:  ldarg.0
    IL_0137:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.IUpdateable> Game.SubsystemUpdate::m_sortedUpdateables
    IL_013c:  ldsfld     class Game.SubsystemUpdate/Comparer Game.SubsystemUpdate/Comparer::Instance
    IL_0141:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.IUpdateable>::Sort(class [System.Runtime]System.Collections.Generic.IComparer`1<!0>)
    IL_0146:  ldarg.0
    IL_0147:  ldfld      class Game.SubsystemTime Game.SubsystemUpdate::m_subsystemTime
    IL_014c:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_0151:  ldc.r4     0.0
    IL_0156:  ldc.r4     0.1
    IL_015b:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0160:  stloc.s    V_8
    IL_0162:  ldarg.0
    IL_0163:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.IUpdateable> Game.SubsystemUpdate::m_sortedUpdateables
    IL_0168:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.IUpdateable>::GetEnumerator()
    IL_016d:  stloc.s    V_9
    .try
    {
      IL_016f:  br.s       IL_0188

      IL_0171:  ldloca.s   V_9
      IL_0173:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.IUpdateable>::get_Current()
      IL_0178:  stloc.s    V_10
      .try
      {
        IL_017a:  ldloc.s    V_10
        IL_017c:  ldloc.s    V_8
        IL_017e:  callvirt   instance void Game.IUpdateable::Update(float32)
        IL_0183:  leave.s    IL_0188

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_0185:  pop
        IL_0186:  leave.s    IL_0188

      }  // end handler
      IL_0188:  ldloca.s   V_9
      IL_018a:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.IUpdateable>::MoveNext()
      IL_018f:  brtrue.s   IL_0171

      IL_0191:  leave.s    IL_01a1

    }  // end .try
    finally
    {
      IL_0193:  ldloca.s   V_9
      IL_0195:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.IUpdateable>
      IL_019b:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01a0:  endfinally
    }  // end handler
    IL_01a1:  ret
  } // end of method SubsystemUpdate::Update

  .method public hidebysig instance void 
          AddUpdateable(class Game.IUpdateable updateable) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IUpdateable,bool> Game.SubsystemUpdate::m_toAddOrRemove
    IL_0006:  ldarg.1
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IUpdateable,bool>::set_Item(!0,
                                                                                                                                                !1)
    IL_000d:  ret
  } // end of method SubsystemUpdate::AddUpdateable

  .method public hidebysig instance void 
          RemoveUpdateable(class Game.IUpdateable updateable) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IUpdateable,bool> Game.SubsystemUpdate::m_toAddOrRemove
    IL_0006:  ldarg.1
    IL_0007:  ldc.i4.0
    IL_0008:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IUpdateable,bool>::set_Item(!0,
                                                                                                                                                !1)
    IL_000d:  ret
  } // end of method SubsystemUpdate::RemoveUpdateable

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       72 (0x48)
    .maxstack  3
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.IUpdateable> V_0,
             class Game.IUpdateable V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_000d:  stfld      class Game.SubsystemTime Game.SubsystemUpdate::m_subsystemTime
    IL_0012:  ldarg.0
    IL_0013:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0018:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [EntitySystem]GameEntitySystem.Project::FindSubsystems<class Game.IUpdateable>()
    IL_001d:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.IUpdateable>::GetEnumerator()
    IL_0022:  stloc.0
    .try
    {
      IL_0023:  br.s       IL_0033

      IL_0025:  ldloc.0
      IL_0026:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.IUpdateable>::get_Current()
      IL_002b:  stloc.1
      IL_002c:  ldarg.0
      IL_002d:  ldloc.1
      IL_002e:  call       instance void Game.SubsystemUpdate::AddUpdateable(class Game.IUpdateable)
      IL_0033:  ldloc.0
      IL_0034:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0039:  brtrue.s   IL_0025

      IL_003b:  leave.s    IL_0047

    }  // end .try
    finally
    {
      IL_003d:  ldloc.0
      IL_003e:  brfalse.s  IL_0046

      IL_0040:  ldloc.0
      IL_0041:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0046:  endfinally
    }  // end handler
    IL_0047:  ret
  } // end of method SubsystemUpdate::Load

  .method family hidebysig virtual instance void 
          OnEntityAdded(class [EntitySystem]GameEntitySystem.Entity entity) cil managed
  {
    // 代码大小       58 (0x3a)
    .maxstack  2
    .locals init (valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IUpdateable> V_0,
             valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.IUpdateable> V_1,
             class Game.IUpdateable V_2)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<!!0> [EntitySystem]GameEntitySystem.Entity::FindComponents<class Game.IUpdateable>()
    IL_0006:  stloc.1
    IL_0007:  ldloca.s   V_1
    IL_0009:  call       instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<!0> valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.IUpdateable>::GetEnumerator()
    IL_000e:  stloc.0
    .try
    {
      IL_000f:  br.s       IL_0020

      IL_0011:  ldloca.s   V_0
      IL_0013:  call       instance !0 valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IUpdateable>::get_Current()
      IL_0018:  stloc.2
      IL_0019:  ldarg.0
      IL_001a:  ldloc.2
      IL_001b:  call       instance void Game.SubsystemUpdate::AddUpdateable(class Game.IUpdateable)
      IL_0020:  ldloca.s   V_0
      IL_0022:  call       instance bool valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IUpdateable>::MoveNext()
      IL_0027:  brtrue.s   IL_0011

      IL_0029:  leave.s    IL_0039

    }  // end .try
    finally
    {
      IL_002b:  ldloca.s   V_0
      IL_002d:  constrained. valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IUpdateable>
      IL_0033:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0038:  endfinally
    }  // end handler
    IL_0039:  ret
  } // end of method SubsystemUpdate::OnEntityAdded

  .method family hidebysig virtual instance void 
          OnEntityRemoved(class [EntitySystem]GameEntitySystem.Entity entity) cil managed
  {
    // 代码大小       58 (0x3a)
    .maxstack  2
    .locals init (valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IUpdateable> V_0,
             valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.IUpdateable> V_1,
             class Game.IUpdateable V_2)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<!!0> [EntitySystem]GameEntitySystem.Entity::FindComponents<class Game.IUpdateable>()
    IL_0006:  stloc.1
    IL_0007:  ldloca.s   V_1
    IL_0009:  call       instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<!0> valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.IUpdateable>::GetEnumerator()
    IL_000e:  stloc.0
    .try
    {
      IL_000f:  br.s       IL_0020

      IL_0011:  ldloca.s   V_0
      IL_0013:  call       instance !0 valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IUpdateable>::get_Current()
      IL_0018:  stloc.2
      IL_0019:  ldarg.0
      IL_001a:  ldloc.2
      IL_001b:  call       instance void Game.SubsystemUpdate::RemoveUpdateable(class Game.IUpdateable)
      IL_0020:  ldloca.s   V_0
      IL_0022:  call       instance bool valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IUpdateable>::MoveNext()
      IL_0027:  brtrue.s   IL_0011

      IL_0029:  leave.s    IL_0039

    }  // end .try
    finally
    {
      IL_002b:  ldloca.s   V_0
      IL_002d:  constrained. valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.IUpdateable>
      IL_0033:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0038:  endfinally
    }  // end handler
    IL_0039:  ret
  } // end of method SubsystemUpdate::OnEntityRemoved

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo> Game.SubsystemUpdate::m_updateables
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IUpdateable,bool>::.ctor()
    IL_0011:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IUpdateable,bool> Game.SubsystemUpdate::m_toAddOrRemove
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.IUpdateable>::.ctor()
    IL_001c:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.IUpdateable> Game.SubsystemUpdate::m_sortedUpdateables
    IL_0021:  ldarg.0
    IL_0022:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_0027:  ret
  } // end of method SubsystemUpdate::.ctor

  .property instance int32 UpdateablesCount()
  {
    .get instance int32 Game.SubsystemUpdate::get_UpdateablesCount()
  } // end of property SubsystemUpdate::UpdateablesCount
} // end of class Game.SubsystemUpdate