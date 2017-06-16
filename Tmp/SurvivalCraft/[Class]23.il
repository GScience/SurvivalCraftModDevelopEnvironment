.class public auto ansi beforefieldinit Game.ComponentLookAroundBehavior
       extends Game.ComponentBehavior
       implements Game.IUpdateable
{
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.ComponentCreature m_componentCreature
  .field private class Game.StateMachine m_stateMachine
  .field private class Game.Random m_random
  .field private float32 m_lookAroundTime
  .field private float32 m_importanceLevel
  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentLookAroundBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.StateMachine Game.ComponentLookAroundBehavior::m_stateMachine
    IL_0006:  callvirt   instance void Game.StateMachine::Update()
    IL_000b:  ret
  } // end of method ComponentLookAroundBehavior::Update

  .method public hidebysig specialname virtual 
          instance float32  get_ImportanceLevel() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentLookAroundBehavior::m_importanceLevel
    IL_0006:  ret
  } // end of method ComponentLookAroundBehavior::get_ImportanceLevel

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       135 (0x87)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_000d:  stfld      class Game.SubsystemTime Game.ComponentLookAroundBehavior::m_subsystemTime
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_001f:  stfld      class Game.ComponentCreature Game.ComponentLookAroundBehavior::m_componentCreature
    IL_0024:  ldarg.0
    IL_0025:  ldfld      class Game.StateMachine Game.ComponentLookAroundBehavior::m_stateMachine
    IL_002a:  ldstr      "Inactive"
    IL_002f:  ldarg.0
    IL_0030:  ldftn      instance void Game.ComponentLookAroundBehavior::'<Load>b__11_0'()
    IL_0036:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_003b:  ldarg.0
    IL_003c:  ldftn      instance void Game.ComponentLookAroundBehavior::'<Load>b__11_1'()
    IL_0042:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0047:  ldnull
    IL_0048:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_004d:  ldarg.0
    IL_004e:  ldfld      class Game.StateMachine Game.ComponentLookAroundBehavior::m_stateMachine
    IL_0053:  ldstr      "LookAround"
    IL_0058:  ldarg.0
    IL_0059:  ldftn      instance void Game.ComponentLookAroundBehavior::'<Load>b__11_2'()
    IL_005f:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0064:  ldarg.0
    IL_0065:  ldftn      instance void Game.ComponentLookAroundBehavior::'<Load>b__11_3'()
    IL_006b:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0070:  ldnull
    IL_0071:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_0076:  ldarg.0
    IL_0077:  ldfld      class Game.StateMachine Game.ComponentLookAroundBehavior::m_stateMachine
    IL_007c:  ldstr      "Inactive"
    IL_0081:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0086:  ret
  } // end of method ComponentLookAroundBehavior::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.StateMachine::.ctor()
    IL_0006:  stfld      class Game.StateMachine Game.ComponentLookAroundBehavior::m_stateMachine
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.Random::.ctor()
    IL_0011:  stfld      class Game.Random Game.ComponentLookAroundBehavior::m_random
    IL_0016:  ldarg.0
    IL_0017:  call       instance void Game.ComponentBehavior::.ctor()
    IL_001c:  ret
  } // end of method ComponentLookAroundBehavior::.ctor

  .method private hidebysig instance void 
          '<Load>b__11_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.Random Game.ComponentLookAroundBehavior::m_random
    IL_0007:  ldc.r4     0.0
    IL_000c:  ldc.r4     1.
    IL_0011:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0016:  stfld      float32 Game.ComponentLookAroundBehavior::m_importanceLevel
    IL_001b:  ret
  } // end of method ComponentLookAroundBehavior::'<Load>b__11_0'

  .method private hidebysig instance void 
          '<Load>b__11_1'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       118 (0x76)
    .maxstack  4
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentLookAroundBehavior::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_000b:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_0010:  stloc.0
    IL_0011:  ldloca.s   V_0
    IL_0013:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0018:  brfalse.s  IL_005d

    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.Random Game.ComponentLookAroundBehavior::m_random
    IL_0020:  ldc.r4     0.0
    IL_0025:  ldc.r4     1.
    IL_002a:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_002f:  ldc.r4     5.0000001e-002
    IL_0034:  ldarg.0
    IL_0035:  ldfld      class Game.SubsystemTime Game.ComponentLookAroundBehavior::m_subsystemTime
    IL_003a:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_003f:  mul
    IL_0040:  bge.un.s   IL_005d

    IL_0042:  ldarg.0
    IL_0043:  ldarg.0
    IL_0044:  ldfld      class Game.Random Game.ComponentLookAroundBehavior::m_random
    IL_0049:  ldc.r4     1.
    IL_004e:  ldc.r4     5.
    IL_0053:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0058:  stfld      float32 Game.ComponentLookAroundBehavior::m_importanceLevel
    IL_005d:  ldarg.0
    IL_005e:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0063:  brfalse.s  IL_0075

    IL_0065:  ldarg.0
    IL_0066:  ldfld      class Game.StateMachine Game.ComponentLookAroundBehavior::m_stateMachine
    IL_006b:  ldstr      "LookAround"
    IL_0070:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0075:  ret
  } // end of method ComponentLookAroundBehavior::'<Load>b__11_1'

  .method private hidebysig instance void 
          '<Load>b__11_2'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.Random Game.ComponentLookAroundBehavior::m_random
    IL_0007:  ldc.r4     6.
    IL_000c:  ldc.r4     12.
    IL_0011:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0016:  stfld      float32 Game.ComponentLookAroundBehavior::m_lookAroundTime
    IL_001b:  ret
  } // end of method ComponentLookAroundBehavior::'<Load>b__11_2'

  .method private hidebysig instance void 
          '<Load>b__11_3'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       151 (0x97)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0006:  brtrue.s   IL_001a

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.StateMachine Game.ComponentLookAroundBehavior::m_stateMachine
    IL_000e:  ldstr      "Inactive"
    IL_0013:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0018:  br.s       IL_006d

    IL_001a:  ldarg.0
    IL_001b:  ldfld      float32 Game.ComponentLookAroundBehavior::m_lookAroundTime
    IL_0020:  ldc.r4     0.0
    IL_0025:  bgt.un.s   IL_0034

    IL_0027:  ldarg.0
    IL_0028:  ldc.r4     0.0
    IL_002d:  stfld      float32 Game.ComponentLookAroundBehavior::m_importanceLevel
    IL_0032:  br.s       IL_006d

    IL_0034:  ldarg.0
    IL_0035:  ldfld      class Game.Random Game.ComponentLookAroundBehavior::m_random
    IL_003a:  ldc.r4     0.0
    IL_003f:  ldc.r4     1.
    IL_0044:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0049:  ldc.r4     0.1
    IL_004e:  ldarg.0
    IL_004f:  ldfld      class Game.SubsystemTime Game.ComponentLookAroundBehavior::m_subsystemTime
    IL_0054:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_0059:  mul
    IL_005a:  bge.un.s   IL_006d

    IL_005c:  ldarg.0
    IL_005d:  ldfld      class Game.ComponentCreature Game.ComponentLookAroundBehavior::m_componentCreature
    IL_0062:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_0067:  ldc.i4.0
    IL_0068:  callvirt   instance void Game.ComponentCreatureSounds::PlayIdleSound(bool)
    IL_006d:  ldarg.0
    IL_006e:  ldfld      class Game.ComponentCreature Game.ComponentLookAroundBehavior::m_componentCreature
    IL_0073:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_0078:  ldc.i4.1
    IL_0079:  callvirt   instance void Game.ComponentCreatureModel::set_LookRandomOrder(bool)
    IL_007e:  ldarg.0
    IL_007f:  ldarg.0
    IL_0080:  ldfld      float32 Game.ComponentLookAroundBehavior::m_lookAroundTime
    IL_0085:  ldarg.0
    IL_0086:  ldfld      class Game.SubsystemTime Game.ComponentLookAroundBehavior::m_subsystemTime
    IL_008b:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_0090:  sub
    IL_0091:  stfld      float32 Game.ComponentLookAroundBehavior::m_lookAroundTime
    IL_0096:  ret
  } // end of method ComponentLookAroundBehavior::'<Load>b__11_3'

  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentLookAroundBehavior::get_UpdateOrder()
  } // end of property ComponentLookAroundBehavior::UpdateOrder
  .property instance float32 ImportanceLevel()
  {
    .get instance float32 Game.ComponentLookAroundBehavior::get_ImportanceLevel()
  } // end of property ComponentLookAroundBehavior::ImportanceLevel
} // end of class Game.ComponentLookAroundBehavior