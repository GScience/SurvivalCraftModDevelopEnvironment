.class public auto ansi beforefieldinit Game.ComponentFlyAwayBehavior
       extends Game.ComponentBehavior
       implements Game.IUpdateable,
                  Game.INoiseListener
{
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemBodies m_subsystemBodies
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemNoise m_subsystemNoise
  .field private class Game.ComponentCreature m_componentCreature
  .field private class Game.ComponentPathfinding m_componentPathfinding
  .field private class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> m_componentBodies
  .field private class Game.Random m_random
  .field private class Game.StateMachine m_stateMachine
  .field private float32 m_importanceLevel
  .field private float64 m_nextUpdateTime
  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentFlyAwayBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       110 (0x6e)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentFlyAwayBehavior::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_000b:  callvirt   instance float32 Game.ComponentHealth::get_HealthChange()
    IL_0010:  ldc.r4     0.0
    IL_0015:  bge.un.s   IL_0027

    IL_0017:  ldarg.0
    IL_0018:  ldfld      class Game.StateMachine Game.ComponentFlyAwayBehavior::m_stateMachine
    IL_001d:  ldstr      "DangerDetected"
    IL_0022:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0027:  ldarg.0
    IL_0028:  ldfld      class Game.SubsystemTime Game.ComponentFlyAwayBehavior::m_subsystemTime
    IL_002d:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0032:  ldarg.0
    IL_0033:  ldfld      float64 Game.ComponentFlyAwayBehavior::m_nextUpdateTime
    IL_0038:  blt.un.s   IL_006d

    IL_003a:  ldarg.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTime Game.ComponentFlyAwayBehavior::m_subsystemTime
    IL_0041:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0046:  ldarg.0
    IL_0047:  ldfld      class Game.Random Game.ComponentFlyAwayBehavior::m_random
    IL_004c:  ldc.r4     0.5
    IL_0051:  ldc.r4     1.
    IL_0056:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_005b:  conv.r8
    IL_005c:  add
    IL_005d:  stfld      float64 Game.ComponentFlyAwayBehavior::m_nextUpdateTime
    IL_0062:  ldarg.0
    IL_0063:  ldfld      class Game.StateMachine Game.ComponentFlyAwayBehavior::m_stateMachine
    IL_0068:  callvirt   instance void Game.StateMachine::Update()
    IL_006d:  ret
  } // end of method ComponentFlyAwayBehavior::Update

  .method public hidebysig newslot virtual final 
          instance void  HearNoise(class Game.ComponentBody sourceBody,
                                   valuetype [Engine]Engine.Vector3 sourcePosition,
                                   float32 loudness) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  8
    IL_0000:  ldarg.3
    IL_0001:  ldc.r4     0.25
    IL_0006:  blt.un.s   IL_002f

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.StateMachine Game.ComponentFlyAwayBehavior::m_stateMachine
    IL_000e:  callvirt   instance string Game.StateMachine::get_CurrentState()
    IL_0013:  ldstr      "RunningAway"
    IL_0018:  call       bool [System.Runtime]System.String::op_Inequality(string,
                                                                           string)
    IL_001d:  brfalse.s  IL_002f

    IL_001f:  ldarg.0
    IL_0020:  ldfld      class Game.StateMachine Game.ComponentFlyAwayBehavior::m_stateMachine
    IL_0025:  ldstr      "DangerDetected"
    IL_002a:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_002f:  ret
  } // end of method ComponentFlyAwayBehavior::HearNoise

  .method public hidebysig specialname virtual 
          instance float32  get_ImportanceLevel() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentFlyAwayBehavior::m_importanceLevel
    IL_0006:  ret
  } // end of method ComponentFlyAwayBehavior::get_ImportanceLevel

  .method public hidebysig specialname virtual 
          instance void  set_IsActive(bool 'value') cil managed
  {
    // 代码大小       31 (0x1f)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.ComponentBehavior::set_IsActive(bool)
    IL_0007:  ldarg.0
    IL_0008:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_000d:  brfalse.s  IL_001e

    IL_000f:  ldarg.0
    IL_0010:  ldc.r8     0.0
    IL_0019:  stfld      float64 Game.ComponentFlyAwayBehavior::m_nextUpdateTime
    IL_001e:  ret
  } // end of method ComponentFlyAwayBehavior::set_IsActive

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       294 (0x126)
    .maxstack  6
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBodies>(bool)
    IL_000d:  stfld      class Game.SubsystemBodies Game.ComponentFlyAwayBehavior::m_subsystemBodies
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_001f:  stfld      class Game.SubsystemTerrain Game.ComponentFlyAwayBehavior::m_subsystemTerrain
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0031:  stfld      class Game.SubsystemAudio Game.ComponentFlyAwayBehavior::m_subsystemAudio
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_0043:  stfld      class Game.SubsystemTime Game.ComponentFlyAwayBehavior::m_subsystemTime
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemNoise>(bool)
    IL_0055:  stfld      class Game.SubsystemNoise Game.ComponentFlyAwayBehavior::m_subsystemNoise
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_0067:  stfld      class Game.ComponentCreature Game.ComponentFlyAwayBehavior::m_componentCreature
    IL_006c:  ldarg.0
    IL_006d:  ldarg.0
    IL_006e:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0073:  ldc.i4.1
    IL_0074:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPathfinding>(bool)
    IL_0079:  stfld      class Game.ComponentPathfinding Game.ComponentFlyAwayBehavior::m_componentPathfinding
    IL_007e:  ldarg.0
    IL_007f:  ldfld      class Game.ComponentCreature Game.ComponentFlyAwayBehavior::m_componentCreature
    IL_0084:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0089:  ldarg.0
    IL_008a:  ldftn      instance void Game.ComponentFlyAwayBehavior::'<Load>b__20_0'(class Game.ComponentBody)
    IL_0090:  newobj     instance void class [System.Runtime]System.Action`1<class Game.ComponentBody>::.ctor(object,
                                                                                                              native int)
    IL_0095:  callvirt   instance void Game.ComponentBody::add_CollidedWithBody(class [System.Runtime]System.Action`1<class Game.ComponentBody>)
    IL_009a:  ldarg.0
    IL_009b:  ldfld      class Game.StateMachine Game.ComponentFlyAwayBehavior::m_stateMachine
    IL_00a0:  ldstr      "LookingForDanger"
    IL_00a5:  ldnull
    IL_00a6:  ldarg.0
    IL_00a7:  ldftn      instance void Game.ComponentFlyAwayBehavior::'<Load>b__20_1'()
    IL_00ad:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00b2:  ldnull
    IL_00b3:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_00b8:  ldarg.0
    IL_00b9:  ldfld      class Game.StateMachine Game.ComponentFlyAwayBehavior::m_stateMachine
    IL_00be:  ldstr      "DangerDetected"
    IL_00c3:  ldarg.0
    IL_00c4:  ldftn      instance void Game.ComponentFlyAwayBehavior::'<Load>b__20_2'()
    IL_00ca:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00cf:  ldarg.0
    IL_00d0:  ldftn      instance void Game.ComponentFlyAwayBehavior::'<Load>b__20_3'()
    IL_00d6:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00db:  ldnull
    IL_00dc:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_00e1:  ldarg.0
    IL_00e2:  ldfld      class Game.StateMachine Game.ComponentFlyAwayBehavior::m_stateMachine
    IL_00e7:  ldstr      "RunningAway"
    IL_00ec:  ldarg.0
    IL_00ed:  ldftn      instance void Game.ComponentFlyAwayBehavior::'<Load>b__20_4'()
    IL_00f3:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00f8:  ldarg.0
    IL_00f9:  ldftn      instance void Game.ComponentFlyAwayBehavior::'<Load>b__20_5'()
    IL_00ff:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0104:  ldarg.0
    IL_0105:  ldftn      instance void Game.ComponentFlyAwayBehavior::'<Load>b__20_6'()
    IL_010b:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0110:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_0115:  ldarg.0
    IL_0116:  ldfld      class Game.StateMachine Game.ComponentFlyAwayBehavior::m_stateMachine
    IL_011b:  ldstr      "LookingForDanger"
    IL_0120:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0125:  ret
  } // end of method ComponentFlyAwayBehavior::Load

  .method private hidebysig instance bool 
          ScanForDanger() cil managed
  {
    // 代码大小       58 (0x3a)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Matrix V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             valuetype [Engine]Engine.Vector3 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentFlyAwayBehavior::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_000b:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_0010:  stloc.0
    IL_0011:  ldloca.s   V_0
    IL_0013:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_0018:  stloc.1
    IL_0019:  ldloca.s   V_0
    IL_001b:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_0020:  stloc.2
    IL_0021:  ldarg.0
    IL_0022:  ldloc.1
    IL_0023:  ldloc.1
    IL_0024:  ldloc.2
    IL_0025:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_002a:  call       instance float32 Game.ComponentFlyAwayBehavior::ScoreSafePlace(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_002f:  ldc.r4     7.
    IL_0034:  bge.un.s   IL_0038

    IL_0036:  ldc.i4.1
    IL_0037:  ret

    IL_0038:  ldc.i4.0
    IL_0039:  ret
  } // end of method ComponentFlyAwayBehavior::ScanForDanger

  .method private hidebysig instance valuetype [Engine]Engine.Vector3 
          FindSafePlace() cil managed
  {
    // 代码大小       238 (0xee)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             float32 V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             valuetype [Engine]Engine.Vector3 V_8,
             float32 V_9,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_10)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentFlyAwayBehavior::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_000b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0010:  stloc.0
    IL_0011:  ldc.r4     (00 00 80 FF)
    IL_0016:  stloc.1
    IL_0017:  ldloc.0
    IL_0018:  stloc.2
    IL_0019:  ldc.i4.0
    IL_001a:  stloc.3
    IL_001b:  br         IL_00e4

    IL_0020:  ldloc.0
    IL_0021:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0026:  ldarg.0
    IL_0027:  ldfld      class Game.Random Game.ComponentFlyAwayBehavior::m_random
    IL_002c:  ldc.r4     -20.
    IL_0031:  ldc.r4     20.
    IL_0036:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_003b:  add
    IL_003c:  conv.i4
    IL_003d:  stloc.s    V_4
    IL_003f:  ldloc.0
    IL_0040:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0045:  ldarg.0
    IL_0046:  ldfld      class Game.Random Game.ComponentFlyAwayBehavior::m_random
    IL_004b:  ldc.r4     -20.
    IL_0050:  ldc.r4     20.
    IL_0055:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_005a:  add
    IL_005b:  conv.i4
    IL_005c:  stloc.s    V_5
    IL_005e:  ldc.i4.s   127
    IL_0060:  stloc.s    V_6
    IL_0062:  br.s       IL_00db

    IL_0064:  ldarg.0
    IL_0065:  ldfld      class Game.SubsystemTerrain Game.ComponentFlyAwayBehavior::m_subsystemTerrain
    IL_006a:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_006f:  ldloc.s    V_4
    IL_0071:  ldloc.s    V_6
    IL_0073:  ldloc.s    V_5
    IL_0075:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_007a:  stloc.s    V_7
    IL_007c:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0081:  ldloc.s    V_7
    IL_0083:  ldelem.ref
    IL_0084:  ldfld      bool Game.Block::IsCollidable
    IL_0089:  brtrue.s   IL_0091

    IL_008b:  ldloc.s    V_7
    IL_008d:  ldc.i4.s   18
    IL_008f:  bne.un.s   IL_00d5

    IL_0091:  ldloca.s   V_8
    IL_0093:  ldloc.s    V_4
    IL_0095:  conv.r4
    IL_0096:  ldc.r4     0.5
    IL_009b:  add
    IL_009c:  ldloc.s    V_6
    IL_009e:  conv.r4
    IL_009f:  ldc.r4     1.1
    IL_00a4:  add
    IL_00a5:  ldloc.s    V_5
    IL_00a7:  conv.r4
    IL_00a8:  ldc.r4     0.5
    IL_00ad:  add
    IL_00ae:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00b3:  ldarg.0
    IL_00b4:  ldloc.0
    IL_00b5:  ldloc.s    V_8
    IL_00b7:  ldloca.s   V_10
    IL_00b9:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_00bf:  ldloc.s    V_10
    IL_00c1:  call       instance float32 Game.ComponentFlyAwayBehavior::ScoreSafePlace(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_00c6:  stloc.s    V_9
    IL_00c8:  ldloc.s    V_9
    IL_00ca:  ldloc.1
    IL_00cb:  ble.un.s   IL_00e0

    IL_00cd:  ldloc.s    V_9
    IL_00cf:  stloc.1
    IL_00d0:  ldloc.s    V_8
    IL_00d2:  stloc.2
    IL_00d3:  br.s       IL_00e0

    IL_00d5:  ldloc.s    V_6
    IL_00d7:  ldc.i4.1
    IL_00d8:  sub
    IL_00d9:  stloc.s    V_6
    IL_00db:  ldloc.s    V_6
    IL_00dd:  ldc.i4.0
    IL_00de:  bge.s      IL_0064

    IL_00e0:  ldloc.3
    IL_00e1:  ldc.i4.1
    IL_00e2:  add
    IL_00e3:  stloc.3
    IL_00e4:  ldloc.3
    IL_00e5:  ldc.i4.s   20
    IL_00e7:  blt        IL_0020

    IL_00ec:  ldloc.2
    IL_00ed:  ret
  } // end of method ComponentFlyAwayBehavior::FindSafePlace

  .method private hidebysig instance float32 
          ScoreSafePlace(valuetype [Engine]Engine.Vector3 currentPosition,
                         valuetype [Engine]Engine.Vector3 safePosition,
                         valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> lookDirection) cil managed
  {
    // 代码大小       278 (0x116)
    .maxstack  5
    .locals init (float32 V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             float32 V_2,
             int32 V_3,
             class Game.ComponentBody V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             valuetype [Engine]Engine.Vector3 V_6)
    IL_0000:  ldc.r4     16.
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.ComponentCreature Game.ComponentFlyAwayBehavior::m_componentCreature
    IL_000c:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0011:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0016:  stloc.1
    IL_0017:  ldarg.0
    IL_0018:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentFlyAwayBehavior::m_componentBodies
    IL_001d:  callvirt   instance void class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::Clear()
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class Game.SubsystemBodies Game.ComponentFlyAwayBehavior::m_subsystemBodies
    IL_0028:  ldloc.1
    IL_0029:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_002e:  ldloc.1
    IL_002f:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0034:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0039:  ldc.r4     16.
    IL_003e:  ldarg.0
    IL_003f:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentFlyAwayBehavior::m_componentBodies
    IL_0044:  callvirt   instance void Game.SubsystemBodies::FindBodiesAroundPoint(valuetype [Engine]Engine.Vector2,
                                                                                   float32,
                                                                                   class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>)
    IL_0049:  ldc.i4.0
    IL_004a:  stloc.3
    IL_004b:  br.s       IL_00cb

    IL_004d:  ldarg.0
    IL_004e:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentFlyAwayBehavior::m_componentBodies
    IL_0053:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::get_Array()
    IL_0058:  ldloc.3
    IL_0059:  ldelem.ref
    IL_005a:  stloc.s    V_4
    IL_005c:  ldarg.0
    IL_005d:  ldloc.s    V_4
    IL_005f:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0064:  call       instance bool Game.ComponentFlyAwayBehavior::IsPredator(class [EntitySystem]GameEntitySystem.Entity)
    IL_0069:  brfalse.s  IL_00c7

    IL_006b:  ldloc.s    V_4
    IL_006d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0072:  stloc.s    V_5
    IL_0074:  ldarg.2
    IL_0075:  ldloc.s    V_5
    IL_0077:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_007c:  stloc.s    V_6
    IL_007e:  ldarga.s   lookDirection
    IL_0080:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0085:  brfalse.s  IL_009d

    IL_0087:  ldarga.s   lookDirection
    IL_0089:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_008e:  ldloc.s    V_6
    IL_0090:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                             valuetype [Engine]Engine.Vector3)
    IL_0095:  neg
    IL_0096:  ldc.r4     0.0
    IL_009b:  ble.un.s   IL_00c7

    IL_009d:  ldloc.s    V_6
    IL_009f:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00a4:  ldc.r4     4.
    IL_00a9:  blt.un.s   IL_00b9

    IL_00ab:  ldloc.s    V_6
    IL_00ad:  ldc.r4     2.
    IL_00b2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_00b7:  stloc.s    V_6
    IL_00b9:  ldloc.0
    IL_00ba:  ldloca.s   V_6
    IL_00bc:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_00c1:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_00c6:  stloc.0
    IL_00c7:  ldloc.3
    IL_00c8:  ldc.i4.1
    IL_00c9:  add
    IL_00ca:  stloc.3
    IL_00cb:  ldloc.3
    IL_00cc:  ldarg.0
    IL_00cd:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentFlyAwayBehavior::m_componentBodies
    IL_00d2:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::get_Count()
    IL_00d7:  blt        IL_004d

    IL_00dc:  ldarg.1
    IL_00dd:  ldarg.2
    IL_00de:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_00e3:  stloc.2
    IL_00e4:  ldloc.2
    IL_00e5:  ldc.r4     8.
    IL_00ea:  bge.un.s   IL_00f6

    IL_00ec:  ldloc.0
    IL_00ed:  ldc.r4     0.5
    IL_00f2:  mul
    IL_00f3:  stloc.0
    IL_00f4:  br.s       IL_0114

    IL_00f6:  ldloc.0
    IL_00f7:  ldc.r4     1.
    IL_00fc:  ldc.r4     0.75
    IL_0101:  ldloc.2
    IL_0102:  ldc.r4     20.
    IL_0107:  div
    IL_0108:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_010d:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0112:  mul
    IL_0113:  stloc.0
    IL_0114:  ldloc.0
    IL_0115:  ret
  } // end of method ComponentFlyAwayBehavior::ScoreSafePlace

  .method private hidebysig instance bool 
          IsPredator(class [EntitySystem]GameEntitySystem.Entity entity) cil managed
  {
    // 代码大小       50 (0x32)
    .maxstack  2
    .locals init (class Game.ComponentCreature V_0)
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0007:  beq.s      IL_0030

    IL_0009:  ldarg.1
    IL_000a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>()
    IL_000f:  stloc.0
    IL_0010:  ldloc.0
    IL_0011:  brfalse.s  IL_0030

    IL_0013:  ldloc.0
    IL_0014:  callvirt   instance valuetype Game.CreatureCategory Game.ComponentCreature::get_Category()
    IL_0019:  ldc.i4.1
    IL_001a:  beq.s      IL_002e

    IL_001c:  ldloc.0
    IL_001d:  callvirt   instance valuetype Game.CreatureCategory Game.ComponentCreature::get_Category()
    IL_0022:  ldc.i4.4
    IL_0023:  beq.s      IL_002e

    IL_0025:  ldloc.0
    IL_0026:  callvirt   instance valuetype Game.CreatureCategory Game.ComponentCreature::get_Category()
    IL_002b:  ldc.i4.2
    IL_002c:  bne.un.s   IL_0030

    IL_002e:  ldc.i4.1
    IL_002f:  ret

    IL_0030:  ldc.i4.0
    IL_0031:  ret
  } // end of method ComponentFlyAwayBehavior::IsPredator

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::.ctor()
    IL_0006:  stfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentFlyAwayBehavior::m_componentBodies
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.Random::.ctor()
    IL_0011:  stfld      class Game.Random Game.ComponentFlyAwayBehavior::m_random
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void Game.StateMachine::.ctor()
    IL_001c:  stfld      class Game.StateMachine Game.ComponentFlyAwayBehavior::m_stateMachine
    IL_0021:  ldarg.0
    IL_0022:  call       instance void Game.ComponentBehavior::.ctor()
    IL_0027:  ret
  } // end of method ComponentFlyAwayBehavior::.ctor

  .method private hidebysig instance void 
          '<Load>b__20_0'(class Game.ComponentBody componentBody) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       40 (0x28)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.StateMachine Game.ComponentFlyAwayBehavior::m_stateMachine
    IL_0006:  callvirt   instance string Game.StateMachine::get_CurrentState()
    IL_000b:  ldstr      "RunningAway"
    IL_0010:  call       bool [System.Runtime]System.String::op_Inequality(string,
                                                                           string)
    IL_0015:  brfalse.s  IL_0027

    IL_0017:  ldarg.0
    IL_0018:  ldfld      class Game.StateMachine Game.ComponentFlyAwayBehavior::m_stateMachine
    IL_001d:  ldstr      "DangerDetected"
    IL_0022:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0027:  ret
  } // end of method ComponentFlyAwayBehavior::'<Load>b__20_0'

  .method private hidebysig instance void 
          '<Load>b__20_1'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance bool Game.ComponentFlyAwayBehavior::ScanForDanger()
    IL_0006:  brfalse.s  IL_0018

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.StateMachine Game.ComponentFlyAwayBehavior::m_stateMachine
    IL_000e:  ldstr      "DangerDetected"
    IL_0013:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0018:  ret
  } // end of method ComponentFlyAwayBehavior::'<Load>b__20_1'

  .method private hidebysig instance void 
          '<Load>b__20_2'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       55 (0x37)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.ComponentCreature Game.ComponentFlyAwayBehavior::m_componentCreature
    IL_0007:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_000c:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_0011:  ldc.r4     0.33000001
    IL_0016:  blt.s      IL_001c

    IL_0018:  ldc.i4.s   100
    IL_001a:  br.s       IL_0021

    IL_001c:  ldc.i4     0x12c
    IL_0021:  conv.r4
    IL_0022:  stfld      float32 Game.ComponentFlyAwayBehavior::m_importanceLevel
    IL_0027:  ldarg.0
    IL_0028:  ldc.r8     0.0
    IL_0031:  stfld      float64 Game.ComponentFlyAwayBehavior::m_nextUpdateTime
    IL_0036:  ret
  } // end of method ComponentFlyAwayBehavior::'<Load>b__20_2'

  .method private hidebysig instance void 
          '<Load>b__20_3'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       40 (0x28)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0006:  brfalse.s  IL_0027

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.StateMachine Game.ComponentFlyAwayBehavior::m_stateMachine
    IL_000e:  ldstr      "RunningAway"
    IL_0013:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0018:  ldarg.0
    IL_0019:  ldc.r8     0.0
    IL_0022:  stfld      float64 Game.ComponentFlyAwayBehavior::m_nextUpdateTime
    IL_0027:  ret
  } // end of method ComponentFlyAwayBehavior::'<Load>b__20_3'

  .method private hidebysig instance void 
          '<Load>b__20_4'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       149 (0x95)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentPathfinding Game.ComponentFlyAwayBehavior::m_componentPathfinding
    IL_0006:  ldarg.0
    IL_0007:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentFlyAwayBehavior::FindSafePlace()
    IL_000c:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0011:  ldc.r4     1.
    IL_0016:  ldc.r4     1.
    IL_001b:  ldc.i4.0
    IL_001c:  ldc.i4.0
    IL_001d:  ldc.i4.1
    IL_001e:  ldc.i4.0
    IL_001f:  callvirt   instance void Game.ComponentPathfinding::SetDestination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                 float32,
                                                                                 float32,
                                                                                 int32,
                                                                                 bool,
                                                                                 bool,
                                                                                 bool)
    IL_0024:  ldarg.0
    IL_0025:  ldfld      class Game.SubsystemAudio Game.ComponentFlyAwayBehavior::m_subsystemAudio
    IL_002a:  ldstr      "Audio/Creatures/Wings"
    IL_002f:  ldc.r4     0.80000001
    IL_0034:  ldarg.0
    IL_0035:  ldfld      class Game.Random Game.ComponentFlyAwayBehavior::m_random
    IL_003a:  ldc.r4     -0.1
    IL_003f:  ldc.r4     0.2
    IL_0044:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0049:  ldarg.0
    IL_004a:  ldfld      class Game.ComponentCreature Game.ComponentFlyAwayBehavior::m_componentCreature
    IL_004f:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0054:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0059:  ldc.r4     3.
    IL_005e:  ldc.i4.1
    IL_005f:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            bool)
    IL_0064:  ldarg.0
    IL_0065:  ldfld      class Game.ComponentCreature Game.ComponentFlyAwayBehavior::m_componentCreature
    IL_006a:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_006f:  callvirt   instance void Game.ComponentCreatureSounds::PlayPainSound()
    IL_0074:  ldarg.0
    IL_0075:  ldfld      class Game.SubsystemNoise Game.ComponentFlyAwayBehavior::m_subsystemNoise
    IL_007a:  ldarg.0
    IL_007b:  ldfld      class Game.ComponentCreature Game.ComponentFlyAwayBehavior::m_componentCreature
    IL_0080:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0085:  ldc.r4     0.25
    IL_008a:  ldc.r4     6.
    IL_008f:  callvirt   instance void Game.SubsystemNoise::MakeNoise(class Game.ComponentBody,
                                                                      float32,
                                                                      float32)
    IL_0094:  ret
  } // end of method ComponentFlyAwayBehavior::'<Load>b__20_4'

  .method private hidebysig instance void 
          '<Load>b__20_5'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       153 (0x99)
    .maxstack  8
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_0)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0006:  brfalse.s  IL_002a

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.ComponentPathfinding Game.ComponentFlyAwayBehavior::m_componentPathfinding
    IL_000e:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPathfinding::get_Destination()
    IL_0013:  stloc.0
    IL_0014:  ldloca.s   V_0
    IL_0016:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_001b:  brfalse.s  IL_002a

    IL_001d:  ldarg.0
    IL_001e:  ldfld      class Game.ComponentPathfinding Game.ComponentFlyAwayBehavior::m_componentPathfinding
    IL_0023:  callvirt   instance bool Game.ComponentPathfinding::get_IsStuck()
    IL_0028:  brfalse.s  IL_003b

    IL_002a:  ldarg.0
    IL_002b:  ldfld      class Game.StateMachine Game.ComponentFlyAwayBehavior::m_stateMachine
    IL_0030:  ldstr      "LookingForDanger"
    IL_0035:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_003a:  ret

    IL_003b:  ldarg.0
    IL_003c:  ldarg.0
    IL_003d:  ldfld      class Game.ComponentCreature Game.ComponentFlyAwayBehavior::m_componentCreature
    IL_0042:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0047:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_004c:  ldarg.0
    IL_004d:  ldfld      class Game.ComponentPathfinding Game.ComponentFlyAwayBehavior::m_componentPathfinding
    IL_0052:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPathfinding::get_Destination()
    IL_0057:  stloc.0
    IL_0058:  ldloca.s   V_0
    IL_005a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_005f:  ldloca.s   V_0
    IL_0061:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_0067:  ldloc.0
    IL_0068:  call       instance float32 Game.ComponentFlyAwayBehavior::ScoreSafePlace(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_006d:  ldc.r4     4.
    IL_0072:  bge.un.s   IL_0098

    IL_0074:  ldarg.0
    IL_0075:  ldfld      class Game.ComponentPathfinding Game.ComponentFlyAwayBehavior::m_componentPathfinding
    IL_007a:  ldarg.0
    IL_007b:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentFlyAwayBehavior::FindSafePlace()
    IL_0080:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0085:  ldc.r4     1.
    IL_008a:  ldc.r4     0.5
    IL_008f:  ldc.i4.0
    IL_0090:  ldc.i4.0
    IL_0091:  ldc.i4.1
    IL_0092:  ldc.i4.0
    IL_0093:  callvirt   instance void Game.ComponentPathfinding::SetDestination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                 float32,
                                                                                 float32,
                                                                                 int32,
                                                                                 bool,
                                                                                 bool,
                                                                                 bool)
    IL_0098:  ret
  } // end of method ComponentFlyAwayBehavior::'<Load>b__20_5'

  .method private hidebysig instance void 
          '<Load>b__20_6'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     0.0
    IL_0006:  stfld      float32 Game.ComponentFlyAwayBehavior::m_importanceLevel
    IL_000b:  ret
  } // end of method ComponentFlyAwayBehavior::'<Load>b__20_6'

  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentFlyAwayBehavior::get_UpdateOrder()
  } // end of property ComponentFlyAwayBehavior::UpdateOrder
  .property instance float32 ImportanceLevel()
  {
    .get instance float32 Game.ComponentFlyAwayBehavior::get_ImportanceLevel()
  } // end of property ComponentFlyAwayBehavior::ImportanceLevel
  .property instance bool IsActive()
  {
    .set instance void Game.ComponentFlyAwayBehavior::set_IsActive(bool)
  } // end of property ComponentFlyAwayBehavior::IsActive
} // end of class Game.ComponentFlyAwayBehavior