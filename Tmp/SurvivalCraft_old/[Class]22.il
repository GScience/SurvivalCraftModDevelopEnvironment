.class public auto ansi beforefieldinit Game.ComponentLayEggBehavior
       extends Game.ComponentBehavior
       implements Game.IUpdateable
{
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemPickables m_subsystemPickables
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.ComponentCreature m_componentCreature
  .field private class Game.ComponentPathfinding m_componentPathfinding
  .field private class Game.EggBlock/EggType m_eggType
  .field private class Game.StateMachine m_stateMachine
  .field private float32 m_importanceLevel
  .field private float32 m_dt
  .field private float32 m_layTime
  .field private class Game.Random m_random
  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentLayEggBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       143 (0x8f)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.StateMachine Game.ComponentLayEggBehavior::m_stateMachine
    IL_0006:  callvirt   instance string Game.StateMachine::get_CurrentState()
    IL_000b:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0010:  brfalse.s  IL_0022

    IL_0012:  ldarg.0
    IL_0013:  ldfld      class Game.StateMachine Game.ComponentLayEggBehavior::m_stateMachine
    IL_0018:  ldstr      "Move"
    IL_001d:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class Game.EggBlock/EggType Game.ComponentLayEggBehavior::m_eggType
    IL_0028:  brfalse.s  IL_0063

    IL_002a:  ldarg.0
    IL_002b:  ldfld      class Game.Random Game.ComponentLayEggBehavior::m_random
    IL_0030:  ldc.r4     0.0
    IL_0035:  ldc.r4     1.
    IL_003a:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_003f:  ldc.r4     7.4999998e-003
    IL_0044:  ldarg.1
    IL_0045:  mul
    IL_0046:  bge.un.s   IL_0063

    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  ldfld      class Game.Random Game.ComponentLayEggBehavior::m_random
    IL_004f:  ldc.r4     1.
    IL_0054:  ldc.r4     2.
    IL_0059:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_005e:  stfld      float32 Game.ComponentLayEggBehavior::m_importanceLevel
    IL_0063:  ldarg.0
    IL_0064:  ldarg.1
    IL_0065:  stfld      float32 Game.ComponentLayEggBehavior::m_dt
    IL_006a:  ldarg.0
    IL_006b:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0070:  brfalse.s  IL_007e

    IL_0072:  ldarg.0
    IL_0073:  ldfld      class Game.StateMachine Game.ComponentLayEggBehavior::m_stateMachine
    IL_0078:  callvirt   instance void Game.StateMachine::Update()
    IL_007d:  ret

    IL_007e:  ldarg.0
    IL_007f:  ldfld      class Game.StateMachine Game.ComponentLayEggBehavior::m_stateMachine
    IL_0084:  ldstr      "Inactive"
    IL_0089:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_008e:  ret
  } // end of method ComponentLayEggBehavior::Update

  .method public hidebysig specialname virtual 
          instance float32  get_ImportanceLevel() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentLayEggBehavior::m_importanceLevel
    IL_0006:  ret
  } // end of method ComponentLayEggBehavior::get_ImportanceLevel

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       298 (0x12a)
    .maxstack  5
    .locals init (class Game.EggBlock V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_000d:  stfld      class Game.SubsystemTime Game.ComponentLayEggBehavior::m_subsystemTime
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_001f:  stfld      class Game.SubsystemTerrain Game.ComponentLayEggBehavior::m_subsystemTerrain
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPickables>(bool)
    IL_0031:  stfld      class Game.SubsystemPickables Game.ComponentLayEggBehavior::m_subsystemPickables
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0043:  stfld      class Game.SubsystemAudio Game.ComponentLayEggBehavior::m_subsystemAudio
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_0055:  stfld      class Game.ComponentCreature Game.ComponentLayEggBehavior::m_componentCreature
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPathfinding>(bool)
    IL_0067:  stfld      class Game.ComponentPathfinding Game.ComponentLayEggBehavior::m_componentPathfinding
    IL_006c:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0071:  ldc.i4.s   118
    IL_0073:  ldelem.ref
    IL_0074:  castclass  Game.EggBlock
    IL_0079:  stloc.0
    IL_007a:  ldarg.0
    IL_007b:  ldloc.0
    IL_007c:  ldarg.0
    IL_007d:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0082:  callvirt   instance class [EntitySystem]TemplatesDatabase.ValuesDictionary [EntitySystem]GameEntitySystem.Entity::get_ValuesDictionary()
    IL_0087:  callvirt   instance class [EntitySystem]TemplatesDatabase.DatabaseObject [EntitySystem]TemplatesDatabase.ValuesDictionary::get_DatabaseObject()
    IL_008c:  callvirt   instance string [EntitySystem]TemplatesDatabase.DatabaseObject::get_Name()
    IL_0091:  callvirt   instance class Game.EggBlock/EggType Game.EggBlock::GetEggTypeByCreatureTemplateName(string)
    IL_0096:  stfld      class Game.EggBlock/EggType Game.ComponentLayEggBehavior::m_eggType
    IL_009b:  ldarg.0
    IL_009c:  ldfld      class Game.StateMachine Game.ComponentLayEggBehavior::m_stateMachine
    IL_00a1:  ldstr      "Inactive"
    IL_00a6:  ldnull
    IL_00a7:  ldarg.0
    IL_00a8:  ldftn      instance void Game.ComponentLayEggBehavior::'<Load>b__17_0'()
    IL_00ae:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00b3:  ldnull
    IL_00b4:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_00b9:  ldarg.0
    IL_00ba:  ldfld      class Game.StateMachine Game.ComponentLayEggBehavior::m_stateMachine
    IL_00bf:  ldstr      "Stuck"
    IL_00c4:  ldarg.0
    IL_00c5:  ldftn      instance void Game.ComponentLayEggBehavior::'<Load>b__17_1'()
    IL_00cb:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00d0:  ldnull
    IL_00d1:  ldnull
    IL_00d2:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_00d7:  ldarg.0
    IL_00d8:  ldfld      class Game.StateMachine Game.ComponentLayEggBehavior::m_stateMachine
    IL_00dd:  ldstr      "Move"
    IL_00e2:  ldarg.0
    IL_00e3:  ldftn      instance void Game.ComponentLayEggBehavior::'<Load>b__17_2'()
    IL_00e9:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00ee:  ldarg.0
    IL_00ef:  ldftn      instance void Game.ComponentLayEggBehavior::'<Load>b__17_3'()
    IL_00f5:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00fa:  ldnull
    IL_00fb:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_0100:  ldarg.0
    IL_0101:  ldfld      class Game.StateMachine Game.ComponentLayEggBehavior::m_stateMachine
    IL_0106:  ldstr      "Lay"
    IL_010b:  ldarg.0
    IL_010c:  ldftn      instance void Game.ComponentLayEggBehavior::'<Load>b__17_4'()
    IL_0112:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0117:  ldarg.0
    IL_0118:  ldftn      instance void Game.ComponentLayEggBehavior::'<Load>b__17_5'()
    IL_011e:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0123:  ldnull
    IL_0124:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_0129:  ret
  } // end of method ComponentLayEggBehavior::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.StateMachine::.ctor()
    IL_0006:  stfld      class Game.StateMachine Game.ComponentLayEggBehavior::m_stateMachine
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.Random::.ctor()
    IL_0011:  stfld      class Game.Random Game.ComponentLayEggBehavior::m_random
    IL_0016:  ldarg.0
    IL_0017:  call       instance void Game.ComponentBehavior::.ctor()
    IL_001c:  ret
  } // end of method ComponentLayEggBehavior::.ctor

  .method private hidebysig instance void 
          '<Load>b__17_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0006:  brfalse.s  IL_0018

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.StateMachine Game.ComponentLayEggBehavior::m_stateMachine
    IL_000e:  ldstr      "Move"
    IL_0013:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0018:  ret
  } // end of method ComponentLayEggBehavior::'<Load>b__17_0'

  .method private hidebysig instance void 
          '<Load>b__17_1'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.StateMachine Game.ComponentLayEggBehavior::m_stateMachine
    IL_0006:  ldstr      "Move"
    IL_000b:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0010:  ret
  } // end of method ComponentLayEggBehavior::'<Load>b__17_1'

  .method private hidebysig instance void 
          '<Load>b__17_2'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       172 (0xac)
    .maxstack  8
    .locals init (float32 V_0,
             valuetype [Engine]Engine.Vector3 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentLayEggBehavior::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_000b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0010:  ldc.r4     5.
    IL_0015:  stloc.0
    IL_0016:  ldloc.0
    IL_0017:  ldarg.0
    IL_0018:  ldfld      class Game.Random Game.ComponentLayEggBehavior::m_random
    IL_001d:  ldc.r4     -1.
    IL_0022:  ldc.r4     1.
    IL_0027:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_002c:  mul
    IL_002d:  ldc.r4     0.0
    IL_0032:  ldloc.0
    IL_0033:  ldarg.0
    IL_0034:  ldfld      class Game.Random Game.ComponentLayEggBehavior::m_random
    IL_0039:  ldc.r4     -1.
    IL_003e:  ldc.r4     1.
    IL_0043:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0048:  mul
    IL_0049:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_004e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0053:  stloc.1
    IL_0054:  ldloca.s   V_1
    IL_0056:  ldarg.0
    IL_0057:  ldfld      class Game.SubsystemTerrain Game.ComponentLayEggBehavior::m_subsystemTerrain
    IL_005c:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0061:  ldloc.1
    IL_0062:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0067:  conv.i4
    IL_0068:  ldloc.1
    IL_0069:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_006e:  conv.i4
    IL_006f:  callvirt   instance int32 Game.TerrainData::GetTopHeightFast(int32,
                                                                           int32)
    IL_0074:  ldc.i4.1
    IL_0075:  add
    IL_0076:  conv.r4
    IL_0077:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_007c:  ldarg.0
    IL_007d:  ldfld      class Game.ComponentPathfinding Game.ComponentLayEggBehavior::m_componentPathfinding
    IL_0082:  ldloc.1
    IL_0083:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0088:  ldarg.0
    IL_0089:  ldfld      class Game.Random Game.ComponentLayEggBehavior::m_random
    IL_008e:  ldc.r4     0.40000001
    IL_0093:  ldc.r4     0.60000002
    IL_0098:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_009d:  ldc.r4     0.5
    IL_00a2:  ldc.i4.0
    IL_00a3:  ldc.i4.0
    IL_00a4:  ldc.i4.1
    IL_00a5:  ldc.i4.0
    IL_00a6:  callvirt   instance void Game.ComponentPathfinding::SetDestination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                 float32,
                                                                                 float32,
                                                                                 int32,
                                                                                 bool,
                                                                                 bool,
                                                                                 bool)
    IL_00ab:  ret
  } // end of method ComponentLayEggBehavior::'<Load>b__17_2'

  .method private hidebysig instance void 
          '<Load>b__17_3'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       108 (0x6c)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentPathfinding Game.ComponentLayEggBehavior::m_componentPathfinding
    IL_0006:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPathfinding::get_Destination()
    IL_000b:  stloc.0
    IL_000c:  ldloca.s   V_0
    IL_000e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0013:  brtrue.s   IL_0026

    IL_0015:  ldarg.0
    IL_0016:  ldfld      class Game.StateMachine Game.ComponentLayEggBehavior::m_stateMachine
    IL_001b:  ldstr      "Lay"
    IL_0020:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0025:  ret

    IL_0026:  ldarg.0
    IL_0027:  ldfld      class Game.ComponentPathfinding Game.ComponentLayEggBehavior::m_componentPathfinding
    IL_002c:  callvirt   instance bool Game.ComponentPathfinding::get_IsStuck()
    IL_0031:  brfalse.s  IL_006b

    IL_0033:  ldarg.0
    IL_0034:  ldfld      class Game.Random Game.ComponentLayEggBehavior::m_random
    IL_0039:  ldc.r4     0.0
    IL_003e:  ldc.r4     1.
    IL_0043:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0048:  ldc.r4     0.5
    IL_004d:  bge.un.s   IL_0060

    IL_004f:  ldarg.0
    IL_0050:  ldfld      class Game.StateMachine Game.ComponentLayEggBehavior::m_stateMachine
    IL_0055:  ldstr      "Stuck"
    IL_005a:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_005f:  ret

    IL_0060:  ldarg.0
    IL_0061:  ldc.r4     0.0
    IL_0066:  stfld      float32 Game.ComponentLayEggBehavior::m_importanceLevel
    IL_006b:  ret
  } // end of method ComponentLayEggBehavior::'<Load>b__17_3'

  .method private hidebysig instance void 
          '<Load>b__17_4'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     0.0
    IL_0006:  stfld      float32 Game.ComponentLayEggBehavior::m_layTime
    IL_000b:  ret
  } // end of method ComponentLayEggBehavior::'<Load>b__17_4'

  .method private hidebysig instance void 
          '<Load>b__17_5'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       500 (0x1f4)
    .maxstack  7
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0,
             int32 V_1,
             valuetype [Engine]Engine.Matrix V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.EggBlock/EggType Game.ComponentLayEggBehavior::m_eggType
    IL_0006:  brfalse    IL_01e8

    IL_000b:  ldarg.0
    IL_000c:  ldarg.0
    IL_000d:  ldfld      float32 Game.ComponentLayEggBehavior::m_layTime
    IL_0012:  ldarg.0
    IL_0013:  ldfld      float32 Game.ComponentLayEggBehavior::m_dt
    IL_0018:  add
    IL_0019:  stfld      float32 Game.ComponentLayEggBehavior::m_layTime
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.ComponentCreature Game.ComponentLayEggBehavior::m_componentCreature
    IL_0024:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0029:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_002e:  stloc.0
    IL_002f:  ldloca.s   V_0
    IL_0031:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0036:  brfalse    IL_01cf

    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.ComponentCreature Game.ComponentLayEggBehavior::m_componentCreature
    IL_0041:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0046:  ldc.r4     0.0
    IL_004b:  ldc.r4     0.25
    IL_0050:  ldc.r8     20.
    IL_0059:  ldarg.0
    IL_005a:  ldfld      class Game.SubsystemTime Game.ComponentLayEggBehavior::m_subsystemTime
    IL_005f:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0064:  mul
    IL_0065:  call       float64 [Engine]Engine.MathUtils::Sin(float64)
    IL_006a:  conv.r4
    IL_006b:  mul
    IL_006c:  ldarg.0
    IL_006d:  ldfld      float32 Game.ComponentLayEggBehavior::m_layTime
    IL_0072:  ldc.r4     3.
    IL_0077:  div
    IL_0078:  add
    IL_0079:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_007e:  ldarg.0
    IL_007f:  ldfld      class Game.ComponentCreature Game.ComponentLayEggBehavior::m_componentCreature
    IL_0084:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0089:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.ComponentLocomotion::get_LookAngles()
    IL_008e:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_0093:  callvirt   instance void Game.ComponentLocomotion::set_LookOrder(valuetype [Engine]Engine.Vector2)
    IL_0098:  ldarg.0
    IL_0099:  ldfld      float32 Game.ComponentLayEggBehavior::m_layTime
    IL_009e:  ldc.r4     3.
    IL_00a3:  blt.un     IL_01f3

    IL_00a8:  ldarg.0
    IL_00a9:  ldc.r4     0.0
    IL_00ae:  stfld      float32 Game.ComponentLayEggBehavior::m_importanceLevel
    IL_00b3:  ldc.i4.s   118
    IL_00b5:  ldc.i4.0
    IL_00b6:  ldc.i4.0
    IL_00b7:  ldarg.0
    IL_00b8:  ldfld      class Game.EggBlock/EggType Game.ComponentLayEggBehavior::m_eggType
    IL_00bd:  ldfld      int32 Game.EggBlock/EggType::EggTypeIndex
    IL_00c2:  call       int32 Game.EggBlock::SetEggType(int32,
                                                         int32)
    IL_00c7:  ldc.i4.1
    IL_00c8:  call       int32 Game.EggBlock::SetIsLaid(int32,
                                                        bool)
    IL_00cd:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_00d2:  stloc.1
    IL_00d3:  ldarg.0
    IL_00d4:  ldfld      class Game.ComponentCreature Game.ComponentLayEggBehavior::m_componentCreature
    IL_00d9:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00de:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_00e3:  stloc.2
    IL_00e4:  ldc.r4     0.5
    IL_00e9:  ldarg.0
    IL_00ea:  ldfld      class Game.ComponentCreature Game.ComponentLayEggBehavior::m_componentCreature
    IL_00ef:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00f4:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_00f9:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_00fe:  ldarg.0
    IL_00ff:  ldfld      class Game.ComponentCreature Game.ComponentLayEggBehavior::m_componentCreature
    IL_0104:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0109:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_010e:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0113:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0118:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_011d:  stloc.3
    IL_011e:  ldc.r4     3.
    IL_0123:  ldloca.s   V_2
    IL_0125:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_012a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_012f:  ldc.r4     0.1
    IL_0134:  ldloca.s   V_2
    IL_0136:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Up()
    IL_013b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0140:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0145:  ldc.r4     0.2
    IL_014a:  ldarg.0
    IL_014b:  ldfld      class Game.Random Game.ComponentLayEggBehavior::m_random
    IL_0150:  ldc.r4     -1.
    IL_0155:  ldc.r4     1.
    IL_015a:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_015f:  mul
    IL_0160:  ldloca.s   V_2
    IL_0162:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_0167:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_016c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0171:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0176:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_017b:  stloc.s    V_4
    IL_017d:  ldarg.0
    IL_017e:  ldfld      class Game.SubsystemPickables Game.ComponentLayEggBehavior::m_subsystemPickables
    IL_0183:  ldloc.1
    IL_0184:  ldc.i4.1
    IL_0185:  ldloc.3
    IL_0186:  ldloc.s    V_4
    IL_0188:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_018d:  ldloca.s   V_5
    IL_018f:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0195:  ldloc.s    V_5
    IL_0197:  callvirt   instance class Game.Pickable Game.SubsystemPickables::AddPickable(int32,
                                                                                           int32,
                                                                                           valuetype [Engine]Engine.Vector3,
                                                                                           valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                           valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_019c:  pop
    IL_019d:  ldarg.0
    IL_019e:  ldfld      class Game.SubsystemAudio Game.ComponentLayEggBehavior::m_subsystemAudio
    IL_01a3:  ldstr      "Audio/EggLaid"
    IL_01a8:  ldc.r4     1.
    IL_01ad:  ldarg.0
    IL_01ae:  ldfld      class Game.Random Game.ComponentLayEggBehavior::m_random
    IL_01b3:  ldc.r4     -0.1
    IL_01b8:  ldc.r4     0.1
    IL_01bd:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01c2:  ldloc.3
    IL_01c3:  ldc.r4     2.
    IL_01c8:  ldc.i4.1
    IL_01c9:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_01ce:  ret

    IL_01cf:  ldarg.0
    IL_01d0:  ldfld      float32 Game.ComponentLayEggBehavior::m_layTime
    IL_01d5:  ldc.r4     3.
    IL_01da:  blt.un.s   IL_01f3

    IL_01dc:  ldarg.0
    IL_01dd:  ldc.r4     0.0
    IL_01e2:  stfld      float32 Game.ComponentLayEggBehavior::m_importanceLevel
    IL_01e7:  ret

    IL_01e8:  ldarg.0
    IL_01e9:  ldc.r4     0.0
    IL_01ee:  stfld      float32 Game.ComponentLayEggBehavior::m_importanceLevel
    IL_01f3:  ret
  } // end of method ComponentLayEggBehavior::'<Load>b__17_5'

  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentLayEggBehavior::get_UpdateOrder()
  } // end of property ComponentLayEggBehavior::UpdateOrder
  .property instance float32 ImportanceLevel()
  {
    .get instance float32 Game.ComponentLayEggBehavior::get_ImportanceLevel()
  } // end of property ComponentLayEggBehavior::ImportanceLevel
} // end of class Game.ComponentLayEggBehavior