.class public auto ansi beforefieldinit Game.SubsystemItemsScanner
       extends [EntitySystem]GameEntitySystem.Subsystem
       implements Game.IUpdateable
{
  .field private static literal float32 m_automaticScanPeriod = float32(60.)
  .field private float64 m_nextAutomaticScanTime
  .field private class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ScannedItemData> m_items
  .field private class [System.Runtime]System.Action`1<valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.ScannedItemData>> ItemsScanned
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance void 
          add_ItemsScanned(class [System.Runtime]System.Action`1<valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.ScannedItemData>> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.ScannedItemData>> V_0,
             class [System.Runtime]System.Action`1<valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.ScannedItemData>> V_1,
             class [System.Runtime]System.Action`1<valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.ScannedItemData>> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.ScannedItemData>> Game.SubsystemItemsScanner::ItemsScanned
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Combine(class [System.Runtime]System.Delegate,
                                                                                                        class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`1<valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.ScannedItemData>>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.ScannedItemData>> Game.SubsystemItemsScanner::ItemsScanned
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.ScannedItemData>>>(!!0&,
                                                                                                                                                                                                             !!0,
                                                                                                                                                                                                             !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method SubsystemItemsScanner::add_ItemsScanned

  .method public hidebysig specialname instance void 
          remove_ItemsScanned(class [System.Runtime]System.Action`1<valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.ScannedItemData>> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.ScannedItemData>> V_0,
             class [System.Runtime]System.Action`1<valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.ScannedItemData>> V_1,
             class [System.Runtime]System.Action`1<valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.ScannedItemData>> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.ScannedItemData>> Game.SubsystemItemsScanner::ItemsScanned
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Remove(class [System.Runtime]System.Delegate,
                                                                                                       class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`1<valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.ScannedItemData>>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.ScannedItemData>> Game.SubsystemItemsScanner::ItemsScanned
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.ScannedItemData>>>(!!0&,
                                                                                                                                                                                                             !!0,
                                                                                                                                                                                                             !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method SubsystemItemsScanner::remove_ItemsScanned

  .method public hidebysig instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.ScannedItemData> 
          ScanItems() cil managed
  {
    // 代码大小       491 (0x1eb)
    .maxstack  3
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [EntitySystem]GameEntitySystem.Subsystem> V_0,
             valuetype [Engine]Engine.ReadOnlyList`1<class [EntitySystem]GameEntitySystem.Subsystem> V_1,
             class Game.IInventory V_2,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class [EntitySystem]GameEntitySystem.Entity,bool> V_3,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [EntitySystem]GameEntitySystem.Component> V_4,
             valuetype [Engine]Engine.ReadOnlyList`1<class [EntitySystem]GameEntitySystem.Component> V_5,
             class Game.IInventory V_6,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Pickable> V_7,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.Pickable> V_8,
             class Game.Pickable V_9,
             valuetype Game.ScannedItemData V_10,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Projectile> V_11,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.Projectile> V_12,
             class Game.Projectile V_13)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ScannedItemData> Game.SubsystemItemsScanner::m_items
    IL_0006:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ScannedItemData>::Clear()
    IL_000b:  ldarg.0
    IL_000c:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0011:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [EntitySystem]GameEntitySystem.Subsystem> [EntitySystem]GameEntitySystem.Project::get_Subsystems()
    IL_0016:  stloc.1
    IL_0017:  ldloca.s   V_1
    IL_0019:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class [EntitySystem]GameEntitySystem.Subsystem>::GetEnumerator()
    IL_001e:  stloc.0
    .try
    {
      IL_001f:  br.s       IL_003e

      IL_0021:  ldloca.s   V_0
      IL_0023:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [EntitySystem]GameEntitySystem.Subsystem>::get_Current()
      IL_0028:  isinst     Game.IInventory
      IL_002d:  stloc.2
      IL_002e:  ldloc.2
      IL_002f:  brfalse.s  IL_003e

      IL_0031:  ldarg.0
      IL_0032:  ldloc.2
      IL_0033:  ldarg.0
      IL_0034:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ScannedItemData> Game.SubsystemItemsScanner::m_items
      IL_0039:  call       instance void Game.SubsystemItemsScanner::ScanInventory(class Game.IInventory,
                                                                                   class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ScannedItemData>)
      IL_003e:  ldloca.s   V_0
      IL_0040:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [EntitySystem]GameEntitySystem.Subsystem>::MoveNext()
      IL_0045:  brtrue.s   IL_0021

      IL_0047:  leave.s    IL_0057

    }  // end .try
    finally
    {
      IL_0049:  ldloca.s   V_0
      IL_004b:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [EntitySystem]GameEntitySystem.Subsystem>
      IL_0051:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0056:  endfinally
    }  // end handler
    IL_0057:  ldarg.0
    IL_0058:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_005d:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class [EntitySystem]GameEntitySystem.Entity,bool> [EntitySystem]GameEntitySystem.Project::get_Entities()
    IL_0062:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class [EntitySystem]GameEntitySystem.Entity,bool>::GetEnumerator()
    IL_0067:  stloc.3
    .try
    {
      IL_0068:  br.s       IL_00bc

      IL_006a:  ldloca.s   V_3
      IL_006c:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class [EntitySystem]GameEntitySystem.Entity,bool>::get_Current()
      IL_0071:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [EntitySystem]GameEntitySystem.Component> [EntitySystem]GameEntitySystem.Entity::get_Components()
      IL_0076:  stloc.s    V_5
      IL_0078:  ldloca.s   V_5
      IL_007a:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class [EntitySystem]GameEntitySystem.Component>::GetEnumerator()
      IL_007f:  stloc.s    V_4
      .try
      {
        IL_0081:  br.s       IL_00a3

        IL_0083:  ldloca.s   V_4
        IL_0085:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [EntitySystem]GameEntitySystem.Component>::get_Current()
        IL_008a:  isinst     Game.IInventory
        IL_008f:  stloc.s    V_6
        IL_0091:  ldloc.s    V_6
        IL_0093:  brfalse.s  IL_00a3

        IL_0095:  ldarg.0
        IL_0096:  ldloc.s    V_6
        IL_0098:  ldarg.0
        IL_0099:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ScannedItemData> Game.SubsystemItemsScanner::m_items
        IL_009e:  call       instance void Game.SubsystemItemsScanner::ScanInventory(class Game.IInventory,
                                                                                     class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ScannedItemData>)
        IL_00a3:  ldloca.s   V_4
        IL_00a5:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [EntitySystem]GameEntitySystem.Component>::MoveNext()
        IL_00aa:  brtrue.s   IL_0083

        IL_00ac:  leave.s    IL_00bc

      }  // end .try
      finally
      {
        IL_00ae:  ldloca.s   V_4
        IL_00b0:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [EntitySystem]GameEntitySystem.Component>
        IL_00b6:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_00bb:  endfinally
      }  // end handler
      IL_00bc:  ldloca.s   V_3
      IL_00be:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class [EntitySystem]GameEntitySystem.Entity,bool>::MoveNext()
      IL_00c3:  brtrue.s   IL_006a

      IL_00c5:  leave.s    IL_00d5

    }  // end .try
    finally
    {
      IL_00c7:  ldloca.s   V_3
      IL_00c9:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class [EntitySystem]GameEntitySystem.Entity,bool>
      IL_00cf:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00d4:  endfinally
    }  // end handler
    IL_00d5:  ldarg.0
    IL_00d6:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_00db:  ldc.i4.1
    IL_00dc:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPickables>(bool)
    IL_00e1:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.Pickable> Game.SubsystemPickables::get_Pickables()
    IL_00e6:  stloc.s    V_8
    IL_00e8:  ldloca.s   V_8
    IL_00ea:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.Pickable>::GetEnumerator()
    IL_00ef:  stloc.s    V_7
    .try
    {
      IL_00f1:  br.s       IL_0149

      IL_00f3:  ldloca.s   V_7
      IL_00f5:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Pickable>::get_Current()
      IL_00fa:  stloc.s    V_9
      IL_00fc:  ldloc.s    V_9
      IL_00fe:  ldfld      int32 Game.Pickable::Count
      IL_0103:  ldc.i4.0
      IL_0104:  ble.s      IL_0149

      IL_0106:  ldloc.s    V_9
      IL_0108:  ldfld      int32 Game.WorldItem::Value
      IL_010d:  brfalse.s  IL_0149

      IL_010f:  ldarg.0
      IL_0110:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ScannedItemData> Game.SubsystemItemsScanner::m_items
      IL_0115:  ldloca.s   V_10
      IL_0117:  initobj    Game.ScannedItemData
      IL_011d:  ldloca.s   V_10
      IL_011f:  ldloc.s    V_9
      IL_0121:  stfld      object Game.ScannedItemData::Container
      IL_0126:  ldloca.s   V_10
      IL_0128:  ldloc.s    V_9
      IL_012a:  ldfld      int32 Game.WorldItem::Value
      IL_012f:  stfld      int32 Game.ScannedItemData::Value
      IL_0134:  ldloca.s   V_10
      IL_0136:  ldloc.s    V_9
      IL_0138:  ldfld      int32 Game.Pickable::Count
      IL_013d:  stfld      int32 Game.ScannedItemData::Count
      IL_0142:  ldloc.s    V_10
      IL_0144:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ScannedItemData>::Add(!0)
      IL_0149:  ldloca.s   V_7
      IL_014b:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Pickable>::MoveNext()
      IL_0150:  brtrue.s   IL_00f3

      IL_0152:  leave.s    IL_0162

    }  // end .try
    finally
    {
      IL_0154:  ldloca.s   V_7
      IL_0156:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Pickable>
      IL_015c:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0161:  endfinally
    }  // end handler
    IL_0162:  ldarg.0
    IL_0163:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0168:  ldc.i4.1
    IL_0169:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemProjectiles>(bool)
    IL_016e:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.Projectile> Game.SubsystemProjectiles::get_Projectiles()
    IL_0173:  stloc.s    V_12
    IL_0175:  ldloca.s   V_12
    IL_0177:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.Projectile>::GetEnumerator()
    IL_017c:  stloc.s    V_11
    .try
    {
      IL_017e:  br.s       IL_01c6

      IL_0180:  ldloca.s   V_11
      IL_0182:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Projectile>::get_Current()
      IL_0187:  stloc.s    V_13
      IL_0189:  ldloc.s    V_13
      IL_018b:  ldfld      int32 Game.WorldItem::Value
      IL_0190:  brfalse.s  IL_01c6

      IL_0192:  ldarg.0
      IL_0193:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ScannedItemData> Game.SubsystemItemsScanner::m_items
      IL_0198:  ldloca.s   V_10
      IL_019a:  initobj    Game.ScannedItemData
      IL_01a0:  ldloca.s   V_10
      IL_01a2:  ldloc.s    V_13
      IL_01a4:  stfld      object Game.ScannedItemData::Container
      IL_01a9:  ldloca.s   V_10
      IL_01ab:  ldloc.s    V_13
      IL_01ad:  ldfld      int32 Game.WorldItem::Value
      IL_01b2:  stfld      int32 Game.ScannedItemData::Value
      IL_01b7:  ldloca.s   V_10
      IL_01b9:  ldc.i4.1
      IL_01ba:  stfld      int32 Game.ScannedItemData::Count
      IL_01bf:  ldloc.s    V_10
      IL_01c1:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ScannedItemData>::Add(!0)
      IL_01c6:  ldloca.s   V_11
      IL_01c8:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Projectile>::MoveNext()
      IL_01cd:  brtrue.s   IL_0180

      IL_01cf:  leave.s    IL_01df

    }  // end .try
    finally
    {
      IL_01d1:  ldloca.s   V_11
      IL_01d3:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Projectile>
      IL_01d9:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01de:  endfinally
    }  // end handler
    IL_01df:  ldarg.0
    IL_01e0:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ScannedItemData> Game.SubsystemItemsScanner::m_items
    IL_01e5:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.ScannedItemData>::.ctor(class [System.Runtime]System.Collections.Generic.IList`1<!0>)
    IL_01ea:  ret
  } // end of method SubsystemItemsScanner::ScanItems

  .method public hidebysig instance void 
          ModifyItem(valuetype Game.ScannedItemData itemData,
                     int32 newValue) cil managed
  {
    // 代码大小       124 (0x7c)
    .maxstack  5
    .locals init (int32 V_0)
    IL_0000:  ldarg.1
    IL_0001:  ldfld      object Game.ScannedItemData::Container
    IL_0006:  isinst     Game.IInventory
    IL_000b:  brfalse.s  IL_0052

    IL_000d:  ldarg.1
    IL_000e:  ldfld      object Game.ScannedItemData::Container
    IL_0013:  castclass  Game.IInventory
    IL_0018:  dup
    IL_0019:  ldarg.1
    IL_001a:  ldfld      int32 Game.ScannedItemData::IndexInContainer
    IL_001f:  ldarg.1
    IL_0020:  ldfld      int32 Game.ScannedItemData::Count
    IL_0025:  callvirt   instance int32 Game.IInventory::RemoveSlotItems(int32,
                                                                         int32)
    IL_002a:  pop
    IL_002b:  dup
    IL_002c:  ldarg.1
    IL_002d:  ldfld      int32 Game.ScannedItemData::IndexInContainer
    IL_0032:  ldarg.2
    IL_0033:  callvirt   instance int32 Game.IInventory::GetSlotCapacity(int32,
                                                                         int32)
    IL_0038:  stloc.0
    IL_0039:  ldarg.1
    IL_003a:  ldfld      int32 Game.ScannedItemData::IndexInContainer
    IL_003f:  ldarg.2
    IL_0040:  ldarg.1
    IL_0041:  ldfld      int32 Game.ScannedItemData::Count
    IL_0046:  ldloc.0
    IL_0047:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_004c:  callvirt   instance void Game.IInventory::AddSlotItems(int32,
                                                                     int32,
                                                                     int32)
    IL_0051:  ret

    IL_0052:  ldarg.1
    IL_0053:  ldfld      object Game.ScannedItemData::Container
    IL_0058:  isinst     Game.WorldItem
    IL_005d:  brfalse.s  IL_0071

    IL_005f:  ldarg.1
    IL_0060:  ldfld      object Game.ScannedItemData::Container
    IL_0065:  castclass  Game.WorldItem
    IL_006a:  ldarg.2
    IL_006b:  stfld      int32 Game.WorldItem::Value
    IL_0070:  ret

    IL_0071:  ldstr      "Unknown container type."
    IL_0076:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_007b:  throw
  } // end of method SubsystemItemsScanner::ModifyItem

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemItemsScanner::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       57 (0x39)
    .maxstack  8
    IL_0000:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_0005:  ldarg.0
    IL_0006:  ldfld      float64 Game.SubsystemItemsScanner::m_nextAutomaticScanTime
    IL_000b:  blt.un.s   IL_0038

    IL_000d:  ldarg.0
    IL_000e:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_0013:  ldc.r8     60.
    IL_001c:  add
    IL_001d:  stfld      float64 Game.SubsystemItemsScanner::m_nextAutomaticScanTime
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class [System.Runtime]System.Action`1<valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.ScannedItemData>> Game.SubsystemItemsScanner::ItemsScanned
    IL_0028:  dup
    IL_0029:  brtrue.s   IL_002d

    IL_002b:  pop
    IL_002c:  ret

    IL_002d:  ldarg.0
    IL_002e:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.ScannedItemData> Game.SubsystemItemsScanner::ScanItems()
    IL_0033:  callvirt   instance void class [System.Runtime]System.Action`1<valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.ScannedItemData>>::Invoke(!0)
    IL_0038:  ret
  } // end of method SubsystemItemsScanner::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_0006:  ldc.r8     60.
    IL_000f:  add
    IL_0010:  stfld      float64 Game.SubsystemItemsScanner::m_nextAutomaticScanTime
    IL_0015:  ret
  } // end of method SubsystemItemsScanner::Load

  .method private hidebysig instance void 
          ScanInventory(class Game.IInventory inventory,
                        class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ScannedItemData> items) cil managed
  {
    // 代码大小       88 (0x58)
    .maxstack  3
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             valuetype Game.ScannedItemData V_3)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br.s       IL_004e

    IL_0004:  ldarg.1
    IL_0005:  ldloc.0
    IL_0006:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_000b:  stloc.1
    IL_000c:  ldloc.1
    IL_000d:  ldc.i4.0
    IL_000e:  ble.s      IL_004a

    IL_0010:  ldarg.1
    IL_0011:  ldloc.0
    IL_0012:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_0017:  stloc.2
    IL_0018:  ldloc.2
    IL_0019:  brfalse.s  IL_004a

    IL_001b:  ldarg.2
    IL_001c:  ldloca.s   V_3
    IL_001e:  initobj    Game.ScannedItemData
    IL_0024:  ldloca.s   V_3
    IL_0026:  ldarg.1
    IL_0027:  stfld      object Game.ScannedItemData::Container
    IL_002c:  ldloca.s   V_3
    IL_002e:  ldloc.0
    IL_002f:  stfld      int32 Game.ScannedItemData::IndexInContainer
    IL_0034:  ldloca.s   V_3
    IL_0036:  ldloc.2
    IL_0037:  stfld      int32 Game.ScannedItemData::Value
    IL_003c:  ldloca.s   V_3
    IL_003e:  ldloc.1
    IL_003f:  stfld      int32 Game.ScannedItemData::Count
    IL_0044:  ldloc.3
    IL_0045:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ScannedItemData>::Add(!0)
    IL_004a:  ldloc.0
    IL_004b:  ldc.i4.1
    IL_004c:  add
    IL_004d:  stloc.0
    IL_004e:  ldloc.0
    IL_004f:  ldarg.1
    IL_0050:  callvirt   instance int32 Game.IInventory::get_SlotsCount()
    IL_0055:  blt.s      IL_0004

    IL_0057:  ret
  } // end of method SubsystemItemsScanner::ScanInventory

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ScannedItemData>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ScannedItemData> Game.SubsystemItemsScanner::m_items
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_0011:  ret
  } // end of method SubsystemItemsScanner::.ctor

  .event class [System.Runtime]System.Action`1<valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.ScannedItemData>> ItemsScanned
  {
    .addon instance void Game.SubsystemItemsScanner::add_ItemsScanned(class [System.Runtime]System.Action`1<valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.ScannedItemData>>)
    .removeon instance void Game.SubsystemItemsScanner::remove_ItemsScanned(class [System.Runtime]System.Action`1<valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.ScannedItemData>>)
  } // end of event SubsystemItemsScanner::ItemsScanned
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemItemsScanner::get_UpdateOrder()
  } // end of property SubsystemItemsScanner::UpdateOrder
} // end of class Game.SubsystemItemsScanner