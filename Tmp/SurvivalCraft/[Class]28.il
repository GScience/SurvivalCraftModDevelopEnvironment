.class public auto ansi beforefieldinit Game.ComponentRandomPeckBehavior
       extends Game.ComponentBehavior
       implements Game.IUpdateable
{
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.ComponentCreature m_componentCreature
  .field private class Game.ComponentBirdModel m_componentBirdModel
  .field private class Game.ComponentPathfinding m_componentPathfinding
  .field private class Game.StateMachine m_stateMachine
  .field private float32 m_importanceLevel
  .field private float32 m_dt
  .field private float32 m_peckTime
  .field private float32 m_waitTime
  .field private class Game.Random m_random
  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentRandomPeckBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       135 (0x87)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.StateMachine Game.ComponentRandomPeckBehavior::m_stateMachine
    IL_0006:  callvirt   instance string Game.StateMachine::get_CurrentState()
    IL_000b:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0010:  brfalse.s  IL_0022

    IL_0012:  ldarg.0
    IL_0013:  ldfld      class Game.StateMachine Game.ComponentRandomPeckBehavior::m_stateMachine
    IL_0018:  ldstr      "Move"
    IL_001d:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class Game.Random Game.ComponentRandomPeckBehavior::m_random
    IL_0028:  ldc.r4     0.0
    IL_002d:  ldc.r4     1.
    IL_0032:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0037:  ldc.r4     3.3e-002
    IL_003c:  ldarg.1
    IL_003d:  mul
    IL_003e:  bge.un.s   IL_005b

    IL_0040:  ldarg.0
    IL_0041:  ldarg.0
    IL_0042:  ldfld      class Game.Random Game.ComponentRandomPeckBehavior::m_random
    IL_0047:  ldc.r4     1.
    IL_004c:  ldc.r4     2.5
    IL_0051:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0056:  stfld      float32 Game.ComponentRandomPeckBehavior::m_importanceLevel
    IL_005b:  ldarg.0
    IL_005c:  ldarg.1
    IL_005d:  stfld      float32 Game.ComponentRandomPeckBehavior::m_dt
    IL_0062:  ldarg.0
    IL_0063:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0068:  brfalse.s  IL_0076

    IL_006a:  ldarg.0
    IL_006b:  ldfld      class Game.StateMachine Game.ComponentRandomPeckBehavior::m_stateMachine
    IL_0070:  callvirt   instance void Game.StateMachine::Update()
    IL_0075:  ret

    IL_0076:  ldarg.0
    IL_0077:  ldfld      class Game.StateMachine Game.ComponentRandomPeckBehavior::m_stateMachine
    IL_007c:  ldstr      "Inactive"
    IL_0081:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0086:  ret
  } // end of method ComponentRandomPeckBehavior::Update

  .method public hidebysig specialname virtual 
          instance float32  get_ImportanceLevel() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentRandomPeckBehavior::m_importanceLevel
    IL_0006:  ret
  } // end of method ComponentRandomPeckBehavior::get_ImportanceLevel

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       256 (0x100)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_000d:  stfld      class Game.SubsystemTerrain Game.ComponentRandomPeckBehavior::m_subsystemTerrain
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_001f:  stfld      class Game.ComponentCreature Game.ComponentRandomPeckBehavior::m_componentCreature
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentBirdModel>(bool)
    IL_0031:  stfld      class Game.ComponentBirdModel Game.ComponentRandomPeckBehavior::m_componentBirdModel
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPathfinding>(bool)
    IL_0043:  stfld      class Game.ComponentPathfinding Game.ComponentRandomPeckBehavior::m_componentPathfinding
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.StateMachine Game.ComponentRandomPeckBehavior::m_stateMachine
    IL_004e:  ldstr      "Inactive"
    IL_0053:  ldnull
    IL_0054:  ldarg.0
    IL_0055:  ldftn      instance void Game.ComponentRandomPeckBehavior::'<Load>b__15_0'()
    IL_005b:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0060:  ldnull
    IL_0061:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_0066:  ldarg.0
    IL_0067:  ldfld      class Game.StateMachine Game.ComponentRandomPeckBehavior::m_stateMachine
    IL_006c:  ldstr      "Stuck"
    IL_0071:  ldarg.0
    IL_0072:  ldftn      instance void Game.ComponentRandomPeckBehavior::'<Load>b__15_1'()
    IL_0078:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_007d:  ldnull
    IL_007e:  ldnull
    IL_007f:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_0084:  ldarg.0
    IL_0085:  ldfld      class Game.StateMachine Game.ComponentRandomPeckBehavior::m_stateMachine
    IL_008a:  ldstr      "Move"
    IL_008f:  ldarg.0
    IL_0090:  ldftn      instance void Game.ComponentRandomPeckBehavior::'<Load>b__15_2'()
    IL_0096:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_009b:  ldarg.0
    IL_009c:  ldftn      instance void Game.ComponentRandomPeckBehavior::'<Load>b__15_3'()
    IL_00a2:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00a7:  ldnull
    IL_00a8:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_00ad:  ldarg.0
    IL_00ae:  ldfld      class Game.StateMachine Game.ComponentRandomPeckBehavior::m_stateMachine
    IL_00b3:  ldstr      "Wait"
    IL_00b8:  ldarg.0
    IL_00b9:  ldftn      instance void Game.ComponentRandomPeckBehavior::'<Load>b__15_4'()
    IL_00bf:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00c4:  ldarg.0
    IL_00c5:  ldftn      instance void Game.ComponentRandomPeckBehavior::'<Load>b__15_5'()
    IL_00cb:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00d0:  ldnull
    IL_00d1:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_00d6:  ldarg.0
    IL_00d7:  ldfld      class Game.StateMachine Game.ComponentRandomPeckBehavior::m_stateMachine
    IL_00dc:  ldstr      "Peck"
    IL_00e1:  ldarg.0
    IL_00e2:  ldftn      instance void Game.ComponentRandomPeckBehavior::'<Load>b__15_6'()
    IL_00e8:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00ed:  ldarg.0
    IL_00ee:  ldftn      instance void Game.ComponentRandomPeckBehavior::'<Load>b__15_7'()
    IL_00f4:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00f9:  ldnull
    IL_00fa:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_00ff:  ret
  } // end of method ComponentRandomPeckBehavior::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.StateMachine::.ctor()
    IL_0006:  stfld      class Game.StateMachine Game.ComponentRandomPeckBehavior::m_stateMachine
    IL_000b:  ldarg.0
    IL_000c:  ldc.r4     1.
    IL_0011:  stfld      float32 Game.ComponentRandomPeckBehavior::m_importanceLevel
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void Game.Random::.ctor()
    IL_001c:  stfld      class Game.Random Game.ComponentRandomPeckBehavior::m_random
    IL_0021:  ldarg.0
    IL_0022:  call       instance void Game.ComponentBehavior::.ctor()
    IL_0027:  ret
  } // end of method ComponentRandomPeckBehavior::.ctor

  .method private hidebysig instance void 
          '<Load>b__15_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0006:  brfalse.s  IL_0018

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.StateMachine Game.ComponentRandomPeckBehavior::m_stateMachine
    IL_000e:  ldstr      "Move"
    IL_0013:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0018:  ret
  } // end of method ComponentRandomPeckBehavior::'<Load>b__15_0'

  .method private hidebysig instance void 
          '<Load>b__15_1'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.StateMachine Game.ComponentRandomPeckBehavior::m_stateMachine
    IL_0006:  ldstr      "Move"
    IL_000b:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0010:  ret
  } // end of method ComponentRandomPeckBehavior::'<Load>b__15_1'

  .method private hidebysig instance void 
          '<Load>b__15_2'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       216 (0xd8)
    .maxstack  9
    .locals init (float32 V_0,
             valuetype [Engine]Engine.Vector3 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentRandomPeckBehavior::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_000b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.Random Game.ComponentRandomPeckBehavior::m_random
    IL_0016:  ldc.r4     0.0
    IL_001b:  ldc.r4     1.
    IL_0020:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0025:  ldc.r4     0.2
    IL_002a:  blt.s      IL_0033

    IL_002c:  ldc.r4     3.
    IL_0031:  br.s       IL_0038

    IL_0033:  ldc.r4     8.
    IL_0038:  stloc.0
    IL_0039:  ldloc.0
    IL_003a:  ldarg.0
    IL_003b:  ldfld      class Game.Random Game.ComponentRandomPeckBehavior::m_random
    IL_0040:  ldc.r4     -1.
    IL_0045:  ldc.r4     1.
    IL_004a:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_004f:  mul
    IL_0050:  ldc.r4     0.0
    IL_0055:  ldloc.0
    IL_0056:  ldarg.0
    IL_0057:  ldfld      class Game.Random Game.ComponentRandomPeckBehavior::m_random
    IL_005c:  ldc.r4     -1.
    IL_0061:  ldc.r4     1.
    IL_0066:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_006b:  mul
    IL_006c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0071:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0076:  stloc.1
    IL_0077:  ldloca.s   V_1
    IL_0079:  ldarg.0
    IL_007a:  ldfld      class Game.SubsystemTerrain Game.ComponentRandomPeckBehavior::m_subsystemTerrain
    IL_007f:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0084:  ldloc.1
    IL_0085:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_008a:  call       int32 Game.Terrain::ToCell(float32)
    IL_008f:  ldloc.1
    IL_0090:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0095:  call       int32 Game.Terrain::ToCell(float32)
    IL_009a:  callvirt   instance int32 Game.Terrain::GetTopHeight(int32,
                                                                   int32)
    IL_009f:  ldc.i4.1
    IL_00a0:  add
    IL_00a1:  conv.r4
    IL_00a2:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_00a7:  ldarg.0
    IL_00a8:  ldfld      class Game.ComponentPathfinding Game.ComponentRandomPeckBehavior::m_componentPathfinding
    IL_00ad:  ldloc.1
    IL_00ae:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_00b3:  ldarg.0
    IL_00b4:  ldfld      class Game.Random Game.ComponentRandomPeckBehavior::m_random
    IL_00b9:  ldc.r4     0.5
    IL_00be:  ldc.r4     0.69999999
    IL_00c3:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00c8:  ldc.r4     1.
    IL_00cd:  ldc.i4.0
    IL_00ce:  ldc.i4.0
    IL_00cf:  ldc.i4.1
    IL_00d0:  ldc.i4.0
    IL_00d1:  ldnull
    IL_00d2:  callvirt   instance void Game.ComponentPathfinding::SetDestination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                 float32,
                                                                                 float32,
                                                                                 int32,
                                                                                 bool,
                                                                                 bool,
                                                                                 bool,
                                                                                 class Game.ComponentBody)
    IL_00d7:  ret
  } // end of method ComponentRandomPeckBehavior::'<Load>b__15_2'

  .method private hidebysig instance void 
          '<Load>b__15_3'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       113 (0x71)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentPathfinding Game.ComponentRandomPeckBehavior::m_componentPathfinding
    IL_0006:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPathfinding::get_Destination()
    IL_000b:  stloc.0
    IL_000c:  ldloca.s   V_0
    IL_000e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0013:  brtrue.s   IL_0053

    IL_0015:  ldarg.0
    IL_0016:  ldfld      class Game.Random Game.ComponentRandomPeckBehavior::m_random
    IL_001b:  ldc.r4     0.0
    IL_0020:  ldc.r4     1.
    IL_0025:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_002a:  ldc.r4     0.33000001
    IL_002f:  bge.un.s   IL_0042

    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.StateMachine Game.ComponentRandomPeckBehavior::m_stateMachine
    IL_0037:  ldstr      "Wait"
    IL_003c:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0041:  ret

    IL_0042:  ldarg.0
    IL_0043:  ldfld      class Game.StateMachine Game.ComponentRandomPeckBehavior::m_stateMachine
    IL_0048:  ldstr      "Peck"
    IL_004d:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0052:  ret

    IL_0053:  ldarg.0
    IL_0054:  ldfld      class Game.ComponentPathfinding Game.ComponentRandomPeckBehavior::m_componentPathfinding
    IL_0059:  callvirt   instance bool Game.ComponentPathfinding::get_IsStuck()
    IL_005e:  brfalse.s  IL_0070

    IL_0060:  ldarg.0
    IL_0061:  ldfld      class Game.StateMachine Game.ComponentRandomPeckBehavior::m_stateMachine
    IL_0066:  ldstr      "Stuck"
    IL_006b:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0070:  ret
  } // end of method ComponentRandomPeckBehavior::'<Load>b__15_3'

  .method private hidebysig instance void 
          '<Load>b__15_4'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.Random Game.ComponentRandomPeckBehavior::m_random
    IL_0007:  ldc.r4     0.75
    IL_000c:  ldc.r4     1.
    IL_0011:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0016:  stfld      float32 Game.ComponentRandomPeckBehavior::m_waitTime
    IL_001b:  ret
  } // end of method ComponentRandomPeckBehavior::'<Load>b__15_4'

  .method private hidebysig instance void 
          '<Load>b__15_5'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       139 (0x8b)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      float32 Game.ComponentRandomPeckBehavior::m_waitTime
    IL_0007:  ldarg.0
    IL_0008:  ldfld      float32 Game.ComponentRandomPeckBehavior::m_dt
    IL_000d:  sub
    IL_000e:  stfld      float32 Game.ComponentRandomPeckBehavior::m_waitTime
    IL_0013:  ldarg.0
    IL_0014:  ldfld      float32 Game.ComponentRandomPeckBehavior::m_waitTime
    IL_0019:  ldc.r4     0.0
    IL_001e:  bgt.un.s   IL_008a

    IL_0020:  ldarg.0
    IL_0021:  ldfld      class Game.Random Game.ComponentRandomPeckBehavior::m_random
    IL_0026:  ldc.r4     0.0
    IL_002b:  ldc.r4     1.
    IL_0030:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0035:  ldc.r4     0.25
    IL_003a:  bge.un.s   IL_007a

    IL_003c:  ldarg.0
    IL_003d:  ldfld      class Game.StateMachine Game.ComponentRandomPeckBehavior::m_stateMachine
    IL_0042:  ldstr      "Move"
    IL_0047:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_004c:  ldarg.0
    IL_004d:  ldfld      class Game.Random Game.ComponentRandomPeckBehavior::m_random
    IL_0052:  ldc.r4     0.0
    IL_0057:  ldc.r4     1.
    IL_005c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0061:  ldc.r4     0.33000001
    IL_0066:  bge.un.s   IL_008a

    IL_0068:  ldarg.0
    IL_0069:  ldfld      class Game.ComponentCreature Game.ComponentRandomPeckBehavior::m_componentCreature
    IL_006e:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_0073:  ldc.i4.0
    IL_0074:  callvirt   instance void Game.ComponentCreatureSounds::PlayIdleSound(bool)
    IL_0079:  ret

    IL_007a:  ldarg.0
    IL_007b:  ldfld      class Game.StateMachine Game.ComponentRandomPeckBehavior::m_stateMachine
    IL_0080:  ldstr      "Peck"
    IL_0085:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_008a:  ret
  } // end of method ComponentRandomPeckBehavior::'<Load>b__15_5'

  .method private hidebysig instance void 
          '<Load>b__15_6'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.Random Game.ComponentRandomPeckBehavior::m_random
    IL_0007:  ldc.r4     2.
    IL_000c:  ldc.r4     6.
    IL_0011:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0016:  stfld      float32 Game.ComponentRandomPeckBehavior::m_peckTime
    IL_001b:  ret
  } // end of method ComponentRandomPeckBehavior::'<Load>b__15_6'

  .method private hidebysig instance void 
          '<Load>b__15_7'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       132 (0x84)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      float32 Game.ComponentRandomPeckBehavior::m_peckTime
    IL_0007:  ldarg.0
    IL_0008:  ldfld      float32 Game.ComponentRandomPeckBehavior::m_dt
    IL_000d:  sub
    IL_000e:  stfld      float32 Game.ComponentRandomPeckBehavior::m_peckTime
    IL_0013:  ldarg.0
    IL_0014:  ldfld      class Game.ComponentCreature Game.ComponentRandomPeckBehavior::m_componentCreature
    IL_0019:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_001e:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_0023:  stloc.0
    IL_0024:  ldloca.s   V_0
    IL_0026:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_002b:  brfalse.s  IL_0039

    IL_002d:  ldarg.0
    IL_002e:  ldfld      class Game.ComponentBirdModel Game.ComponentRandomPeckBehavior::m_componentBirdModel
    IL_0033:  ldc.i4.1
    IL_0034:  callvirt   instance void Game.ComponentCreatureModel::set_FeedOrder(bool)
    IL_0039:  ldarg.0
    IL_003a:  ldfld      float32 Game.ComponentRandomPeckBehavior::m_peckTime
    IL_003f:  ldc.r4     0.0
    IL_0044:  bgt.un.s   IL_0083

    IL_0046:  ldarg.0
    IL_0047:  ldfld      class Game.Random Game.ComponentRandomPeckBehavior::m_random
    IL_004c:  ldc.r4     0.0
    IL_0051:  ldc.r4     1.
    IL_0056:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_005b:  ldc.r4     0.25
    IL_0060:  bge.un.s   IL_0073

    IL_0062:  ldarg.0
    IL_0063:  ldfld      class Game.StateMachine Game.ComponentRandomPeckBehavior::m_stateMachine
    IL_0068:  ldstr      "Move"
    IL_006d:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0072:  ret

    IL_0073:  ldarg.0
    IL_0074:  ldfld      class Game.StateMachine Game.ComponentRandomPeckBehavior::m_stateMachine
    IL_0079:  ldstr      "Wait"
    IL_007e:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0083:  ret
  } // end of method ComponentRandomPeckBehavior::'<Load>b__15_7'

  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentRandomPeckBehavior::get_UpdateOrder()
  } // end of property ComponentRandomPeckBehavior::UpdateOrder
  .property instance float32 ImportanceLevel()
  {
    .get instance float32 Game.ComponentRandomPeckBehavior::get_ImportanceLevel()
  } // end of property ComponentRandomPeckBehavior::ImportanceLevel
} // end of class Game.ComponentRandomPeckBehavior