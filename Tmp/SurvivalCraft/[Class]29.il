.class public auto ansi beforefieldinit Game.ComponentRunAwayBehavior
       extends Game.ComponentBehavior
       implements Game.IUpdateable,
                  Game.INoiseListener
{
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemNoise m_subsystemNoise
  .field private class Game.ComponentCreature m_componentCreature
  .field private class Game.ComponentPathfinding m_componentPathfinding
  .field private class Game.ComponentHerdBehavior m_componentHerdBehavior
  .field private class Game.Random m_random
  .field private class Game.StateMachine m_stateMachine
  .field private float32 m_importanceLevel
  .field private class Game.ComponentFrame m_attacker
  .field private float32 m_timeToForgetAttacker
  .field private bool m_heardNoise
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> m_lastNoiseSourcePosition
  .method public hidebysig instance void 
          RunAwayFrom(class Game.ComponentBody componentBody) cil managed
  {
    // 代码大小       35 (0x23)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ComponentFrame Game.ComponentRunAwayBehavior::m_attacker
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.Random Game.ComponentRunAwayBehavior::m_random
    IL_000e:  ldc.r4     10.
    IL_0013:  ldc.r4     20.
    IL_0018:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_001d:  stfld      float32 Game.ComponentRunAwayBehavior::m_timeToForgetAttacker
    IL_0022:  ret
  } // end of method ComponentRunAwayBehavior::RunAwayFrom

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentRunAwayBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.StateMachine Game.ComponentRunAwayBehavior::m_stateMachine
    IL_0006:  callvirt   instance void Game.StateMachine::Update()
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.0
    IL_000d:  stfld      bool Game.ComponentRunAwayBehavior::m_heardNoise
    IL_0012:  ret
  } // end of method ComponentRunAwayBehavior::Update

  .method public hidebysig newslot virtual final 
          instance void  HearNoise(class Game.ComponentBody sourceBody,
                                   valuetype [Engine]Engine.Vector3 sourcePosition,
                                   float32 loudness) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.3
    IL_0001:  ldc.r4     1.
    IL_0006:  blt.un.s   IL_001b

    IL_0008:  ldarg.0
    IL_0009:  ldc.i4.1
    IL_000a:  stfld      bool Game.ComponentRunAwayBehavior::m_heardNoise
    IL_000f:  ldarg.0
    IL_0010:  ldarg.2
    IL_0011:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0016:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentRunAwayBehavior::m_lastNoiseSourcePosition
    IL_001b:  ret
  } // end of method ComponentRunAwayBehavior::HearNoise

  .method public hidebysig specialname virtual 
          instance float32  get_ImportanceLevel() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentRunAwayBehavior::m_importanceLevel
    IL_0006:  ret
  } // end of method ComponentRunAwayBehavior::get_ImportanceLevel

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       234 (0xea)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_000d:  stfld      class Game.SubsystemTerrain Game.ComponentRunAwayBehavior::m_subsystemTerrain
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_001f:  stfld      class Game.SubsystemTime Game.ComponentRunAwayBehavior::m_subsystemTime
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemNoise>(bool)
    IL_0031:  stfld      class Game.SubsystemNoise Game.ComponentRunAwayBehavior::m_subsystemNoise
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_0043:  stfld      class Game.ComponentCreature Game.ComponentRunAwayBehavior::m_componentCreature
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPathfinding>(bool)
    IL_0055:  stfld      class Game.ComponentPathfinding Game.ComponentRunAwayBehavior::m_componentPathfinding
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0061:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentHerdBehavior>()
    IL_0066:  stfld      class Game.ComponentHerdBehavior Game.ComponentRunAwayBehavior::m_componentHerdBehavior
    IL_006b:  ldarg.0
    IL_006c:  ldfld      class Game.ComponentCreature Game.ComponentRunAwayBehavior::m_componentCreature
    IL_0071:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0076:  ldarg.0
    IL_0077:  ldftn      instance void Game.ComponentRunAwayBehavior::'<Load>b__20_0'(class Game.ComponentCreature)
    IL_007d:  newobj     instance void class [System.Runtime]System.Action`1<class Game.ComponentCreature>::.ctor(object,
                                                                                                                  native int)
    IL_0082:  callvirt   instance void Game.ComponentHealth::add_Attacked(class [System.Runtime]System.Action`1<class Game.ComponentCreature>)
    IL_0087:  ldarg.0
    IL_0088:  ldfld      class Game.StateMachine Game.ComponentRunAwayBehavior::m_stateMachine
    IL_008d:  ldstr      "Inactive"
    IL_0092:  ldarg.0
    IL_0093:  ldftn      instance void Game.ComponentRunAwayBehavior::'<Load>b__20_1'()
    IL_0099:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_009e:  ldarg.0
    IL_009f:  ldftn      instance void Game.ComponentRunAwayBehavior::'<Load>b__20_2'()
    IL_00a5:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00aa:  ldnull
    IL_00ab:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_00b0:  ldarg.0
    IL_00b1:  ldfld      class Game.StateMachine Game.ComponentRunAwayBehavior::m_stateMachine
    IL_00b6:  ldstr      "RunningAway"
    IL_00bb:  ldarg.0
    IL_00bc:  ldftn      instance void Game.ComponentRunAwayBehavior::'<Load>b__20_3'()
    IL_00c2:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00c7:  ldarg.0
    IL_00c8:  ldftn      instance void Game.ComponentRunAwayBehavior::'<Load>b__20_4'()
    IL_00ce:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00d3:  ldnull
    IL_00d4:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_00d9:  ldarg.0
    IL_00da:  ldfld      class Game.StateMachine Game.ComponentRunAwayBehavior::m_stateMachine
    IL_00df:  ldstr      "Inactive"
    IL_00e4:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_00e9:  ret
  } // end of method ComponentRunAwayBehavior::Load

  .method private hidebysig instance valuetype [Engine]Engine.Vector3 
          FindSafePlace() cil managed
  {
    // 代码大小       273 (0x111)
    .maxstack  6
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_1,
             float32 V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             valuetype [Engine]Engine.Vector3 V_10,
             float32 V_11)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentRunAwayBehavior::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_000b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  ldfld      class Game.ComponentHerdBehavior Game.ComponentRunAwayBehavior::m_componentHerdBehavior
    IL_0017:  brtrue.s   IL_0025

    IL_0019:  ldloca.s   V_4
    IL_001b:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_0021:  ldloc.s    V_4
    IL_0023:  br.s       IL_0030

    IL_0025:  ldarg.0
    IL_0026:  ldfld      class Game.ComponentHerdBehavior Game.ComponentRunAwayBehavior::m_componentHerdBehavior
    IL_002b:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentHerdBehavior::FindHerdCenter()
    IL_0030:  stloc.1
    IL_0031:  ldc.r4     (00 00 80 FF)
    IL_0036:  stloc.2
    IL_0037:  ldloc.0
    IL_0038:  stloc.3
    IL_0039:  ldc.i4.0
    IL_003a:  stloc.s    V_5
    IL_003c:  br         IL_0106

    IL_0041:  ldloc.0
    IL_0042:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0047:  ldarg.0
    IL_0048:  ldfld      class Game.Random Game.ComponentRunAwayBehavior::m_random
    IL_004d:  ldc.r4     -25.
    IL_0052:  ldc.r4     25.
    IL_0057:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_005c:  add
    IL_005d:  conv.i4
    IL_005e:  stloc.s    V_6
    IL_0060:  ldloc.0
    IL_0061:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0066:  ldarg.0
    IL_0067:  ldfld      class Game.Random Game.ComponentRunAwayBehavior::m_random
    IL_006c:  ldc.r4     -25.
    IL_0071:  ldc.r4     25.
    IL_0076:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_007b:  add
    IL_007c:  conv.i4
    IL_007d:  stloc.s    V_7
    IL_007f:  ldc.i4.s   127
    IL_0081:  stloc.s    V_8
    IL_0083:  br.s       IL_00fb

    IL_0085:  ldarg.0
    IL_0086:  ldfld      class Game.SubsystemTerrain Game.ComponentRunAwayBehavior::m_subsystemTerrain
    IL_008b:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0090:  ldloc.s    V_6
    IL_0092:  ldloc.s    V_8
    IL_0094:  ldloc.s    V_7
    IL_0096:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_009b:  stloc.s    V_9
    IL_009d:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00a2:  ldloc.s    V_9
    IL_00a4:  ldelem.ref
    IL_00a5:  ldfld      bool Game.Block::IsCollidable
    IL_00aa:  brtrue.s   IL_00b2

    IL_00ac:  ldloc.s    V_9
    IL_00ae:  ldc.i4.s   18
    IL_00b0:  bne.un.s   IL_00f5

    IL_00b2:  ldloca.s   V_10
    IL_00b4:  ldloc.s    V_6
    IL_00b6:  conv.r4
    IL_00b7:  ldc.r4     0.5
    IL_00bc:  add
    IL_00bd:  ldloc.s    V_8
    IL_00bf:  conv.r4
    IL_00c0:  ldc.r4     1.1
    IL_00c5:  add
    IL_00c6:  ldloc.s    V_7
    IL_00c8:  conv.r4
    IL_00c9:  ldc.r4     0.5
    IL_00ce:  add
    IL_00cf:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00d4:  ldarg.0
    IL_00d5:  ldloc.0
    IL_00d6:  ldloc.s    V_10
    IL_00d8:  ldloc.1
    IL_00d9:  ldarg.0
    IL_00da:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentRunAwayBehavior::m_lastNoiseSourcePosition
    IL_00df:  ldloc.s    V_9
    IL_00e1:  call       instance float32 Game.ComponentRunAwayBehavior::ScoreSafePlace(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                        valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                        int32)
    IL_00e6:  stloc.s    V_11
    IL_00e8:  ldloc.s    V_11
    IL_00ea:  ldloc.2
    IL_00eb:  ble.un.s   IL_0100

    IL_00ed:  ldloc.s    V_11
    IL_00ef:  stloc.2
    IL_00f0:  ldloc.s    V_10
    IL_00f2:  stloc.3
    IL_00f3:  br.s       IL_0100

    IL_00f5:  ldloc.s    V_8
    IL_00f7:  ldc.i4.1
    IL_00f8:  sub
    IL_00f9:  stloc.s    V_8
    IL_00fb:  ldloc.s    V_8
    IL_00fd:  ldc.i4.0
    IL_00fe:  bge.s      IL_0085

    IL_0100:  ldloc.s    V_5
    IL_0102:  ldc.i4.1
    IL_0103:  add
    IL_0104:  stloc.s    V_5
    IL_0106:  ldloc.s    V_5
    IL_0108:  ldc.i4.s   30
    IL_010a:  blt        IL_0041

    IL_010f:  ldloc.3
    IL_0110:  ret
  } // end of method ComponentRunAwayBehavior::FindSafePlace

  .method private hidebysig instance float32 
          ScoreSafePlace(valuetype [Engine]Engine.Vector3 currentPosition,
                         valuetype [Engine]Engine.Vector3 safePosition,
                         valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> herdPosition,
                         valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> noiseSourcePosition,
                         int32 contents) cil managed
  {
    // 代码大小       355 (0x163)
    .maxstack  4
    .locals init (float32 V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             valuetype [Engine]Engine.Vector2 V_2,
             valuetype Game.Segment2 V_3,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_4,
             float32 V_5,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_6,
             float32 V_7,
             valuetype [Engine]Engine.Vector3 V_8,
             valuetype [Engine]Engine.Vector2 V_9,
             float32 V_10,
             float32 V_11,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_12)
    IL_0000:  ldc.r4     0.0
    IL_0005:  stloc.0
    IL_0006:  ldloca.s   V_1
    IL_0008:  ldarg.1
    IL_0009:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_000e:  ldarg.1
    IL_000f:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0014:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0019:  ldloca.s   V_2
    IL_001b:  ldarg.2
    IL_001c:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0021:  ldarg.2
    IL_0022:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0027:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_002c:  ldloca.s   V_3
    IL_002e:  ldloc.1
    IL_002f:  ldloc.2
    IL_0030:  call       instance void Game.Segment2::.ctor(valuetype [Engine]Engine.Vector2,
                                                            valuetype [Engine]Engine.Vector2)
    IL_0035:  ldarg.0
    IL_0036:  ldfld      class Game.ComponentFrame Game.ComponentRunAwayBehavior::m_attacker
    IL_003b:  brfalse.s  IL_0083

    IL_003d:  ldarg.0
    IL_003e:  ldfld      class Game.ComponentFrame Game.ComponentRunAwayBehavior::m_attacker
    IL_0043:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0048:  stloc.s    V_8
    IL_004a:  ldloca.s   V_9
    IL_004c:  ldloc.s    V_8
    IL_004e:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0053:  ldloc.s    V_8
    IL_0055:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_005a:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_005f:  ldloc.s    V_9
    IL_0061:  ldloc.2
    IL_0062:  call       float32 [Engine]Engine.Vector2::Distance(valuetype [Engine]Engine.Vector2,
                                                                  valuetype [Engine]Engine.Vector2)
    IL_0067:  stloc.s    V_10
    IL_0069:  ldloc.3
    IL_006a:  ldloc.s    V_9
    IL_006c:  call       float32 Game.Segment2::Distance(valuetype Game.Segment2,
                                                         valuetype [Engine]Engine.Vector2)
    IL_0071:  stloc.s    V_11
    IL_0073:  ldloc.0
    IL_0074:  ldloc.s    V_10
    IL_0076:  ldc.r4     3.
    IL_007b:  ldloc.s    V_11
    IL_007d:  mul
    IL_007e:  add
    IL_007f:  add
    IL_0080:  stloc.0
    IL_0081:  br.s       IL_0093

    IL_0083:  ldloc.0
    IL_0084:  ldc.r4     2.
    IL_0089:  ldloc.1
    IL_008a:  ldloc.2
    IL_008b:  call       float32 [Engine]Engine.Vector2::Distance(valuetype [Engine]Engine.Vector2,
                                                                  valuetype [Engine]Engine.Vector2)
    IL_0090:  mul
    IL_0091:  add
    IL_0092:  stloc.0
    IL_0093:  ldarga.s   herdPosition
    IL_0095:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_009a:  brtrue.s   IL_00a8

    IL_009c:  ldloca.s   V_12
    IL_009e:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
    IL_00a4:  ldloc.s    V_12
    IL_00a6:  br.s       IL_00ca

    IL_00a8:  ldarga.s   herdPosition
    IL_00aa:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_00af:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00b4:  ldarga.s   herdPosition
    IL_00b6:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_00bb:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00c0:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00c5:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_00ca:  stloc.s    V_4
    IL_00cc:  ldloca.s   V_4
    IL_00ce:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_00d3:  brtrue.s   IL_00dc

    IL_00d5:  ldc.r4     0.0
    IL_00da:  br.s       IL_00e9

    IL_00dc:  ldloc.3
    IL_00dd:  ldloca.s   V_4
    IL_00df:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_00e4:  call       float32 Game.Segment2::Distance(valuetype Game.Segment2,
                                                         valuetype [Engine]Engine.Vector2)
    IL_00e9:  stloc.s    V_5
    IL_00eb:  ldloc.0
    IL_00ec:  ldloc.s    V_5
    IL_00ee:  sub
    IL_00ef:  stloc.0
    IL_00f0:  ldarga.s   noiseSourcePosition
    IL_00f2:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_00f7:  brtrue.s   IL_0105

    IL_00f9:  ldloca.s   V_12
    IL_00fb:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
    IL_0101:  ldloc.s    V_12
    IL_0103:  br.s       IL_0127

    IL_0105:  ldarga.s   noiseSourcePosition
    IL_0107:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_010c:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0111:  ldarga.s   noiseSourcePosition
    IL_0113:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0118:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_011d:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0122:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_0127:  stloc.s    V_6
    IL_0129:  ldloca.s   V_6
    IL_012b:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0130:  brtrue.s   IL_0139

    IL_0132:  ldc.r4     0.0
    IL_0137:  br.s       IL_0146

    IL_0139:  ldloc.3
    IL_013a:  ldloca.s   V_6
    IL_013c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0141:  call       float32 Game.Segment2::Distance(valuetype Game.Segment2,
                                                         valuetype [Engine]Engine.Vector2)
    IL_0146:  stloc.s    V_7
    IL_0148:  ldloc.0
    IL_0149:  ldc.r4     1.5
    IL_014e:  ldloc.s    V_7
    IL_0150:  mul
    IL_0151:  add
    IL_0152:  stloc.0
    IL_0153:  ldarg.s    contents
    IL_0155:  ldc.i4.s   18
    IL_0157:  bne.un.s   IL_0161

    IL_0159:  ldloc.0
    IL_015a:  ldc.r4     4.
    IL_015f:  sub
    IL_0160:  stloc.0
    IL_0161:  ldloc.0
    IL_0162:  ret
  } // end of method ComponentRunAwayBehavior::ScoreSafePlace

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.ComponentRunAwayBehavior::m_random
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.StateMachine::.ctor()
    IL_0011:  stfld      class Game.StateMachine Game.ComponentRunAwayBehavior::m_stateMachine
    IL_0016:  ldarg.0
    IL_0017:  call       instance void Game.ComponentBehavior::.ctor()
    IL_001c:  ret
  } // end of method ComponentRunAwayBehavior::.ctor

  .method private hidebysig instance void 
          '<Load>b__20_0'(class Game.ComponentCreature attacker) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0007:  call       instance void Game.ComponentRunAwayBehavior::RunAwayFrom(class Game.ComponentBody)
    IL_000c:  ret
  } // end of method ComponentRunAwayBehavior::'<Load>b__20_0'

  .method private hidebysig instance void 
          '<Load>b__20_1'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     0.0
    IL_0006:  stfld      float32 Game.ComponentRunAwayBehavior::m_importanceLevel
    IL_000b:  ldarg.0
    IL_000c:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentRunAwayBehavior::m_lastNoiseSourcePosition
    IL_0011:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_0017:  ret
  } // end of method ComponentRunAwayBehavior::'<Load>b__20_1'

  .method private hidebysig instance void 
          '<Load>b__20_2'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       229 (0xe5)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentFrame Game.ComponentRunAwayBehavior::m_attacker
    IL_0006:  brfalse.s  IL_0034

    IL_0008:  ldarg.0
    IL_0009:  ldarg.0
    IL_000a:  ldfld      float32 Game.ComponentRunAwayBehavior::m_timeToForgetAttacker
    IL_000f:  ldarg.0
    IL_0010:  ldfld      class Game.SubsystemTime Game.ComponentRunAwayBehavior::m_subsystemTime
    IL_0015:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_001a:  sub
    IL_001b:  stfld      float32 Game.ComponentRunAwayBehavior::m_timeToForgetAttacker
    IL_0020:  ldarg.0
    IL_0021:  ldfld      float32 Game.ComponentRunAwayBehavior::m_timeToForgetAttacker
    IL_0026:  ldc.r4     0.0
    IL_002b:  bgt.un.s   IL_0034

    IL_002d:  ldarg.0
    IL_002e:  ldnull
    IL_002f:  stfld      class Game.ComponentFrame Game.ComponentRunAwayBehavior::m_attacker
    IL_0034:  ldarg.0
    IL_0035:  ldfld      class Game.ComponentCreature Game.ComponentRunAwayBehavior::m_componentCreature
    IL_003a:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_003f:  callvirt   instance float32 Game.ComponentHealth::get_HealthChange()
    IL_0044:  ldc.r4     0.0
    IL_0049:  blt.s      IL_007a

    IL_004b:  ldarg.0
    IL_004c:  ldfld      class Game.ComponentFrame Game.ComponentRunAwayBehavior::m_attacker
    IL_0051:  brfalse.s  IL_00ae

    IL_0053:  ldarg.0
    IL_0054:  ldfld      class Game.ComponentFrame Game.ComponentRunAwayBehavior::m_attacker
    IL_0059:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_005e:  ldarg.0
    IL_005f:  ldfld      class Game.ComponentCreature Game.ComponentRunAwayBehavior::m_componentCreature
    IL_0064:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0069:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_006e:  call       float32 [Engine]Engine.Vector3::DistanceSquared(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0073:  ldc.r4     36.
    IL_0078:  bge.un.s   IL_00ae

    IL_007a:  ldarg.0
    IL_007b:  ldarg.0
    IL_007c:  ldfld      float32 Game.ComponentRunAwayBehavior::m_importanceLevel
    IL_0081:  ldarg.0
    IL_0082:  ldfld      class Game.ComponentCreature Game.ComponentRunAwayBehavior::m_componentCreature
    IL_0087:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_008c:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_0091:  ldc.r4     0.33000001
    IL_0096:  blt.s      IL_009c

    IL_0098:  ldc.i4.s   100
    IL_009a:  br.s       IL_00a1

    IL_009c:  ldc.i4     0x12c
    IL_00a1:  conv.r4
    IL_00a2:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_00a7:  stfld      float32 Game.ComponentRunAwayBehavior::m_importanceLevel
    IL_00ac:  br.s       IL_00cc

    IL_00ae:  ldarg.0
    IL_00af:  ldfld      bool Game.ComponentRunAwayBehavior::m_heardNoise
    IL_00b4:  brfalse.s  IL_00cc

    IL_00b6:  ldarg.0
    IL_00b7:  ldarg.0
    IL_00b8:  ldfld      float32 Game.ComponentRunAwayBehavior::m_importanceLevel
    IL_00bd:  ldc.r4     5.
    IL_00c2:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_00c7:  stfld      float32 Game.ComponentRunAwayBehavior::m_importanceLevel
    IL_00cc:  ldarg.0
    IL_00cd:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_00d2:  brfalse.s  IL_00e4

    IL_00d4:  ldarg.0
    IL_00d5:  ldfld      class Game.StateMachine Game.ComponentRunAwayBehavior::m_stateMachine
    IL_00da:  ldstr      "RunningAway"
    IL_00df:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_00e4:  ret
  } // end of method ComponentRunAwayBehavior::'<Load>b__20_2'

  .method private hidebysig instance void 
          '<Load>b__20_3'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       87 (0x57)
    .maxstack  8
    .locals init (valuetype [Engine]Engine.Vector3 V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentRunAwayBehavior::FindSafePlace()
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class Game.ComponentPathfinding Game.ComponentRunAwayBehavior::m_componentPathfinding
    IL_000d:  ldloc.0
    IL_000e:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0013:  ldc.r4     1.
    IL_0018:  ldc.r4     1.
    IL_001d:  ldc.i4.0
    IL_001e:  ldc.i4.0
    IL_001f:  ldc.i4.1
    IL_0020:  ldc.i4.0
    IL_0021:  callvirt   instance void Game.ComponentPathfinding::SetDestination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                 float32,
                                                                                 float32,
                                                                                 int32,
                                                                                 bool,
                                                                                 bool,
                                                                                 bool)
    IL_0026:  ldarg.0
    IL_0027:  ldfld      class Game.ComponentCreature Game.ComponentRunAwayBehavior::m_componentCreature
    IL_002c:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_0031:  callvirt   instance void Game.ComponentCreatureSounds::PlayPainSound()
    IL_0036:  ldarg.0
    IL_0037:  ldfld      class Game.SubsystemNoise Game.ComponentRunAwayBehavior::m_subsystemNoise
    IL_003c:  ldarg.0
    IL_003d:  ldfld      class Game.ComponentCreature Game.ComponentRunAwayBehavior::m_componentCreature
    IL_0042:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0047:  ldc.r4     0.25
    IL_004c:  ldc.r4     6.
    IL_0051:  callvirt   instance void Game.SubsystemNoise::MakeNoise(class Game.ComponentBody,
                                                                      float32,
                                                                      float32)
    IL_0056:  ret
  } // end of method ComponentRunAwayBehavior::'<Load>b__20_3'

  .method private hidebysig instance void 
          '<Load>b__20_4'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       163 (0xa3)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_0,
             class Game.ComponentHealth V_1)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0006:  brtrue.s   IL_0019

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.StateMachine Game.ComponentRunAwayBehavior::m_stateMachine
    IL_000e:  ldstr      "Inactive"
    IL_0013:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0018:  ret

    IL_0019:  ldarg.0
    IL_001a:  ldfld      class Game.ComponentPathfinding Game.ComponentRunAwayBehavior::m_componentPathfinding
    IL_001f:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPathfinding::get_Destination()
    IL_0024:  stloc.0
    IL_0025:  ldloca.s   V_0
    IL_0027:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_002c:  brfalse.s  IL_003b

    IL_002e:  ldarg.0
    IL_002f:  ldfld      class Game.ComponentPathfinding Game.ComponentRunAwayBehavior::m_componentPathfinding
    IL_0034:  callvirt   instance bool Game.ComponentPathfinding::get_IsStuck()
    IL_0039:  brfalse.s  IL_0047

    IL_003b:  ldarg.0
    IL_003c:  ldc.r4     0.0
    IL_0041:  stfld      float32 Game.ComponentRunAwayBehavior::m_importanceLevel
    IL_0046:  ret

    IL_0047:  ldarg.0
    IL_0048:  ldfld      class Game.ComponentFrame Game.ComponentRunAwayBehavior::m_attacker
    IL_004d:  brfalse.s  IL_00a2

    IL_004f:  ldarg.0
    IL_0050:  ldfld      class Game.ComponentFrame Game.ComponentRunAwayBehavior::m_attacker
    IL_0055:  callvirt   instance bool [EntitySystem]GameEntitySystem.Component::get_IsAddedToProject()
    IL_005a:  brtrue.s   IL_006f

    IL_005c:  ldarg.0
    IL_005d:  ldc.r4     0.0
    IL_0062:  stfld      float32 Game.ComponentRunAwayBehavior::m_importanceLevel
    IL_0067:  ldarg.0
    IL_0068:  ldnull
    IL_0069:  stfld      class Game.ComponentFrame Game.ComponentRunAwayBehavior::m_attacker
    IL_006e:  ret

    IL_006f:  ldarg.0
    IL_0070:  ldfld      class Game.ComponentFrame Game.ComponentRunAwayBehavior::m_attacker
    IL_0075:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_007a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentHealth>()
    IL_007f:  stloc.1
    IL_0080:  ldloc.1
    IL_0081:  brfalse.s  IL_00a2

    IL_0083:  ldloc.1
    IL_0084:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_0089:  ldc.r4     0.0
    IL_008e:  bne.un.s   IL_00a2

    IL_0090:  ldarg.0
    IL_0091:  ldc.r4     0.0
    IL_0096:  stfld      float32 Game.ComponentRunAwayBehavior::m_importanceLevel
    IL_009b:  ldarg.0
    IL_009c:  ldnull
    IL_009d:  stfld      class Game.ComponentFrame Game.ComponentRunAwayBehavior::m_attacker
    IL_00a2:  ret
  } // end of method ComponentRunAwayBehavior::'<Load>b__20_4'

  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentRunAwayBehavior::get_UpdateOrder()
  } // end of property ComponentRunAwayBehavior::UpdateOrder
  .property instance float32 ImportanceLevel()
  {
    .get instance float32 Game.ComponentRunAwayBehavior::get_ImportanceLevel()
  } // end of property ComponentRunAwayBehavior::ImportanceLevel
} // end of class Game.ComponentRunAwayBehavior