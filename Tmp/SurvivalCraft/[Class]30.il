.class public auto ansi beforefieldinit Game.ComponentStareBehavior
       extends Game.ComponentBehavior
       implements Game.IUpdateable
{
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemBodies m_subsystemBodies
  .field private class Game.ComponentCreature m_componentCreature
  .field private class Game.ComponentPathfinding m_componentPathfinding
  .field private class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> m_componentBodies
  .field private class Game.StateMachine m_stateMachine
  .field private class Game.Random m_random
  .field private float32 m_importanceLevel
  .field private float32 m_stareRange
  .field private float64 m_stareEndTime
  .field private class Game.ComponentCreature m_target
  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentStareBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.StateMachine Game.ComponentStareBehavior::m_stateMachine
    IL_0006:  callvirt   instance void Game.StateMachine::Update()
    IL_000b:  ret
  } // end of method ComponentStareBehavior::Update

  .method public hidebysig specialname virtual 
          instance float32  get_ImportanceLevel() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentStareBehavior::m_importanceLevel
    IL_0006:  ret
  } // end of method ComponentStareBehavior::get_ImportanceLevel

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       188 (0xbc)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_000d:  stfld      class Game.SubsystemTime Game.ComponentStareBehavior::m_subsystemTime
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBodies>(bool)
    IL_001f:  stfld      class Game.SubsystemBodies Game.ComponentStareBehavior::m_subsystemBodies
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_0031:  stfld      class Game.ComponentCreature Game.ComponentStareBehavior::m_componentCreature
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPathfinding>(bool)
    IL_0043:  stfld      class Game.ComponentPathfinding Game.ComponentStareBehavior::m_componentPathfinding
    IL_0048:  ldarg.0
    IL_0049:  ldarg.1
    IL_004a:  ldstr      "StareRange"
    IL_004f:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0054:  stfld      float32 Game.ComponentStareBehavior::m_stareRange
    IL_0059:  ldarg.0
    IL_005a:  ldfld      class Game.StateMachine Game.ComponentStareBehavior::m_stateMachine
    IL_005f:  ldstr      "Inactive"
    IL_0064:  ldarg.0
    IL_0065:  ldftn      instance void Game.ComponentStareBehavior::'<Load>b__16_0'()
    IL_006b:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0070:  ldarg.0
    IL_0071:  ldftn      instance void Game.ComponentStareBehavior::'<Load>b__16_1'()
    IL_0077:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_007c:  ldnull
    IL_007d:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_0082:  ldarg.0
    IL_0083:  ldfld      class Game.StateMachine Game.ComponentStareBehavior::m_stateMachine
    IL_0088:  ldstr      "Stare"
    IL_008d:  ldarg.0
    IL_008e:  ldftn      instance void Game.ComponentStareBehavior::'<Load>b__16_2'()
    IL_0094:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0099:  ldarg.0
    IL_009a:  ldftn      instance void Game.ComponentStareBehavior::'<Load>b__16_3'()
    IL_00a0:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00a5:  ldnull
    IL_00a6:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_00ab:  ldarg.0
    IL_00ac:  ldfld      class Game.StateMachine Game.ComponentStareBehavior::m_stateMachine
    IL_00b1:  ldstr      "Inactive"
    IL_00b6:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_00bb:  ret
  } // end of method ComponentStareBehavior::Load

  .method private hidebysig instance class Game.ComponentCreature 
          FindTarget() cil managed
  {
    // 代码大小       150 (0x96)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             class Game.ComponentCreature V_1,
             float32 V_2,
             int32 V_3,
             class Game.ComponentCreature V_4,
             float32 V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentStareBehavior::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_000b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentStareBehavior::m_componentBodies
    IL_0017:  callvirt   instance void class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::Clear()
    IL_001c:  ldarg.0
    IL_001d:  ldfld      class Game.SubsystemBodies Game.ComponentStareBehavior::m_subsystemBodies
    IL_0022:  ldloc.0
    IL_0023:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0028:  ldloc.0
    IL_0029:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_002e:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0033:  ldarg.0
    IL_0034:  ldfld      float32 Game.ComponentStareBehavior::m_stareRange
    IL_0039:  ldarg.0
    IL_003a:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentStareBehavior::m_componentBodies
    IL_003f:  callvirt   instance void Game.SubsystemBodies::FindBodiesAroundPoint(valuetype [Engine]Engine.Vector2,
                                                                                   float32,
                                                                                   class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>)
    IL_0044:  ldnull
    IL_0045:  stloc.1
    IL_0046:  ldc.r4     0.0
    IL_004b:  stloc.2
    IL_004c:  ldc.i4.0
    IL_004d:  stloc.3
    IL_004e:  br.s       IL_0086

    IL_0050:  ldarg.0
    IL_0051:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentStareBehavior::m_componentBodies
    IL_0056:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::get_Array()
    IL_005b:  ldloc.3
    IL_005c:  ldelem.ref
    IL_005d:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0062:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>()
    IL_0067:  stloc.s    V_4
    IL_0069:  ldloc.s    V_4
    IL_006b:  brfalse.s  IL_0082

    IL_006d:  ldarg.0
    IL_006e:  ldloc.s    V_4
    IL_0070:  call       instance float32 Game.ComponentStareBehavior::ScoreTarget(class Game.ComponentCreature)
    IL_0075:  stloc.s    V_5
    IL_0077:  ldloc.s    V_5
    IL_0079:  ldloc.2
    IL_007a:  ble.un.s   IL_0082

    IL_007c:  ldloc.s    V_4
    IL_007e:  stloc.1
    IL_007f:  ldloc.s    V_5
    IL_0081:  stloc.2
    IL_0082:  ldloc.3
    IL_0083:  ldc.i4.1
    IL_0084:  add
    IL_0085:  stloc.3
    IL_0086:  ldloc.3
    IL_0087:  ldarg.0
    IL_0088:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentStareBehavior::m_componentBodies
    IL_008d:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::get_Count()
    IL_0092:  blt.s      IL_0050

    IL_0094:  ldloc.1
    IL_0095:  ret
  } // end of method ComponentStareBehavior::FindTarget

  .method private hidebysig instance float32 
          ScoreTarget(class Game.ComponentCreature componentCreature) cil managed
  {
    // 代码大小       121 (0x79)
    .maxstack  3
    .locals init (float32 V_0,
             float32 V_1)
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.ComponentCreature Game.ComponentStareBehavior::m_componentCreature
    IL_0007:  beq.s      IL_0073

    IL_0009:  ldarg.1
    IL_000a:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_000f:  callvirt   instance bool [EntitySystem]GameEntitySystem.Entity::get_IsAddedToProject()
    IL_0014:  brfalse.s  IL_0073

    IL_0016:  ldarg.0
    IL_0017:  ldfld      class Game.ComponentCreature Game.ComponentStareBehavior::m_componentCreature
    IL_001c:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0021:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0026:  ldarg.1
    IL_0027:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_002c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0031:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_0036:  stloc.0
    IL_0037:  ldarg.0
    IL_0038:  ldfld      float32 Game.ComponentStareBehavior::m_stareRange
    IL_003d:  ldloc.0
    IL_003e:  sub
    IL_003f:  stloc.1
    IL_0040:  ldarg.0
    IL_0041:  ldfld      class Game.Random Game.ComponentStareBehavior::m_random
    IL_0046:  ldc.r4     0.0
    IL_004b:  ldc.r4     1.
    IL_0050:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0055:  ldc.r4     0.66000003
    IL_005a:  bge.un.s   IL_0071

    IL_005c:  ldarg.1
    IL_005d:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0062:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPlayer>()
    IL_0067:  brfalse.s  IL_0071

    IL_0069:  ldloc.1
    IL_006a:  ldc.r4     100.
    IL_006f:  mul
    IL_0070:  stloc.1
    IL_0071:  ldloc.1
    IL_0072:  ret

    IL_0073:  ldc.r4     0.0
    IL_0078:  ret
  } // end of method ComponentStareBehavior::ScoreTarget

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::.ctor()
    IL_0006:  stfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.ComponentStareBehavior::m_componentBodies
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.StateMachine::.ctor()
    IL_0011:  stfld      class Game.StateMachine Game.ComponentStareBehavior::m_stateMachine
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void Game.Random::.ctor()
    IL_001c:  stfld      class Game.Random Game.ComponentStareBehavior::m_random
    IL_0021:  ldarg.0
    IL_0022:  call       instance void Game.ComponentBehavior::.ctor()
    IL_0027:  ret
  } // end of method ComponentStareBehavior::.ctor

  .method private hidebysig instance void 
          '<Load>b__16_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     0.0
    IL_0006:  stfld      float32 Game.ComponentStareBehavior::m_importanceLevel
    IL_000b:  ret
  } // end of method ComponentStareBehavior::'<Load>b__16_0'

  .method private hidebysig instance void 
          '<Load>b__16_1'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       199 (0xc7)
    .maxstack  4
    .locals init (float32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTime Game.ComponentStareBehavior::m_subsystemTime
    IL_0006:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_000b:  ldarg.0
    IL_000c:  ldfld      float64 Game.ComponentStareBehavior::m_stareEndTime
    IL_0011:  ldc.r8     8.
    IL_001a:  add
    IL_001b:  ble.un     IL_00ae

    IL_0020:  ldarg.0
    IL_0021:  ldfld      class Game.Random Game.ComponentStareBehavior::m_random
    IL_0026:  ldc.r4     0.0
    IL_002b:  ldc.r4     1.
    IL_0030:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0035:  ldc.r4     0.5
    IL_003a:  ldarg.0
    IL_003b:  ldfld      class Game.SubsystemTime Game.ComponentStareBehavior::m_subsystemTime
    IL_0040:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_0045:  mul
    IL_0046:  bge.un.s   IL_00ae

    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class Game.ComponentCreature Game.ComponentStareBehavior::FindTarget()
    IL_004f:  stfld      class Game.ComponentCreature Game.ComponentStareBehavior::m_target
    IL_0054:  ldarg.0
    IL_0055:  ldfld      class Game.ComponentCreature Game.ComponentStareBehavior::m_target
    IL_005a:  brfalse.s  IL_00ae

    IL_005c:  ldarg.0
    IL_005d:  ldfld      class Game.ComponentCreature Game.ComponentStareBehavior::m_target
    IL_0062:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0067:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPlayer>()
    IL_006c:  brtrue.s   IL_0075

    IL_006e:  ldc.r4     0.25
    IL_0073:  br.s       IL_007a

    IL_0075:  ldc.r4     1.
    IL_007a:  stloc.0
    IL_007b:  ldarg.0
    IL_007c:  ldfld      class Game.Random Game.ComponentStareBehavior::m_random
    IL_0081:  ldc.r4     0.0
    IL_0086:  ldc.r4     1.
    IL_008b:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0090:  ldloc.0
    IL_0091:  bge.un.s   IL_00ae

    IL_0093:  ldarg.0
    IL_0094:  ldarg.0
    IL_0095:  ldfld      class Game.Random Game.ComponentStareBehavior::m_random
    IL_009a:  ldc.r4     1.
    IL_009f:  ldc.r4     5.
    IL_00a4:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00a9:  stfld      float32 Game.ComponentStareBehavior::m_importanceLevel
    IL_00ae:  ldarg.0
    IL_00af:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_00b4:  brfalse.s  IL_00c6

    IL_00b6:  ldarg.0
    IL_00b7:  ldfld      class Game.StateMachine Game.ComponentStareBehavior::m_stateMachine
    IL_00bc:  ldstr      "Stare"
    IL_00c1:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_00c6:  ret
  } // end of method ComponentStareBehavior::'<Load>b__16_1'

  .method private hidebysig instance void 
          '<Load>b__16_2'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       205 (0xcd)
    .maxstack  8
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Vector3 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.SubsystemTime Game.ComponentStareBehavior::m_subsystemTime
    IL_0007:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_000c:  ldarg.0
    IL_000d:  ldfld      class Game.Random Game.ComponentStareBehavior::m_random
    IL_0012:  ldc.r4     6.
    IL_0017:  ldc.r4     12.
    IL_001c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0021:  conv.r8
    IL_0022:  add
    IL_0023:  stfld      float64 Game.ComponentStareBehavior::m_stareEndTime
    IL_0028:  ldarg.0
    IL_0029:  ldfld      class Game.ComponentCreature Game.ComponentStareBehavior::m_target
    IL_002e:  brfalse    IL_00cc

    IL_0033:  ldarg.0
    IL_0034:  ldfld      class Game.ComponentCreature Game.ComponentStareBehavior::m_componentCreature
    IL_0039:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_003e:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0043:  stloc.0
    IL_0044:  ldarg.0
    IL_0045:  ldfld      class Game.ComponentCreature Game.ComponentStareBehavior::m_target
    IL_004a:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_004f:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0054:  ldloc.0
    IL_0055:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_005a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_005f:  stloc.1
    IL_0060:  ldarg.0
    IL_0061:  ldfld      class Game.ComponentPathfinding Game.ComponentStareBehavior::m_componentPathfinding
    IL_0066:  ldloc.0
    IL_0067:  ldc.r4     1.1
    IL_006c:  ldloc.1
    IL_006d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0072:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0077:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_007c:  ldarg.0
    IL_007d:  ldfld      class Game.Random Game.ComponentStareBehavior::m_random
    IL_0082:  ldc.r4     0.30000001
    IL_0087:  ldc.r4     0.40000001
    IL_008c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0091:  ldc.r4     1.
    IL_0096:  ldc.i4.0
    IL_0097:  ldc.i4.0
    IL_0098:  ldc.i4.1
    IL_0099:  ldc.i4.0
    IL_009a:  callvirt   instance void Game.ComponentPathfinding::SetDestination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                 float32,
                                                                                 float32,
                                                                                 int32,
                                                                                 bool,
                                                                                 bool,
                                                                                 bool)
    IL_009f:  ldarg.0
    IL_00a0:  ldfld      class Game.Random Game.ComponentStareBehavior::m_random
    IL_00a5:  ldc.r4     0.0
    IL_00aa:  ldc.r4     1.
    IL_00af:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00b4:  ldc.r4     0.5
    IL_00b9:  bge.un.s   IL_00cc

    IL_00bb:  ldarg.0
    IL_00bc:  ldfld      class Game.ComponentCreature Game.ComponentStareBehavior::m_componentCreature
    IL_00c1:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_00c6:  ldc.i4.0
    IL_00c7:  callvirt   instance void Game.ComponentCreatureSounds::PlayIdleSound(bool)
    IL_00cc:  ret
  } // end of method ComponentStareBehavior::'<Load>b__16_2'

  .method private hidebysig instance void 
          '<Load>b__16_3'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       179 (0xb3)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0006:  brfalse.s  IL_0030

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.ComponentCreature Game.ComponentStareBehavior::m_target
    IL_000e:  brfalse.s  IL_0030

    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.ComponentPathfinding Game.ComponentStareBehavior::m_componentPathfinding
    IL_0016:  callvirt   instance bool Game.ComponentPathfinding::get_IsStuck()
    IL_001b:  brtrue.s   IL_0030

    IL_001d:  ldarg.0
    IL_001e:  ldfld      class Game.SubsystemTime Game.ComponentStareBehavior::m_subsystemTime
    IL_0023:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0028:  ldarg.0
    IL_0029:  ldfld      float64 Game.ComponentStareBehavior::m_stareEndTime
    IL_002e:  ble.un.s   IL_0041

    IL_0030:  ldarg.0
    IL_0031:  ldfld      class Game.StateMachine Game.ComponentStareBehavior::m_stateMachine
    IL_0036:  ldstr      "Inactive"
    IL_003b:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0040:  ret

    IL_0041:  ldarg.0
    IL_0042:  ldfld      class Game.Random Game.ComponentStareBehavior::m_random
    IL_0047:  ldc.r4     0.0
    IL_004c:  ldc.r4     1.
    IL_0051:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0056:  ldc.r4     1.
    IL_005b:  ldarg.0
    IL_005c:  ldfld      class Game.SubsystemTime Game.ComponentStareBehavior::m_subsystemTime
    IL_0061:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_0066:  mul
    IL_0067:  bge.un.s   IL_008d

    IL_0069:  ldarg.0
    IL_006a:  ldarg.0
    IL_006b:  ldfld      class Game.ComponentCreature Game.ComponentStareBehavior::m_target
    IL_0070:  call       instance float32 Game.ComponentStareBehavior::ScoreTarget(class Game.ComponentCreature)
    IL_0075:  ldc.r4     0.0
    IL_007a:  bgt.un.s   IL_008d

    IL_007c:  ldarg.0
    IL_007d:  ldfld      class Game.StateMachine Game.ComponentStareBehavior::m_stateMachine
    IL_0082:  ldstr      "Inactive"
    IL_0087:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_008c:  ret

    IL_008d:  ldarg.0
    IL_008e:  ldfld      class Game.ComponentCreature Game.ComponentStareBehavior::m_componentCreature
    IL_0093:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_0098:  ldarg.0
    IL_0099:  ldfld      class Game.ComponentCreature Game.ComponentStareBehavior::m_target
    IL_009e:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_00a3:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_00a8:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_00ad:  callvirt   instance void Game.ComponentCreatureModel::set_LookAtOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_00b2:  ret
  } // end of method ComponentStareBehavior::'<Load>b__16_3'

  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentStareBehavior::get_UpdateOrder()
  } // end of property ComponentStareBehavior::UpdateOrder
  .property instance float32 ImportanceLevel()
  {
    .get instance float32 Game.ComponentStareBehavior::get_ImportanceLevel()
  } // end of property ComponentStareBehavior::ImportanceLevel
} // end of class Game.ComponentStareBehavior