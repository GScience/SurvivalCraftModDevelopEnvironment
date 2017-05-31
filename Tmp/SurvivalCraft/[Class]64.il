.class public auto ansi beforefieldinit Game.ComponentMiner
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IUpdateable
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass51_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public valuetype [System.Runtime]System.Nullable`1<valuetype Game.MovingBlocksRaycastResult> movingBlocksResult
    .field public valuetype [Engine]Engine.Vector3 position
    .field public valuetype [Engine]Engine.Vector3 direction
    .field public valuetype [Engine]Engine.Vector3 creaturePosition
    .field public float32 reach
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass51_0'::.ctor

    .method assembly hidebysig instance bool 
            '<PickTerrainForDigging>b__0'(int32 'value',
                                          float32 distance) cil managed
    {
      // 代码大小       99 (0x63)
      .maxstack  3
      IL_0000:  ldarg.0
      IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype Game.MovingBlocksRaycastResult> Game.ComponentMiner/'<>c__DisplayClass51_0'::movingBlocksResult
      IL_0006:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.MovingBlocksRaycastResult>::get_HasValue()
      IL_000b:  brfalse.s  IL_0022

      IL_000d:  ldarg.2
      IL_000e:  ldarg.0
      IL_000f:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype Game.MovingBlocksRaycastResult> Game.ComponentMiner/'<>c__DisplayClass51_0'::movingBlocksResult
      IL_0014:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.MovingBlocksRaycastResult>::get_Value()
      IL_0019:  ldfld      float32 Game.MovingBlocksRaycastResult::Distance
      IL_001e:  ble.un.s   IL_0022

      IL_0020:  ldc.i4.0
      IL_0021:  ret

      IL_0022:  ldarg.0
      IL_0023:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass51_0'::position
      IL_0028:  ldarg.2
      IL_0029:  ldarg.0
      IL_002a:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass51_0'::direction
      IL_002f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0034:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0039:  ldarg.0
      IL_003a:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass51_0'::creaturePosition
      IL_003f:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                    valuetype [Engine]Engine.Vector3)
      IL_0044:  ldarg.0
      IL_0045:  ldfld      float32 Game.ComponentMiner/'<>c__DisplayClass51_0'::reach
      IL_004a:  bgt.un.s   IL_0061

      IL_004c:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_0051:  ldarg.1
      IL_0052:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_0057:  ldelem.ref
      IL_0058:  ldfld      bool Game.Block::IsDiggingTransparent
      IL_005d:  ldc.i4.0
      IL_005e:  ceq
      IL_0060:  ret

      IL_0061:  ldc.i4.0
      IL_0062:  ret
    } // end of method '<>c__DisplayClass51_0'::'<PickTerrainForDigging>b__0'

  } // end of class '<>c__DisplayClass51_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass52_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public valuetype [System.Runtime]System.Nullable`1<valuetype Game.MovingBlocksRaycastResult> movingBlocksResult
    .field public valuetype [Engine]Engine.Vector3 position
    .field public valuetype [Engine]Engine.Vector3 direction
    .field public valuetype [Engine]Engine.Vector3 creaturePosition
    .field public float32 reach
    .field public class Game.ComponentMiner '<>4__this'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass52_0'::.ctor

    .method assembly hidebysig instance bool 
            '<PickTerrainForInteraction>b__0'(int32 'value',
                                              float32 distance) cil managed
    {
      // 代码大小       120 (0x78)
      .maxstack  3
      .locals init (class Game.Block V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype Game.MovingBlocksRaycastResult> Game.ComponentMiner/'<>c__DisplayClass52_0'::movingBlocksResult
      IL_0006:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.MovingBlocksRaycastResult>::get_HasValue()
      IL_000b:  brfalse.s  IL_0022

      IL_000d:  ldarg.2
      IL_000e:  ldarg.0
      IL_000f:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype Game.MovingBlocksRaycastResult> Game.ComponentMiner/'<>c__DisplayClass52_0'::movingBlocksResult
      IL_0014:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.MovingBlocksRaycastResult>::get_Value()
      IL_0019:  ldfld      float32 Game.MovingBlocksRaycastResult::Distance
      IL_001e:  ble.un.s   IL_0022

      IL_0020:  ldc.i4.0
      IL_0021:  ret

      IL_0022:  ldarg.0
      IL_0023:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass52_0'::position
      IL_0028:  ldarg.2
      IL_0029:  ldarg.0
      IL_002a:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass52_0'::direction
      IL_002f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0034:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0039:  ldarg.0
      IL_003a:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass52_0'::creaturePosition
      IL_003f:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                    valuetype [Engine]Engine.Vector3)
      IL_0044:  ldarg.0
      IL_0045:  ldfld      float32 Game.ComponentMiner/'<>c__DisplayClass52_0'::reach
      IL_004a:  bgt.un.s   IL_0076

      IL_004c:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_0051:  ldarg.1
      IL_0052:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_0057:  ldelem.ref
      IL_0058:  stloc.0
      IL_0059:  ldloc.0
      IL_005a:  ldfld      bool Game.Block::IsPlacementTransparent
      IL_005f:  brfalse.s  IL_0074

      IL_0061:  ldloc.0
      IL_0062:  ldarg.0
      IL_0063:  ldfld      class Game.ComponentMiner Game.ComponentMiner/'<>c__DisplayClass52_0'::'<>4__this'
      IL_0068:  ldfld      class Game.SubsystemTerrain Game.ComponentMiner::m_subsystemTerrain
      IL_006d:  ldarg.1
      IL_006e:  callvirt   instance bool Game.Block::IsInteractive(class Game.SubsystemTerrain,
                                                                   int32)
      IL_0073:  ret

      IL_0074:  ldc.i4.1
      IL_0075:  ret

      IL_0076:  ldc.i4.0
      IL_0077:  ret
    } // end of method '<>c__DisplayClass52_0'::'<PickTerrainForInteraction>b__0'

  } // end of class '<>c__DisplayClass52_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass53_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public valuetype [Engine]Engine.Vector3 position
    .field public valuetype [Engine]Engine.Vector3 direction
    .field public valuetype [Engine]Engine.Vector3 creaturePosition
    .field public float32 reach
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass53_0'::.ctor

    .method assembly hidebysig instance bool 
            '<PickTerrainForGathering>b__0'(int32 'value',
                                            float32 distance) cil managed
    {
      // 代码大小       62 (0x3e)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass53_0'::position
      IL_0006:  ldarg.2
      IL_0007:  ldarg.0
      IL_0008:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass53_0'::direction
      IL_000d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0012:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0017:  ldarg.0
      IL_0018:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass53_0'::creaturePosition
      IL_001d:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                    valuetype [Engine]Engine.Vector3)
      IL_0022:  ldarg.0
      IL_0023:  ldfld      float32 Game.ComponentMiner/'<>c__DisplayClass53_0'::reach
      IL_0028:  bgt.un.s   IL_003c

      IL_002a:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_002f:  ldarg.1
      IL_0030:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_0035:  ldelem.ref
      IL_0036:  ldfld      bool Game.Block::IsGatherable
      IL_003b:  ret

      IL_003c:  ldc.i4.0
      IL_003d:  ret
    } // end of method '<>c__DisplayClass53_0'::'<PickTerrainForGathering>b__0'

  } // end of class '<>c__DisplayClass53_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass54_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public valuetype [Engine]Engine.Vector3 position
    .field public valuetype [Engine]Engine.Vector3 direction
    .field public valuetype [Engine]Engine.Vector3 creaturePosition
    .field public float32 reach
    .field public class Game.ComponentMiner '<>4__this'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass54_0'::.ctor

    .method assembly hidebysig instance bool 
            '<PickBody>b__0'(class Game.ComponentBody body,
                             float32 distance) cil managed
    {
      // 代码大小       113 (0x71)
      .maxstack  3
      IL_0000:  ldarg.0
      IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass54_0'::position
      IL_0006:  ldarg.2
      IL_0007:  ldarg.0
      IL_0008:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass54_0'::direction
      IL_000d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0012:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0017:  ldarg.0
      IL_0018:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass54_0'::creaturePosition
      IL_001d:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                    valuetype [Engine]Engine.Vector3)
      IL_0022:  ldarg.0
      IL_0023:  ldfld      float32 Game.ComponentMiner/'<>c__DisplayClass54_0'::reach
      IL_0028:  bgt.un.s   IL_006f

      IL_002a:  ldarg.1
      IL_002b:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
      IL_0030:  ldarg.0
      IL_0031:  ldfld      class Game.ComponentMiner Game.ComponentMiner/'<>c__DisplayClass54_0'::'<>4__this'
      IL_0036:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
      IL_003b:  beq.s      IL_006f

      IL_003d:  ldarg.1
      IL_003e:  ldarg.0
      IL_003f:  ldfld      class Game.ComponentMiner Game.ComponentMiner/'<>c__DisplayClass54_0'::'<>4__this'
      IL_0044:  call       instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
      IL_0049:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
      IL_004e:  callvirt   instance bool Game.ComponentBody::IsChildOfBody(class Game.ComponentBody)
      IL_0053:  brtrue.s   IL_006f

      IL_0055:  ldarg.0
      IL_0056:  ldfld      class Game.ComponentMiner Game.ComponentMiner/'<>c__DisplayClass54_0'::'<>4__this'
      IL_005b:  call       instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
      IL_0060:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
      IL_0065:  ldarg.1
      IL_0066:  callvirt   instance bool Game.ComponentBody::IsChildOfBody(class Game.ComponentBody)
      IL_006b:  brtrue.s   IL_006f

      IL_006d:  ldc.i4.1
      IL_006e:  ret

      IL_006f:  ldc.i4.0
      IL_0070:  ret
    } // end of method '<>c__DisplayClass54_0'::'<PickBody>b__0'

  } // end of class '<>c__DisplayClass54_0'

  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemBodies m_subsystemBodies
  .field private class Game.SubsystemMovingBlocks m_subsystemMovingBlocks
  .field private class Game.SubsystemPlayer m_subsystemPlayer
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.SubsystemSoundMaterials m_subsystemSoundMaterials
  .field private class Game.SubsystemInput m_subsystemInput
  .field private class Game.SubsystemBlockBehaviors m_subsystemBlockBehaviors
  .field private class Game.Random m_random
  .field private static class Game.Random s_random
  .field private float64 m_digStartTime
  .field private float32 m_digProgress
  .field private valuetype [System.Runtime]System.Nullable`1<float64> m_lastHitTime
  .field private int32 m_lastDigFrameIndex
  .field private float32 m_lastPokingPhase
  .field private class Game.ComponentCreature '<ComponentCreature>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.IInventory '<Inventory>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<AttackPower>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<PokingPhase>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> '<DigCellFace>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance class Game.ComponentCreature 
          get_ComponentCreature() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentMiner::'<ComponentCreature>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentMiner::get_ComponentCreature

  .method private hidebysig specialname instance void 
          set_ComponentCreature(class Game.ComponentCreature 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ComponentCreature Game.ComponentMiner::'<ComponentCreature>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentMiner::set_ComponentCreature

  .method public hidebysig specialname instance class Game.IInventory 
          get_Inventory() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.IInventory Game.ComponentMiner::'<Inventory>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentMiner::get_Inventory

  .method private hidebysig specialname instance void 
          set_Inventory(class Game.IInventory 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.IInventory Game.ComponentMiner::'<Inventory>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentMiner::set_Inventory

  .method public hidebysig specialname instance int32 
          get_ActiveBlockValue() cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0006:  brtrue.s   IL_000a

    IL_0008:  ldc.i4.0
    IL_0009:  ret

    IL_000a:  ldarg.0
    IL_000b:  call       instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0010:  ldarg.0
    IL_0011:  call       instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0016:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_001b:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_0020:  ret
  } // end of method ComponentMiner::get_ActiveBlockValue

  .method public hidebysig specialname instance float32 
          get_AttackPower() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentMiner::'<AttackPower>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentMiner::get_AttackPower

  .method private hidebysig specialname instance void 
          set_AttackPower(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentMiner::'<AttackPower>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentMiner::set_AttackPower

  .method public hidebysig specialname instance float32 
          get_PokingPhase() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentMiner::'<PokingPhase>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentMiner::get_PokingPhase

  .method private hidebysig specialname instance void 
          set_PokingPhase(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentMiner::'<PokingPhase>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentMiner::set_PokingPhase

  .method public hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> 
          get_DigCellFace() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> Game.ComponentMiner::'<DigCellFace>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentMiner::get_DigCellFace

  .method private hidebysig specialname instance void 
          set_DigCellFace(valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> Game.ComponentMiner::'<DigCellFace>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentMiner::set_DigCellFace

  .method public hidebysig specialname instance float32 
          get_DigTime() cil managed
  {
    // 代码大小       42 (0x2a)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> Game.ComponentMiner::get_DigCellFace()
    IL_0006:  stloc.0
    IL_0007:  ldloca.s   V_0
    IL_0009:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>::get_HasValue()
    IL_000e:  brtrue.s   IL_0016

    IL_0010:  ldc.r4     0.0
    IL_0015:  ret

    IL_0016:  ldarg.0
    IL_0017:  ldfld      class Game.SubsystemTime Game.ComponentMiner::m_subsystemTime
    IL_001c:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0021:  ldarg.0
    IL_0022:  ldfld      float64 Game.ComponentMiner::m_digStartTime
    IL_0027:  sub
    IL_0028:  conv.r4
    IL_0029:  ret
  } // end of method ComponentMiner::get_DigTime

  .method public hidebysig specialname instance float32 
          get_DigProgress() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  1
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> Game.ComponentMiner::get_DigCellFace()
    IL_0006:  stloc.0
    IL_0007:  ldloca.s   V_0
    IL_0009:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>::get_HasValue()
    IL_000e:  brtrue.s   IL_0016

    IL_0010:  ldc.r4     0.0
    IL_0015:  ret

    IL_0016:  ldarg.0
    IL_0017:  ldfld      float32 Game.ComponentMiner::m_digProgress
    IL_001c:  ret
  } // end of method ComponentMiner::get_DigProgress

  .method public hidebysig instance void 
          Poke(bool forceRestart) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  brfalse.s  IL_000f

    IL_0003:  ldarg.0
    IL_0004:  ldc.r4     9.9999997e-005
    IL_0009:  call       instance void Game.ComponentMiner::set_PokingPhase(float32)
    IL_000e:  ret

    IL_000f:  ldarg.0
    IL_0010:  ldc.r4     9.9999997e-005
    IL_0015:  ldarg.0
    IL_0016:  call       instance float32 Game.ComponentMiner::get_PokingPhase()
    IL_001b:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0020:  call       instance void Game.ComponentMiner::set_PokingPhase(float32)
    IL_0025:  ret
  } // end of method ComponentMiner::Poke

  .method public hidebysig instance bool 
          Dig(valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       766 (0x2fe)
    .maxstack  8
    .locals init (bool V_0,
             valuetype Game.CellFace V_1,
             int32 V_2,
             int32 V_3,
             class Game.Block V_4,
             int32 V_5,
             int32 V_6,
             class Game.Block V_7,
             float32 V_8,
             bool V_9,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> V_10,
             valuetype Game.BlockPlacementData V_11,
             valuetype [Engine]Engine.Vector3 V_12,
             class Game.BlockDebrisParticleSystem V_13)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldarg.0
    IL_0003:  ldarg.0
    IL_0004:  ldfld      class Game.SubsystemTime Game.ComponentMiner::m_subsystemTime
    IL_0009:  callvirt   instance int32 Game.SubsystemTime::get_FrameIndex()
    IL_000e:  stfld      int32 Game.ComponentMiner::m_lastDigFrameIndex
    IL_0013:  ldarg.1
    IL_0014:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0019:  stloc.1
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.SubsystemTerrain Game.ComponentMiner::m_subsystemTerrain
    IL_0020:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0025:  ldloc.1
    IL_0026:  ldfld      int32 Game.CellFace::X
    IL_002b:  ldloc.1
    IL_002c:  ldfld      int32 Game.CellFace::Y
    IL_0031:  ldloc.1
    IL_0032:  ldfld      int32 Game.CellFace::Z
    IL_0037:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_003c:  stloc.2
    IL_003d:  ldloc.2
    IL_003e:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0043:  stloc.3
    IL_0044:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0049:  ldloc.3
    IL_004a:  ldelem.ref
    IL_004b:  stloc.s    V_4
    IL_004d:  ldarg.0
    IL_004e:  call       instance int32 Game.ComponentMiner::get_ActiveBlockValue()
    IL_0053:  stloc.s    V_5
    IL_0055:  ldloc.s    V_5
    IL_0057:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_005c:  stloc.s    V_6
    IL_005e:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0063:  ldloc.s    V_6
    IL_0065:  ldelem.ref
    IL_0066:  stloc.s    V_7
    IL_0068:  ldarg.0
    IL_0069:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> Game.ComponentMiner::get_DigCellFace()
    IL_006e:  stloc.s    V_10
    IL_0070:  ldloca.s   V_10
    IL_0072:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>::get_HasValue()
    IL_0077:  brfalse.s  IL_00cd

    IL_0079:  ldarg.0
    IL_007a:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> Game.ComponentMiner::get_DigCellFace()
    IL_007f:  stloc.s    V_10
    IL_0081:  ldloca.s   V_10
    IL_0083:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>::get_Value()
    IL_0088:  ldfld      int32 Game.CellFace::X
    IL_008d:  ldloc.1
    IL_008e:  ldfld      int32 Game.CellFace::X
    IL_0093:  bne.un.s   IL_00cd

    IL_0095:  ldarg.0
    IL_0096:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> Game.ComponentMiner::get_DigCellFace()
    IL_009b:  stloc.s    V_10
    IL_009d:  ldloca.s   V_10
    IL_009f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>::get_Value()
    IL_00a4:  ldfld      int32 Game.CellFace::Y
    IL_00a9:  ldloc.1
    IL_00aa:  ldfld      int32 Game.CellFace::Y
    IL_00af:  bne.un.s   IL_00cd

    IL_00b1:  ldarg.0
    IL_00b2:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> Game.ComponentMiner::get_DigCellFace()
    IL_00b7:  stloc.s    V_10
    IL_00b9:  ldloca.s   V_10
    IL_00bb:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>::get_Value()
    IL_00c0:  ldfld      int32 Game.CellFace::Z
    IL_00c5:  ldloc.1
    IL_00c6:  ldfld      int32 Game.CellFace::Z
    IL_00cb:  beq.s      IL_00ea

    IL_00cd:  ldarg.0
    IL_00ce:  ldarg.0
    IL_00cf:  ldfld      class Game.SubsystemTime Game.ComponentMiner::m_subsystemTime
    IL_00d4:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_00d9:  stfld      float64 Game.ComponentMiner::m_digStartTime
    IL_00de:  ldarg.0
    IL_00df:  ldloc.1
    IL_00e0:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>::.ctor(!0)
    IL_00e5:  call       instance void Game.ComponentMiner::set_DigCellFace(valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>)
    IL_00ea:  ldarg.0
    IL_00eb:  ldloc.2
    IL_00ec:  ldloc.s    V_6
    IL_00ee:  call       instance float32 Game.ComponentMiner::CalculateDigTime(int32,
                                                                                int32)
    IL_00f3:  stloc.s    V_8
    IL_00f5:  ldarg.0
    IL_00f6:  ldloc.s    V_8
    IL_00f8:  ldc.r4     0.0
    IL_00fd:  bgt.s      IL_0106

    IL_00ff:  ldc.r4     1.
    IL_0104:  br.s       IL_0121

    IL_0106:  ldarg.0
    IL_0107:  ldfld      class Game.SubsystemTime Game.ComponentMiner::m_subsystemTime
    IL_010c:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0111:  ldarg.0
    IL_0112:  ldfld      float64 Game.ComponentMiner::m_digStartTime
    IL_0117:  sub
    IL_0118:  conv.r4
    IL_0119:  ldloc.s    V_8
    IL_011b:  div
    IL_011c:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0121:  stfld      float32 Game.ComponentMiner::m_digProgress
    IL_0126:  ldarg.0
    IL_0127:  ldfld      class Game.SubsystemInput Game.ComponentMiner::m_subsystemInput
    IL_012c:  callvirt   instance bool Game.SubsystemInput::get_IsControlledByMouse()
    IL_0131:  brfalse.s  IL_015b

    IL_0133:  ldarg.0
    IL_0134:  ldfld      class Game.SubsystemPlayer Game.ComponentMiner::m_subsystemPlayer
    IL_0139:  ldarg.0
    IL_013a:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_013f:  callvirt   instance bool Game.SubsystemPlayer::IsPlayer(class [EntitySystem]GameEntitySystem.Entity)
    IL_0144:  brfalse.s  IL_015b

    IL_0146:  ldarg.0
    IL_0147:  ldfld      class Game.SubsystemGameInfo Game.ComponentMiner::m_subsystemGameInfo
    IL_014c:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_0151:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_0156:  ldc.i4.0
    IL_0157:  ceq
    IL_0159:  br.s       IL_015c

    IL_015b:  ldc.i4.0
    IL_015c:  stloc.s    V_9
    IL_015e:  ldloc.s    V_9
    IL_0160:  brtrue.s   IL_0182

    IL_0162:  ldarg.0
    IL_0163:  ldfld      float32 Game.ComponentMiner::m_lastPokingPhase
    IL_0168:  ldc.r4     0.5
    IL_016d:  bgt.un     IL_02fc

    IL_0172:  ldarg.0
    IL_0173:  call       instance float32 Game.ComponentMiner::get_PokingPhase()
    IL_0178:  ldc.r4     0.5
    IL_017d:  ble.un     IL_02fc

    IL_0182:  ldarg.0
    IL_0183:  ldfld      float32 Game.ComponentMiner::m_digProgress
    IL_0188:  ldc.r4     1.
    IL_018d:  blt.un     IL_025f

    IL_0192:  ldarg.0
    IL_0193:  ldloca.s   V_10
    IL_0195:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>
    IL_019b:  ldloc.s    V_10
    IL_019d:  call       instance void Game.ComponentMiner::set_DigCellFace(valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>)
    IL_01a2:  ldloc.s    V_9
    IL_01a4:  brfalse.s  IL_01ad

    IL_01a6:  ldarg.0
    IL_01a7:  ldc.i4.1
    IL_01a8:  call       instance void Game.ComponentMiner::Poke(bool)
    IL_01ad:  ldloc.s    V_4
    IL_01af:  ldarg.0
    IL_01b0:  ldfld      class Game.SubsystemTerrain Game.ComponentMiner::m_subsystemTerrain
    IL_01b5:  ldarg.0
    IL_01b6:  ldloc.2
    IL_01b7:  ldloc.s    V_5
    IL_01b9:  ldarg.1
    IL_01ba:  callvirt   instance valuetype Game.BlockPlacementData Game.Block::GetDigValue(class Game.SubsystemTerrain,
                                                                                            class Game.ComponentMiner,
                                                                                            int32,
                                                                                            int32,
                                                                                            valuetype Game.TerrainRaycastResult)
    IL_01bf:  stloc.s    V_11
    IL_01c1:  ldarg.0
    IL_01c2:  ldfld      class Game.SubsystemTerrain Game.ComponentMiner::m_subsystemTerrain
    IL_01c7:  ldloc.s    V_7
    IL_01c9:  ldfld      int32 Game.Block::ToolLevel
    IL_01ce:  ldloc.s    V_11
    IL_01d0:  ldfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_01d5:  ldfld      int32 Game.CellFace::X
    IL_01da:  ldloc.s    V_11
    IL_01dc:  ldfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_01e1:  ldfld      int32 Game.CellFace::Y
    IL_01e6:  ldloc.s    V_11
    IL_01e8:  ldfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_01ed:  ldfld      int32 Game.CellFace::Z
    IL_01f2:  ldloc.s    V_11
    IL_01f4:  ldfld      int32 Game.BlockPlacementData::Value
    IL_01f9:  ldc.i4.0
    IL_01fa:  ldc.i4.0
    IL_01fb:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_0200:  ldarg.0
    IL_0201:  ldfld      class Game.SubsystemSoundMaterials Game.ComponentMiner::m_subsystemSoundMaterials
    IL_0206:  ldloc.2
    IL_0207:  ldloc.1
    IL_0208:  ldfld      int32 Game.CellFace::X
    IL_020d:  conv.r4
    IL_020e:  ldloc.1
    IL_020f:  ldfld      int32 Game.CellFace::Y
    IL_0214:  conv.r4
    IL_0215:  ldloc.1
    IL_0216:  ldfld      int32 Game.CellFace::Z
    IL_021b:  conv.r4
    IL_021c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0221:  ldc.r4     2.
    IL_0226:  callvirt   instance void Game.SubsystemSoundMaterials::PlayImpactSound(int32,
                                                                                     valuetype [Engine]Engine.Vector3,
                                                                                     float32)
    IL_022b:  ldarg.0
    IL_022c:  ldc.i4.1
    IL_022d:  call       instance void Game.ComponentMiner::DamageActiveTool(int32)
    IL_0232:  ldarg.0
    IL_0233:  call       instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0238:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_023d:  brfalse.s  IL_0258

    IL_023f:  ldarg.0
    IL_0240:  call       instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0245:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_024a:  dup
    IL_024b:  ldfld      int64 Game.PlayerStats::BlocksDug
    IL_0250:  ldc.i4.1
    IL_0251:  conv.i8
    IL_0252:  add
    IL_0253:  stfld      int64 Game.PlayerStats::BlocksDug
    IL_0258:  ldc.i4.1
    IL_0259:  stloc.0
    IL_025a:  br         IL_02fc

    IL_025f:  ldarg.0
    IL_0260:  ldfld      class Game.SubsystemSoundMaterials Game.ComponentMiner::m_subsystemSoundMaterials
    IL_0265:  ldloc.2
    IL_0266:  ldloc.1
    IL_0267:  ldfld      int32 Game.CellFace::X
    IL_026c:  conv.r4
    IL_026d:  ldloc.1
    IL_026e:  ldfld      int32 Game.CellFace::Y
    IL_0273:  conv.r4
    IL_0274:  ldloc.1
    IL_0275:  ldfld      int32 Game.CellFace::Z
    IL_027a:  conv.r4
    IL_027b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0280:  ldc.r4     1.
    IL_0285:  callvirt   instance void Game.SubsystemSoundMaterials::PlayImpactSound(int32,
                                                                                     valuetype [Engine]Engine.Vector3,
                                                                                     float32)
    IL_028a:  ldarg.1
    IL_028b:  ldfld      valuetype [Engine]Engine.Vector3 Game.TerrainRaycastResult::RaycastStart
    IL_0290:  ldarg.1
    IL_0291:  ldfld      float32 Game.TerrainRaycastResult::Distance
    IL_0296:  ldarg.1
    IL_0297:  ldfld      valuetype [Engine]Engine.Vector3 Game.TerrainRaycastResult::RaycastEnd
    IL_029c:  ldarg.1
    IL_029d:  ldfld      valuetype [Engine]Engine.Vector3 Game.TerrainRaycastResult::RaycastStart
    IL_02a2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_02a7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_02ac:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_02b1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_02b6:  ldc.r4     0.1
    IL_02bb:  ldloc.1
    IL_02bc:  ldfld      int32 Game.CellFace::Face
    IL_02c1:  call       valuetype [Engine]Engine.Vector3 Game.CellFace::FaceToVector3(int32)
    IL_02c6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_02cb:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_02d0:  stloc.s    V_12
    IL_02d2:  ldloc.s    V_4
    IL_02d4:  ldarg.0
    IL_02d5:  ldfld      class Game.SubsystemTerrain Game.ComponentMiner::m_subsystemTerrain
    IL_02da:  ldloc.s    V_12
    IL_02dc:  ldloc.2
    IL_02dd:  ldc.r4     0.34999999
    IL_02e2:  callvirt   instance class Game.BlockDebrisParticleSystem Game.Block::CreateDebrisParticleSystem(class Game.SubsystemTerrain,
                                                                                                              valuetype [Engine]Engine.Vector3,
                                                                                                              int32,
                                                                                                              float32)
    IL_02e7:  stloc.s    V_13
    IL_02e9:  ldarg.0
    IL_02ea:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_02ef:  ldc.i4.1
    IL_02f0:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemParticles>(bool)
    IL_02f5:  ldloc.s    V_13
    IL_02f7:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
    IL_02fc:  ldloc.0
    IL_02fd:  ret
  } // end of method ComponentMiner::Dig

  .method public hidebysig instance bool 
          Place(valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       51 (0x33)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.0
    IL_0003:  call       instance int32 Game.ComponentMiner::get_ActiveBlockValue()
    IL_0008:  call       instance bool Game.ComponentMiner::Place(valuetype Game.TerrainRaycastResult,
                                                                  int32)
    IL_000d:  brfalse.s  IL_0031

    IL_000f:  ldarg.0
    IL_0010:  call       instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0015:  brfalse.s  IL_002f

    IL_0017:  ldarg.0
    IL_0018:  call       instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_001d:  ldarg.0
    IL_001e:  call       instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0023:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_0028:  ldc.i4.1
    IL_0029:  callvirt   instance int32 Game.IInventory::RemoveSlotItems(int32,
                                                                         int32)
    IL_002e:  pop
    IL_002f:  ldc.i4.1
    IL_0030:  ret

    IL_0031:  ldc.i4.0
    IL_0032:  ret
  } // end of method ComponentMiner::Place

  .method public hidebysig instance bool 
          Place(valuetype Game.TerrainRaycastResult raycastResult,
                int32 'value') cil managed
  {
    // 代码大小       594 (0x252)
    .maxstack  8
    .locals init (int32 V_0,
             class Game.Block V_1,
             valuetype Game.BlockPlacementData V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             bool V_7,
             valuetype [Engine]Engine.BoundingBox V_8,
             valuetype [Engine]Engine.BoundingBox[] V_9,
             int32 V_10,
             valuetype [Engine]Engine.BoundingBox V_11,
             class Game.SubsystemBlockBehavior[] V_12)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0006:  stloc.0
    IL_0007:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_000c:  ldloc.0
    IL_000d:  ldelem.ref
    IL_000e:  ldfld      bool Game.Block::IsPlaceable
    IL_0013:  brfalse    IL_0250

    IL_0018:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_001d:  ldloc.0
    IL_001e:  ldelem.ref
    IL_001f:  stloc.1
    IL_0020:  ldloc.1
    IL_0021:  ldarg.0
    IL_0022:  ldfld      class Game.SubsystemTerrain Game.ComponentMiner::m_subsystemTerrain
    IL_0027:  ldarg.0
    IL_0028:  ldarg.2
    IL_0029:  ldarg.1
    IL_002a:  callvirt   instance valuetype Game.BlockPlacementData Game.Block::GetPlacementValue(class Game.SubsystemTerrain,
                                                                                                  class Game.ComponentMiner,
                                                                                                  int32,
                                                                                                  valuetype Game.TerrainRaycastResult)
    IL_002f:  stloc.2
    IL_0030:  ldloc.2
    IL_0031:  ldfld      int32 Game.BlockPlacementData::Value
    IL_0036:  brfalse    IL_0250

    IL_003b:  ldloc.2
    IL_003c:  ldfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_0041:  ldfld      int32 Game.CellFace::Face
    IL_0046:  call       valuetype [Engine]Engine.Vector3 Game.CellFace::FaceToVector3(int32)
    IL_004b:  stloc.3
    IL_004c:  ldloc.2
    IL_004d:  ldfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_0052:  ldfld      int32 Game.CellFace::X
    IL_0057:  ldloc.3
    IL_0058:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_005d:  conv.i4
    IL_005e:  add
    IL_005f:  stloc.s    V_4
    IL_0061:  ldloc.2
    IL_0062:  ldfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_0067:  ldfld      int32 Game.CellFace::Y
    IL_006c:  ldloc.3
    IL_006d:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0072:  conv.i4
    IL_0073:  add
    IL_0074:  stloc.s    V_5
    IL_0076:  ldloc.2
    IL_0077:  ldfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_007c:  ldfld      int32 Game.CellFace::Z
    IL_0081:  ldloc.3
    IL_0082:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0087:  conv.i4
    IL_0088:  add
    IL_0089:  stloc.s    V_6
    IL_008b:  ldc.i4.0
    IL_008c:  stloc.s    V_7
    IL_008e:  ldloc.1
    IL_008f:  ldfld      bool Game.Block::IsCollidable
    IL_0094:  brfalse    IL_0179

    IL_0099:  ldarg.0
    IL_009a:  call       instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_009f:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00a4:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_00a9:  stloc.s    V_8
    IL_00ab:  ldloca.s   V_8
    IL_00ad:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_00b2:  dup
    IL_00b3:  ldobj      [Engine]Engine.Vector3
    IL_00b8:  ldc.r4     0.2
    IL_00bd:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_00c2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00c7:  stobj      [Engine]Engine.Vector3
    IL_00cc:  ldloca.s   V_8
    IL_00ce:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_00d3:  dup
    IL_00d4:  ldobj      [Engine]Engine.Vector3
    IL_00d9:  ldc.r4     0.2
    IL_00de:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_00e3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00e8:  stobj      [Engine]Engine.Vector3
    IL_00ed:  ldloc.1
    IL_00ee:  ldarg.0
    IL_00ef:  ldfld      class Game.SubsystemTerrain Game.ComponentMiner::m_subsystemTerrain
    IL_00f4:  ldloc.2
    IL_00f5:  ldfld      int32 Game.BlockPlacementData::Value
    IL_00fa:  callvirt   instance valuetype [Engine]Engine.BoundingBox[] Game.Block::GetCustomCollisionBoxes(class Game.SubsystemTerrain,
                                                                                                             int32)
    IL_00ff:  stloc.s    V_9
    IL_0101:  ldc.i4.0
    IL_0102:  stloc.s    V_10
    IL_0104:  br.s       IL_0171

    IL_0106:  ldloc.s    V_9
    IL_0108:  ldloc.s    V_10
    IL_010a:  ldelem     [Engine]Engine.BoundingBox
    IL_010f:  stloc.s    V_11
    IL_0111:  ldloca.s   V_11
    IL_0113:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0118:  dup
    IL_0119:  ldobj      [Engine]Engine.Vector3
    IL_011e:  ldloc.s    V_4
    IL_0120:  conv.r4
    IL_0121:  ldloc.s    V_5
    IL_0123:  conv.r4
    IL_0124:  ldloc.s    V_6
    IL_0126:  conv.r4
    IL_0127:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_012c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0131:  stobj      [Engine]Engine.Vector3
    IL_0136:  ldloca.s   V_11
    IL_0138:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_013d:  dup
    IL_013e:  ldobj      [Engine]Engine.Vector3
    IL_0143:  ldloc.s    V_4
    IL_0145:  conv.r4
    IL_0146:  ldloc.s    V_5
    IL_0148:  conv.r4
    IL_0149:  ldloc.s    V_6
    IL_014b:  conv.r4
    IL_014c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0151:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0156:  stobj      [Engine]Engine.Vector3
    IL_015b:  ldloca.s   V_8
    IL_015d:  ldloc.s    V_11
    IL_015f:  call       instance bool [Engine]Engine.BoundingBox::Intersection(valuetype [Engine]Engine.BoundingBox)
    IL_0164:  brfalse.s  IL_016b

    IL_0166:  ldc.i4.1
    IL_0167:  stloc.s    V_7
    IL_0169:  br.s       IL_0179

    IL_016b:  ldloc.s    V_10
    IL_016d:  ldc.i4.1
    IL_016e:  add
    IL_016f:  stloc.s    V_10
    IL_0171:  ldloc.s    V_10
    IL_0173:  ldloc.s    V_9
    IL_0175:  ldlen
    IL_0176:  conv.i4
    IL_0177:  blt.s      IL_0106

    IL_0179:  ldloc.s    V_7
    IL_017b:  brtrue     IL_0250

    IL_0180:  ldarg.0
    IL_0181:  ldfld      class Game.SubsystemBlockBehaviors Game.ComponentMiner::m_subsystemBlockBehaviors
    IL_0186:  ldloc.2
    IL_0187:  ldfld      int32 Game.BlockPlacementData::Value
    IL_018c:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0191:  callvirt   instance class Game.SubsystemBlockBehavior[] Game.SubsystemBlockBehaviors::GetBlockBehaviors(int32)
    IL_0196:  stloc.s    V_12
    IL_0198:  ldc.i4.0
    IL_0199:  stloc.s    V_10
    IL_019b:  br.s       IL_01b6

    IL_019d:  ldloc.s    V_12
    IL_019f:  ldloc.s    V_10
    IL_01a1:  ldelem.ref
    IL_01a2:  ldloc.s    V_4
    IL_01a4:  ldloc.s    V_5
    IL_01a6:  ldloc.s    V_6
    IL_01a8:  ldloca.s   V_2
    IL_01aa:  ldarg.2
    IL_01ab:  callvirt   instance void Game.SubsystemBlockBehavior::OnItemPlaced(int32,
                                                                                 int32,
                                                                                 int32,
                                                                                 valuetype Game.BlockPlacementData&,
                                                                                 int32)
    IL_01b0:  ldloc.s    V_10
    IL_01b2:  ldc.i4.1
    IL_01b3:  add
    IL_01b4:  stloc.s    V_10
    IL_01b6:  ldloc.s    V_10
    IL_01b8:  ldloc.s    V_12
    IL_01ba:  ldlen
    IL_01bb:  conv.i4
    IL_01bc:  blt.s      IL_019d

    IL_01be:  ldarg.0
    IL_01bf:  ldfld      class Game.SubsystemTerrain Game.ComponentMiner::m_subsystemTerrain
    IL_01c4:  ldc.i4.0
    IL_01c5:  ldloc.s    V_4
    IL_01c7:  ldloc.s    V_5
    IL_01c9:  ldloc.s    V_6
    IL_01cb:  ldloc.2
    IL_01cc:  ldfld      int32 Game.BlockPlacementData::Value
    IL_01d1:  ldc.i4.0
    IL_01d2:  ldc.i4.0
    IL_01d3:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_01d8:  ldarg.0
    IL_01d9:  ldfld      class Game.SubsystemAudio Game.ComponentMiner::m_subsystemAudio
    IL_01de:  ldstr      "Audio/BlockPlaced"
    IL_01e3:  ldc.r4     1.
    IL_01e8:  ldc.r4     0.0
    IL_01ed:  ldloc.2
    IL_01ee:  ldfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_01f3:  ldfld      int32 Game.CellFace::X
    IL_01f8:  conv.r4
    IL_01f9:  ldloc.2
    IL_01fa:  ldfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_01ff:  ldfld      int32 Game.CellFace::Y
    IL_0204:  conv.r4
    IL_0205:  ldloc.2
    IL_0206:  ldfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_020b:  ldfld      int32 Game.CellFace::Z
    IL_0210:  conv.r4
    IL_0211:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0216:  ldc.r4     5.
    IL_021b:  ldc.i4.0
    IL_021c:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_0221:  ldarg.0
    IL_0222:  ldc.i4.0
    IL_0223:  call       instance void Game.ComponentMiner::Poke(bool)
    IL_0228:  ldarg.0
    IL_0229:  call       instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_022e:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_0233:  brfalse.s  IL_024e

    IL_0235:  ldarg.0
    IL_0236:  call       instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_023b:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_0240:  dup
    IL_0241:  ldfld      int64 Game.PlayerStats::BlocksPlaced
    IL_0246:  ldc.i4.1
    IL_0247:  conv.i8
    IL_0248:  add
    IL_0249:  stfld      int64 Game.PlayerStats::BlocksPlaced
    IL_024e:  ldc.i4.1
    IL_024f:  ret

    IL_0250:  ldc.i4.0
    IL_0251:  ret
  } // end of method ComponentMiner::Place

  .method public hidebysig instance bool 
          Use(valuetype [Engine]Engine.Vector3 start,
              valuetype [Engine]Engine.Vector3 direction) cil managed
  {
    // 代码大小       63 (0x3f)
    .maxstack  4
    .locals init (int32 V_0,
             class Game.SubsystemBlockBehavior[] V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  call       instance int32 Game.ComponentMiner::get_ActiveBlockValue()
    IL_0006:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldfld      class Game.SubsystemBlockBehaviors Game.ComponentMiner::m_subsystemBlockBehaviors
    IL_0012:  ldloc.0
    IL_0013:  callvirt   instance class Game.SubsystemBlockBehavior[] Game.SubsystemBlockBehaviors::GetBlockBehaviors(int32)
    IL_0018:  stloc.1
    IL_0019:  ldc.i4.0
    IL_001a:  stloc.2
    IL_001b:  br.s       IL_0037

    IL_001d:  ldloc.1
    IL_001e:  ldloc.2
    IL_001f:  ldelem.ref
    IL_0020:  ldarg.1
    IL_0021:  ldarg.2
    IL_0022:  ldarg.0
    IL_0023:  callvirt   instance bool Game.SubsystemBlockBehavior::OnUse(valuetype [Engine]Engine.Vector3,
                                                                          valuetype [Engine]Engine.Vector3,
                                                                          class Game.ComponentMiner)
    IL_0028:  brfalse.s  IL_0033

    IL_002a:  ldarg.0
    IL_002b:  ldc.i4.0
    IL_002c:  call       instance void Game.ComponentMiner::Poke(bool)
    IL_0031:  ldc.i4.1
    IL_0032:  ret

    IL_0033:  ldloc.2
    IL_0034:  ldc.i4.1
    IL_0035:  add
    IL_0036:  stloc.2
    IL_0037:  ldloc.2
    IL_0038:  ldloc.1
    IL_0039:  ldlen
    IL_003a:  conv.i4
    IL_003b:  blt.s      IL_001d

    IL_003d:  ldc.i4.0
    IL_003e:  ret
  } // end of method ComponentMiner::Use

  .method public hidebysig instance bool 
          Interact(valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       138 (0x8a)
    .maxstack  4
    .locals init (int32 V_0,
             class Game.SubsystemBlockBehavior[] V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.ComponentMiner::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  ldarg.1
    IL_000c:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0011:  ldfld      int32 Game.CellFace::X
    IL_0016:  ldarg.1
    IL_0017:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_001c:  ldfld      int32 Game.CellFace::Y
    IL_0021:  ldarg.1
    IL_0022:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0027:  ldfld      int32 Game.CellFace::Z
    IL_002c:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_0031:  stloc.0
    IL_0032:  ldarg.0
    IL_0033:  ldfld      class Game.SubsystemBlockBehaviors Game.ComponentMiner::m_subsystemBlockBehaviors
    IL_0038:  ldloc.0
    IL_0039:  callvirt   instance class Game.SubsystemBlockBehavior[] Game.SubsystemBlockBehaviors::GetBlockBehaviors(int32)
    IL_003e:  stloc.1
    IL_003f:  ldc.i4.0
    IL_0040:  stloc.2
    IL_0041:  br.s       IL_0082

    IL_0043:  ldloc.1
    IL_0044:  ldloc.2
    IL_0045:  ldelem.ref
    IL_0046:  ldarg.1
    IL_0047:  ldarg.0
    IL_0048:  callvirt   instance bool Game.SubsystemBlockBehavior::OnInteract(valuetype Game.TerrainRaycastResult,
                                                                               class Game.ComponentMiner)
    IL_004d:  brfalse.s  IL_007e

    IL_004f:  ldarg.0
    IL_0050:  call       instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0055:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_005a:  brfalse.s  IL_0075

    IL_005c:  ldarg.0
    IL_005d:  call       instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0062:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_0067:  dup
    IL_0068:  ldfld      int64 Game.PlayerStats::BlocksInteracted
    IL_006d:  ldc.i4.1
    IL_006e:  conv.i8
    IL_006f:  add
    IL_0070:  stfld      int64 Game.PlayerStats::BlocksInteracted
    IL_0075:  ldarg.0
    IL_0076:  ldc.i4.0
    IL_0077:  call       instance void Game.ComponentMiner::Poke(bool)
    IL_007c:  ldc.i4.1
    IL_007d:  ret

    IL_007e:  ldloc.2
    IL_007f:  ldc.i4.1
    IL_0080:  add
    IL_0081:  stloc.2
    IL_0082:  ldloc.2
    IL_0083:  ldloc.1
    IL_0084:  ldlen
    IL_0085:  conv.i4
    IL_0086:  blt.s      IL_0043

    IL_0088:  ldc.i4.0
    IL_0089:  ret
  } // end of method ComponentMiner::Interact

  .method public hidebysig instance void 
          Hit(class Game.ComponentBody componentBody,
              valuetype [Engine]Engine.Vector3 direction) cil managed
  {
    // 代码大小       393 (0x189)
    .maxstack  7
    .locals init (float32 V_0,
             float32 V_1,
             bool V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentMiner::m_lastHitTime
    IL_0006:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_000b:  brfalse.s  IL_0032

    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.SubsystemTime Game.ComponentMiner::m_subsystemTime
    IL_0013:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0018:  ldarg.0
    IL_0019:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentMiner::m_lastHitTime
    IL_001e:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::get_Value()
    IL_0023:  sub
    IL_0024:  ldc.r8     0.60000002384185791
    IL_002d:  ble.un     IL_0188

    IL_0032:  ldarg.0
    IL_0033:  ldarg.0
    IL_0034:  ldfld      class Game.SubsystemTime Game.ComponentMiner::m_subsystemTime
    IL_0039:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_003e:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_0043:  stfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentMiner::m_lastHitTime
    IL_0048:  ldc.r4     0.0
    IL_004d:  stloc.0
    IL_004e:  ldc.r4     1.
    IL_0053:  stloc.1
    IL_0054:  ldarg.0
    IL_0055:  call       instance int32 Game.ComponentMiner::get_ActiveBlockValue()
    IL_005a:  brfalse.s  IL_009e

    IL_005c:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0061:  ldarg.0
    IL_0062:  call       instance int32 Game.ComponentMiner::get_ActiveBlockValue()
    IL_0067:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_006c:  ldelem.ref
    IL_006d:  dup
    IL_006e:  ldarg.0
    IL_006f:  call       instance int32 Game.ComponentMiner::get_ActiveBlockValue()
    IL_0074:  callvirt   instance float32 Game.Block::GetMeleePower(int32)
    IL_0079:  ldarg.0
    IL_007a:  ldfld      class Game.Random Game.ComponentMiner::m_random
    IL_007f:  ldc.r4     0.80000001
    IL_0084:  ldc.r4     1.2
    IL_0089:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_008e:  mul
    IL_008f:  stloc.0
    IL_0090:  ldarg.0
    IL_0091:  call       instance int32 Game.ComponentMiner::get_ActiveBlockValue()
    IL_0096:  callvirt   instance float32 Game.Block::GetMeleeHitProbability(int32)
    IL_009b:  stloc.1
    IL_009c:  br.s       IL_00c1

    IL_009e:  ldarg.0
    IL_009f:  call       instance float32 Game.ComponentMiner::get_AttackPower()
    IL_00a4:  ldarg.0
    IL_00a5:  ldfld      class Game.Random Game.ComponentMiner::m_random
    IL_00aa:  ldc.r4     1.
    IL_00af:  ldc.r4     1.5
    IL_00b4:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00b9:  mul
    IL_00ba:  stloc.0
    IL_00bb:  ldc.r4     0.66000003
    IL_00c0:  stloc.1
    IL_00c1:  ldc.i4.0
    IL_00c2:  stloc.2
    IL_00c3:  ldarg.0
    IL_00c4:  ldfld      class Game.SubsystemPlayer Game.ComponentMiner::m_subsystemPlayer
    IL_00c9:  ldarg.0
    IL_00ca:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_00cf:  callvirt   instance bool Game.SubsystemPlayer::IsPlayer(class [EntitySystem]GameEntitySystem.Entity)
    IL_00d4:  brfalse.s  IL_0126

    IL_00d6:  ldarg.0
    IL_00d7:  ldfld      class Game.SubsystemAudio Game.ComponentMiner::m_subsystemAudio
    IL_00dc:  ldstr      "Audio/Swoosh"
    IL_00e1:  ldc.r4     1.
    IL_00e6:  ldarg.0
    IL_00e7:  ldfld      class Game.Random Game.ComponentMiner::m_random
    IL_00ec:  ldc.r4     -0.2
    IL_00f1:  ldc.r4     0.2
    IL_00f6:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00fb:  ldarg.1
    IL_00fc:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0101:  ldc.r4     3.
    IL_0106:  ldc.i4.0
    IL_0107:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_010c:  ldarg.0
    IL_010d:  ldfld      class Game.Random Game.ComponentMiner::m_random
    IL_0112:  ldc.r4     0.0
    IL_0117:  ldc.r4     0.99989998
    IL_011c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0121:  ldloc.1
    IL_0122:  blt.un.s   IL_0126

    IL_0124:  ldc.i4.1
    IL_0125:  stloc.2
    IL_0126:  ldloc.2
    IL_0127:  brtrue.s   IL_013f

    IL_0129:  ldarg.1
    IL_012a:  ldarg.0
    IL_012b:  call       instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0130:  ldarg.2
    IL_0131:  ldloc.0
    IL_0132:  ldc.i4.1
    IL_0133:  call       void Game.ComponentMiner::AttackBody(class Game.ComponentBody,
                                                              class Game.ComponentCreature,
                                                              valuetype [Engine]Engine.Vector3,
                                                              float32,
                                                              bool)
    IL_0138:  ldarg.0
    IL_0139:  ldc.i4.1
    IL_013a:  call       instance void Game.ComponentMiner::DamageActiveTool(int32)
    IL_013f:  ldarg.0
    IL_0140:  call       instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0145:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_014a:  brfalse.s  IL_0181

    IL_014c:  ldarg.0
    IL_014d:  call       instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0152:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_0157:  dup
    IL_0158:  ldfld      int64 Game.PlayerStats::MeleeAttacks
    IL_015d:  ldc.i4.1
    IL_015e:  conv.i8
    IL_015f:  add
    IL_0160:  stfld      int64 Game.PlayerStats::MeleeAttacks
    IL_0165:  ldloc.2
    IL_0166:  brtrue.s   IL_0181

    IL_0168:  ldarg.0
    IL_0169:  call       instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_016e:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_0173:  dup
    IL_0174:  ldfld      int64 Game.PlayerStats::MeleeHits
    IL_0179:  ldc.i4.1
    IL_017a:  conv.i8
    IL_017b:  add
    IL_017c:  stfld      int64 Game.PlayerStats::MeleeHits
    IL_0181:  ldarg.0
    IL_0182:  ldc.i4.0
    IL_0183:  call       instance void Game.ComponentMiner::Poke(bool)
    IL_0188:  ret
  } // end of method ComponentMiner::Hit

  .method public hidebysig instance bool 
          Aim(valuetype [Engine]Engine.Vector3 position,
              valuetype [Engine]Engine.Vector3 direction,
              valuetype Game.AimState state) cil managed
  {
    // 代码大小       71 (0x47)
    .maxstack  5
    .locals init (int32 V_0,
             class Game.SubsystemBlockBehavior[] V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  call       instance int32 Game.ComponentMiner::get_ActiveBlockValue()
    IL_0006:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_000b:  stloc.0
    IL_000c:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0011:  ldloc.0
    IL_0012:  ldelem.ref
    IL_0013:  ldfld      bool Game.Block::IsAimable
    IL_0018:  brfalse.s  IL_0045

    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.SubsystemBlockBehaviors Game.ComponentMiner::m_subsystemBlockBehaviors
    IL_0020:  ldloc.0
    IL_0021:  callvirt   instance class Game.SubsystemBlockBehavior[] Game.SubsystemBlockBehaviors::GetBlockBehaviors(int32)
    IL_0026:  stloc.1
    IL_0027:  ldc.i4.0
    IL_0028:  stloc.2
    IL_0029:  br.s       IL_003f

    IL_002b:  ldloc.1
    IL_002c:  ldloc.2
    IL_002d:  ldelem.ref
    IL_002e:  ldarg.1
    IL_002f:  ldarg.2
    IL_0030:  ldarg.0
    IL_0031:  ldarg.3
    IL_0032:  callvirt   instance bool Game.SubsystemBlockBehavior::OnAim(valuetype [Engine]Engine.Vector3,
                                                                          valuetype [Engine]Engine.Vector3,
                                                                          class Game.ComponentMiner,
                                                                          valuetype Game.AimState)
    IL_0037:  brfalse.s  IL_003b

    IL_0039:  ldc.i4.1
    IL_003a:  ret

    IL_003b:  ldloc.2
    IL_003c:  ldc.i4.1
    IL_003d:  add
    IL_003e:  stloc.2
    IL_003f:  ldloc.2
    IL_0040:  ldloc.1
    IL_0041:  ldlen
    IL_0042:  conv.i4
    IL_0043:  blt.s      IL_002b

    IL_0045:  ldc.i4.0
    IL_0046:  ret
  } // end of method ComponentMiner::Aim

  .method public hidebysig instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> 
          PickTerrainForDigging(valuetype [Engine]Engine.Vector3 position,
                                valuetype [Engine]Engine.Vector3 direction) cil managed
  {
    // 代码大小       183 (0xb7)
    .maxstack  7
    .locals init (class Game.ComponentMiner/'<>c__DisplayClass51_0' V_0,
             float32 V_1,
             valuetype [Engine]Engine.Vector3 V_2)
    IL_0000:  newobj     instance void Game.ComponentMiner/'<>c__DisplayClass51_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass51_0'::position
    IL_000d:  ldloc.0
    IL_000e:  ldarg.2
    IL_000f:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass51_0'::direction
    IL_0014:  ldloc.0
    IL_0015:  ldarg.0
    IL_0016:  ldfld      class Game.SubsystemGameInfo Game.ComponentMiner::m_subsystemGameInfo
    IL_001b:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_0020:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_0025:  brfalse.s  IL_002e

    IL_0027:  ldc.r4     5.
    IL_002c:  br.s       IL_0033

    IL_002e:  ldc.r4     8.
    IL_0033:  stfld      float32 Game.ComponentMiner/'<>c__DisplayClass51_0'::reach
    IL_0038:  ldc.r4     25.
    IL_003d:  stloc.1
    IL_003e:  ldloc.0
    IL_003f:  ldloc.0
    IL_0040:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass51_0'::direction
    IL_0045:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_004a:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass51_0'::direction
    IL_004f:  ldloc.0
    IL_0050:  ldarg.0
    IL_0051:  call       instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0056:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_005b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_0060:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass51_0'::creaturePosition
    IL_0065:  ldloc.0
    IL_0066:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass51_0'::position
    IL_006b:  ldloc.0
    IL_006c:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass51_0'::direction
    IL_0071:  ldloc.1
    IL_0072:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0077:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_007c:  stloc.2
    IL_007d:  ldloc.0
    IL_007e:  ldarg.0
    IL_007f:  ldfld      class Game.SubsystemMovingBlocks Game.ComponentMiner::m_subsystemMovingBlocks
    IL_0084:  ldloc.0
    IL_0085:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass51_0'::position
    IL_008a:  ldloc.2
    IL_008b:  ldc.i4.1
    IL_008c:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.MovingBlocksRaycastResult> Game.SubsystemMovingBlocks::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                            valuetype [Engine]Engine.Vector3,
                                                                                                                                                            bool)
    IL_0091:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype Game.MovingBlocksRaycastResult> Game.ComponentMiner/'<>c__DisplayClass51_0'::movingBlocksResult
    IL_0096:  ldarg.0
    IL_0097:  ldfld      class Game.SubsystemTerrain Game.ComponentMiner::m_subsystemTerrain
    IL_009c:  ldloc.0
    IL_009d:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass51_0'::position
    IL_00a2:  ldloc.2
    IL_00a3:  ldc.i4.1
    IL_00a4:  ldc.i4.1
    IL_00a5:  ldloc.0
    IL_00a6:  ldftn      instance bool Game.ComponentMiner/'<>c__DisplayClass51_0'::'<PickTerrainForDigging>b__0'(int32,
                                                                                                                  float32)
    IL_00ac:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                      native int)
    IL_00b1:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                                                  bool,
                                                                                                                                                  bool,
                                                                                                                                                  class [System.Runtime]System.Func`3<int32,float32,bool>)
    IL_00b6:  ret
  } // end of method ComponentMiner::PickTerrainForDigging

  .method public hidebysig instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> 
          PickTerrainForInteraction(valuetype [Engine]Engine.Vector3 position,
                                    valuetype [Engine]Engine.Vector3 direction) cil managed
  {
    // 代码大小       190 (0xbe)
    .maxstack  7
    .locals init (class Game.ComponentMiner/'<>c__DisplayClass52_0' V_0,
             float32 V_1,
             valuetype [Engine]Engine.Vector3 V_2)
    IL_0000:  newobj     instance void Game.ComponentMiner/'<>c__DisplayClass52_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class Game.ComponentMiner Game.ComponentMiner/'<>c__DisplayClass52_0'::'<>4__this'
    IL_000d:  ldloc.0
    IL_000e:  ldarg.1
    IL_000f:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass52_0'::position
    IL_0014:  ldloc.0
    IL_0015:  ldarg.2
    IL_0016:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass52_0'::direction
    IL_001b:  ldloc.0
    IL_001c:  ldarg.0
    IL_001d:  ldfld      class Game.SubsystemGameInfo Game.ComponentMiner::m_subsystemGameInfo
    IL_0022:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_0027:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_002c:  brfalse.s  IL_0035

    IL_002e:  ldc.r4     5.
    IL_0033:  br.s       IL_003a

    IL_0035:  ldc.r4     8.
    IL_003a:  stfld      float32 Game.ComponentMiner/'<>c__DisplayClass52_0'::reach
    IL_003f:  ldc.r4     25.
    IL_0044:  stloc.1
    IL_0045:  ldloc.0
    IL_0046:  ldloc.0
    IL_0047:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass52_0'::direction
    IL_004c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0051:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass52_0'::direction
    IL_0056:  ldloc.0
    IL_0057:  ldarg.0
    IL_0058:  call       instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_005d:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_0062:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_0067:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass52_0'::creaturePosition
    IL_006c:  ldloc.0
    IL_006d:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass52_0'::position
    IL_0072:  ldloc.0
    IL_0073:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass52_0'::direction
    IL_0078:  ldloc.1
    IL_0079:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_007e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0083:  stloc.2
    IL_0084:  ldloc.0
    IL_0085:  ldarg.0
    IL_0086:  ldfld      class Game.SubsystemMovingBlocks Game.ComponentMiner::m_subsystemMovingBlocks
    IL_008b:  ldloc.0
    IL_008c:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass52_0'::position
    IL_0091:  ldloc.2
    IL_0092:  ldc.i4.1
    IL_0093:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.MovingBlocksRaycastResult> Game.SubsystemMovingBlocks::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                            valuetype [Engine]Engine.Vector3,
                                                                                                                                                            bool)
    IL_0098:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype Game.MovingBlocksRaycastResult> Game.ComponentMiner/'<>c__DisplayClass52_0'::movingBlocksResult
    IL_009d:  ldarg.0
    IL_009e:  ldfld      class Game.SubsystemTerrain Game.ComponentMiner::m_subsystemTerrain
    IL_00a3:  ldloc.0
    IL_00a4:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass52_0'::position
    IL_00a9:  ldloc.2
    IL_00aa:  ldc.i4.1
    IL_00ab:  ldc.i4.1
    IL_00ac:  ldloc.0
    IL_00ad:  ldftn      instance bool Game.ComponentMiner/'<>c__DisplayClass52_0'::'<PickTerrainForInteraction>b__0'(int32,
                                                                                                                      float32)
    IL_00b3:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                      native int)
    IL_00b8:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                                                  bool,
                                                                                                                                                  bool,
                                                                                                                                                  class [System.Runtime]System.Func`3<int32,float32,bool>)
    IL_00bd:  ret
  } // end of method ComponentMiner::PickTerrainForInteraction

  .method public hidebysig instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> 
          PickTerrainForGathering(valuetype [Engine]Engine.Vector3 position,
                                  valuetype [Engine]Engine.Vector3 direction) cil managed
  {
    // 代码大小       158 (0x9e)
    .maxstack  7
    .locals init (class Game.ComponentMiner/'<>c__DisplayClass53_0' V_0,
             float32 V_1,
             valuetype [Engine]Engine.Vector3 V_2)
    IL_0000:  newobj     instance void Game.ComponentMiner/'<>c__DisplayClass53_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass53_0'::position
    IL_000d:  ldloc.0
    IL_000e:  ldarg.2
    IL_000f:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass53_0'::direction
    IL_0014:  ldloc.0
    IL_0015:  ldarg.0
    IL_0016:  ldfld      class Game.SubsystemGameInfo Game.ComponentMiner::m_subsystemGameInfo
    IL_001b:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_0020:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_0025:  brfalse.s  IL_002e

    IL_0027:  ldc.r4     5.
    IL_002c:  br.s       IL_0033

    IL_002e:  ldc.r4     8.
    IL_0033:  stfld      float32 Game.ComponentMiner/'<>c__DisplayClass53_0'::reach
    IL_0038:  ldc.r4     25.
    IL_003d:  stloc.1
    IL_003e:  ldloc.0
    IL_003f:  ldloc.0
    IL_0040:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass53_0'::direction
    IL_0045:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_004a:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass53_0'::direction
    IL_004f:  ldloc.0
    IL_0050:  ldarg.0
    IL_0051:  call       instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0056:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_005b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_0060:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass53_0'::creaturePosition
    IL_0065:  ldloc.0
    IL_0066:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass53_0'::position
    IL_006b:  ldloc.0
    IL_006c:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass53_0'::direction
    IL_0071:  ldloc.1
    IL_0072:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0077:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_007c:  stloc.2
    IL_007d:  ldarg.0
    IL_007e:  ldfld      class Game.SubsystemTerrain Game.ComponentMiner::m_subsystemTerrain
    IL_0083:  ldloc.0
    IL_0084:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass53_0'::position
    IL_0089:  ldloc.2
    IL_008a:  ldc.i4.1
    IL_008b:  ldc.i4.1
    IL_008c:  ldloc.0
    IL_008d:  ldftn      instance bool Game.ComponentMiner/'<>c__DisplayClass53_0'::'<PickTerrainForGathering>b__0'(int32,
                                                                                                                    float32)
    IL_0093:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                      native int)
    IL_0098:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                                                  bool,
                                                                                                                                                  bool,
                                                                                                                                                  class [System.Runtime]System.Func`3<int32,float32,bool>)
    IL_009d:  ret
  } // end of method ComponentMiner::PickTerrainForGathering

  .method public hidebysig instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult> 
          PickBody(valuetype [Engine]Engine.Vector3 position,
                   valuetype [Engine]Engine.Vector3 direction) cil managed
  {
    // 代码大小       166 (0xa6)
    .maxstack  6
    .locals init (class Game.ComponentMiner/'<>c__DisplayClass54_0' V_0,
             valuetype [Engine]Engine.Vector3 V_1)
    IL_0000:  newobj     instance void Game.ComponentMiner/'<>c__DisplayClass54_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class Game.ComponentMiner Game.ComponentMiner/'<>c__DisplayClass54_0'::'<>4__this'
    IL_000d:  ldloc.0
    IL_000e:  ldarg.1
    IL_000f:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass54_0'::position
    IL_0014:  ldloc.0
    IL_0015:  ldarg.2
    IL_0016:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass54_0'::direction
    IL_001b:  ldloc.0
    IL_001c:  ldarg.0
    IL_001d:  ldfld      class Game.SubsystemGameInfo Game.ComponentMiner::m_subsystemGameInfo
    IL_0022:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_0027:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_002c:  brfalse.s  IL_0035

    IL_002e:  ldc.r4     5.
    IL_0033:  br.s       IL_003a

    IL_0035:  ldc.r4     8.
    IL_003a:  stfld      float32 Game.ComponentMiner/'<>c__DisplayClass54_0'::reach
    IL_003f:  ldloc.0
    IL_0040:  ldloc.0
    IL_0041:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass54_0'::direction
    IL_0046:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_004b:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass54_0'::direction
    IL_0050:  ldloc.0
    IL_0051:  ldarg.0
    IL_0052:  call       instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0057:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_005c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_0061:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass54_0'::creaturePosition
    IL_0066:  ldloc.0
    IL_0067:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass54_0'::position
    IL_006c:  ldloc.0
    IL_006d:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass54_0'::direction
    IL_0072:  ldc.r4     15.
    IL_0077:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_007c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0081:  stloc.1
    IL_0082:  ldarg.0
    IL_0083:  ldfld      class Game.SubsystemBodies Game.ComponentMiner::m_subsystemBodies
    IL_0088:  ldloc.0
    IL_0089:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass54_0'::position
    IL_008e:  ldloc.1
    IL_008f:  ldc.r4     0.34999999
    IL_0094:  ldloc.0
    IL_0095:  ldftn      instance bool Game.ComponentMiner/'<>c__DisplayClass54_0'::'<PickBody>b__0'(class Game.ComponentBody,
                                                                                                     float32)
    IL_009b:  newobj     instance void class [System.Runtime]System.Func`3<class Game.ComponentBody,float32,bool>::.ctor(object,
                                                                                                                         native int)
    IL_00a0:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult> Game.SubsystemBodies::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                              valuetype [Engine]Engine.Vector3,
                                                                                                                                              float32,
                                                                                                                                              class [System.Runtime]System.Func`3<class Game.ComponentBody,float32,bool>)
    IL_00a5:  ret
  } // end of method ComponentMiner::PickBody

  .method public hidebysig instance void 
          RemoveActiveTool(int32 removeCount) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0006:  brfalse.s  IL_0020

    IL_0008:  ldarg.0
    IL_0009:  call       instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_000e:  ldarg.0
    IL_000f:  call       instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0014:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_0019:  ldarg.1
    IL_001a:  callvirt   instance int32 Game.IInventory::RemoveSlotItems(int32,
                                                                         int32)
    IL_001f:  pop
    IL_0020:  ret
  } // end of method ComponentMiner::RemoveActiveTool

  .method public hidebysig instance void 
          DamageActiveTool(int32 damageCount) cil managed
  {
    // 代码大小       167 (0xa7)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemGameInfo Game.ComponentMiner::m_subsystemGameInfo
    IL_0006:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_000b:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_0010:  brtrue.s   IL_0013

    IL_0012:  ret

    IL_0013:  ldarg.0
    IL_0014:  call       instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0019:  brfalse    IL_00a6

    IL_001e:  ldarg.0
    IL_001f:  call       instance int32 Game.ComponentMiner::get_ActiveBlockValue()
    IL_0024:  ldarg.1
    IL_0025:  call       int32 Game.BlocksManager::DamageItem(int32,
                                                              int32)
    IL_002a:  stloc.0
    IL_002b:  ldloc.0
    IL_002c:  brfalse.s  IL_008e

    IL_002e:  ldarg.0
    IL_002f:  call       instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0034:  ldarg.0
    IL_0035:  call       instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_003a:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_003f:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_0044:  stloc.1
    IL_0045:  ldarg.0
    IL_0046:  call       instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_004b:  ldarg.0
    IL_004c:  call       instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0051:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_0056:  ldloc.1
    IL_0057:  callvirt   instance int32 Game.IInventory::RemoveSlotItems(int32,
                                                                         int32)
    IL_005c:  pop
    IL_005d:  ldarg.0
    IL_005e:  call       instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0063:  ldarg.0
    IL_0064:  call       instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0069:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_006e:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_0073:  brtrue.s   IL_00a6

    IL_0075:  ldarg.0
    IL_0076:  call       instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_007b:  ldarg.0
    IL_007c:  call       instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0081:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_0086:  ldloc.0
    IL_0087:  ldloc.1
    IL_0088:  callvirt   instance void Game.IInventory::AddSlotItems(int32,
                                                                     int32,
                                                                     int32)
    IL_008d:  ret

    IL_008e:  ldarg.0
    IL_008f:  call       instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0094:  ldarg.0
    IL_0095:  call       instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_009a:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_009f:  ldc.i4.1
    IL_00a0:  callvirt   instance int32 Game.IInventory::RemoveSlotItems(int32,
                                                                         int32)
    IL_00a5:  pop
    IL_00a6:  ret
  } // end of method ComponentMiner::DamageActiveTool

  .method public hidebysig static void  AttackBody(class Game.ComponentBody target,
                                                   class Game.ComponentCreature attacker,
                                                   valuetype [Engine]Engine.Vector3 direction,
                                                   float32 attackPower,
                                                   bool isMeleeAttack) cil managed
  {
    // 代码大小       394 (0x18a)
    .maxstack  7
    .locals init (float32 V_0,
             class Game.ComponentClothing V_1,
             class Game.ComponentHealth V_2,
             class Game.ComponentDamage V_3,
             float32 V_4,
             float32 V_5)
    IL_0000:  ldarg.3
    IL_0001:  ldc.r4     0.0
    IL_0006:  ble.un     IL_00f8

    IL_000b:  ldarg.0
    IL_000c:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0011:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentClothing>()
    IL_0016:  stloc.1
    IL_0017:  ldloc.1
    IL_0018:  brfalse.s  IL_0023

    IL_001a:  ldloc.1
    IL_001b:  ldarg.3
    IL_001c:  callvirt   instance float32 Game.ComponentClothing::ApplyArmorProtection(float32)
    IL_0021:  starg.s    attackPower
    IL_0023:  ldarg.0
    IL_0024:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0029:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentHealth>()
    IL_002e:  stloc.2
    IL_002f:  ldloc.2
    IL_0030:  brfalse.s  IL_009b

    IL_0032:  ldarg.3
    IL_0033:  ldloc.2
    IL_0034:  callvirt   instance float32 Game.ComponentHealth::get_AttackResilience()
    IL_0039:  div
    IL_003a:  stloc.s    V_4
    IL_003c:  ldloc.2
    IL_003d:  ldloc.s    V_4
    IL_003f:  ldarg.1
    IL_0040:  ldc.i4.0
    IL_0041:  ldarg.1
    IL_0042:  brtrue.s   IL_004b

    IL_0044:  ldstr      "Killed by unknown attacker"
    IL_0049:  br.s       IL_005b

    IL_004b:  ldstr      "Killed by a "
    IL_0050:  ldarg.1
    IL_0051:  callvirt   instance string Game.ComponentCreature::get_Species()
    IL_0056:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_005b:  callvirt   instance void Game.ComponentHealth::Injure(float32,
                                                                    class Game.ComponentCreature,
                                                                    bool,
                                                                    string)
    IL_0060:  ldarg.0
    IL_0061:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0066:  ldc.i4.1
    IL_0067:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_006c:  ldstr      "Audio/Impacts/Body"
    IL_0071:  ldc.r4     1.
    IL_0076:  ldsfld     class Game.Random Game.ComponentMiner::s_random
    IL_007b:  ldc.r4     -0.30000001
    IL_0080:  ldc.r4     0.30000001
    IL_0085:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_008a:  ldarg.0
    IL_008b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0090:  ldc.r4     4.
    IL_0095:  ldc.i4.0
    IL_0096:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            bool)
    IL_009b:  ldarg.0
    IL_009c:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_00a1:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentDamage>()
    IL_00a6:  stloc.3
    IL_00a7:  ldloc.3
    IL_00a8:  brfalse.s  IL_00f8

    IL_00aa:  ldarg.3
    IL_00ab:  ldloc.3
    IL_00ac:  callvirt   instance float32 Game.ComponentDamage::get_AttackResilience()
    IL_00b1:  div
    IL_00b2:  stloc.s    V_5
    IL_00b4:  ldloc.3
    IL_00b5:  ldloc.s    V_5
    IL_00b7:  callvirt   instance void Game.ComponentDamage::Damage(float32)
    IL_00bc:  ldarg.0
    IL_00bd:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_00c2:  ldc.i4.1
    IL_00c3:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_00c8:  ldloc.3
    IL_00c9:  callvirt   instance string Game.ComponentDamage::get_DamageSoundName()
    IL_00ce:  ldc.r4     1.
    IL_00d3:  ldsfld     class Game.Random Game.ComponentMiner::s_random
    IL_00d8:  ldc.r4     -0.30000001
    IL_00dd:  ldc.r4     0.30000001
    IL_00e2:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00e7:  ldarg.0
    IL_00e8:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_00ed:  ldc.r4     4.
    IL_00f2:  ldc.i4.0
    IL_00f3:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            bool)
    IL_00f8:  ldarg.s    isMeleeAttack
    IL_00fa:  brfalse.s  IL_0148

    IL_00fc:  ldarg.1
    IL_00fd:  brfalse.s  IL_0148

    IL_00ff:  ldarg.3
    IL_0100:  ldc.r4     2.
    IL_0105:  bgt.s      IL_010e

    IL_0107:  ldc.r4     1.
    IL_010c:  br.s       IL_0113

    IL_010e:  ldc.r4     1.25
    IL_0113:  ldc.r4     6.
    IL_0118:  mul
    IL_0119:  ldarg.1
    IL_011a:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_011f:  callvirt   instance float32 Game.ComponentBody::get_Mass()
    IL_0124:  ldarg.0
    IL_0125:  callvirt   instance float32 Game.ComponentBody::get_Mass()
    IL_012a:  div
    IL_012b:  ldc.r4     0.33000001
    IL_0130:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_0135:  mul
    IL_0136:  ldc.r4     0.0
    IL_013b:  ldc.r4     6.
    IL_0140:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0145:  stloc.0
    IL_0146:  br.s       IL_014e

    IL_0148:  ldc.r4     3.
    IL_014d:  stloc.0
    IL_014e:  ldarg.0
    IL_014f:  ldloc.0
    IL_0150:  ldarg.2
    IL_0151:  ldsfld     class Game.Random Game.ComponentMiner::s_random
    IL_0156:  ldc.r4     0.5
    IL_015b:  ldc.i4.0
    IL_015c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Random::Vector3(float32,
                                                                                        bool)
    IL_0161:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0166:  ldc.r4     0.2
    IL_016b:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0170:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0175:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_017a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_017f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0184:  callvirt   instance void Game.ComponentBody::ApplyImpulse(valuetype [Engine]Engine.Vector3)
    IL_0189:  ret
  } // end of method ComponentMiner::AttackBody

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentMiner::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       221 (0xdd)
    .maxstack  4
    .locals init (float32 V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemGameInfo Game.ComponentMiner::m_subsystemGameInfo
    IL_0006:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_000b:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_0010:  brfalse.s  IL_0019

    IL_0012:  ldc.r4     4.
    IL_0017:  br.s       IL_0024

    IL_0019:  ldc.r4     0.5
    IL_001e:  call       float32 Game.SettingsManager::get_CreativeDigTime()
    IL_0023:  div
    IL_0024:  stloc.0
    IL_0025:  ldarg.0
    IL_0026:  ldarg.0
    IL_0027:  call       instance float32 Game.ComponentMiner::get_PokingPhase()
    IL_002c:  stfld      float32 Game.ComponentMiner::m_lastPokingPhase
    IL_0031:  ldarg.0
    IL_0032:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> Game.ComponentMiner::get_DigCellFace()
    IL_0037:  stloc.1
    IL_0038:  ldloca.s   V_1
    IL_003a:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>::get_HasValue()
    IL_003f:  brtrue.s   IL_004e

    IL_0041:  ldarg.0
    IL_0042:  call       instance float32 Game.ComponentMiner::get_PokingPhase()
    IL_0047:  ldc.r4     0.0
    IL_004c:  ble.un.s   IL_00a8

    IL_004e:  ldarg.0
    IL_004f:  ldarg.0
    IL_0050:  call       instance float32 Game.ComponentMiner::get_PokingPhase()
    IL_0055:  ldloc.0
    IL_0056:  ldarg.0
    IL_0057:  ldfld      class Game.SubsystemTime Game.ComponentMiner::m_subsystemTime
    IL_005c:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_0061:  mul
    IL_0062:  add
    IL_0063:  call       instance void Game.ComponentMiner::set_PokingPhase(float32)
    IL_0068:  ldarg.0
    IL_0069:  call       instance float32 Game.ComponentMiner::get_PokingPhase()
    IL_006e:  ldc.r4     1.
    IL_0073:  ble.un.s   IL_00a8

    IL_0075:  ldarg.0
    IL_0076:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> Game.ComponentMiner::get_DigCellFace()
    IL_007b:  stloc.1
    IL_007c:  ldloca.s   V_1
    IL_007e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>::get_HasValue()
    IL_0083:  brfalse.s  IL_009d

    IL_0085:  ldarg.0
    IL_0086:  ldarg.0
    IL_0087:  call       instance float32 Game.ComponentMiner::get_PokingPhase()
    IL_008c:  ldc.r4     1.
    IL_0091:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_0096:  call       instance void Game.ComponentMiner::set_PokingPhase(float32)
    IL_009b:  br.s       IL_00a8

    IL_009d:  ldarg.0
    IL_009e:  ldc.r4     0.0
    IL_00a3:  call       instance void Game.ComponentMiner::set_PokingPhase(float32)
    IL_00a8:  ldarg.0
    IL_00a9:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> Game.ComponentMiner::get_DigCellFace()
    IL_00ae:  stloc.1
    IL_00af:  ldloca.s   V_1
    IL_00b1:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>::get_HasValue()
    IL_00b6:  brfalse.s  IL_00dc

    IL_00b8:  ldarg.0
    IL_00b9:  ldfld      class Game.SubsystemTime Game.ComponentMiner::m_subsystemTime
    IL_00be:  callvirt   instance int32 Game.SubsystemTime::get_FrameIndex()
    IL_00c3:  ldarg.0
    IL_00c4:  ldfld      int32 Game.ComponentMiner::m_lastDigFrameIndex
    IL_00c9:  sub
    IL_00ca:  ldc.i4.1
    IL_00cb:  ble.s      IL_00dc

    IL_00cd:  ldarg.0
    IL_00ce:  ldloca.s   V_1
    IL_00d0:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>
    IL_00d6:  ldloc.1
    IL_00d7:  call       instance void Game.ComponentMiner::set_DigCellFace(valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>)
    IL_00dc:  ret
  } // end of method ComponentMiner::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       283 (0x11b)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_000d:  stfld      class Game.SubsystemTerrain Game.ComponentMiner::m_subsystemTerrain
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBodies>(bool)
    IL_001f:  stfld      class Game.SubsystemBodies Game.ComponentMiner::m_subsystemBodies
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemMovingBlocks>(bool)
    IL_0031:  stfld      class Game.SubsystemMovingBlocks Game.ComponentMiner::m_subsystemMovingBlocks
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPlayer>(bool)
    IL_0043:  stfld      class Game.SubsystemPlayer Game.ComponentMiner::m_subsystemPlayer
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_0055:  stfld      class Game.SubsystemGameInfo Game.ComponentMiner::m_subsystemGameInfo
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_0067:  stfld      class Game.SubsystemTime Game.ComponentMiner::m_subsystemTime
    IL_006c:  ldarg.0
    IL_006d:  ldarg.0
    IL_006e:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0073:  ldc.i4.1
    IL_0074:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0079:  stfld      class Game.SubsystemAudio Game.ComponentMiner::m_subsystemAudio
    IL_007e:  ldarg.0
    IL_007f:  ldarg.0
    IL_0080:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0085:  ldc.i4.1
    IL_0086:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemSoundMaterials>(bool)
    IL_008b:  stfld      class Game.SubsystemSoundMaterials Game.ComponentMiner::m_subsystemSoundMaterials
    IL_0090:  ldarg.0
    IL_0091:  ldarg.0
    IL_0092:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0097:  ldc.i4.1
    IL_0098:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemInput>(bool)
    IL_009d:  stfld      class Game.SubsystemInput Game.ComponentMiner::m_subsystemInput
    IL_00a2:  ldarg.0
    IL_00a3:  ldarg.0
    IL_00a4:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_00a9:  ldc.i4.1
    IL_00aa:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBlockBehaviors>(bool)
    IL_00af:  stfld      class Game.SubsystemBlockBehaviors Game.ComponentMiner::m_subsystemBlockBehaviors
    IL_00b4:  ldarg.0
    IL_00b5:  ldarg.0
    IL_00b6:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_00bb:  ldc.i4.1
    IL_00bc:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_00c1:  call       instance void Game.ComponentMiner::set_ComponentCreature(class Game.ComponentCreature)
    IL_00c6:  ldarg.0
    IL_00c7:  ldfld      class Game.SubsystemGameInfo Game.ComponentMiner::m_subsystemGameInfo
    IL_00cc:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_00d1:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_00d6:  brtrue.s   IL_00f8

    IL_00d8:  ldarg.0
    IL_00d9:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_00de:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPlayer>()
    IL_00e3:  brfalse.s  IL_00f8

    IL_00e5:  ldarg.0
    IL_00e6:  ldarg.0
    IL_00e7:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_00ec:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreativeInventory>()
    IL_00f1:  call       instance void Game.ComponentMiner::set_Inventory(class Game.IInventory)
    IL_00f6:  br.s       IL_0109

    IL_00f8:  ldarg.0
    IL_00f9:  ldarg.0
    IL_00fa:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_00ff:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentInventory>()
    IL_0104:  call       instance void Game.ComponentMiner::set_Inventory(class Game.IInventory)
    IL_0109:  ldarg.0
    IL_010a:  ldarg.1
    IL_010b:  ldstr      "AttackPower"
    IL_0110:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0115:  call       instance void Game.ComponentMiner::set_AttackPower(float32)
    IL_011a:  ret
  } // end of method ComponentMiner::Load

  .method private hidebysig instance float32 
          CalculateDigTime(int32 digValue,
                           int32 toolContents) cil managed
  {
    // 代码大小       386 (0x182)
    .maxstack  2
    .locals init (class Game.Block V_0,
             class Game.Block V_1,
             float32 V_2,
             bool V_3,
             float32 V_4,
             float32 V_5)
    IL_0000:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0005:  ldarg.2
    IL_0006:  ldelem.ref
    IL_0007:  stloc.0
    IL_0008:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_000d:  ldarg.1
    IL_000e:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0013:  ldelem.ref
    IL_0014:  stloc.1
    IL_0015:  ldloc.1
    IL_0016:  ldfld      float32 Game.Block::DigResilience
    IL_001b:  stloc.2
    IL_001c:  ldarg.0
    IL_001d:  ldfld      class Game.SubsystemPlayer Game.ComponentMiner::m_subsystemPlayer
    IL_0022:  ldarg.0
    IL_0023:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0028:  callvirt   instance bool Game.SubsystemPlayer::IsPlayer(class [EntitySystem]GameEntitySystem.Entity)
    IL_002d:  stloc.3
    IL_002e:  ldloc.3
    IL_002f:  brfalse.s  IL_0057

    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.SubsystemGameInfo Game.ComponentMiner::m_subsystemGameInfo
    IL_0037:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_003c:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_0041:  brtrue.s   IL_0057

    IL_0043:  ldloc.2
    IL_0044:  ldc.r4     (00 00 80 7F)
    IL_0049:  bge.un.s   IL_0051

    IL_004b:  ldc.r4     0.0
    IL_0050:  ret

    IL_0051:  ldc.r4     (00 00 80 7F)
    IL_0056:  ret

    IL_0057:  ldloc.3
    IL_0058:  brfalse    IL_00f6

    IL_005d:  ldarg.0
    IL_005e:  ldfld      class Game.SubsystemGameInfo Game.ComponentMiner::m_subsystemGameInfo
    IL_0063:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_0068:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_006d:  ldc.i4.4
    IL_006e:  bne.un     IL_00f6

    IL_0073:  ldc.r4     0.0
    IL_0078:  stloc.s    V_4
    IL_007a:  ldloc.1
    IL_007b:  ldfld      valuetype Game.BlockDigMethod Game.Block::DigMethod
    IL_0080:  ldc.i4.1
    IL_0081:  bne.un.s   IL_009a

    IL_0083:  ldloc.0
    IL_0084:  ldfld      float32 Game.Block::ShovelPower
    IL_0089:  ldc.r4     2.
    IL_008e:  blt.un.s   IL_009a

    IL_0090:  ldloc.0
    IL_0091:  ldfld      float32 Game.Block::ShovelPower
    IL_0096:  stloc.s    V_4
    IL_0098:  br.s       IL_00d8

    IL_009a:  ldloc.1
    IL_009b:  ldfld      valuetype Game.BlockDigMethod Game.Block::DigMethod
    IL_00a0:  ldc.i4.2
    IL_00a1:  bne.un.s   IL_00ba

    IL_00a3:  ldloc.0
    IL_00a4:  ldfld      float32 Game.Block::QuarryPower
    IL_00a9:  ldc.r4     2.
    IL_00ae:  blt.un.s   IL_00ba

    IL_00b0:  ldloc.0
    IL_00b1:  ldfld      float32 Game.Block::QuarryPower
    IL_00b6:  stloc.s    V_4
    IL_00b8:  br.s       IL_00d8

    IL_00ba:  ldloc.1
    IL_00bb:  ldfld      valuetype Game.BlockDigMethod Game.Block::DigMethod
    IL_00c0:  ldc.i4.3
    IL_00c1:  bne.un.s   IL_00d8

    IL_00c3:  ldloc.0
    IL_00c4:  ldfld      float32 Game.Block::HackPower
    IL_00c9:  ldc.r4     2.
    IL_00ce:  blt.un.s   IL_00d8

    IL_00d0:  ldloc.0
    IL_00d1:  ldfld      float32 Game.Block::HackPower
    IL_00d6:  stloc.s    V_4
    IL_00d8:  ldloc.s    V_4
    IL_00da:  ldc.r4     0.0
    IL_00df:  bgt.s      IL_00e7

    IL_00e1:  ldc.r4     (00 00 80 7F)
    IL_00e6:  ret

    IL_00e7:  ldloc.2
    IL_00e8:  ldloc.s    V_4
    IL_00ea:  div
    IL_00eb:  ldc.r4     0.0
    IL_00f0:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_00f5:  ret

    IL_00f6:  ldc.r4     0.0
    IL_00fb:  stloc.s    V_5
    IL_00fd:  ldloc.1
    IL_00fe:  ldfld      valuetype Game.BlockDigMethod Game.Block::DigMethod
    IL_0103:  ldc.i4.1
    IL_0104:  bne.un.s   IL_0110

    IL_0106:  ldloc.0
    IL_0107:  ldfld      float32 Game.Block::ShovelPower
    IL_010c:  stloc.s    V_5
    IL_010e:  br.s       IL_0134

    IL_0110:  ldloc.1
    IL_0111:  ldfld      valuetype Game.BlockDigMethod Game.Block::DigMethod
    IL_0116:  ldc.i4.2
    IL_0117:  bne.un.s   IL_0123

    IL_0119:  ldloc.0
    IL_011a:  ldfld      float32 Game.Block::QuarryPower
    IL_011f:  stloc.s    V_5
    IL_0121:  br.s       IL_0134

    IL_0123:  ldloc.1
    IL_0124:  ldfld      valuetype Game.BlockDigMethod Game.Block::DigMethod
    IL_0129:  ldc.i4.3
    IL_012a:  bne.un.s   IL_0134

    IL_012c:  ldloc.0
    IL_012d:  ldfld      float32 Game.Block::HackPower
    IL_0132:  stloc.s    V_5
    IL_0134:  ldarg.0
    IL_0135:  ldfld      class Game.SubsystemPlayer Game.ComponentMiner::m_subsystemPlayer
    IL_013a:  ldarg.0
    IL_013b:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0140:  callvirt   instance bool Game.SubsystemPlayer::IsPlayer(class [EntitySystem]GameEntitySystem.Entity)
    IL_0145:  brfalse.s  IL_0164

    IL_0147:  ldarg.0
    IL_0148:  ldfld      class Game.SubsystemGameInfo Game.ComponentMiner::m_subsystemGameInfo
    IL_014d:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_0152:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_0157:  ldc.i4.1
    IL_0158:  bne.un.s   IL_0164

    IL_015a:  ldloc.s    V_5
    IL_015c:  ldc.r4     1.25
    IL_0161:  mul
    IL_0162:  stloc.s    V_5
    IL_0164:  ldloc.s    V_5
    IL_0166:  ldc.r4     0.0
    IL_016b:  bgt.s      IL_0173

    IL_016d:  ldc.r4     (00 00 80 7F)
    IL_0172:  ret

    IL_0173:  ldloc.2
    IL_0174:  ldloc.s    V_5
    IL_0176:  div
    IL_0177:  ldc.r4     0.0
    IL_017c:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0181:  ret
  } // end of method ComponentMiner::CalculateDigTime

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.ComponentMiner::m_random
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_0011:  ret
  } // end of method ComponentMiner::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  newobj     instance void Game.Random::.ctor()
    IL_0005:  stsfld     class Game.Random Game.ComponentMiner::s_random
    IL_000a:  ret
  } // end of method ComponentMiner::.cctor

  .property instance class Game.ComponentCreature
          ComponentCreature()
  {
    .get instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    .set instance void Game.ComponentMiner::set_ComponentCreature(class Game.ComponentCreature)
  } // end of property ComponentMiner::ComponentCreature
  .property instance class Game.IInventory
          Inventory()
  {
    .get instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    .set instance void Game.ComponentMiner::set_Inventory(class Game.IInventory)
  } // end of property ComponentMiner::Inventory
  .property instance int32 ActiveBlockValue()
  {
    .get instance int32 Game.ComponentMiner::get_ActiveBlockValue()
  } // end of property ComponentMiner::ActiveBlockValue
  .property instance float32 AttackPower()
  {
    .get instance float32 Game.ComponentMiner::get_AttackPower()
    .set instance void Game.ComponentMiner::set_AttackPower(float32)
  } // end of property ComponentMiner::AttackPower
  .property instance float32 PokingPhase()
  {
    .get instance float32 Game.ComponentMiner::get_PokingPhase()
    .set instance void Game.ComponentMiner::set_PokingPhase(float32)
  } // end of property ComponentMiner::PokingPhase
  .property instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>
          DigCellFace()
  {
    .get instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> Game.ComponentMiner::get_DigCellFace()
    .set instance void Game.ComponentMiner::set_DigCellFace(valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>)
  } // end of property ComponentMiner::DigCellFace
  .property instance float32 DigTime()
  {
    .get instance float32 Game.ComponentMiner::get_DigTime()
  } // end of property ComponentMiner::DigTime
  .property instance float32 DigProgress()
  {
    .get instance float32 Game.ComponentMiner::get_DigProgress()
  } // end of property ComponentMiner::DigProgress
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentMiner::get_UpdateOrder()
  } // end of property ComponentMiner::UpdateOrder
} // end of class Game.ComponentMiner