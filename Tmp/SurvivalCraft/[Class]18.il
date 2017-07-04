.class public auto ansi beforefieldinit Game.ComponentFlyAroundBehavior
       extends Game.ComponentBehavior
       implements Game.IUpdateable
{
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.ComponentCreature m_componentCreature
  .field private class Game.ComponentPathfinding m_componentPathfinding
  .field private class Game.StateMachine m_stateMachine
  .field private float32 m_angle
  .field private float32 m_importanceLevel
  .field private class Game.Random m_random
  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentFlyAroundBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       128 (0x80)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.StateMachine Game.ComponentFlyAroundBehavior::m_stateMachine
    IL_0006:  callvirt   instance string Game.StateMachine::get_CurrentState()
    IL_000b:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0010:  brfalse.s  IL_0022

    IL_0012:  ldarg.0
    IL_0013:  ldfld      class Game.StateMachine Game.ComponentFlyAroundBehavior::m_stateMachine
    IL_0018:  ldstr      "Inactive"
    IL_001d:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class Game.Random Game.ComponentFlyAroundBehavior::m_random
    IL_0028:  ldc.r4     0.0
    IL_002d:  ldc.r4     1.
    IL_0032:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0037:  ldc.r4     5.0000001e-002
    IL_003c:  ldarg.1
    IL_003d:  mul
    IL_003e:  bge.un.s   IL_005b

    IL_0040:  ldarg.0
    IL_0041:  ldarg.0
    IL_0042:  ldfld      class Game.Random Game.ComponentFlyAroundBehavior::m_random
    IL_0047:  ldc.r4     1.
    IL_004c:  ldc.r4     2.
    IL_0051:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0056:  stfld      float32 Game.ComponentFlyAroundBehavior::m_importanceLevel
    IL_005b:  ldarg.0
    IL_005c:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0061:  brfalse.s  IL_006f

    IL_0063:  ldarg.0
    IL_0064:  ldfld      class Game.StateMachine Game.ComponentFlyAroundBehavior::m_stateMachine
    IL_0069:  callvirt   instance void Game.StateMachine::Update()
    IL_006e:  ret

    IL_006f:  ldarg.0
    IL_0070:  ldfld      class Game.StateMachine Game.ComponentFlyAroundBehavior::m_stateMachine
    IL_0075:  ldstr      "Inactive"
    IL_007a:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_007f:  ret
  } // end of method ComponentFlyAroundBehavior::Update

  .method public hidebysig specialname virtual 
          instance float32  get_ImportanceLevel() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentFlyAroundBehavior::m_importanceLevel
    IL_0006:  ret
  } // end of method ComponentFlyAroundBehavior::get_ImportanceLevel

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       156 (0x9c)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_000d:  stfld      class Game.SubsystemTerrain Game.ComponentFlyAroundBehavior::m_subsystemTerrain
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_001f:  stfld      class Game.ComponentCreature Game.ComponentFlyAroundBehavior::m_componentCreature
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPathfinding>(bool)
    IL_0031:  stfld      class Game.ComponentPathfinding Game.ComponentFlyAroundBehavior::m_componentPathfinding
    IL_0036:  ldarg.0
    IL_0037:  ldfld      class Game.StateMachine Game.ComponentFlyAroundBehavior::m_stateMachine
    IL_003c:  ldstr      "Inactive"
    IL_0041:  ldnull
    IL_0042:  ldarg.0
    IL_0043:  ldftn      instance void Game.ComponentFlyAroundBehavior::'<Load>b__12_0'()
    IL_0049:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_004e:  ldnull
    IL_004f:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_0054:  ldarg.0
    IL_0055:  ldfld      class Game.StateMachine Game.ComponentFlyAroundBehavior::m_stateMachine
    IL_005a:  ldstr      "Stuck"
    IL_005f:  ldarg.0
    IL_0060:  ldftn      instance void Game.ComponentFlyAroundBehavior::'<Load>b__12_1'()
    IL_0066:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_006b:  ldnull
    IL_006c:  ldnull
    IL_006d:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_0072:  ldarg.0
    IL_0073:  ldfld      class Game.StateMachine Game.ComponentFlyAroundBehavior::m_stateMachine
    IL_0078:  ldstr      "Fly"
    IL_007d:  ldarg.0
    IL_007e:  ldftn      instance void Game.ComponentFlyAroundBehavior::'<Load>b__12_2'()
    IL_0084:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0089:  ldarg.0
    IL_008a:  ldftn      instance void Game.ComponentFlyAroundBehavior::'<Load>b__12_3'()
    IL_0090:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0095:  ldnull
    IL_0096:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_009b:  ret
  } // end of method ComponentFlyAroundBehavior::Load

  .method private hidebysig instance float32 
          EstimateHeight(valuetype [Engine]Engine.Vector2 position,
                         int32 radius) cil managed
  {
    // 代码大小       97 (0x61)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldc.i4.0
    IL_0003:  stloc.1
    IL_0004:  br.s       IL_0059

    IL_0006:  ldarg.1
    IL_0007:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_000c:  call       int32 Game.Terrain::ToCell(float32)
    IL_0011:  ldarg.0
    IL_0012:  ldfld      class Game.Random Game.ComponentFlyAroundBehavior::m_random
    IL_0017:  ldarg.2
    IL_0018:  neg
    IL_0019:  ldarg.2
    IL_001a:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_001f:  add
    IL_0020:  stloc.2
    IL_0021:  ldarg.1
    IL_0022:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0027:  call       int32 Game.Terrain::ToCell(float32)
    IL_002c:  ldarg.0
    IL_002d:  ldfld      class Game.Random Game.ComponentFlyAroundBehavior::m_random
    IL_0032:  ldarg.2
    IL_0033:  neg
    IL_0034:  ldarg.2
    IL_0035:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_003a:  add
    IL_003b:  stloc.3
    IL_003c:  ldloc.0
    IL_003d:  ldarg.0
    IL_003e:  ldfld      class Game.SubsystemTerrain Game.ComponentFlyAroundBehavior::m_subsystemTerrain
    IL_0043:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0048:  ldloc.2
    IL_0049:  ldloc.3
    IL_004a:  callvirt   instance int32 Game.Terrain::GetTopHeight(int32,
                                                                   int32)
    IL_004f:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0054:  stloc.0
    IL_0055:  ldloc.1
    IL_0056:  ldc.i4.1
    IL_0057:  add
    IL_0058:  stloc.1
    IL_0059:  ldloc.1
    IL_005a:  ldc.i4.s   15
    IL_005c:  blt.s      IL_0006

    IL_005e:  ldloc.0
    IL_005f:  conv.r4
    IL_0060:  ret
  } // end of method ComponentFlyAroundBehavior::EstimateHeight

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.StateMachine::.ctor()
    IL_0006:  stfld      class Game.StateMachine Game.ComponentFlyAroundBehavior::m_stateMachine
    IL_000b:  ldarg.0
    IL_000c:  ldc.r4     1.
    IL_0011:  stfld      float32 Game.ComponentFlyAroundBehavior::m_importanceLevel
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void Game.Random::.ctor()
    IL_001c:  stfld      class Game.Random Game.ComponentFlyAroundBehavior::m_random
    IL_0021:  ldarg.0
    IL_0022:  call       instance void Game.ComponentBehavior::.ctor()
    IL_0027:  ret
  } // end of method ComponentFlyAroundBehavior::.ctor

  .method private hidebysig instance void 
          '<Load>b__12_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0006:  brfalse.s  IL_0018

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.StateMachine Game.ComponentFlyAroundBehavior::m_stateMachine
    IL_000e:  ldstr      "Fly"
    IL_0013:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0018:  ret
  } // end of method ComponentFlyAroundBehavior::'<Load>b__12_0'

  .method private hidebysig instance void 
          '<Load>b__12_1'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       73 (0x49)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.StateMachine Game.ComponentFlyAroundBehavior::m_stateMachine
    IL_0006:  ldstr      "Fly"
    IL_000b:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.Random Game.ComponentFlyAroundBehavior::m_random
    IL_0016:  ldc.r4     0.0
    IL_001b:  ldc.r4     1.
    IL_0020:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0025:  ldc.r4     0.5
    IL_002a:  bge.un.s   IL_0048

    IL_002c:  ldarg.0
    IL_002d:  ldfld      class Game.ComponentCreature Game.ComponentFlyAroundBehavior::m_componentCreature
    IL_0032:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_0037:  ldc.i4.0
    IL_0038:  callvirt   instance void Game.ComponentCreatureSounds::PlayIdleSound(bool)
    IL_003d:  ldarg.0
    IL_003e:  ldc.r4     1.
    IL_0043:  stfld      float32 Game.ComponentFlyAroundBehavior::m_importanceLevel
    IL_0048:  ret
  } // end of method ComponentFlyAroundBehavior::'<Load>b__12_1'

  .method private hidebysig instance void 
          '<Load>b__12_2'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       39 (0x27)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.Random Game.ComponentFlyAroundBehavior::m_random
    IL_0007:  ldc.r4     0.0
    IL_000c:  ldc.r4     6.2831855
    IL_0011:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0016:  stfld      float32 Game.ComponentFlyAroundBehavior::m_angle
    IL_001b:  ldarg.0
    IL_001c:  ldfld      class Game.ComponentPathfinding Game.ComponentFlyAroundBehavior::m_componentPathfinding
    IL_0021:  callvirt   instance void Game.ComponentPathfinding::Stop()
    IL_0026:  ret
  } // end of method ComponentFlyAroundBehavior::'<Load>b__12_2'

  .method private hidebysig instance void 
          '<Load>b__12_3'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       366 (0x16e)
    .maxstack  9
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_1,
             float32 V_2,
             valuetype [Engine]Engine.Vector2 V_3,
             valuetype [Engine]Engine.Vector3 V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentFlyAroundBehavior::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_000b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  ldfld      class Game.ComponentPathfinding Game.ComponentFlyAroundBehavior::m_componentPathfinding
    IL_0017:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPathfinding::get_Destination()
    IL_001c:  stloc.1
    IL_001d:  ldloca.s   V_1
    IL_001f:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0024:  brtrue     IL_0150

    IL_0029:  ldarg.0
    IL_002a:  ldfld      class Game.Random Game.ComponentFlyAroundBehavior::m_random
    IL_002f:  ldc.r4     0.0
    IL_0034:  ldc.r4     1.
    IL_0039:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_003e:  ldc.r4     0.2
    IL_0043:  blt.s      IL_005d

    IL_0045:  ldarg.0
    IL_0046:  ldfld      class Game.Random Game.ComponentFlyAroundBehavior::m_random
    IL_004b:  ldc.r4     0.40000001
    IL_0050:  ldc.r4     0.60000002
    IL_0055:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_005a:  neg
    IL_005b:  br.s       IL_0072

    IL_005d:  ldarg.0
    IL_005e:  ldfld      class Game.Random Game.ComponentFlyAroundBehavior::m_random
    IL_0063:  ldc.r4     0.40000001
    IL_0068:  ldc.r4     0.60000002
    IL_006d:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0072:  stloc.2
    IL_0073:  ldarg.0
    IL_0074:  ldarg.0
    IL_0075:  ldfld      float32 Game.ComponentFlyAroundBehavior::m_angle
    IL_007a:  ldloc.2
    IL_007b:  add
    IL_007c:  call       float32 [Engine]Engine.MathUtils::NormalizeAngle(float32)
    IL_0081:  stfld      float32 Game.ComponentFlyAroundBehavior::m_angle
    IL_0086:  ldarg.0
    IL_0087:  ldfld      float32 Game.ComponentFlyAroundBehavior::m_angle
    IL_008c:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::CreateFromAngle(float32)
    IL_0091:  stloc.3
    IL_0092:  ldloc.0
    IL_0093:  ldloc.3
    IL_0094:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0099:  ldc.r4     0.0
    IL_009e:  ldloc.3
    IL_009f:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00a4:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00a9:  ldc.r4     10.
    IL_00ae:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_00b3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00b8:  stloc.s    V_4
    IL_00ba:  ldloca.s   V_4
    IL_00bc:  ldarg.0
    IL_00bd:  ldloc.s    V_4
    IL_00bf:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00c4:  ldloc.s    V_4
    IL_00c6:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00cb:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00d0:  ldc.i4.8
    IL_00d1:  call       instance float32 Game.ComponentFlyAroundBehavior::EstimateHeight(valuetype [Engine]Engine.Vector2,
                                                                                          int32)
    IL_00d6:  ldarg.0
    IL_00d7:  ldfld      class Game.Random Game.ComponentFlyAroundBehavior::m_random
    IL_00dc:  ldc.r4     3.
    IL_00e1:  ldc.r4     5.
    IL_00e6:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00eb:  add
    IL_00ec:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_00f1:  ldarg.0
    IL_00f2:  ldfld      class Game.ComponentPathfinding Game.ComponentFlyAroundBehavior::m_componentPathfinding
    IL_00f7:  ldloc.s    V_4
    IL_00f9:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_00fe:  ldarg.0
    IL_00ff:  ldfld      class Game.Random Game.ComponentFlyAroundBehavior::m_random
    IL_0104:  ldc.r4     0.60000002
    IL_0109:  ldc.r4     1.05
    IL_010e:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0113:  ldc.r4     6.
    IL_0118:  ldc.i4.0
    IL_0119:  ldc.i4.0
    IL_011a:  ldc.i4.1
    IL_011b:  ldc.i4.0
    IL_011c:  ldnull
    IL_011d:  callvirt   instance void Game.ComponentPathfinding::SetDestination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                 float32,
                                                                                 float32,
                                                                                 int32,
                                                                                 bool,
                                                                                 bool,
                                                                                 bool,
                                                                                 class Game.ComponentBody)
    IL_0122:  ldarg.0
    IL_0123:  ldfld      class Game.Random Game.ComponentFlyAroundBehavior::m_random
    IL_0128:  ldc.r4     0.0
    IL_012d:  ldc.r4     1.
    IL_0132:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0137:  ldc.r4     0.15000001
    IL_013c:  bge.un.s   IL_016d

    IL_013e:  ldarg.0
    IL_013f:  ldfld      class Game.ComponentCreature Game.ComponentFlyAroundBehavior::m_componentCreature
    IL_0144:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_0149:  ldc.i4.0
    IL_014a:  callvirt   instance void Game.ComponentCreatureSounds::PlayIdleSound(bool)
    IL_014f:  ret

    IL_0150:  ldarg.0
    IL_0151:  ldfld      class Game.ComponentPathfinding Game.ComponentFlyAroundBehavior::m_componentPathfinding
    IL_0156:  callvirt   instance bool Game.ComponentPathfinding::get_IsStuck()
    IL_015b:  brfalse.s  IL_016d

    IL_015d:  ldarg.0
    IL_015e:  ldfld      class Game.StateMachine Game.ComponentFlyAroundBehavior::m_stateMachine
    IL_0163:  ldstr      "Stuck"
    IL_0168:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_016d:  ret
  } // end of method ComponentFlyAroundBehavior::'<Load>b__12_3'

  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentFlyAroundBehavior::get_UpdateOrder()
  } // end of property ComponentFlyAroundBehavior::UpdateOrder
  .property instance float32 ImportanceLevel()
  {
    .get instance float32 Game.ComponentFlyAroundBehavior::get_ImportanceLevel()
  } // end of property ComponentFlyAroundBehavior::ImportanceLevel
} // end of class Game.ComponentFlyAroundBehavior