.class public auto ansi beforefieldinit Game.SubsystemPistonBlockBehavior
       extends Game.SubsystemBlockBehavior
       implements Game.IUpdateable
{
  .class auto ansi nested private beforefieldinit QueuedAction
         extends [System.Runtime]System.Object
  {
    .field public int32 StoppedFrame
    .field public bool Stop
    .field public valuetype [System.Runtime]System.Nullable`1<int32> Move
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method QueuedAction::.ctor

  } // end of class QueuedAction

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass19_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
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
    } // end of method '<>c__DisplayClass19_0'::.ctor

    .method assembly hidebysig instance void 
            '<OnEditInventoryItem>b__0'(int32 newData) cil managed
    {
      // 代码大小       66 (0x42)
      .maxstack  4
      .locals init (int32 V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.SubsystemPistonBlockBehavior/'<>c__DisplayClass19_0'::'value'
      IL_0006:  ldarg.1
      IL_0007:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                               int32)
      IL_000c:  stloc.0
      IL_000d:  ldloc.0
      IL_000e:  ldarg.0
      IL_000f:  ldfld      int32 Game.SubsystemPistonBlockBehavior/'<>c__DisplayClass19_0'::'value'
      IL_0014:  beq.s      IL_0041

      IL_0016:  ldarg.0
      IL_0017:  ldfld      class Game.IInventory Game.SubsystemPistonBlockBehavior/'<>c__DisplayClass19_0'::inventory
      IL_001c:  ldarg.0
      IL_001d:  ldfld      int32 Game.SubsystemPistonBlockBehavior/'<>c__DisplayClass19_0'::slotIndex
      IL_0022:  ldarg.0
      IL_0023:  ldfld      int32 Game.SubsystemPistonBlockBehavior/'<>c__DisplayClass19_0'::count
      IL_0028:  callvirt   instance int32 Game.IInventory::RemoveSlotItems(int32,
                                                                           int32)
      IL_002d:  pop
      IL_002e:  ldarg.0
      IL_002f:  ldfld      class Game.IInventory Game.SubsystemPistonBlockBehavior/'<>c__DisplayClass19_0'::inventory
      IL_0034:  ldarg.0
      IL_0035:  ldfld      int32 Game.SubsystemPistonBlockBehavior/'<>c__DisplayClass19_0'::slotIndex
      IL_003a:  ldloc.0
      IL_003b:  ldc.i4.1
      IL_003c:  callvirt   instance void Game.IInventory::AddSlotItems(int32,
                                                                       int32,
                                                                       int32)
      IL_0041:  ret
    } // end of method '<>c__DisplayClass19_0'::'<OnEditInventoryItem>b__0'

  } // end of class '<>c__DisplayClass19_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass20_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public int32 data
    .field public int32 'value'
    .field public int32 x
    .field public int32 y
    .field public int32 z
    .field public class Game.SubsystemPistonBlockBehavior '<>4__this'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass20_0'::.ctor

    .method assembly hidebysig instance void 
            '<OnEditBlock>b__0'(int32 newData) cil managed
    {
      // 代码大小       121 (0x79)
      .maxstack  6
      .locals init (int32 V_0,
               class Game.SubsystemElectricity V_1,
               class Game.ElectricElement V_2)
      IL_0000:  ldarg.1
      IL_0001:  ldarg.0
      IL_0002:  ldfld      int32 Game.SubsystemPistonBlockBehavior/'<>c__DisplayClass20_0'::data
      IL_0007:  beq.s      IL_0078

      IL_0009:  ldarg.0
      IL_000a:  ldfld      int32 Game.SubsystemPistonBlockBehavior/'<>c__DisplayClass20_0'::'value'
      IL_000f:  ldarg.1
      IL_0010:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                               int32)
      IL_0015:  stloc.0
      IL_0016:  ldarg.0
      IL_0017:  ldfld      class Game.SubsystemPistonBlockBehavior Game.SubsystemPistonBlockBehavior/'<>c__DisplayClass20_0'::'<>4__this'
      IL_001c:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
      IL_0021:  ldarg.0
      IL_0022:  ldfld      int32 Game.SubsystemPistonBlockBehavior/'<>c__DisplayClass20_0'::x
      IL_0027:  ldarg.0
      IL_0028:  ldfld      int32 Game.SubsystemPistonBlockBehavior/'<>c__DisplayClass20_0'::y
      IL_002d:  ldarg.0
      IL_002e:  ldfld      int32 Game.SubsystemPistonBlockBehavior/'<>c__DisplayClass20_0'::z
      IL_0033:  ldloc.0
      IL_0034:  ldc.i4.1
      IL_0035:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32,
                                                                           bool)
      IL_003a:  ldarg.0
      IL_003b:  ldfld      class Game.SubsystemPistonBlockBehavior Game.SubsystemPistonBlockBehavior/'<>c__DisplayClass20_0'::'<>4__this'
      IL_0040:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
      IL_0045:  ldc.i4.1
      IL_0046:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemElectricity>(bool)
      IL_004b:  stloc.1
      IL_004c:  ldloc.1
      IL_004d:  ldarg.0
      IL_004e:  ldfld      int32 Game.SubsystemPistonBlockBehavior/'<>c__DisplayClass20_0'::x
      IL_0053:  ldarg.0
      IL_0054:  ldfld      int32 Game.SubsystemPistonBlockBehavior/'<>c__DisplayClass20_0'::y
      IL_0059:  ldarg.0
      IL_005a:  ldfld      int32 Game.SubsystemPistonBlockBehavior/'<>c__DisplayClass20_0'::z
      IL_005f:  ldc.i4.0
      IL_0060:  callvirt   instance class Game.ElectricElement Game.SubsystemElectricity::GetElectricElement(int32,
                                                                                                             int32,
                                                                                                             int32,
                                                                                                             int32)
      IL_0065:  stloc.2
      IL_0066:  ldloc.2
      IL_0067:  brfalse.s  IL_0078

      IL_0069:  ldloc.1
      IL_006a:  ldloc.2
      IL_006b:  ldloc.1
      IL_006c:  callvirt   instance int32 Game.SubsystemElectricity::get_CircuitStep()
      IL_0071:  ldc.i4.1
      IL_0072:  add
      IL_0073:  callvirt   instance void Game.SubsystemElectricity::QueueElectricElementForSimulation(class Game.ElectricElement,
                                                                                                      int32)
      IL_0078:  ret
    } // end of method '<>c__DisplayClass20_0'::'<OnEditBlock>b__0'

  } // end of class '<>c__DisplayClass20_0'

  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.SubsystemMovingBlocks m_subsystemMovingBlocks
  .field private bool m_allowPistonHeadRemove
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction> m_actions
  .field private class [System.Collections]System.Collections.Generic.List`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction>> m_tmpActions
  .field private class [Engine]Engine.DynamicArray`1<valuetype Game.MovingBlock> m_movingBlocks
  .field private static literal string IdString = "Piston"
  .field public static literal int32 PistonMaxMovedBlocks = int32(0x00000008)
  .field public static literal int32 PistonMaxExtension = int32(0x00000008)
  .field public static literal int32 PistonMaxSpeedSetting = int32(0x00000003)
  .method public hidebysig instance void 
          AdjustPiston(valuetype [Engine]Engine.Point3 position,
                       int32 length) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  3
    .locals init (class Game.SubsystemPistonBlockBehavior/QueuedAction V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction> Game.SubsystemPistonBlockBehavior::m_actions
    IL_0006:  ldarg.1
    IL_0007:  ldloca.s   V_0
    IL_0009:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction>::TryGetValue(!0,
                                                                                                                                                                                                            !1&)
    IL_000e:  brtrue.s   IL_0023

    IL_0010:  newobj     instance void Game.SubsystemPistonBlockBehavior/QueuedAction::.ctor()
    IL_0015:  stloc.0
    IL_0016:  ldarg.0
    IL_0017:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction> Game.SubsystemPistonBlockBehavior::m_actions
    IL_001c:  ldarg.1
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction>::set_Item(!0,
                                                                                                                                                                                                         !1)
    IL_0023:  ldloc.0
    IL_0024:  ldarg.2
    IL_0025:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_002a:  stfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.SubsystemPistonBlockBehavior/QueuedAction::Move
    IL_002f:  ret
  } // end of method SubsystemPistonBlockBehavior::AdjustPiston

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  ret
  } // end of method SubsystemPistonBlockBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       44 (0x2c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTime Game.SubsystemPistonBlockBehavior::m_subsystemTime
    IL_0006:  ldc.r8     0.125
    IL_000f:  ldc.r8     0.0
    IL_0018:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_001d:  brfalse.s  IL_0025

    IL_001f:  ldarg.0
    IL_0020:  call       instance void Game.SubsystemPistonBlockBehavior::ProcessQueuedActions()
    IL_0025:  ldarg.0
    IL_0026:  call       instance void Game.SubsystemPistonBlockBehavior::UpdateMovableBlocks()
    IL_002b:  ret
  } // end of method SubsystemPistonBlockBehavior::Update

  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  ret
  } // end of method SubsystemPistonBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance bool 
          OnEditInventoryItem(class Game.IInventory inventory,
                              int32 slotIndex) cil managed
  {
    // 代码大小       101 (0x65)
    .maxstack  3
    .locals init (class Game.SubsystemPistonBlockBehavior/'<>c__DisplayClass19_0' V_0)
    IL_0000:  newobj     instance void Game.SubsystemPistonBlockBehavior/'<>c__DisplayClass19_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      class Game.IInventory Game.SubsystemPistonBlockBehavior/'<>c__DisplayClass19_0'::inventory
    IL_000d:  ldloc.0
    IL_000e:  ldarg.2
    IL_000f:  stfld      int32 Game.SubsystemPistonBlockBehavior/'<>c__DisplayClass19_0'::slotIndex
    IL_0014:  ldloc.0
    IL_0015:  ldloc.0
    IL_0016:  ldfld      class Game.IInventory Game.SubsystemPistonBlockBehavior/'<>c__DisplayClass19_0'::inventory
    IL_001b:  ldloc.0
    IL_001c:  ldfld      int32 Game.SubsystemPistonBlockBehavior/'<>c__DisplayClass19_0'::slotIndex
    IL_0021:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_0026:  stfld      int32 Game.SubsystemPistonBlockBehavior/'<>c__DisplayClass19_0'::'value'
    IL_002b:  ldloc.0
    IL_002c:  ldloc.0
    IL_002d:  ldfld      class Game.IInventory Game.SubsystemPistonBlockBehavior/'<>c__DisplayClass19_0'::inventory
    IL_0032:  ldloc.0
    IL_0033:  ldfld      int32 Game.SubsystemPistonBlockBehavior/'<>c__DisplayClass19_0'::slotIndex
    IL_0038:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_003d:  stfld      int32 Game.SubsystemPistonBlockBehavior/'<>c__DisplayClass19_0'::count
    IL_0042:  ldloc.0
    IL_0043:  ldfld      int32 Game.SubsystemPistonBlockBehavior/'<>c__DisplayClass19_0'::'value'
    IL_0048:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_004d:  ldloc.0
    IL_004e:  ldftn      instance void Game.SubsystemPistonBlockBehavior/'<>c__DisplayClass19_0'::'<OnEditInventoryItem>b__0'(int32)
    IL_0054:  newobj     instance void class [System.Runtime]System.Action`1<int32>::.ctor(object,
                                                                                           native int)
    IL_0059:  newobj     instance void Game.EditPistonDialog::.ctor(int32,
                                                                    class [System.Runtime]System.Action`1<int32>)
    IL_005e:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_0063:  ldc.i4.1
    IL_0064:  ret
  } // end of method SubsystemPistonBlockBehavior::OnEditInventoryItem

  .method public hidebysig virtual instance bool 
          OnEditBlock(int32 x,
                      int32 y,
                      int32 z,
                      int32 'value') cil managed
  {
    // 代码大小       89 (0x59)
    .maxstack  3
    .locals init (class Game.SubsystemPistonBlockBehavior/'<>c__DisplayClass20_0' V_0)
    IL_0000:  newobj     instance void Game.SubsystemPistonBlockBehavior/'<>c__DisplayClass20_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class Game.SubsystemPistonBlockBehavior Game.SubsystemPistonBlockBehavior/'<>c__DisplayClass20_0'::'<>4__this'
    IL_000d:  ldloc.0
    IL_000e:  ldarg.s    'value'
    IL_0010:  stfld      int32 Game.SubsystemPistonBlockBehavior/'<>c__DisplayClass20_0'::'value'
    IL_0015:  ldloc.0
    IL_0016:  ldarg.1
    IL_0017:  stfld      int32 Game.SubsystemPistonBlockBehavior/'<>c__DisplayClass20_0'::x
    IL_001c:  ldloc.0
    IL_001d:  ldarg.2
    IL_001e:  stfld      int32 Game.SubsystemPistonBlockBehavior/'<>c__DisplayClass20_0'::y
    IL_0023:  ldloc.0
    IL_0024:  ldarg.3
    IL_0025:  stfld      int32 Game.SubsystemPistonBlockBehavior/'<>c__DisplayClass20_0'::z
    IL_002a:  ldloc.0
    IL_002b:  ldloc.0
    IL_002c:  ldfld      int32 Game.SubsystemPistonBlockBehavior/'<>c__DisplayClass20_0'::'value'
    IL_0031:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0036:  stfld      int32 Game.SubsystemPistonBlockBehavior/'<>c__DisplayClass20_0'::data
    IL_003b:  ldloc.0
    IL_003c:  ldfld      int32 Game.SubsystemPistonBlockBehavior/'<>c__DisplayClass20_0'::data
    IL_0041:  ldloc.0
    IL_0042:  ldftn      instance void Game.SubsystemPistonBlockBehavior/'<>c__DisplayClass20_0'::'<OnEditBlock>b__0'(int32)
    IL_0048:  newobj     instance void class [System.Runtime]System.Action`1<int32>::.ctor(object,
                                                                                           native int)
    IL_004d:  newobj     instance void Game.EditPistonDialog::.ctor(int32,
                                                                    class [System.Runtime]System.Action`1<int32>)
    IL_0052:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_0057:  ldc.i4.1
    IL_0058:  ret
  } // end of method SubsystemPistonBlockBehavior::OnEditBlock

  .method public hidebysig virtual instance void 
          OnBlockRemoved(int32 'value',
                         int32 newValue,
                         int32 x,
                         int32 y,
                         int32 z) cil managed
  {
    // 代码大小       537 (0x219)
    .maxstack  8
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             valuetype [Engine]Engine.Point3 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             valuetype [Engine]Engine.Point3 V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.1
    IL_0008:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_000d:  stloc.1
    IL_000e:  ldloc.0
    IL_000f:  ldc.i4     0xed
    IL_0014:  bne.un     IL_00b3

    IL_0019:  ldarg.0
    IL_001a:  ldarg.3
    IL_001b:  ldarg.s    y
    IL_001d:  ldarg.s    z
    IL_001f:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0024:  call       instance void Game.SubsystemPistonBlockBehavior::StopPiston(valuetype [Engine]Engine.Point3)
    IL_0029:  ldloc.1
    IL_002a:  call       int32 Game.PistonBlock::GetFace(int32)
    IL_002f:  stloc.2
    IL_0030:  ldloc.2
    IL_0031:  call       valuetype [Engine]Engine.Point3 Game.CellFace::FaceToPoint3(int32)
    IL_0036:  stloc.3
    IL_0037:  ldarg.0
    IL_0038:  ldfld      class Game.SubsystemTerrain Game.SubsystemPistonBlockBehavior::m_subsystemTerrain
    IL_003d:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0042:  ldarg.3
    IL_0043:  ldloc.3
    IL_0044:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0049:  add
    IL_004a:  ldarg.s    y
    IL_004c:  ldloc.3
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0052:  add
    IL_0053:  ldarg.s    z
    IL_0055:  ldloc.3
    IL_0056:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_005b:  add
    IL_005c:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0061:  dup
    IL_0062:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0067:  stloc.s    V_4
    IL_0069:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_006e:  stloc.s    V_5
    IL_0070:  ldloc.s    V_4
    IL_0072:  ldc.i4     0xee
    IL_0077:  bne.un     IL_0218

    IL_007c:  ldloc.s    V_5
    IL_007e:  call       int32 Game.PistonHeadBlock::GetFace(int32)
    IL_0083:  ldloc.2
    IL_0084:  bne.un     IL_0218

    IL_0089:  ldarg.0
    IL_008a:  ldfld      class Game.SubsystemTerrain Game.SubsystemPistonBlockBehavior::m_subsystemTerrain
    IL_008f:  ldc.i4.0
    IL_0090:  ldarg.3
    IL_0091:  ldloc.3
    IL_0092:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0097:  add
    IL_0098:  ldarg.s    y
    IL_009a:  ldloc.3
    IL_009b:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00a0:  add
    IL_00a1:  ldarg.s    z
    IL_00a3:  ldloc.3
    IL_00a4:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_00a9:  add
    IL_00aa:  ldc.i4.0
    IL_00ab:  ldc.i4.0
    IL_00ac:  ldc.i4.0
    IL_00ad:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_00b2:  ret

    IL_00b3:  ldloc.0
    IL_00b4:  ldc.i4     0xee
    IL_00b9:  bne.un     IL_0218

    IL_00be:  ldarg.0
    IL_00bf:  ldfld      bool Game.SubsystemPistonBlockBehavior::m_allowPistonHeadRemove
    IL_00c4:  brtrue     IL_0218

    IL_00c9:  ldloc.1
    IL_00ca:  call       int32 Game.PistonHeadBlock::GetFace(int32)
    IL_00cf:  stloc.s    V_6
    IL_00d1:  ldloc.s    V_6
    IL_00d3:  call       valuetype [Engine]Engine.Point3 Game.CellFace::FaceToPoint3(int32)
    IL_00d8:  stloc.s    V_7
    IL_00da:  ldarg.0
    IL_00db:  ldfld      class Game.SubsystemTerrain Game.SubsystemPistonBlockBehavior::m_subsystemTerrain
    IL_00e0:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00e5:  ldarg.3
    IL_00e6:  ldloc.s    V_7
    IL_00e8:  ldfld      int32 [Engine]Engine.Point3::X
    IL_00ed:  add
    IL_00ee:  ldarg.s    y
    IL_00f0:  ldloc.s    V_7
    IL_00f2:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00f7:  add
    IL_00f8:  ldarg.s    z
    IL_00fa:  ldloc.s    V_7
    IL_00fc:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0101:  add
    IL_0102:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0107:  stloc.s    V_8
    IL_0109:  ldarg.0
    IL_010a:  ldfld      class Game.SubsystemTerrain Game.SubsystemPistonBlockBehavior::m_subsystemTerrain
    IL_010f:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0114:  ldarg.3
    IL_0115:  ldloc.s    V_7
    IL_0117:  ldfld      int32 [Engine]Engine.Point3::X
    IL_011c:  sub
    IL_011d:  ldarg.s    y
    IL_011f:  ldloc.s    V_7
    IL_0121:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0126:  sub
    IL_0127:  ldarg.s    z
    IL_0129:  ldloc.s    V_7
    IL_012b:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0130:  sub
    IL_0131:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0136:  ldloc.s    V_8
    IL_0138:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_013d:  stloc.s    V_9
    IL_013f:  dup
    IL_0140:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0145:  stloc.s    V_10
    IL_0147:  ldloc.s    V_8
    IL_0149:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_014e:  stloc.s    V_11
    IL_0150:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0155:  stloc.s    V_12
    IL_0157:  ldloc.s    V_9
    IL_0159:  ldc.i4     0xee
    IL_015e:  bne.un.s   IL_0197

    IL_0160:  ldloc.s    V_11
    IL_0162:  call       int32 Game.PistonHeadBlock::GetFace(int32)
    IL_0167:  ldloc.s    V_6
    IL_0169:  bne.un.s   IL_0197

    IL_016b:  ldarg.0
    IL_016c:  ldfld      class Game.SubsystemTerrain Game.SubsystemPistonBlockBehavior::m_subsystemTerrain
    IL_0171:  ldc.i4.0
    IL_0172:  ldarg.3
    IL_0173:  ldloc.s    V_7
    IL_0175:  ldfld      int32 [Engine]Engine.Point3::X
    IL_017a:  add
    IL_017b:  ldarg.s    y
    IL_017d:  ldloc.s    V_7
    IL_017f:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0184:  add
    IL_0185:  ldarg.s    z
    IL_0187:  ldloc.s    V_7
    IL_0189:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_018e:  add
    IL_018f:  ldc.i4.0
    IL_0190:  ldc.i4.0
    IL_0191:  ldc.i4.0
    IL_0192:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_0197:  ldloc.s    V_10
    IL_0199:  ldc.i4     0xed
    IL_019e:  bne.un.s   IL_01d8

    IL_01a0:  ldloc.s    V_12
    IL_01a2:  call       int32 Game.PistonBlock::GetFace(int32)
    IL_01a7:  ldloc.s    V_6
    IL_01a9:  bne.un.s   IL_01d8

    IL_01ab:  ldarg.0
    IL_01ac:  ldfld      class Game.SubsystemTerrain Game.SubsystemPistonBlockBehavior::m_subsystemTerrain
    IL_01b1:  ldc.i4.0
    IL_01b2:  ldarg.3
    IL_01b3:  ldloc.s    V_7
    IL_01b5:  ldfld      int32 [Engine]Engine.Point3::X
    IL_01ba:  sub
    IL_01bb:  ldarg.s    y
    IL_01bd:  ldloc.s    V_7
    IL_01bf:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_01c4:  sub
    IL_01c5:  ldarg.s    z
    IL_01c7:  ldloc.s    V_7
    IL_01c9:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_01ce:  sub
    IL_01cf:  ldc.i4.0
    IL_01d0:  ldc.i4.0
    IL_01d1:  ldc.i4.0
    IL_01d2:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_01d7:  ret

    IL_01d8:  ldloc.s    V_10
    IL_01da:  ldc.i4     0xee
    IL_01df:  bne.un.s   IL_0218

    IL_01e1:  ldloc.s    V_12
    IL_01e3:  call       int32 Game.PistonHeadBlock::GetFace(int32)
    IL_01e8:  ldloc.s    V_6
    IL_01ea:  bne.un.s   IL_0218

    IL_01ec:  ldarg.0
    IL_01ed:  ldfld      class Game.SubsystemTerrain Game.SubsystemPistonBlockBehavior::m_subsystemTerrain
    IL_01f2:  ldc.i4.0
    IL_01f3:  ldarg.3
    IL_01f4:  ldloc.s    V_7
    IL_01f6:  ldfld      int32 [Engine]Engine.Point3::X
    IL_01fb:  sub
    IL_01fc:  ldarg.s    y
    IL_01fe:  ldloc.s    V_7
    IL_0200:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0205:  sub
    IL_0206:  ldarg.s    z
    IL_0208:  ldloc.s    V_7
    IL_020a:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_020f:  sub
    IL_0210:  ldc.i4.0
    IL_0211:  ldc.i4.0
    IL_0212:  ldc.i4.0
    IL_0213:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_0218:  ret
  } // end of method SubsystemPistonBlockBehavior::OnBlockRemoved

  .method public hidebysig virtual instance void 
          OnChunkDiscarding(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       157 (0x9d)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.BoundingBox V_0,
             class [Engine]Engine.DynamicArray`1<class Game.IMovingBlockSet> V_1,
             valuetype [Engine]Engine.DynamicArray`1/Enumerator<class Game.IMovingBlockSet> V_2,
             class Game.IMovingBlockSet V_3)
    IL_0000:  ldloca.s   V_0
    IL_0002:  ldarg.1
    IL_0003:  ldflda     valuetype [Engine]Engine.BoundingBox Game.TerrainChunk::BoundingBox
    IL_0008:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_000d:  ldc.r4     16.
    IL_0012:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_0017:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_001c:  ldarg.1
    IL_001d:  ldflda     valuetype [Engine]Engine.BoundingBox Game.TerrainChunk::BoundingBox
    IL_0022:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0027:  ldc.r4     16.
    IL_002c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_0031:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0036:  call       instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_003b:  newobj     instance void class [Engine]Engine.DynamicArray`1<class Game.IMovingBlockSet>::.ctor()
    IL_0040:  stloc.1
    IL_0041:  ldarg.0
    IL_0042:  ldfld      class Game.SubsystemMovingBlocks Game.SubsystemPistonBlockBehavior::m_subsystemMovingBlocks
    IL_0047:  ldloc.0
    IL_0048:  ldc.i4.0
    IL_0049:  ldloc.1
    IL_004a:  callvirt   instance void Game.SubsystemMovingBlocks::FindMovingBlocks(valuetype [Engine]Engine.BoundingBox,
                                                                                    bool,
                                                                                    class [Engine]Engine.DynamicArray`1<class Game.IMovingBlockSet>)
    IL_004f:  ldloc.1
    IL_0050:  callvirt   instance valuetype [Engine]Engine.DynamicArray`1/Enumerator<!0> class [Engine]Engine.DynamicArray`1<class Game.IMovingBlockSet>::GetEnumerator()
    IL_0055:  stloc.2
    .try
    {
      IL_0056:  br.s       IL_0083

      IL_0058:  ldloca.s   V_2
      IL_005a:  call       instance !0 valuetype [Engine]Engine.DynamicArray`1/Enumerator<class Game.IMovingBlockSet>::get_Current()
      IL_005f:  stloc.3
      IL_0060:  ldloc.3
      IL_0061:  callvirt   instance string Game.IMovingBlockSet::get_Id()
      IL_0066:  ldstr      "Piston"
      IL_006b:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0070:  brfalse.s  IL_0083

      IL_0072:  ldarg.0
      IL_0073:  ldloc.3
      IL_0074:  callvirt   instance object Game.IMovingBlockSet::get_Tag()
      IL_0079:  unbox.any  [Engine]Engine.Point3
      IL_007e:  call       instance void Game.SubsystemPistonBlockBehavior::StopPiston(valuetype [Engine]Engine.Point3)
      IL_0083:  ldloca.s   V_2
      IL_0085:  call       instance bool valuetype [Engine]Engine.DynamicArray`1/Enumerator<class Game.IMovingBlockSet>::MoveNext()
      IL_008a:  brtrue.s   IL_0058

      IL_008c:  leave.s    IL_009c

    }  // end .try
    finally
    {
      IL_008e:  ldloca.s   V_2
      IL_0090:  constrained. valuetype [Engine]Engine.DynamicArray`1/Enumerator<class Game.IMovingBlockSet>
      IL_0096:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_009b:  endfinally
    }  // end handler
    IL_009c:  ret
  } // end of method SubsystemPistonBlockBehavior::OnChunkDiscarding

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       126 (0x7e)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_0014:  stfld      class Game.SubsystemTime Game.SubsystemPistonBlockBehavior::m_subsystemTime
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0020:  ldc.i4.1
    IL_0021:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0026:  stfld      class Game.SubsystemTerrain Game.SubsystemPistonBlockBehavior::m_subsystemTerrain
    IL_002b:  ldarg.0
    IL_002c:  ldarg.0
    IL_002d:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0032:  ldc.i4.1
    IL_0033:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0038:  stfld      class Game.SubsystemAudio Game.SubsystemPistonBlockBehavior::m_subsystemAudio
    IL_003d:  ldarg.0
    IL_003e:  ldarg.0
    IL_003f:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0044:  ldc.i4.1
    IL_0045:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemMovingBlocks>(bool)
    IL_004a:  stfld      class Game.SubsystemMovingBlocks Game.SubsystemPistonBlockBehavior::m_subsystemMovingBlocks
    IL_004f:  ldarg.0
    IL_0050:  ldfld      class Game.SubsystemMovingBlocks Game.SubsystemPistonBlockBehavior::m_subsystemMovingBlocks
    IL_0055:  ldarg.0
    IL_0056:  ldftn      instance void Game.SubsystemPistonBlockBehavior::MovingBlocksStopped(class Game.IMovingBlockSet)
    IL_005c:  newobj     instance void class [System.Runtime]System.Action`1<class Game.IMovingBlockSet>::.ctor(object,
                                                                                                                native int)
    IL_0061:  callvirt   instance void Game.SubsystemMovingBlocks::add_Stopped(class [System.Runtime]System.Action`1<class Game.IMovingBlockSet>)
    IL_0066:  ldarg.0
    IL_0067:  ldfld      class Game.SubsystemMovingBlocks Game.SubsystemPistonBlockBehavior::m_subsystemMovingBlocks
    IL_006c:  ldarg.0
    IL_006d:  ldftn      instance void Game.SubsystemPistonBlockBehavior::MovingBlocksCollidedWithTerrain(class Game.IMovingBlockSet,
                                                                                                          valuetype [Engine]Engine.Point3)
    IL_0073:  newobj     instance void class [System.Runtime]System.Action`2<class Game.IMovingBlockSet,valuetype [Engine]Engine.Point3>::.ctor(object,
                                                                                                                                                native int)
    IL_0078:  callvirt   instance void Game.SubsystemMovingBlocks::add_CollidedWithTerrain(class [System.Runtime]System.Action`2<class Game.IMovingBlockSet,valuetype [Engine]Engine.Point3>)
    IL_007d:  ret
  } // end of method SubsystemPistonBlockBehavior::Load

  .method private hidebysig instance void 
          ProcessQueuedActions() cil managed
  {
    // 代码大小       584 (0x248)
    .maxstack  5
    .locals init (valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction>> V_0,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction> V_1,
             valuetype [Engine]Engine.Point3 V_2,
             class Game.SubsystemPistonBlockBehavior/QueuedAction V_3,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction> V_4,
             valuetype [Engine]Engine.Point3 V_5,
             class Game.SubsystemPistonBlockBehavior/QueuedAction V_6,
             bool V_7,
             int32 V_8,
             int32 V_9,
             class Game.TerrainChunk V_10,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction> V_11,
             valuetype [Engine]Engine.Point3 V_12,
             class Game.SubsystemPistonBlockBehavior/QueuedAction V_13)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction>> Game.SubsystemPistonBlockBehavior::m_tmpActions
    IL_0006:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction>>::Clear()
    IL_000b:  ldarg.0
    IL_000c:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction>> Game.SubsystemPistonBlockBehavior::m_tmpActions
    IL_0011:  ldarg.0
    IL_0012:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction> Game.SubsystemPistonBlockBehavior::m_actions
    IL_0017:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction>>::AddRange(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
    IL_001c:  ldarg.0
    IL_001d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction>> Game.SubsystemPistonBlockBehavior::m_tmpActions
    IL_0022:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction>>::GetEnumerator()
    IL_0027:  stloc.0
    .try
    {
      IL_0028:  br         IL_00b0

      IL_002d:  ldloca.s   V_0
      IL_002f:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction>>::get_Current()
      IL_0034:  stloc.1
      IL_0035:  ldloca.s   V_1
      IL_0037:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction>::get_Key()
      IL_003c:  stloc.2
      IL_003d:  ldloca.s   V_1
      IL_003f:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction>::get_Value()
      IL_0044:  stloc.3
      IL_0045:  ldarg.0
      IL_0046:  ldfld      class Game.SubsystemTerrain Game.SubsystemPistonBlockBehavior::m_subsystemTerrain
      IL_004b:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_0050:  ldloc.2
      IL_0051:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0056:  ldloc.2
      IL_0057:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_005c:  ldloc.2
      IL_005d:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0062:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                         int32,
                                                                         int32)
      IL_0067:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_006c:  ldc.i4     0xed
      IL_0071:  beq.s      IL_008f

      IL_0073:  ldarg.0
      IL_0074:  ldloc.2
      IL_0075:  call       instance void Game.SubsystemPistonBlockBehavior::StopPiston(valuetype [Engine]Engine.Point3)
      IL_007a:  ldloc.3
      IL_007b:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.SubsystemPistonBlockBehavior/QueuedAction::Move
      IL_0080:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
      IL_0086:  ldloc.3
      IL_0087:  ldc.i4.0
      IL_0088:  stfld      bool Game.SubsystemPistonBlockBehavior/QueuedAction::Stop
      IL_008d:  br.s       IL_00b0

      IL_008f:  ldloc.3
      IL_0090:  ldfld      bool Game.SubsystemPistonBlockBehavior/QueuedAction::Stop
      IL_0095:  brfalse.s  IL_00b0

      IL_0097:  ldarg.0
      IL_0098:  ldloc.2
      IL_0099:  call       instance void Game.SubsystemPistonBlockBehavior::StopPiston(valuetype [Engine]Engine.Point3)
      IL_009e:  ldloc.3
      IL_009f:  ldc.i4.0
      IL_00a0:  stfld      bool Game.SubsystemPistonBlockBehavior/QueuedAction::Stop
      IL_00a5:  ldloc.3
      IL_00a6:  call       int32 [Engine]Engine.Time::get_FrameIndex()
      IL_00ab:  stfld      int32 Game.SubsystemPistonBlockBehavior/QueuedAction::StoppedFrame
      IL_00b0:  ldloca.s   V_0
      IL_00b2:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction>>::MoveNext()
      IL_00b7:  brtrue     IL_002d

      IL_00bc:  leave.s    IL_00cc

    }  // end .try
    finally
    {
      IL_00be:  ldloca.s   V_0
      IL_00c0:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction>>
      IL_00c6:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00cb:  endfinally
    }  // end handler
    IL_00cc:  ldarg.0
    IL_00cd:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction>> Game.SubsystemPistonBlockBehavior::m_tmpActions
    IL_00d2:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction>>::GetEnumerator()
    IL_00d7:  stloc.0
    .try
    {
      IL_00d8:  br         IL_01c4

      IL_00dd:  ldloca.s   V_0
      IL_00df:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction>>::get_Current()
      IL_00e4:  stloc.s    V_4
      IL_00e6:  ldloca.s   V_4
      IL_00e8:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction>::get_Key()
      IL_00ed:  stloc.s    V_5
      IL_00ef:  ldloca.s   V_4
      IL_00f1:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction>::get_Value()
      IL_00f6:  stloc.s    V_6
      IL_00f8:  ldloc.s    V_6
      IL_00fa:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.SubsystemPistonBlockBehavior/QueuedAction::Move
      IL_00ff:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
      IL_0104:  brfalse    IL_01c4

      IL_0109:  ldloc.s    V_6
      IL_010b:  ldfld      bool Game.SubsystemPistonBlockBehavior/QueuedAction::Stop
      IL_0110:  brtrue     IL_01c4

      IL_0115:  call       int32 [Engine]Engine.Time::get_FrameIndex()
      IL_011a:  ldloc.s    V_6
      IL_011c:  ldfld      int32 Game.SubsystemPistonBlockBehavior/QueuedAction::StoppedFrame
      IL_0121:  beq        IL_01c4

      IL_0126:  ldarg.0
      IL_0127:  ldfld      class Game.SubsystemMovingBlocks Game.SubsystemPistonBlockBehavior::m_subsystemMovingBlocks
      IL_012c:  ldstr      "Piston"
      IL_0131:  ldloc.s    V_5
      IL_0133:  box        [Engine]Engine.Point3
      IL_0138:  callvirt   instance class Game.IMovingBlockSet Game.SubsystemMovingBlocks::FindMovingBlocks(string,
                                                                                                            object)
      IL_013d:  brtrue     IL_01c4

      IL_0142:  ldc.i4.1
      IL_0143:  stloc.s    V_7
      IL_0145:  ldc.i4.m1
      IL_0146:  stloc.s    V_8
      IL_0148:  br.s       IL_0198

      IL_014a:  ldc.i4.m1
      IL_014b:  stloc.s    V_9
      IL_014d:  br.s       IL_018d

      IL_014f:  ldarg.0
      IL_0150:  ldfld      class Game.SubsystemTerrain Game.SubsystemPistonBlockBehavior::m_subsystemTerrain
      IL_0155:  ldloc.s    V_5
      IL_0157:  ldfld      int32 [Engine]Engine.Point3::X
      IL_015c:  ldloc.s    V_8
      IL_015e:  ldc.i4.s   16
      IL_0160:  mul
      IL_0161:  add
      IL_0162:  ldloc.s    V_5
      IL_0164:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0169:  ldloc.s    V_9
      IL_016b:  ldc.i4.s   16
      IL_016d:  mul
      IL_016e:  add
      IL_016f:  callvirt   instance class Game.TerrainChunk Game.SubsystemTerrain::CellToChunk(int32,
                                                                                               int32)
      IL_0174:  stloc.s    V_10
      IL_0176:  ldloc.s    V_10
      IL_0178:  brfalse.s  IL_0184

      IL_017a:  ldloc.s    V_10
      IL_017c:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
      IL_0181:  ldc.i4.4
      IL_0182:  bgt.s      IL_0187

      IL_0184:  ldc.i4.0
      IL_0185:  stloc.s    V_7
      IL_0187:  ldloc.s    V_9
      IL_0189:  ldc.i4.1
      IL_018a:  add
      IL_018b:  stloc.s    V_9
      IL_018d:  ldloc.s    V_9
      IL_018f:  ldc.i4.1
      IL_0190:  ble.s      IL_014f

      IL_0192:  ldloc.s    V_8
      IL_0194:  ldc.i4.1
      IL_0195:  add
      IL_0196:  stloc.s    V_8
      IL_0198:  ldloc.s    V_8
      IL_019a:  ldc.i4.1
      IL_019b:  ble.s      IL_014a

      IL_019d:  ldloc.s    V_7
      IL_019f:  brfalse.s  IL_01c4

      IL_01a1:  ldarg.0
      IL_01a2:  ldloc.s    V_5
      IL_01a4:  ldloc.s    V_6
      IL_01a6:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.SubsystemPistonBlockBehavior/QueuedAction::Move
      IL_01ab:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
      IL_01b0:  call       instance bool Game.SubsystemPistonBlockBehavior::MovePiston(valuetype [Engine]Engine.Point3,
                                                                                       int32)
      IL_01b5:  brfalse.s  IL_01c4

      IL_01b7:  ldloc.s    V_6
      IL_01b9:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.SubsystemPistonBlockBehavior/QueuedAction::Move
      IL_01be:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
      IL_01c4:  ldloca.s   V_0
      IL_01c6:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction>>::MoveNext()
      IL_01cb:  brtrue     IL_00dd

      IL_01d0:  leave.s    IL_01e0

    }  // end .try
    finally
    {
      IL_01d2:  ldloca.s   V_0
      IL_01d4:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction>>
      IL_01da:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01df:  endfinally
    }  // end handler
    IL_01e0:  ldarg.0
    IL_01e1:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction>> Game.SubsystemPistonBlockBehavior::m_tmpActions
    IL_01e6:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction>>::GetEnumerator()
    IL_01eb:  stloc.0
    .try
    {
      IL_01ec:  br.s       IL_022e

      IL_01ee:  ldloca.s   V_0
      IL_01f0:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction>>::get_Current()
      IL_01f5:  stloc.s    V_11
      IL_01f7:  ldloca.s   V_11
      IL_01f9:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction>::get_Key()
      IL_01fe:  stloc.s    V_12
      IL_0200:  ldloca.s   V_11
      IL_0202:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction>::get_Value()
      IL_0207:  stloc.s    V_13
      IL_0209:  ldloc.s    V_13
      IL_020b:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.SubsystemPistonBlockBehavior/QueuedAction::Move
      IL_0210:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
      IL_0215:  brtrue.s   IL_022e

      IL_0217:  ldloc.s    V_13
      IL_0219:  ldfld      bool Game.SubsystemPistonBlockBehavior/QueuedAction::Stop
      IL_021e:  brtrue.s   IL_022e

      IL_0220:  ldarg.0
      IL_0221:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction> Game.SubsystemPistonBlockBehavior::m_actions
      IL_0226:  ldloc.s    V_12
      IL_0228:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction>::Remove(!0)
      IL_022d:  pop
      IL_022e:  ldloca.s   V_0
      IL_0230:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction>>::MoveNext()
      IL_0235:  brtrue.s   IL_01ee

      IL_0237:  leave.s    IL_0247

    }  // end .try
    finally
    {
      IL_0239:  ldloca.s   V_0
      IL_023b:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction>>
      IL_0241:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0246:  endfinally
    }  // end handler
    IL_0247:  ret
  } // end of method SubsystemPistonBlockBehavior::ProcessQueuedActions

  .method private hidebysig instance void 
          UpdateMovableBlocks() cil managed
  {
    // 代码大小       520 (0x208)
    .maxstack  6
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.IMovingBlockSet> V_0,
             class Game.IMovingBlockSet V_1,
             valuetype [Engine]Engine.Point3 V_2,
             int32 V_3,
             valuetype Game.PistonMode V_4,
             int32 V_5,
             valuetype [Engine]Engine.Point3 V_6,
             int32 V_7,
             float32 V_8,
             float32 V_9,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype Game.MovingBlock> V_10,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.MovingBlock> V_11,
             valuetype Game.MovingBlock V_12)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemMovingBlocks Game.SubsystemPistonBlockBehavior::m_subsystemMovingBlocks
    IL_0006:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.IMovingBlockSet> Game.SubsystemMovingBlocks::get_MovingBlockSets()
    IL_000b:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.IMovingBlockSet>::GetEnumerator()
    IL_0010:  stloc.0
    .try
    {
      IL_0011:  br         IL_01f0

      IL_0016:  ldloc.0
      IL_0017:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.IMovingBlockSet>::get_Current()
      IL_001c:  stloc.1
      IL_001d:  ldloc.1
      IL_001e:  callvirt   instance string Game.IMovingBlockSet::get_Id()
      IL_0023:  ldstr      "Piston"
      IL_0028:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_002d:  brfalse    IL_01f0

      IL_0032:  ldloc.1
      IL_0033:  callvirt   instance object Game.IMovingBlockSet::get_Tag()
      IL_0038:  unbox.any  [Engine]Engine.Point3
      IL_003d:  stloc.2
      IL_003e:  ldarg.0
      IL_003f:  ldfld      class Game.SubsystemTerrain Game.SubsystemPistonBlockBehavior::m_subsystemTerrain
      IL_0044:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_0049:  ldloc.2
      IL_004a:  ldfld      int32 [Engine]Engine.Point3::X
      IL_004f:  ldloc.2
      IL_0050:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_0055:  ldloc.2
      IL_0056:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_005b:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                         int32,
                                                                         int32)
      IL_0060:  stloc.3
      IL_0061:  ldloc.3
      IL_0062:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_0067:  ldc.i4     0xed
      IL_006c:  bne.un     IL_01f0

      IL_0071:  ldloc.3
      IL_0072:  call       int32 Game.TerrainData::ExtractData(int32)
      IL_0077:  dup
      IL_0078:  call       valuetype Game.PistonMode Game.PistonBlock::GetMode(int32)
      IL_007d:  stloc.s    V_4
      IL_007f:  call       int32 Game.PistonBlock::GetFace(int32)
      IL_0084:  stloc.s    V_5
      IL_0086:  ldloc.s    V_5
      IL_0088:  call       valuetype [Engine]Engine.Point3 Game.CellFace::FaceToPoint3(int32)
      IL_008d:  stloc.s    V_6
      IL_008f:  ldc.i4     0x7fffffff
      IL_0094:  stloc.s    V_7
      IL_0096:  ldloc.1
      IL_0097:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.MovingBlock> Game.IMovingBlockSet::get_Blocks()
      IL_009c:  stloc.s    V_11
      IL_009e:  ldloca.s   V_11
      IL_00a0:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.MovingBlock>::GetEnumerator()
      IL_00a5:  stloc.s    V_10
      .try
      {
        IL_00a7:  br.s       IL_00f9

        IL_00a9:  ldloca.s   V_10
        IL_00ab:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype Game.MovingBlock>::get_Current()
        IL_00b0:  stloc.s    V_12
        IL_00b2:  ldloc.s    V_7
        IL_00b4:  ldloc.s    V_12
        IL_00b6:  ldfld      valuetype [Engine]Engine.Point3 Game.MovingBlock::Offset
        IL_00bb:  ldfld      int32 [Engine]Engine.Point3::X
        IL_00c0:  ldloc.s    V_6
        IL_00c2:  ldfld      int32 [Engine]Engine.Point3::X
        IL_00c7:  mul
        IL_00c8:  ldloc.s    V_12
        IL_00ca:  ldfld      valuetype [Engine]Engine.Point3 Game.MovingBlock::Offset
        IL_00cf:  ldfld      int32 [Engine]Engine.Point3::Y
        IL_00d4:  ldloc.s    V_6
        IL_00d6:  ldfld      int32 [Engine]Engine.Point3::Y
        IL_00db:  mul
        IL_00dc:  add
        IL_00dd:  ldloc.s    V_12
        IL_00df:  ldfld      valuetype [Engine]Engine.Point3 Game.MovingBlock::Offset
        IL_00e4:  ldfld      int32 [Engine]Engine.Point3::Z
        IL_00e9:  ldloc.s    V_6
        IL_00eb:  ldfld      int32 [Engine]Engine.Point3::Z
        IL_00f0:  mul
        IL_00f1:  add
        IL_00f2:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                                 int32)
        IL_00f7:  stloc.s    V_7
        IL_00f9:  ldloca.s   V_10
        IL_00fb:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype Game.MovingBlock>::MoveNext()
        IL_0100:  brtrue.s   IL_00a9

        IL_0102:  leave.s    IL_0112

      }  // end .try
      finally
      {
        IL_0104:  ldloca.s   V_10
        IL_0106:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype Game.MovingBlock>
        IL_010c:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_0111:  endfinally
      }  // end handler
      IL_0112:  ldloc.1
      IL_0113:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.IMovingBlockSet::get_Position()
      IL_0118:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_011d:  ldloc.s    V_6
      IL_011f:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0124:  conv.r4
      IL_0125:  mul
      IL_0126:  ldloc.1
      IL_0127:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.IMovingBlockSet::get_Position()
      IL_012c:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0131:  ldloc.s    V_6
      IL_0133:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_0138:  conv.r4
      IL_0139:  mul
      IL_013a:  add
      IL_013b:  ldloc.1
      IL_013c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.IMovingBlockSet::get_Position()
      IL_0141:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0146:  ldloc.s    V_6
      IL_0148:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_014d:  conv.r4
      IL_014e:  mul
      IL_014f:  add
      IL_0150:  stloc.s    V_8
      IL_0152:  ldloc.2
      IL_0153:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0158:  ldloc.s    V_6
      IL_015a:  ldfld      int32 [Engine]Engine.Point3::X
      IL_015f:  mul
      IL_0160:  ldloc.2
      IL_0161:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_0166:  ldloc.s    V_6
      IL_0168:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_016d:  mul
      IL_016e:  add
      IL_016f:  ldloc.2
      IL_0170:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0175:  ldloc.s    V_6
      IL_0177:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_017c:  mul
      IL_017d:  add
      IL_017e:  conv.r4
      IL_017f:  stloc.s    V_9
      IL_0181:  ldloc.s    V_8
      IL_0183:  ldloc.s    V_9
      IL_0185:  ble.un.s   IL_01ca

      IL_0187:  ldloc.s    V_7
      IL_0189:  conv.r4
      IL_018a:  ldloc.s    V_8
      IL_018c:  add
      IL_018d:  ldloc.s    V_9
      IL_018f:  sub
      IL_0190:  ldc.r4     1.
      IL_0195:  ble.un.s   IL_01f0

      IL_0197:  ldloc.1
      IL_0198:  ldloc.s    V_6
      IL_019a:  ldloc.s    V_7
      IL_019c:  ldc.i4.1
      IL_019d:  sub
      IL_019e:  call       valuetype [Engine]Engine.Point3 [Engine]Engine.Point3::op_Multiply(valuetype [Engine]Engine.Point3,
                                                                                              int32)
      IL_01a3:  ldc.i4     0xee
      IL_01a8:  ldc.i4.0
      IL_01a9:  ldc.i4.0
      IL_01aa:  ldloc.s    V_4
      IL_01ac:  call       int32 Game.PistonHeadBlock::SetMode(int32,
                                                               valuetype Game.PistonMode)
      IL_01b1:  ldc.i4.1
      IL_01b2:  call       int32 Game.PistonHeadBlock::SetIsShaft(int32,
                                                                  bool)
      IL_01b7:  ldloc.s    V_5
      IL_01b9:  call       int32 Game.PistonHeadBlock::SetFace(int32,
                                                               int32)
      IL_01be:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_01c3:  callvirt   instance void Game.IMovingBlockSet::SetBlock(valuetype [Engine]Engine.Point3,
                                                                        int32)
      IL_01c8:  br.s       IL_01f0

      IL_01ca:  ldloc.s    V_8
      IL_01cc:  ldloc.s    V_9
      IL_01ce:  bge.un.s   IL_01f0

      IL_01d0:  ldloc.s    V_7
      IL_01d2:  conv.r4
      IL_01d3:  ldloc.s    V_8
      IL_01d5:  add
      IL_01d6:  ldloc.s    V_9
      IL_01d8:  sub
      IL_01d9:  ldc.r4     0.0
      IL_01de:  bgt.un.s   IL_01f0

      IL_01e0:  ldloc.1
      IL_01e1:  ldloc.s    V_6
      IL_01e3:  ldloc.s    V_7
      IL_01e5:  call       valuetype [Engine]Engine.Point3 [Engine]Engine.Point3::op_Multiply(valuetype [Engine]Engine.Point3,
                                                                                              int32)
      IL_01ea:  ldc.i4.0
      IL_01eb:  callvirt   instance void Game.IMovingBlockSet::SetBlock(valuetype [Engine]Engine.Point3,
                                                                        int32)
      IL_01f0:  ldloc.0
      IL_01f1:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_01f6:  brtrue     IL_0016

      IL_01fb:  leave.s    IL_0207

    }  // end .try
    finally
    {
      IL_01fd:  ldloc.0
      IL_01fe:  brfalse.s  IL_0206

      IL_0200:  ldloc.0
      IL_0201:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0206:  endfinally
    }  // end handler
    IL_0207:  ret
  } // end of method SubsystemPistonBlockBehavior::UpdateMovableBlocks

  .method private hidebysig instance void 
          GetSpeedAndSmoothness(int32 pistonSpeed,
                                [out] float32& speed,
                                [out] valuetype [Engine]Engine.Vector2& smoothness) cil managed
  {
    // 代码大小       136 (0x88)
    .maxstack  3
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.1
    IL_0002:  sub
    IL_0003:  switch     ( 
                          IL_0031,
                          IL_004e,
                          IL_006b)
    IL_0014:  ldarg.2
    IL_0015:  ldc.r4     5.
    IL_001a:  stind.r4
    IL_001b:  ldarg.3
    IL_001c:  ldc.r4     0.0
    IL_0021:  ldc.r4     0.5
    IL_0026:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_002b:  stobj      [Engine]Engine.Vector2
    IL_0030:  ret

    IL_0031:  ldarg.2
    IL_0032:  ldc.r4     4.5
    IL_0037:  stind.r4
    IL_0038:  ldarg.3
    IL_0039:  ldc.r4     0.60000002
    IL_003e:  ldc.r4     0.60000002
    IL_0043:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0048:  stobj      [Engine]Engine.Vector2
    IL_004d:  ret

    IL_004e:  ldarg.2
    IL_004f:  ldc.r4     4.
    IL_0054:  stind.r4
    IL_0055:  ldarg.3
    IL_0056:  ldc.r4     0.89999998
    IL_005b:  ldc.r4     0.89999998
    IL_0060:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0065:  stobj      [Engine]Engine.Vector2
    IL_006a:  ret

    IL_006b:  ldarg.2
    IL_006c:  ldc.r4     3.5
    IL_0071:  stind.r4
    IL_0072:  ldarg.3
    IL_0073:  ldc.r4     1.2
    IL_0078:  ldc.r4     1.2
    IL_007d:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0082:  stobj      [Engine]Engine.Vector2
    IL_0087:  ret
  } // end of method SubsystemPistonBlockBehavior::GetSpeedAndSmoothness

  .method private hidebysig instance bool 
          MovePiston(valuetype [Engine]Engine.Point3 position,
                     int32 length) cil managed
  {
    // 代码大小       1429 (0x595)
    .maxstack  11
    .locals init (class Game.TerrainData V_0,
             int32 V_1,
             int32 V_2,
             valuetype Game.PistonMode V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             valuetype [Engine]Engine.Point3 V_7,
             int32 V_8,
             valuetype [Engine]Engine.Point3 V_9,
             int32 V_10,
             int32 V_11,
             valuetype Game.MovingBlock V_12,
             int32 V_13,
             int32 V_14,
             bool V_15,
             float32 V_16,
             valuetype [Engine]Engine.Vector2 V_17,
             valuetype [Engine]Engine.Point3 V_18,
             valuetype [Engine]Engine.DynamicArray`1/Enumerator<valuetype Game.MovingBlock> V_19,
             valuetype Game.MovingBlock V_20,
             float32 V_21,
             valuetype [Engine]Engine.Vector2 V_22,
             float32 V_23,
             valuetype [Engine]Engine.Vector3 V_24,
             int32 V_25,
             int32 V_26,
             int32 V_27,
             bool V_28,
             valuetype Game.MovingBlock V_29)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemPistonBlockBehavior::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldarg.1
    IL_000e:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0013:  ldarg.1
    IL_0014:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0019:  ldarg.1
    IL_001a:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_001f:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0024:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0029:  stloc.1
    IL_002a:  ldloc.1
    IL_002b:  call       int32 Game.PistonBlock::GetFace(int32)
    IL_0030:  stloc.2
    IL_0031:  ldloc.1
    IL_0032:  call       valuetype Game.PistonMode Game.PistonBlock::GetMode(int32)
    IL_0037:  stloc.3
    IL_0038:  ldloc.1
    IL_0039:  call       int32 Game.PistonBlock::GetMaxExtension(int32)
    IL_003e:  stloc.s    V_4
    IL_0040:  ldloc.1
    IL_0041:  call       int32 Game.PistonBlock::GetPullCount(int32)
    IL_0046:  stloc.s    V_5
    IL_0048:  ldloc.1
    IL_0049:  call       int32 Game.PistonBlock::GetSpeed(int32)
    IL_004e:  stloc.s    V_6
    IL_0050:  ldloc.2
    IL_0051:  call       valuetype [Engine]Engine.Point3 Game.CellFace::FaceToPoint3(int32)
    IL_0056:  stloc.s    V_7
    IL_0058:  ldarg.2
    IL_0059:  ldc.i4.0
    IL_005a:  ldloc.s    V_4
    IL_005c:  ldc.i4.1
    IL_005d:  add
    IL_005e:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_0063:  starg.s    length
    IL_0065:  ldc.i4.0
    IL_0066:  stloc.s    V_8
    IL_0068:  ldarg.0
    IL_0069:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.MovingBlock> Game.SubsystemPistonBlockBehavior::m_movingBlocks
    IL_006e:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.MovingBlock>::Clear()
    IL_0073:  ldloc.s    V_7
    IL_0075:  stloc.s    V_9
    IL_0077:  br         IL_0107

    IL_007c:  ldloc.0
    IL_007d:  ldarg.1
    IL_007e:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0083:  ldloc.s    V_9
    IL_0085:  ldfld      int32 [Engine]Engine.Point3::X
    IL_008a:  add
    IL_008b:  ldarg.1
    IL_008c:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0091:  ldloc.s    V_9
    IL_0093:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0098:  add
    IL_0099:  ldarg.1
    IL_009a:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_009f:  ldloc.s    V_9
    IL_00a1:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_00a6:  add
    IL_00a7:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_00ac:  stloc.s    V_10
    IL_00ae:  ldloc.s    V_10
    IL_00b0:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_00b5:  ldloc.s    V_10
    IL_00b7:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_00bc:  call       int32 Game.PistonHeadBlock::GetFace(int32)
    IL_00c1:  stloc.s    V_11
    IL_00c3:  ldc.i4     0xee
    IL_00c8:  bne.un.s   IL_0118

    IL_00ca:  ldloc.s    V_11
    IL_00cc:  ldloc.2
    IL_00cd:  bne.un.s   IL_0118

    IL_00cf:  ldarg.0
    IL_00d0:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.MovingBlock> Game.SubsystemPistonBlockBehavior::m_movingBlocks
    IL_00d5:  ldloca.s   V_12
    IL_00d7:  initobj    Game.MovingBlock
    IL_00dd:  ldloca.s   V_12
    IL_00df:  ldloc.s    V_9
    IL_00e1:  stfld      valuetype [Engine]Engine.Point3 Game.MovingBlock::Offset
    IL_00e6:  ldloca.s   V_12
    IL_00e8:  ldloc.s    V_10
    IL_00ea:  stfld      int32 Game.MovingBlock::Value
    IL_00ef:  ldloc.s    V_12
    IL_00f1:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.MovingBlock>::Add(!0)
    IL_00f6:  ldloc.s    V_9
    IL_00f8:  ldloc.s    V_7
    IL_00fa:  call       valuetype [Engine]Engine.Point3 [Engine]Engine.Point3::op_Addition(valuetype [Engine]Engine.Point3,
                                                                                            valuetype [Engine]Engine.Point3)
    IL_00ff:  stloc.s    V_9
    IL_0101:  ldloc.s    V_8
    IL_0103:  ldc.i4.1
    IL_0104:  add
    IL_0105:  stloc.s    V_8
    IL_0107:  ldarg.0
    IL_0108:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.MovingBlock> Game.SubsystemPistonBlockBehavior::m_movingBlocks
    IL_010d:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.MovingBlock>::get_Count()
    IL_0112:  ldc.i4.8
    IL_0113:  blt        IL_007c

    IL_0118:  ldarg.2
    IL_0119:  ldloc.s    V_8
    IL_011b:  ble        IL_039f

    IL_0120:  ldarg.0
    IL_0121:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.MovingBlock> Game.SubsystemPistonBlockBehavior::m_movingBlocks
    IL_0126:  ldloca.s   V_12
    IL_0128:  initobj    Game.MovingBlock
    IL_012e:  ldloca.s   V_12
    IL_0130:  ldsfld     valuetype [Engine]Engine.Point3 [Engine]Engine.Point3::Zero
    IL_0135:  stfld      valuetype [Engine]Engine.Point3 Game.MovingBlock::Offset
    IL_013a:  ldloca.s   V_12
    IL_013c:  ldc.i4     0xee
    IL_0141:  ldc.i4.0
    IL_0142:  ldc.i4.0
    IL_0143:  ldloc.s    V_8
    IL_0145:  ldc.i4.0
    IL_0146:  cgt
    IL_0148:  call       int32 Game.PistonHeadBlock::SetIsShaft(int32,
                                                                bool)
    IL_014d:  ldloc.3
    IL_014e:  call       int32 Game.PistonHeadBlock::SetMode(int32,
                                                             valuetype Game.PistonMode)
    IL_0153:  ldloc.2
    IL_0154:  call       int32 Game.PistonHeadBlock::SetFace(int32,
                                                             int32)
    IL_0159:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_015e:  stfld      int32 Game.MovingBlock::Value
    IL_0163:  ldloc.s    V_12
    IL_0165:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.MovingBlock>::Add(!0)
    IL_016a:  ldc.i4.0
    IL_016b:  stloc.s    V_13
    IL_016d:  br         IL_01fa

    IL_0172:  ldloc.0
    IL_0173:  ldarg.1
    IL_0174:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0179:  ldloc.s    V_9
    IL_017b:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0180:  add
    IL_0181:  ldarg.1
    IL_0182:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0187:  ldloc.s    V_9
    IL_0189:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_018e:  add
    IL_018f:  ldarg.1
    IL_0190:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0195:  ldloc.s    V_9
    IL_0197:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_019c:  add
    IL_019d:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_01a2:  stloc.s    V_14
    IL_01a4:  ldloc.s    V_14
    IL_01a6:  ldloc.2
    IL_01a7:  ldarg.1
    IL_01a8:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_01ad:  ldloc.s    V_9
    IL_01af:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_01b4:  add
    IL_01b5:  ldloca.s   V_15
    IL_01b7:  call       bool Game.SubsystemPistonBlockBehavior::IsBlockMovable(int32,
                                                                                int32,
                                                                                int32,
                                                                                bool&)
    IL_01bc:  brfalse.s  IL_0202

    IL_01be:  ldarg.0
    IL_01bf:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.MovingBlock> Game.SubsystemPistonBlockBehavior::m_movingBlocks
    IL_01c4:  ldloca.s   V_12
    IL_01c6:  initobj    Game.MovingBlock
    IL_01cc:  ldloca.s   V_12
    IL_01ce:  ldloc.s    V_9
    IL_01d0:  stfld      valuetype [Engine]Engine.Point3 Game.MovingBlock::Offset
    IL_01d5:  ldloca.s   V_12
    IL_01d7:  ldloc.s    V_14
    IL_01d9:  stfld      int32 Game.MovingBlock::Value
    IL_01de:  ldloc.s    V_12
    IL_01e0:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.MovingBlock>::Add(!0)
    IL_01e5:  ldloc.s    V_13
    IL_01e7:  ldc.i4.1
    IL_01e8:  add
    IL_01e9:  stloc.s    V_13
    IL_01eb:  ldloc.s    V_9
    IL_01ed:  ldloc.s    V_7
    IL_01ef:  call       valuetype [Engine]Engine.Point3 [Engine]Engine.Point3::op_Addition(valuetype [Engine]Engine.Point3,
                                                                                            valuetype [Engine]Engine.Point3)
    IL_01f4:  stloc.s    V_9
    IL_01f6:  ldloc.s    V_15
    IL_01f8:  brtrue.s   IL_0202

    IL_01fa:  ldloc.s    V_13
    IL_01fc:  ldc.i4.8
    IL_01fd:  blt        IL_0172

    IL_0202:  ldloc.0
    IL_0203:  ldarg.1
    IL_0204:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0209:  ldloc.s    V_9
    IL_020b:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0210:  add
    IL_0211:  ldarg.1
    IL_0212:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0217:  ldloc.s    V_9
    IL_0219:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_021e:  add
    IL_021f:  ldarg.1
    IL_0220:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0225:  ldloc.s    V_9
    IL_0227:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_022c:  add
    IL_022d:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0232:  call       bool Game.SubsystemPistonBlockBehavior::IsBlockBlocking(int32)
    IL_0237:  brtrue     IL_039d

    IL_023c:  ldarg.0
    IL_023d:  ldloc.s    V_6
    IL_023f:  ldloca.s   V_16
    IL_0241:  ldloca.s   V_17
    IL_0243:  call       instance void Game.SubsystemPistonBlockBehavior::GetSpeedAndSmoothness(int32,
                                                                                                float32&,
                                                                                                valuetype [Engine]Engine.Vector2&)
    IL_0248:  ldarg.1
    IL_0249:  ldarg.2
    IL_024a:  ldloc.s    V_8
    IL_024c:  sub
    IL_024d:  ldloc.s    V_7
    IL_024f:  call       valuetype [Engine]Engine.Point3 [Engine]Engine.Point3::op_Multiply(int32,
                                                                                            valuetype [Engine]Engine.Point3)
    IL_0254:  call       valuetype [Engine]Engine.Point3 [Engine]Engine.Point3::op_Addition(valuetype [Engine]Engine.Point3,
                                                                                            valuetype [Engine]Engine.Point3)
    IL_0259:  stloc.s    V_18
    IL_025b:  ldarg.0
    IL_025c:  ldfld      class Game.SubsystemMovingBlocks Game.SubsystemPistonBlockBehavior::m_subsystemMovingBlocks
    IL_0261:  ldarg.1
    IL_0262:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Point3)
    IL_0267:  ldc.r4     9.9999998e-003
    IL_026c:  ldloc.s    V_7
    IL_026e:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Point3)
    IL_0273:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0278:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_027d:  ldloc.s    V_18
    IL_027f:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Point3)
    IL_0284:  ldloc.s    V_16
    IL_0286:  ldc.r4     0.0
    IL_028b:  ldc.r4     0.0
    IL_0290:  ldloc.s    V_17
    IL_0292:  ldarg.0
    IL_0293:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.MovingBlock> Game.SubsystemPistonBlockBehavior::m_movingBlocks
    IL_0298:  ldstr      "Piston"
    IL_029d:  ldarg.1
    IL_029e:  box        [Engine]Engine.Point3
    IL_02a3:  ldc.i4.1
    IL_02a4:  callvirt   instance class Game.IMovingBlockSet Game.SubsystemMovingBlocks::AddMovingBlockSet(valuetype [Engine]Engine.Vector3,
                                                                                                           valuetype [Engine]Engine.Vector3,
                                                                                                           float32,
                                                                                                           float32,
                                                                                                           float32,
                                                                                                           valuetype [Engine]Engine.Vector2,
                                                                                                           class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype Game.MovingBlock>,
                                                                                                           string,
                                                                                                           object,
                                                                                                           bool)
    IL_02a9:  brfalse    IL_039d

    IL_02ae:  ldarg.0
    IL_02af:  ldc.i4.1
    IL_02b0:  stfld      bool Game.SubsystemPistonBlockBehavior::m_allowPistonHeadRemove
    .try
    {
      IL_02b5:  ldarg.0
      IL_02b6:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.MovingBlock> Game.SubsystemPistonBlockBehavior::m_movingBlocks
      IL_02bb:  callvirt   instance valuetype [Engine]Engine.DynamicArray`1/Enumerator<!0> class [Engine]Engine.DynamicArray`1<valuetype Game.MovingBlock>::GetEnumerator()
      IL_02c0:  stloc.s    V_19
      .try
      {
        IL_02c2:  br.s       IL_0326

        IL_02c4:  ldloca.s   V_19
        IL_02c6:  call       instance !0 valuetype [Engine]Engine.DynamicArray`1/Enumerator<valuetype Game.MovingBlock>::get_Current()
        IL_02cb:  stloc.s    V_20
        IL_02cd:  ldloc.s    V_20
        IL_02cf:  ldfld      valuetype [Engine]Engine.Point3 Game.MovingBlock::Offset
        IL_02d4:  ldsfld     valuetype [Engine]Engine.Point3 [Engine]Engine.Point3::Zero
        IL_02d9:  call       bool [Engine]Engine.Point3::op_Inequality(valuetype [Engine]Engine.Point3,
                                                                       valuetype [Engine]Engine.Point3)
        IL_02de:  brfalse.s  IL_0326

        IL_02e0:  ldarg.0
        IL_02e1:  ldfld      class Game.SubsystemTerrain Game.SubsystemPistonBlockBehavior::m_subsystemTerrain
        IL_02e6:  ldarg.1
        IL_02e7:  ldfld      int32 [Engine]Engine.Point3::X
        IL_02ec:  ldloc.s    V_20
        IL_02ee:  ldfld      valuetype [Engine]Engine.Point3 Game.MovingBlock::Offset
        IL_02f3:  ldfld      int32 [Engine]Engine.Point3::X
        IL_02f8:  add
        IL_02f9:  ldarg.1
        IL_02fa:  ldfld      int32 [Engine]Engine.Point3::Y
        IL_02ff:  ldloc.s    V_20
        IL_0301:  ldfld      valuetype [Engine]Engine.Point3 Game.MovingBlock::Offset
        IL_0306:  ldfld      int32 [Engine]Engine.Point3::Y
        IL_030b:  add
        IL_030c:  ldarg.1
        IL_030d:  ldfld      int32 [Engine]Engine.Point3::Z
        IL_0312:  ldloc.s    V_20
        IL_0314:  ldfld      valuetype [Engine]Engine.Point3 Game.MovingBlock::Offset
        IL_0319:  ldfld      int32 [Engine]Engine.Point3::Z
        IL_031e:  add
        IL_031f:  ldc.i4.0
        IL_0320:  ldc.i4.1
        IL_0321:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             bool)
        IL_0326:  ldloca.s   V_19
        IL_0328:  call       instance bool valuetype [Engine]Engine.DynamicArray`1/Enumerator<valuetype Game.MovingBlock>::MoveNext()
        IL_032d:  brtrue.s   IL_02c4

        IL_032f:  leave.s    IL_0347

      }  // end .try
      finally
      {
        IL_0331:  ldloca.s   V_19
        IL_0333:  constrained. valuetype [Engine]Engine.DynamicArray`1/Enumerator<valuetype Game.MovingBlock>
        IL_0339:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_033e:  endfinally
      }  // end handler
    }  // end .try
    finally
    {
      IL_033f:  ldarg.0
      IL_0340:  ldc.i4.0
      IL_0341:  stfld      bool Game.SubsystemPistonBlockBehavior::m_allowPistonHeadRemove
      IL_0346:  endfinally
    }  // end handler
    IL_0347:  ldarg.0
    IL_0348:  ldfld      class Game.SubsystemTerrain Game.SubsystemPistonBlockBehavior::m_subsystemTerrain
    IL_034d:  ldarg.1
    IL_034e:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0353:  ldarg.1
    IL_0354:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0359:  ldarg.1
    IL_035a:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_035f:  ldc.i4     0xed
    IL_0364:  ldc.i4.0
    IL_0365:  ldloc.1
    IL_0366:  ldc.i4.1
    IL_0367:  call       int32 Game.PistonBlock::SetIsExtended(int32,
                                                               bool)
    IL_036c:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_0371:  ldc.i4.1
    IL_0372:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_0377:  ldarg.0
    IL_0378:  ldfld      class Game.SubsystemAudio Game.SubsystemPistonBlockBehavior::m_subsystemAudio
    IL_037d:  ldstr      "Audio/Piston"
    IL_0382:  ldc.r4     1.
    IL_0387:  ldc.r4     0.0
    IL_038c:  ldarg.1
    IL_038d:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Point3)
    IL_0392:  ldc.r4     2.
    IL_0397:  ldc.i4.1
    IL_0398:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_039d:  ldc.i4.0
    IL_039e:  ret

    IL_039f:  ldarg.2
    IL_03a0:  ldloc.s    V_8
    IL_03a2:  bge        IL_0593

    IL_03a7:  ldloc.3
    IL_03a8:  brfalse    IL_045f

    IL_03ad:  ldc.i4.0
    IL_03ae:  stloc.s    V_25
    IL_03b0:  ldc.i4.0
    IL_03b1:  stloc.s    V_26
    IL_03b3:  br         IL_0446

    IL_03b8:  ldloc.0
    IL_03b9:  ldarg.1
    IL_03ba:  ldfld      int32 [Engine]Engine.Point3::X
    IL_03bf:  ldloc.s    V_9
    IL_03c1:  ldfld      int32 [Engine]Engine.Point3::X
    IL_03c6:  add
    IL_03c7:  ldarg.1
    IL_03c8:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_03cd:  ldloc.s    V_9
    IL_03cf:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_03d4:  add
    IL_03d5:  ldarg.1
    IL_03d6:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_03db:  ldloc.s    V_9
    IL_03dd:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_03e2:  add
    IL_03e3:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_03e8:  stloc.s    V_27
    IL_03ea:  ldloc.s    V_27
    IL_03ec:  ldloc.2
    IL_03ed:  ldarg.1
    IL_03ee:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_03f3:  ldloc.s    V_9
    IL_03f5:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_03fa:  add
    IL_03fb:  ldloca.s   V_28
    IL_03fd:  call       bool Game.SubsystemPistonBlockBehavior::IsBlockMovable(int32,
                                                                                int32,
                                                                                int32,
                                                                                bool&)
    IL_0402:  brfalse.s  IL_0451

    IL_0404:  ldarg.0
    IL_0405:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.MovingBlock> Game.SubsystemPistonBlockBehavior::m_movingBlocks
    IL_040a:  ldloca.s   V_12
    IL_040c:  initobj    Game.MovingBlock
    IL_0412:  ldloca.s   V_12
    IL_0414:  ldloc.s    V_9
    IL_0416:  stfld      valuetype [Engine]Engine.Point3 Game.MovingBlock::Offset
    IL_041b:  ldloca.s   V_12
    IL_041d:  ldloc.s    V_27
    IL_041f:  stfld      int32 Game.MovingBlock::Value
    IL_0424:  ldloc.s    V_12
    IL_0426:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.MovingBlock>::Add(!0)
    IL_042b:  ldloc.s    V_9
    IL_042d:  ldloc.s    V_7
    IL_042f:  call       valuetype [Engine]Engine.Point3 [Engine]Engine.Point3::op_Addition(valuetype [Engine]Engine.Point3,
                                                                                            valuetype [Engine]Engine.Point3)
    IL_0434:  stloc.s    V_9
    IL_0436:  ldloc.s    V_25
    IL_0438:  ldc.i4.1
    IL_0439:  add
    IL_043a:  stloc.s    V_25
    IL_043c:  ldloc.s    V_28
    IL_043e:  brtrue.s   IL_0451

    IL_0440:  ldloc.s    V_26
    IL_0442:  ldc.i4.1
    IL_0443:  add
    IL_0444:  stloc.s    V_26
    IL_0446:  ldloc.s    V_26
    IL_0448:  ldloc.s    V_5
    IL_044a:  ldc.i4.1
    IL_044b:  add
    IL_044c:  blt        IL_03b8

    IL_0451:  ldloc.3
    IL_0452:  ldc.i4.2
    IL_0453:  bne.un.s   IL_045f

    IL_0455:  ldloc.s    V_25
    IL_0457:  ldloc.s    V_5
    IL_0459:  ldc.i4.1
    IL_045a:  add
    IL_045b:  bge.s      IL_045f

    IL_045d:  ldc.i4.0
    IL_045e:  ret

    IL_045f:  ldarg.0
    IL_0460:  ldloc.s    V_6
    IL_0462:  ldloca.s   V_21
    IL_0464:  ldloca.s   V_22
    IL_0466:  call       instance void Game.SubsystemPistonBlockBehavior::GetSpeedAndSmoothness(int32,
                                                                                                float32&,
                                                                                                valuetype [Engine]Engine.Vector2&)
    IL_046b:  ldarg.2
    IL_046c:  brfalse.s  IL_0475

    IL_046e:  ldc.r4     0.0
    IL_0473:  br.s       IL_047a

    IL_0475:  ldc.r4     9.9999998e-003
    IL_047a:  stloc.s    V_23
    IL_047c:  ldarg.1
    IL_047d:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Point3)
    IL_0482:  ldarg.2
    IL_0483:  ldloc.s    V_8
    IL_0485:  sub
    IL_0486:  conv.r4
    IL_0487:  ldloc.s    V_7
    IL_0489:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Point3)
    IL_048e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0493:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0498:  ldloc.s    V_23
    IL_049a:  ldloc.s    V_7
    IL_049c:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Point3)
    IL_04a1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_04a6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_04ab:  stloc.s    V_24
    IL_04ad:  ldarg.0
    IL_04ae:  ldfld      class Game.SubsystemMovingBlocks Game.SubsystemPistonBlockBehavior::m_subsystemMovingBlocks
    IL_04b3:  ldarg.1
    IL_04b4:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Point3)
    IL_04b9:  ldloc.s    V_24
    IL_04bb:  ldloc.s    V_21
    IL_04bd:  ldc.r4     0.0
    IL_04c2:  ldc.r4     0.0
    IL_04c7:  ldloc.s    V_22
    IL_04c9:  ldarg.0
    IL_04ca:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.MovingBlock> Game.SubsystemPistonBlockBehavior::m_movingBlocks
    IL_04cf:  ldstr      "Piston"
    IL_04d4:  ldarg.1
    IL_04d5:  box        [Engine]Engine.Point3
    IL_04da:  ldc.i4.1
    IL_04db:  callvirt   instance class Game.IMovingBlockSet Game.SubsystemMovingBlocks::AddMovingBlockSet(valuetype [Engine]Engine.Vector3,
                                                                                                           valuetype [Engine]Engine.Vector3,
                                                                                                           float32,
                                                                                                           float32,
                                                                                                           float32,
                                                                                                           valuetype [Engine]Engine.Vector2,
                                                                                                           class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype Game.MovingBlock>,
                                                                                                           string,
                                                                                                           object,
                                                                                                           bool)
    IL_04e0:  brfalse    IL_0591

    IL_04e5:  ldarg.0
    IL_04e6:  ldc.i4.1
    IL_04e7:  stfld      bool Game.SubsystemPistonBlockBehavior::m_allowPistonHeadRemove
    .try
    {
      IL_04ec:  ldarg.0
      IL_04ed:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.MovingBlock> Game.SubsystemPistonBlockBehavior::m_movingBlocks
      IL_04f2:  callvirt   instance valuetype [Engine]Engine.DynamicArray`1/Enumerator<!0> class [Engine]Engine.DynamicArray`1<valuetype Game.MovingBlock>::GetEnumerator()
      IL_04f7:  stloc.s    V_19
      .try
      {
        IL_04f9:  br.s       IL_054a

        IL_04fb:  ldloca.s   V_19
        IL_04fd:  call       instance !0 valuetype [Engine]Engine.DynamicArray`1/Enumerator<valuetype Game.MovingBlock>::get_Current()
        IL_0502:  stloc.s    V_29
        IL_0504:  ldarg.0
        IL_0505:  ldfld      class Game.SubsystemTerrain Game.SubsystemPistonBlockBehavior::m_subsystemTerrain
        IL_050a:  ldarg.1
        IL_050b:  ldfld      int32 [Engine]Engine.Point3::X
        IL_0510:  ldloc.s    V_29
        IL_0512:  ldfld      valuetype [Engine]Engine.Point3 Game.MovingBlock::Offset
        IL_0517:  ldfld      int32 [Engine]Engine.Point3::X
        IL_051c:  add
        IL_051d:  ldarg.1
        IL_051e:  ldfld      int32 [Engine]Engine.Point3::Y
        IL_0523:  ldloc.s    V_29
        IL_0525:  ldfld      valuetype [Engine]Engine.Point3 Game.MovingBlock::Offset
        IL_052a:  ldfld      int32 [Engine]Engine.Point3::Y
        IL_052f:  add
        IL_0530:  ldarg.1
        IL_0531:  ldfld      int32 [Engine]Engine.Point3::Z
        IL_0536:  ldloc.s    V_29
        IL_0538:  ldfld      valuetype [Engine]Engine.Point3 Game.MovingBlock::Offset
        IL_053d:  ldfld      int32 [Engine]Engine.Point3::Z
        IL_0542:  add
        IL_0543:  ldc.i4.0
        IL_0544:  ldc.i4.1
        IL_0545:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             bool)
        IL_054a:  ldloca.s   V_19
        IL_054c:  call       instance bool valuetype [Engine]Engine.DynamicArray`1/Enumerator<valuetype Game.MovingBlock>::MoveNext()
        IL_0551:  brtrue.s   IL_04fb

        IL_0553:  leave.s    IL_056b

      }  // end .try
      finally
      {
        IL_0555:  ldloca.s   V_19
        IL_0557:  constrained. valuetype [Engine]Engine.DynamicArray`1/Enumerator<valuetype Game.MovingBlock>
        IL_055d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_0562:  endfinally
      }  // end handler
    }  // end .try
    finally
    {
      IL_0563:  ldarg.0
      IL_0564:  ldc.i4.0
      IL_0565:  stfld      bool Game.SubsystemPistonBlockBehavior::m_allowPistonHeadRemove
      IL_056a:  endfinally
    }  // end handler
    IL_056b:  ldarg.0
    IL_056c:  ldfld      class Game.SubsystemAudio Game.SubsystemPistonBlockBehavior::m_subsystemAudio
    IL_0571:  ldstr      "Audio/Piston"
    IL_0576:  ldc.r4     1.
    IL_057b:  ldc.r4     0.0
    IL_0580:  ldarg.1
    IL_0581:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Point3)
    IL_0586:  ldc.r4     2.
    IL_058b:  ldc.i4.1
    IL_058c:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_0591:  ldc.i4.0
    IL_0592:  ret

    IL_0593:  ldc.i4.1
    IL_0594:  ret
  } // end of method SubsystemPistonBlockBehavior::MovePiston

  .method private hidebysig instance void 
          StopPiston(valuetype [Engine]Engine.Point3 position) cil managed
  {
    // 代码大小       392 (0x188)
    .maxstack  8
    .locals init (class Game.IMovingBlockSet V_0,
             int32 V_1,
             int32 V_2,
             bool V_3,
             bool V_4,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype Game.MovingBlock> V_5,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.MovingBlock> V_6,
             valuetype Game.MovingBlock V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemMovingBlocks Game.SubsystemPistonBlockBehavior::m_subsystemMovingBlocks
    IL_0006:  ldstr      "Piston"
    IL_000b:  ldarg.1
    IL_000c:  box        [Engine]Engine.Point3
    IL_0011:  callvirt   instance class Game.IMovingBlockSet Game.SubsystemMovingBlocks::FindMovingBlocks(string,
                                                                                                          object)
    IL_0016:  stloc.0
    IL_0017:  ldloc.0
    IL_0018:  brfalse    IL_0187

    IL_001d:  ldarg.0
    IL_001e:  ldfld      class Game.SubsystemTerrain Game.SubsystemPistonBlockBehavior::m_subsystemTerrain
    IL_0023:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0028:  ldarg.1
    IL_0029:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002e:  ldarg.1
    IL_002f:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0034:  ldarg.1
    IL_0035:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_003a:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_003f:  dup
    IL_0040:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0045:  stloc.1
    IL_0046:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_004b:  stloc.2
    IL_004c:  ldloc.1
    IL_004d:  ldc.i4     0xed
    IL_0052:  ceq
    IL_0054:  stloc.3
    IL_0055:  ldc.i4.0
    IL_0056:  stloc.s    V_4
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemMovingBlocks Game.SubsystemPistonBlockBehavior::m_subsystemMovingBlocks
    IL_005e:  ldloc.0
    IL_005f:  callvirt   instance void Game.SubsystemMovingBlocks::RemoveMovingBlockSet(class Game.IMovingBlockSet)
    IL_0064:  ldloc.0
    IL_0065:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.MovingBlock> Game.IMovingBlockSet::get_Blocks()
    IL_006a:  stloc.s    V_6
    IL_006c:  ldloca.s   V_6
    IL_006e:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.MovingBlock>::GetEnumerator()
    IL_0073:  stloc.s    V_5
    .try
    {
      IL_0075:  br         IL_0137

      IL_007a:  ldloca.s   V_5
      IL_007c:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype Game.MovingBlock>::get_Current()
      IL_0081:  stloc.s    V_7
      IL_0083:  ldloc.0
      IL_0084:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.IMovingBlockSet::get_Position()
      IL_0089:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_008e:  call       float32 [Engine]Engine.MathUtils::Round(float32)
      IL_0093:  conv.i4
      IL_0094:  ldloc.s    V_7
      IL_0096:  ldfld      valuetype [Engine]Engine.Point3 Game.MovingBlock::Offset
      IL_009b:  ldfld      int32 [Engine]Engine.Point3::X
      IL_00a0:  add
      IL_00a1:  stloc.s    V_8
      IL_00a3:  ldloc.0
      IL_00a4:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.IMovingBlockSet::get_Position()
      IL_00a9:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_00ae:  call       float32 [Engine]Engine.MathUtils::Round(float32)
      IL_00b3:  conv.i4
      IL_00b4:  ldloc.s    V_7
      IL_00b6:  ldfld      valuetype [Engine]Engine.Point3 Game.MovingBlock::Offset
      IL_00bb:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_00c0:  add
      IL_00c1:  stloc.s    V_9
      IL_00c3:  ldloc.0
      IL_00c4:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.IMovingBlockSet::get_Position()
      IL_00c9:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_00ce:  call       float32 [Engine]Engine.MathUtils::Round(float32)
      IL_00d3:  conv.i4
      IL_00d4:  ldloc.s    V_7
      IL_00d6:  ldfld      valuetype [Engine]Engine.Point3 Game.MovingBlock::Offset
      IL_00db:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_00e0:  add
      IL_00e1:  stloc.s    V_10
      IL_00e3:  ldloc.s    V_8
      IL_00e5:  ldloc.s    V_9
      IL_00e7:  ldloc.s    V_10
      IL_00e9:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                      int32,
                                                                      int32)
      IL_00ee:  ldarg.1
      IL_00ef:  call       bool [Engine]Engine.Point3::op_Equality(valuetype [Engine]Engine.Point3,
                                                                   valuetype [Engine]Engine.Point3)
      IL_00f4:  brtrue.s   IL_0137

      IL_00f6:  ldloc.s    V_7
      IL_00f8:  ldfld      int32 Game.MovingBlock::Value
      IL_00fd:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_0102:  stloc.s    V_11
      IL_0104:  ldloc.3
      IL_0105:  brtrue.s   IL_0110

      IL_0107:  ldloc.s    V_11
      IL_0109:  ldc.i4     0xee
      IL_010e:  beq.s      IL_0137

      IL_0110:  ldarg.0
      IL_0111:  ldfld      class Game.SubsystemTerrain Game.SubsystemPistonBlockBehavior::m_subsystemTerrain
      IL_0116:  ldc.i4.0
      IL_0117:  ldloc.s    V_8
      IL_0119:  ldloc.s    V_9
      IL_011b:  ldloc.s    V_10
      IL_011d:  ldloc.s    V_7
      IL_011f:  ldfld      int32 Game.MovingBlock::Value
      IL_0124:  ldc.i4.0
      IL_0125:  ldc.i4.0
      IL_0126:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                            int32,
                                                                            int32,
                                                                            int32,
                                                                            int32,
                                                                            bool,
                                                                            bool)
      IL_012b:  ldloc.s    V_11
      IL_012d:  ldc.i4     0xee
      IL_0132:  bne.un.s   IL_0137

      IL_0134:  ldc.i4.1
      IL_0135:  stloc.s    V_4
      IL_0137:  ldloca.s   V_5
      IL_0139:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype Game.MovingBlock>::MoveNext()
      IL_013e:  brtrue     IL_007a

      IL_0143:  leave.s    IL_0153

    }  // end .try
    finally
    {
      IL_0145:  ldloca.s   V_5
      IL_0147:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype Game.MovingBlock>
      IL_014d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0152:  endfinally
    }  // end handler
    IL_0153:  ldloc.3
    IL_0154:  brfalse.s  IL_0187

    IL_0156:  ldarg.0
    IL_0157:  ldfld      class Game.SubsystemTerrain Game.SubsystemPistonBlockBehavior::m_subsystemTerrain
    IL_015c:  ldarg.1
    IL_015d:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0162:  ldarg.1
    IL_0163:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0168:  ldarg.1
    IL_0169:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_016e:  ldc.i4     0xed
    IL_0173:  ldc.i4.0
    IL_0174:  ldloc.2
    IL_0175:  ldloc.s    V_4
    IL_0177:  call       int32 Game.PistonBlock::SetIsExtended(int32,
                                                               bool)
    IL_017c:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_0181:  ldc.i4.1
    IL_0182:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_0187:  ret
  } // end of method SubsystemPistonBlockBehavior::StopPiston

  .method private hidebysig instance void 
          MovingBlocksCollidedWithTerrain(class Game.IMovingBlockSet movingBlockSet,
                                          valuetype [Engine]Engine.Point3 p) cil managed
  {
    // 代码大小       270 (0x10e)
    .maxstack  8
    .locals init (valuetype [Engine]Engine.Point3 V_0,
             int32 V_1,
             valuetype [Engine]Engine.Point3 V_2,
             int32 V_3)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance string Game.IMovingBlockSet::get_Id()
    IL_0006:  ldstr      "Piston"
    IL_000b:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_0010:  brfalse    IL_010d

    IL_0015:  ldarg.1
    IL_0016:  callvirt   instance object Game.IMovingBlockSet::get_Tag()
    IL_001b:  unbox.any  [Engine]Engine.Point3
    IL_0020:  stloc.0
    IL_0021:  ldarg.0
    IL_0022:  ldfld      class Game.SubsystemTerrain Game.SubsystemPistonBlockBehavior::m_subsystemTerrain
    IL_0027:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_002c:  ldloc.0
    IL_002d:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0032:  ldloc.0
    IL_0033:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0038:  ldloc.0
    IL_0039:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_003e:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0043:  stloc.1
    IL_0044:  ldloc.1
    IL_0045:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_004a:  ldc.i4     0xed
    IL_004f:  bne.un     IL_010d

    IL_0054:  ldloc.1
    IL_0055:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_005a:  call       int32 Game.PistonBlock::GetFace(int32)
    IL_005f:  call       valuetype [Engine]Engine.Point3 Game.CellFace::FaceToPoint3(int32)
    IL_0064:  stloc.2
    IL_0065:  ldarg.2
    IL_0066:  ldfld      int32 [Engine]Engine.Point3::X
    IL_006b:  ldloc.2
    IL_006c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0071:  mul
    IL_0072:  ldarg.2
    IL_0073:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0078:  ldloc.2
    IL_0079:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_007e:  mul
    IL_007f:  add
    IL_0080:  ldarg.2
    IL_0081:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0086:  ldloc.2
    IL_0087:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_008c:  mul
    IL_008d:  add
    IL_008e:  ldloc.0
    IL_008f:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0094:  ldloc.2
    IL_0095:  ldfld      int32 [Engine]Engine.Point3::X
    IL_009a:  mul
    IL_009b:  ldloc.0
    IL_009c:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00a1:  ldloc.2
    IL_00a2:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00a7:  mul
    IL_00a8:  add
    IL_00a9:  ldloc.0
    IL_00aa:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_00af:  ldloc.2
    IL_00b0:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_00b5:  mul
    IL_00b6:  add
    IL_00b7:  stloc.3
    IL_00b8:  ldloc.3
    IL_00b9:  bgt.s      IL_00bc

    IL_00bb:  ret

    IL_00bc:  ldarg.0
    IL_00bd:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_00c2:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00c7:  ldarg.2
    IL_00c8:  ldfld      int32 [Engine]Engine.Point3::X
    IL_00cd:  ldarg.2
    IL_00ce:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00d3:  ldarg.2
    IL_00d4:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_00d9:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_00de:  call       bool Game.SubsystemPistonBlockBehavior::IsBlockBlocking(int32)
    IL_00e3:  brfalse.s  IL_00ec

    IL_00e5:  ldarg.1
    IL_00e6:  callvirt   instance void Game.IMovingBlockSet::Stop()
    IL_00eb:  ret

    IL_00ec:  ldarg.0
    IL_00ed:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_00f2:  ldc.i4.0
    IL_00f3:  ldarg.2
    IL_00f4:  ldfld      int32 [Engine]Engine.Point3::X
    IL_00f9:  ldarg.2
    IL_00fa:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00ff:  ldarg.2
    IL_0100:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0105:  ldc.i4.0
    IL_0106:  ldc.i4.0
    IL_0107:  ldc.i4.0
    IL_0108:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_010d:  ret
  } // end of method SubsystemPistonBlockBehavior::MovingBlocksCollidedWithTerrain

  .method private hidebysig instance void 
          MovingBlocksStopped(class Game.IMovingBlockSet movingBlockSet) cil managed
  {
    // 代码大小       132 (0x84)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Point3 V_0,
             class Game.SubsystemPistonBlockBehavior/QueuedAction V_1)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance string Game.IMovingBlockSet::get_Id()
    IL_0006:  ldstr      "Piston"
    IL_000b:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_0010:  brfalse.s  IL_0083

    IL_0012:  ldarg.1
    IL_0013:  callvirt   instance object Game.IMovingBlockSet::get_Tag()
    IL_0018:  isinst     [Engine]Engine.Point3
    IL_001d:  brfalse.s  IL_0083

    IL_001f:  ldarg.1
    IL_0020:  callvirt   instance object Game.IMovingBlockSet::get_Tag()
    IL_0025:  unbox.any  [Engine]Engine.Point3
    IL_002a:  stloc.0
    IL_002b:  ldarg.0
    IL_002c:  ldfld      class Game.SubsystemTerrain Game.SubsystemPistonBlockBehavior::m_subsystemTerrain
    IL_0031:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0036:  ldloc.0
    IL_0037:  ldfld      int32 [Engine]Engine.Point3::X
    IL_003c:  ldloc.0
    IL_003d:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0042:  ldloc.0
    IL_0043:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0048:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_004d:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0052:  ldc.i4     0xed
    IL_0057:  bne.un.s   IL_0083

    IL_0059:  ldarg.0
    IL_005a:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction> Game.SubsystemPistonBlockBehavior::m_actions
    IL_005f:  ldloc.0
    IL_0060:  ldloca.s   V_1
    IL_0062:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction>::TryGetValue(!0,
                                                                                                                                                                                                            !1&)
    IL_0067:  brtrue.s   IL_007c

    IL_0069:  newobj     instance void Game.SubsystemPistonBlockBehavior/QueuedAction::.ctor()
    IL_006e:  stloc.1
    IL_006f:  ldarg.0
    IL_0070:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction> Game.SubsystemPistonBlockBehavior::m_actions
    IL_0075:  ldloc.0
    IL_0076:  ldloc.1
    IL_0077:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction>::Add(!0,
                                                                                                                                                                                                    !1)
    IL_007c:  ldloc.1
    IL_007d:  ldc.i4.1
    IL_007e:  stfld      bool Game.SubsystemPistonBlockBehavior/QueuedAction::Stop
    IL_0083:  ret
  } // end of method SubsystemPistonBlockBehavior::MovingBlocksStopped

  .method private hidebysig static bool  IsBlockMovable(int32 'value',
                                                        int32 pistonFace,
                                                        int32 y,
                                                        [out] bool& isEnd) cil managed
  {
    // 代码大小       290 (0x122)
    .maxstack  2
    .locals init (int32 V_0,
             int32 V_1,
             class Game.Block V_2)
    IL_0000:  ldarg.3
    IL_0001:  ldc.i4.0
    IL_0002:  stind.i1
    IL_0003:  ldarg.0
    IL_0004:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0009:  stloc.0
    IL_000a:  ldarg.0
    IL_000b:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0010:  stloc.1
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.s   65
    IL_0014:  bgt.s      IL_0037

    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.s   27
    IL_0019:  bgt.s      IL_0026

    IL_001b:  ldloc.0
    IL_001c:  ldc.i4.1
    IL_001d:  beq.s      IL_009e

    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.s   27
    IL_0022:  beq.s      IL_0088

    IL_0024:  br.s       IL_00a3

    IL_0026:  ldloc.0
    IL_0027:  ldc.i4.s   45
    IL_0029:  beq.s      IL_0088

    IL_002b:  ldloc.0
    IL_002c:  ldc.i4.s   64
    IL_002e:  beq.s      IL_0088

    IL_0030:  ldloc.0
    IL_0031:  ldc.i4.s   65
    IL_0033:  beq.s      IL_0088

    IL_0035:  br.s       IL_00a3

    IL_0037:  ldloc.0
    IL_0038:  ldc.i4     0xd8
    IL_003d:  bgt.s      IL_006e

    IL_003f:  ldloc.0
    IL_0040:  ldc.i4.s   126
    IL_0042:  sub
    IL_0043:  switch     ( 
                          IL_009c,
                          IL_009a,
                          IL_00a3,
                          IL_00a3,
                          IL_00a3,
                          IL_0098,
                          IL_0098)
    IL_0064:  ldloc.0
    IL_0065:  ldc.i4     0xd8
    IL_006a:  beq.s      IL_0088

    IL_006c:  br.s       IL_00a3

    IL_006e:  ldloc.0
    IL_006f:  ldc.i4     0xe3
    IL_0074:  beq.s      IL_008a

    IL_0076:  ldloc.0
    IL_0077:  ldc.i4     0xed
    IL_007c:  beq.s      IL_008c

    IL_007e:  ldloc.0
    IL_007f:  ldc.i4     0xee
    IL_0084:  beq.s      IL_0096

    IL_0086:  br.s       IL_00a3

    IL_0088:  ldc.i4.0
    IL_0089:  ret

    IL_008a:  ldc.i4.1
    IL_008b:  ret

    IL_008c:  ldloc.1
    IL_008d:  call       bool Game.PistonBlock::GetIsExtended(int32)
    IL_0092:  ldc.i4.0
    IL_0093:  ceq
    IL_0095:  ret

    IL_0096:  ldc.i4.0
    IL_0097:  ret

    IL_0098:  ldc.i4.0
    IL_0099:  ret

    IL_009a:  ldc.i4.0
    IL_009b:  ret

    IL_009c:  ldc.i4.0
    IL_009d:  ret

    IL_009e:  ldarg.2
    IL_009f:  ldc.i4.1
    IL_00a0:  cgt
    IL_00a2:  ret

    IL_00a3:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00a8:  ldloc.0
    IL_00a9:  ldelem.ref
    IL_00aa:  stloc.2
    IL_00ab:  ldloc.2
    IL_00ac:  isinst     Game.BottomSuckerBlock
    IL_00b1:  brfalse.s  IL_00b5

    IL_00b3:  ldc.i4.0
    IL_00b4:  ret

    IL_00b5:  ldloc.2
    IL_00b6:  isinst     Game.MountedElectricElementBlock
    IL_00bb:  brfalse.s  IL_00d0

    IL_00bd:  ldarg.3
    IL_00be:  ldc.i4.1
    IL_00bf:  stind.i1
    IL_00c0:  ldloc.2
    IL_00c1:  castclass  Game.MountedElectricElementBlock
    IL_00c6:  ldarg.0
    IL_00c7:  callvirt   instance int32 Game.MountedElectricElementBlock::GetFace(int32)
    IL_00cc:  ldarg.1
    IL_00cd:  ceq
    IL_00cf:  ret

    IL_00d0:  ldloc.2
    IL_00d1:  isinst     Game.DoorBlock
    IL_00d6:  brtrue.s   IL_00e0

    IL_00d8:  ldloc.2
    IL_00d9:  isinst     Game.TrapdoorBlock
    IL_00de:  brfalse.s  IL_00e2

    IL_00e0:  ldc.i4.0
    IL_00e1:  ret

    IL_00e2:  ldloc.2
    IL_00e3:  isinst     Game.LadderBlock
    IL_00e8:  brfalse.s  IL_00f7

    IL_00ea:  ldarg.3
    IL_00eb:  ldc.i4.1
    IL_00ec:  stind.i1
    IL_00ed:  ldarg.1
    IL_00ee:  ldloc.1
    IL_00ef:  call       int32 Game.LadderBlock::GetFace(int32)
    IL_00f4:  ceq
    IL_00f6:  ret

    IL_00f7:  ldloc.2
    IL_00f8:  isinst     Game.AttachedSignBlock
    IL_00fd:  brfalse.s  IL_010c

    IL_00ff:  ldarg.3
    IL_0100:  ldc.i4.1
    IL_0101:  stind.i1
    IL_0102:  ldarg.1
    IL_0103:  ldloc.1
    IL_0104:  call       int32 Game.AttachedSignBlock::GetFace(int32)
    IL_0109:  ceq
    IL_010b:  ret

    IL_010c:  ldloc.2
    IL_010d:  ldfld      bool Game.Block::IsNonDuplicable
    IL_0112:  brfalse.s  IL_0116

    IL_0114:  ldc.i4.0
    IL_0115:  ret

    IL_0116:  ldloc.2
    IL_0117:  ldfld      bool Game.Block::IsCollidable
    IL_011c:  brfalse.s  IL_0120

    IL_011e:  ldc.i4.1
    IL_011f:  ret

    IL_0120:  ldc.i4.0
    IL_0121:  ret
  } // end of method SubsystemPistonBlockBehavior::IsBlockMovable

  .method private hidebysig static bool  IsBlockBlocking(int32 'value') cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0006:  stloc.0
    IL_0007:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_000c:  ldloc.0
    IL_000d:  ldelem.ref
    IL_000e:  ldfld      bool Game.Block::IsCollidable
    IL_0013:  ret
  } // end of method SubsystemPistonBlockBehavior::IsBlockBlocking

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction> Game.SubsystemPistonBlockBehavior::m_actions
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction>>::.ctor()
    IL_0011:  stfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemPistonBlockBehavior/QueuedAction>> Game.SubsystemPistonBlockBehavior::m_tmpActions
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void class [Engine]Engine.DynamicArray`1<valuetype Game.MovingBlock>::.ctor()
    IL_001c:  stfld      class [Engine]Engine.DynamicArray`1<valuetype Game.MovingBlock> Game.SubsystemPistonBlockBehavior::m_movingBlocks
    IL_0021:  ldarg.0
    IL_0022:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0027:  ret
  } // end of method SubsystemPistonBlockBehavior::.ctor

  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemPistonBlockBehavior::get_UpdateOrder()
  } // end of property SubsystemPistonBlockBehavior::UpdateOrder
  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemPistonBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemPistonBlockBehavior::HandledBlocks
} // end of class Game.SubsystemPistonBlockBehavior