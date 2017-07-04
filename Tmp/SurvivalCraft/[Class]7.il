.class public auto ansi beforefieldinit Game.ComponentAvoidPlayerBehavior
       extends Game.ComponentBehavior
       implements Game.IUpdateable
{
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
  } // end of method ComponentAvoidPlayerBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       113 (0x71)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTime Game.ComponentAvoidPlayerBehavior::m_subsystemTime
    IL_0006:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_000b:  ldarg.0
    IL_000c:  ldfld      float64 Game.ComponentAvoidPlayerBehavior::m_nextUpdateTime
    IL_0011:  blt.un.s   IL_0070

    IL_0013:  ldarg.0
    IL_0014:  ldarg.0
    IL_0015:  ldfld      class Game.Random Game.ComponentAvoidPlayerBehavior::m_random
    IL_001a:  ldc.r4     0.40000001
    IL_001f:  ldc.r4     0.60000002
    IL_0024:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0029:  ldarg.0
    IL_002a:  ldfld      class Game.SubsystemTime Game.ComponentAvoidPlayerBehavior::m_subsystemTime
    IL_002f:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0034:  ldarg.0
    IL_0035:  ldfld      float64 Game.ComponentAvoidPlayerBehavior::m_nextUpdateTime
    IL_003a:  sub
    IL_003b:  conv.r4
    IL_003c:  ldc.r4     0.1
    IL_0041:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0046:  add
    IL_0047:  stfld      float32 Game.ComponentAvoidPlayerBehavior::m_dt
    IL_004c:  ldarg.0
    IL_004d:  ldarg.0
    IL_004e:  ldfld      class Game.SubsystemTime Game.ComponentAvoidPlayerBehavior::m_subsystemTime
    IL_0053:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0058:  ldarg.0
    IL_0059:  ldfld      float32 Game.ComponentAvoidPlayerBehavior::m_dt
    IL_005e:  conv.r8
    IL_005f:  add
    IL_0060:  stfld      float64 Game.ComponentAvoidPlayerBehavior::m_nextUpdateTime
    IL_0065:  ldarg.0
    IL_0066:  ldfld      class Game.StateMachine Game.ComponentAvoidPlayerBehavior::m_stateMachine
    IL_006b:  callvirt   instance void Game.StateMachine::Update()
    IL_0070:  ret
  } // end of method ComponentAvoidPlayerBehavior::Update

  .method public hidebysig specialname virtual 
          instance float32  get_ImportanceLevel() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentAvoidPlayerBehavior::m_importanceLevel
    IL_0006:  ret
  } // end of method ComponentAvoidPlayerBehavior::get_ImportanceLevel

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       212 (0xd4)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_000d:  stfld      class Game.SubsystemTime Game.ComponentAvoidPlayerBehavior::m_subsystemTime
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemSky>(bool)
    IL_001f:  stfld      class Game.SubsystemSky Game.ComponentAvoidPlayerBehavior::m_subsystemSky
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBodies>(bool)
    IL_0031:  stfld      class Game.SubsystemBodies Game.ComponentAvoidPlayerBehavior::m_subsystemBodies
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_0043:  stfld      class Game.ComponentCreature Game.ComponentAvoidPlayerBehavior::m_componentCreature
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPathfinding>(bool)
    IL_0055:  stfld      class Game.ComponentPathfinding Game.ComponentAvoidPlayerBehavior::m_componentPathfinding
    IL_005a:  ldarg.0
    IL_005b:  ldarg.1
    IL_005c:  ldstr      "DayRange"
    IL_0061:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0066:  stfld      float32 Game.ComponentAvoidPlayerBehavior::m_dayRange
    IL_006b:  ldarg.0
    IL_006c:  ldarg.1
    IL_006d:  ldstr      "NightRange"
    IL_0072:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0077:  stfld      float32 Game.ComponentAvoidPlayerBehavior::m_nightRange
    IL_007c:  ldarg.0
    IL_007d:  ldfld      class Game.StateMachine Game.ComponentAvoidPlayerBehavior::m_stateMachine
    IL_0082:  ldstr      "Inactive"
    IL_0087:  ldarg.0
    IL_0088:  ldftn      instance void Game.ComponentAvoidPlayerBehavior::'<Load>b__19_0'()
    IL_008e:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0093:  ldarg.0
    IL_0094:  ldftn      instance void Game.ComponentAvoidPlayerBehavior::'<Load>b__19_1'()
    IL_009a:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_009f:  ldnull
    IL_00a0:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_00a5:  ldarg.0
    IL_00a6:  ldfld      class Game.StateMachine Game.ComponentAvoidPlayerBehavior::m_stateMachine
    IL_00ab:  ldstr      "Move"
    IL_00b0:  ldnull
    IL_00b1:  ldarg.0
    IL_00b2:  ldftn      instance void Game.ComponentAvoidPlayerBehavior::'<Load>b__19_2'()
    IL_00b8:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00bd:  ldnull
    IL_00be:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_00c3:  ldarg.0
    IL_00c4:  ldfld      class Game.StateMachine Game.ComponentAvoidPlayerBehavior::m_stateMachine
    IL_00c9:  ldstr      "Inactive"
    IL_00ce:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_00d3:  ret
  } // end of method ComponentAvoidPlayerBehavior::Load

  .method private hidebysig instance void 
          SetImportanceLevel(float32 score) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     4.
    IL_0006:  ldc.r4     8.
    IL_000b:  ldarg.1
    IL_000c:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_0011:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0016:  stfld      float32 Game.ComponentAvoidPlayerBehavior::m_importanceLevel
    IL_001b:  ret
  } // end of method ComponentAvoidPlayerBehavior::SetImportanceLevel

  .method private hidebysig instance class Game.ComponentCreature 
          FindTarget([out] float32& targetScore) cil managed
  {
    // 代码大小       164 (0xa4)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             class Game.ComponentCreature V_1,
             float32 V_2,
             int32 V_3,
             class Game.ComponentCreature V_4,
             float32 V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentAvoidPlayerBehavior::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_000b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0010:  stloc.0
    IL_0011:  ldnull
    IL_0012:  stloc.1
    IL_0013:  ldc.r4     0.0
    IL_0018:  stloc.2
    IL_0019:  ldarg.0
    IL_001a:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentAvoidPlayerBehavior::m_componentBodies
    IL_001f:  callvirt   instance void class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::Clear()
    IL_0024:  ldarg.0
    IL_0025:  ldfld      class Game.SubsystemBodies Game.ComponentAvoidPlayerBehavior::m_subsystemBodies
    IL_002a:  ldloc.0
    IL_002b:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0030:  ldloc.0
    IL_0031:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0036:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_003b:  ldarg.0
    IL_003c:  ldfld      float32 Game.ComponentAvoidPlayerBehavior::m_nightRange
    IL_0041:  ldarg.0
    IL_0042:  ldfld      float32 Game.ComponentAvoidPlayerBehavior::m_dayRange
    IL_0047:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_004c:  ldarg.0
    IL_004d:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentAvoidPlayerBehavior::m_componentBodies
    IL_0052:  callvirt   instance void Game.SubsystemBodies::FindBodiesAroundPoint(valuetype [Engine]Engine.Vector2,
                                                                                   float32,
                                                                                   class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>)
    IL_0057:  ldc.i4.0
    IL_0058:  stloc.3
    IL_0059:  br.s       IL_0091

    IL_005b:  ldarg.0
    IL_005c:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentAvoidPlayerBehavior::m_componentBodies
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
    IL_007b:  call       instance float32 Game.ComponentAvoidPlayerBehavior::ScoreTarget(class Game.ComponentCreature)
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
    IL_0093:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentAvoidPlayerBehavior::m_componentBodies
    IL_0098:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::get_Count()
    IL_009d:  blt.s      IL_005b

    IL_009f:  ldarg.1
    IL_00a0:  ldloc.2
    IL_00a1:  stind.r4
    IL_00a2:  ldloc.1
    IL_00a3:  ret
  } // end of method ComponentAvoidPlayerBehavior::FindTarget

  .method private hidebysig instance float32 
          ScoreTarget(class Game.ComponentCreature target) cil managed
  {
    // 代码大小       140 (0x8c)
    .maxstack  3
    .locals init (float32 V_0,
             float32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemSky Game.ComponentAvoidPlayerBehavior::m_subsystemSky
    IL_0006:  callvirt   instance float32 Game.SubsystemSky::get_SkyLightIntensity()
    IL_000b:  ldc.r4     0.2
    IL_0010:  bgt.s      IL_001a

    IL_0012:  ldarg.0
    IL_0013:  ldfld      float32 Game.ComponentAvoidPlayerBehavior::m_nightRange
    IL_0018:  br.s       IL_0020

    IL_001a:  ldarg.0
    IL_001b:  ldfld      float32 Game.ComponentAvoidPlayerBehavior::m_dayRange
    IL_0020:  stloc.0
    IL_0021:  ldloc.0
    IL_0022:  ldc.r4     0.0
    IL_0027:  ble.un.s   IL_0086

    IL_0029:  ldarg.1
    IL_002a:  callvirt   instance bool [EntitySystem]GameEntitySystem.Component::get_IsAddedToProject()
    IL_002f:  brfalse.s  IL_0050

    IL_0031:  ldarg.1
    IL_0032:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0037:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_003c:  ldc.r4     0.0
    IL_0041:  ble.s      IL_0050

    IL_0043:  ldarg.1
    IL_0044:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0049:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPlayer>()
    IL_004e:  brtrue.s   IL_0056

    IL_0050:  ldc.r4     0.0
    IL_0055:  ret

    IL_0056:  ldarg.1
    IL_0057:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_005c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0061:  ldarg.0
    IL_0062:  ldfld      class Game.ComponentCreature Game.ComponentAvoidPlayerBehavior::m_componentCreature
    IL_0067:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_006c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0071:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_0076:  stloc.1
    IL_0077:  ldc.r4     1.
    IL_007c:  ldloc.1
    IL_007d:  ldloc.0
    IL_007e:  div
    IL_007f:  sub
    IL_0080:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0085:  ret

    IL_0086:  ldc.r4     0.0
    IL_008b:  ret
  } // end of method ComponentAvoidPlayerBehavior::ScoreTarget

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.StateMachine::.ctor()
    IL_0006:  stfld      class Game.StateMachine Game.ComponentAvoidPlayerBehavior::m_stateMachine
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::.ctor()
    IL_0011:  stfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentAvoidPlayerBehavior::m_componentBodies
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void Game.Random::.ctor()
    IL_001c:  stfld      class Game.Random Game.ComponentAvoidPlayerBehavior::m_random
    IL_0021:  ldarg.0
    IL_0022:  call       instance void Game.ComponentBehavior::.ctor()
    IL_0027:  ret
  } // end of method ComponentAvoidPlayerBehavior::.ctor

  .method private hidebysig instance void 
          '<Load>b__19_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     0.0
    IL_0006:  stfld      float32 Game.ComponentAvoidPlayerBehavior::m_importanceLevel
    IL_000b:  ldarg.0
    IL_000c:  ldnull
    IL_000d:  stfld      class Game.ComponentCreature Game.ComponentAvoidPlayerBehavior::m_target
    IL_0012:  ret
  } // end of method ComponentAvoidPlayerBehavior::'<Load>b__19_0'

  .method private hidebysig instance void 
          '<Load>b__19_1'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       104 (0x68)
    .maxstack  3
    .locals init (float32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0006:  brfalse.s  IL_0018

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.StateMachine Game.ComponentAvoidPlayerBehavior::m_stateMachine
    IL_000e:  ldstr      "Move"
    IL_0013:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0018:  ldarg.0
    IL_0019:  ldarg.0
    IL_001a:  ldloca.s   V_0
    IL_001c:  call       instance class Game.ComponentCreature Game.ComponentAvoidPlayerBehavior::FindTarget(float32&)
    IL_0021:  stfld      class Game.ComponentCreature Game.ComponentAvoidPlayerBehavior::m_target
    IL_0026:  ldarg.0
    IL_0027:  ldfld      class Game.ComponentCreature Game.ComponentAvoidPlayerBehavior::m_target
    IL_002c:  brfalse.s  IL_005c

    IL_002e:  ldarg.0
    IL_002f:  ldfld      class Game.ComponentCreature Game.ComponentAvoidPlayerBehavior::m_target
    IL_0034:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0039:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_003e:  ldarg.0
    IL_003f:  ldfld      class Game.ComponentCreature Game.ComponentAvoidPlayerBehavior::m_componentCreature
    IL_0044:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0049:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_004e:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_0053:  pop
    IL_0054:  ldarg.0
    IL_0055:  ldloc.0
    IL_0056:  call       instance void Game.ComponentAvoidPlayerBehavior::SetImportanceLevel(float32)
    IL_005b:  ret

    IL_005c:  ldarg.0
    IL_005d:  ldc.r4     0.0
    IL_0062:  stfld      float32 Game.ComponentAvoidPlayerBehavior::m_importanceLevel
    IL_0067:  ret
  } // end of method ComponentAvoidPlayerBehavior::'<Load>b__19_1'

  .method private hidebysig instance void 
          '<Load>b__19_2'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       314 (0x13a)
    .maxstack  9
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_0,
             float32 V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             valuetype [Engine]Engine.Vector3 V_3)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0006:  brtrue.s   IL_0019

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.StateMachine Game.ComponentAvoidPlayerBehavior::m_stateMachine
    IL_000e:  ldstr      "Inactive"
    IL_0013:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0018:  ret

    IL_0019:  ldarg.0
    IL_001a:  ldfld      class Game.ComponentCreature Game.ComponentAvoidPlayerBehavior::m_target
    IL_001f:  brfalse.s  IL_0043

    IL_0021:  ldarg.0
    IL_0022:  ldfld      class Game.ComponentPathfinding Game.ComponentAvoidPlayerBehavior::m_componentPathfinding
    IL_0027:  callvirt   instance bool Game.ComponentPathfinding::get_IsStuck()
    IL_002c:  brtrue.s   IL_0043

    IL_002e:  ldarg.0
    IL_002f:  ldfld      class Game.ComponentPathfinding Game.ComponentAvoidPlayerBehavior::m_componentPathfinding
    IL_0034:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPathfinding::get_Destination()
    IL_0039:  stloc.0
    IL_003a:  ldloca.s   V_0
    IL_003c:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0041:  brtrue.s   IL_004f

    IL_0043:  ldarg.0
    IL_0044:  ldc.r4     0.0
    IL_0049:  stfld      float32 Game.ComponentAvoidPlayerBehavior::m_importanceLevel
    IL_004e:  ret

    IL_004f:  ldarg.0
    IL_0050:  ldarg.0
    IL_0051:  ldfld      class Game.ComponentCreature Game.ComponentAvoidPlayerBehavior::m_target
    IL_0056:  call       instance float32 Game.ComponentAvoidPlayerBehavior::ScoreTarget(class Game.ComponentCreature)
    IL_005b:  stloc.1
    IL_005c:  ldarg.0
    IL_005d:  ldloc.1
    IL_005e:  call       instance void Game.ComponentAvoidPlayerBehavior::SetImportanceLevel(float32)
    IL_0063:  ldarg.0
    IL_0064:  ldfld      class Game.ComponentCreature Game.ComponentAvoidPlayerBehavior::m_componentCreature
    IL_0069:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_006e:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0073:  ldarg.0
    IL_0074:  ldfld      class Game.ComponentCreature Game.ComponentAvoidPlayerBehavior::m_target
    IL_0079:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_007e:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0083:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0088:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_008d:  stloc.2
    IL_008e:  ldarg.0
    IL_008f:  ldfld      class Game.ComponentCreature Game.ComponentAvoidPlayerBehavior::m_componentCreature
    IL_0094:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0099:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_009e:  ldc.r4     10.
    IL_00a3:  ldloc.2
    IL_00a4:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00a9:  ldc.r4     0.0
    IL_00ae:  ldloc.2
    IL_00af:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00b4:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00b9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_00be:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00c3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00c8:  stloc.3
    IL_00c9:  ldarg.0
    IL_00ca:  ldfld      class Game.ComponentPathfinding Game.ComponentAvoidPlayerBehavior::m_componentPathfinding
    IL_00cf:  ldloc.3
    IL_00d0:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_00d5:  ldc.r4     0.60000002
    IL_00da:  ldc.r4     1.
    IL_00df:  ldloc.1
    IL_00e0:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_00e5:  ldc.r4     1.
    IL_00ea:  ldc.i4.0
    IL_00eb:  ldc.i4.0
    IL_00ec:  ldc.i4.1
    IL_00ed:  ldc.i4.0
    IL_00ee:  ldnull
    IL_00ef:  callvirt   instance void Game.ComponentPathfinding::SetDestination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                 float32,
                                                                                 float32,
                                                                                 int32,
                                                                                 bool,
                                                                                 bool,
                                                                                 bool,
                                                                                 class Game.ComponentBody)
    IL_00f4:  ldarg.0
    IL_00f5:  ldfld      class Game.ComponentCreature Game.ComponentAvoidPlayerBehavior::m_componentCreature
    IL_00fa:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_00ff:  ldc.i4.1
    IL_0100:  callvirt   instance void Game.ComponentCreatureModel::set_LookRandomOrder(bool)
    IL_0105:  ldarg.0
    IL_0106:  ldfld      class Game.Random Game.ComponentAvoidPlayerBehavior::m_random
    IL_010b:  ldc.r4     0.0
    IL_0110:  ldc.r4     1.
    IL_0115:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_011a:  ldc.r4     0.1
    IL_011f:  ldarg.0
    IL_0120:  ldfld      float32 Game.ComponentAvoidPlayerBehavior::m_dt
    IL_0125:  mul
    IL_0126:  bge.un.s   IL_0139

    IL_0128:  ldarg.0
    IL_0129:  ldfld      class Game.ComponentCreature Game.ComponentAvoidPlayerBehavior::m_componentCreature
    IL_012e:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_0133:  ldc.i4.1
    IL_0134:  callvirt   instance void Game.ComponentCreatureSounds::PlayIdleSound(bool)
    IL_0139:  ret
  } // end of method ComponentAvoidPlayerBehavior::'<Load>b__19_2'

  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentAvoidPlayerBehavior::get_UpdateOrder()
  } // end of property ComponentAvoidPlayerBehavior::UpdateOrder
  .property instance float32 ImportanceLevel()
  {
    .get instance float32 Game.ComponentAvoidPlayerBehavior::get_ImportanceLevel()
  } // end of property ComponentAvoidPlayerBehavior::ImportanceLevel
} // end of class Game.ComponentAvoidPlayerBehavior