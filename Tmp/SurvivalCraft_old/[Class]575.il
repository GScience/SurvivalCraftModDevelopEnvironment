.class public auto ansi beforefieldinit Game.SubsystemAdjustableDelayGateBlockBehavior
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
            '<OnEditInventoryItem>b__0'(int32 newDelay) cil managed
    {
      // 代码大小       79 (0x4f)
      .maxstack  4
      .locals init (int32 V_0,
               int32 V_1)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass2_0'::data
      IL_0006:  ldarg.1
      IL_0007:  call       int32 Game.AdjustableDelayGateBlock::SetDelay(int32,
                                                                         int32)
      IL_000c:  stloc.0
      IL_000d:  ldarg.0
      IL_000e:  ldfld      int32 Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass2_0'::'value'
      IL_0013:  ldloc.0
      IL_0014:  call       int32 Game.Terrain::ReplaceData(int32,
                                                           int32)
      IL_0019:  stloc.1
      IL_001a:  ldloc.1
      IL_001b:  ldarg.0
      IL_001c:  ldfld      int32 Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass2_0'::'value'
      IL_0021:  beq.s      IL_004e

      IL_0023:  ldarg.0
      IL_0024:  ldfld      class Game.IInventory Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass2_0'::inventory
      IL_0029:  ldarg.0
      IL_002a:  ldfld      int32 Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass2_0'::slotIndex
      IL_002f:  ldarg.0
      IL_0030:  ldfld      int32 Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass2_0'::count
      IL_0035:  callvirt   instance int32 Game.IInventory::RemoveSlotItems(int32,
                                                                           int32)
      IL_003a:  pop
      IL_003b:  ldarg.0
      IL_003c:  ldfld      class Game.IInventory Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass2_0'::inventory
      IL_0041:  ldarg.0
      IL_0042:  ldfld      int32 Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass2_0'::slotIndex
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
    .field public class Game.SubsystemAdjustableDelayGateBlockBehavior '<>4__this'
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
            '<OnEditBlock>b__0'(int32 newDelay) cil managed
    {
      // 代码大小       168 (0xa8)
      .maxstack  6
      .locals init (int32 V_0,
               int32 V_1,
               int32 V_2,
               class Game.SubsystemElectricity V_3,
               class Game.ElectricElement V_4)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass3_0'::data
      IL_0006:  ldarg.1
      IL_0007:  call       int32 Game.AdjustableDelayGateBlock::SetDelay(int32,
                                                                         int32)
      IL_000c:  stloc.0
      IL_000d:  ldloc.0
      IL_000e:  ldarg.0
      IL_000f:  ldfld      int32 Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass3_0'::data
      IL_0014:  beq        IL_00a7

      IL_0019:  ldarg.0
      IL_001a:  ldfld      int32 Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass3_0'::'value'
      IL_001f:  ldloc.0
      IL_0020:  call       int32 Game.Terrain::ReplaceData(int32,
                                                           int32)
      IL_0025:  stloc.1
      IL_0026:  ldarg.0
      IL_0027:  ldfld      class Game.SubsystemAdjustableDelayGateBlockBehavior Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass3_0'::'<>4__this'
      IL_002c:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
      IL_0031:  ldarg.0
      IL_0032:  ldfld      int32 Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass3_0'::x
      IL_0037:  ldarg.0
      IL_0038:  ldfld      int32 Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass3_0'::y
      IL_003d:  ldarg.0
      IL_003e:  ldfld      int32 Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass3_0'::z
      IL_0043:  ldloc.1
      IL_0044:  ldc.i4.1
      IL_0045:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32,
                                                                           bool)
      IL_004a:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_004f:  ldc.i4     0xe0
      IL_0054:  ldelem.ref
      IL_0055:  castclass  Game.AdjustableDelayGateBlock
      IL_005a:  ldarg.0
      IL_005b:  ldfld      int32 Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass3_0'::'value'
      IL_0060:  callvirt   instance int32 Game.MountedElectricElementBlock::GetFace(int32)
      IL_0065:  stloc.2
      IL_0066:  ldarg.0
      IL_0067:  ldfld      class Game.SubsystemAdjustableDelayGateBlockBehavior Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass3_0'::'<>4__this'
      IL_006c:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
      IL_0071:  ldc.i4.1
      IL_0072:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemElectricity>(bool)
      IL_0077:  stloc.3
      IL_0078:  ldloc.3
      IL_0079:  ldarg.0
      IL_007a:  ldfld      int32 Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass3_0'::x
      IL_007f:  ldarg.0
      IL_0080:  ldfld      int32 Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass3_0'::y
      IL_0085:  ldarg.0
      IL_0086:  ldfld      int32 Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass3_0'::z
      IL_008b:  ldloc.2
      IL_008c:  callvirt   instance class Game.ElectricElement Game.SubsystemElectricity::GetElectricElement(int32,
                                                                                                             int32,
                                                                                                             int32,
                                                                                                             int32)
      IL_0091:  stloc.s    V_4
      IL_0093:  ldloc.s    V_4
      IL_0095:  brfalse.s  IL_00a7

      IL_0097:  ldloc.3
      IL_0098:  ldloc.s    V_4
      IL_009a:  ldloc.3
      IL_009b:  callvirt   instance int32 Game.SubsystemElectricity::get_CircuitStep()
      IL_00a0:  ldc.i4.1
      IL_00a1:  add
      IL_00a2:  callvirt   instance void Game.SubsystemElectricity::QueueElectricElementForSimulation(class Game.ElectricElement,
                                                                                                      int32)
      IL_00a7:  ret
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
    IL_0008:  ldc.i4     0xe0
    IL_000d:  stelem.i4
    IL_000e:  ret
  } // end of method SubsystemAdjustableDelayGateBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance bool 
          OnEditInventoryItem(class Game.IInventory inventory,
                              int32 slotIndex,
                              class Game.ComponentPlayer componentPlayer) cil managed
  {
    // 代码大小       131 (0x83)
    .maxstack  4
    .locals init (class Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass2_0' V_0,
             int32 V_1)
    IL_0000:  newobj     instance void Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass2_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      class Game.IInventory Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass2_0'::inventory
    IL_000d:  ldloc.0
    IL_000e:  ldarg.2
    IL_000f:  stfld      int32 Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass2_0'::slotIndex
    IL_0014:  ldloc.0
    IL_0015:  ldloc.0
    IL_0016:  ldfld      class Game.IInventory Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass2_0'::inventory
    IL_001b:  ldloc.0
    IL_001c:  ldfld      int32 Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass2_0'::slotIndex
    IL_0021:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_0026:  stfld      int32 Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass2_0'::'value'
    IL_002b:  ldloc.0
    IL_002c:  ldloc.0
    IL_002d:  ldfld      class Game.IInventory Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass2_0'::inventory
    IL_0032:  ldloc.0
    IL_0033:  ldfld      int32 Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass2_0'::slotIndex
    IL_0038:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_003d:  stfld      int32 Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass2_0'::count
    IL_0042:  ldloc.0
    IL_0043:  ldloc.0
    IL_0044:  ldfld      int32 Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass2_0'::'value'
    IL_0049:  call       int32 Game.Terrain::ExtractData(int32)
    IL_004e:  stfld      int32 Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass2_0'::data
    IL_0053:  ldloc.0
    IL_0054:  ldfld      int32 Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass2_0'::data
    IL_0059:  call       int32 Game.AdjustableDelayGateBlock::GetDelay(int32)
    IL_005e:  stloc.1
    IL_005f:  ldarg.3
    IL_0060:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_0065:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_006a:  ldloc.1
    IL_006b:  ldloc.0
    IL_006c:  ldftn      instance void Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass2_0'::'<OnEditInventoryItem>b__0'(int32)
    IL_0072:  newobj     instance void class [System.Runtime]System.Action`1<int32>::.ctor(object,
                                                                                           native int)
    IL_0077:  newobj     instance void Game.EditAdjustableDelayGateDialog::.ctor(int32,
                                                                                 class [System.Runtime]System.Action`1<int32>)
    IL_007c:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_0081:  ldc.i4.1
    IL_0082:  ret
  } // end of method SubsystemAdjustableDelayGateBlockBehavior::OnEditInventoryItem

  .method public hidebysig virtual instance bool 
          OnEditBlock(int32 x,
                      int32 y,
                      int32 z,
                      int32 'value',
                      class Game.ComponentPlayer componentPlayer) cil managed
  {
    // 代码大小       108 (0x6c)
    .maxstack  4
    .locals init (class Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass3_0' V_0,
             int32 V_1)
    IL_0000:  newobj     instance void Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass3_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class Game.SubsystemAdjustableDelayGateBlockBehavior Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass3_0'::'<>4__this'
    IL_000d:  ldloc.0
    IL_000e:  ldarg.s    'value'
    IL_0010:  stfld      int32 Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass3_0'::'value'
    IL_0015:  ldloc.0
    IL_0016:  ldarg.1
    IL_0017:  stfld      int32 Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass3_0'::x
    IL_001c:  ldloc.0
    IL_001d:  ldarg.2
    IL_001e:  stfld      int32 Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass3_0'::y
    IL_0023:  ldloc.0
    IL_0024:  ldarg.3
    IL_0025:  stfld      int32 Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass3_0'::z
    IL_002a:  ldloc.0
    IL_002b:  ldloc.0
    IL_002c:  ldfld      int32 Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass3_0'::'value'
    IL_0031:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0036:  stfld      int32 Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass3_0'::data
    IL_003b:  ldloc.0
    IL_003c:  ldfld      int32 Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass3_0'::data
    IL_0041:  call       int32 Game.AdjustableDelayGateBlock::GetDelay(int32)
    IL_0046:  stloc.1
    IL_0047:  ldarg.s    componentPlayer
    IL_0049:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_004e:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_0053:  ldloc.1
    IL_0054:  ldloc.0
    IL_0055:  ldftn      instance void Game.SubsystemAdjustableDelayGateBlockBehavior/'<>c__DisplayClass3_0'::'<OnEditBlock>b__0'(int32)
    IL_005b:  newobj     instance void class [System.Runtime]System.Action`1<int32>::.ctor(object,
                                                                                           native int)
    IL_0060:  newobj     instance void Game.EditAdjustableDelayGateDialog::.ctor(int32,
                                                                                 class [System.Runtime]System.Action`1<int32>)
    IL_0065:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_006a:  ldc.i4.1
    IL_006b:  ret
  } // end of method SubsystemAdjustableDelayGateBlockBehavior::OnEditBlock

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0006:  ret
  } // end of method SubsystemAdjustableDelayGateBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemAdjustableDelayGateBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemAdjustableDelayGateBlockBehavior::HandledBlocks
} // end of class Game.SubsystemAdjustableDelayGateBlockBehavior