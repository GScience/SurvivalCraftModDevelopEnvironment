.class public auto ansi beforefieldinit Game.SubsystemTruthTableCircuitBlockBehavior
       extends class Game.SubsystemEditableItemBehavior`1<class Game.TruthTableData>
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass3_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class Game.TruthTableData truthTableData
    .field public int32 'value'
    .field public class Game.IInventory inventory
    .field public int32 slotIndex
    .field public int32 count
    .field public class Game.SubsystemTruthTableCircuitBlockBehavior '<>4__this'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass3_0'::.ctor

    .method assembly hidebysig instance void 
            '<OnEditInventoryItem>b__0'(bool '<obj>') cil managed
    {
      // 代码大小       75 (0x4b)
      .maxstack  4
      .locals init (int32 V_0,
               int32 V_1)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.SubsystemTruthTableCircuitBlockBehavior Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass3_0'::'<>4__this'
      IL_0006:  ldarg.0
      IL_0007:  ldfld      class Game.TruthTableData Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass3_0'::truthTableData
      IL_000c:  call       instance int32 class Game.SubsystemEditableItemBehavior`1<class Game.TruthTableData>::StoreItemDataAtUniqueId(!0)
      IL_0011:  stloc.0
      IL_0012:  ldarg.0
      IL_0013:  ldfld      int32 Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass3_0'::'value'
      IL_0018:  ldloc.0
      IL_0019:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                               int32)
      IL_001e:  stloc.1
      IL_001f:  ldarg.0
      IL_0020:  ldfld      class Game.IInventory Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass3_0'::inventory
      IL_0025:  ldarg.0
      IL_0026:  ldfld      int32 Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass3_0'::slotIndex
      IL_002b:  ldarg.0
      IL_002c:  ldfld      int32 Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass3_0'::count
      IL_0031:  callvirt   instance int32 Game.IInventory::RemoveSlotItems(int32,
                                                                           int32)
      IL_0036:  pop
      IL_0037:  ldarg.0
      IL_0038:  ldfld      class Game.IInventory Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass3_0'::inventory
      IL_003d:  ldarg.0
      IL_003e:  ldfld      int32 Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass3_0'::slotIndex
      IL_0043:  ldloc.1
      IL_0044:  ldc.i4.1
      IL_0045:  callvirt   instance void Game.IInventory::AddSlotItems(int32,
                                                                       int32,
                                                                       int32)
      IL_004a:  ret
    } // end of method '<>c__DisplayClass3_0'::'<OnEditInventoryItem>b__0'

  } // end of class '<>c__DisplayClass3_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass4_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public int32 x
    .field public int32 y
    .field public int32 z
    .field public class Game.TruthTableData truthTableData
    .field public int32 'value'
    .field public class Game.SubsystemTruthTableCircuitBlockBehavior '<>4__this'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass4_0'::.ctor

    .method assembly hidebysig instance void 
            '<OnEditBlock>b__0'(bool '<obj>') cil managed
    {
      // 代码大小       136 (0x88)
      .maxstack  5
      .locals init (int32 V_0,
               class Game.SubsystemElectricity V_1,
               class Game.ElectricElement V_2)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.SubsystemTruthTableCircuitBlockBehavior Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass4_0'::'<>4__this'
      IL_0006:  ldarg.0
      IL_0007:  ldfld      int32 Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass4_0'::x
      IL_000c:  ldarg.0
      IL_000d:  ldfld      int32 Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass4_0'::y
      IL_0012:  ldarg.0
      IL_0013:  ldfld      int32 Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass4_0'::z
      IL_0018:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                      int32,
                                                                      int32)
      IL_001d:  ldarg.0
      IL_001e:  ldfld      class Game.TruthTableData Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass4_0'::truthTableData
      IL_0023:  call       instance void class Game.SubsystemEditableItemBehavior`1<class Game.TruthTableData>::SetBlockData(valuetype [Engine]Engine.Point3,
                                                                                                                             !0)
      IL_0028:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_002d:  ldc.i4     0xbc
      IL_0032:  ldelem.ref
      IL_0033:  castclass  Game.TruthTableCircuitBlock
      IL_0038:  ldarg.0
      IL_0039:  ldfld      int32 Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass4_0'::'value'
      IL_003e:  callvirt   instance int32 Game.MountedElectricElementBlock::GetFace(int32)
      IL_0043:  stloc.0
      IL_0044:  ldarg.0
      IL_0045:  ldfld      class Game.SubsystemTruthTableCircuitBlockBehavior Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass4_0'::'<>4__this'
      IL_004a:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
      IL_004f:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
      IL_0054:  ldc.i4.1
      IL_0055:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemElectricity>(bool)
      IL_005a:  stloc.1
      IL_005b:  ldloc.1
      IL_005c:  ldarg.0
      IL_005d:  ldfld      int32 Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass4_0'::x
      IL_0062:  ldarg.0
      IL_0063:  ldfld      int32 Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass4_0'::y
      IL_0068:  ldarg.0
      IL_0069:  ldfld      int32 Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass4_0'::z
      IL_006e:  ldloc.0
      IL_006f:  callvirt   instance class Game.ElectricElement Game.SubsystemElectricity::GetElectricElement(int32,
                                                                                                             int32,
                                                                                                             int32,
                                                                                                             int32)
      IL_0074:  stloc.2
      IL_0075:  ldloc.2
      IL_0076:  brfalse.s  IL_0087

      IL_0078:  ldloc.1
      IL_0079:  ldloc.2
      IL_007a:  ldloc.1
      IL_007b:  callvirt   instance int32 Game.SubsystemElectricity::get_CircuitStep()
      IL_0080:  ldc.i4.1
      IL_0081:  add
      IL_0082:  callvirt   instance void Game.SubsystemElectricity::QueueElectricElementForSimulation(class Game.ElectricElement,
                                                                                                      int32)
      IL_0087:  ret
    } // end of method '<>c__DisplayClass4_0'::'<OnEditBlock>b__0'

  } // end of class '<>c__DisplayClass4_0'

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0xbc
    IL_0006:  call       instance void class Game.SubsystemEditableItemBehavior`1<class Game.TruthTableData>::.ctor(int32)
    IL_000b:  ret
  } // end of method SubsystemTruthTableCircuitBlockBehavior::.ctor

  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4     0xbc
    IL_000d:  stelem.i4
    IL_000e:  ret
  } // end of method SubsystemTruthTableCircuitBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance bool 
          OnEditInventoryItem(class Game.IInventory inventory,
                              int32 slotIndex) cil managed
  {
    // 代码大小       171 (0xab)
    .maxstack  3
    .locals init (class Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass3_0' V_0,
             int32 V_1)
    IL_0000:  newobj     instance void Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass3_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class Game.SubsystemTruthTableCircuitBlockBehavior Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass3_0'::'<>4__this'
    IL_000d:  ldloc.0
    IL_000e:  ldarg.1
    IL_000f:  stfld      class Game.IInventory Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass3_0'::inventory
    IL_0014:  ldloc.0
    IL_0015:  ldarg.2
    IL_0016:  stfld      int32 Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass3_0'::slotIndex
    IL_001b:  ldloc.0
    IL_001c:  ldloc.0
    IL_001d:  ldfld      class Game.IInventory Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass3_0'::inventory
    IL_0022:  ldloc.0
    IL_0023:  ldfld      int32 Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass3_0'::slotIndex
    IL_0028:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_002d:  stfld      int32 Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass3_0'::'value'
    IL_0032:  ldloc.0
    IL_0033:  ldloc.0
    IL_0034:  ldfld      class Game.IInventory Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass3_0'::inventory
    IL_0039:  ldloc.0
    IL_003a:  ldfld      int32 Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass3_0'::slotIndex
    IL_003f:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_0044:  stfld      int32 Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass3_0'::count
    IL_0049:  ldloc.0
    IL_004a:  ldfld      int32 Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass3_0'::'value'
    IL_004f:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0054:  stloc.1
    IL_0055:  ldloc.0
    IL_0056:  ldarg.0
    IL_0057:  ldloc.1
    IL_0058:  call       instance !0 class Game.SubsystemEditableItemBehavior`1<class Game.TruthTableData>::GetItemData(int32)
    IL_005d:  stfld      class Game.TruthTableData Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass3_0'::truthTableData
    IL_0062:  ldloc.0
    IL_0063:  ldfld      class Game.TruthTableData Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass3_0'::truthTableData
    IL_0068:  brfalse.s  IL_0082

    IL_006a:  ldloc.0
    IL_006b:  ldloc.0
    IL_006c:  ldfld      class Game.TruthTableData Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass3_0'::truthTableData
    IL_0071:  callvirt   instance class Game.IEditableItemData Game.TruthTableData::Copy()
    IL_0076:  castclass  Game.TruthTableData
    IL_007b:  stfld      class Game.TruthTableData Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass3_0'::truthTableData
    IL_0080:  br.s       IL_008d

    IL_0082:  ldloc.0
    IL_0083:  newobj     instance void Game.TruthTableData::.ctor()
    IL_0088:  stfld      class Game.TruthTableData Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass3_0'::truthTableData
    IL_008d:  ldloc.0
    IL_008e:  ldfld      class Game.TruthTableData Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass3_0'::truthTableData
    IL_0093:  ldloc.0
    IL_0094:  ldftn      instance void Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass3_0'::'<OnEditInventoryItem>b__0'(bool)
    IL_009a:  newobj     instance void class [System.Runtime]System.Action`1<bool>::.ctor(object,
                                                                                          native int)
    IL_009f:  newobj     instance void Game.EditTruthTableDialog::.ctor(class Game.TruthTableData,
                                                                        class [System.Runtime]System.Action`1<bool>)
    IL_00a4:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_00a9:  ldc.i4.1
    IL_00aa:  ret
  } // end of method SubsystemTruthTableCircuitBlockBehavior::OnEditInventoryItem

  .method public hidebysig virtual instance bool 
          OnEditBlock(int32 x,
                      int32 y,
                      int32 z,
                      int32 'value') cil managed
  {
    // 代码大小       116 (0x74)
    .maxstack  5
    .locals init (class Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass4_0' V_0)
    IL_0000:  newobj     instance void Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass4_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class Game.SubsystemTruthTableCircuitBlockBehavior Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass4_0'::'<>4__this'
    IL_000d:  ldloc.0
    IL_000e:  ldarg.1
    IL_000f:  stfld      int32 Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass4_0'::x
    IL_0014:  ldloc.0
    IL_0015:  ldarg.2
    IL_0016:  stfld      int32 Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass4_0'::y
    IL_001b:  ldloc.0
    IL_001c:  ldarg.3
    IL_001d:  stfld      int32 Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass4_0'::z
    IL_0022:  ldloc.0
    IL_0023:  ldarg.s    'value'
    IL_0025:  stfld      int32 Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass4_0'::'value'
    IL_002a:  ldloc.0
    IL_002b:  ldarg.0
    IL_002c:  ldloc.0
    IL_002d:  ldfld      int32 Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass4_0'::x
    IL_0032:  ldloc.0
    IL_0033:  ldfld      int32 Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass4_0'::y
    IL_0038:  ldloc.0
    IL_0039:  ldfld      int32 Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass4_0'::z
    IL_003e:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0043:  call       instance !0 class Game.SubsystemEditableItemBehavior`1<class Game.TruthTableData>::GetBlockData(valuetype [Engine]Engine.Point3)
    IL_0048:  dup
    IL_0049:  brtrue.s   IL_0051

    IL_004b:  pop
    IL_004c:  newobj     instance void Game.TruthTableData::.ctor()
    IL_0051:  stfld      class Game.TruthTableData Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass4_0'::truthTableData
    IL_0056:  ldloc.0
    IL_0057:  ldfld      class Game.TruthTableData Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass4_0'::truthTableData
    IL_005c:  ldloc.0
    IL_005d:  ldftn      instance void Game.SubsystemTruthTableCircuitBlockBehavior/'<>c__DisplayClass4_0'::'<OnEditBlock>b__0'(bool)
    IL_0063:  newobj     instance void class [System.Runtime]System.Action`1<bool>::.ctor(object,
                                                                                          native int)
    IL_0068:  newobj     instance void Game.EditTruthTableDialog::.ctor(class Game.TruthTableData,
                                                                        class [System.Runtime]System.Action`1<bool>)
    IL_006d:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_0072:  ldc.i4.1
    IL_0073:  ret
  } // end of method SubsystemTruthTableCircuitBlockBehavior::OnEditBlock

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemTruthTableCircuitBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemTruthTableCircuitBlockBehavior::HandledBlocks
} // end of class Game.SubsystemTruthTableCircuitBlockBehavior