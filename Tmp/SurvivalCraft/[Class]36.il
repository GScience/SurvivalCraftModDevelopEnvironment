.class public auto ansi beforefieldinit Game.ComponentWalkAroundBehavior
       extends Game.ComponentBehavior
       implements Game.IUpdateable
{
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.ComponentCreature m_componentCreature
  .field private class Game.ComponentPathfinding m_componentPathfinding
  .field private class Game.StateMachine m_stateMachine
  .field private class Game.Random m_random
  .field private float32 m_importanceLevel
  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentWalkAroundBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.StateMachine Game.ComponentWalkAroundBehavior::m_stateMachine
    IL_0006:  callvirt   instance void Game.StateMachine::Update()
    IL_000b:  ret
  } // end of method ComponentWalkAroundBehavior::Update

  .method public hidebysig specialname virtual 
          instance float32  get_ImportanceLevel() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentWalkAroundBehavior::m_importanceLevel
    IL_0006:  ret
  } // end of method ComponentWalkAroundBehavior::get_ImportanceLevel

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       171 (0xab)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_000d:  stfld      class Game.SubsystemTerrain Game.ComponentWalkAroundBehavior::m_subsystemTerrain
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_001f:  stfld      class Game.SubsystemTime Game.ComponentWalkAroundBehavior::m_subsystemTime
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_0031:  stfld      class Game.ComponentCreature Game.ComponentWalkAroundBehavior::m_componentCreature
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPathfinding>(bool)
    IL_0043:  stfld      class Game.ComponentPathfinding Game.ComponentWalkAroundBehavior::m_componentPathfinding
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.StateMachine Game.ComponentWalkAroundBehavior::m_stateMachine
    IL_004e:  ldstr      "Inactive"
    IL_0053:  ldarg.0
    IL_0054:  ldftn      instance void Game.ComponentWalkAroundBehavior::'<Load>b__12_0'()
    IL_005a:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_005f:  ldarg.0
    IL_0060:  ldftn      instance void Game.ComponentWalkAroundBehavior::'<Load>b__12_1'()
    IL_0066:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_006b:  ldnull
    IL_006c:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_0071:  ldarg.0
    IL_0072:  ldfld      class Game.StateMachine Game.ComponentWalkAroundBehavior::m_stateMachine
    IL_0077:  ldstr      "Walk"
    IL_007c:  ldarg.0
    IL_007d:  ldftn      instance void Game.ComponentWalkAroundBehavior::'<Load>b__12_2'()
    IL_0083:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0088:  ldarg.0
    IL_0089:  ldftn      instance void Game.ComponentWalkAroundBehavior::'<Load>b__12_3'()
    IL_008f:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0094:  ldnull
    IL_0095:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_009a:  ldarg.0
    IL_009b:  ldfld      class Game.StateMachine Game.ComponentWalkAroundBehavior::m_stateMachine
    IL_00a0:  ldstr      "Inactive"
    IL_00a5:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_00aa:  ret
  } // end of method ComponentWalkAroundBehavior::Load

  .method private hidebysig instance valuetype [Engine]Engine.Vector3 
          FindDestination() cil managed
  {
    // 代码大小       199 (0xc7)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             float32 V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             int32 V_3,
             valuetype [Engine]Engine.Vector2 V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             float32 V_6)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentWalkAroundBehavior::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_000b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0010:  stloc.0
    IL_0011:  ldc.r4     0.0
    IL_0016:  stloc.1
    IL_0017:  ldloc.0
    IL_0018:  stloc.2
    IL_0019:  ldc.i4.0
    IL_001a:  stloc.3
    IL_001b:  br         IL_00bd

    IL_0020:  ldarg.0
    IL_0021:  ldfld      class Game.Random Game.ComponentWalkAroundBehavior::m_random
    IL_0026:  ldc.r4     1.
    IL_002b:  ldc.i4.0
    IL_002c:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Random::Vector2(float32,
                                                                                        bool)
    IL_0031:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Normalize(valuetype [Engine]Engine.Vector2)
    IL_0036:  ldarg.0
    IL_0037:  ldfld      class Game.Random Game.ComponentWalkAroundBehavior::m_random
    IL_003c:  ldc.r4     6.
    IL_0041:  ldc.r4     12.
    IL_0046:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_004b:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0050:  stloc.s    V_4
    IL_0052:  ldloca.s   V_5
    IL_0054:  ldloc.0
    IL_0055:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_005a:  ldloc.s    V_4
    IL_005c:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0061:  add
    IL_0062:  ldc.r4     0.0
    IL_0067:  ldloc.0
    IL_0068:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_006d:  ldloc.s    V_4
    IL_006f:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0074:  add
    IL_0075:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_007a:  ldloca.s   V_5
    IL_007c:  ldarg.0
    IL_007d:  ldfld      class Game.SubsystemTerrain Game.ComponentWalkAroundBehavior::m_subsystemTerrain
    IL_0082:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0087:  ldloc.s    V_5
    IL_0089:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_008e:  conv.i4
    IL_008f:  ldloc.s    V_5
    IL_0091:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0096:  conv.i4
    IL_0097:  callvirt   instance int32 Game.TerrainData::GetTopHeightFast(int32,
                                                                           int32)
    IL_009c:  ldc.i4.1
    IL_009d:  add
    IL_009e:  conv.r4
    IL_009f:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_00a4:  ldarg.0
    IL_00a5:  ldloc.s    V_5
    IL_00a7:  call       instance float32 Game.ComponentWalkAroundBehavior::ScoreDestination(valuetype [Engine]Engine.Vector3)
    IL_00ac:  stloc.s    V_6
    IL_00ae:  ldloc.s    V_6
    IL_00b0:  ldloc.1
    IL_00b1:  ble.un.s   IL_00b9

    IL_00b3:  ldloc.s    V_6
    IL_00b5:  stloc.1
    IL_00b6:  ldloc.s    V_5
    IL_00b8:  stloc.2
    IL_00b9:  ldloc.3
    IL_00ba:  ldc.i4.1
    IL_00bb:  add
    IL_00bc:  stloc.3
    IL_00bd:  ldloc.3
    IL_00be:  ldc.i4.s   16
    IL_00c0:  blt        IL_0020

    IL_00c5:  ldloc.2
    IL_00c6:  ret
  } // end of method ComponentWalkAroundBehavior::FindDestination

  .method private hidebysig instance float32 
          ScoreDestination(valuetype [Engine]Engine.Vector3 destination) cil managed
  {
    // 代码大小       93 (0x5d)
    .maxstack  4
    .locals init (float32 V_0)
    IL_0000:  ldc.r4     8.
    IL_0005:  ldarg.0
    IL_0006:  ldfld      class Game.ComponentCreature Game.ComponentWalkAroundBehavior::m_componentCreature
    IL_000b:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0010:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0015:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_001a:  ldarg.1
    IL_001b:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0020:  sub
    IL_0021:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0026:  sub
    IL_0027:  stloc.0
    IL_0028:  ldarg.0
    IL_0029:  ldfld      class Game.SubsystemTerrain Game.ComponentWalkAroundBehavior::m_subsystemTerrain
    IL_002e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0033:  ldarg.1
    IL_0034:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0039:  conv.i4
    IL_003a:  ldarg.1
    IL_003b:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0040:  conv.i4
    IL_0041:  ldc.i4.1
    IL_0042:  sub
    IL_0043:  ldarg.1
    IL_0044:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0049:  conv.i4
    IL_004a:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_004f:  ldc.i4.s   18
    IL_0051:  bne.un.s   IL_005b

    IL_0053:  ldloc.0
    IL_0054:  ldc.r4     5.
    IL_0059:  sub
    IL_005a:  stloc.0
    IL_005b:  ldloc.0
    IL_005c:  ret
  } // end of method ComponentWalkAroundBehavior::ScoreDestination

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.StateMachine::.ctor()
    IL_0006:  stfld      class Game.StateMachine Game.ComponentWalkAroundBehavior::m_stateMachine
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.Random::.ctor()
    IL_0011:  stfld      class Game.Random Game.ComponentWalkAroundBehavior::m_random
    IL_0016:  ldarg.0
    IL_0017:  call       instance void Game.ComponentBehavior::.ctor()
    IL_001c:  ret
  } // end of method ComponentWalkAroundBehavior::.ctor

  .method private hidebysig instance void 
          '<Load>b__12_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.Random Game.ComponentWalkAroundBehavior::m_random
    IL_0007:  ldc.r4     0.0
    IL_000c:  ldc.r4     1.
    IL_0011:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0016:  stfld      float32 Game.ComponentWalkAroundBehavior::m_importanceLevel
    IL_001b:  ret
  } // end of method ComponentWalkAroundBehavior::'<Load>b__12_0'

  .method private hidebysig instance void 
          '<Load>b__12_1'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       92 (0x5c)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Random Game.ComponentWalkAroundBehavior::m_random
    IL_0006:  ldc.r4     0.0
    IL_000b:  ldc.r4     1.
    IL_0010:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0015:  ldc.r4     5.0000001e-002
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.SubsystemTime Game.ComponentWalkAroundBehavior::m_subsystemTime
    IL_0020:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_0025:  mul
    IL_0026:  bge.un.s   IL_0043

    IL_0028:  ldarg.0
    IL_0029:  ldarg.0
    IL_002a:  ldfld      class Game.Random Game.ComponentWalkAroundBehavior::m_random
    IL_002f:  ldc.r4     1.
    IL_0034:  ldc.r4     2.
    IL_0039:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_003e:  stfld      float32 Game.ComponentWalkAroundBehavior::m_importanceLevel
    IL_0043:  ldarg.0
    IL_0044:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0049:  brfalse.s  IL_005b

    IL_004b:  ldarg.0
    IL_004c:  ldfld      class Game.StateMachine Game.ComponentWalkAroundBehavior::m_stateMachine
    IL_0051:  ldstr      "Walk"
    IL_0056:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_005b:  ret
  } // end of method ComponentWalkAroundBehavior::'<Load>b__12_1'

  .method private hidebysig instance void 
          '<Load>b__12_2'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       85 (0x55)
    .maxstack  8
    .locals init (float32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentWalkAroundBehavior::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_000b:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_0010:  ldc.r4     0.5
    IL_0015:  bgt.s      IL_002e

    IL_0017:  ldarg.0
    IL_0018:  ldfld      class Game.Random Game.ComponentWalkAroundBehavior::m_random
    IL_001d:  ldc.r4     0.30000001
    IL_0022:  ldc.r4     0.40000001
    IL_0027:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_002c:  br.s       IL_0033

    IL_002e:  ldc.r4     1.
    IL_0033:  stloc.0
    IL_0034:  ldarg.0
    IL_0035:  ldfld      class Game.ComponentPathfinding Game.ComponentWalkAroundBehavior::m_componentPathfinding
    IL_003a:  ldarg.0
    IL_003b:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentWalkAroundBehavior::FindDestination()
    IL_0040:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0045:  ldloc.0
    IL_0046:  ldc.r4     1.
    IL_004b:  ldc.i4.0
    IL_004c:  ldc.i4.0
    IL_004d:  ldc.i4.1
    IL_004e:  ldc.i4.0
    IL_004f:  callvirt   instance void Game.ComponentPathfinding::SetDestination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                 float32,
                                                                                 float32,
                                                                                 int32,
                                                                                 bool,
                                                                                 bool,
                                                                                 bool)
    IL_0054:  ret
  } // end of method ComponentWalkAroundBehavior::'<Load>b__12_2'

  .method private hidebysig instance void 
          '<Load>b__12_3'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       207 (0xcf)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentPathfinding Game.ComponentWalkAroundBehavior::m_componentPathfinding
    IL_0006:  callvirt   instance bool Game.ComponentPathfinding::get_IsStuck()
    IL_000b:  brtrue.s   IL_0015

    IL_000d:  ldarg.0
    IL_000e:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0013:  brtrue.s   IL_0025

    IL_0015:  ldarg.0
    IL_0016:  ldfld      class Game.StateMachine Game.ComponentWalkAroundBehavior::m_stateMachine
    IL_001b:  ldstr      "Inactive"
    IL_0020:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0025:  ldarg.0
    IL_0026:  ldfld      class Game.ComponentPathfinding Game.ComponentWalkAroundBehavior::m_componentPathfinding
    IL_002b:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPathfinding::get_Destination()
    IL_0030:  stloc.0
    IL_0031:  ldloca.s   V_0
    IL_0033:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0038:  brtrue.s   IL_0084

    IL_003a:  ldarg.0
    IL_003b:  ldfld      class Game.Random Game.ComponentWalkAroundBehavior::m_random
    IL_0040:  ldc.r4     0.0
    IL_0045:  ldc.r4     1.
    IL_004a:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_004f:  ldc.r4     0.5
    IL_0054:  bge.un.s   IL_0068

    IL_0056:  ldarg.0
    IL_0057:  ldfld      class Game.StateMachine Game.ComponentWalkAroundBehavior::m_stateMachine
    IL_005c:  ldstr      "Inactive"
    IL_0061:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0066:  br.s       IL_0084

    IL_0068:  ldarg.0
    IL_0069:  ldfld      class Game.StateMachine Game.ComponentWalkAroundBehavior::m_stateMachine
    IL_006e:  ldnull
    IL_006f:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0074:  ldarg.0
    IL_0075:  ldfld      class Game.StateMachine Game.ComponentWalkAroundBehavior::m_stateMachine
    IL_007a:  ldstr      "Walk"
    IL_007f:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0084:  ldarg.0
    IL_0085:  ldfld      class Game.Random Game.ComponentWalkAroundBehavior::m_random
    IL_008a:  ldc.r4     0.0
    IL_008f:  ldc.r4     1.
    IL_0094:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0099:  ldc.r4     0.1
    IL_009e:  ldarg.0
    IL_009f:  ldfld      class Game.SubsystemTime Game.ComponentWalkAroundBehavior::m_subsystemTime
    IL_00a4:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_00a9:  mul
    IL_00aa:  bge.un.s   IL_00bd

    IL_00ac:  ldarg.0
    IL_00ad:  ldfld      class Game.ComponentCreature Game.ComponentWalkAroundBehavior::m_componentCreature
    IL_00b2:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_00b7:  ldc.i4.0
    IL_00b8:  callvirt   instance void Game.ComponentCreatureSounds::PlayIdleSound(bool)
    IL_00bd:  ldarg.0
    IL_00be:  ldfld      class Game.ComponentCreature Game.ComponentWalkAroundBehavior::m_componentCreature
    IL_00c3:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_00c8:  ldc.i4.1
    IL_00c9:  callvirt   instance void Game.ComponentCreatureModel::set_LookRandomOrder(bool)
    IL_00ce:  ret
  } // end of method ComponentWalkAroundBehavior::'<Load>b__12_3'

  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentWalkAroundBehavior::get_UpdateOrder()
  } // end of property ComponentWalkAroundBehavior::UpdateOrder
  .property instance float32 ImportanceLevel()
  {
    .get instance float32 Game.ComponentWalkAroundBehavior::get_ImportanceLevel()
  } // end of property ComponentWalkAroundBehavior::ImportanceLevel
} // end of class Game.ComponentWalkAroundBehavior