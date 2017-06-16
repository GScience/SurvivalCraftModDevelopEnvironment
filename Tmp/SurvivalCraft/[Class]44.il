.class public auto ansi beforefieldinit Game.ComponentCreativeInventory
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IInventory
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.ComponentCreativeInventory/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<class Game.Block,int32> '<>9__16_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.ComponentCreativeInventory/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.ComponentCreativeInventory/'<>c' Game.ComponentCreativeInventory/'<>c'::'<>9'
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
            '<Load>b__16_0'(class Game.Block b) cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      int32 Game.Block::DisplayOrder
      IL_0006:  ret
    } // end of method '<>c'::'<Load>b__16_0'

  } // end of class '<>c'

  .field private class Game.SubsystemInventory m_subsystemInventory
  .field private class [System.Collections]System.Collections.Generic.List`1<int32> m_slots
  .field private int32 m_activeSlotIndex
  .field private static literal int32 m_largeNumber = int32(0x0000270F)
  .field private int32 '<OpenSlotsCount>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private int32 '<CategoryIndex>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private int32 '<PageIndex>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance int32 
          get_OpenSlotsCount() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.ComponentCreativeInventory::'<OpenSlotsCount>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentCreativeInventory::get_OpenSlotsCount

  .method private hidebysig specialname instance void 
          set_OpenSlotsCount(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 Game.ComponentCreativeInventory::'<OpenSlotsCount>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentCreativeInventory::set_OpenSlotsCount

  .method public hidebysig specialname instance int32 
          get_CategoryIndex() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.ComponentCreativeInventory::'<CategoryIndex>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentCreativeInventory::get_CategoryIndex

  .method public hidebysig specialname instance void 
          set_CategoryIndex(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 Game.ComponentCreativeInventory::'<CategoryIndex>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentCreativeInventory::set_CategoryIndex

  .method public hidebysig specialname instance int32 
          get_PageIndex() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.ComponentCreativeInventory::'<PageIndex>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentCreativeInventory::get_PageIndex

  .method public hidebysig specialname instance void 
          set_PageIndex(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 Game.ComponentCreativeInventory::'<PageIndex>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentCreativeInventory::set_PageIndex

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       337 (0x151)
    .maxstack  4
    .locals init (class [EntitySystem]TemplatesDatabase.ValuesDictionary V_0,
             int32 V_1,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Block> V_2,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> V_3,
             int32 V_4,
             int32 V_5,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_6)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemInventory>(bool)
    IL_000d:  stfld      class Game.SubsystemInventory Game.ComponentCreativeInventory::m_subsystemInventory
    IL_0012:  ldarg.0
    IL_0013:  ldarg.1
    IL_0014:  ldstr      "ActiveSlotIndex"
    IL_0019:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<int32>(string)
    IL_001e:  stfld      int32 Game.ComponentCreativeInventory::m_activeSlotIndex
    IL_0023:  ldarg.0
    IL_0024:  ldarg.1
    IL_0025:  ldstr      "OpenSlotsCount"
    IL_002a:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<int32>(string)
    IL_002f:  call       instance void Game.ComponentCreativeInventory::set_OpenSlotsCount(int32)
    IL_0034:  ldarg.0
    IL_0035:  ldarg.1
    IL_0036:  ldstr      "CategoryIndex"
    IL_003b:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<int32>(string)
    IL_0040:  call       instance void Game.ComponentCreativeInventory::set_CategoryIndex(int32)
    IL_0045:  ldarg.0
    IL_0046:  ldarg.1
    IL_0047:  ldstr      "PageIndex"
    IL_004c:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<int32>(string)
    IL_0051:  call       instance void Game.ComponentCreativeInventory::set_PageIndex(int32)
    IL_0056:  ldc.i4.0
    IL_0057:  stloc.1
    IL_0058:  br.s       IL_006a

    IL_005a:  ldarg.0
    IL_005b:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.ComponentCreativeInventory::m_slots
    IL_0060:  ldc.i4.0
    IL_0061:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_0066:  ldloc.1
    IL_0067:  ldc.i4.1
    IL_0068:  add
    IL_0069:  stloc.1
    IL_006a:  ldloc.1
    IL_006b:  ldarg.0
    IL_006c:  call       instance int32 Game.ComponentCreativeInventory::get_OpenSlotsCount()
    IL_0071:  blt.s      IL_005a

    IL_0073:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0078:  ldsfld     class [System.Runtime]System.Func`2<class Game.Block,int32> Game.ComponentCreativeInventory/'<>c'::'<>9__16_0'
    IL_007d:  dup
    IL_007e:  brtrue.s   IL_0097

    IL_0080:  pop
    IL_0081:  ldsfld     class Game.ComponentCreativeInventory/'<>c' Game.ComponentCreativeInventory/'<>c'::'<>9'
    IL_0086:  ldftn      instance int32 Game.ComponentCreativeInventory/'<>c'::'<Load>b__16_0'(class Game.Block)
    IL_008c:  newobj     instance void class [System.Runtime]System.Func`2<class Game.Block,int32>::.ctor(object,
                                                                                                          native int)
    IL_0091:  dup
    IL_0092:  stsfld     class [System.Runtime]System.Func`2<class Game.Block,int32> Game.ComponentCreativeInventory/'<>c'::'<>9__16_0'
    IL_0097:  call       class [System.Linq]System.Linq.IOrderedEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::OrderBy<class Game.Block,int32>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                       class [System.Runtime]System.Func`2<!!0,!!1>)
    IL_009c:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.Block>::GetEnumerator()
    IL_00a1:  stloc.2
    .try
    {
      IL_00a2:  br.s       IL_00e0

      IL_00a4:  ldloc.2
      IL_00a5:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Block>::get_Current()
      IL_00aa:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> Game.Block::GetCreativeValues()
      IL_00af:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>::GetEnumerator()
      IL_00b4:  stloc.3
      .try
      {
        IL_00b5:  br.s       IL_00cc

        IL_00b7:  ldloc.3
        IL_00b8:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32>::get_Current()
        IL_00bd:  stloc.s    V_4
        IL_00bf:  ldarg.0
        IL_00c0:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.ComponentCreativeInventory::m_slots
        IL_00c5:  ldloc.s    V_4
        IL_00c7:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Add(!0)
        IL_00cc:  ldloc.3
        IL_00cd:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
        IL_00d2:  brtrue.s   IL_00b7

        IL_00d4:  leave.s    IL_00e0

      }  // end .try
      finally
      {
        IL_00d6:  ldloc.3
        IL_00d7:  brfalse.s  IL_00df

        IL_00d9:  ldloc.3
        IL_00da:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_00df:  endfinally
      }  // end handler
      IL_00e0:  ldloc.2
      IL_00e1:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_00e6:  brtrue.s   IL_00a4

      IL_00e8:  leave.s    IL_00f4

    }  // end .try
    finally
    {
      IL_00ea:  ldloc.2
      IL_00eb:  brfalse.s  IL_00f3

      IL_00ed:  ldloc.2
      IL_00ee:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00f3:  endfinally
    }  // end handler
    IL_00f4:  ldarg.1
    IL_00f5:  ldstr      "Slots"
    IL_00fa:  ldnull
    IL_00fb:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                         !!0)
    IL_0100:  stloc.0
    IL_0101:  ldloc.0
    IL_0102:  brfalse.s  IL_0150

    IL_0104:  ldc.i4.0
    IL_0105:  stloc.s    V_5
    IL_0107:  br.s       IL_0146

    IL_0109:  ldloc.0
    IL_010a:  ldstr      "Slot"
    IL_010f:  ldloca.s   V_5
    IL_0111:  call       instance string [System.Runtime]System.Int32::ToString()
    IL_0116:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_011b:  ldnull
    IL_011c:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                         !!0)
    IL_0121:  stloc.s    V_6
    IL_0123:  ldloc.s    V_6
    IL_0125:  brfalse.s  IL_0140

    IL_0127:  ldarg.0
    IL_0128:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.ComponentCreativeInventory::m_slots
    IL_012d:  ldloc.s    V_5
    IL_012f:  ldloc.s    V_6
    IL_0131:  ldstr      "Contents"
    IL_0136:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<int32>(string)
    IL_013b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::set_Item(int32,
                                                                                                                    !0)
    IL_0140:  ldloc.s    V_5
    IL_0142:  ldc.i4.1
    IL_0143:  add
    IL_0144:  stloc.s    V_5
    IL_0146:  ldloc.s    V_5
    IL_0148:  ldarg.0
    IL_0149:  call       instance int32 Game.ComponentCreativeInventory::get_OpenSlotsCount()
    IL_014e:  blt.s      IL_0109

    IL_0150:  ret
  } // end of method ComponentCreativeInventory::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.EntityToIdMap entityToIdMap) cil managed
  {
    // 代码大小       154 (0x9a)
    .maxstack  4
    .locals init (class [EntitySystem]TemplatesDatabase.ValuesDictionary V_0,
             int32 V_1,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_2)
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "ActiveSlotIndex"
    IL_0006:  ldarg.0
    IL_0007:  ldfld      int32 Game.ComponentCreativeInventory::m_activeSlotIndex
    IL_000c:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<int32>(string,
                                                                                                         !!0)
    IL_0011:  ldarg.1
    IL_0012:  ldstr      "CategoryIndex"
    IL_0017:  ldarg.0
    IL_0018:  call       instance int32 Game.ComponentCreativeInventory::get_CategoryIndex()
    IL_001d:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<int32>(string,
                                                                                                         !!0)
    IL_0022:  ldarg.1
    IL_0023:  ldstr      "PageIndex"
    IL_0028:  ldarg.0
    IL_0029:  call       instance int32 Game.ComponentCreativeInventory::get_PageIndex()
    IL_002e:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<int32>(string,
                                                                                                         !!0)
    IL_0033:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
    IL_0038:  stloc.0
    IL_0039:  ldarg.1
    IL_003a:  ldstr      "Slots"
    IL_003f:  ldloc.0
    IL_0040:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                          !!0)
    IL_0045:  ldc.i4.0
    IL_0046:  stloc.1
    IL_0047:  br.s       IL_0090

    IL_0049:  ldarg.0
    IL_004a:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.ComponentCreativeInventory::m_slots
    IL_004f:  ldloc.1
    IL_0050:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Item(int32)
    IL_0055:  brfalse.s  IL_008c

    IL_0057:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
    IL_005c:  stloc.2
    IL_005d:  ldloc.0
    IL_005e:  ldstr      "Slot"
    IL_0063:  ldloca.s   V_1
    IL_0065:  call       instance string [System.Runtime]System.Int32::ToString()
    IL_006a:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_006f:  ldloc.2
    IL_0070:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                          !!0)
    IL_0075:  ldloc.2
    IL_0076:  ldstr      "Contents"
    IL_007b:  ldarg.0
    IL_007c:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.ComponentCreativeInventory::m_slots
    IL_0081:  ldloc.1
    IL_0082:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Item(int32)
    IL_0087:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<int32>(string,
                                                                                                         !!0)
    IL_008c:  ldloc.1
    IL_008d:  ldc.i4.1
    IL_008e:  add
    IL_008f:  stloc.1
    IL_0090:  ldloc.1
    IL_0091:  ldarg.0
    IL_0092:  call       instance int32 Game.ComponentCreativeInventory::get_OpenSlotsCount()
    IL_0097:  blt.s      IL_0049

    IL_0099:  ret
  } // end of method ComponentCreativeInventory::Save

  .method public hidebysig newslot specialname virtual final 
          instance class Game.SubsystemInventory 
          get_SubsystemInventory() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemInventory Game.ComponentCreativeInventory::m_subsystemInventory
    IL_0006:  ret
  } // end of method ComponentCreativeInventory::get_SubsystemInventory

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_ActiveSlotIndex() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.ComponentCreativeInventory::m_activeSlotIndex
    IL_0006:  ret
  } // end of method ComponentCreativeInventory::get_ActiveSlotIndex

  .method public hidebysig newslot specialname virtual final 
          instance void  set_ActiveSlotIndex(int32 'value') cil managed
  {
    // 代码大小       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.0
    IL_0002:  blt.s      IL_000f

    IL_0004:  ldarg.1
    IL_0005:  ldc.i4.6
    IL_0006:  bge.s      IL_000f

    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      int32 Game.ComponentCreativeInventory::m_activeSlotIndex
    IL_000f:  ret
  } // end of method ComponentCreativeInventory::set_ActiveSlotIndex

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_SlotsCount() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.ComponentCreativeInventory::m_slots
    IL_0006:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Count()
    IL_000b:  ret
  } // end of method ComponentCreativeInventory::get_SlotsCount

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
    IL_0006:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.ComponentCreativeInventory::m_slots
    IL_000b:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Count()
    IL_0010:  bge.s      IL_001f

    IL_0012:  ldarg.0
    IL_0013:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.ComponentCreativeInventory::m_slots
    IL_0018:  ldarg.1
    IL_0019:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Item(int32)
    IL_001e:  ret

    IL_001f:  ldc.i4.0
    IL_0020:  ret
  } // end of method ComponentCreativeInventory::GetSlotValue

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
    IL_0006:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.ComponentCreativeInventory::m_slots
    IL_000b:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Count()
    IL_0010:  bge.s      IL_0028

    IL_0012:  ldarg.0
    IL_0013:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.ComponentCreativeInventory::m_slots
    IL_0018:  ldarg.1
    IL_0019:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Item(int32)
    IL_001e:  brtrue.s   IL_0022

    IL_0020:  ldc.i4.0
    IL_0021:  ret

    IL_0022:  ldc.i4     0x270f
    IL_0027:  ret

    IL_0028:  ldc.i4.0
    IL_0029:  ret
  } // end of method ComponentCreativeInventory::GetSlotCount

  .method public hidebysig newslot virtual final 
          instance int32  GetSlotCapacity(int32 slotIndex,
                                          int32 'value') cil managed
  {
    // 代码大小       52 (0x34)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.0
    IL_0002:  blt.s      IL_0013

    IL_0004:  ldarg.1
    IL_0005:  ldarg.0
    IL_0006:  call       instance int32 Game.ComponentCreativeInventory::get_OpenSlotsCount()
    IL_000b:  bge.s      IL_0013

    IL_000d:  ldc.i4     0x5f592e1
    IL_0012:  ret

    IL_0013:  ldarg.2
    IL_0014:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0019:  stloc.0
    IL_001a:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_001f:  ldloc.0
    IL_0020:  ldelem.ref
    IL_0021:  ldfld      bool Game.Block::IsNonDuplicable
    IL_0026:  brfalse.s  IL_002e

    IL_0028:  ldc.i4     0x270f
    IL_002d:  ret

    IL_002e:  ldc.i4     0x5f592e1
    IL_0033:  ret
  } // end of method ComponentCreativeInventory::GetSlotCapacity

  .method public hidebysig newslot virtual final 
          instance int32  GetSlotProcessCapacity(int32 slotIndex,
                                                 int32 'value') cil managed
  {
    // 代码大小       94 (0x5e)
    .maxstack  4
    .locals init (int32 V_0,
             class Game.SubsystemBlockBehavior[] V_1,
             int32 V_2,
             int32 V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance int32 Game.ComponentCreativeInventory::GetSlotCount(int32)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  call       instance int32 Game.ComponentCreativeInventory::GetSlotValue(int32)
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

    IL_004d:  ldarg.1
    IL_004e:  ldarg.0
    IL_004f:  call       instance int32 Game.ComponentCreativeInventory::get_OpenSlotsCount()
    IL_0054:  bge.s      IL_0058

    IL_0056:  ldc.i4.0
    IL_0057:  ret

    IL_0058:  ldc.i4     0x270f
    IL_005d:  ret
  } // end of method ComponentCreativeInventory::GetSlotProcessCapacity

  .method public hidebysig newslot virtual final 
          instance void  AddSlotItems(int32 slotIndex,
                                      int32 'value',
                                      int32 count) cil managed
  {
    // 代码大小       27 (0x1b)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.0
    IL_0002:  blt.s      IL_001a

    IL_0004:  ldarg.1
    IL_0005:  ldarg.0
    IL_0006:  call       instance int32 Game.ComponentCreativeInventory::get_OpenSlotsCount()
    IL_000b:  bge.s      IL_001a

    IL_000d:  ldarg.0
    IL_000e:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.ComponentCreativeInventory::m_slots
    IL_0013:  ldarg.1
    IL_0014:  ldarg.2
    IL_0015:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::set_Item(int32,
                                                                                                                    !0)
    IL_001a:  ret
  } // end of method ComponentCreativeInventory::AddSlotItems

  .method public hidebysig newslot virtual 
          instance void  ProcessSlotItems(int32 slotIndex,
                                          int32 'value',
                                          int32 count,
                                          int32 processCount,
                                          [out] int32& processedValue,
                                          [out] int32& processedCount) cil managed
  {
    // 代码大小       130 (0x82)
    .maxstack  8
    .locals init (int32 V_0,
             class Game.SubsystemBlockBehavior[] V_1,
             int32 V_2,
             class Game.SubsystemBlockBehavior V_3,
             int32 V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance int32 Game.ComponentCreativeInventory::GetSlotCount(int32)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  call       instance int32 Game.ComponentCreativeInventory::GetSlotValue(int32)
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

    IL_0067:  ldarg.1
    IL_0068:  ldarg.0
    IL_0069:  call       instance int32 Game.ComponentCreativeInventory::get_OpenSlotsCount()
    IL_006e:  blt.s      IL_0079

    IL_0070:  ldarg.s    processedValue
    IL_0072:  ldc.i4.0
    IL_0073:  stind.i4
    IL_0074:  ldarg.s    processedCount
    IL_0076:  ldc.i4.0
    IL_0077:  stind.i4
    IL_0078:  ret

    IL_0079:  ldarg.s    processedValue
    IL_007b:  ldarg.2
    IL_007c:  stind.i4
    IL_007d:  ldarg.s    processedCount
    IL_007f:  ldarg.3
    IL_0080:  stind.i4
    IL_0081:  ret
  } // end of method ComponentCreativeInventory::ProcessSlotItems

  .method public hidebysig newslot virtual final 
          instance int32  RemoveSlotItems(int32 slotIndex,
                                          int32 count) cil managed
  {
    // 代码大小       85 (0x55)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.0
    IL_0002:  blt.s      IL_0053

    IL_0004:  ldarg.1
    IL_0005:  ldarg.0
    IL_0006:  call       instance int32 Game.ComponentCreativeInventory::get_OpenSlotsCount()
    IL_000b:  bge.s      IL_0053

    IL_000d:  ldarg.0
    IL_000e:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.ComponentCreativeInventory::m_slots
    IL_0013:  ldarg.1
    IL_0014:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Item(int32)
    IL_0019:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_001e:  stloc.0
    IL_001f:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0024:  ldloc.0
    IL_0025:  ldelem.ref
    IL_0026:  ldfld      bool Game.Block::IsNonDuplicable
    IL_002b:  brfalse.s  IL_003c

    IL_002d:  ldarg.0
    IL_002e:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.ComponentCreativeInventory::m_slots
    IL_0033:  ldarg.1
    IL_0034:  ldc.i4.0
    IL_0035:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::set_Item(int32,
                                                                                                                    !0)
    IL_003a:  ldc.i4.1
    IL_003b:  ret

    IL_003c:  ldarg.2
    IL_003d:  ldc.i4     0x270f
    IL_0042:  blt.s      IL_0053

    IL_0044:  ldarg.0
    IL_0045:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.ComponentCreativeInventory::m_slots
    IL_004a:  ldarg.1
    IL_004b:  ldc.i4.0
    IL_004c:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::set_Item(int32,
                                                                                                                    !0)
    IL_0051:  ldc.i4.1
    IL_0052:  ret

    IL_0053:  ldc.i4.1
    IL_0054:  ret
  } // end of method ComponentCreativeInventory::RemoveSlotItems

  .method public hidebysig newslot virtual final 
          instance void  DropAllItems(valuetype [Engine]Engine.Vector3 position) cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method ComponentCreativeInventory::DropAllItems

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<int32>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.ComponentCreativeInventory::m_slots
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_0011:  ret
  } // end of method ComponentCreativeInventory::.ctor

  .property instance int32 OpenSlotsCount()
  {
    .get instance int32 Game.ComponentCreativeInventory::get_OpenSlotsCount()
    .set instance void Game.ComponentCreativeInventory::set_OpenSlotsCount(int32)
  } // end of property ComponentCreativeInventory::OpenSlotsCount
  .property instance int32 CategoryIndex()
  {
    .get instance int32 Game.ComponentCreativeInventory::get_CategoryIndex()
    .set instance void Game.ComponentCreativeInventory::set_CategoryIndex(int32)
  } // end of property ComponentCreativeInventory::CategoryIndex
  .property instance int32 PageIndex()
  {
    .get instance int32 Game.ComponentCreativeInventory::get_PageIndex()
    .set instance void Game.ComponentCreativeInventory::set_PageIndex(int32)
  } // end of property ComponentCreativeInventory::PageIndex
  .property instance class Game.SubsystemInventory
          SubsystemInventory()
  {
    .get instance class Game.SubsystemInventory Game.ComponentCreativeInventory::get_SubsystemInventory()
  } // end of property ComponentCreativeInventory::SubsystemInventory
  .property instance int32 ActiveSlotIndex()
  {
    .get instance int32 Game.ComponentCreativeInventory::get_ActiveSlotIndex()
    .set instance void Game.ComponentCreativeInventory::set_ActiveSlotIndex(int32)
  } // end of property ComponentCreativeInventory::ActiveSlotIndex
  .property instance int32 SlotsCount()
  {
    .get instance int32 Game.ComponentCreativeInventory::get_SlotsCount()
  } // end of property ComponentCreativeInventory::SlotsCount
} // end of class Game.ComponentCreativeInventory