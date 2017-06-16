.class public auto ansi beforefieldinit Game.ComponentPathfinding
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IUpdateable
{
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemPathfinding m_subsystemPathfinding
  .field private class Game.ComponentCreature m_componentCreature
  .field private class Game.ComponentPilot m_componentPilot
  .field private class Game.StateMachine m_stateMachine
  .field private class Game.Random m_random
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> m_lastPathfindingDestination
  .field private valuetype [System.Runtime]System.Nullable`1<float64> m_lastPathfindingTime
  .field private float32 m_pathfindingCongestion
  .field private class Game.PathfindingResult m_pathfindingResult
  .field private float64 m_nextUpdateTime
  .field private int32 m_randomMoveCount
  .field private bool m_destinationChanged
  .field private static literal float32 m_minPathfindingPeriod = float32(8.)
  .field private static literal float32 m_pathfindingCongestionCapacity = float32(500.)
  .field private static literal float32 m_pathfindingCongestionCapacityLimit = float32(1000.)
  .field private static literal float32 m_pathfindingCongestionDecayRate = float32(20.)
  .field public static bool DrawPathfinding
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> '<Destination>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<Range>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<Speed>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private int32 '<MaxPathfindingPositions>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<UseRandomMovements>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<IgnoreHeightDifference>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<RaycastDestination>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<IsStuck>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig instance void 
          SetDestination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> destination,
                         float32 speed,
                         float32 range,
                         int32 maxPathfindingPositions,
                         bool useRandomMovements,
                         bool ignoreHeightDifference,
                         bool raycastDestination) cil managed
  {
    // 代码大小       86 (0x56)
    .maxstack  2
    IL_0000:  call       bool Game.SettingsManager::get_PathfindingEnabled()
    IL_0005:  brtrue.s   IL_000a

    IL_0007:  ldc.i4.0
    IL_0008:  starg.s    maxPathfindingPositions
    IL_000a:  ldarg.0
    IL_000b:  ldarg.1
    IL_000c:  call       instance void Game.ComponentPathfinding::set_Destination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_0011:  ldarg.0
    IL_0012:  ldarg.2
    IL_0013:  call       instance void Game.ComponentPathfinding::set_Speed(float32)
    IL_0018:  ldarg.0
    IL_0019:  ldarg.3
    IL_001a:  call       instance void Game.ComponentPathfinding::set_Range(float32)
    IL_001f:  ldarg.0
    IL_0020:  ldarg.s    maxPathfindingPositions
    IL_0022:  call       instance void Game.ComponentPathfinding::set_MaxPathfindingPositions(int32)
    IL_0027:  ldarg.0
    IL_0028:  ldarg.s    useRandomMovements
    IL_002a:  call       instance void Game.ComponentPathfinding::set_UseRandomMovements(bool)
    IL_002f:  ldarg.0
    IL_0030:  ldarg.s    ignoreHeightDifference
    IL_0032:  call       instance void Game.ComponentPathfinding::set_IgnoreHeightDifference(bool)
    IL_0037:  ldarg.0
    IL_0038:  ldarg.s    raycastDestination
    IL_003a:  call       instance void Game.ComponentPathfinding::set_RaycastDestination(bool)
    IL_003f:  ldarg.0
    IL_0040:  ldc.i4.1
    IL_0041:  stfld      bool Game.ComponentPathfinding::m_destinationChanged
    IL_0046:  ldarg.0
    IL_0047:  ldc.r8     0.0
    IL_0050:  stfld      float64 Game.ComponentPathfinding::m_nextUpdateTime
    IL_0055:  ret
  } // end of method ComponentPathfinding::SetDestination

  .method public hidebysig instance void 
          Stop() cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  8
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldloca.s   V_0
    IL_0003:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_0009:  ldloc.0
    IL_000a:  ldc.r4     0.0
    IL_000f:  ldc.r4     0.0
    IL_0014:  ldc.i4.0
    IL_0015:  ldc.i4.0
    IL_0016:  ldc.i4.0
    IL_0017:  ldc.i4.0
    IL_0018:  call       instance void Game.ComponentPathfinding::SetDestination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                 float32,
                                                                                 float32,
                                                                                 int32,
                                                                                 bool,
                                                                                 bool,
                                                                                 bool)
    IL_001d:  ldarg.0
    IL_001e:  ldfld      class Game.ComponentPilot Game.ComponentPathfinding::m_componentPilot
    IL_0023:  callvirt   instance void Game.ComponentPilot::Stop()
    IL_0028:  ldarg.0
    IL_0029:  ldc.i4.0
    IL_002a:  call       instance void Game.ComponentPathfinding::set_IsStuck(bool)
    IL_002f:  ret
  } // end of method ComponentPathfinding::Stop

  .method public hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> 
          get_Destination() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPathfinding::'<Destination>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPathfinding::get_Destination

  .method private hidebysig specialname instance void 
          set_Destination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPathfinding::'<Destination>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPathfinding::set_Destination

  .method public hidebysig specialname instance float32 
          get_Range() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentPathfinding::'<Range>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPathfinding::get_Range

  .method private hidebysig specialname instance void 
          set_Range(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentPathfinding::'<Range>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPathfinding::set_Range

  .method public hidebysig specialname instance float32 
          get_Speed() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentPathfinding::'<Speed>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPathfinding::get_Speed

  .method private hidebysig specialname instance void 
          set_Speed(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentPathfinding::'<Speed>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPathfinding::set_Speed

  .method public hidebysig specialname instance int32 
          get_MaxPathfindingPositions() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.ComponentPathfinding::'<MaxPathfindingPositions>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPathfinding::get_MaxPathfindingPositions

  .method private hidebysig specialname instance void 
          set_MaxPathfindingPositions(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 Game.ComponentPathfinding::'<MaxPathfindingPositions>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPathfinding::set_MaxPathfindingPositions

  .method public hidebysig specialname instance bool 
          get_UseRandomMovements() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ComponentPathfinding::'<UseRandomMovements>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPathfinding::get_UseRandomMovements

  .method private hidebysig specialname instance void 
          set_UseRandomMovements(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ComponentPathfinding::'<UseRandomMovements>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPathfinding::set_UseRandomMovements

  .method public hidebysig specialname instance bool 
          get_IgnoreHeightDifference() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ComponentPathfinding::'<IgnoreHeightDifference>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPathfinding::get_IgnoreHeightDifference

  .method private hidebysig specialname instance void 
          set_IgnoreHeightDifference(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ComponentPathfinding::'<IgnoreHeightDifference>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPathfinding::set_IgnoreHeightDifference

  .method public hidebysig specialname instance bool 
          get_RaycastDestination() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ComponentPathfinding::'<RaycastDestination>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPathfinding::get_RaycastDestination

  .method private hidebysig specialname instance void 
          set_RaycastDestination(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ComponentPathfinding::'<RaycastDestination>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPathfinding::set_RaycastDestination

  .method public hidebysig specialname instance bool 
          get_IsStuck() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ComponentPathfinding::'<IsStuck>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentPathfinding::get_IsStuck

  .method private hidebysig specialname instance void 
          set_IsStuck(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ComponentPathfinding::'<IsStuck>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentPathfinding::set_IsStuck

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentPathfinding::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       103 (0x67)
    .maxstack  4
    .locals init (float32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTime Game.ComponentPathfinding::m_subsystemTime
    IL_0006:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_000b:  ldarg.0
    IL_000c:  ldfld      float64 Game.ComponentPathfinding::m_nextUpdateTime
    IL_0011:  blt.un.s   IL_0066

    IL_0013:  ldarg.0
    IL_0014:  ldfld      class Game.Random Game.ComponentPathfinding::m_random
    IL_0019:  ldc.r4     7.9999998e-002
    IL_001e:  ldc.r4     0.12
    IL_0023:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0028:  stloc.0
    IL_0029:  ldarg.0
    IL_002a:  ldarg.0
    IL_002b:  ldfld      class Game.SubsystemTime Game.ComponentPathfinding::m_subsystemTime
    IL_0030:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0035:  ldloc.0
    IL_0036:  conv.r8
    IL_0037:  add
    IL_0038:  stfld      float64 Game.ComponentPathfinding::m_nextUpdateTime
    IL_003d:  ldarg.0
    IL_003e:  ldarg.0
    IL_003f:  ldfld      float32 Game.ComponentPathfinding::m_pathfindingCongestion
    IL_0044:  ldc.r4     20.
    IL_0049:  ldloc.0
    IL_004a:  mul
    IL_004b:  sub
    IL_004c:  ldc.r4     0.0
    IL_0051:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0056:  stfld      float32 Game.ComponentPathfinding::m_pathfindingCongestion
    IL_005b:  ldarg.0
    IL_005c:  ldfld      class Game.StateMachine Game.ComponentPathfinding::m_stateMachine
    IL_0061:  callvirt   instance void Game.StateMachine::Update()
    IL_0066:  ret
  } // end of method ComponentPathfinding::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       335 (0x14f)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_000d:  stfld      class Game.SubsystemTime Game.ComponentPathfinding::m_subsystemTime
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPathfinding>(bool)
    IL_001f:  stfld      class Game.SubsystemPathfinding Game.ComponentPathfinding::m_subsystemPathfinding
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_0031:  stfld      class Game.ComponentCreature Game.ComponentPathfinding::m_componentCreature
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPilot>(bool)
    IL_0043:  stfld      class Game.ComponentPilot Game.ComponentPathfinding::m_componentPilot
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.StateMachine Game.ComponentPathfinding::m_stateMachine
    IL_004e:  ldstr      "Stopped"
    IL_0053:  ldarg.0
    IL_0054:  ldftn      instance void Game.ComponentPathfinding::'<Load>b__55_0'()
    IL_005a:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_005f:  ldarg.0
    IL_0060:  ldftn      instance void Game.ComponentPathfinding::'<Load>b__55_1'()
    IL_0066:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_006b:  ldnull
    IL_006c:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_0071:  ldarg.0
    IL_0072:  ldfld      class Game.StateMachine Game.ComponentPathfinding::m_stateMachine
    IL_0077:  ldstr      "MovingDirect"
    IL_007c:  ldarg.0
    IL_007d:  ldftn      instance void Game.ComponentPathfinding::'<Load>b__55_2'()
    IL_0083:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0088:  ldarg.0
    IL_0089:  ldftn      instance void Game.ComponentPathfinding::'<Load>b__55_3'()
    IL_008f:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0094:  ldnull
    IL_0095:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_009a:  ldarg.0
    IL_009b:  ldfld      class Game.StateMachine Game.ComponentPathfinding::m_stateMachine
    IL_00a0:  ldstr      "SearchingForPath"
    IL_00a5:  ldarg.0
    IL_00a6:  ldftn      instance void Game.ComponentPathfinding::'<Load>b__55_4'()
    IL_00ac:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00b1:  ldarg.0
    IL_00b2:  ldftn      instance void Game.ComponentPathfinding::'<Load>b__55_5'()
    IL_00b8:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00bd:  ldnull
    IL_00be:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_00c3:  ldarg.0
    IL_00c4:  ldfld      class Game.StateMachine Game.ComponentPathfinding::m_stateMachine
    IL_00c9:  ldstr      "MovingWithPath"
    IL_00ce:  ldarg.0
    IL_00cf:  ldftn      instance void Game.ComponentPathfinding::'<Load>b__55_6'()
    IL_00d5:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00da:  ldarg.0
    IL_00db:  ldftn      instance void Game.ComponentPathfinding::'<Load>b__55_7'()
    IL_00e1:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00e6:  ldnull
    IL_00e7:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_00ec:  ldarg.0
    IL_00ed:  ldfld      class Game.StateMachine Game.ComponentPathfinding::m_stateMachine
    IL_00f2:  ldstr      "MovingRandomly"
    IL_00f7:  ldarg.0
    IL_00f8:  ldftn      instance void Game.ComponentPathfinding::'<Load>b__55_8'()
    IL_00fe:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0103:  ldarg.0
    IL_0104:  ldftn      instance void Game.ComponentPathfinding::'<Load>b__55_9'()
    IL_010a:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_010f:  ldnull
    IL_0110:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_0115:  ldarg.0
    IL_0116:  ldfld      class Game.StateMachine Game.ComponentPathfinding::m_stateMachine
    IL_011b:  ldstr      "Stuck"
    IL_0120:  ldarg.0
    IL_0121:  ldftn      instance void Game.ComponentPathfinding::'<Load>b__55_10'()
    IL_0127:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_012c:  ldarg.0
    IL_012d:  ldftn      instance void Game.ComponentPathfinding::'<Load>b__55_11'()
    IL_0133:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0138:  ldnull
    IL_0139:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_013e:  ldarg.0
    IL_013f:  ldfld      class Game.StateMachine Game.ComponentPathfinding::m_stateMachine
    IL_0144:  ldstr      "Stopped"
    IL_0149:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_014e:  ret
  } // end of method ComponentPathfinding::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.StateMachine::.ctor()
    IL_0006:  stfld      class Game.StateMachine Game.ComponentPathfinding::m_stateMachine
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.Random::.ctor()
    IL_0011:  stfld      class Game.Random Game.ComponentPathfinding::m_random
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void Game.PathfindingResult::.ctor()
    IL_001c:  stfld      class Game.PathfindingResult Game.ComponentPathfinding::m_pathfindingResult
    IL_0021:  ldarg.0
    IL_0022:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_0027:  ret
  } // end of method ComponentPathfinding::.ctor

  .method private hidebysig instance void 
          '<Load>b__55_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.ComponentPathfinding::Stop()
    IL_0006:  ldarg.0
    IL_0007:  ldc.i4.0
    IL_0008:  stfld      int32 Game.ComponentPathfinding::m_randomMoveCount
    IL_000d:  ret
  } // end of method ComponentPathfinding::'<Load>b__55_0'

  .method private hidebysig instance void 
          '<Load>b__55_1'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       33 (0x21)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPathfinding::get_Destination()
    IL_0006:  stloc.0
    IL_0007:  ldloca.s   V_0
    IL_0009:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_000e:  brfalse.s  IL_0020

    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.StateMachine Game.ComponentPathfinding::m_stateMachine
    IL_0016:  ldstr      "MovingDirect"
    IL_001b:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0020:  ret
  } // end of method ComponentPathfinding::'<Load>b__55_1'

  .method private hidebysig instance void 
          '<Load>b__55_2'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.0
    IL_0002:  call       instance void Game.ComponentPathfinding::set_IsStuck(bool)
    IL_0007:  ldarg.0
    IL_0008:  ldc.i4.1
    IL_0009:  stfld      bool Game.ComponentPathfinding::m_destinationChanged
    IL_000e:  ret
  } // end of method ComponentPathfinding::'<Load>b__55_2'

  .method private hidebysig instance void 
          '<Load>b__55_3'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       248 (0xf8)
    .maxstack  8
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPathfinding::get_Destination()
    IL_0006:  stloc.0
    IL_0007:  ldloca.s   V_0
    IL_0009:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_000e:  brtrue.s   IL_0021

    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.StateMachine Game.ComponentPathfinding::m_stateMachine
    IL_0016:  ldstr      "Stopped"
    IL_001b:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0020:  ret

    IL_0021:  ldarg.0
    IL_0022:  ldfld      bool Game.ComponentPathfinding::m_destinationChanged
    IL_0027:  brfalse.s  IL_006a

    IL_0029:  ldarg.0
    IL_002a:  ldfld      class Game.ComponentPilot Game.ComponentPathfinding::m_componentPilot
    IL_002f:  ldarg.0
    IL_0030:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPathfinding::get_Destination()
    IL_0035:  ldarg.0
    IL_0036:  call       instance float32 Game.ComponentPathfinding::get_Speed()
    IL_003b:  ldarg.0
    IL_003c:  call       instance float32 Game.ComponentPathfinding::get_Range()
    IL_0041:  ldarg.0
    IL_0042:  call       instance bool Game.ComponentPathfinding::get_IgnoreHeightDifference()
    IL_0047:  ldarg.0
    IL_0048:  call       instance bool Game.ComponentPathfinding::get_RaycastDestination()
    IL_004d:  ldarg.0
    IL_004e:  call       instance float32 Game.ComponentPathfinding::get_Speed()
    IL_0053:  ldc.r4     1.
    IL_0058:  clt.un
    IL_005a:  ldc.i4.0
    IL_005b:  ceq
    IL_005d:  callvirt   instance void Game.ComponentPilot::SetDestination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                           float32,
                                                                           float32,
                                                                           bool,
                                                                           bool,
                                                                           bool)
    IL_0062:  ldarg.0
    IL_0063:  ldc.i4.0
    IL_0064:  stfld      bool Game.ComponentPathfinding::m_destinationChanged
    IL_0069:  ret

    IL_006a:  ldarg.0
    IL_006b:  ldfld      class Game.ComponentPilot Game.ComponentPathfinding::m_componentPilot
    IL_0070:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPilot::get_Destination()
    IL_0075:  stloc.0
    IL_0076:  ldloca.s   V_0
    IL_0078:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_007d:  brtrue.s   IL_0090

    IL_007f:  ldarg.0
    IL_0080:  ldfld      class Game.StateMachine Game.ComponentPathfinding::m_stateMachine
    IL_0085:  ldstr      "Stopped"
    IL_008a:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_008f:  ret

    IL_0090:  ldarg.0
    IL_0091:  ldfld      class Game.ComponentPilot Game.ComponentPathfinding::m_componentPilot
    IL_0096:  callvirt   instance bool Game.ComponentPilot::get_IsStuck()
    IL_009b:  brfalse.s  IL_00f7

    IL_009d:  ldarg.0
    IL_009e:  call       instance int32 Game.ComponentPathfinding::get_MaxPathfindingPositions()
    IL_00a3:  ldc.i4.0
    IL_00a4:  ble.s      IL_00ce

    IL_00a6:  ldarg.0
    IL_00a7:  ldfld      class Game.ComponentCreature Game.ComponentPathfinding::m_componentCreature
    IL_00ac:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_00b1:  callvirt   instance float32 Game.ComponentLocomotion::get_WalkSpeed()
    IL_00b6:  ldc.r4     0.0
    IL_00bb:  ble.un.s   IL_00ce

    IL_00bd:  ldarg.0
    IL_00be:  ldfld      class Game.StateMachine Game.ComponentPathfinding::m_stateMachine
    IL_00c3:  ldstr      "SearchingForPath"
    IL_00c8:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_00cd:  ret

    IL_00ce:  ldarg.0
    IL_00cf:  call       instance bool Game.ComponentPathfinding::get_UseRandomMovements()
    IL_00d4:  brfalse.s  IL_00e7

    IL_00d6:  ldarg.0
    IL_00d7:  ldfld      class Game.StateMachine Game.ComponentPathfinding::m_stateMachine
    IL_00dc:  ldstr      "MovingRandomly"
    IL_00e1:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_00e6:  ret

    IL_00e7:  ldarg.0
    IL_00e8:  ldfld      class Game.StateMachine Game.ComponentPathfinding::m_stateMachine
    IL_00ed:  ldstr      "Stuck"
    IL_00f2:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_00f7:  ret
  } // end of method ComponentPathfinding::'<Load>b__55_3'

  .method private hidebysig instance void 
          '<Load>b__55_4'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       27 (0x1b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.PathfindingResult Game.ComponentPathfinding::m_pathfindingResult
    IL_0006:  ldc.i4.0
    IL_0007:  volatile.
    IL_0009:  stfld      bool modreq([System.Runtime]System.Runtime.CompilerServices.IsVolatile) Game.PathfindingResult::IsCompleted
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Game.PathfindingResult Game.ComponentPathfinding::m_pathfindingResult
    IL_0014:  ldc.i4.0
    IL_0015:  stfld      bool Game.PathfindingResult::IsInProgress
    IL_001a:  ret
  } // end of method ComponentPathfinding::'<Load>b__55_4'

  .method private hidebysig instance void 
          '<Load>b__55_5'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       495 (0x1ef)
    .maxstack  7
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_0,
             valuetype [System.Runtime]System.Nullable`1<float64> V_1,
             float64 V_2,
             float64 V_3,
             valuetype [System.Runtime]System.Nullable`1<float64> V_4,
             valuetype [System.Runtime]System.Nullable`1<float64> V_5)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPathfinding::get_Destination()
    IL_0006:  stloc.0
    IL_0007:  ldloca.s   V_0
    IL_0009:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_000e:  brtrue.s   IL_0025

    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.StateMachine Game.ComponentPathfinding::m_stateMachine
    IL_0016:  ldstr      "Stopped"
    IL_001b:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0020:  br         IL_016f

    IL_0025:  ldarg.0
    IL_0026:  ldfld      class Game.PathfindingResult Game.ComponentPathfinding::m_pathfindingResult
    IL_002b:  ldfld      bool Game.PathfindingResult::IsInProgress
    IL_0030:  brtrue     IL_0157

    IL_0035:  ldarg.0
    IL_0036:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentPathfinding::m_lastPathfindingTime
    IL_003b:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_0040:  brfalse.s  IL_009a

    IL_0042:  ldarg.0
    IL_0043:  ldfld      class Game.SubsystemTime Game.ComponentPathfinding::m_subsystemTime
    IL_0048:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_004d:  stloc.3
    IL_004e:  ldarg.0
    IL_004f:  ldfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentPathfinding::m_lastPathfindingTime
    IL_0054:  stloc.s    V_4
    IL_0056:  ldloca.s   V_4
    IL_0058:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_005d:  brtrue.s   IL_006b

    IL_005f:  ldloca.s   V_5
    IL_0061:  initobj    valuetype [System.Runtime]System.Nullable`1<float64>
    IL_0067:  ldloc.s    V_5
    IL_0069:  br.s       IL_0079

    IL_006b:  ldloc.3
    IL_006c:  ldloca.s   V_4
    IL_006e:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::GetValueOrDefault()
    IL_0073:  sub
    IL_0074:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_0079:  stloc.1
    IL_007a:  ldc.r4     8.
    IL_007f:  conv.r8
    IL_0080:  stloc.2
    IL_0081:  ldloca.s   V_1
    IL_0083:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::GetValueOrDefault()
    IL_0088:  ldloc.2
    IL_0089:  bgt.s      IL_008e

    IL_008b:  ldc.i4.0
    IL_008c:  br.s       IL_0095

    IL_008e:  ldloca.s   V_1
    IL_0090:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_0095:  brfalse    IL_0157

    IL_009a:  ldarg.0
    IL_009b:  ldfld      float32 Game.ComponentPathfinding::m_pathfindingCongestion
    IL_00a0:  ldc.r4     500.
    IL_00a5:  bge.un     IL_0157

    IL_00aa:  ldarg.0
    IL_00ab:  ldarg.0
    IL_00ac:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPathfinding::get_Destination()
    IL_00b1:  stloc.0
    IL_00b2:  ldloca.s   V_0
    IL_00b4:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_00b9:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_00be:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPathfinding::m_lastPathfindingDestination
    IL_00c3:  ldarg.0
    IL_00c4:  ldarg.0
    IL_00c5:  ldfld      class Game.SubsystemTime Game.ComponentPathfinding::m_subsystemTime
    IL_00ca:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_00cf:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_00d4:  stfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentPathfinding::m_lastPathfindingTime
    IL_00d9:  ldarg.0
    IL_00da:  ldfld      class Game.SubsystemPathfinding Game.ComponentPathfinding::m_subsystemPathfinding
    IL_00df:  ldarg.0
    IL_00e0:  ldfld      class Game.ComponentCreature Game.ComponentPathfinding::m_componentCreature
    IL_00e5:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00ea:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_00ef:  ldc.r4     0.0
    IL_00f4:  ldc.r4     9.9999998e-003
    IL_00f9:  ldc.r4     0.0
    IL_00fe:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0103:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0108:  ldarg.0
    IL_0109:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPathfinding::get_Destination()
    IL_010e:  stloc.0
    IL_010f:  ldloca.s   V_0
    IL_0111:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0116:  ldc.r4     0.0
    IL_011b:  ldc.r4     9.9999998e-003
    IL_0120:  ldc.r4     0.0
    IL_0125:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_012a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_012f:  ldc.r4     1.
    IL_0134:  ldarg.0
    IL_0135:  ldfld      class Game.ComponentCreature Game.ComponentPathfinding::m_componentCreature
    IL_013a:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_013f:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_0144:  ldarg.0
    IL_0145:  call       instance int32 Game.ComponentPathfinding::get_MaxPathfindingPositions()
    IL_014a:  ldarg.0
    IL_014b:  ldfld      class Game.PathfindingResult Game.ComponentPathfinding::m_pathfindingResult
    IL_0150:  callvirt   instance void Game.SubsystemPathfinding::QueuePathSearch(valuetype [Engine]Engine.Vector3,
                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                  float32,
                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                  int32,
                                                                                  class Game.PathfindingResult)
    IL_0155:  br.s       IL_016f

    IL_0157:  ldarg.0
    IL_0158:  call       instance bool Game.ComponentPathfinding::get_UseRandomMovements()
    IL_015d:  brfalse.s  IL_016f

    IL_015f:  ldarg.0
    IL_0160:  ldfld      class Game.StateMachine Game.ComponentPathfinding::m_stateMachine
    IL_0165:  ldstr      "MovingRandomly"
    IL_016a:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_016f:  ldarg.0
    IL_0170:  ldfld      class Game.PathfindingResult Game.ComponentPathfinding::m_pathfindingResult
    IL_0175:  volatile.
    IL_0177:  ldfld      bool modreq([System.Runtime]System.Runtime.CompilerServices.IsVolatile) Game.PathfindingResult::IsCompleted
    IL_017c:  brfalse.s  IL_01ee

    IL_017e:  ldarg.0
    IL_017f:  ldarg.0
    IL_0180:  ldfld      float32 Game.ComponentPathfinding::m_pathfindingCongestion
    IL_0185:  ldarg.0
    IL_0186:  ldfld      class Game.PathfindingResult Game.ComponentPathfinding::m_pathfindingResult
    IL_018b:  ldfld      int32 Game.PathfindingResult::PositionsChecked
    IL_0190:  conv.r4
    IL_0191:  add
    IL_0192:  ldc.r4     1000.
    IL_0197:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_019c:  stfld      float32 Game.ComponentPathfinding::m_pathfindingCongestion
    IL_01a1:  ldarg.0
    IL_01a2:  ldfld      class Game.PathfindingResult Game.ComponentPathfinding::m_pathfindingResult
    IL_01a7:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3> Game.PathfindingResult::Path
    IL_01ac:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3>::get_Count()
    IL_01b1:  ldc.i4.0
    IL_01b2:  ble.s      IL_01c5

    IL_01b4:  ldarg.0
    IL_01b5:  ldfld      class Game.StateMachine Game.ComponentPathfinding::m_stateMachine
    IL_01ba:  ldstr      "MovingWithPath"
    IL_01bf:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_01c4:  ret

    IL_01c5:  ldarg.0
    IL_01c6:  call       instance bool Game.ComponentPathfinding::get_UseRandomMovements()
    IL_01cb:  brfalse.s  IL_01de

    IL_01cd:  ldarg.0
    IL_01ce:  ldfld      class Game.StateMachine Game.ComponentPathfinding::m_stateMachine
    IL_01d3:  ldstr      "MovingRandomly"
    IL_01d8:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_01dd:  ret

    IL_01de:  ldarg.0
    IL_01df:  ldfld      class Game.StateMachine Game.ComponentPathfinding::m_stateMachine
    IL_01e4:  ldstr      "Stuck"
    IL_01e9:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_01ee:  ret
  } // end of method ComponentPathfinding::'<Load>b__55_5'

  .method private hidebysig instance void 
          '<Load>b__55_6'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  7
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentPilot Game.ComponentPathfinding::m_componentPilot
    IL_0006:  ldloca.s   V_0
    IL_0008:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_000e:  ldloc.0
    IL_000f:  ldc.r4     0.0
    IL_0014:  ldc.r4     0.0
    IL_0019:  ldc.i4.0
    IL_001a:  ldc.i4.0
    IL_001b:  ldc.i4.0
    IL_001c:  callvirt   instance void Game.ComponentPilot::SetDestination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                           float32,
                                                                           float32,
                                                                           bool,
                                                                           bool,
                                                                           bool)
    IL_0021:  ldarg.0
    IL_0022:  ldc.i4.0
    IL_0023:  stfld      int32 Game.ComponentPathfinding::m_randomMoveCount
    IL_0028:  ret
  } // end of method ComponentPathfinding::'<Load>b__55_6'

  .method private hidebysig instance void 
          '<Load>b__55_7'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       368 (0x170)
    .maxstack  8
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             float32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPathfinding::get_Destination()
    IL_0006:  stloc.0
    IL_0007:  ldloca.s   V_0
    IL_0009:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_000e:  brtrue.s   IL_0021

    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.StateMachine Game.ComponentPathfinding::m_stateMachine
    IL_0016:  ldstr      "Stopped"
    IL_001b:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0020:  ret

    IL_0021:  ldarg.0
    IL_0022:  ldfld      class Game.ComponentPilot Game.ComponentPathfinding::m_componentPilot
    IL_0027:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPilot::get_Destination()
    IL_002c:  stloc.0
    IL_002d:  ldloca.s   V_0
    IL_002f:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0034:  brtrue     IL_00e3

    IL_0039:  ldarg.0
    IL_003a:  ldfld      class Game.PathfindingResult Game.ComponentPathfinding::m_pathfindingResult
    IL_003f:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3> Game.PathfindingResult::Path
    IL_0044:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3>::get_Count()
    IL_0049:  ldc.i4.0
    IL_004a:  ble        IL_00d2

    IL_004f:  ldarg.0
    IL_0050:  ldfld      class Game.PathfindingResult Game.ComponentPathfinding::m_pathfindingResult
    IL_0055:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3> Game.PathfindingResult::Path
    IL_005a:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3>::get_Array()
    IL_005f:  ldarg.0
    IL_0060:  ldfld      class Game.PathfindingResult Game.ComponentPathfinding::m_pathfindingResult
    IL_0065:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3> Game.PathfindingResult::Path
    IL_006a:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3>::get_Count()
    IL_006f:  ldc.i4.1
    IL_0070:  sub
    IL_0071:  ldelem     [Engine]Engine.Vector3
    IL_0076:  stloc.1
    IL_0077:  ldarg.0
    IL_0078:  ldfld      class Game.ComponentPilot Game.ComponentPathfinding::m_componentPilot
    IL_007d:  ldloc.1
    IL_007e:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0083:  ldarg.0
    IL_0084:  call       instance float32 Game.ComponentPathfinding::get_Speed()
    IL_0089:  ldc.r4     0.75
    IL_008e:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0093:  ldc.r4     0.75
    IL_0098:  ldc.i4.0
    IL_0099:  ldc.i4.0
    IL_009a:  ldarg.0
    IL_009b:  call       instance float32 Game.ComponentPathfinding::get_Speed()
    IL_00a0:  ldc.r4     1.
    IL_00a5:  clt.un
    IL_00a7:  ldc.i4.0
    IL_00a8:  ceq
    IL_00aa:  callvirt   instance void Game.ComponentPilot::SetDestination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                           float32,
                                                                           float32,
                                                                           bool,
                                                                           bool,
                                                                           bool)
    IL_00af:  ldarg.0
    IL_00b0:  ldfld      class Game.PathfindingResult Game.ComponentPathfinding::m_pathfindingResult
    IL_00b5:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3> Game.PathfindingResult::Path
    IL_00ba:  ldarg.0
    IL_00bb:  ldfld      class Game.PathfindingResult Game.ComponentPathfinding::m_pathfindingResult
    IL_00c0:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3> Game.PathfindingResult::Path
    IL_00c5:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3>::get_Count()
    IL_00ca:  ldc.i4.1
    IL_00cb:  sub
    IL_00cc:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3>::RemoveAt(int32)
    IL_00d1:  ret

    IL_00d2:  ldarg.0
    IL_00d3:  ldfld      class Game.StateMachine Game.ComponentPathfinding::m_stateMachine
    IL_00d8:  ldstr      "MovingDirect"
    IL_00dd:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_00e2:  ret

    IL_00e3:  ldarg.0
    IL_00e4:  ldfld      class Game.ComponentPilot Game.ComponentPathfinding::m_componentPilot
    IL_00e9:  callvirt   instance bool Game.ComponentPilot::get_IsStuck()
    IL_00ee:  brfalse.s  IL_011a

    IL_00f0:  ldarg.0
    IL_00f1:  call       instance bool Game.ComponentPathfinding::get_UseRandomMovements()
    IL_00f6:  brfalse.s  IL_0109

    IL_00f8:  ldarg.0
    IL_00f9:  ldfld      class Game.StateMachine Game.ComponentPathfinding::m_stateMachine
    IL_00fe:  ldstr      "MovingRandomly"
    IL_0103:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0108:  ret

    IL_0109:  ldarg.0
    IL_010a:  ldfld      class Game.StateMachine Game.ComponentPathfinding::m_stateMachine
    IL_010f:  ldstr      "Stuck"
    IL_0114:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0119:  ret

    IL_011a:  ldarg.0
    IL_011b:  ldfld      class Game.ComponentCreature Game.ComponentPathfinding::m_componentCreature
    IL_0120:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0125:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_012a:  ldarg.0
    IL_012b:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPathfinding::get_Destination()
    IL_0130:  stloc.0
    IL_0131:  ldloca.s   V_0
    IL_0133:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0138:  call       float32 [Engine]Engine.Vector3::DistanceSquared(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_013d:  stloc.2
    IL_013e:  ldarg.0
    IL_013f:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPathfinding::m_lastPathfindingDestination
    IL_0144:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0149:  ldarg.0
    IL_014a:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPathfinding::get_Destination()
    IL_014f:  stloc.0
    IL_0150:  ldloca.s   V_0
    IL_0152:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0157:  call       float32 [Engine]Engine.Vector3::DistanceSquared(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_015c:  ldloc.2
    IL_015d:  ble.un.s   IL_016f

    IL_015f:  ldarg.0
    IL_0160:  ldfld      class Game.StateMachine Game.ComponentPathfinding::m_stateMachine
    IL_0165:  ldstr      "MovingDirect"
    IL_016a:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_016f:  ret
  } // end of method ComponentPathfinding::'<Load>b__55_7'

  .method private hidebysig instance void 
          '<Load>b__55_8'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       129 (0x81)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentPilot Game.ComponentPathfinding::m_componentPilot
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.ComponentCreature Game.ComponentPathfinding::m_componentCreature
    IL_000c:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0011:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0016:  ldc.r4     5.
    IL_001b:  ldarg.0
    IL_001c:  ldfld      class Game.Random Game.ComponentPathfinding::m_random
    IL_0021:  ldc.r4     -1.
    IL_0026:  ldc.r4     1.
    IL_002b:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0030:  mul
    IL_0031:  ldc.r4     0.0
    IL_0036:  ldc.r4     5.
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.Random Game.ComponentPathfinding::m_random
    IL_0041:  ldc.r4     -1.
    IL_0046:  ldc.r4     1.
    IL_004b:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0050:  mul
    IL_0051:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0056:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_005b:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0060:  ldc.r4     1.
    IL_0065:  ldc.r4     1.
    IL_006a:  ldc.i4.1
    IL_006b:  ldc.i4.0
    IL_006c:  ldc.i4.0
    IL_006d:  callvirt   instance void Game.ComponentPilot::SetDestination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                           float32,
                                                                           float32,
                                                                           bool,
                                                                           bool,
                                                                           bool)
    IL_0072:  ldarg.0
    IL_0073:  ldarg.0
    IL_0074:  ldfld      int32 Game.ComponentPathfinding::m_randomMoveCount
    IL_0079:  ldc.i4.1
    IL_007a:  add
    IL_007b:  stfld      int32 Game.ComponentPathfinding::m_randomMoveCount
    IL_0080:  ret
  } // end of method ComponentPathfinding::'<Load>b__55_8'

  .method private hidebysig instance void 
          '<Load>b__55_9'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       110 (0x6e)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPathfinding::get_Destination()
    IL_0006:  stloc.0
    IL_0007:  ldloca.s   V_0
    IL_0009:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_000e:  brtrue.s   IL_0021

    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.StateMachine Game.ComponentPathfinding::m_stateMachine
    IL_0016:  ldstr      "Stopped"
    IL_001b:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0020:  ret

    IL_0021:  ldarg.0
    IL_0022:  ldfld      int32 Game.ComponentPathfinding::m_randomMoveCount
    IL_0027:  ldc.i4.3
    IL_0028:  ble.s      IL_003b

    IL_002a:  ldarg.0
    IL_002b:  ldfld      class Game.StateMachine Game.ComponentPathfinding::m_stateMachine
    IL_0030:  ldstr      "Stuck"
    IL_0035:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_003a:  ret

    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.ComponentPilot Game.ComponentPathfinding::m_componentPilot
    IL_0041:  callvirt   instance bool Game.ComponentPilot::get_IsStuck()
    IL_0046:  brtrue.s   IL_005d

    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.ComponentPilot Game.ComponentPathfinding::m_componentPilot
    IL_004e:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPilot::get_Destination()
    IL_0053:  stloc.0
    IL_0054:  ldloca.s   V_0
    IL_0056:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_005b:  brtrue.s   IL_006d

    IL_005d:  ldarg.0
    IL_005e:  ldfld      class Game.StateMachine Game.ComponentPathfinding::m_stateMachine
    IL_0063:  ldstr      "MovingDirect"
    IL_0068:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_006d:  ret
  } // end of method ComponentPathfinding::'<Load>b__55_9'

  .method private hidebysig instance void 
          '<Load>b__55_10'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  call       instance void Game.ComponentPathfinding::set_IsStuck(bool)
    IL_0007:  ret
  } // end of method ComponentPathfinding::'<Load>b__55_10'

  .method private hidebysig instance void 
          '<Load>b__55_11'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       65 (0x41)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPathfinding::get_Destination()
    IL_0006:  stloc.0
    IL_0007:  ldloca.s   V_0
    IL_0009:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_000e:  brtrue.s   IL_0021

    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.StateMachine Game.ComponentPathfinding::m_stateMachine
    IL_0016:  ldstr      "Stopped"
    IL_001b:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0020:  ret

    IL_0021:  ldarg.0
    IL_0022:  ldfld      bool Game.ComponentPathfinding::m_destinationChanged
    IL_0027:  brfalse.s  IL_0040

    IL_0029:  ldarg.0
    IL_002a:  ldc.i4.0
    IL_002b:  stfld      bool Game.ComponentPathfinding::m_destinationChanged
    IL_0030:  ldarg.0
    IL_0031:  ldfld      class Game.StateMachine Game.ComponentPathfinding::m_stateMachine
    IL_0036:  ldstr      "MovingDirect"
    IL_003b:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0040:  ret
  } // end of method ComponentPathfinding::'<Load>b__55_11'

  .property instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
          Destination()
  {
    .get instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPathfinding::get_Destination()
    .set instance void Game.ComponentPathfinding::set_Destination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
  } // end of property ComponentPathfinding::Destination
  .property instance float32 Range()
  {
    .get instance float32 Game.ComponentPathfinding::get_Range()
    .set instance void Game.ComponentPathfinding::set_Range(float32)
  } // end of property ComponentPathfinding::Range
  .property instance float32 Speed()
  {
    .get instance float32 Game.ComponentPathfinding::get_Speed()
    .set instance void Game.ComponentPathfinding::set_Speed(float32)
  } // end of property ComponentPathfinding::Speed
  .property instance int32 MaxPathfindingPositions()
  {
    .get instance int32 Game.ComponentPathfinding::get_MaxPathfindingPositions()
    .set instance void Game.ComponentPathfinding::set_MaxPathfindingPositions(int32)
  } // end of property ComponentPathfinding::MaxPathfindingPositions
  .property instance bool UseRandomMovements()
  {
    .get instance bool Game.ComponentPathfinding::get_UseRandomMovements()
    .set instance void Game.ComponentPathfinding::set_UseRandomMovements(bool)
  } // end of property ComponentPathfinding::UseRandomMovements
  .property instance bool IgnoreHeightDifference()
  {
    .get instance bool Game.ComponentPathfinding::get_IgnoreHeightDifference()
    .set instance void Game.ComponentPathfinding::set_IgnoreHeightDifference(bool)
  } // end of property ComponentPathfinding::IgnoreHeightDifference
  .property instance bool RaycastDestination()
  {
    .get instance bool Game.ComponentPathfinding::get_RaycastDestination()
    .set instance void Game.ComponentPathfinding::set_RaycastDestination(bool)
  } // end of property ComponentPathfinding::RaycastDestination
  .property instance bool IsStuck()
  {
    .get instance bool Game.ComponentPathfinding::get_IsStuck()
    .set instance void Game.ComponentPathfinding::set_IsStuck(bool)
  } // end of property ComponentPathfinding::IsStuck
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentPathfinding::get_UpdateOrder()
  } // end of property ComponentPathfinding::UpdateOrder
} // end of class Game.ComponentPathfinding