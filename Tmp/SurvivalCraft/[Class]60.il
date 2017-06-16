.class public abstract auto ansi beforefieldinit Game.ComponentInventoryBase
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IInventory
{
  .class auto ansi nested family beforefieldinit Slot
         extends [System.Runtime]System.Object
  {
    .field public int32 Value
    .field public int32 Count
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method Slot::.ctor

  } // end of class Slot

  .field private class Game.SubsystemInventory m_subsystemInventory
  .field family class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> m_slots
  .field private class Game.Random m_random
  .method public hidebysig static int32  FindAcquireSlotForItem(class Game.IInventory inventory,
                                                                int32 'value') cil managed
  {
    // 代码大小       97 (0x61)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br.s       IL_002f

    IL_0004:  ldarg.0
    IL_0005:  ldloc.0
    IL_0006:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_000b:  ldc.i4.0
    IL_000c:  ble.s      IL_002b

    IL_000e:  ldarg.0
    IL_000f:  ldloc.0
    IL_0010:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_0015:  ldarg.1
    IL_0016:  bne.un.s   IL_002b

    IL_0018:  ldarg.0
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_001f:  ldarg.0
    IL_0020:  ldloc.0
    IL_0021:  ldarg.1
    IL_0022:  callvirt   instance int32 Game.IInventory::GetSlotCapacity(int32,
                                                                         int32)
    IL_0027:  bge.s      IL_002b

    IL_0029:  ldloc.0
    IL_002a:  ret

    IL_002b:  ldloc.0
    IL_002c:  ldc.i4.1
    IL_002d:  add
    IL_002e:  stloc.0
    IL_002f:  ldloc.0
    IL_0030:  ldarg.0
    IL_0031:  callvirt   instance int32 Game.IInventory::get_SlotsCount()
    IL_0036:  blt.s      IL_0004

    IL_0038:  ldc.i4.0
    IL_0039:  stloc.1
    IL_003a:  br.s       IL_0056

    IL_003c:  ldarg.0
    IL_003d:  ldloc.1
    IL_003e:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_0043:  brtrue.s   IL_0052

    IL_0045:  ldarg.0
    IL_0046:  ldloc.1
    IL_0047:  ldarg.1
    IL_0048:  callvirt   instance int32 Game.IInventory::GetSlotCapacity(int32,
                                                                         int32)
    IL_004d:  ldc.i4.0
    IL_004e:  ble.s      IL_0052

    IL_0050:  ldloc.1
    IL_0051:  ret

    IL_0052:  ldloc.1
    IL_0053:  ldc.i4.1
    IL_0054:  add
    IL_0055:  stloc.1
    IL_0056:  ldloc.1
    IL_0057:  ldarg.0
    IL_0058:  callvirt   instance int32 Game.IInventory::get_SlotsCount()
    IL_005d:  blt.s      IL_003c

    IL_005f:  ldc.i4.m1
    IL_0060:  ret
  } // end of method ComponentInventoryBase::FindAcquireSlotForItem

  .method public hidebysig static int32  AcquireItems(class Game.IInventory inventory,
                                                      int32 'value',
                                                      int32 count) cil managed
  {
    // 代码大小       34 (0x22)
    .maxstack  4
    .locals init (int32 V_0)
    IL_0000:  br.s       IL_001c

    IL_0002:  ldarg.0
    IL_0003:  ldarg.1
    IL_0004:  call       int32 Game.ComponentInventoryBase::FindAcquireSlotForItem(class Game.IInventory,
                                                                                   int32)
    IL_0009:  stloc.0
    IL_000a:  ldloc.0
    IL_000b:  ldc.i4.0
    IL_000c:  blt.s      IL_0020

    IL_000e:  ldarg.0
    IL_000f:  ldloc.0
    IL_0010:  ldarg.1
    IL_0011:  ldc.i4.1
    IL_0012:  callvirt   instance void Game.IInventory::AddSlotItems(int32,
                                                                     int32,
                                                                     int32)
    IL_0017:  ldarg.2
    IL_0018:  ldc.i4.1
    IL_0019:  sub
    IL_001a:  starg.s    count
    IL_001c:  ldarg.2
    IL_001d:  ldc.i4.0
    IL_001e:  bgt.s      IL_0002

    IL_0020:  ldarg.2
    IL_0021:  ret
  } // end of method ComponentInventoryBase::AcquireItems

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       170 (0xaa)
    .maxstack  4
    .locals init (int32 V_0,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_1,
             int32 V_2,
             int32 V_3,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemInventory>(bool)
    IL_000d:  stfld      class Game.SubsystemInventory Game.ComponentInventoryBase::m_subsystemInventory
    IL_0012:  ldarg.1
    IL_0013:  ldstr      "SlotsCount"
    IL_0018:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<int32>(string)
    IL_001d:  stloc.0
    IL_001e:  ldc.i4.0
    IL_001f:  stloc.2
    IL_0020:  br.s       IL_0036

    IL_0022:  ldarg.0
    IL_0023:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_0028:  newobj     instance void Game.ComponentInventoryBase/Slot::.ctor()
    IL_002d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::Add(!0)
    IL_0032:  ldloc.2
    IL_0033:  ldc.i4.1
    IL_0034:  add
    IL_0035:  stloc.2
    IL_0036:  ldloc.2
    IL_0037:  ldloc.0
    IL_0038:  blt.s      IL_0022

    IL_003a:  ldarg.1
    IL_003b:  ldstr      "Slots"
    IL_0040:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string)
    IL_0045:  stloc.1
    IL_0046:  ldc.i4.0
    IL_0047:  stloc.3
    IL_0048:  br.s       IL_009b

    IL_004a:  ldloc.1
    IL_004b:  ldstr      "Slot"
    IL_0050:  ldloca.s   V_3
    IL_0052:  call       instance string [System.Runtime]System.Int32::ToString()
    IL_0057:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_005c:  ldnull
    IL_005d:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                         !!0)
    IL_0062:  stloc.s    V_4
    IL_0064:  ldloc.s    V_4
    IL_0066:  brfalse.s  IL_0097

    IL_0068:  ldarg.0
    IL_0069:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_006e:  ldloc.3
    IL_006f:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Item(int32)
    IL_0074:  dup
    IL_0075:  ldloc.s    V_4
    IL_0077:  ldstr      "Contents"
    IL_007c:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<int32>(string)
    IL_0081:  stfld      int32 Game.ComponentInventoryBase/Slot::Value
    IL_0086:  ldloc.s    V_4
    IL_0088:  ldstr      "Count"
    IL_008d:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<int32>(string)
    IL_0092:  stfld      int32 Game.ComponentInventoryBase/Slot::Count
    IL_0097:  ldloc.3
    IL_0098:  ldc.i4.1
    IL_0099:  add
    IL_009a:  stloc.3
    IL_009b:  ldloc.3
    IL_009c:  ldarg.0
    IL_009d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_00a2:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Count()
    IL_00a7:  blt.s      IL_004a

    IL_00a9:  ret
  } // end of method ComponentInventoryBase::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.EntityToIdMap entityToIdMap) cil managed
  {
    // 代码大小       127 (0x7f)
    .maxstack  3
    .locals init (class [EntitySystem]TemplatesDatabase.ValuesDictionary V_0,
             int32 V_1,
             class Game.ComponentInventoryBase/Slot V_2,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_3)
    IL_0000:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.1
    IL_0007:  ldstr      "Slots"
    IL_000c:  ldloc.0
    IL_000d:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                          !!0)
    IL_0012:  ldc.i4.0
    IL_0013:  stloc.1
    IL_0014:  br.s       IL_0070

    IL_0016:  ldarg.0
    IL_0017:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_001c:  ldloc.1
    IL_001d:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Item(int32)
    IL_0022:  stloc.2
    IL_0023:  ldloc.2
    IL_0024:  ldfld      int32 Game.ComponentInventoryBase/Slot::Count
    IL_0029:  ldc.i4.0
    IL_002a:  ble.s      IL_006c

    IL_002c:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
    IL_0031:  stloc.3
    IL_0032:  ldloc.0
    IL_0033:  ldstr      "Slot"
    IL_0038:  ldloca.s   V_1
    IL_003a:  call       instance string [System.Runtime]System.Int32::ToString()
    IL_003f:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0044:  ldloc.3
    IL_0045:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                          !!0)
    IL_004a:  ldloc.3
    IL_004b:  ldstr      "Contents"
    IL_0050:  ldloc.2
    IL_0051:  ldfld      int32 Game.ComponentInventoryBase/Slot::Value
    IL_0056:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<int32>(string,
                                                                                                         !!0)
    IL_005b:  ldloc.3
    IL_005c:  ldstr      "Count"
    IL_0061:  ldloc.2
    IL_0062:  ldfld      int32 Game.ComponentInventoryBase/Slot::Count
    IL_0067:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<int32>(string,
                                                                                                         !!0)
    IL_006c:  ldloc.1
    IL_006d:  ldc.i4.1
    IL_006e:  add
    IL_006f:  stloc.1
    IL_0070:  ldloc.1
    IL_0071:  ldarg.0
    IL_0072:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_0077:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Count()
    IL_007c:  blt.s      IL_0016

    IL_007e:  ret
  } // end of method ComponentInventoryBase::Save

  .method public hidebysig newslot specialname virtual final 
          instance class Game.SubsystemInventory 
          get_SubsystemInventory() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemInventory Game.ComponentInventoryBase::m_subsystemInventory
    IL_0006:  ret
  } // end of method ComponentInventoryBase::get_SubsystemInventory

  .method public hidebysig newslot specialname virtual 
          instance int32  get_SlotsCount() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_0006:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Count()
    IL_000b:  ret
  } // end of method ComponentInventoryBase::get_SlotsCount

  .method public hidebysig newslot specialname virtual 
          instance int32  get_ActiveSlotIndex() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.m1
    IL_0001:  ret
  } // end of method ComponentInventoryBase::get_ActiveSlotIndex

  .method public hidebysig newslot specialname virtual 
          instance void  set_ActiveSlotIndex(int32 'value') cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method ComponentInventoryBase::set_ActiveSlotIndex

  .method public hidebysig newslot virtual 
          instance int32  GetSlotValue(int32 slotIndex) cil managed
  {
    // 代码大小       60 (0x3c)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.0
    IL_0002:  blt.s      IL_003a

    IL_0004:  ldarg.1
    IL_0005:  ldarg.0
    IL_0006:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_000b:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Count()
    IL_0010:  bge.s      IL_003a

    IL_0012:  ldarg.0
    IL_0013:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_0018:  ldarg.1
    IL_0019:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Item(int32)
    IL_001e:  ldfld      int32 Game.ComponentInventoryBase/Slot::Count
    IL_0023:  ldc.i4.0
    IL_0024:  bgt.s      IL_0028

    IL_0026:  ldc.i4.0
    IL_0027:  ret

    IL_0028:  ldarg.0
    IL_0029:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_002e:  ldarg.1
    IL_002f:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Item(int32)
    IL_0034:  ldfld      int32 Game.ComponentInventoryBase/Slot::Value
    IL_0039:  ret

    IL_003a:  ldc.i4.0
    IL_003b:  ret
  } // end of method ComponentInventoryBase::GetSlotValue

  .method public hidebysig newslot virtual 
          instance int32  GetSlotCount(int32 slotIndex) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.0
    IL_0002:  blt.s      IL_0024

    IL_0004:  ldarg.1
    IL_0005:  ldarg.0
    IL_0006:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_000b:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Count()
    IL_0010:  bge.s      IL_0024

    IL_0012:  ldarg.0
    IL_0013:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_0018:  ldarg.1
    IL_0019:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Item(int32)
    IL_001e:  ldfld      int32 Game.ComponentInventoryBase/Slot::Count
    IL_0023:  ret

    IL_0024:  ldc.i4.0
    IL_0025:  ret
  } // end of method ComponentInventoryBase::GetSlotCount

  .method public hidebysig newslot virtual 
          instance int32  GetSlotCapacity(int32 slotIndex,
                                          int32 'value') cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.0
    IL_0002:  blt.s      IL_0024

    IL_0004:  ldarg.1
    IL_0005:  ldarg.0
    IL_0006:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_000b:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Count()
    IL_0010:  bge.s      IL_0024

    IL_0012:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0017:  ldarg.2
    IL_0018:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_001d:  ldelem.ref
    IL_001e:  ldfld      int32 Game.Block::MaxStacking
    IL_0023:  ret

    IL_0024:  ldc.i4.0
    IL_0025:  ret
  } // end of method ComponentInventoryBase::GetSlotCapacity

  .method public hidebysig newslot virtual 
          instance int32  GetSlotProcessCapacity(int32 slotIndex,
                                                 int32 'value') cil managed
  {
    // 代码大小       79 (0x4f)
    .maxstack  4
    .locals init (int32 V_0,
             class Game.SubsystemBlockBehavior[] V_1,
             int32 V_2,
             int32 V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance int32 Game.ComponentInventoryBase::GetSlotCount(int32)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  callvirt   instance int32 Game.ComponentInventoryBase::GetSlotValue(int32)
    IL_000e:  stloc.0
    IL_000f:  ldc.i4.0
    IL_0010:  ble.s      IL_004d

    IL_0012:  ldloc.0
    IL_0013:  brfalse.s  IL_004d

    IL_0015:  ldarg.0
    IL_0016:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_001b:  ldc.i4.1
    IL_001c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBlockBehaviors>(bool)
    IL_0021:  ldloc.0
    IL_0022:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0027:  callvirt   instance class Game.SubsystemBlockBehavior[] Game.SubsystemBlockBehaviors::GetBlockBehaviors(int32)
    IL_002c:  stloc.1
    IL_002d:  ldc.i4.0
    IL_002e:  stloc.2
    IL_002f:  br.s       IL_0047

    IL_0031:  ldloc.1
    IL_0032:  ldloc.2
    IL_0033:  ldelem.ref
    IL_0034:  ldarg.0
    IL_0035:  ldarg.1
    IL_0036:  ldarg.2
    IL_0037:  callvirt   instance int32 Game.SubsystemBlockBehavior::GetProcessInventoryItemCapacity(class Game.IInventory,
                                                                                                     int32,
                                                                                                     int32)
    IL_003c:  stloc.3
    IL_003d:  ldloc.3
    IL_003e:  ldc.i4.0
    IL_003f:  ble.s      IL_0043

    IL_0041:  ldloc.3
    IL_0042:  ret

    IL_0043:  ldloc.2
    IL_0044:  ldc.i4.1
    IL_0045:  add
    IL_0046:  stloc.2
    IL_0047:  ldloc.2
    IL_0048:  ldloc.1
    IL_0049:  ldlen
    IL_004a:  conv.i4
    IL_004b:  blt.s      IL_0031

    IL_004d:  ldc.i4.0
    IL_004e:  ret
  } // end of method ComponentInventoryBase::GetSlotProcessCapacity

  .method public hidebysig newslot virtual 
          instance void  AddSlotItems(int32 slotIndex,
                                      int32 'value',
                                      int32 count) cil managed
  {
    // 代码大小       107 (0x6b)
    .maxstack  4
    .locals init (class Game.ComponentInventoryBase/Slot V_0)
    IL_0000:  ldarg.3
    IL_0001:  ldc.i4.0
    IL_0002:  ble.s      IL_006a

    IL_0004:  ldarg.1
    IL_0005:  ldc.i4.0
    IL_0006:  blt.s      IL_006a

    IL_0008:  ldarg.1
    IL_0009:  ldarg.0
    IL_000a:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_000f:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Count()
    IL_0014:  bge.s      IL_006a

    IL_0016:  ldarg.0
    IL_0017:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_001c:  ldarg.1
    IL_001d:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Item(int32)
    IL_0022:  stloc.0
    IL_0023:  ldarg.0
    IL_0024:  ldarg.1
    IL_0025:  callvirt   instance int32 Game.ComponentInventoryBase::GetSlotCount(int32)
    IL_002a:  brfalse.s  IL_0036

    IL_002c:  ldarg.0
    IL_002d:  ldarg.1
    IL_002e:  callvirt   instance int32 Game.ComponentInventoryBase::GetSlotValue(int32)
    IL_0033:  ldarg.2
    IL_0034:  bne.un.s   IL_005f

    IL_0036:  ldarg.0
    IL_0037:  ldarg.1
    IL_0038:  callvirt   instance int32 Game.ComponentInventoryBase::GetSlotCount(int32)
    IL_003d:  ldarg.3
    IL_003e:  add
    IL_003f:  ldarg.0
    IL_0040:  ldarg.1
    IL_0041:  ldarg.2
    IL_0042:  callvirt   instance int32 Game.ComponentInventoryBase::GetSlotCapacity(int32,
                                                                                     int32)
    IL_0047:  bgt.s      IL_005f

    IL_0049:  ldloc.0
    IL_004a:  ldarg.2
    IL_004b:  stfld      int32 Game.ComponentInventoryBase/Slot::Value
    IL_0050:  ldloc.0
    IL_0051:  dup
    IL_0052:  ldfld      int32 Game.ComponentInventoryBase/Slot::Count
    IL_0057:  ldarg.3
    IL_0058:  add
    IL_0059:  stfld      int32 Game.ComponentInventoryBase/Slot::Count
    IL_005e:  ret

    IL_005f:  ldstr      "Cannot add slot items."
    IL_0064:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0069:  throw

    IL_006a:  ret
  } // end of method ComponentInventoryBase::AddSlotItems

  .method public hidebysig newslot virtual 
          instance void  ProcessSlotItems(int32 slotIndex,
                                          int32 'value',
                                          int32 count,
                                          int32 processCount,
                                          [out] int32& processedValue,
                                          [out] int32& processedCount) cil managed
  {
    // 代码大小       112 (0x70)
    .maxstack  8
    .locals init (int32 V_0,
             class Game.SubsystemBlockBehavior[] V_1,
             int32 V_2,
             class Game.SubsystemBlockBehavior V_3,
             int32 V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance int32 Game.ComponentInventoryBase::GetSlotCount(int32)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  callvirt   instance int32 Game.ComponentInventoryBase::GetSlotValue(int32)
    IL_000e:  stloc.0
    IL_000f:  ldc.i4.0
    IL_0010:  ble.s      IL_0067

    IL_0012:  ldloc.0
    IL_0013:  brfalse.s  IL_0067

    IL_0015:  ldarg.0
    IL_0016:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_001b:  ldc.i4.1
    IL_001c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBlockBehaviors>(bool)
    IL_0021:  ldloc.0
    IL_0022:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0027:  callvirt   instance class Game.SubsystemBlockBehavior[] Game.SubsystemBlockBehaviors::GetBlockBehaviors(int32)
    IL_002c:  stloc.1
    IL_002d:  ldc.i4.0
    IL_002e:  stloc.2
    IL_002f:  br.s       IL_0061

    IL_0031:  ldloc.1
    IL_0032:  ldloc.2
    IL_0033:  ldelem.ref
    IL_0034:  stloc.3
    IL_0035:  ldloc.3
    IL_0036:  ldarg.0
    IL_0037:  ldarg.1
    IL_0038:  ldarg.2
    IL_0039:  callvirt   instance int32 Game.SubsystemBlockBehavior::GetProcessInventoryItemCapacity(class Game.IInventory,
                                                                                                     int32,
                                                                                                     int32)
    IL_003e:  stloc.s    V_4
    IL_0040:  ldloc.s    V_4
    IL_0042:  ldc.i4.0
    IL_0043:  ble.s      IL_005d

    IL_0045:  ldloc.3
    IL_0046:  ldarg.0
    IL_0047:  ldarg.1
    IL_0048:  ldarg.2
    IL_0049:  ldarg.3
    IL_004a:  ldloc.s    V_4
    IL_004c:  ldarg.s    processCount
    IL_004e:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0053:  ldarg.s    processedValue
    IL_0055:  ldarg.s    processedCount
    IL_0057:  callvirt   instance void Game.SubsystemBlockBehavior::ProcessInventoryItem(class Game.IInventory,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32&,
                                                                                         int32&)
    IL_005c:  ret

    IL_005d:  ldloc.2
    IL_005e:  ldc.i4.1
    IL_005f:  add
    IL_0060:  stloc.2
    IL_0061:  ldloc.2
    IL_0062:  ldloc.1
    IL_0063:  ldlen
    IL_0064:  conv.i4
    IL_0065:  blt.s      IL_0031

    IL_0067:  ldarg.s    processedValue
    IL_0069:  ldarg.2
    IL_006a:  stind.i4
    IL_006b:  ldarg.s    processedCount
    IL_006d:  ldarg.3
    IL_006e:  stind.i4
    IL_006f:  ret
  } // end of method ComponentInventoryBase::ProcessSlotItems

  .method public hidebysig newslot virtual 
          instance int32  RemoveSlotItems(int32 slotIndex,
                                          int32 count) cil managed
  {
    // 代码大小       62 (0x3e)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.0
    IL_0002:  blt.s      IL_003c

    IL_0004:  ldarg.1
    IL_0005:  ldarg.0
    IL_0006:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_000b:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Count()
    IL_0010:  bge.s      IL_003c

    IL_0012:  ldarg.0
    IL_0013:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_0018:  ldarg.1
    IL_0019:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::get_Item(int32)
    IL_001e:  ldarg.2
    IL_001f:  ldarg.0
    IL_0020:  ldarg.1
    IL_0021:  callvirt   instance int32 Game.ComponentInventoryBase::GetSlotCount(int32)
    IL_0026:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_002b:  starg.s    count
    IL_002d:  dup
    IL_002e:  ldfld      int32 Game.ComponentInventoryBase/Slot::Count
    IL_0033:  ldarg.2
    IL_0034:  sub
    IL_0035:  stfld      int32 Game.ComponentInventoryBase/Slot::Count
    IL_003a:  ldarg.2
    IL_003b:  ret

    IL_003c:  ldc.i4.0
    IL_003d:  ret
  } // end of method ComponentInventoryBase::RemoveSlotItems

  .method public hidebysig newslot virtual final 
          instance void  DropAllItems(valuetype [Engine]Engine.Vector3 position) cil managed
  {
    // 代码大小       199 (0xc7)
    .maxstack  6
    .locals init (class Game.SubsystemPickables V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_6)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0006:  ldc.i4.1
    IL_0007:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPickables>(bool)
    IL_000c:  stloc.0
    IL_000d:  ldc.i4.0
    IL_000e:  stloc.1
    IL_000f:  br         IL_00ba

    IL_0014:  ldarg.0
    IL_0015:  ldloc.1
    IL_0016:  callvirt   instance int32 Game.ComponentInventoryBase::GetSlotCount(int32)
    IL_001b:  stloc.2
    IL_001c:  ldloc.2
    IL_001d:  ldc.i4.0
    IL_001e:  ble        IL_00b6

    IL_0023:  ldarg.0
    IL_0024:  ldloc.1
    IL_0025:  callvirt   instance int32 Game.ComponentInventoryBase::GetSlotValue(int32)
    IL_002a:  stloc.3
    IL_002b:  ldarg.0
    IL_002c:  ldloc.1
    IL_002d:  ldloc.2
    IL_002e:  callvirt   instance int32 Game.ComponentInventoryBase::RemoveSlotItems(int32,
                                                                                     int32)
    IL_0033:  stloc.s    V_4
    IL_0035:  ldarg.0
    IL_0036:  ldfld      class Game.Random Game.ComponentInventoryBase::m_random
    IL_003b:  ldc.r4     5.
    IL_0040:  ldc.r4     10.
    IL_0045:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_004a:  ldarg.0
    IL_004b:  ldfld      class Game.Random Game.ComponentInventoryBase::m_random
    IL_0050:  ldc.r4     -1.
    IL_0055:  ldc.r4     1.
    IL_005a:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_005f:  ldarg.0
    IL_0060:  ldfld      class Game.Random Game.ComponentInventoryBase::m_random
    IL_0065:  ldc.r4     1.
    IL_006a:  ldc.r4     2.
    IL_006f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0074:  ldarg.0
    IL_0075:  ldfld      class Game.Random Game.ComponentInventoryBase::m_random
    IL_007a:  ldc.r4     -1.
    IL_007f:  ldc.r4     1.
    IL_0084:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0089:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_008e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0093:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0098:  stloc.s    V_5
    IL_009a:  ldloc.0
    IL_009b:  ldloc.3
    IL_009c:  ldloc.s    V_4
    IL_009e:  ldarg.1
    IL_009f:  ldloc.s    V_5
    IL_00a1:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_00a6:  ldloca.s   V_6
    IL_00a8:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_00ae:  ldloc.s    V_6
    IL_00b0:  callvirt   instance class Game.Pickable Game.SubsystemPickables::AddPickable(int32,
                                                                                           int32,
                                                                                           valuetype [Engine]Engine.Vector3,
                                                                                           valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                           valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_00b5:  pop
    IL_00b6:  ldloc.1
    IL_00b7:  ldc.i4.1
    IL_00b8:  add
    IL_00b9:  stloc.1
    IL_00ba:  ldloc.1
    IL_00bb:  ldarg.0
    IL_00bc:  callvirt   instance int32 Game.ComponentInventoryBase::get_SlotsCount()
    IL_00c1:  blt        IL_0014

    IL_00c6:  ret
  } // end of method ComponentInventoryBase::DropAllItems

  .method family hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentInventoryBase/Slot> Game.ComponentInventoryBase::m_slots
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.Random::.ctor()
    IL_0011:  stfld      class Game.Random Game.ComponentInventoryBase::m_random
    IL_0016:  ldarg.0
    IL_0017:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_001c:  ret
  } // end of method ComponentInventoryBase::.ctor

  .property instance class Game.SubsystemInventory
          SubsystemInventory()
  {
    .get instance class Game.SubsystemInventory Game.ComponentInventoryBase::get_SubsystemInventory()
  } // end of property ComponentInventoryBase::SubsystemInventory
  .property instance int32 SlotsCount()
  {
    .get instance int32 Game.ComponentInventoryBase::get_SlotsCount()
  } // end of property ComponentInventoryBase::SlotsCount
  .property instance int32 ActiveSlotIndex()
  {
    .get instance int32 Game.ComponentInventoryBase::get_ActiveSlotIndex()
    .set instance void Game.ComponentInventoryBase::set_ActiveSlotIndex(int32)
  } // end of property ComponentInventoryBase::ActiveSlotIndex
} // end of class Game.ComponentInventoryBase