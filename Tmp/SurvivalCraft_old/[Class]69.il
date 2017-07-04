.class public auto ansi beforefieldinit Game.ComponentMiner
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IUpdateable
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass53_0'
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
    } // end of method '<>c__DisplayClass53_0'::.ctor

    .method assembly hidebysig instance bool 
            '<PickTerrainForDigging>b__0'(int32 'value',
                                          float32 distance) cil managed
    {
      // 代码大小       99 (0x63)
      .maxstack  3
      IL_0000:  ldarg.0
      IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype Game.MovingBlocksRaycastResult> Game.ComponentMiner/'<>c__DisplayClass53_0'::movingBlocksResult
      IL_0006:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.MovingBlocksRaycastResult>::get_HasValue()
      IL_000b:  brfalse.s  IL_0022

      IL_000d:  ldarg.2
      IL_000e:  ldarg.0
      IL_000f:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype Game.MovingBlocksRaycastResult> Game.ComponentMiner/'<>c__DisplayClass53_0'::movingBlocksResult
      IL_0014:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.MovingBlocksRaycastResult>::get_Value()
      IL_0019:  ldfld      float32 Game.MovingBlocksRaycastResult::Distance
      IL_001e:  ble.un.s   IL_0022

      IL_0020:  ldc.i4.0
      IL_0021:  ret

      IL_0022:  ldarg.0
      IL_0023:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass53_0'::position
      IL_0028:  ldarg.2
      IL_0029:  ldarg.0
      IL_002a:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass53_0'::direction
      IL_002f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0034:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0039:  ldarg.0
      IL_003a:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass53_0'::creaturePosition
      IL_003f:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                    valuetype [Engine]Engine.Vector3)
      IL_0044:  ldarg.0
      IL_0045:  ldfld      float32 Game.ComponentMiner/'<>c__DisplayClass53_0'::reach
      IL_004a:  bgt.un.s   IL_0061

      IL_004c:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_0051:  ldarg.1
      IL_0052:  call       int32 Game.Terrain::ExtractContents(int32)
      IL_0057:  ldelem.ref
      IL_0058:  ldfld      bool Game.Block::IsDiggingTransparent
      IL_005d:  ldc.i4.0
      IL_005e:  ceq
      IL_0060:  ret

      IL_0061:  ldc.i4.0
      IL_0062:  ret
    } // end of method '<>c__DisplayClass53_0'::'<PickTerrainForDigging>b__0'

  } // end of class '<>c__DisplayClass53_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass54_0'
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
    } // end of method '<>c__DisplayClass54_0'::.ctor

    .method assembly hidebysig instance bool 
            '<PickTerrainForInteraction>b__0'(int32 'value',
                                              float32 distance) cil managed
    {
      // 代码大小       120 (0x78)
      .maxstack  3
      .locals init (class Game.Block V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype Game.MovingBlocksRaycastResult> Game.ComponentMiner/'<>c__DisplayClass54_0'::movingBlocksResult
      IL_0006:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.MovingBlocksRaycastResult>::get_HasValue()
      IL_000b:  brfalse.s  IL_0022

      IL_000d:  ldarg.2
      IL_000e:  ldarg.0
      IL_000f:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype Game.MovingBlocksRaycastResult> Game.ComponentMiner/'<>c__DisplayClass54_0'::movingBlocksResult
      IL_0014:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.MovingBlocksRaycastResult>::get_Value()
      IL_0019:  ldfld      float32 Game.MovingBlocksRaycastResult::Distance
      IL_001e:  ble.un.s   IL_0022

      IL_0020:  ldc.i4.0
      IL_0021:  ret

      IL_0022:  ldarg.0
      IL_0023:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass54_0'::position
      IL_0028:  ldarg.2
      IL_0029:  ldarg.0
      IL_002a:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass54_0'::direction
      IL_002f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0034:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0039:  ldarg.0
      IL_003a:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass54_0'::creaturePosition
      IL_003f:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                    valuetype [Engine]Engine.Vector3)
      IL_0044:  ldarg.0
      IL_0045:  ldfld      float32 Game.ComponentMiner/'<>c__DisplayClass54_0'::reach
      IL_004a:  bgt.un.s   IL_0076

      IL_004c:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_0051:  ldarg.1
      IL_0052:  call       int32 Game.Terrain::ExtractContents(int32)
      IL_0057:  ldelem.ref
      IL_0058:  stloc.0
      IL_0059:  ldloc.0
      IL_005a:  ldfld      bool Game.Block::IsPlacementTransparent
      IL_005f:  brfalse.s  IL_0074

      IL_0061:  ldloc.0
      IL_0062:  ldarg.0
      IL_0063:  ldfld      class Game.ComponentMiner Game.ComponentMiner/'<>c__DisplayClass54_0'::'<>4__this'
      IL_0068:  ldfld      class Game.SubsystemTerrain Game.ComponentMiner::m_subsystemTerrain
      IL_006d:  ldarg.1
      IL_006e:  callvirt   instance bool Game.Block::IsInteractive(class Game.SubsystemTerrain,
                                                                   int32)
      IL_0073:  ret

      IL_0074:  ldc.i4.1
      IL_0075:  ret

      IL_0076:  ldc.i4.0
      IL_0077:  ret
    } // end of method '<>c__DisplayClass54_0'::'<PickTerrainForInteraction>b__0'

  } // end of class '<>c__DisplayClass54_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass55_0'
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
    } // end of method '<>c__DisplayClass55_0'::.ctor

    .method assembly hidebysig instance bool 
            '<PickTerrainForGathering>b__0'(int32 'value',
                                            float32 distance) cil managed
    {
      // 代码大小       62 (0x3e)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass55_0'::position
      IL_0006:  ldarg.2
      IL_0007:  ldarg.0
      IL_0008:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass55_0'::direction
      IL_000d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0012:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0017:  ldarg.0
      IL_0018:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass55_0'::creaturePosition
      IL_001d:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                    valuetype [Engine]Engine.Vector3)
      IL_0022:  ldarg.0
      IL_0023:  ldfld      float32 Game.ComponentMiner/'<>c__DisplayClass55_0'::reach
      IL_0028:  bgt.un.s   IL_003c

      IL_002a:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_002f:  ldarg.1
      IL_0030:  call       int32 Game.Terrain::ExtractContents(int32)
      IL_0035:  ldelem.ref
      IL_0036:  ldfld      bool Game.Block::IsGatherable
      IL_003b:  ret

      IL_003c:  ldc.i4.0
      IL_003d:  ret
    } // end of method '<>c__DisplayClass55_0'::'<PickTerrainForGathering>b__0'

  } // end of class '<>c__DisplayClass55_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass56_0'
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
    } // end of method '<>c__DisplayClass56_0'::.ctor

    .method assembly hidebysig instance bool 
            '<PickBody>b__0'(class Game.ComponentBody body,
                             float32 distance) cil managed
    {
      // 代码大小       113 (0x71)
      .maxstack  3
      IL_0000:  ldarg.0
      IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass56_0'::position
      IL_0006:  ldarg.2
      IL_0007:  ldarg.0
      IL_0008:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass56_0'::direction
      IL_000d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0012:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0017:  ldarg.0
      IL_0018:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass56_0'::creaturePosition
      IL_001d:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                    valuetype [Engine]Engine.Vector3)
      IL_0022:  ldarg.0
      IL_0023:  ldfld      float32 Game.ComponentMiner/'<>c__DisplayClass56_0'::reach
      IL_0028:  bgt.un.s   IL_006f

      IL_002a:  ldarg.1
      IL_002b:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
      IL_0030:  ldarg.0
      IL_0031:  ldfld      class Game.ComponentMiner Game.ComponentMiner/'<>c__DisplayClass56_0'::'<>4__this'
      IL_0036:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
      IL_003b:  beq.s      IL_006f

      IL_003d:  ldarg.1
      IL_003e:  ldarg.0
      IL_003f:  ldfld      class Game.ComponentMiner Game.ComponentMiner/'<>c__DisplayClass56_0'::'<>4__this'
      IL_0044:  call       instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
      IL_0049:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
      IL_004e:  callvirt   instance bool Game.ComponentBody::IsChildOfBody(class Game.ComponentBody)
      IL_0053:  brtrue.s   IL_006f

      IL_0055:  ldarg.0
      IL_0056:  ldfld      class Game.ComponentMiner Game.ComponentMiner/'<>c__DisplayClass56_0'::'<>4__this'
      IL_005b:  call       instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
      IL_0060:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
      IL_0065:  ldarg.1
      IL_0066:  callvirt   instance bool Game.ComponentBody::IsChildOfBody(class Game.ComponentBody)
      IL_006b:  brtrue.s   IL_006f

      IL_006d:  ldc.i4.1
      IL_006e:  ret

      IL_006f:  ldc.i4.0
      IL_0070:  ret
    } // end of method '<>c__DisplayClass56_0'::'<PickBody>b__0'

  } // end of class '<>c__DisplayClass56_0'

  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemBodies m_subsystemBodies
  .field private class Game.SubsystemMovingBlocks m_subsystemMovingBlocks
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.SubsystemSoundMaterials m_subsystemSoundMaterials
  .field private class Game.SubsystemBlockBehaviors m_subsystemBlockBehaviors
  .field private class Game.Random m_random
  .field private static class Game.Random s_random
  .field private float64 m_digStartTime
  .field private float32 m_digProgress
  .field private float64 m_lastHitTime
  .field private int32 m_lastDigFrameIndex
  .field private float32 m_lastPokingPhase
  .field private class Game.ComponentCreature '<ComponentCreature>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.ComponentPlayer '<ComponentPlayer>k__BackingField'
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

  .method public hidebysig specialname instance class Game.ComponentPlayer 
          get_ComponentPlayer() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentPlayer Game.ComponentMiner::'<ComponentPlayer>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentMiner::get_ComponentPlayer

  .method private hidebysig specialname instance void 
          set_ComponentPlayer(class Game.ComponentPlayer 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ComponentPlayer Game.ComponentMiner::'<ComponentPlayer>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentMiner::set_ComponentPlayer

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
    // 代码大小       886 (0x376)
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
    IL_0003:  call       int32 [Engine]Engine.Time::get_FrameIndex()
    IL_0008:  stfld      int32 Game.ComponentMiner::m_lastDigFrameIndex
    IL_000d:  ldarg.1
    IL_000e:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0013:  stloc.1
    IL_0014:  ldarg.0
    IL_0015:  ldfld      class Game.SubsystemTerrain Game.ComponentMiner::m_subsystemTerrain
    IL_001a:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_001f:  ldloc.1
    IL_0020:  ldfld      int32 Game.CellFace::X
    IL_0025:  ldloc.1
    IL_0026:  ldfld      int32 Game.CellFace::Y
    IL_002b:  ldloc.1
    IL_002c:  ldfld      int32 Game.CellFace::Z
    IL_0031:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0036:  stloc.2
    IL_0037:  ldloc.2
    IL_0038:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_003d:  stloc.3
    IL_003e:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0043:  ldloc.3
    IL_0044:  ldelem.ref
    IL_0045:  stloc.s    V_4
    IL_0047:  ldarg.0
    IL_0048:  call       instance int32 Game.ComponentMiner::get_ActiveBlockValue()
    IL_004d:  stloc.s    V_5
    IL_004f:  ldloc.s    V_5
    IL_0051:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0056:  stloc.s    V_6
    IL_0058:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_005d:  ldloc.s    V_6
    IL_005f:  ldelem.ref
    IL_0060:  stloc.s    V_7
    IL_0062:  ldarg.0
    IL_0063:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> Game.ComponentMiner::get_DigCellFace()
    IL_0068:  stloc.s    V_10
    IL_006a:  ldloca.s   V_10
    IL_006c:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>::get_HasValue()
    IL_0071:  brfalse.s  IL_00c7

    IL_0073:  ldarg.0
    IL_0074:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> Game.ComponentMiner::get_DigCellFace()
    IL_0079:  stloc.s    V_10
    IL_007b:  ldloca.s   V_10
    IL_007d:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>::get_Value()
    IL_0082:  ldfld      int32 Game.CellFace::X
    IL_0087:  ldloc.1
    IL_0088:  ldfld      int32 Game.CellFace::X
    IL_008d:  bne.un.s   IL_00c7

    IL_008f:  ldarg.0
    IL_0090:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> Game.ComponentMiner::get_DigCellFace()
    IL_0095:  stloc.s    V_10
    IL_0097:  ldloca.s   V_10
    IL_0099:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>::get_Value()
    IL_009e:  ldfld      int32 Game.CellFace::Y
    IL_00a3:  ldloc.1
    IL_00a4:  ldfld      int32 Game.CellFace::Y
    IL_00a9:  bne.un.s   IL_00c7

    IL_00ab:  ldarg.0
    IL_00ac:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> Game.ComponentMiner::get_DigCellFace()
    IL_00b1:  stloc.s    V_10
    IL_00b3:  ldloca.s   V_10
    IL_00b5:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>::get_Value()
    IL_00ba:  ldfld      int32 Game.CellFace::Z
    IL_00bf:  ldloc.1
    IL_00c0:  ldfld      int32 Game.CellFace::Z
    IL_00c5:  beq.s      IL_00e4

    IL_00c7:  ldarg.0
    IL_00c8:  ldarg.0
    IL_00c9:  ldfld      class Game.SubsystemTime Game.ComponentMiner::m_subsystemTime
    IL_00ce:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_00d3:  stfld      float64 Game.ComponentMiner::m_digStartTime
    IL_00d8:  ldarg.0
    IL_00d9:  ldloc.1
    IL_00da:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>::.ctor(!0)
    IL_00df:  call       instance void Game.ComponentMiner::set_DigCellFace(valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>)
    IL_00e4:  ldarg.0
    IL_00e5:  ldloc.2
    IL_00e6:  ldloc.s    V_6
    IL_00e8:  call       instance float32 Game.ComponentMiner::CalculateDigTime(int32,
                                                                                int32)
    IL_00ed:  stloc.s    V_8
    IL_00ef:  ldarg.0
    IL_00f0:  ldloc.s    V_8
    IL_00f2:  ldc.r4     0.0
    IL_00f7:  bgt.s      IL_0100

    IL_00f9:  ldc.r4     1.
    IL_00fe:  br.s       IL_011b

    IL_0100:  ldarg.0
    IL_0101:  ldfld      class Game.SubsystemTime Game.ComponentMiner::m_subsystemTime
    IL_0106:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_010b:  ldarg.0
    IL_010c:  ldfld      float64 Game.ComponentMiner::m_digStartTime
    IL_0111:  sub
    IL_0112:  conv.r4
    IL_0113:  ldloc.s    V_8
    IL_0115:  div
    IL_0116:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_011b:  stfld      float32 Game.ComponentMiner::m_digProgress
    IL_0120:  ldarg.0
    IL_0121:  ldloc.s    V_5
    IL_0123:  call       instance bool Game.ComponentMiner::CanUseTool(int32)
    IL_0128:  brtrue.s   IL_01a4

    IL_012a:  ldarg.0
    IL_012b:  ldc.r4     0.0
    IL_0130:  stfld      float32 Game.ComponentMiner::m_digProgress
    IL_0135:  ldarg.0
    IL_0136:  ldfld      class Game.SubsystemTime Game.ComponentMiner::m_subsystemTime
    IL_013b:  ldc.r8     5.
    IL_0144:  ldarg.0
    IL_0145:  ldfld      float64 Game.ComponentMiner::m_digStartTime
    IL_014a:  ldc.r8     1.
    IL_0153:  add
    IL_0154:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_0159:  brfalse.s  IL_01a4

    IL_015b:  ldarg.0
    IL_015c:  call       instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_0161:  dup
    IL_0162:  brtrue.s   IL_0167

    IL_0164:  pop
    IL_0165:  br.s       IL_01a4

    IL_0167:  call       instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_016c:  ldstr      "Must be level {0} to use {1}"
    IL_0171:  ldc.i4.2
    IL_0172:  newarr     [System.Runtime]System.Object
    IL_0177:  dup
    IL_0178:  ldc.i4.0
    IL_0179:  ldloc.s    V_7
    IL_017b:  ldfld      int32 Game.Block::PlayerLevelRequired
    IL_0180:  box        [System.Runtime]System.Int32
    IL_0185:  stelem.ref
    IL_0186:  dup
    IL_0187:  ldc.i4.1
    IL_0188:  ldloc.s    V_7
    IL_018a:  ldarg.0
    IL_018b:  ldfld      class Game.SubsystemTerrain Game.ComponentMiner::m_subsystemTerrain
    IL_0190:  ldloc.s    V_5
    IL_0192:  callvirt   instance string Game.Block::GetDisplayName(class Game.SubsystemTerrain,
                                                                    int32)
    IL_0197:  stelem.ref
    IL_0198:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_019d:  ldc.i4.1
    IL_019e:  ldc.i4.1
    IL_019f:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_01a4:  ldarg.0
    IL_01a5:  call       instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_01aa:  brfalse.s  IL_01d3

    IL_01ac:  ldarg.0
    IL_01ad:  call       instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_01b2:  callvirt   instance class Game.ComponentInput Game.ComponentPlayer::get_ComponentInput()
    IL_01b7:  callvirt   instance bool Game.ComponentInput::get_IsControlledByTouch()
    IL_01bc:  brtrue.s   IL_01d3

    IL_01be:  ldarg.0
    IL_01bf:  ldfld      class Game.SubsystemGameInfo Game.ComponentMiner::m_subsystemGameInfo
    IL_01c4:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_01c9:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_01ce:  ldc.i4.0
    IL_01cf:  ceq
    IL_01d1:  br.s       IL_01d4

    IL_01d3:  ldc.i4.0
    IL_01d4:  stloc.s    V_9
    IL_01d6:  ldloc.s    V_9
    IL_01d8:  brtrue.s   IL_01fa

    IL_01da:  ldarg.0
    IL_01db:  ldfld      float32 Game.ComponentMiner::m_lastPokingPhase
    IL_01e0:  ldc.r4     0.5
    IL_01e5:  bgt.un     IL_0374

    IL_01ea:  ldarg.0
    IL_01eb:  call       instance float32 Game.ComponentMiner::get_PokingPhase()
    IL_01f0:  ldc.r4     0.5
    IL_01f5:  ble.un     IL_0374

    IL_01fa:  ldarg.0
    IL_01fb:  ldfld      float32 Game.ComponentMiner::m_digProgress
    IL_0200:  ldc.r4     1.
    IL_0205:  blt.un     IL_02d7

    IL_020a:  ldarg.0
    IL_020b:  ldloca.s   V_10
    IL_020d:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>
    IL_0213:  ldloc.s    V_10
    IL_0215:  call       instance void Game.ComponentMiner::set_DigCellFace(valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>)
    IL_021a:  ldloc.s    V_9
    IL_021c:  brfalse.s  IL_0225

    IL_021e:  ldarg.0
    IL_021f:  ldc.i4.1
    IL_0220:  call       instance void Game.ComponentMiner::Poke(bool)
    IL_0225:  ldloc.s    V_4
    IL_0227:  ldarg.0
    IL_0228:  ldfld      class Game.SubsystemTerrain Game.ComponentMiner::m_subsystemTerrain
    IL_022d:  ldarg.0
    IL_022e:  ldloc.2
    IL_022f:  ldloc.s    V_5
    IL_0231:  ldarg.1
    IL_0232:  callvirt   instance valuetype Game.BlockPlacementData Game.Block::GetDigValue(class Game.SubsystemTerrain,
                                                                                            class Game.ComponentMiner,
                                                                                            int32,
                                                                                            int32,
                                                                                            valuetype Game.TerrainRaycastResult)
    IL_0237:  stloc.s    V_11
    IL_0239:  ldarg.0
    IL_023a:  ldfld      class Game.SubsystemTerrain Game.ComponentMiner::m_subsystemTerrain
    IL_023f:  ldloc.s    V_7
    IL_0241:  ldfld      int32 Game.Block::ToolLevel
    IL_0246:  ldloc.s    V_11
    IL_0248:  ldfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_024d:  ldfld      int32 Game.CellFace::X
    IL_0252:  ldloc.s    V_11
    IL_0254:  ldfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_0259:  ldfld      int32 Game.CellFace::Y
    IL_025e:  ldloc.s    V_11
    IL_0260:  ldfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_0265:  ldfld      int32 Game.CellFace::Z
    IL_026a:  ldloc.s    V_11
    IL_026c:  ldfld      int32 Game.BlockPlacementData::Value
    IL_0271:  ldc.i4.0
    IL_0272:  ldc.i4.0
    IL_0273:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_0278:  ldarg.0
    IL_0279:  ldfld      class Game.SubsystemSoundMaterials Game.ComponentMiner::m_subsystemSoundMaterials
    IL_027e:  ldloc.2
    IL_027f:  ldloc.1
    IL_0280:  ldfld      int32 Game.CellFace::X
    IL_0285:  conv.r4
    IL_0286:  ldloc.1
    IL_0287:  ldfld      int32 Game.CellFace::Y
    IL_028c:  conv.r4
    IL_028d:  ldloc.1
    IL_028e:  ldfld      int32 Game.CellFace::Z
    IL_0293:  conv.r4
    IL_0294:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0299:  ldc.r4     2.
    IL_029e:  callvirt   instance void Game.SubsystemSoundMaterials::PlayImpactSound(int32,
                                                                                     valuetype [Engine]Engine.Vector3,
                                                                                     float32)
    IL_02a3:  ldarg.0
    IL_02a4:  ldc.i4.1
    IL_02a5:  call       instance void Game.ComponentMiner::DamageActiveTool(int32)
    IL_02aa:  ldarg.0
    IL_02ab:  call       instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_02b0:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_02b5:  brfalse.s  IL_02d0

    IL_02b7:  ldarg.0
    IL_02b8:  call       instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_02bd:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_02c2:  dup
    IL_02c3:  ldfld      int64 Game.PlayerStats::BlocksDug
    IL_02c8:  ldc.i4.1
    IL_02c9:  conv.i8
    IL_02ca:  add
    IL_02cb:  stfld      int64 Game.PlayerStats::BlocksDug
    IL_02d0:  ldc.i4.1
    IL_02d1:  stloc.0
    IL_02d2:  br         IL_0374

    IL_02d7:  ldarg.0
    IL_02d8:  ldfld      class Game.SubsystemSoundMaterials Game.ComponentMiner::m_subsystemSoundMaterials
    IL_02dd:  ldloc.2
    IL_02de:  ldloc.1
    IL_02df:  ldfld      int32 Game.CellFace::X
    IL_02e4:  conv.r4
    IL_02e5:  ldloc.1
    IL_02e6:  ldfld      int32 Game.CellFace::Y
    IL_02eb:  conv.r4
    IL_02ec:  ldloc.1
    IL_02ed:  ldfld      int32 Game.CellFace::Z
    IL_02f2:  conv.r4
    IL_02f3:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_02f8:  ldc.r4     1.
    IL_02fd:  callvirt   instance void Game.SubsystemSoundMaterials::PlayImpactSound(int32,
                                                                                     valuetype [Engine]Engine.Vector3,
                                                                                     float32)
    IL_0302:  ldarg.1
    IL_0303:  ldfld      valuetype [Engine]Engine.Vector3 Game.TerrainRaycastResult::RaycastStart
    IL_0308:  ldarg.1
    IL_0309:  ldfld      float32 Game.TerrainRaycastResult::Distance
    IL_030e:  ldarg.1
    IL_030f:  ldfld      valuetype [Engine]Engine.Vector3 Game.TerrainRaycastResult::RaycastEnd
    IL_0314:  ldarg.1
    IL_0315:  ldfld      valuetype [Engine]Engine.Vector3 Game.TerrainRaycastResult::RaycastStart
    IL_031a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_031f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0324:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0329:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_032e:  ldc.r4     0.1
    IL_0333:  ldloc.1
    IL_0334:  ldfld      int32 Game.CellFace::Face
    IL_0339:  call       valuetype [Engine]Engine.Vector3 Game.CellFace::FaceToVector3(int32)
    IL_033e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0343:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0348:  stloc.s    V_12
    IL_034a:  ldloc.s    V_4
    IL_034c:  ldarg.0
    IL_034d:  ldfld      class Game.SubsystemTerrain Game.ComponentMiner::m_subsystemTerrain
    IL_0352:  ldloc.s    V_12
    IL_0354:  ldloc.2
    IL_0355:  ldc.r4     0.34999999
    IL_035a:  callvirt   instance class Game.BlockDebrisParticleSystem Game.Block::CreateDebrisParticleSystem(class Game.SubsystemTerrain,
                                                                                                              valuetype [Engine]Engine.Vector3,
                                                                                                              int32,
                                                                                                              float32)
    IL_035f:  stloc.s    V_13
    IL_0361:  ldarg.0
    IL_0362:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0367:  ldc.i4.1
    IL_0368:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemParticles>(bool)
    IL_036d:  ldloc.s    V_13
    IL_036f:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
    IL_0374:  ldloc.0
    IL_0375:  ret
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
    // 代码大小       591 (0x24f)
    .maxstack  8
    .locals init (int32 V_0,
             class Game.Block V_1,
             valuetype Game.BlockPlacementData V_2,
             valuetype [Engine]Engine.Point3 V_3,
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
    IL_0001:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0006:  stloc.0
    IL_0007:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_000c:  ldloc.0
    IL_000d:  ldelem.ref
    IL_000e:  ldfld      bool Game.Block::IsPlaceable
    IL_0013:  brfalse    IL_024d

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
    IL_0036:  brfalse    IL_024d

    IL_003b:  ldloc.2
    IL_003c:  ldfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_0041:  ldfld      int32 Game.CellFace::Face
    IL_0046:  call       valuetype [Engine]Engine.Point3 Game.CellFace::FaceToPoint3(int32)
    IL_004b:  stloc.3
    IL_004c:  ldloc.2
    IL_004d:  ldfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_0052:  ldfld      int32 Game.CellFace::X
    IL_0057:  ldloc.3
    IL_0058:  ldfld      int32 [Engine]Engine.Point3::X
    IL_005d:  add
    IL_005e:  stloc.s    V_4
    IL_0060:  ldloc.2
    IL_0061:  ldfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_0066:  ldfld      int32 Game.CellFace::Y
    IL_006b:  ldloc.3
    IL_006c:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0071:  add
    IL_0072:  stloc.s    V_5
    IL_0074:  ldloc.2
    IL_0075:  ldfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_007a:  ldfld      int32 Game.CellFace::Z
    IL_007f:  ldloc.3
    IL_0080:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0085:  add
    IL_0086:  stloc.s    V_6
    IL_0088:  ldc.i4.0
    IL_0089:  stloc.s    V_7
    IL_008b:  ldloc.1
    IL_008c:  ldfld      bool Game.Block::IsCollidable
    IL_0091:  brfalse    IL_0176

    IL_0096:  ldarg.0
    IL_0097:  call       instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_009c:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00a1:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_00a6:  stloc.s    V_8
    IL_00a8:  ldloca.s   V_8
    IL_00aa:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_00af:  dup
    IL_00b0:  ldobj      [Engine]Engine.Vector3
    IL_00b5:  ldc.r4     0.2
    IL_00ba:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_00bf:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00c4:  stobj      [Engine]Engine.Vector3
    IL_00c9:  ldloca.s   V_8
    IL_00cb:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_00d0:  dup
    IL_00d1:  ldobj      [Engine]Engine.Vector3
    IL_00d6:  ldc.r4     0.2
    IL_00db:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_00e0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00e5:  stobj      [Engine]Engine.Vector3
    IL_00ea:  ldloc.1
    IL_00eb:  ldarg.0
    IL_00ec:  ldfld      class Game.SubsystemTerrain Game.ComponentMiner::m_subsystemTerrain
    IL_00f1:  ldloc.2
    IL_00f2:  ldfld      int32 Game.BlockPlacementData::Value
    IL_00f7:  callvirt   instance valuetype [Engine]Engine.BoundingBox[] Game.Block::GetCustomCollisionBoxes(class Game.SubsystemTerrain,
                                                                                                             int32)
    IL_00fc:  stloc.s    V_9
    IL_00fe:  ldc.i4.0
    IL_00ff:  stloc.s    V_10
    IL_0101:  br.s       IL_016e

    IL_0103:  ldloc.s    V_9
    IL_0105:  ldloc.s    V_10
    IL_0107:  ldelem     [Engine]Engine.BoundingBox
    IL_010c:  stloc.s    V_11
    IL_010e:  ldloca.s   V_11
    IL_0110:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0115:  dup
    IL_0116:  ldobj      [Engine]Engine.Vector3
    IL_011b:  ldloc.s    V_4
    IL_011d:  conv.r4
    IL_011e:  ldloc.s    V_5
    IL_0120:  conv.r4
    IL_0121:  ldloc.s    V_6
    IL_0123:  conv.r4
    IL_0124:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0129:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_012e:  stobj      [Engine]Engine.Vector3
    IL_0133:  ldloca.s   V_11
    IL_0135:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_013a:  dup
    IL_013b:  ldobj      [Engine]Engine.Vector3
    IL_0140:  ldloc.s    V_4
    IL_0142:  conv.r4
    IL_0143:  ldloc.s    V_5
    IL_0145:  conv.r4
    IL_0146:  ldloc.s    V_6
    IL_0148:  conv.r4
    IL_0149:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_014e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0153:  stobj      [Engine]Engine.Vector3
    IL_0158:  ldloca.s   V_8
    IL_015a:  ldloc.s    V_11
    IL_015c:  call       instance bool [Engine]Engine.BoundingBox::Intersection(valuetype [Engine]Engine.BoundingBox)
    IL_0161:  brfalse.s  IL_0168

    IL_0163:  ldc.i4.1
    IL_0164:  stloc.s    V_7
    IL_0166:  br.s       IL_0176

    IL_0168:  ldloc.s    V_10
    IL_016a:  ldc.i4.1
    IL_016b:  add
    IL_016c:  stloc.s    V_10
    IL_016e:  ldloc.s    V_10
    IL_0170:  ldloc.s    V_9
    IL_0172:  ldlen
    IL_0173:  conv.i4
    IL_0174:  blt.s      IL_0103

    IL_0176:  ldloc.s    V_7
    IL_0178:  brtrue     IL_024d

    IL_017d:  ldarg.0
    IL_017e:  ldfld      class Game.SubsystemBlockBehaviors Game.ComponentMiner::m_subsystemBlockBehaviors
    IL_0183:  ldloc.2
    IL_0184:  ldfld      int32 Game.BlockPlacementData::Value
    IL_0189:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_018e:  callvirt   instance class Game.SubsystemBlockBehavior[] Game.SubsystemBlockBehaviors::GetBlockBehaviors(int32)
    IL_0193:  stloc.s    V_12
    IL_0195:  ldc.i4.0
    IL_0196:  stloc.s    V_10
    IL_0198:  br.s       IL_01b3

    IL_019a:  ldloc.s    V_12
    IL_019c:  ldloc.s    V_10
    IL_019e:  ldelem.ref
    IL_019f:  ldloc.s    V_4
    IL_01a1:  ldloc.s    V_5
    IL_01a3:  ldloc.s    V_6
    IL_01a5:  ldloca.s   V_2
    IL_01a7:  ldarg.2
    IL_01a8:  callvirt   instance void Game.SubsystemBlockBehavior::OnItemPlaced(int32,
                                                                                 int32,
                                                                                 int32,
                                                                                 valuetype Game.BlockPlacementData&,
                                                                                 int32)
    IL_01ad:  ldloc.s    V_10
    IL_01af:  ldc.i4.1
    IL_01b0:  add
    IL_01b1:  stloc.s    V_10
    IL_01b3:  ldloc.s    V_10
    IL_01b5:  ldloc.s    V_12
    IL_01b7:  ldlen
    IL_01b8:  conv.i4
    IL_01b9:  blt.s      IL_019a

    IL_01bb:  ldarg.0
    IL_01bc:  ldfld      class Game.SubsystemTerrain Game.ComponentMiner::m_subsystemTerrain
    IL_01c1:  ldc.i4.0
    IL_01c2:  ldloc.s    V_4
    IL_01c4:  ldloc.s    V_5
    IL_01c6:  ldloc.s    V_6
    IL_01c8:  ldloc.2
    IL_01c9:  ldfld      int32 Game.BlockPlacementData::Value
    IL_01ce:  ldc.i4.0
    IL_01cf:  ldc.i4.0
    IL_01d0:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_01d5:  ldarg.0
    IL_01d6:  ldfld      class Game.SubsystemAudio Game.ComponentMiner::m_subsystemAudio
    IL_01db:  ldstr      "Audio/BlockPlaced"
    IL_01e0:  ldc.r4     1.
    IL_01e5:  ldc.r4     0.0
    IL_01ea:  ldloc.2
    IL_01eb:  ldfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_01f0:  ldfld      int32 Game.CellFace::X
    IL_01f5:  conv.r4
    IL_01f6:  ldloc.2
    IL_01f7:  ldfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_01fc:  ldfld      int32 Game.CellFace::Y
    IL_0201:  conv.r4
    IL_0202:  ldloc.2
    IL_0203:  ldfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_0208:  ldfld      int32 Game.CellFace::Z
    IL_020d:  conv.r4
    IL_020e:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0213:  ldc.r4     5.
    IL_0218:  ldc.i4.0
    IL_0219:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_021e:  ldarg.0
    IL_021f:  ldc.i4.0
    IL_0220:  call       instance void Game.ComponentMiner::Poke(bool)
    IL_0225:  ldarg.0
    IL_0226:  call       instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_022b:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_0230:  brfalse.s  IL_024b

    IL_0232:  ldarg.0
    IL_0233:  call       instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0238:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_023d:  dup
    IL_023e:  ldfld      int64 Game.PlayerStats::BlocksPlaced
    IL_0243:  ldc.i4.1
    IL_0244:  conv.i8
    IL_0245:  add
    IL_0246:  stfld      int64 Game.PlayerStats::BlocksPlaced
    IL_024b:  ldc.i4.1
    IL_024c:  ret

    IL_024d:  ldc.i4.0
    IL_024e:  ret
  } // end of method ComponentMiner::Place

  .method public hidebysig instance bool 
          Use(valuetype [Engine]Engine.Vector3 start,
              valuetype [Engine]Engine.Vector3 direction) cil managed
  {
    // 代码大小       169 (0xa9)
    .maxstack  8
    .locals init (int32 V_0,
             class Game.Block V_1,
             class Game.SubsystemBlockBehavior[] V_2,
             int32 V_3)
    IL_0000:  ldarg.0
    IL_0001:  call       instance int32 Game.ComponentMiner::get_ActiveBlockValue()
    IL_0006:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_000b:  stloc.0
    IL_000c:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0011:  ldloc.0
    IL_0012:  ldelem.ref
    IL_0013:  stloc.1
    IL_0014:  ldarg.0
    IL_0015:  ldarg.0
    IL_0016:  call       instance int32 Game.ComponentMiner::get_ActiveBlockValue()
    IL_001b:  call       instance bool Game.ComponentMiner::CanUseTool(int32)
    IL_0020:  brtrue.s   IL_0076

    IL_0022:  ldarg.0
    IL_0023:  call       instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_0028:  dup
    IL_0029:  brtrue.s   IL_002e

    IL_002b:  pop
    IL_002c:  br.s       IL_006d

    IL_002e:  call       instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0033:  ldstr      "Must be level {0} to use {1}"
    IL_0038:  ldc.i4.2
    IL_0039:  newarr     [System.Runtime]System.Object
    IL_003e:  dup
    IL_003f:  ldc.i4.0
    IL_0040:  ldloc.1
    IL_0041:  ldfld      int32 Game.Block::PlayerLevelRequired
    IL_0046:  box        [System.Runtime]System.Int32
    IL_004b:  stelem.ref
    IL_004c:  dup
    IL_004d:  ldc.i4.1
    IL_004e:  ldloc.1
    IL_004f:  ldarg.0
    IL_0050:  ldfld      class Game.SubsystemTerrain Game.ComponentMiner::m_subsystemTerrain
    IL_0055:  ldarg.0
    IL_0056:  call       instance int32 Game.ComponentMiner::get_ActiveBlockValue()
    IL_005b:  callvirt   instance string Game.Block::GetDisplayName(class Game.SubsystemTerrain,
                                                                    int32)
    IL_0060:  stelem.ref
    IL_0061:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0066:  ldc.i4.1
    IL_0067:  ldc.i4.1
    IL_0068:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_006d:  ldarg.0
    IL_006e:  ldc.i4.0
    IL_006f:  call       instance void Game.ComponentMiner::Poke(bool)
    IL_0074:  ldc.i4.0
    IL_0075:  ret

    IL_0076:  ldarg.0
    IL_0077:  ldfld      class Game.SubsystemBlockBehaviors Game.ComponentMiner::m_subsystemBlockBehaviors
    IL_007c:  ldloc.0
    IL_007d:  callvirt   instance class Game.SubsystemBlockBehavior[] Game.SubsystemBlockBehaviors::GetBlockBehaviors(int32)
    IL_0082:  stloc.2
    IL_0083:  ldc.i4.0
    IL_0084:  stloc.3
    IL_0085:  br.s       IL_00a1

    IL_0087:  ldloc.2
    IL_0088:  ldloc.3
    IL_0089:  ldelem.ref
    IL_008a:  ldarg.1
    IL_008b:  ldarg.2
    IL_008c:  ldarg.0
    IL_008d:  callvirt   instance bool Game.SubsystemBlockBehavior::OnUse(valuetype [Engine]Engine.Vector3,
                                                                          valuetype [Engine]Engine.Vector3,
                                                                          class Game.ComponentMiner)
    IL_0092:  brfalse.s  IL_009d

    IL_0094:  ldarg.0
    IL_0095:  ldc.i4.0
    IL_0096:  call       instance void Game.ComponentMiner::Poke(bool)
    IL_009b:  ldc.i4.1
    IL_009c:  ret

    IL_009d:  ldloc.3
    IL_009e:  ldc.i4.1
    IL_009f:  add
    IL_00a0:  stloc.3
    IL_00a1:  ldloc.3
    IL_00a2:  ldloc.2
    IL_00a3:  ldlen
    IL_00a4:  conv.i4
    IL_00a5:  blt.s      IL_0087

    IL_00a7:  ldc.i4.0
    IL_00a8:  ret
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
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  ldarg.1
    IL_000c:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0011:  ldfld      int32 Game.CellFace::X
    IL_0016:  ldarg.1
    IL_0017:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_001c:  ldfld      int32 Game.CellFace::Y
    IL_0021:  ldarg.1
    IL_0022:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0027:  ldfld      int32 Game.CellFace::Z
    IL_002c:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
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
    // 代码大小       503 (0x1f7)
    .maxstack  8
    .locals init (class Game.Block V_0,
             float32 V_1,
             float32 V_2,
             bool V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTime Game.ComponentMiner::m_subsystemTime
    IL_0006:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_000b:  ldarg.0
    IL_000c:  ldfld      float64 Game.ComponentMiner::m_lastHitTime
    IL_0011:  sub
    IL_0012:  ldc.r8     0.60000002384185791
    IL_001b:  ble.un     IL_01f6

    IL_0020:  ldarg.0
    IL_0021:  ldarg.0
    IL_0022:  ldfld      class Game.SubsystemTime Game.ComponentMiner::m_subsystemTime
    IL_0027:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_002c:  stfld      float64 Game.ComponentMiner::m_lastHitTime
    IL_0031:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0036:  ldarg.0
    IL_0037:  call       instance int32 Game.ComponentMiner::get_ActiveBlockValue()
    IL_003c:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0041:  ldelem.ref
    IL_0042:  stloc.0
    IL_0043:  ldarg.0
    IL_0044:  ldarg.0
    IL_0045:  call       instance int32 Game.ComponentMiner::get_ActiveBlockValue()
    IL_004a:  call       instance bool Game.ComponentMiner::CanUseTool(int32)
    IL_004f:  brtrue.s   IL_00a4

    IL_0051:  ldarg.0
    IL_0052:  call       instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_0057:  dup
    IL_0058:  brtrue.s   IL_005d

    IL_005a:  pop
    IL_005b:  br.s       IL_009c

    IL_005d:  call       instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0062:  ldstr      "Must be level {0} to use {1}"
    IL_0067:  ldc.i4.2
    IL_0068:  newarr     [System.Runtime]System.Object
    IL_006d:  dup
    IL_006e:  ldc.i4.0
    IL_006f:  ldloc.0
    IL_0070:  ldfld      int32 Game.Block::PlayerLevelRequired
    IL_0075:  box        [System.Runtime]System.Int32
    IL_007a:  stelem.ref
    IL_007b:  dup
    IL_007c:  ldc.i4.1
    IL_007d:  ldloc.0
    IL_007e:  ldarg.0
    IL_007f:  ldfld      class Game.SubsystemTerrain Game.ComponentMiner::m_subsystemTerrain
    IL_0084:  ldarg.0
    IL_0085:  call       instance int32 Game.ComponentMiner::get_ActiveBlockValue()
    IL_008a:  callvirt   instance string Game.Block::GetDisplayName(class Game.SubsystemTerrain,
                                                                    int32)
    IL_008f:  stelem.ref
    IL_0090:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0095:  ldc.i4.1
    IL_0096:  ldc.i4.1
    IL_0097:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_009c:  ldarg.0
    IL_009d:  ldc.i4.0
    IL_009e:  call       instance void Game.ComponentMiner::Poke(bool)
    IL_00a3:  ret

    IL_00a4:  ldc.r4     0.0
    IL_00a9:  stloc.1
    IL_00aa:  ldc.r4     1.
    IL_00af:  stloc.2
    IL_00b0:  ldarg.0
    IL_00b1:  call       instance int32 Game.ComponentMiner::get_ActiveBlockValue()
    IL_00b6:  brfalse.s  IL_00f1

    IL_00b8:  ldloc.0
    IL_00b9:  ldarg.0
    IL_00ba:  call       instance int32 Game.ComponentMiner::get_ActiveBlockValue()
    IL_00bf:  callvirt   instance float32 Game.Block::GetMeleePower(int32)
    IL_00c4:  ldarg.0
    IL_00c5:  call       instance float32 Game.ComponentMiner::get_AttackPower()
    IL_00ca:  mul
    IL_00cb:  ldarg.0
    IL_00cc:  ldfld      class Game.Random Game.ComponentMiner::m_random
    IL_00d1:  ldc.r4     0.80000001
    IL_00d6:  ldc.r4     1.2
    IL_00db:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00e0:  mul
    IL_00e1:  stloc.1
    IL_00e2:  ldloc.0
    IL_00e3:  ldarg.0
    IL_00e4:  call       instance int32 Game.ComponentMiner::get_ActiveBlockValue()
    IL_00e9:  callvirt   instance float32 Game.Block::GetMeleeHitProbability(int32)
    IL_00ee:  stloc.2
    IL_00ef:  br.s       IL_0114

    IL_00f1:  ldarg.0
    IL_00f2:  call       instance float32 Game.ComponentMiner::get_AttackPower()
    IL_00f7:  ldarg.0
    IL_00f8:  ldfld      class Game.Random Game.ComponentMiner::m_random
    IL_00fd:  ldc.r4     1.
    IL_0102:  ldc.r4     1.5
    IL_0107:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_010c:  mul
    IL_010d:  stloc.1
    IL_010e:  ldc.r4     0.66000003
    IL_0113:  stloc.2
    IL_0114:  ldc.i4.0
    IL_0115:  stloc.3
    IL_0116:  ldarg.0
    IL_0117:  call       instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_011c:  brfalse.s  IL_0194

    IL_011e:  ldarg.0
    IL_011f:  ldfld      class Game.SubsystemAudio Game.ComponentMiner::m_subsystemAudio
    IL_0124:  ldstr      "Audio/Swoosh"
    IL_0129:  ldc.r4     1.
    IL_012e:  ldarg.0
    IL_012f:  ldfld      class Game.Random Game.ComponentMiner::m_random
    IL_0134:  ldc.r4     -0.2
    IL_0139:  ldc.r4     0.2
    IL_013e:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0143:  ldarg.1
    IL_0144:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0149:  ldc.r4     3.
    IL_014e:  ldc.i4.0
    IL_014f:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_0154:  ldloc.2
    IL_0155:  ldarg.0
    IL_0156:  call       instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_015b:  callvirt   instance class Game.ComponentLevel Game.ComponentPlayer::get_ComponentLevel()
    IL_0160:  callvirt   instance float32 Game.ComponentLevel::get_SpeedFactor()
    IL_0165:  mul
    IL_0166:  stloc.2
    IL_0167:  ldarg.0
    IL_0168:  ldfld      class Game.Random Game.ComponentMiner::m_random
    IL_016d:  ldc.r4     0.0
    IL_0172:  ldc.r4     0.99989998
    IL_0177:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_017c:  ldloc.2
    IL_017d:  blt.un.s   IL_0181

    IL_017f:  ldc.i4.1
    IL_0180:  stloc.3
    IL_0181:  ldloc.1
    IL_0182:  ldarg.0
    IL_0183:  call       instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_0188:  callvirt   instance class Game.ComponentLevel Game.ComponentPlayer::get_ComponentLevel()
    IL_018d:  callvirt   instance float32 Game.ComponentLevel::get_StrengthFactor()
    IL_0192:  mul
    IL_0193:  stloc.1
    IL_0194:  ldloc.3
    IL_0195:  brtrue.s   IL_01ad

    IL_0197:  ldarg.1
    IL_0198:  ldarg.0
    IL_0199:  call       instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_019e:  ldarg.2
    IL_019f:  ldloc.1
    IL_01a0:  ldc.i4.1
    IL_01a1:  call       void Game.ComponentMiner::AttackBody(class Game.ComponentBody,
                                                              class Game.ComponentCreature,
                                                              valuetype [Engine]Engine.Vector3,
                                                              float32,
                                                              bool)
    IL_01a6:  ldarg.0
    IL_01a7:  ldc.i4.1
    IL_01a8:  call       instance void Game.ComponentMiner::DamageActiveTool(int32)
    IL_01ad:  ldarg.0
    IL_01ae:  call       instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_01b3:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_01b8:  brfalse.s  IL_01ef

    IL_01ba:  ldarg.0
    IL_01bb:  call       instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_01c0:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_01c5:  dup
    IL_01c6:  ldfld      int64 Game.PlayerStats::MeleeAttacks
    IL_01cb:  ldc.i4.1
    IL_01cc:  conv.i8
    IL_01cd:  add
    IL_01ce:  stfld      int64 Game.PlayerStats::MeleeAttacks
    IL_01d3:  ldloc.3
    IL_01d4:  brtrue.s   IL_01ef

    IL_01d6:  ldarg.0
    IL_01d7:  call       instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_01dc:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
    IL_01e1:  dup
    IL_01e2:  ldfld      int64 Game.PlayerStats::MeleeHits
    IL_01e7:  ldc.i4.1
    IL_01e8:  conv.i8
    IL_01e9:  add
    IL_01ea:  stfld      int64 Game.PlayerStats::MeleeHits
    IL_01ef:  ldarg.0
    IL_01f0:  ldc.i4.0
    IL_01f1:  call       instance void Game.ComponentMiner::Poke(bool)
    IL_01f6:  ret
  } // end of method ComponentMiner::Hit

  .method public hidebysig instance bool 
          Aim(valuetype [Engine]Engine.Vector3 position,
              valuetype [Engine]Engine.Vector3 direction,
              valuetype Game.AimState state) cil managed
  {
    // 代码大小       174 (0xae)
    .maxstack  8
    .locals init (int32 V_0,
             class Game.Block V_1,
             class Game.SubsystemBlockBehavior[] V_2,
             int32 V_3)
    IL_0000:  ldarg.0
    IL_0001:  call       instance int32 Game.ComponentMiner::get_ActiveBlockValue()
    IL_0006:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_000b:  stloc.0
    IL_000c:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0011:  ldloc.0
    IL_0012:  ldelem.ref
    IL_0013:  stloc.1
    IL_0014:  ldloc.1
    IL_0015:  ldfld      bool Game.Block::IsAimable
    IL_001a:  brfalse    IL_00ac

    IL_001f:  ldarg.0
    IL_0020:  ldarg.0
    IL_0021:  call       instance int32 Game.ComponentMiner::get_ActiveBlockValue()
    IL_0026:  call       instance bool Game.ComponentMiner::CanUseTool(int32)
    IL_002b:  brtrue.s   IL_0081

    IL_002d:  ldarg.0
    IL_002e:  call       instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_0033:  dup
    IL_0034:  brtrue.s   IL_0039

    IL_0036:  pop
    IL_0037:  br.s       IL_0078

    IL_0039:  call       instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_003e:  ldstr      "Must be level {0} to use {1}"
    IL_0043:  ldc.i4.2
    IL_0044:  newarr     [System.Runtime]System.Object
    IL_0049:  dup
    IL_004a:  ldc.i4.0
    IL_004b:  ldloc.1
    IL_004c:  ldfld      int32 Game.Block::PlayerLevelRequired
    IL_0051:  box        [System.Runtime]System.Int32
    IL_0056:  stelem.ref
    IL_0057:  dup
    IL_0058:  ldc.i4.1
    IL_0059:  ldloc.1
    IL_005a:  ldarg.0
    IL_005b:  ldfld      class Game.SubsystemTerrain Game.ComponentMiner::m_subsystemTerrain
    IL_0060:  ldarg.0
    IL_0061:  call       instance int32 Game.ComponentMiner::get_ActiveBlockValue()
    IL_0066:  callvirt   instance string Game.Block::GetDisplayName(class Game.SubsystemTerrain,
                                                                    int32)
    IL_006b:  stelem.ref
    IL_006c:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0071:  ldc.i4.1
    IL_0072:  ldc.i4.1
    IL_0073:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0078:  ldarg.0
    IL_0079:  ldc.i4.0
    IL_007a:  call       instance void Game.ComponentMiner::Poke(bool)
    IL_007f:  ldc.i4.1
    IL_0080:  ret

    IL_0081:  ldarg.0
    IL_0082:  ldfld      class Game.SubsystemBlockBehaviors Game.ComponentMiner::m_subsystemBlockBehaviors
    IL_0087:  ldloc.0
    IL_0088:  callvirt   instance class Game.SubsystemBlockBehavior[] Game.SubsystemBlockBehaviors::GetBlockBehaviors(int32)
    IL_008d:  stloc.2
    IL_008e:  ldc.i4.0
    IL_008f:  stloc.3
    IL_0090:  br.s       IL_00a6

    IL_0092:  ldloc.2
    IL_0093:  ldloc.3
    IL_0094:  ldelem.ref
    IL_0095:  ldarg.1
    IL_0096:  ldarg.2
    IL_0097:  ldarg.0
    IL_0098:  ldarg.3
    IL_0099:  callvirt   instance bool Game.SubsystemBlockBehavior::OnAim(valuetype [Engine]Engine.Vector3,
                                                                          valuetype [Engine]Engine.Vector3,
                                                                          class Game.ComponentMiner,
                                                                          valuetype Game.AimState)
    IL_009e:  brfalse.s  IL_00a2

    IL_00a0:  ldc.i4.1
    IL_00a1:  ret

    IL_00a2:  ldloc.3
    IL_00a3:  ldc.i4.1
    IL_00a4:  add
    IL_00a5:  stloc.3
    IL_00a6:  ldloc.3
    IL_00a7:  ldloc.2
    IL_00a8:  ldlen
    IL_00a9:  conv.i4
    IL_00aa:  blt.s      IL_0092

    IL_00ac:  ldc.i4.0
    IL_00ad:  ret
  } // end of method ComponentMiner::Aim

  .method public hidebysig instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> 
          PickTerrainForDigging(valuetype [Engine]Engine.Vector3 position,
                                valuetype [Engine]Engine.Vector3 direction) cil managed
  {
    // 代码大小       183 (0xb7)
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
    IL_001b:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0020:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_0025:  brfalse.s  IL_002e

    IL_0027:  ldc.r4     5.
    IL_002c:  br.s       IL_0033

    IL_002e:  call       float32 Game.SettingsManager::get_CreativeReach()
    IL_0033:  stfld      float32 Game.ComponentMiner/'<>c__DisplayClass53_0'::reach
    IL_0038:  ldc.r4     15.
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
    IL_007d:  ldloc.0
    IL_007e:  ldarg.0
    IL_007f:  ldfld      class Game.SubsystemMovingBlocks Game.ComponentMiner::m_subsystemMovingBlocks
    IL_0084:  ldloc.0
    IL_0085:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass53_0'::position
    IL_008a:  ldloc.2
    IL_008b:  ldc.i4.1
    IL_008c:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.MovingBlocksRaycastResult> Game.SubsystemMovingBlocks::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                            valuetype [Engine]Engine.Vector3,
                                                                                                                                                            bool)
    IL_0091:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype Game.MovingBlocksRaycastResult> Game.ComponentMiner/'<>c__DisplayClass53_0'::movingBlocksResult
    IL_0096:  ldarg.0
    IL_0097:  ldfld      class Game.SubsystemTerrain Game.ComponentMiner::m_subsystemTerrain
    IL_009c:  ldloc.0
    IL_009d:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass53_0'::position
    IL_00a2:  ldloc.2
    IL_00a3:  ldc.i4.1
    IL_00a4:  ldc.i4.1
    IL_00a5:  ldloc.0
    IL_00a6:  ldftn      instance bool Game.ComponentMiner/'<>c__DisplayClass53_0'::'<PickTerrainForDigging>b__0'(int32,
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
    .locals init (class Game.ComponentMiner/'<>c__DisplayClass54_0' V_0,
             float32 V_1,
             valuetype [Engine]Engine.Vector3 V_2)
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
    IL_0022:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0027:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_002c:  brfalse.s  IL_0035

    IL_002e:  ldc.r4     5.
    IL_0033:  br.s       IL_003a

    IL_0035:  call       float32 Game.SettingsManager::get_CreativeReach()
    IL_003a:  stfld      float32 Game.ComponentMiner/'<>c__DisplayClass54_0'::reach
    IL_003f:  ldc.r4     15.
    IL_0044:  stloc.1
    IL_0045:  ldloc.0
    IL_0046:  ldloc.0
    IL_0047:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass54_0'::direction
    IL_004c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0051:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass54_0'::direction
    IL_0056:  ldloc.0
    IL_0057:  ldarg.0
    IL_0058:  call       instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_005d:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_0062:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_0067:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass54_0'::creaturePosition
    IL_006c:  ldloc.0
    IL_006d:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass54_0'::position
    IL_0072:  ldloc.0
    IL_0073:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass54_0'::direction
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
    IL_008c:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass54_0'::position
    IL_0091:  ldloc.2
    IL_0092:  ldc.i4.1
    IL_0093:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.MovingBlocksRaycastResult> Game.SubsystemMovingBlocks::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                            valuetype [Engine]Engine.Vector3,
                                                                                                                                                            bool)
    IL_0098:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype Game.MovingBlocksRaycastResult> Game.ComponentMiner/'<>c__DisplayClass54_0'::movingBlocksResult
    IL_009d:  ldarg.0
    IL_009e:  ldfld      class Game.SubsystemTerrain Game.ComponentMiner::m_subsystemTerrain
    IL_00a3:  ldloc.0
    IL_00a4:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass54_0'::position
    IL_00a9:  ldloc.2
    IL_00aa:  ldc.i4.1
    IL_00ab:  ldc.i4.1
    IL_00ac:  ldloc.0
    IL_00ad:  ldftn      instance bool Game.ComponentMiner/'<>c__DisplayClass54_0'::'<PickTerrainForInteraction>b__0'(int32,
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
    .locals init (class Game.ComponentMiner/'<>c__DisplayClass55_0' V_0,
             float32 V_1,
             valuetype [Engine]Engine.Vector3 V_2)
    IL_0000:  newobj     instance void Game.ComponentMiner/'<>c__DisplayClass55_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass55_0'::position
    IL_000d:  ldloc.0
    IL_000e:  ldarg.2
    IL_000f:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass55_0'::direction
    IL_0014:  ldloc.0
    IL_0015:  ldarg.0
    IL_0016:  ldfld      class Game.SubsystemGameInfo Game.ComponentMiner::m_subsystemGameInfo
    IL_001b:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0020:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_0025:  brfalse.s  IL_002e

    IL_0027:  ldc.r4     5.
    IL_002c:  br.s       IL_0033

    IL_002e:  call       float32 Game.SettingsManager::get_CreativeReach()
    IL_0033:  stfld      float32 Game.ComponentMiner/'<>c__DisplayClass55_0'::reach
    IL_0038:  ldc.r4     15.
    IL_003d:  stloc.1
    IL_003e:  ldloc.0
    IL_003f:  ldloc.0
    IL_0040:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass55_0'::direction
    IL_0045:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_004a:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass55_0'::direction
    IL_004f:  ldloc.0
    IL_0050:  ldarg.0
    IL_0051:  call       instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0056:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_005b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_0060:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass55_0'::creaturePosition
    IL_0065:  ldloc.0
    IL_0066:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass55_0'::position
    IL_006b:  ldloc.0
    IL_006c:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass55_0'::direction
    IL_0071:  ldloc.1
    IL_0072:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0077:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_007c:  stloc.2
    IL_007d:  ldarg.0
    IL_007e:  ldfld      class Game.SubsystemTerrain Game.ComponentMiner::m_subsystemTerrain
    IL_0083:  ldloc.0
    IL_0084:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass55_0'::position
    IL_0089:  ldloc.2
    IL_008a:  ldc.i4.1
    IL_008b:  ldc.i4.1
    IL_008c:  ldloc.0
    IL_008d:  ldftn      instance bool Game.ComponentMiner/'<>c__DisplayClass55_0'::'<PickTerrainForGathering>b__0'(int32,
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
    .locals init (class Game.ComponentMiner/'<>c__DisplayClass56_0' V_0,
             valuetype [Engine]Engine.Vector3 V_1)
    IL_0000:  newobj     instance void Game.ComponentMiner/'<>c__DisplayClass56_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class Game.ComponentMiner Game.ComponentMiner/'<>c__DisplayClass56_0'::'<>4__this'
    IL_000d:  ldloc.0
    IL_000e:  ldarg.1
    IL_000f:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass56_0'::position
    IL_0014:  ldloc.0
    IL_0015:  ldarg.2
    IL_0016:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass56_0'::direction
    IL_001b:  ldloc.0
    IL_001c:  ldarg.0
    IL_001d:  ldfld      class Game.SubsystemGameInfo Game.ComponentMiner::m_subsystemGameInfo
    IL_0022:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0027:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_002c:  brfalse.s  IL_0035

    IL_002e:  ldc.r4     5.
    IL_0033:  br.s       IL_003a

    IL_0035:  call       float32 Game.SettingsManager::get_CreativeReach()
    IL_003a:  stfld      float32 Game.ComponentMiner/'<>c__DisplayClass56_0'::reach
    IL_003f:  ldloc.0
    IL_0040:  ldloc.0
    IL_0041:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass56_0'::direction
    IL_0046:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_004b:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass56_0'::direction
    IL_0050:  ldloc.0
    IL_0051:  ldarg.0
    IL_0052:  call       instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0057:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_005c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_0061:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass56_0'::creaturePosition
    IL_0066:  ldloc.0
    IL_0067:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass56_0'::position
    IL_006c:  ldloc.0
    IL_006d:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass56_0'::direction
    IL_0072:  ldc.r4     15.
    IL_0077:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_007c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0081:  stloc.1
    IL_0082:  ldarg.0
    IL_0083:  ldfld      class Game.SubsystemBodies Game.ComponentMiner::m_subsystemBodies
    IL_0088:  ldloc.0
    IL_0089:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentMiner/'<>c__DisplayClass56_0'::position
    IL_008e:  ldloc.1
    IL_008f:  ldc.r4     0.34999999
    IL_0094:  ldloc.0
    IL_0095:  ldftn      instance bool Game.ComponentMiner/'<>c__DisplayClass56_0'::'<PickBody>b__0'(class Game.ComponentBody,
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
    IL_0006:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_000b:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
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
    // 代码大小       641 (0x281)
    .maxstack  7
    .locals init (float32 V_0,
             class Game.ComponentClothing V_1,
             class Game.ComponentLevel V_2,
             class Game.ComponentHealth V_3,
             class Game.ComponentDamage V_4,
             float32 V_5,
             string V_6,
             string V_7,
             string V_8,
             valuetype [Engine]Engine.ReadOnlyList`1<string> V_9,
             valuetype [Engine]Engine.ReadOnlyList`1<string> V_10,
             int32 V_11,
             float32 V_12)
    IL_0000:  ldarg.3
    IL_0001:  ldc.r4     0.0
    IL_0006:  ble.un     IL_01e1

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
    IL_0029:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentLevel>()
    IL_002e:  stloc.2
    IL_002f:  ldloc.2
    IL_0030:  brfalse.s  IL_003c

    IL_0032:  ldarg.3
    IL_0033:  ldloc.2
    IL_0034:  callvirt   instance float32 Game.ComponentLevel::get_ResilienceFactor()
    IL_0039:  div
    IL_003a:  starg.s    attackPower
    IL_003c:  ldarg.0
    IL_003d:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0042:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentHealth>()
    IL_0047:  stloc.3
    IL_0048:  ldloc.3
    IL_0049:  brfalse    IL_0176

    IL_004e:  ldarg.3
    IL_004f:  ldloc.3
    IL_0050:  callvirt   instance float32 Game.ComponentHealth::get_AttackResilience()
    IL_0055:  div
    IL_0056:  stloc.s    V_5
    IL_0058:  ldarg.1
    IL_0059:  brfalse.s  IL_00cc

    IL_005b:  ldarg.1
    IL_005c:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<string> Game.ComponentCreature::get_KillVerbs()
    IL_0061:  stloc.s    V_9
    IL_0063:  ldloca.s   V_9
    IL_0065:  ldsfld     class Game.Random Game.ComponentMiner::s_random
    IL_006a:  ldc.i4.0
    IL_006b:  ldarg.1
    IL_006c:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<string> Game.ComponentCreature::get_KillVerbs()
    IL_0071:  stloc.s    V_10
    IL_0073:  ldloca.s   V_10
    IL_0075:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<string>::get_Count()
    IL_007a:  ldc.i4.1
    IL_007b:  sub
    IL_007c:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0081:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<string>::get_Item(int32)
    IL_0086:  ldarg.1
    IL_0087:  callvirt   instance string Game.ComponentCreature::get_DisplayName()
    IL_008c:  callvirt   instance string [System.Runtime]System.String::ToLower()
    IL_0091:  stloc.s    V_7
    IL_0093:  ldloc.s    V_7
    IL_0095:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_009a:  ldc.i4.0
    IL_009b:  ble.s      IL_00b1

    IL_009d:  ldstr      "aeiouy"
    IL_00a2:  ldloc.s    V_7
    IL_00a4:  ldc.i4.0
    IL_00a5:  callvirt   instance char [System.Runtime]System.String::get_Chars(int32)
    IL_00aa:  call       bool [System.Linq]System.Linq.Enumerable::Contains<char>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                  !!0)
    IL_00af:  brtrue.s   IL_00b8

    IL_00b1:  ldstr      " by a "
    IL_00b6:  br.s       IL_00bd

    IL_00b8:  ldstr      " by an "
    IL_00bd:  stloc.s    V_8
    IL_00bf:  ldloc.s    V_8
    IL_00c1:  ldloc.s    V_7
    IL_00c3:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_00c8:  stloc.s    V_6
    IL_00ca:  br.s       IL_0126

    IL_00cc:  ldsfld     class Game.Random Game.ComponentMiner::s_random
    IL_00d1:  ldc.i4.0
    IL_00d2:  ldc.i4.5
    IL_00d3:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00d8:  stloc.s    V_11
    IL_00da:  ldloc.s    V_11
    IL_00dc:  brtrue.s   IL_00e7

    IL_00de:  ldstr      "force majeure"
    IL_00e3:  stloc.s    V_6
    IL_00e5:  br.s       IL_0126

    IL_00e7:  ldloc.s    V_11
    IL_00e9:  ldc.i4.1
    IL_00ea:  bne.un.s   IL_00f5

    IL_00ec:  ldstr      "accident"
    IL_00f1:  stloc.s    V_6
    IL_00f3:  br.s       IL_0126

    IL_00f5:  ldloc.s    V_11
    IL_00f7:  ldc.i4.2
    IL_00f8:  bne.un.s   IL_0103

    IL_00fa:  ldstr      "bad luck"
    IL_00ff:  stloc.s    V_6
    IL_0101:  br.s       IL_0126

    IL_0103:  ldloc.s    V_11
    IL_0105:  ldc.i4.3
    IL_0106:  bne.un.s   IL_0111

    IL_0108:  ldstr      "unknown attacker"
    IL_010d:  stloc.s    V_6
    IL_010f:  br.s       IL_0126

    IL_0111:  ldloc.s    V_11
    IL_0113:  ldc.i4.4
    IL_0114:  bne.un.s   IL_011f

    IL_0116:  ldstr      "wrong place wrong time"
    IL_011b:  stloc.s    V_6
    IL_011d:  br.s       IL_0126

    IL_011f:  ldstr      "unlucky"
    IL_0124:  stloc.s    V_6
    IL_0126:  ldloc.3
    IL_0127:  ldloc.s    V_5
    IL_0129:  ldarg.1
    IL_012a:  ldc.i4.0
    IL_012b:  ldloc.s    V_6
    IL_012d:  callvirt   instance void Game.ComponentHealth::Injure(float32,
                                                                    class Game.ComponentCreature,
                                                                    bool,
                                                                    string)
    IL_0132:  ldloc.s    V_5
    IL_0134:  ldc.r4     0.0
    IL_0139:  ble.un.s   IL_0176

    IL_013b:  ldarg.0
    IL_013c:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0141:  ldc.i4.1
    IL_0142:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0147:  ldstr      "Audio/Impacts/Body"
    IL_014c:  ldc.r4     1.
    IL_0151:  ldsfld     class Game.Random Game.ComponentMiner::s_random
    IL_0156:  ldc.r4     -0.30000001
    IL_015b:  ldc.r4     0.30000001
    IL_0160:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0165:  ldarg.0
    IL_0166:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_016b:  ldc.r4     4.
    IL_0170:  ldc.i4.0
    IL_0171:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            bool)
    IL_0176:  ldarg.0
    IL_0177:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_017c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentDamage>()
    IL_0181:  stloc.s    V_4
    IL_0183:  ldloc.s    V_4
    IL_0185:  brfalse.s  IL_01e1

    IL_0187:  ldarg.3
    IL_0188:  ldloc.s    V_4
    IL_018a:  callvirt   instance float32 Game.ComponentDamage::get_AttackResilience()
    IL_018f:  div
    IL_0190:  stloc.s    V_12
    IL_0192:  ldloc.s    V_4
    IL_0194:  ldloc.s    V_12
    IL_0196:  callvirt   instance void Game.ComponentDamage::Damage(float32)
    IL_019b:  ldloc.s    V_12
    IL_019d:  ldc.r4     0.0
    IL_01a2:  ble.un.s   IL_01e1

    IL_01a4:  ldarg.0
    IL_01a5:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_01aa:  ldc.i4.1
    IL_01ab:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_01b0:  ldloc.s    V_4
    IL_01b2:  callvirt   instance string Game.ComponentDamage::get_DamageSoundName()
    IL_01b7:  ldc.r4     1.
    IL_01bc:  ldsfld     class Game.Random Game.ComponentMiner::s_random
    IL_01c1:  ldc.r4     -0.30000001
    IL_01c6:  ldc.r4     0.30000001
    IL_01cb:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01d0:  ldarg.0
    IL_01d1:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_01d6:  ldc.r4     4.
    IL_01db:  ldc.i4.0
    IL_01dc:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            bool)
    IL_01e1:  ldc.r4     0.0
    IL_01e6:  stloc.0
    IL_01e7:  ldarg.s    isMeleeAttack
    IL_01e9:  brfalse.s  IL_0237

    IL_01eb:  ldarg.1
    IL_01ec:  brfalse.s  IL_0237

    IL_01ee:  ldarg.3
    IL_01ef:  ldc.r4     2.
    IL_01f4:  bgt.s      IL_01fd

    IL_01f6:  ldc.r4     1.
    IL_01fb:  br.s       IL_0202

    IL_01fd:  ldc.r4     1.25
    IL_0202:  ldc.r4     6.
    IL_0207:  mul
    IL_0208:  ldarg.1
    IL_0209:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_020e:  callvirt   instance float32 Game.ComponentBody::get_Mass()
    IL_0213:  ldarg.0
    IL_0214:  callvirt   instance float32 Game.ComponentBody::get_Mass()
    IL_0219:  div
    IL_021a:  ldc.r4     0.33000001
    IL_021f:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_0224:  mul
    IL_0225:  ldc.r4     0.0
    IL_022a:  ldc.r4     6.
    IL_022f:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0234:  stloc.0
    IL_0235:  br.s       IL_0245

    IL_0237:  ldarg.3
    IL_0238:  ldc.r4     0.0
    IL_023d:  ble.un.s   IL_0245

    IL_023f:  ldc.r4     2.
    IL_0244:  stloc.0
    IL_0245:  ldarg.0
    IL_0246:  ldloc.0
    IL_0247:  ldarg.2
    IL_0248:  ldsfld     class Game.Random Game.ComponentMiner::s_random
    IL_024d:  ldc.r4     0.5
    IL_0252:  ldc.i4.0
    IL_0253:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Random::Vector3(float32,
                                                                                        bool)
    IL_0258:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_025d:  ldc.r4     0.2
    IL_0262:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0267:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_026c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0271:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0276:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_027b:  callvirt   instance void Game.ComponentBody::ApplyImpulse(valuetype [Engine]Engine.Vector3)
    IL_0280:  ret
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
    // 代码大小       215 (0xd7)
    .maxstack  4
    .locals init (float32 V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemGameInfo Game.ComponentMiner::m_subsystemGameInfo
    IL_0006:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_000b:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
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
    IL_00b6:  brfalse.s  IL_00d6

    IL_00b8:  call       int32 [Engine]Engine.Time::get_FrameIndex()
    IL_00bd:  ldarg.0
    IL_00be:  ldfld      int32 Game.ComponentMiner::m_lastDigFrameIndex
    IL_00c3:  sub
    IL_00c4:  ldc.i4.1
    IL_00c5:  ble.s      IL_00d6

    IL_00c7:  ldarg.0
    IL_00c8:  ldloca.s   V_1
    IL_00ca:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>
    IL_00d0:  ldloc.1
    IL_00d1:  call       instance void Game.ComponentMiner::set_DigCellFace(valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>)
    IL_00d6:  ret
  } // end of method ComponentMiner::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       259 (0x103)
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
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_0043:  stfld      class Game.SubsystemGameInfo Game.ComponentMiner::m_subsystemGameInfo
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_0055:  stfld      class Game.SubsystemTime Game.ComponentMiner::m_subsystemTime
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0067:  stfld      class Game.SubsystemAudio Game.ComponentMiner::m_subsystemAudio
    IL_006c:  ldarg.0
    IL_006d:  ldarg.0
    IL_006e:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0073:  ldc.i4.1
    IL_0074:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemSoundMaterials>(bool)
    IL_0079:  stfld      class Game.SubsystemSoundMaterials Game.ComponentMiner::m_subsystemSoundMaterials
    IL_007e:  ldarg.0
    IL_007f:  ldarg.0
    IL_0080:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0085:  ldc.i4.1
    IL_0086:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBlockBehaviors>(bool)
    IL_008b:  stfld      class Game.SubsystemBlockBehaviors Game.ComponentMiner::m_subsystemBlockBehaviors
    IL_0090:  ldarg.0
    IL_0091:  ldarg.0
    IL_0092:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0097:  ldc.i4.1
    IL_0098:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_009d:  call       instance void Game.ComponentMiner::set_ComponentCreature(class Game.ComponentCreature)
    IL_00a2:  ldarg.0
    IL_00a3:  ldarg.0
    IL_00a4:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_00a9:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPlayer>()
    IL_00ae:  call       instance void Game.ComponentMiner::set_ComponentPlayer(class Game.ComponentPlayer)
    IL_00b3:  ldarg.0
    IL_00b4:  ldfld      class Game.SubsystemGameInfo Game.ComponentMiner::m_subsystemGameInfo
    IL_00b9:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_00be:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_00c3:  brtrue.s   IL_00e0

    IL_00c5:  ldarg.0
    IL_00c6:  call       instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_00cb:  brfalse.s  IL_00e0

    IL_00cd:  ldarg.0
    IL_00ce:  ldarg.0
    IL_00cf:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_00d4:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreativeInventory>()
    IL_00d9:  call       instance void Game.ComponentMiner::set_Inventory(class Game.IInventory)
    IL_00de:  br.s       IL_00f1

    IL_00e0:  ldarg.0
    IL_00e1:  ldarg.0
    IL_00e2:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_00e7:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentInventory>()
    IL_00ec:  call       instance void Game.ComponentMiner::set_Inventory(class Game.IInventory)
    IL_00f1:  ldarg.0
    IL_00f2:  ldarg.1
    IL_00f3:  ldstr      "AttackPower"
    IL_00f8:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00fd:  call       instance void Game.ComponentMiner::set_AttackPower(float32)
    IL_0102:  ret
  } // end of method ComponentMiner::Load

  .method private hidebysig instance float32 
          CalculateDigTime(int32 digValue,
                           int32 toolContents) cil managed
  {
    // 代码大小       372 (0x174)
    .maxstack  2
    .locals init (class Game.Block V_0,
             class Game.Block V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4)
    IL_0000:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0005:  ldarg.2
    IL_0006:  ldelem.ref
    IL_0007:  stloc.0
    IL_0008:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_000d:  ldarg.1
    IL_000e:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0013:  ldelem.ref
    IL_0014:  stloc.1
    IL_0015:  ldloc.1
    IL_0016:  ldfld      float32 Game.Block::DigResilience
    IL_001b:  stloc.2
    IL_001c:  ldarg.0
    IL_001d:  call       instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_0022:  brfalse.s  IL_004a

    IL_0024:  ldarg.0
    IL_0025:  ldfld      class Game.SubsystemGameInfo Game.ComponentMiner::m_subsystemGameInfo
    IL_002a:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_002f:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_0034:  brtrue.s   IL_004a

    IL_0036:  ldloc.2
    IL_0037:  ldc.r4     (00 00 80 7F)
    IL_003c:  bge.un.s   IL_0044

    IL_003e:  ldc.r4     0.0
    IL_0043:  ret

    IL_0044:  ldc.r4     (00 00 80 7F)
    IL_0049:  ret

    IL_004a:  ldarg.0
    IL_004b:  call       instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_0050:  brfalse    IL_00fb

    IL_0055:  ldarg.0
    IL_0056:  ldfld      class Game.SubsystemGameInfo Game.ComponentMiner::m_subsystemGameInfo
    IL_005b:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0060:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_0065:  ldc.i4.4
    IL_0066:  bne.un     IL_00fb

    IL_006b:  ldc.r4     0.0
    IL_0070:  stloc.3
    IL_0071:  ldloc.1
    IL_0072:  ldfld      valuetype Game.BlockDigMethod Game.Block::DigMethod
    IL_0077:  ldc.i4.1
    IL_0078:  bne.un.s   IL_0090

    IL_007a:  ldloc.0
    IL_007b:  ldfld      float32 Game.Block::ShovelPower
    IL_0080:  ldc.r4     2.
    IL_0085:  blt.un.s   IL_0090

    IL_0087:  ldloc.0
    IL_0088:  ldfld      float32 Game.Block::ShovelPower
    IL_008d:  stloc.3
    IL_008e:  br.s       IL_00cc

    IL_0090:  ldloc.1
    IL_0091:  ldfld      valuetype Game.BlockDigMethod Game.Block::DigMethod
    IL_0096:  ldc.i4.2
    IL_0097:  bne.un.s   IL_00af

    IL_0099:  ldloc.0
    IL_009a:  ldfld      float32 Game.Block::QuarryPower
    IL_009f:  ldc.r4     2.
    IL_00a4:  blt.un.s   IL_00af

    IL_00a6:  ldloc.0
    IL_00a7:  ldfld      float32 Game.Block::QuarryPower
    IL_00ac:  stloc.3
    IL_00ad:  br.s       IL_00cc

    IL_00af:  ldloc.1
    IL_00b0:  ldfld      valuetype Game.BlockDigMethod Game.Block::DigMethod
    IL_00b5:  ldc.i4.3
    IL_00b6:  bne.un.s   IL_00cc

    IL_00b8:  ldloc.0
    IL_00b9:  ldfld      float32 Game.Block::HackPower
    IL_00be:  ldc.r4     2.
    IL_00c3:  blt.un.s   IL_00cc

    IL_00c5:  ldloc.0
    IL_00c6:  ldfld      float32 Game.Block::HackPower
    IL_00cb:  stloc.3
    IL_00cc:  ldloc.3
    IL_00cd:  ldarg.0
    IL_00ce:  call       instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_00d3:  callvirt   instance class Game.ComponentLevel Game.ComponentPlayer::get_ComponentLevel()
    IL_00d8:  callvirt   instance float32 Game.ComponentLevel::get_StrengthFactor()
    IL_00dd:  mul
    IL_00de:  stloc.3
    IL_00df:  ldloc.3
    IL_00e0:  ldc.r4     0.0
    IL_00e5:  bgt.s      IL_00ed

    IL_00e7:  ldc.r4     (00 00 80 7F)
    IL_00ec:  ret

    IL_00ed:  ldloc.2
    IL_00ee:  ldloc.3
    IL_00ef:  div
    IL_00f0:  ldc.r4     0.0
    IL_00f5:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_00fa:  ret

    IL_00fb:  ldc.r4     0.0
    IL_0100:  stloc.s    V_4
    IL_0102:  ldloc.1
    IL_0103:  ldfld      valuetype Game.BlockDigMethod Game.Block::DigMethod
    IL_0108:  ldc.i4.1
    IL_0109:  bne.un.s   IL_0115

    IL_010b:  ldloc.0
    IL_010c:  ldfld      float32 Game.Block::ShovelPower
    IL_0111:  stloc.s    V_4
    IL_0113:  br.s       IL_0139

    IL_0115:  ldloc.1
    IL_0116:  ldfld      valuetype Game.BlockDigMethod Game.Block::DigMethod
    IL_011b:  ldc.i4.2
    IL_011c:  bne.un.s   IL_0128

    IL_011e:  ldloc.0
    IL_011f:  ldfld      float32 Game.Block::QuarryPower
    IL_0124:  stloc.s    V_4
    IL_0126:  br.s       IL_0139

    IL_0128:  ldloc.1
    IL_0129:  ldfld      valuetype Game.BlockDigMethod Game.Block::DigMethod
    IL_012e:  ldc.i4.3
    IL_012f:  bne.un.s   IL_0139

    IL_0131:  ldloc.0
    IL_0132:  ldfld      float32 Game.Block::HackPower
    IL_0137:  stloc.s    V_4
    IL_0139:  ldarg.0
    IL_013a:  call       instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_013f:  brfalse.s  IL_0156

    IL_0141:  ldloc.s    V_4
    IL_0143:  ldarg.0
    IL_0144:  call       instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_0149:  callvirt   instance class Game.ComponentLevel Game.ComponentPlayer::get_ComponentLevel()
    IL_014e:  callvirt   instance float32 Game.ComponentLevel::get_StrengthFactor()
    IL_0153:  mul
    IL_0154:  stloc.s    V_4
    IL_0156:  ldloc.s    V_4
    IL_0158:  ldc.r4     0.0
    IL_015d:  bgt.s      IL_0165

    IL_015f:  ldc.r4     (00 00 80 7F)
    IL_0164:  ret

    IL_0165:  ldloc.2
    IL_0166:  ldloc.s    V_4
    IL_0168:  div
    IL_0169:  ldc.r4     0.0
    IL_016e:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0173:  ret
  } // end of method ComponentMiner::CalculateDigTime

  .method private hidebysig instance bool 
          CanUseTool(int32 toolValue) cil managed
  {
    // 代码大小       86 (0x56)
    .maxstack  2
    .locals init (class Game.Block V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemGameInfo Game.ComponentMiner::m_subsystemGameInfo
    IL_0006:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_000b:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_0010:  brfalse.s  IL_0054

    IL_0012:  ldarg.0
    IL_0013:  ldfld      class Game.SubsystemGameInfo Game.ComponentMiner::m_subsystemGameInfo
    IL_0018:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_001d:  ldfld      bool Game.WorldSettings::AreAdventureSurvivalMechanicsEnabled
    IL_0022:  brfalse.s  IL_0054

    IL_0024:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0029:  ldarg.1
    IL_002a:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_002f:  ldelem.ref
    IL_0030:  stloc.0
    IL_0031:  ldarg.0
    IL_0032:  call       instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_0037:  brfalse.s  IL_0054

    IL_0039:  ldarg.0
    IL_003a:  call       instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_003f:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_0044:  callvirt   instance float32 Game.PlayerData::get_Level()
    IL_0049:  ldloc.0
    IL_004a:  ldfld      int32 Game.Block::PlayerLevelRequired
    IL_004f:  conv.r4
    IL_0050:  bge.un.s   IL_0054

    IL_0052:  ldc.i4.0
    IL_0053:  ret

    IL_0054:  ldc.i4.1
    IL_0055:  ret
  } // end of method ComponentMiner::CanUseTool

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
  .property instance class Game.ComponentPlayer
          ComponentPlayer()
  {
    .get instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    .set instance void Game.ComponentMiner::set_ComponentPlayer(class Game.ComponentPlayer)
  } // end of property ComponentMiner::ComponentPlayer
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