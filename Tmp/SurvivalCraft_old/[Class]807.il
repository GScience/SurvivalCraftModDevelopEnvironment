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
  .field private int32 '<UpdatesPerFrame>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
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

  .method public hidebysig specialname instance int32 
          get_UpdatesPerFrame() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.SubsystemUpdate::'<UpdatesPerFrame>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemUpdate::get_UpdatesPerFrame

  .method public hidebysig specialname instance void 
          set_UpdatesPerFrame(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 Game.SubsystemUpdate::'<UpdatesPerFrame>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemUpdate::set_UpdatesPerFrame

  .method public hidebysig instance void 
          Update() cil managed
  {
    // 代码大小       453 (0x1c5)
    .maxstack  5
    .locals init (int32 V_0,
             bool V_1,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<class Game.IUpdateable,bool> V_2,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class Game.IUpdateable,bool> V_3,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo> V_4,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo> V_5,
             int32 V_6,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo> V_7,
             class Game.IUpdateable V_8,
             float32 V_9,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.IUpdateable> V_10,
             class Game.IUpdateable V_11)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br         IL_01b8

    IL_0007:  ldarg.0
    IL_0008:  ldfld      class Game.SubsystemTime Game.SubsystemUpdate::m_subsystemTime
    IL_000d:  callvirt   instance void Game.SubsystemTime::NextFrame()
    IL_0012:  ldc.i4.0
    IL_0013:  stloc.1
    IL_0014:  ldarg.0
    IL_0015:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IUpdateable,bool> Game.SubsystemUpdate::m_toAddOrRemove
    IL_001a:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IUpdateable,bool>::GetEnumerator()
    IL_001f:  stloc.2
    .try
    {
      IL_0020:  br.s       IL_0075

      IL_0022:  ldloca.s   V_2
      IL_0024:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<class Game.IUpdateable,bool>::get_Current()
      IL_0029:  stloc.3
      IL_002a:  ldloca.s   V_3
      IL_002c:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class Game.IUpdateable,bool>::get_Value()
      IL_0031:  brfalse.s  IL_0060

      IL_0033:  ldarg.0
      IL_0034:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo> Game.SubsystemUpdate::m_updateables
      IL_0039:  ldloca.s   V_3
      IL_003b:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class Game.IUpdateable,bool>::get_Key()
      IL_0040:  newobj     instance void Game.SubsystemUpdate/UpdateableInfo::.ctor()
      IL_0045:  dup
      IL_0046:  ldloca.s   V_3
      IL_0048:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class Game.IUpdateable,bool>::get_Key()
      IL_004d:  callvirt   instance int32 Game.IUpdateable::get_UpdateOrder()
      IL_0052:  stfld      int32 Game.SubsystemUpdate/UpdateableInfo::UpdateOrder
      IL_0057:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo>::Add(!0,
                                                                                                                                                                                  !1)
      IL_005c:  ldc.i4.1
      IL_005d:  stloc.1
      IL_005e:  br.s       IL_0075

      IL_0060:  ldarg.0
      IL_0061:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo> Game.SubsystemUpdate::m_updateables
      IL_0066:  ldloca.s   V_3
      IL_0068:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class Game.IUpdateable,bool>::get_Key()
      IL_006d:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo>::Remove(!0)
      IL_0072:  pop
      IL_0073:  ldc.i4.1
      IL_0074:  stloc.1
      IL_0075:  ldloca.s   V_2
      IL_0077:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<class Game.IUpdateable,bool>::MoveNext()
      IL_007c:  brtrue.s   IL_0022

      IL_007e:  leave.s    IL_008e

    }  // end .try
    finally
    {
      IL_0080:  ldloca.s   V_2
      IL_0082:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<class Game.IUpdateable,bool>
      IL_0088:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_008d:  endfinally
    }  // end handler
    IL_008e:  ldarg.0
    IL_008f:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IUpdateable,bool> Game.SubsystemUpdate::m_toAddOrRemove
    IL_0094:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IUpdateable,bool>::Clear()
    IL_0099:  ldarg.0
    IL_009a:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo> Game.SubsystemUpdate::m_updateables
    IL_009f:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo>::GetEnumerator()
    IL_00a4:  stloc.s    V_4
    .try
    {
      IL_00a6:  br.s       IL_00df

      IL_00a8:  ldloca.s   V_4
      IL_00aa:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo>::get_Current()
      IL_00af:  stloc.s    V_5
      IL_00b1:  ldloca.s   V_5
      IL_00b3:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo>::get_Key()
      IL_00b8:  callvirt   instance int32 Game.IUpdateable::get_UpdateOrder()
      IL_00bd:  stloc.s    V_6
      IL_00bf:  ldloc.s    V_6
      IL_00c1:  ldloca.s   V_5
      IL_00c3:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo>::get_Value()
      IL_00c8:  ldfld      int32 Game.SubsystemUpdate/UpdateableInfo::UpdateOrder
      IL_00cd:  beq.s      IL_00df

      IL_00cf:  ldc.i4.1
      IL_00d0:  stloc.1
      IL_00d1:  ldloca.s   V_5
      IL_00d3:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo>::get_Value()
      IL_00d8:  ldloc.s    V_6
      IL_00da:  stfld      int32 Game.SubsystemUpdate/UpdateableInfo::UpdateOrder
      IL_00df:  ldloca.s   V_4
      IL_00e1:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo>::MoveNext()
      IL_00e6:  brtrue.s   IL_00a8

      IL_00e8:  leave.s    IL_00f8

    }  // end .try
    finally
    {
      IL_00ea:  ldloca.s   V_4
      IL_00ec:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo>
      IL_00f2:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00f7:  endfinally
    }  // end handler
    IL_00f8:  ldloc.1
    IL_00f9:  brfalse.s  IL_0159

    IL_00fb:  ldarg.0
    IL_00fc:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.IUpdateable> Game.SubsystemUpdate::m_sortedUpdateables
    IL_0101:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.IUpdateable>::Clear()
    IL_0106:  ldarg.0
    IL_0107:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo> Game.SubsystemUpdate::m_updateables
    IL_010c:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo>::get_Keys()
    IL_0111:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo>::GetEnumerator()
    IL_0116:  stloc.s    V_7
    .try
    {
      IL_0118:  br.s       IL_0130

      IL_011a:  ldloca.s   V_7
      IL_011c:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo>::get_Current()
      IL_0121:  stloc.s    V_8
      IL_0123:  ldarg.0
      IL_0124:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.IUpdateable> Game.SubsystemUpdate::m_sortedUpdateables
      IL_0129:  ldloc.s    V_8
      IL_012b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.IUpdateable>::Add(!0)
      IL_0130:  ldloca.s   V_7
      IL_0132:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo>::MoveNext()
      IL_0137:  brtrue.s   IL_011a

      IL_0139:  leave.s    IL_0149

    }  // end .try
    finally
    {
      IL_013b:  ldloca.s   V_7
      IL_013d:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.IUpdateable,class Game.SubsystemUpdate/UpdateableInfo>
      IL_0143:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0148:  endfinally
    }  // end handler
    IL_0149:  ldarg.0
    IL_014a:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.IUpdateable> Game.SubsystemUpdate::m_sortedUpdateables
    IL_014f:  ldsfld     class Game.SubsystemUpdate/Comparer Game.SubsystemUpdate/Comparer::Instance
    IL_0154:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.IUpdateable>::Sort(class [System.Runtime]System.Collections.Generic.IComparer`1<!0>)
    IL_0159:  ldarg.0
    IL_015a:  ldfld      class Game.SubsystemTime Game.SubsystemUpdate::m_subsystemTime
    IL_015f:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_0164:  ldc.r4     0.0
    IL_0169:  ldc.r4     0.1
    IL_016e:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0173:  stloc.s    V_9
    IL_0175:  ldarg.0
    IL_0176:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.IUpdateable> Game.SubsystemUpdate::m_sortedUpdateables
    IL_017b:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.IUpdateable>::GetEnumerator()
    IL_0180:  stloc.s    V_10
    .try
    {
      IL_0182:  br.s       IL_019b

      IL_0184:  ldloca.s   V_10
      IL_0186:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.IUpdateable>::get_Current()
      IL_018b:  stloc.s    V_11
      .try
      {
        IL_018d:  ldloc.s    V_11
        IL_018f:  ldloc.s    V_9
        IL_0191:  callvirt   instance void Game.IUpdateable::Update(float32)
        IL_0196:  leave.s    IL_019b

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_0198:  pop
        IL_0199:  leave.s    IL_019b

      }  // end handler
      IL_019b:  ldloca.s   V_10
      IL_019d:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.IUpdateable>::MoveNext()
      IL_01a2:  brtrue.s   IL_0184

      IL_01a4:  leave.s    IL_01b4

    }  // end .try
    finally
    {
      IL_01a6:  ldloca.s   V_10
      IL_01a8:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.IUpdateable>
      IL_01ae:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01b3:  endfinally
    }  // end handler
    IL_01b4:  ldloc.0
    IL_01b5:  ldc.i4.1
    IL_01b6:  add
    IL_01b7:  stloc.0
    IL_01b8:  ldloc.0
    IL_01b9:  ldarg.0
    IL_01ba:  call       instance int32 Game.SubsystemUpdate::get_UpdatesPerFrame()
    IL_01bf:  blt        IL_0007

    IL_01c4:  ret
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
    // 代码大小       79 (0x4f)
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
    IL_0047:  ldarg.0
    IL_0048:  ldc.i4.1
    IL_0049:  call       instance void Game.SubsystemUpdate::set_UpdatesPerFrame(int32)
    IL_004e:  ret
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
  .property instance int32 UpdatesPerFrame()
  {
    .get instance int32 Game.SubsystemUpdate::get_UpdatesPerFrame()
    .set instance void Game.SubsystemUpdate::set_UpdatesPerFrame(int32)
  } // end of property SubsystemUpdate::UpdatesPerFrame
} // end of class Game.SubsystemUpdate