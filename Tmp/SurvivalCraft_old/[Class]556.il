.class public abstract auto ansi beforefieldinit Game.SubsystemEditableItemBehavior`1<.ctor (Game.IEditableItemData) T>
       extends Game.SubsystemBlockBehavior
{
  .field private class Game.SubsystemItemsScanner m_subsystemItemsScanner
  .field private int32 m_contents
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<int32,!T> m_itemsData
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,!T> m_blocksData
  .method family hidebysig specialname rtspecialname 
          instance void  .ctor(int32 contents) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,!T>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,!0> class Game.SubsystemEditableItemBehavior`1<!T>::m_itemsData
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,!T>::.ctor()
    IL_0011:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,!0> class Game.SubsystemEditableItemBehavior`1<!T>::m_blocksData
    IL_0016:  ldarg.0
    IL_0017:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_001c:  ldarg.0
    IL_001d:  ldarg.1
    IL_001e:  stfld      int32 class Game.SubsystemEditableItemBehavior`1<!T>::m_contents
    IL_0023:  ret
  } // end of method SubsystemEditableItemBehavior`1::.ctor

  .method public hidebysig instance !T  GetBlockData(valuetype [Engine]Engine.Point3 point) cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  3
    .locals init (!T V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,!0> class Game.SubsystemEditableItemBehavior`1<!T>::m_blocksData
    IL_0006:  ldarg.1
    IL_0007:  ldloca.s   V_0
    IL_0009:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,!T>::TryGetValue(!0,
                                                                                                                                                          !1&)
    IL_000e:  pop
    IL_000f:  ldloc.0
    IL_0010:  ret
  } // end of method SubsystemEditableItemBehavior`1::GetBlockData

  .method public hidebysig instance void 
          SetBlockData(valuetype [Engine]Engine.Point3 point,
                       !T t) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  8
    IL_0000:  ldarg.2
    IL_0001:  box        !T
    IL_0006:  brfalse.s  IL_0016

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,!0> class Game.SubsystemEditableItemBehavior`1<!T>::m_blocksData
    IL_000e:  ldarg.1
    IL_000f:  ldarg.2
    IL_0010:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,!T>::set_Item(!0,
                                                                                                                                                       !1)
    IL_0015:  ret

    IL_0016:  ldarg.0
    IL_0017:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,!0> class Game.SubsystemEditableItemBehavior`1<!T>::m_blocksData
    IL_001c:  ldarg.1
    IL_001d:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,!T>::Remove(!0)
    IL_0022:  pop
    IL_0023:  ret
  } // end of method SubsystemEditableItemBehavior`1::SetBlockData

  .method public hidebysig instance !T  GetItemData(int32 id) cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  3
    .locals init (!T V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,!0> class Game.SubsystemEditableItemBehavior`1<!T>::m_itemsData
    IL_0006:  ldarg.1
    IL_0007:  ldloca.s   V_0
    IL_0009:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<int32,!T>::TryGetValue(!0,
                                                                                                                                !1&)
    IL_000e:  pop
    IL_000f:  ldloc.0
    IL_0010:  ret
  } // end of method SubsystemEditableItemBehavior`1::GetItemData

  .method public hidebysig instance int32 
          StoreItemDataAtUniqueId(!T t) cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance int32 class Game.SubsystemEditableItemBehavior`1<!T>::FindFreeItemId()
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,!0> class Game.SubsystemEditableItemBehavior`1<!T>::m_itemsData
    IL_000d:  ldloc.0
    IL_000e:  ldarg.1
    IL_000f:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,!T>::set_Item(!0,
                                                                                                                             !1)
    IL_0014:  ldloc.0
    IL_0015:  ret
  } // end of method SubsystemEditableItemBehavior`1::StoreItemDataAtUniqueId

  .method public hidebysig virtual instance void 
          OnItemPlaced(int32 x,
                       int32 y,
                       int32 z,
                       valuetype Game.BlockPlacementData& placementData,
                       int32 itemValue) cil managed
  {
    // 代码大小       62 (0x3e)
    .maxstack  4
    .locals init (int32 V_0,
             !T V_1)
    IL_0000:  ldarg.s    itemValue
    IL_0002:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0007:  stloc.0
    IL_0008:  ldarg.0
    IL_0009:  ldloc.0
    IL_000a:  call       instance !0 class Game.SubsystemEditableItemBehavior`1<!T>::GetItemData(int32)
    IL_000f:  stloc.1
    IL_0010:  ldloc.1
    IL_0011:  box        !T
    IL_0016:  brfalse.s  IL_003d

    IL_0018:  ldarg.0
    IL_0019:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,!0> class Game.SubsystemEditableItemBehavior`1<!T>::m_blocksData
    IL_001e:  ldarg.1
    IL_001f:  ldarg.2
    IL_0020:  ldarg.3
    IL_0021:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0026:  ldloca.s   V_1
    IL_0028:  constrained. !T
    IL_002e:  callvirt   instance class Game.IEditableItemData Game.IEditableItemData::Copy()
    IL_0033:  unbox.any  !T
    IL_0038:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,!T>::set_Item(!0,
                                                                                                                                                       !1)
    IL_003d:  ret
  } // end of method SubsystemEditableItemBehavior`1::OnItemPlaced

  .method public hidebysig virtual instance void 
          OnItemHarvested(int32 x,
                          int32 y,
                          int32 z,
                          int32 blockValue,
                          valuetype Game.BlockDropValue& dropValue,
                          int32& newBlockValue) cil managed
  {
    // 代码大小       81 (0x51)
    .maxstack  4
    .locals init (!T V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0009:  call       instance !0 class Game.SubsystemEditableItemBehavior`1<!T>::GetBlockData(valuetype [Engine]Engine.Point3)
    IL_000e:  stloc.0
    IL_000f:  ldloc.0
    IL_0010:  box        !T
    IL_0015:  brfalse.s  IL_0050

    IL_0017:  ldarg.0
    IL_0018:  call       instance int32 class Game.SubsystemEditableItemBehavior`1<!T>::FindFreeItemId()
    IL_001d:  stloc.1
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,!0> class Game.SubsystemEditableItemBehavior`1<!T>::m_itemsData
    IL_0024:  ldloc.1
    IL_0025:  ldloca.s   V_0
    IL_0027:  constrained. !T
    IL_002d:  callvirt   instance class Game.IEditableItemData Game.IEditableItemData::Copy()
    IL_0032:  unbox.any  !T
    IL_0037:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,!T>::Add(!0,
                                                                                                                        !1)
    IL_003c:  ldarg.s    dropValue
    IL_003e:  ldarg.s    dropValue
    IL_0040:  ldfld      int32 Game.BlockDropValue::Value
    IL_0045:  ldloc.1
    IL_0046:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                             int32)
    IL_004b:  stfld      int32 Game.BlockDropValue::Value
    IL_0050:  ret
  } // end of method SubsystemEditableItemBehavior`1::OnItemHarvested

  .method public hidebysig virtual instance void 
          OnBlockRemoved(int32 'value',
                         int32 newValue,
                         int32 x,
                         int32 y,
                         int32 z) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,!0> class Game.SubsystemEditableItemBehavior`1<!T>::m_blocksData
    IL_0006:  ldarg.3
    IL_0007:  ldarg.s    y
    IL_0009:  ldarg.s    z
    IL_000b:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0010:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,!T>::Remove(!0)
    IL_0015:  pop
    IL_0016:  ret
  } // end of method SubsystemEditableItemBehavior`1::OnBlockRemoved

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       270 (0x10e)
    .maxstack  3
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>> V_0,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object> V_1,
             valuetype [Engine]Engine.Point3 V_2,
             !T V_3,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object> V_4,
             int32 V_5,
             !T V_6)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemItemsScanner>(bool)
    IL_0014:  stfld      class Game.SubsystemItemsScanner class Game.SubsystemEditableItemBehavior`1<!T>::m_subsystemItemsScanner
    IL_0019:  ldarg.1
    IL_001a:  ldstr      "Blocks"
    IL_001f:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string)
    IL_0024:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>> [EntitySystem]TemplatesDatabase.ValuesDictionary::get_Items()
    IL_0029:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>>::GetEnumerator()
    IL_002e:  stloc.0
    .try
    {
      IL_002f:  br.s       IL_0071

      IL_0031:  ldloc.0
      IL_0032:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>>::get_Current()
      IL_0037:  stloc.1
      IL_0038:  ldloca.s   V_1
      IL_003a:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>::get_Key()
      IL_003f:  call       !!0 [Engine]Engine.Serialization.HumanReadableConverter::ConvertFromString<valuetype [Engine]Engine.Point3>(string)
      IL_0044:  stloc.2
      IL_0045:  call       !!0 [System.Runtime]System.Activator::CreateInstance<!T>()
      IL_004a:  stloc.3
      IL_004b:  ldloca.s   V_3
      IL_004d:  ldloca.s   V_1
      IL_004f:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>::get_Value()
      IL_0054:  castclass  [System.Runtime]System.String
      IL_0059:  constrained. !T
      IL_005f:  callvirt   instance void Game.IEditableItemData::LoadString(string)
      IL_0064:  ldarg.0
      IL_0065:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,!0> class Game.SubsystemEditableItemBehavior`1<!T>::m_blocksData
      IL_006a:  ldloc.2
      IL_006b:  ldloc.3
      IL_006c:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,!T>::set_Item(!0,
                                                                                                                                                         !1)
      IL_0071:  ldloc.0
      IL_0072:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0077:  brtrue.s   IL_0031

      IL_0079:  leave.s    IL_0085

    }  // end .try
    finally
    {
      IL_007b:  ldloc.0
      IL_007c:  brfalse.s  IL_0084

      IL_007e:  ldloc.0
      IL_007f:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0084:  endfinally
    }  // end handler
    IL_0085:  ldarg.1
    IL_0086:  ldstr      "Items"
    IL_008b:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string)
    IL_0090:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>> [EntitySystem]TemplatesDatabase.ValuesDictionary::get_Items()
    IL_0095:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>>::GetEnumerator()
    IL_009a:  stloc.0
    .try
    {
      IL_009b:  br.s       IL_00e2

      IL_009d:  ldloc.0
      IL_009e:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>>::get_Current()
      IL_00a3:  stloc.s    V_4
      IL_00a5:  ldloca.s   V_4
      IL_00a7:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>::get_Key()
      IL_00ac:  call       !!0 [Engine]Engine.Serialization.HumanReadableConverter::ConvertFromString<int32>(string)
      IL_00b1:  stloc.s    V_5
      IL_00b3:  call       !!0 [System.Runtime]System.Activator::CreateInstance<!T>()
      IL_00b8:  stloc.s    V_6
      IL_00ba:  ldloca.s   V_6
      IL_00bc:  ldloca.s   V_4
      IL_00be:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>::get_Value()
      IL_00c3:  castclass  [System.Runtime]System.String
      IL_00c8:  constrained. !T
      IL_00ce:  callvirt   instance void Game.IEditableItemData::LoadString(string)
      IL_00d3:  ldarg.0
      IL_00d4:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,!0> class Game.SubsystemEditableItemBehavior`1<!T>::m_itemsData
      IL_00d9:  ldloc.s    V_5
      IL_00db:  ldloc.s    V_6
      IL_00dd:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,!T>::set_Item(!0,
                                                                                                                               !1)
      IL_00e2:  ldloc.0
      IL_00e3:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_00e8:  brtrue.s   IL_009d

      IL_00ea:  leave.s    IL_00f6

    }  // end .try
    finally
    {
      IL_00ec:  ldloc.0
      IL_00ed:  brfalse.s  IL_00f5

      IL_00ef:  ldloc.0
      IL_00f0:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00f5:  endfinally
    }  // end handler
    IL_00f6:  ldarg.0
    IL_00f7:  ldfld      class Game.SubsystemItemsScanner class Game.SubsystemEditableItemBehavior`1<!T>::m_subsystemItemsScanner
    IL_00fc:  ldarg.0
    IL_00fd:  ldftn      instance void class Game.SubsystemEditableItemBehavior`1<!T>::GarbageCollectItems(class [System.Collections]System.Collections.Generic.HashSet`1<int32>)
    IL_0103:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Collections]System.Collections.Generic.HashSet`1<int32>>::.ctor(object,
                                                                                                                                                           native int)
    IL_0108:  callvirt   instance void Game.SubsystemItemsScanner::add_ItemsScanned(class [System.Runtime]System.Action`1<class [System.Collections]System.Collections.Generic.HashSet`1<int32>>)
    IL_010d:  ret
  } // end of method SubsystemEditableItemBehavior`1::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       230 (0xe6)
    .maxstack  3
    .locals init (class [EntitySystem]TemplatesDatabase.ValuesDictionary V_0,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_1,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,!T> V_2,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,!T> V_3,
             !T V_4,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<int32,!T> V_5,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,!T> V_6)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0007:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
    IL_000c:  stloc.0
    IL_000d:  ldarg.1
    IL_000e:  ldstr      "Blocks"
    IL_0013:  ldloc.0
    IL_0014:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                          !!0)
    IL_0019:  ldarg.0
    IL_001a:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,!0> class Game.SubsystemEditableItemBehavior`1<!T>::m_blocksData
    IL_001f:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,!T>::GetEnumerator()
    IL_0024:  stloc.2
    .try
    {
      IL_0025:  br.s       IL_005c

      IL_0027:  ldloca.s   V_2
      IL_0029:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,!T>::get_Current()
      IL_002e:  stloc.3
      IL_002f:  ldloc.0
      IL_0030:  ldloca.s   V_3
      IL_0032:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,!T>::get_Key()
      IL_0037:  box        [Engine]Engine.Point3
      IL_003c:  call       string [Engine]Engine.Serialization.HumanReadableConverter::ConvertToString(object)
      IL_0041:  ldloca.s   V_3
      IL_0043:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,!T>::get_Value()
      IL_0048:  stloc.s    V_4
      IL_004a:  ldloca.s   V_4
      IL_004c:  constrained. !T
      IL_0052:  callvirt   instance string Game.IEditableItemData::SaveString()
      IL_0057:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                            !!0)
      IL_005c:  ldloca.s   V_2
      IL_005e:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,!T>::MoveNext()
      IL_0063:  brtrue.s   IL_0027

      IL_0065:  leave.s    IL_0075

    }  // end .try
    finally
    {
      IL_0067:  ldloca.s   V_2
      IL_0069:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,!T>
      IL_006f:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0074:  endfinally
    }  // end handler
    IL_0075:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
    IL_007a:  stloc.1
    IL_007b:  ldarg.1
    IL_007c:  ldstr      "Items"
    IL_0081:  ldloc.1
    IL_0082:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                          !!0)
    IL_0087:  ldarg.0
    IL_0088:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,!0> class Game.SubsystemEditableItemBehavior`1<!T>::m_itemsData
    IL_008d:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<int32,!T>::GetEnumerator()
    IL_0092:  stloc.s    V_5
    .try
    {
      IL_0094:  br.s       IL_00cc

      IL_0096:  ldloca.s   V_5
      IL_0098:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<int32,!T>::get_Current()
      IL_009d:  stloc.s    V_6
      IL_009f:  ldloc.1
      IL_00a0:  ldloca.s   V_6
      IL_00a2:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,!T>::get_Key()
      IL_00a7:  box        [System.Runtime]System.Int32
      IL_00ac:  call       string [Engine]Engine.Serialization.HumanReadableConverter::ConvertToString(object)
      IL_00b1:  ldloca.s   V_6
      IL_00b3:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,!T>::get_Value()
      IL_00b8:  stloc.s    V_4
      IL_00ba:  ldloca.s   V_4
      IL_00bc:  constrained. !T
      IL_00c2:  callvirt   instance string Game.IEditableItemData::SaveString()
      IL_00c7:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                            !!0)
      IL_00cc:  ldloca.s   V_5
      IL_00ce:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<int32,!T>::MoveNext()
      IL_00d3:  brtrue.s   IL_0096

      IL_00d5:  leave.s    IL_00e5

    }  // end .try
    finally
    {
      IL_00d7:  ldloca.s   V_5
      IL_00d9:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<int32,!T>
      IL_00df:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00e4:  endfinally
    }  // end handler
    IL_00e5:  ret
  } // end of method SubsystemEditableItemBehavior`1::Save

  .method private hidebysig instance int32 
          FindFreeItemId() cil managed
  {
    // 代码大小       34 (0x22)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldc.i4.1
    IL_0001:  stloc.0
    IL_0002:  br.s       IL_0018

    IL_0004:  ldarg.0
    IL_0005:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,!0> class Game.SubsystemEditableItemBehavior`1<!T>::m_itemsData
    IL_000a:  ldloc.0
    IL_000b:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<int32,!T>::ContainsKey(!0)
    IL_0010:  brtrue.s   IL_0014

    IL_0012:  ldloc.0
    IL_0013:  ret

    IL_0014:  ldloc.0
    IL_0015:  ldc.i4.1
    IL_0016:  add
    IL_0017:  stloc.0
    IL_0018:  ldloc.0
    IL_0019:  ldc.i4     0x3e8
    IL_001e:  blt.s      IL_0004

    IL_0020:  ldc.i4.0
    IL_0021:  ret
  } // end of method SubsystemEditableItemBehavior`1::FindFreeItemId

  .method private hidebysig instance void 
          GarbageCollectItems(class [System.Collections]System.Collections.Generic.HashSet`1<int32> allExistingItems) cil managed
  {
    // 代码大小       217 (0xd9)
    .maxstack  2
    .locals init (class [System.Collections]System.Collections.Generic.HashSet`1<int32> V_0,
             class [System.Collections]System.Collections.Generic.List`1<int32> V_1,
             valuetype [System.Collections]System.Collections.Generic.HashSet`1/Enumerator<int32> V_2,
             int32 V_3,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<int32,!T> V_4,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,!T> V_5,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<int32> V_6,
             int32 V_7)
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.HashSet`1<int32>::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.HashSet`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.HashSet`1<int32>::GetEnumerator()
    IL_000c:  stloc.2
    .try
    {
      IL_000d:  br.s       IL_0032

      IL_000f:  ldloca.s   V_2
      IL_0011:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.HashSet`1/Enumerator<int32>::get_Current()
      IL_0016:  stloc.3
      IL_0017:  ldloc.3
      IL_0018:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_001d:  ldarg.0
      IL_001e:  ldfld      int32 class Game.SubsystemEditableItemBehavior`1<!T>::m_contents
      IL_0023:  bne.un.s   IL_0032

      IL_0025:  ldloc.0
      IL_0026:  ldloc.3
      IL_0027:  call       int32 Game.TerrainData::ExtractData(int32)
      IL_002c:  callvirt   instance bool class [System.Collections]System.Collections.Generic.HashSet`1<int32>::Add(!0)
      IL_0031:  pop
      IL_0032:  ldloca.s   V_2
      IL_0034:  call       instance bool valuetype [System.Collections]System.Collections.Generic.HashSet`1/Enumerator<int32>::MoveNext()
      IL_0039:  brtrue.s   IL_000f

      IL_003b:  leave.s    IL_004b

    }  // end .try
    finally
    {
      IL_003d:  ldloca.s   V_2
      IL_003f:  constrained. valuetype [System.Collections]System.Collections.Generic.HashSet`1/Enumerator<int32>
      IL_0045:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_004a:  endfinally
    }  // end handler
    IL_004b:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<int32>::.ctor()
    IL_0050:  stloc.1
    IL_0051:  ldarg.0
    IL_0052:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,!0> class Game.SubsystemEditableItemBehavior`1<!T>::m_itemsData
    IL_0057:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<int32,!T>::GetEnumerator()
    IL_005c:  stloc.s    V_4
    .try
    {
      IL_005e:  br.s       IL_0085

      IL_0060:  ldloca.s   V_4
      IL_0062:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<int32,!T>::get_Current()
      IL_0067:  stloc.s    V_5
      IL_0069:  ldloc.0
      IL_006a:  ldloca.s   V_5
      IL_006c:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,!T>::get_Key()
      IL_0071:  callvirt   instance bool class [System.Collections]System.Collections.Generic.HashSet`1<int32>::Contains(!0)
      IL_0076:  brtrue.s   IL_0085

      IL_0078:  ldloc.1
      IL_0079:  ldloca.s   V_5
      IL_007b:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,!T>::get_Key()
      IL_0080:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Add(!0)
      IL_0085:  ldloca.s   V_4
      IL_0087:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<int32,!T>::MoveNext()
      IL_008c:  brtrue.s   IL_0060

      IL_008e:  leave.s    IL_009e

    }  // end .try
    finally
    {
      IL_0090:  ldloca.s   V_4
      IL_0092:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<int32,!T>
      IL_0098:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_009d:  endfinally
    }  // end handler
    IL_009e:  ldloc.1
    IL_009f:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<int32>::GetEnumerator()
    IL_00a4:  stloc.s    V_6
    .try
    {
      IL_00a6:  br.s       IL_00bf

      IL_00a8:  ldloca.s   V_6
      IL_00aa:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<int32>::get_Current()
      IL_00af:  stloc.s    V_7
      IL_00b1:  ldarg.0
      IL_00b2:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,!0> class Game.SubsystemEditableItemBehavior`1<!T>::m_itemsData
      IL_00b7:  ldloc.s    V_7
      IL_00b9:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<int32,!T>::Remove(!0)
      IL_00be:  pop
      IL_00bf:  ldloca.s   V_6
      IL_00c1:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<int32>::MoveNext()
      IL_00c6:  brtrue.s   IL_00a8

      IL_00c8:  leave.s    IL_00d8

    }  // end .try
    finally
    {
      IL_00ca:  ldloca.s   V_6
      IL_00cc:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<int32>
      IL_00d2:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00d7:  endfinally
    }  // end handler
    IL_00d8:  ret
  } // end of method SubsystemEditableItemBehavior`1::GarbageCollectItems

} // end of class Game.SubsystemEditableItemBehavior`1