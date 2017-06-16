.class public auto ansi beforefieldinit Game.ComponentRandomFeedBehavior
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
  .field private float32 m_feedTime
  .field private float32 m_waitTime
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> m_feedPosition
  .field private bool m_autoFeed
  .method public hidebysig instance void 
          Feed(valuetype [Engine]Engine.Vector3 feedPosition) cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     5.
    IL_0006:  stfld      float32 Game.ComponentRandomFeedBehavior::m_importanceLevel
    IL_000b:  ldarg.0
    IL_000c:  ldarg.1
    IL_000d:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0012:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentRandomFeedBehavior::m_feedPosition
    IL_0017:  ret
  } // end of method ComponentRandomFeedBehavior::Feed

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentRandomFeedBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.StateMachine Game.ComponentRandomFeedBehavior::m_stateMachine
    IL_0006:  callvirt   instance void Game.StateMachine::Update()
    IL_000b:  ret
  } // end of method ComponentRandomFeedBehavior::Update

  .method public hidebysig specialname virtual 
          instance float32  get_ImportanceLevel() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentRandomFeedBehavior::m_importanceLevel
    IL_0006:  ret
  } // end of method ComponentRandomFeedBehavior::get_ImportanceLevel

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       281 (0x119)
    .maxstack  6
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_000d:  stfld      class Game.SubsystemTerrain Game.ComponentRandomFeedBehavior::m_subsystemTerrain
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_001f:  stfld      class Game.SubsystemTime Game.ComponentRandomFeedBehavior::m_subsystemTime
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_0031:  stfld      class Game.ComponentCreature Game.ComponentRandomFeedBehavior::m_componentCreature
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPathfinding>(bool)
    IL_0043:  stfld      class Game.ComponentPathfinding Game.ComponentRandomFeedBehavior::m_componentPathfinding
    IL_0048:  ldarg.0
    IL_0049:  ldarg.1
    IL_004a:  ldstr      "AutoFeed"
    IL_004f:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<bool>(string)
    IL_0054:  stfld      bool Game.ComponentRandomFeedBehavior::m_autoFeed
    IL_0059:  ldarg.0
    IL_005a:  ldfld      class Game.StateMachine Game.ComponentRandomFeedBehavior::m_stateMachine
    IL_005f:  ldstr      "Inactive"
    IL_0064:  ldarg.0
    IL_0065:  ldftn      instance void Game.ComponentRandomFeedBehavior::'<Load>b__17_0'()
    IL_006b:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0070:  ldarg.0
    IL_0071:  ldftn      instance void Game.ComponentRandomFeedBehavior::'<Load>b__17_1'()
    IL_0077:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_007c:  ldnull
    IL_007d:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_0082:  ldarg.0
    IL_0083:  ldfld      class Game.StateMachine Game.ComponentRandomFeedBehavior::m_stateMachine
    IL_0088:  ldstr      "Move"
    IL_008d:  ldarg.0
    IL_008e:  ldftn      instance void Game.ComponentRandomFeedBehavior::'<Load>b__17_2'()
    IL_0094:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0099:  ldarg.0
    IL_009a:  ldftn      instance void Game.ComponentRandomFeedBehavior::'<Load>b__17_3'()
    IL_00a0:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00a5:  ldarg.0
    IL_00a6:  ldftn      instance void Game.ComponentRandomFeedBehavior::'<Load>b__17_4'()
    IL_00ac:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00b1:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_00b6:  ldarg.0
    IL_00b7:  ldfld      class Game.StateMachine Game.ComponentRandomFeedBehavior::m_stateMachine
    IL_00bc:  ldstr      "LookAround"
    IL_00c1:  ldarg.0
    IL_00c2:  ldftn      instance void Game.ComponentRandomFeedBehavior::'<Load>b__17_5'()
    IL_00c8:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00cd:  ldarg.0
    IL_00ce:  ldftn      instance void Game.ComponentRandomFeedBehavior::'<Load>b__17_6'()
    IL_00d4:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00d9:  ldnull
    IL_00da:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_00df:  ldarg.0
    IL_00e0:  ldfld      class Game.StateMachine Game.ComponentRandomFeedBehavior::m_stateMachine
    IL_00e5:  ldstr      "Feed"
    IL_00ea:  ldarg.0
    IL_00eb:  ldftn      instance void Game.ComponentRandomFeedBehavior::'<Load>b__17_7'()
    IL_00f1:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00f6:  ldarg.0
    IL_00f7:  ldftn      instance void Game.ComponentRandomFeedBehavior::'<Load>b__17_8'()
    IL_00fd:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0102:  ldnull
    IL_0103:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_0108:  ldarg.0
    IL_0109:  ldfld      class Game.StateMachine Game.ComponentRandomFeedBehavior::m_stateMachine
    IL_010e:  ldstr      "Inactive"
    IL_0113:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0118:  ret
  } // end of method ComponentRandomFeedBehavior::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.StateMachine::.ctor()
    IL_0006:  stfld      class Game.StateMachine Game.ComponentRandomFeedBehavior::m_stateMachine
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.Random::.ctor()
    IL_0011:  stfld      class Game.Random Game.ComponentRandomFeedBehavior::m_random
    IL_0016:  ldarg.0
    IL_0017:  call       instance void Game.ComponentBehavior::.ctor()
    IL_001c:  ret
  } // end of method ComponentRandomFeedBehavior::.ctor

  .method private hidebysig instance void 
          '<Load>b__17_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.Random Game.ComponentRandomFeedBehavior::m_random
    IL_0007:  ldc.r4     0.0
    IL_000c:  ldc.r4     1.
    IL_0011:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0016:  stfld      float32 Game.ComponentRandomFeedBehavior::m_importanceLevel
    IL_001b:  ret
  } // end of method ComponentRandomFeedBehavior::'<Load>b__17_0'

  .method private hidebysig instance void 
          '<Load>b__17_1'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       92 (0x5c)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Random Game.ComponentRandomFeedBehavior::m_random
    IL_0006:  ldc.r4     0.0
    IL_000b:  ldc.r4     1.
    IL_0010:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0015:  ldc.r4     5.0000001e-002
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.SubsystemTime Game.ComponentRandomFeedBehavior::m_subsystemTime
    IL_0020:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_0025:  mul
    IL_0026:  bge.un.s   IL_0043

    IL_0028:  ldarg.0
    IL_0029:  ldarg.0
    IL_002a:  ldfld      class Game.Random Game.ComponentRandomFeedBehavior::m_random
    IL_002f:  ldc.r4     1.
    IL_0034:  ldc.r4     3.
    IL_0039:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_003e:  stfld      float32 Game.ComponentRandomFeedBehavior::m_importanceLevel
    IL_0043:  ldarg.0
    IL_0044:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0049:  brfalse.s  IL_005b

    IL_004b:  ldarg.0
    IL_004c:  ldfld      class Game.StateMachine Game.ComponentRandomFeedBehavior::m_stateMachine
    IL_0051:  ldstr      "Move"
    IL_0056:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_005b:  ret
  } // end of method ComponentRandomFeedBehavior::'<Load>b__17_1'

  .method private hidebysig instance void 
          '<Load>b__17_2'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       282 (0x11a)
    .maxstack  8
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             float32 V_2,
             valuetype [Engine]Engine.Matrix V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentRandomFeedBehavior::m_feedPosition
    IL_0006:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_000b:  brfalse.s  IL_001e

    IL_000d:  ldarg.0
    IL_000e:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentRandomFeedBehavior::m_feedPosition
    IL_0013:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0018:  stloc.0
    IL_0019:  br         IL_00c2

    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.ComponentCreature Game.ComponentRandomFeedBehavior::m_componentCreature
    IL_0024:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0029:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_002e:  ldarg.0
    IL_002f:  ldfld      class Game.ComponentCreature Game.ComponentRandomFeedBehavior::m_componentCreature
    IL_0034:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0039:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_003e:  stloc.3
    IL_003f:  ldloca.s   V_3
    IL_0041:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_0046:  stloc.1
    IL_0047:  ldarg.0
    IL_0048:  ldfld      class Game.Random Game.ComponentRandomFeedBehavior::m_random
    IL_004d:  ldc.r4     0.0
    IL_0052:  ldc.r4     1.
    IL_0057:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_005c:  ldc.r4     0.2
    IL_0061:  blt.s      IL_006a

    IL_0063:  ldc.r4     1.5
    IL_0068:  br.s       IL_006f

    IL_006a:  ldc.r4     5.
    IL_006f:  stloc.2
    IL_0070:  ldloc.2
    IL_0071:  ldloc.1
    IL_0072:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0077:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_007c:  ldc.r4     0.5
    IL_0081:  ldloc.2
    IL_0082:  mul
    IL_0083:  ldarg.0
    IL_0084:  ldfld      class Game.Random Game.ComponentRandomFeedBehavior::m_random
    IL_0089:  ldc.r4     -1.
    IL_008e:  ldc.r4     1.
    IL_0093:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0098:  ldc.r4     0.0
    IL_009d:  ldarg.0
    IL_009e:  ldfld      class Game.Random Game.ComponentRandomFeedBehavior::m_random
    IL_00a3:  ldc.r4     -1.
    IL_00a8:  ldc.r4     1.
    IL_00ad:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00b2:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00b7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00bc:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00c1:  stloc.0
    IL_00c2:  ldloca.s   V_0
    IL_00c4:  ldarg.0
    IL_00c5:  ldfld      class Game.SubsystemTerrain Game.ComponentRandomFeedBehavior::m_subsystemTerrain
    IL_00ca:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00cf:  ldloc.0
    IL_00d0:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00d5:  conv.i4
    IL_00d6:  ldloc.0
    IL_00d7:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00dc:  conv.i4
    IL_00dd:  callvirt   instance int32 Game.TerrainData::GetTopHeightFast(int32,
                                                                           int32)
    IL_00e2:  ldc.i4.1
    IL_00e3:  add
    IL_00e4:  conv.r4
    IL_00e5:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_00ea:  ldarg.0
    IL_00eb:  ldfld      class Game.ComponentPathfinding Game.ComponentRandomFeedBehavior::m_componentPathfinding
    IL_00f0:  ldloc.0
    IL_00f1:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_00f6:  ldarg.0
    IL_00f7:  ldfld      class Game.Random Game.ComponentRandomFeedBehavior::m_random
    IL_00fc:  ldc.r4     0.30000001
    IL_0101:  ldc.r4     0.40000001
    IL_0106:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_010b:  ldc.r4     1.
    IL_0110:  ldc.i4.0
    IL_0111:  ldc.i4.0
    IL_0112:  ldc.i4.1
    IL_0113:  ldc.i4.0
    IL_0114:  callvirt   instance void Game.ComponentPathfinding::SetDestination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                 float32,
                                                                                 float32,
                                                                                 int32,
                                                                                 bool,
                                                                                 bool,
                                                                                 bool)
    IL_0119:  ret
  } // end of method ComponentRandomFeedBehavior::'<Load>b__17_2'

  .method private hidebysig instance void 
          '<Load>b__17_3'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       148 (0x94)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_0,
             float32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentPathfinding Game.ComponentRandomFeedBehavior::m_componentPathfinding
    IL_0006:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPathfinding::get_Destination()
    IL_000b:  stloc.0
    IL_000c:  ldloca.s   V_0
    IL_000e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0013:  brtrue.s   IL_006e

    IL_0015:  ldarg.0
    IL_0016:  ldfld      class Game.Random Game.ComponentRandomFeedBehavior::m_random
    IL_001b:  ldc.r4     0.0
    IL_0020:  ldc.r4     1.
    IL_0025:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_002a:  stloc.1
    IL_002b:  ldloc.1
    IL_002c:  ldc.r4     0.33000001
    IL_0031:  bge.un.s   IL_0044

    IL_0033:  ldarg.0
    IL_0034:  ldfld      class Game.StateMachine Game.ComponentRandomFeedBehavior::m_stateMachine
    IL_0039:  ldstr      "Inactive"
    IL_003e:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0043:  ret

    IL_0044:  ldloc.1
    IL_0045:  ldc.r4     0.66000003
    IL_004a:  bge.un.s   IL_005d

    IL_004c:  ldarg.0
    IL_004d:  ldfld      class Game.StateMachine Game.ComponentRandomFeedBehavior::m_stateMachine
    IL_0052:  ldstr      "LookAround"
    IL_0057:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_005c:  ret

    IL_005d:  ldarg.0
    IL_005e:  ldfld      class Game.StateMachine Game.ComponentRandomFeedBehavior::m_stateMachine
    IL_0063:  ldstr      "Feed"
    IL_0068:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_006d:  ret

    IL_006e:  ldarg.0
    IL_006f:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0074:  brfalse.s  IL_0083

    IL_0076:  ldarg.0
    IL_0077:  ldfld      class Game.ComponentPathfinding Game.ComponentRandomFeedBehavior::m_componentPathfinding
    IL_007c:  callvirt   instance bool Game.ComponentPathfinding::get_IsStuck()
    IL_0081:  brfalse.s  IL_0093

    IL_0083:  ldarg.0
    IL_0084:  ldfld      class Game.StateMachine Game.ComponentRandomFeedBehavior::m_stateMachine
    IL_0089:  ldstr      "Inactive"
    IL_008e:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0093:  ret
  } // end of method ComponentRandomFeedBehavior::'<Load>b__17_3'

  .method private hidebysig instance void 
          '<Load>b__17_4'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentRandomFeedBehavior::m_feedPosition
    IL_0006:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_000c:  ret
  } // end of method ComponentRandomFeedBehavior::'<Load>b__17_4'

  .method private hidebysig instance void 
          '<Load>b__17_5'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.Random Game.ComponentRandomFeedBehavior::m_random
    IL_0007:  ldc.r4     1.
    IL_000c:  ldc.r4     2.
    IL_0011:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0016:  stfld      float32 Game.ComponentRandomFeedBehavior::m_waitTime
    IL_001b:  ret
  } // end of method ComponentRandomFeedBehavior::'<Load>b__17_5'

  .method private hidebysig instance void 
          '<Load>b__17_6'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       265 (0x109)
    .maxstack  3
    .locals init (float32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentRandomFeedBehavior::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_000b:  ldc.i4.1
    IL_000c:  callvirt   instance void Game.ComponentCreatureModel::set_LookRandomOrder(bool)
    IL_0011:  ldarg.0
    IL_0012:  ldarg.0
    IL_0013:  ldfld      float32 Game.ComponentRandomFeedBehavior::m_waitTime
    IL_0018:  ldarg.0
    IL_0019:  ldfld      class Game.SubsystemTime Game.ComponentRandomFeedBehavior::m_subsystemTime
    IL_001e:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_0023:  sub
    IL_0024:  stfld      float32 Game.ComponentRandomFeedBehavior::m_waitTime
    IL_0029:  ldarg.0
    IL_002a:  ldfld      float32 Game.ComponentRandomFeedBehavior::m_waitTime
    IL_002f:  ldc.r4     0.0
    IL_0034:  bgt.un     IL_00f0

    IL_0039:  ldarg.0
    IL_003a:  ldfld      class Game.Random Game.ComponentRandomFeedBehavior::m_random
    IL_003f:  ldc.r4     0.0
    IL_0044:  ldc.r4     1.
    IL_0049:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_004e:  stloc.0
    IL_004f:  ldloc.0
    IL_0050:  ldc.r4     0.25
    IL_0055:  bge.un.s   IL_0067

    IL_0057:  ldarg.0
    IL_0058:  ldfld      class Game.StateMachine Game.ComponentRandomFeedBehavior::m_stateMachine
    IL_005d:  ldstr      "Inactive"
    IL_0062:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0067:  ldloc.0
    IL_0068:  ldc.r4     0.5
    IL_006d:  bge.un.s   IL_008d

    IL_006f:  ldarg.0
    IL_0070:  ldfld      class Game.StateMachine Game.ComponentRandomFeedBehavior::m_stateMachine
    IL_0075:  ldnull
    IL_0076:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_007b:  ldarg.0
    IL_007c:  ldfld      class Game.StateMachine Game.ComponentRandomFeedBehavior::m_stateMachine
    IL_0081:  ldstr      "LookAround"
    IL_0086:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_008b:  br.s       IL_00f0

    IL_008d:  ldloc.0
    IL_008e:  ldc.r4     0.75
    IL_0093:  bge.un.s   IL_00e0

    IL_0095:  ldarg.0
    IL_0096:  ldfld      class Game.StateMachine Game.ComponentRandomFeedBehavior::m_stateMachine
    IL_009b:  ldstr      "Move"
    IL_00a0:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_00a5:  ldarg.0
    IL_00a6:  ldfld      class Game.Random Game.ComponentRandomFeedBehavior::m_random
    IL_00ab:  ldc.r4     0.0
    IL_00b0:  ldc.r4     1.
    IL_00b5:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00ba:  ldc.r4     0.1
    IL_00bf:  ldarg.0
    IL_00c0:  ldfld      class Game.SubsystemTime Game.ComponentRandomFeedBehavior::m_subsystemTime
    IL_00c5:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_00ca:  mul
    IL_00cb:  bge.un.s   IL_00f0

    IL_00cd:  ldarg.0
    IL_00ce:  ldfld      class Game.ComponentCreature Game.ComponentRandomFeedBehavior::m_componentCreature
    IL_00d3:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_00d8:  ldc.i4.0
    IL_00d9:  callvirt   instance void Game.ComponentCreatureSounds::PlayIdleSound(bool)
    IL_00de:  br.s       IL_00f0

    IL_00e0:  ldarg.0
    IL_00e1:  ldfld      class Game.StateMachine Game.ComponentRandomFeedBehavior::m_stateMachine
    IL_00e6:  ldstr      "Feed"
    IL_00eb:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_00f0:  ldarg.0
    IL_00f1:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_00f6:  brtrue.s   IL_0108

    IL_00f8:  ldarg.0
    IL_00f9:  ldfld      class Game.StateMachine Game.ComponentRandomFeedBehavior::m_stateMachine
    IL_00fe:  ldstr      "Inactive"
    IL_0103:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0108:  ret
  } // end of method ComponentRandomFeedBehavior::'<Load>b__17_6'

  .method private hidebysig instance void 
          '<Load>b__17_7'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.Random Game.ComponentRandomFeedBehavior::m_random
    IL_0007:  ldc.r4     4.
    IL_000c:  ldc.r4     6.
    IL_0011:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0016:  stfld      float32 Game.ComponentRandomFeedBehavior::m_feedTime
    IL_001b:  ret
  } // end of method ComponentRandomFeedBehavior::'<Load>b__17_7'

  .method private hidebysig instance void 
          '<Load>b__17_8'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       334 (0x14e)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      float32 Game.ComponentRandomFeedBehavior::m_feedTime
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class Game.SubsystemTime Game.ComponentRandomFeedBehavior::m_subsystemTime
    IL_000d:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_0012:  sub
    IL_0013:  stfld      float32 Game.ComponentRandomFeedBehavior::m_feedTime
    IL_0018:  ldarg.0
    IL_0019:  ldfld      class Game.ComponentCreature Game.ComponentRandomFeedBehavior::m_componentCreature
    IL_001e:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0023:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_0028:  stloc.0
    IL_0029:  ldloca.s   V_0
    IL_002b:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0030:  brfalse    IL_00bd

    IL_0035:  ldarg.0
    IL_0036:  ldfld      class Game.ComponentCreature Game.ComponentRandomFeedBehavior::m_componentCreature
    IL_003b:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_0040:  ldc.i4.1
    IL_0041:  callvirt   instance void Game.ComponentCreatureModel::set_FeedOrder(bool)
    IL_0046:  ldarg.0
    IL_0047:  ldfld      class Game.Random Game.ComponentRandomFeedBehavior::m_random
    IL_004c:  ldc.r4     0.0
    IL_0051:  ldc.r4     1.
    IL_0056:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_005b:  ldc.r4     0.1
    IL_0060:  ldarg.0
    IL_0061:  ldfld      class Game.SubsystemTime Game.ComponentRandomFeedBehavior::m_subsystemTime
    IL_0066:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_006b:  mul
    IL_006c:  bge.un.s   IL_007f

    IL_006e:  ldarg.0
    IL_006f:  ldfld      class Game.ComponentCreature Game.ComponentRandomFeedBehavior::m_componentCreature
    IL_0074:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_0079:  ldc.i4.0
    IL_007a:  callvirt   instance void Game.ComponentCreatureSounds::PlayIdleSound(bool)
    IL_007f:  ldarg.0
    IL_0080:  ldfld      class Game.Random Game.ComponentRandomFeedBehavior::m_random
    IL_0085:  ldc.r4     0.0
    IL_008a:  ldc.r4     1.
    IL_008f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0094:  ldc.r4     1.5
    IL_0099:  ldarg.0
    IL_009a:  ldfld      class Game.SubsystemTime Game.ComponentRandomFeedBehavior::m_subsystemTime
    IL_009f:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_00a4:  mul
    IL_00a5:  bge.un.s   IL_00bd

    IL_00a7:  ldarg.0
    IL_00a8:  ldfld      class Game.ComponentCreature Game.ComponentRandomFeedBehavior::m_componentCreature
    IL_00ad:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_00b2:  ldc.r4     2.
    IL_00b7:  callvirt   instance bool Game.ComponentCreatureSounds::PlayFootstepSound(float32)
    IL_00bc:  pop
    IL_00bd:  ldarg.0
    IL_00be:  ldfld      float32 Game.ComponentRandomFeedBehavior::m_feedTime
    IL_00c3:  ldc.r4     0.0
    IL_00c8:  bgt.un.s   IL_0135

    IL_00ca:  ldarg.0
    IL_00cb:  ldfld      bool Game.ComponentRandomFeedBehavior::m_autoFeed
    IL_00d0:  brfalse.s  IL_012a

    IL_00d2:  ldarg.0
    IL_00d3:  ldfld      class Game.Random Game.ComponentRandomFeedBehavior::m_random
    IL_00d8:  ldc.r4     0.0
    IL_00dd:  ldc.r4     1.
    IL_00e2:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00e7:  dup
    IL_00e8:  ldc.r4     0.33000001
    IL_00ed:  bge.un.s   IL_00ff

    IL_00ef:  ldarg.0
    IL_00f0:  ldfld      class Game.StateMachine Game.ComponentRandomFeedBehavior::m_stateMachine
    IL_00f5:  ldstr      "Inactive"
    IL_00fa:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_00ff:  ldc.r4     0.66000003
    IL_0104:  bge.un.s   IL_0118

    IL_0106:  ldarg.0
    IL_0107:  ldfld      class Game.StateMachine Game.ComponentRandomFeedBehavior::m_stateMachine
    IL_010c:  ldstr      "Move"
    IL_0111:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0116:  br.s       IL_0135

    IL_0118:  ldarg.0
    IL_0119:  ldfld      class Game.StateMachine Game.ComponentRandomFeedBehavior::m_stateMachine
    IL_011e:  ldstr      "LookAround"
    IL_0123:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0128:  br.s       IL_0135

    IL_012a:  ldarg.0
    IL_012b:  ldc.r4     0.0
    IL_0130:  stfld      float32 Game.ComponentRandomFeedBehavior::m_importanceLevel
    IL_0135:  ldarg.0
    IL_0136:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_013b:  brtrue.s   IL_014d

    IL_013d:  ldarg.0
    IL_013e:  ldfld      class Game.StateMachine Game.ComponentRandomFeedBehavior::m_stateMachine
    IL_0143:  ldstr      "Inactive"
    IL_0148:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_014d:  ret
  } // end of method ComponentRandomFeedBehavior::'<Load>b__17_8'

  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentRandomFeedBehavior::get_UpdateOrder()
  } // end of property ComponentRandomFeedBehavior::UpdateOrder
  .property instance float32 ImportanceLevel()
  {
    .get instance float32 Game.ComponentRandomFeedBehavior::get_ImportanceLevel()
  } // end of property ComponentRandomFeedBehavior::ImportanceLevel
} // end of class Game.ComponentRandomFeedBehavior