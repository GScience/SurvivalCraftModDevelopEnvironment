.class public auto ansi beforefieldinit Game.SubsystemBatteryBlockBehavior
       extends Game.SubsystemBlockBehavior
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass2_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public int32 data
    .field public int32 'value'
    .field public class Game.IInventory inventory
    .field public int32 slotIndex
    .field public int32 count
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass2_0'::.ctor

    .method assembly hidebysig instance void 
            '<OnEditInventoryItem>b__0'(int32 newVoltageLevel) cil managed
    {
      // 代码大小       79 (0x4f)
      .maxstack  4
      .locals init (int32 V_0,
               int32 V_1)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass2_0'::data
      IL_0006:  ldarg.1
      IL_0007:  call       int32 Game.BatteryBlock::SetVoltageLevel(int32,
                                                                    int32)
      IL_000c:  stloc.0
      IL_000d:  ldarg.0
      IL_000e:  ldfld      int32 Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass2_0'::'value'
      IL_0013:  ldloc.0
      IL_0014:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                               int32)
      IL_0019:  stloc.1
      IL_001a:  ldloc.1
      IL_001b:  ldarg.0
      IL_001c:  ldfld      int32 Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass2_0'::'value'
      IL_0021:  beq.s      IL_004e

      IL_0023:  ldarg.0
      IL_0024:  ldfld      class Game.IInventory Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass2_0'::inventory
      IL_0029:  ldarg.0
      IL_002a:  ldfld      int32 Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass2_0'::slotIndex
      IL_002f:  ldarg.0
      IL_0030:  ldfld      int32 Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass2_0'::count
      IL_0035:  callvirt   instance int32 Game.IInventory::RemoveSlotItems(int32,
                                                                           int32)
      IL_003a:  pop
      IL_003b:  ldarg.0
      IL_003c:  ldfld      class Game.IInventory Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass2_0'::inventory
      IL_0041:  ldarg.0
      IL_0042:  ldfld      int32 Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass2_0'::slotIndex
      IL_0047:  ldloc.1
      IL_0048:  ldc.i4.1
      IL_0049:  callvirt   instance void Game.IInventory::AddSlotItems(int32,
                                                                       int32,
                                                                       int32)
      IL_004e:  ret
    } // end of method '<>c__DisplayClass2_0'::'<OnEditInventoryItem>b__0'

  } // end of class '<>c__DisplayClass2_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass3_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public int32 data
    .field public int32 'value'
    .field public int32 x
    .field public int32 y
    .field public int32 z
    .field public class Game.SubsystemBatteryBlockBehavior '<>4__this'
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
            '<OnEditBlock>b__0'(int32 newVoltageLevel) cil managed
    {
      // 代码大小       134 (0x86)
      .maxstack  6
      .locals init (int32 V_0,
               int32 V_1,
               class Game.SubsystemElectricity V_2,
               class Game.ElectricElement V_3)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass3_0'::data
      IL_0006:  ldarg.1
      IL_0007:  call       int32 Game.BatteryBlock::SetVoltageLevel(int32,
                                                                    int32)
      IL_000c:  stloc.0
      IL_000d:  ldloc.0
      IL_000e:  ldarg.0
      IL_000f:  ldfld      int32 Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass3_0'::data
      IL_0014:  beq.s      IL_0085

      IL_0016:  ldarg.0
      IL_0017:  ldfld      int32 Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass3_0'::'value'
      IL_001c:  ldloc.0
      IL_001d:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                               int32)
      IL_0022:  stloc.1
      IL_0023:  ldarg.0
      IL_0024:  ldfld      class Game.SubsystemBatteryBlockBehavior Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass3_0'::'<>4__this'
      IL_0029:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
      IL_002e:  ldarg.0
      IL_002f:  ldfld      int32 Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass3_0'::x
      IL_0034:  ldarg.0
      IL_0035:  ldfld      int32 Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass3_0'::y
      IL_003a:  ldarg.0
      IL_003b:  ldfld      int32 Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass3_0'::z
      IL_0040:  ldloc.1
      IL_0041:  ldc.i4.1
      IL_0042:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32,
                                                                           bool)
      IL_0047:  ldarg.0
      IL_0048:  ldfld      class Game.SubsystemBatteryBlockBehavior Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass3_0'::'<>4__this'
      IL_004d:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
      IL_0052:  ldc.i4.1
      IL_0053:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemElectricity>(bool)
      IL_0058:  stloc.2
      IL_0059:  ldloc.2
      IL_005a:  ldarg.0
      IL_005b:  ldfld      int32 Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass3_0'::x
      IL_0060:  ldarg.0
      IL_0061:  ldfld      int32 Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass3_0'::y
      IL_0066:  ldarg.0
      IL_0067:  ldfld      int32 Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass3_0'::z
      IL_006c:  ldc.i4.4
      IL_006d:  callvirt   instance class Game.ElectricElement Game.SubsystemElectricity::GetElectricElement(int32,
                                                                                                             int32,
                                                                                                             int32,
                                                                                                             int32)
      IL_0072:  stloc.3
      IL_0073:  ldloc.3
      IL_0074:  brfalse.s  IL_0085

      IL_0076:  ldloc.2
      IL_0077:  ldloc.3
      IL_0078:  ldloc.2
      IL_0079:  callvirt   instance int32 Game.SubsystemElectricity::get_CircuitStep()
      IL_007e:  ldc.i4.1
      IL_007f:  add
      IL_0080:  callvirt   instance void Game.SubsystemElectricity::QueueElectricElementConnectionsForSimulation(class Game.ElectricElement,
                                                                                                                 int32)
      IL_0085:  ret
    } // end of method '<>c__DisplayClass3_0'::'<OnEditBlock>b__0'

  } // end of class '<>c__DisplayClass3_0'

  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4     0x8a
    IL_000d:  stelem.i4
    IL_000e:  ret
  } // end of method SubsystemBatteryBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance bool 
          OnEditInventoryItem(class Game.IInventory inventory,
                              int32 slotIndex) cil managed
  {
    // 代码大小       118 (0x76)
    .maxstack  3
    .locals init (class Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass2_0' V_0)
    IL_0000:  newobj     instance void Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass2_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      class Game.IInventory Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass2_0'::inventory
    IL_000d:  ldloc.0
    IL_000e:  ldarg.2
    IL_000f:  stfld      int32 Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass2_0'::slotIndex
    IL_0014:  ldloc.0
    IL_0015:  ldloc.0
    IL_0016:  ldfld      class Game.IInventory Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass2_0'::inventory
    IL_001b:  ldloc.0
    IL_001c:  ldfld      int32 Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass2_0'::slotIndex
    IL_0021:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_0026:  stfld      int32 Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass2_0'::'value'
    IL_002b:  ldloc.0
    IL_002c:  ldloc.0
    IL_002d:  ldfld      class Game.IInventory Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass2_0'::inventory
    IL_0032:  ldloc.0
    IL_0033:  ldfld      int32 Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass2_0'::slotIndex
    IL_0038:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_003d:  stfld      int32 Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass2_0'::count
    IL_0042:  ldloc.0
    IL_0043:  ldloc.0
    IL_0044:  ldfld      int32 Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass2_0'::'value'
    IL_0049:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_004e:  stfld      int32 Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass2_0'::data
    IL_0053:  ldloc.0
    IL_0054:  ldfld      int32 Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass2_0'::data
    IL_0059:  call       int32 Game.BatteryBlock::GetVoltageLevel(int32)
    IL_005e:  ldloc.0
    IL_005f:  ldftn      instance void Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass2_0'::'<OnEditInventoryItem>b__0'(int32)
    IL_0065:  newobj     instance void class [System.Runtime]System.Action`1<int32>::.ctor(object,
                                                                                           native int)
    IL_006a:  newobj     instance void Game.EditBatteryDialog::.ctor(int32,
                                                                     class [System.Runtime]System.Action`1<int32>)
    IL_006f:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_0074:  ldc.i4.1
    IL_0075:  ret
  } // end of method SubsystemBatteryBlockBehavior::OnEditInventoryItem

  .method public hidebysig virtual instance bool 
          OnEditBlock(int32 x,
                      int32 y,
                      int32 z,
                      int32 'value') cil managed
  {
    // 代码大小       94 (0x5e)
    .maxstack  3
    .locals init (class Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass3_0' V_0)
    IL_0000:  newobj     instance void Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass3_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class Game.SubsystemBatteryBlockBehavior Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass3_0'::'<>4__this'
    IL_000d:  ldloc.0
    IL_000e:  ldarg.s    'value'
    IL_0010:  stfld      int32 Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass3_0'::'value'
    IL_0015:  ldloc.0
    IL_0016:  ldarg.1
    IL_0017:  stfld      int32 Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass3_0'::x
    IL_001c:  ldloc.0
    IL_001d:  ldarg.2
    IL_001e:  stfld      int32 Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass3_0'::y
    IL_0023:  ldloc.0
    IL_0024:  ldarg.3
    IL_0025:  stfld      int32 Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass3_0'::z
    IL_002a:  ldloc.0
    IL_002b:  ldloc.0
    IL_002c:  ldfld      int32 Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass3_0'::'value'
    IL_0031:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0036:  stfld      int32 Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass3_0'::data
    IL_003b:  ldloc.0
    IL_003c:  ldfld      int32 Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass3_0'::data
    IL_0041:  call       int32 Game.BatteryBlock::GetVoltageLevel(int32)
    IL_0046:  ldloc.0
    IL_0047:  ldftn      instance void Game.SubsystemBatteryBlockBehavior/'<>c__DisplayClass3_0'::'<OnEditBlock>b__0'(int32)
    IL_004d:  newobj     instance void class [System.Runtime]System.Action`1<int32>::.ctor(object,
                                                                                           native int)
    IL_0052:  newobj     instance void Game.EditBatteryDialog::.ctor(int32,
                                                                     class [System.Runtime]System.Action`1<int32>)
    IL_0057:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_005c:  ldc.i4.1
    IL_005d:  ret
  } // end of method SubsystemBatteryBlockBehavior::OnEditBlock

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0006:  ret
  } // end of method SubsystemBatteryBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemBatteryBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemBatteryBlockBehavior::HandledBlocks
} // end of class Game.SubsystemBatteryBlockBehavior