.class public auto ansi beforefieldinit Game.ComponentFurnitureInventory
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IInventory
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.ComponentFurnitureInventory/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<class Game.FurnitureDesign,int32> '<>9__11_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.ComponentFurnitureInventory/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.ComponentFurnitureInventory/'<>c' Game.ComponentFurnitureInventory/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance int32 
            '<FillSlots>b__11_0'(class Game.FurnitureDesign f) cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance int32 Game.FurnitureDesign::get_Index()
      IL_0006:  ret
    } // end of method '<>c'::'<FillSlots>b__11_0'

  } // end of class '<>c'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass13_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public string furnitureSetName
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass13_0'::.ctor

    .method assembly hidebysig instance bool 
            '<Load>b__0'(class Game.FurnitureSet f) cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      string Game.FurnitureSet::Name
      IL_0006:  ldarg.0
      IL_0007:  ldfld      string Game.ComponentFurnitureInventory/'<>c__DisplayClass13_0'::furnitureSetName
      IL_000c:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0011:  ret
    } // end of method '<>c__DisplayClass13_0'::'<Load>b__0'

  } // end of class '<>c__DisplayClass13_0'

  .field private class Game.SubsystemFurnitureBlockBehavior m_subsystemFurnitureBlockBehavior
  .field private class [System.Collections]System.Collections.Generic.List`1<int32> m_slots
  .field private static literal int32 m_largeNumber = int32(0x0000270F)
  .field private int32 '<PageIndex>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.FurnitureSet '<FurnitureSet>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance int32 
          get_PageIndex() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.ComponentFurnitureInventory::'<PageIndex>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentFurnitureInventory::get_PageIndex

  .method public hidebysig specialname instance void 
          set_PageIndex(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 Game.ComponentFurnitureInventory::'<PageIndex>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentFurnitureInventory::set_PageIndex

  .method public hidebysig specialname instance class Game.FurnitureSet 
          get_FurnitureSet() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.FurnitureSet Game.ComponentFurnitureInventory::'<FurnitureSet>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentFurnitureInventory::get_FurnitureSet

  .method public hidebysig specialname instance void 
          set_FurnitureSet(class Game.FurnitureSet 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.FurnitureSet Game.ComponentFurnitureInventory::'<FurnitureSet>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentFurnitureInventory::set_FurnitureSet

  .method public hidebysig instance void 
          FillSlots() cil managed
  {
    // 代码大小       162 (0xa2)
    .maxstack  4
    .locals init (int32 V_0,
             class Game.FurnitureDesign V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemFurnitureBlockBehavior Game.ComponentFurnitureInventory::m_subsystemFurnitureBlockBehavior
    IL_0006:  callvirt   instance void Game.SubsystemFurnitureBlockBehavior::GarbageCollectDesigns()
    IL_000b:  ldarg.0
    IL_000c:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.ComponentFurnitureInventory::m_slots
    IL_0011:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Clear()
    IL_0016:  ldc.i4.0
    IL_0017:  stloc.0
    IL_0018:  br.s       IL_0096

    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.SubsystemFurnitureBlockBehavior Game.ComponentFurnitureInventory::m_subsystemFurnitureBlockBehavior
    IL_0020:  ldloc.0
    IL_0021:  callvirt   instance class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior::GetDesign(int32)
    IL_0026:  stloc.1
    IL_0027:  ldloc.1
    IL_0028:  brfalse.s  IL_0092

    IL_002a:  ldloc.1
    IL_002b:  callvirt   instance class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> Game.FurnitureDesign::ListChain()
    IL_0030:  ldsfld     class [System.Runtime]System.Func`2<class Game.FurnitureDesign,int32> Game.ComponentFurnitureInventory/'<>c'::'<>9__11_0'
    IL_0035:  dup
    IL_0036:  brtrue.s   IL_004f

    IL_0038:  pop
    IL_0039:  ldsfld     class Game.ComponentFurnitureInventory/'<>c' Game.ComponentFurnitureInventory/'<>c'::'<>9'
    IL_003e:  ldftn      instance int32 Game.ComponentFurnitureInventory/'<>c'::'<FillSlots>b__11_0'(class Game.FurnitureDesign)
    IL_0044:  newobj     instance void class [System.Runtime]System.Func`2<class Game.FurnitureDesign,int32>::.ctor(object,
                                                                                                                    native int)
    IL_0049:  dup
    IL_004a:  stsfld     class [System.Runtime]System.Func`2<class Game.FurnitureDesign,int32> Game.ComponentFurnitureInventory/'<>c'::'<>9__11_0'
    IL_004f:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!1> [System.Linq]System.Linq.Enumerable::Select<class Game.FurnitureDesign,int32>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                           class [System.Runtime]System.Func`2<!!0,!!1>)
    IL_0054:  call       int32 [System.Linq]System.Linq.Enumerable::Min(class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>)
    IL_0059:  stloc.2
    IL_005a:  ldloc.1
    IL_005b:  callvirt   instance int32 Game.FurnitureDesign::get_Index()
    IL_0060:  ldloc.2
    IL_0061:  bne.un.s   IL_0092

    IL_0063:  ldc.i4.0
    IL_0064:  ldloc.0
    IL_0065:  ldloc.1
    IL_0066:  callvirt   instance int32 Game.FurnitureDesign::get_ShadowStrengthFactor()
    IL_006b:  ldloc.1
    IL_006c:  callvirt   instance bool Game.FurnitureDesign::get_IsLightEmitter()
    IL_0071:  call       int32 Game.FurnitureBlock::SetDesignIndex(int32,
                                                                   int32,
                                                                   int32,
                                                                   bool)
    IL_0076:  stloc.3
    IL_0077:  ldc.i4     0xe3
    IL_007c:  ldc.i4.0
    IL_007d:  ldloc.3
    IL_007e:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0083:  stloc.s    V_4
    IL_0085:  ldarg.0
    IL_0086:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.ComponentFurnitureInventory::m_slots
    IL_008b:  ldloc.s    V_4
    IL_008d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_0092:  ldloc.0
    IL_0093:  ldc.i4.1
    IL_0094:  add
    IL_0095:  stloc.0
    IL_0096:  ldloc.0
    IL_0097:  ldc.i4     0x400
    IL_009c:  blt        IL_001a

    IL_00a1:  ret
  } // end of method ComponentFurnitureInventory::FillSlots

  .method public hidebysig instance void 
          ClearSlots() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.ComponentFurnitureInventory::m_slots
    IL_0006:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Clear()
    IL_000b:  ret
  } // end of method ComponentFurnitureInventory::ClearSlots

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       81 (0x51)
    .maxstack  4
    .locals init (class Game.ComponentFurnitureInventory/'<>c__DisplayClass13_0' V_0)
    IL_0000:  newobj     instance void Game.ComponentFurnitureInventory/'<>c__DisplayClass13_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldarg.0
    IL_0008:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_000d:  ldc.i4.1
    IL_000e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemFurnitureBlockBehavior>(bool)
    IL_0013:  stfld      class Game.SubsystemFurnitureBlockBehavior Game.ComponentFurnitureInventory::m_subsystemFurnitureBlockBehavior
    IL_0018:  ldloc.0
    IL_0019:  ldarg.1
    IL_001a:  ldstr      "FurnitureSet"
    IL_001f:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_0024:  stfld      string Game.ComponentFurnitureInventory/'<>c__DisplayClass13_0'::furnitureSetName
    IL_0029:  ldarg.0
    IL_002a:  ldarg.0
    IL_002b:  ldfld      class Game.SubsystemFurnitureBlockBehavior Game.ComponentFurnitureInventory::m_subsystemFurnitureBlockBehavior
    IL_0030:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.FurnitureSet> Game.SubsystemFurnitureBlockBehavior::get_FurnitureSets()
    IL_0035:  box        valuetype [Engine]Engine.ReadOnlyList`1<class Game.FurnitureSet>
    IL_003a:  ldloc.0
    IL_003b:  ldftn      instance bool Game.ComponentFurnitureInventory/'<>c__DisplayClass13_0'::'<Load>b__0'(class Game.FurnitureSet)
    IL_0041:  newobj     instance void class [System.Runtime]System.Func`2<class Game.FurnitureSet,bool>::.ctor(object,
                                                                                                                native int)
    IL_0046:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class Game.FurnitureSet>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                          class [System.Runtime]System.Func`2<!!0,bool>)
    IL_004b:  call       instance void Game.ComponentFurnitureInventory::set_FurnitureSet(class Game.FurnitureSet)
    IL_0050:  ret
  } // end of method ComponentFurnitureInventory::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.EntityToIdMap entityToIdMap) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "FurnitureSet"
    IL_0006:  ldarg.0
    IL_0007:  call       instance class Game.FurnitureSet Game.ComponentFurnitureInventory::get_FurnitureSet()
    IL_000c:  brtrue.s   IL_0015

    IL_000e:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0013:  br.s       IL_0020

    IL_0015:  ldarg.0
    IL_0016:  call       instance class Game.FurnitureSet Game.ComponentFurnitureInventory::get_FurnitureSet()
    IL_001b:  ldfld      string Game.FurnitureSet::Name
    IL_0020:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                          !!0)
    IL_0025:  ret
  } // end of method ComponentFurnitureInventory::Save

  .method private hidebysig newslot specialname virtual final 
          instance class [EntitySystem]GameEntitySystem.Project 
          Game.IInventory.get_Project() cil managed
  {
    .override Game.IInventory::get_Project
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0006:  ret
  } // end of method ComponentFurnitureInventory::Game.IInventory.get_Project

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_ActiveSlotIndex() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.m1
    IL_0001:  ret
  } // end of method ComponentFurnitureInventory::get_ActiveSlotIndex

  .method public hidebysig newslot specialname virtual final 
          instance void  set_ActiveSlotIndex(int32 'value') cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method ComponentFurnitureInventory::set_ActiveSlotIndex

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_SlotsCount() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.ComponentFurnitureInventory::m_slots
    IL_0006:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Count()
    IL_000b:  ret
  } // end of method ComponentFurnitureInventory::get_SlotsCount

  .method public hidebysig newslot virtual final 
          instance int32  GetSlotValue(int32 slotIndex) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.0
    IL_0002:  blt.s      IL_001f

    IL_0004:  ldarg.1
    IL_0005:  ldarg.0
    IL_0006:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.ComponentFurnitureInventory::m_slots
    IL_000b:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Count()
    IL_0010:  bge.s      IL_001f

    IL_0012:  ldarg.0
    IL_0013:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.ComponentFurnitureInventory::m_slots
    IL_0018:  ldarg.1
    IL_0019:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Item(int32)
    IL_001e:  ret

    IL_001f:  ldc.i4.0
    IL_0020:  ret
  } // end of method ComponentFurnitureInventory::GetSlotValue

  .method public hidebysig newslot virtual final 
          instance int32  GetSlotCount(int32 slotIndex) cil managed
  {
    // 代码大小       42 (0x2a)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.0
    IL_0002:  blt.s      IL_0028

    IL_0004:  ldarg.1
    IL_0005:  ldarg.0
    IL_0006:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.ComponentFurnitureInventory::m_slots
    IL_000b:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Count()
    IL_0010:  bge.s      IL_0028

    IL_0012:  ldarg.0
    IL_0013:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.ComponentFurnitureInventory::m_slots
    IL_0018:  ldarg.1
    IL_0019:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Item(int32)
    IL_001e:  brtrue.s   IL_0022

    IL_0020:  ldc.i4.0
    IL_0021:  ret

    IL_0022:  ldc.i4     0x270f
    IL_0027:  ret

    IL_0028:  ldc.i4.0
    IL_0029:  ret
  } // end of method ComponentFurnitureInventory::GetSlotCount

  .method public hidebysig newslot virtual final 
          instance int32  GetSlotCapacity(int32 slotIndex,
                                          int32 'value') cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldc.i4     0x5f592e1
    IL_0005:  ret
  } // end of method ComponentFurnitureInventory::GetSlotCapacity

  .method public hidebysig newslot virtual final 
          instance int32  GetSlotProcessCapacity(int32 slotIndex,
                                                 int32 'value') cil managed
  {
    // 代码大小       83 (0x53)
    .maxstack  4
    .locals init (int32 V_0,
             class Game.SubsystemBlockBehavior[] V_1,
             int32 V_2,
             int32 V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance int32 Game.ComponentFurnitureInventory::GetSlotCount(int32)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  call       instance int32 Game.ComponentFurnitureInventory::GetSlotValue(int32)
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
    IL_0022:  call       int32 Game.Terrain::ExtractContents(int32)
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

    IL_004d:  ldc.i4     0x270f
    IL_0052:  ret
  } // end of method ComponentFurnitureInventory::GetSlotProcessCapacity

  .method public hidebysig newslot virtual final 
          instance void  AddSlotItems(int32 slotIndex,
                                      int32 'value',
                                      int32 count) cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method ComponentFurnitureInventory::AddSlotItems

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
    IL_0002:  call       instance int32 Game.ComponentFurnitureInventory::GetSlotCount(int32)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  call       instance int32 Game.ComponentFurnitureInventory::GetSlotValue(int32)
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
    IL_0022:  call       int32 Game.Terrain::ExtractContents(int32)
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
    IL_0069:  ldc.i4.0
    IL_006a:  stind.i4
    IL_006b:  ldarg.s    processedCount
    IL_006d:  ldc.i4.0
    IL_006e:  stind.i4
    IL_006f:  ret
  } // end of method ComponentFurnitureInventory::ProcessSlotItems

  .method public hidebysig newslot virtual final 
          instance int32  RemoveSlotItems(int32 slotIndex,
                                          int32 count) cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  ret
  } // end of method ComponentFurnitureInventory::RemoveSlotItems

  .method public hidebysig newslot virtual final 
          instance void  DropAllItems(valuetype [Engine]Engine.Vector3 position) cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method ComponentFurnitureInventory::DropAllItems

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<int32>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.ComponentFurnitureInventory::m_slots
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_0011:  ret
  } // end of method ComponentFurnitureInventory::.ctor

  .property instance int32 PageIndex()
  {
    .get instance int32 Game.ComponentFurnitureInventory::get_PageIndex()
    .set instance void Game.ComponentFurnitureInventory::set_PageIndex(int32)
  } // end of property ComponentFurnitureInventory::PageIndex
  .property instance class Game.FurnitureSet
          FurnitureSet()
  {
    .get instance class Game.FurnitureSet Game.ComponentFurnitureInventory::get_FurnitureSet()
    .set instance void Game.ComponentFurnitureInventory::set_FurnitureSet(class Game.FurnitureSet)
  } // end of property ComponentFurnitureInventory::FurnitureSet
  .property instance class [EntitySystem]GameEntitySystem.Project
          Game.IInventory.Project()
  {
    .get instance class [EntitySystem]GameEntitySystem.Project Game.ComponentFurnitureInventory::Game.IInventory.get_Project()
  } // end of property ComponentFurnitureInventory::Game.IInventory.Project
  .property instance int32 ActiveSlotIndex()
  {
    .get instance int32 Game.ComponentFurnitureInventory::get_ActiveSlotIndex()
    .set instance void Game.ComponentFurnitureInventory::set_ActiveSlotIndex(int32)
  } // end of property ComponentFurnitureInventory::ActiveSlotIndex
  .property instance int32 SlotsCount()
  {
    .get instance int32 Game.ComponentFurnitureInventory::get_SlotsCount()
  } // end of property ComponentFurnitureInventory::SlotsCount
} // end of class Game.ComponentFurnitureInventory