.class public auto ansi beforefieldinit Game.ComponentFindPlayerBehavior
       extends Game.ComponentBehavior
       implements Game.IUpdateable
{
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemSky m_subsystemSky
  .field private class Game.SubsystemBodies m_subsystemBodies
  .field private class Game.ComponentCreature m_componentCreature
  .field private class Game.ComponentPathfinding m_componentPathfinding
  .field private class Game.StateMachine m_stateMachine
  .field private class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> m_componentBodies
  .field private class Game.Random m_random
  .field private float32 m_importanceLevel
  .field private float32 m_dayRange
  .field private float32 m_nightRange
  .field private float32 m_minRange
  .field private float32 m_dt
  .field private class Game.ComponentCreature m_target
  .field private float64 m_nextUpdateTime
  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentFindPlayerBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       113 (0x71)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTime Game.ComponentFindPlayerBehavior::m_subsystemTime
    IL_0006:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_000b:  ldarg.0
    IL_000c:  ldfld      float64 Game.ComponentFindPlayerBehavior::m_nextUpdateTime
    IL_0011:  blt.un.s   IL_0070

    IL_0013:  ldarg.0
    IL_0014:  ldarg.0
    IL_0015:  ldfld      class Game.Random Game.ComponentFindPlayerBehavior::m_random
    IL_001a:  ldc.r4     1.25
    IL_001f:  ldc.r4     1.75
    IL_0024:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0029:  ldarg.0
    IL_002a:  ldfld      class Game.SubsystemTime Game.ComponentFindPlayerBehavior::m_subsystemTime
    IL_002f:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0034:  ldarg.0
    IL_0035:  ldfld      float64 Game.ComponentFindPlayerBehavior::m_nextUpdateTime
    IL_003a:  sub
    IL_003b:  conv.r4
    IL_003c:  ldc.r4     0.1
    IL_0041:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0046:  add
    IL_0047:  stfld      float32 Game.ComponentFindPlayerBehavior::m_dt
    IL_004c:  ldarg.0
    IL_004d:  ldarg.0
    IL_004e:  ldfld      class Game.SubsystemTime Game.ComponentFindPlayerBehavior::m_subsystemTime
    IL_0053:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0058:  ldarg.0
    IL_0059:  ldfld      float32 Game.ComponentFindPlayerBehavior::m_dt
    IL_005e:  conv.r8
    IL_005f:  add
    IL_0060:  stfld      float64 Game.ComponentFindPlayerBehavior::m_nextUpdateTime
    IL_0065:  ldarg.0
    IL_0066:  ldfld      class Game.StateMachine Game.ComponentFindPlayerBehavior::m_stateMachine
    IL_006b:  callvirt   instance void Game.StateMachine::Update()
    IL_0070:  ret
  } // end of method ComponentFindPlayerBehavior::Update

  .method public hidebysig specialname virtual 
          instance float32  get_ImportanceLevel() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentFindPlayerBehavior::m_importanceLevel
    IL_0006:  ret
  } // end of method ComponentFindPlayerBehavior::get_ImportanceLevel

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       258 (0x102)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_000d:  stfld      class Game.SubsystemGameInfo Game.ComponentFindPlayerBehavior::m_subsystemGameInfo
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_001f:  stfld      class Game.SubsystemTime Game.ComponentFindPlayerBehavior::m_subsystemTime
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemSky>(bool)
    IL_0031:  stfld      class Game.SubsystemSky Game.ComponentFindPlayerBehavior::m_subsystemSky
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBodies>(bool)
    IL_0043:  stfld      class Game.SubsystemBodies Game.ComponentFindPlayerBehavior::m_subsystemBodies
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_0055:  stfld      class Game.ComponentCreature Game.ComponentFindPlayerBehavior::m_componentCreature
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPathfinding>(bool)
    IL_0067:  stfld      class Game.ComponentPathfinding Game.ComponentFindPlayerBehavior::m_componentPathfinding
    IL_006c:  ldarg.0
    IL_006d:  ldarg.1
    IL_006e:  ldstr      "DayRange"
    IL_0073:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0078:  stfld      float32 Game.ComponentFindPlayerBehavior::m_dayRange
    IL_007d:  ldarg.0
    IL_007e:  ldarg.1
    IL_007f:  ldstr      "NightRange"
    IL_0084:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0089:  stfld      float32 Game.ComponentFindPlayerBehavior::m_nightRange
    IL_008e:  ldarg.0
    IL_008f:  ldarg.1
    IL_0090:  ldstr      "MinRange"
    IL_0095:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_009a:  stfld      float32 Game.ComponentFindPlayerBehavior::m_minRange
    IL_009f:  ldarg.0
    IL_00a0:  ldfld      class Game.StateMachine Game.ComponentFindPlayerBehavior::m_stateMachine
    IL_00a5:  ldstr      "Inactive"
    IL_00aa:  ldarg.0
    IL_00ab:  ldftn      instance void Game.ComponentFindPlayerBehavior::'<Load>b__21_0'()
    IL_00b1:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00b6:  ldarg.0
    IL_00b7:  ldftn      instance void Game.ComponentFindPlayerBehavior::'<Load>b__21_1'()
    IL_00bd:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00c2:  ldnull
    IL_00c3:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_00c8:  ldarg.0
    IL_00c9:  ldfld      class Game.StateMachine Game.ComponentFindPlayerBehavior::m_stateMachine
    IL_00ce:  ldstr      "Move"
    IL_00d3:  ldarg.0
    IL_00d4:  ldftn      instance void Game.ComponentFindPlayerBehavior::'<Load>b__21_2'()
    IL_00da:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00df:  ldarg.0
    IL_00e0:  ldftn      instance void Game.ComponentFindPlayerBehavior::'<Load>b__21_3'()
    IL_00e6:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00eb:  ldnull
    IL_00ec:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_00f1:  ldarg.0
    IL_00f2:  ldfld      class Game.StateMachine Game.ComponentFindPlayerBehavior::m_stateMachine
    IL_00f7:  ldstr      "Inactive"
    IL_00fc:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0101:  ret
  } // end of method ComponentFindPlayerBehavior::Load

  .method private hidebysig instance class Game.ComponentCreature 
          FindTarget() cil managed
  {
    // 代码大小       161 (0xa1)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             class Game.ComponentCreature V_1,
             float32 V_2,
             int32 V_3,
             class Game.ComponentCreature V_4,
             float32 V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentFindPlayerBehavior::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_000b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0010:  stloc.0
    IL_0011:  ldnull
    IL_0012:  stloc.1
    IL_0013:  ldc.r4     0.0
    IL_0018:  stloc.2
    IL_0019:  ldarg.0
    IL_001a:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentFindPlayerBehavior::m_componentBodies
    IL_001f:  callvirt   instance void class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::Clear()
    IL_0024:  ldarg.0
    IL_0025:  ldfld      class Game.SubsystemBodies Game.ComponentFindPlayerBehavior::m_subsystemBodies
    IL_002a:  ldloc.0
    IL_002b:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0030:  ldloc.0
    IL_0031:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0036:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_003b:  ldarg.0
    IL_003c:  ldfld      float32 Game.ComponentFindPlayerBehavior::m_nightRange
    IL_0041:  ldarg.0
    IL_0042:  ldfld      float32 Game.ComponentFindPlayerBehavior::m_dayRange
    IL_0047:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_004c:  ldarg.0
    IL_004d:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentFindPlayerBehavior::m_componentBodies
    IL_0052:  callvirt   instance void Game.SubsystemBodies::FindBodiesAroundPoint(valuetype [Engine]Engine.Vector2,
                                                                                   float32,
                                                                                   class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>)
    IL_0057:  ldc.i4.0
    IL_0058:  stloc.3
    IL_0059:  br.s       IL_0091

    IL_005b:  ldarg.0
    IL_005c:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentFindPlayerBehavior::m_componentBodies
    IL_0061:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::get_Array()
    IL_0066:  ldloc.3
    IL_0067:  ldelem.ref
    IL_0068:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_006d:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>()
    IL_0072:  stloc.s    V_4
    IL_0074:  ldloc.s    V_4
    IL_0076:  brfalse.s  IL_008d

    IL_0078:  ldarg.0
    IL_0079:  ldloc.s    V_4
    IL_007b:  call       instance float32 Game.ComponentFindPlayerBehavior::ScoreTarget(class Game.ComponentCreature)
    IL_0080:  stloc.s    V_5
    IL_0082:  ldloc.s    V_5
    IL_0084:  ldloc.2
    IL_0085:  ble.un.s   IL_008d

    IL_0087:  ldloc.s    V_5
    IL_0089:  stloc.2
    IL_008a:  ldloc.s    V_4
    IL_008c:  stloc.1
    IL_008d:  ldloc.3
    IL_008e:  ldc.i4.1
    IL_008f:  add
    IL_0090:  stloc.3
    IL_0091:  ldloc.3
    IL_0092:  ldarg.0
    IL_0093:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentFindPlayerBehavior::m_componentBodies
    IL_0098:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::get_Count()
    IL_009d:  blt.s      IL_005b

    IL_009f:  ldloc.1
    IL_00a0:  ret
  } // end of method ComponentFindPlayerBehavior::FindTarget

  .method private hidebysig instance float32 
          ScoreTarget(class Game.ComponentCreature target) cil managed
  {
    // 代码大小       139 (0x8b)
    .maxstack  3
    .locals init (float32 V_0,
             float32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemSky Game.ComponentFindPlayerBehavior::m_subsystemSky
    IL_0006:  callvirt   instance float32 Game.SubsystemSky::get_SkyLightIntensity()
    IL_000b:  ldc.r4     0.2
    IL_0010:  bgt.s      IL_001a

    IL_0012:  ldarg.0
    IL_0013:  ldfld      float32 Game.ComponentFindPlayerBehavior::m_nightRange
    IL_0018:  br.s       IL_0020

    IL_001a:  ldarg.0
    IL_001b:  ldfld      float32 Game.ComponentFindPlayerBehavior::m_dayRange
    IL_0020:  stloc.0
    IL_0021:  ldarg.1
    IL_0022:  callvirt   instance bool [EntitySystem]GameEntitySystem.Component::get_IsAddedToProject()
    IL_0027:  brfalse.s  IL_0048

    IL_0029:  ldarg.1
    IL_002a:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_002f:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_0034:  ldc.r4     0.0
    IL_0039:  ble.s      IL_0048

    IL_003b:  ldarg.1
    IL_003c:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0041:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPlayer>()
    IL_0046:  brtrue.s   IL_004e

    IL_0048:  ldc.r4     0.0
    IL_004d:  ret

    IL_004e:  ldarg.1
    IL_004f:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0054:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0059:  ldarg.0
    IL_005a:  ldfld      class Game.ComponentCreature Game.ComponentFindPlayerBehavior::m_componentCreature
    IL_005f:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0064:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0069:  call       float32 [Engine]Engine.Vector3::DistanceSquared(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_006e:  stloc.1
    IL_006f:  ldloc.1
    IL_0070:  ldarg.0
    IL_0071:  ldfld      float32 Game.ComponentFindPlayerBehavior::m_minRange
    IL_0076:  ldarg.0
    IL_0077:  ldfld      float32 Game.ComponentFindPlayerBehavior::m_minRange
    IL_007c:  mul
    IL_007d:  bge.un.s   IL_0085

    IL_007f:  ldc.r4     0.0
    IL_0084:  ret

    IL_0085:  ldloc.0
    IL_0086:  ldloc.0
    IL_0087:  mul
    IL_0088:  ldloc.1
    IL_0089:  sub
    IL_008a:  ret
  } // end of method ComponentFindPlayerBehavior::ScoreTarget

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.StateMachine::.ctor()
    IL_0006:  stfld      class Game.StateMachine Game.ComponentFindPlayerBehavior::m_stateMachine
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::.ctor()
    IL_0011:  stfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentFindPlayerBehavior::m_componentBodies
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void Game.Random::.ctor()
    IL_001c:  stfld      class Game.Random Game.ComponentFindPlayerBehavior::m_random
    IL_0021:  ldarg.0
    IL_0022:  call       instance void Game.ComponentBehavior::.ctor()
    IL_0027:  ret
  } // end of method ComponentFindPlayerBehavior::.ctor

  .method private hidebysig instance void 
          '<Load>b__21_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     0.0
    IL_0006:  stfld      float32 Game.ComponentFindPlayerBehavior::m_importanceLevel
    IL_000b:  ldarg.0
    IL_000c:  ldnull
    IL_000d:  stfld      class Game.ComponentCreature Game.ComponentFindPlayerBehavior::m_target
    IL_0012:  ret
  } // end of method ComponentFindPlayerBehavior::'<Load>b__21_0'

  .method private hidebysig instance void 
          '<Load>b__21_1'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       186 (0xba)
    .maxstack  4
    .locals init (class Game.ComponentPlayer V_0)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0006:  brfalse.s  IL_0018

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.StateMachine Game.ComponentFindPlayerBehavior::m_stateMachine
    IL_000e:  ldstr      "Move"
    IL_0013:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0018:  ldarg.0
    IL_0019:  ldfld      class Game.SubsystemGameInfo Game.ComponentFindPlayerBehavior::m_subsystemGameInfo
    IL_001e:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0023:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_0028:  ldc.i4.1
    IL_0029:  ble        IL_00b9

    IL_002e:  ldarg.0
    IL_002f:  ldarg.0
    IL_0030:  call       instance class Game.ComponentCreature Game.ComponentFindPlayerBehavior::FindTarget()
    IL_0035:  stfld      class Game.ComponentCreature Game.ComponentFindPlayerBehavior::m_target
    IL_003a:  ldarg.0
    IL_003b:  ldfld      class Game.ComponentCreature Game.ComponentFindPlayerBehavior::m_target
    IL_0040:  brfalse.s  IL_00ae

    IL_0042:  ldarg.0
    IL_0043:  ldfld      class Game.ComponentCreature Game.ComponentFindPlayerBehavior::m_target
    IL_0048:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_004d:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPlayer>()
    IL_0052:  stloc.0
    IL_0053:  ldloc.0
    IL_0054:  brfalse.s  IL_006f

    IL_0056:  ldloc.0
    IL_0057:  callvirt   instance class Game.ComponentSleep Game.ComponentPlayer::get_ComponentSleep()
    IL_005c:  callvirt   instance bool Game.ComponentSleep::get_IsSleeping()
    IL_0061:  brfalse.s  IL_006f

    IL_0063:  ldarg.0
    IL_0064:  ldc.r4     5.
    IL_0069:  stfld      float32 Game.ComponentFindPlayerBehavior::m_importanceLevel
    IL_006e:  ret

    IL_006f:  ldarg.0
    IL_0070:  ldfld      class Game.Random Game.ComponentFindPlayerBehavior::m_random
    IL_0075:  ldc.r4     0.0
    IL_007a:  ldc.r4     1.
    IL_007f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0084:  ldc.r4     5.0000001e-002
    IL_0089:  ldarg.0
    IL_008a:  ldfld      float32 Game.ComponentFindPlayerBehavior::m_dt
    IL_008f:  mul
    IL_0090:  bge.un.s   IL_00b9

    IL_0092:  ldarg.0
    IL_0093:  ldarg.0
    IL_0094:  ldfld      class Game.Random Game.ComponentFindPlayerBehavior::m_random
    IL_0099:  ldc.r4     1.
    IL_009e:  ldc.r4     4.
    IL_00a3:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00a8:  stfld      float32 Game.ComponentFindPlayerBehavior::m_importanceLevel
    IL_00ad:  ret

    IL_00ae:  ldarg.0
    IL_00af:  ldc.r4     0.0
    IL_00b4:  stfld      float32 Game.ComponentFindPlayerBehavior::m_importanceLevel
    IL_00b9:  ret
  } // end of method ComponentFindPlayerBehavior::'<Load>b__21_1'

  .method private hidebysig instance void 
          '<Load>b__21_2'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       77 (0x4d)
    .maxstack  9
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentFindPlayerBehavior::m_target
    IL_0006:  brfalse.s  IL_004c

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.ComponentPathfinding Game.ComponentFindPlayerBehavior::m_componentPathfinding
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Game.ComponentCreature Game.ComponentFindPlayerBehavior::m_target
    IL_0014:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0019:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_001e:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0023:  ldarg.0
    IL_0024:  ldfld      class Game.Random Game.ComponentFindPlayerBehavior::m_random
    IL_0029:  ldc.r4     0.5
    IL_002e:  ldc.r4     0.69999999
    IL_0033:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0038:  ldarg.0
    IL_0039:  ldfld      float32 Game.ComponentFindPlayerBehavior::m_minRange
    IL_003e:  ldc.i4     0x1f4
    IL_0043:  ldc.i4.1
    IL_0044:  ldc.i4.1
    IL_0045:  ldc.i4.0
    IL_0046:  ldnull
    IL_0047:  callvirt   instance void Game.ComponentPathfinding::SetDestination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                 float32,
                                                                                 float32,
                                                                                 int32,
                                                                                 bool,
                                                                                 bool,
                                                                                 bool,
                                                                                 class Game.ComponentBody)
    IL_004c:  ret
  } // end of method ComponentFindPlayerBehavior::'<Load>b__21_2'

  .method private hidebysig instance void 
          '<Load>b__21_3'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       168 (0xa8)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_0)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0006:  brtrue.s   IL_001a

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.StateMachine Game.ComponentFindPlayerBehavior::m_stateMachine
    IL_000e:  ldstr      "Inactive"
    IL_0013:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0018:  br.s       IL_0062

    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.ComponentCreature Game.ComponentFindPlayerBehavior::m_target
    IL_0020:  brfalse.s  IL_0057

    IL_0022:  ldarg.0
    IL_0023:  ldfld      class Game.ComponentPathfinding Game.ComponentFindPlayerBehavior::m_componentPathfinding
    IL_0028:  callvirt   instance bool Game.ComponentPathfinding::get_IsStuck()
    IL_002d:  brtrue.s   IL_0057

    IL_002f:  ldarg.0
    IL_0030:  ldfld      class Game.ComponentPathfinding Game.ComponentFindPlayerBehavior::m_componentPathfinding
    IL_0035:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPathfinding::get_Destination()
    IL_003a:  stloc.0
    IL_003b:  ldloca.s   V_0
    IL_003d:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0042:  brfalse.s  IL_0057

    IL_0044:  ldarg.0
    IL_0045:  ldarg.0
    IL_0046:  ldfld      class Game.ComponentCreature Game.ComponentFindPlayerBehavior::m_target
    IL_004b:  call       instance float32 Game.ComponentFindPlayerBehavior::ScoreTarget(class Game.ComponentCreature)
    IL_0050:  ldc.r4     0.0
    IL_0055:  bgt.un.s   IL_0062

    IL_0057:  ldarg.0
    IL_0058:  ldc.r4     0.0
    IL_005d:  stfld      float32 Game.ComponentFindPlayerBehavior::m_importanceLevel
    IL_0062:  ldarg.0
    IL_0063:  ldfld      class Game.Random Game.ComponentFindPlayerBehavior::m_random
    IL_0068:  ldc.r4     0.0
    IL_006d:  ldc.r4     1.
    IL_0072:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0077:  ldc.r4     0.1
    IL_007c:  ldarg.0
    IL_007d:  ldfld      float32 Game.ComponentFindPlayerBehavior::m_dt
    IL_0082:  mul
    IL_0083:  bge.un.s   IL_0096

    IL_0085:  ldarg.0
    IL_0086:  ldfld      class Game.ComponentCreature Game.ComponentFindPlayerBehavior::m_componentCreature
    IL_008b:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_0090:  ldc.i4.1
    IL_0091:  callvirt   instance void Game.ComponentCreatureSounds::PlayIdleSound(bool)
    IL_0096:  ldarg.0
    IL_0097:  ldfld      class Game.ComponentCreature Game.ComponentFindPlayerBehavior::m_componentCreature
    IL_009c:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_00a1:  ldc.i4.1
    IL_00a2:  callvirt   instance void Game.ComponentCreatureModel::set_LookRandomOrder(bool)
    IL_00a7:  ret
  } // end of method ComponentFindPlayerBehavior::'<Load>b__21_3'

  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentFindPlayerBehavior::get_UpdateOrder()
  } // end of property ComponentFindPlayerBehavior::UpdateOrder
  .property instance float32 ImportanceLevel()
  {
    .get instance float32 Game.ComponentFindPlayerBehavior::get_ImportanceLevel()
  } // end of property ComponentFindPlayerBehavior::ImportanceLevel
} // end of class Game.ComponentFindPlayerBehavior