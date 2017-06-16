.class public auto ansi beforefieldinit Game.SubsystemItemsScanner
       extends [EntitySystem]GameEntitySystem.Subsystem
       implements Game.IUpdateable
{
  .field private static literal float32 m_automaticScanPeriod = float32(30.)
  .field private float64 m_nextAutomaticScanTime
  .field private class [System.Collections]System.Collections.Generic.HashSet`1<int32> m_items
  .field private class [System.Runtime]System.Action`1<class [System.Collections]System.Collections.Generic.HashSet`1<int32>> ItemsScanned
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance void 
          add_ItemsScanned(class [System.Runtime]System.Action`1<class [System.Collections]System.Collections.Generic.HashSet`1<int32>> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<class [System.Collections]System.Collections.Generic.HashSet`1<int32>> V_0,
             class [System.Runtime]System.Action`1<class [System.Collections]System.Collections.Generic.HashSet`1<int32>> V_1,
             class [System.Runtime]System.Action`1<class [System.Collections]System.Collections.Generic.HashSet`1<int32>> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<class [System.Collections]System.Collections.Generic.HashSet`1<int32>> Game.SubsystemItemsScanner::ItemsScanned
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Combine(class [System.Runtime]System.Delegate,
                                                                                                        class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`1<class [System.Collections]System.Collections.Generic.HashSet`1<int32>>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<class [System.Collections]System.Collections.Generic.HashSet`1<int32>> Game.SubsystemItemsScanner::ItemsScanned
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<class [System.Collections]System.Collections.Generic.HashSet`1<int32>>>(!!0&,
                                                                                                                                                                                                           !!0,
                                                                                                                                                                                                           !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method SubsystemItemsScanner::add_ItemsScanned

  .method public hidebysig specialname instance void 
          remove_ItemsScanned(class [System.Runtime]System.Action`1<class [System.Collections]System.Collections.Generic.HashSet`1<int32>> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<class [System.Collections]System.Collections.Generic.HashSet`1<int32>> V_0,
             class [System.Runtime]System.Action`1<class [System.Collections]System.Collections.Generic.HashSet`1<int32>> V_1,
             class [System.Runtime]System.Action`1<class [System.Collections]System.Collections.Generic.HashSet`1<int32>> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<class [System.Collections]System.Collections.Generic.HashSet`1<int32>> Game.SubsystemItemsScanner::ItemsScanned
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Remove(class [System.Runtime]System.Delegate,
                                                                                                       class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`1<class [System.Collections]System.Collections.Generic.HashSet`1<int32>>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<class [System.Collections]System.Collections.Generic.HashSet`1<int32>> Game.SubsystemItemsScanner::ItemsScanned
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<class [System.Collections]System.Collections.Generic.HashSet`1<int32>>>(!!0&,
                                                                                                                                                                                                           !!0,
                                                                                                                                                                                                           !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method SubsystemItemsScanner::remove_ItemsScanned

  .method public hidebysig instance class [System.Collections]System.Collections.Generic.HashSet`1<int32> 
          ScanItems() cil managed
  {
    // 代码大小       414 (0x19e)
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
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Projectile> V_10,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.Projectile> V_11,
             class Game.Projectile V_12)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.HashSet`1<int32> Game.SubsystemItemsScanner::m_items
    IL_0006:  callvirt   instance void class [System.Collections]System.Collections.Generic.HashSet`1<int32>::Clear()
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
      IL_0034:  ldfld      class [System.Collections]System.Collections.Generic.HashSet`1<int32> Game.SubsystemItemsScanner::m_items
      IL_0039:  call       instance void Game.SubsystemItemsScanner::ScanInventory(class Game.IInventory,
                                                                                   class [System.Collections]System.Collections.Generic.HashSet`1<int32>)
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
        IL_0099:  ldfld      class [System.Collections]System.Collections.Generic.HashSet`1<int32> Game.SubsystemItemsScanner::m_items
        IL_009e:  call       instance void Game.SubsystemItemsScanner::ScanInventory(class Game.IInventory,
                                                                                     class [System.Collections]System.Collections.Generic.HashSet`1<int32>)
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
      IL_00f1:  br.s       IL_0122

      IL_00f3:  ldloca.s   V_7
      IL_00f5:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Pickable>::get_Current()
      IL_00fa:  stloc.s    V_9
      IL_00fc:  ldloc.s    V_9
      IL_00fe:  ldfld      int32 Game.Pickable::Count
      IL_0103:  ldc.i4.0
      IL_0104:  ble.s      IL_0122

      IL_0106:  ldloc.s    V_9
      IL_0108:  ldfld      int32 Game.WorldItem::Value
      IL_010d:  brfalse.s  IL_0122

      IL_010f:  ldarg.0
      IL_0110:  ldfld      class [System.Collections]System.Collections.Generic.HashSet`1<int32> Game.SubsystemItemsScanner::m_items
      IL_0115:  ldloc.s    V_9
      IL_0117:  ldfld      int32 Game.WorldItem::Value
      IL_011c:  callvirt   instance bool class [System.Collections]System.Collections.Generic.HashSet`1<int32>::Add(!0)
      IL_0121:  pop
      IL_0122:  ldloca.s   V_7
      IL_0124:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Pickable>::MoveNext()
      IL_0129:  brtrue.s   IL_00f3

      IL_012b:  leave.s    IL_013b

    }  // end .try
    finally
    {
      IL_012d:  ldloca.s   V_7
      IL_012f:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Pickable>
      IL_0135:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_013a:  endfinally
    }  // end handler
    IL_013b:  ldarg.0
    IL_013c:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0141:  ldc.i4.1
    IL_0142:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemProjectiles>(bool)
    IL_0147:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.Projectile> Game.SubsystemProjectiles::get_Projectiles()
    IL_014c:  stloc.s    V_11
    IL_014e:  ldloca.s   V_11
    IL_0150:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.Projectile>::GetEnumerator()
    IL_0155:  stloc.s    V_10
    .try
    {
      IL_0157:  br.s       IL_017e

      IL_0159:  ldloca.s   V_10
      IL_015b:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Projectile>::get_Current()
      IL_0160:  stloc.s    V_12
      IL_0162:  ldloc.s    V_12
      IL_0164:  ldfld      int32 Game.WorldItem::Value
      IL_0169:  brfalse.s  IL_017e

      IL_016b:  ldarg.0
      IL_016c:  ldfld      class [System.Collections]System.Collections.Generic.HashSet`1<int32> Game.SubsystemItemsScanner::m_items
      IL_0171:  ldloc.s    V_12
      IL_0173:  ldfld      int32 Game.WorldItem::Value
      IL_0178:  callvirt   instance bool class [System.Collections]System.Collections.Generic.HashSet`1<int32>::Add(!0)
      IL_017d:  pop
      IL_017e:  ldloca.s   V_10
      IL_0180:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Projectile>::MoveNext()
      IL_0185:  brtrue.s   IL_0159

      IL_0187:  leave.s    IL_0197

    }  // end .try
    finally
    {
      IL_0189:  ldloca.s   V_10
      IL_018b:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Projectile>
      IL_0191:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0196:  endfinally
    }  // end handler
    IL_0197:  ldarg.0
    IL_0198:  ldfld      class [System.Collections]System.Collections.Generic.HashSet`1<int32> Game.SubsystemItemsScanner::m_items
    IL_019d:  ret
  } // end of method SubsystemItemsScanner::ScanItems

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
    // 代码大小       62 (0x3e)
    .maxstack  3
    .locals init (class [System.Collections]System.Collections.Generic.HashSet`1<int32> V_0)
    IL_0000:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_0005:  ldarg.0
    IL_0006:  ldfld      float64 Game.SubsystemItemsScanner::m_nextAutomaticScanTime
    IL_000b:  blt.un.s   IL_003d

    IL_000d:  ldarg.0
    IL_000e:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_0013:  ldc.r8     30.
    IL_001c:  add
    IL_001d:  stfld      float64 Game.SubsystemItemsScanner::m_nextAutomaticScanTime
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class [System.Runtime]System.Action`1<class [System.Collections]System.Collections.Generic.HashSet`1<int32>> Game.SubsystemItemsScanner::ItemsScanned
    IL_0028:  brfalse.s  IL_003d

    IL_002a:  ldarg.0
    IL_002b:  call       instance class [System.Collections]System.Collections.Generic.HashSet`1<int32> Game.SubsystemItemsScanner::ScanItems()
    IL_0030:  stloc.0
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class [System.Runtime]System.Action`1<class [System.Collections]System.Collections.Generic.HashSet`1<int32>> Game.SubsystemItemsScanner::ItemsScanned
    IL_0037:  ldloc.0
    IL_0038:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Collections]System.Collections.Generic.HashSet`1<int32>>::Invoke(!0)
    IL_003d:  ret
  } // end of method SubsystemItemsScanner::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_0006:  ldc.r8     30.
    IL_000f:  add
    IL_0010:  stfld      float64 Game.SubsystemItemsScanner::m_nextAutomaticScanTime
    IL_0015:  ret
  } // end of method SubsystemItemsScanner::Load

  .method private hidebysig instance void 
          ScanInventory(class Game.IInventory inventory,
                        class [System.Collections]System.Collections.Generic.HashSet`1<int32> items) cil managed
  {
    // 代码大小       47 (0x2f)
    .maxstack  2
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br.s       IL_0025

    IL_0004:  ldarg.1
    IL_0005:  ldloc.0
    IL_0006:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_000b:  ldc.i4.0
    IL_000c:  ble.s      IL_0021

    IL_000e:  ldarg.1
    IL_000f:  ldloc.0
    IL_0010:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_0015:  stloc.1
    IL_0016:  ldloc.1
    IL_0017:  brfalse.s  IL_0021

    IL_0019:  ldarg.2
    IL_001a:  ldloc.1
    IL_001b:  callvirt   instance bool class [System.Collections]System.Collections.Generic.HashSet`1<int32>::Add(!0)
    IL_0020:  pop
    IL_0021:  ldloc.0
    IL_0022:  ldc.i4.1
    IL_0023:  add
    IL_0024:  stloc.0
    IL_0025:  ldloc.0
    IL_0026:  ldarg.1
    IL_0027:  callvirt   instance int32 Game.IInventory::get_SlotsCount()
    IL_002c:  blt.s      IL_0004

    IL_002e:  ret
  } // end of method SubsystemItemsScanner::ScanInventory

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.HashSet`1<int32>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.HashSet`1<int32> Game.SubsystemItemsScanner::m_items
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_0011:  ret
  } // end of method SubsystemItemsScanner::.ctor

  .event class [System.Runtime]System.Action`1<class [System.Collections]System.Collections.Generic.HashSet`1<int32>> ItemsScanned
  {
    .addon instance void Game.SubsystemItemsScanner::add_ItemsScanned(class [System.Runtime]System.Action`1<class [System.Collections]System.Collections.Generic.HashSet`1<int32>>)
    .removeon instance void Game.SubsystemItemsScanner::remove_ItemsScanned(class [System.Runtime]System.Action`1<class [System.Collections]System.Collections.Generic.HashSet`1<int32>>)
  } // end of event SubsystemItemsScanner::ItemsScanned
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemItemsScanner::get_UpdateOrder()
  } // end of property SubsystemItemsScanner::UpdateOrder
} // end of class Game.SubsystemItemsScanner