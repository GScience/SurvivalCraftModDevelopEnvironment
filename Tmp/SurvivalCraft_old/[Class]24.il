.class public auto ansi beforefieldinit Game.ComponentMoveAwayBehavior
       extends Game.ComponentBehavior
       implements Game.IUpdateable
{
  .field private class Game.ComponentCreature m_componentCreature
  .field private class Game.ComponentPathfinding m_componentPathfinding
  .field private class Game.StateMachine m_stateMachine
  .field private class Game.Random m_random
  .field private float32 m_importanceLevel
  .field private class Game.ComponentBody m_target
  .field private bool m_isFast
  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentMoveAwayBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.StateMachine Game.ComponentMoveAwayBehavior::m_stateMachine
    IL_0006:  callvirt   instance void Game.StateMachine::Update()
    IL_000b:  ret
  } // end of method ComponentMoveAwayBehavior::Update

  .method public hidebysig specialname virtual 
          instance float32  get_ImportanceLevel() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentMoveAwayBehavior::m_importanceLevel
    IL_0006:  ret
  } // end of method ComponentMoveAwayBehavior::get_ImportanceLevel

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       163 (0xa3)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_000d:  stfld      class Game.ComponentCreature Game.ComponentMoveAwayBehavior::m_componentCreature
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPathfinding>(bool)
    IL_001f:  stfld      class Game.ComponentPathfinding Game.ComponentMoveAwayBehavior::m_componentPathfinding
    IL_0024:  ldarg.0
    IL_0025:  ldfld      class Game.ComponentCreature Game.ComponentMoveAwayBehavior::m_componentCreature
    IL_002a:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_002f:  ldarg.0
    IL_0030:  ldftn      instance void Game.ComponentMoveAwayBehavior::'<Load>b__12_0'(class Game.ComponentBody)
    IL_0036:  newobj     instance void class [System.Runtime]System.Action`1<class Game.ComponentBody>::.ctor(object,
                                                                                                              native int)
    IL_003b:  callvirt   instance void Game.ComponentBody::add_CollidedWithBody(class [System.Runtime]System.Action`1<class Game.ComponentBody>)
    IL_0040:  ldarg.0
    IL_0041:  ldfld      class Game.StateMachine Game.ComponentMoveAwayBehavior::m_stateMachine
    IL_0046:  ldstr      "Inactive"
    IL_004b:  ldarg.0
    IL_004c:  ldftn      instance void Game.ComponentMoveAwayBehavior::'<Load>b__12_1'()
    IL_0052:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0057:  ldarg.0
    IL_0058:  ldftn      instance void Game.ComponentMoveAwayBehavior::'<Load>b__12_2'()
    IL_005e:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0063:  ldnull
    IL_0064:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_0069:  ldarg.0
    IL_006a:  ldfld      class Game.StateMachine Game.ComponentMoveAwayBehavior::m_stateMachine
    IL_006f:  ldstr      "Move"
    IL_0074:  ldarg.0
    IL_0075:  ldftn      instance void Game.ComponentMoveAwayBehavior::'<Load>b__12_3'()
    IL_007b:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0080:  ldarg.0
    IL_0081:  ldftn      instance void Game.ComponentMoveAwayBehavior::'<Load>b__12_4'()
    IL_0087:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_008c:  ldnull
    IL_008d:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_0092:  ldarg.0
    IL_0093:  ldfld      class Game.StateMachine Game.ComponentMoveAwayBehavior::m_stateMachine
    IL_0098:  ldstr      "Inactive"
    IL_009d:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_00a2:  ret
  } // end of method ComponentMoveAwayBehavior::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.StateMachine::.ctor()
    IL_0006:  stfld      class Game.StateMachine Game.ComponentMoveAwayBehavior::m_stateMachine
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.Random::.ctor()
    IL_0011:  stfld      class Game.Random Game.ComponentMoveAwayBehavior::m_random
    IL_0016:  ldarg.0
    IL_0017:  call       instance void Game.ComponentBehavior::.ctor()
    IL_001c:  ret
  } // end of method ComponentMoveAwayBehavior::.ctor

  .method private hidebysig instance void 
          '<Load>b__12_0'(class Game.ComponentBody body) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       64 (0x40)
    .maxstack  3
    .locals init (valuetype [Engine]Engine.Vector3 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ComponentBody Game.ComponentMoveAwayBehavior::m_target
    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_Velocity()
    IL_000e:  stloc.0
    IL_000f:  ldloca.s   V_0
    IL_0011:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_0016:  ldarg.0
    IL_0017:  ldfld      class Game.ComponentCreature Game.ComponentMoveAwayBehavior::m_componentCreature
    IL_001c:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0021:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_Velocity()
    IL_0026:  stloc.0
    IL_0027:  ldloca.s   V_0
    IL_0029:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_002e:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0033:  ldc.r4     3.
    IL_0038:  cgt
    IL_003a:  stfld      bool Game.ComponentMoveAwayBehavior::m_isFast
    IL_003f:  ret
  } // end of method ComponentMoveAwayBehavior::'<Load>b__12_0'

  .method private hidebysig instance void 
          '<Load>b__12_1'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     0.0
    IL_0006:  stfld      float32 Game.ComponentMoveAwayBehavior::m_importanceLevel
    IL_000b:  ldarg.0
    IL_000c:  ldnull
    IL_000d:  stfld      class Game.ComponentBody Game.ComponentMoveAwayBehavior::m_target
    IL_0012:  ret
  } // end of method ComponentMoveAwayBehavior::'<Load>b__12_1'

  .method private hidebysig instance void 
          '<Load>b__12_2'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       44 (0x2c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0006:  brfalse.s  IL_0018

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.StateMachine Game.ComponentMoveAwayBehavior::m_stateMachine
    IL_000e:  ldstr      "Move"
    IL_0013:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0018:  ldarg.0
    IL_0019:  ldfld      class Game.ComponentBody Game.ComponentMoveAwayBehavior::m_target
    IL_001e:  brfalse.s  IL_002b

    IL_0020:  ldarg.0
    IL_0021:  ldc.r4     6.
    IL_0026:  stfld      float32 Game.ComponentMoveAwayBehavior::m_importanceLevel
    IL_002b:  ret
  } // end of method ComponentMoveAwayBehavior::'<Load>b__12_2'

  .method private hidebysig instance void 
          '<Load>b__12_3'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       379 (0x17b)
    .maxstack  9
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             valuetype [Engine]Engine.Vector2 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5,
             valuetype [Engine]Engine.Vector3 V_6,
             float32 V_7,
             valuetype [Engine]Engine.Vector2 V_8,
             float32 V_9,
             valuetype [Engine]Engine.Matrix V_10)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Random Game.ComponentMoveAwayBehavior::m_random
    IL_0006:  ldc.r4     0.0
    IL_000b:  ldc.r4     1.
    IL_0010:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0015:  ldc.r4     0.5
    IL_001a:  bge.un.s   IL_002d

    IL_001c:  ldarg.0
    IL_001d:  ldfld      class Game.ComponentCreature Game.ComponentMoveAwayBehavior::m_componentCreature
    IL_0022:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_0027:  ldc.i4.1
    IL_0028:  callvirt   instance void Game.ComponentCreatureSounds::PlayIdleSound(bool)
    IL_002d:  ldarg.0
    IL_002e:  ldfld      class Game.ComponentBody Game.ComponentMoveAwayBehavior::m_target
    IL_0033:  brfalse    IL_017a

    IL_0038:  ldarg.0
    IL_0039:  ldfld      class Game.ComponentBody Game.ComponentMoveAwayBehavior::m_target
    IL_003e:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0043:  ldc.r4     0.5
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.ComponentBody Game.ComponentMoveAwayBehavior::m_target
    IL_004e:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_Velocity()
    IL_0053:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0058:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_005d:  stloc.0
    IL_005e:  ldarg.0
    IL_005f:  ldfld      class Game.ComponentCreature Game.ComponentMoveAwayBehavior::m_componentCreature
    IL_0064:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0069:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_006e:  stloc.s    V_6
    IL_0070:  ldloca.s   V_6
    IL_0072:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XZ()
    IL_0077:  ldloca.s   V_0
    IL_0079:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XZ()
    IL_007e:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_0083:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Normalize(valuetype [Engine]Engine.Vector2)
    IL_0088:  stloc.1
    IL_0089:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_008e:  stloc.2
    IL_008f:  ldc.r4     -3.4028235e+038
    IL_0094:  stloc.3
    IL_0095:  ldc.r4     0.0
    IL_009a:  stloc.s    V_7
    IL_009c:  br.s       IL_00f6

    IL_009e:  ldloc.s    V_7
    IL_00a0:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::CreateFromAngle(float32)
    IL_00a5:  stloc.s    V_8
    IL_00a7:  ldloc.s    V_8
    IL_00a9:  ldloc.1
    IL_00aa:  call       float32 [Engine]Engine.Vector2::Dot(valuetype [Engine]Engine.Vector2,
                                                             valuetype [Engine]Engine.Vector2)
    IL_00af:  ldc.r4     0.2
    IL_00b4:  ble.un.s   IL_00ec

    IL_00b6:  ldarg.0
    IL_00b7:  ldfld      class Game.ComponentCreature Game.ComponentMoveAwayBehavior::m_componentCreature
    IL_00bc:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00c1:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_00c6:  stloc.s    V_10
    IL_00c8:  ldloca.s   V_10
    IL_00ca:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_00cf:  stloc.s    V_6
    IL_00d1:  ldloca.s   V_6
    IL_00d3:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XZ()
    IL_00d8:  ldloc.s    V_8
    IL_00da:  call       float32 [Engine]Engine.Vector2::Dot(valuetype [Engine]Engine.Vector2,
                                                             valuetype [Engine]Engine.Vector2)
    IL_00df:  stloc.s    V_9
    IL_00e1:  ldloc.s    V_9
    IL_00e3:  ldloc.3
    IL_00e4:  ble.un.s   IL_00ec

    IL_00e6:  ldloc.s    V_8
    IL_00e8:  stloc.2
    IL_00e9:  ldloc.s    V_9
    IL_00eb:  stloc.3
    IL_00ec:  ldloc.s    V_7
    IL_00ee:  ldc.r4     0.1
    IL_00f3:  add
    IL_00f4:  stloc.s    V_7
    IL_00f6:  ldloc.s    V_7
    IL_00f8:  ldc.r4     6.2831855
    IL_00fd:  blt.s      IL_009e

    IL_00ff:  ldarg.0
    IL_0100:  ldfld      class Game.Random Game.ComponentMoveAwayBehavior::m_random
    IL_0105:  ldc.r4     1.5
    IL_010a:  ldc.r4     2.
    IL_010f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0114:  stloc.s    V_4
    IL_0116:  ldarg.0
    IL_0117:  ldfld      bool Game.ComponentMoveAwayBehavior::m_isFast
    IL_011c:  brtrue.s   IL_0125

    IL_011e:  ldc.r4     0.34999999
    IL_0123:  br.s       IL_012a

    IL_0125:  ldc.r4     0.69999999
    IL_012a:  stloc.s    V_5
    IL_012c:  ldarg.0
    IL_012d:  ldfld      class Game.ComponentPathfinding Game.ComponentMoveAwayBehavior::m_componentPathfinding
    IL_0132:  ldarg.0
    IL_0133:  ldfld      class Game.ComponentCreature Game.ComponentMoveAwayBehavior::m_componentCreature
    IL_0138:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_013d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0142:  ldloc.s    V_4
    IL_0144:  ldloc.2
    IL_0145:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_014a:  ldc.r4     0.0
    IL_014f:  ldloc.2
    IL_0150:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0155:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_015a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_015f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0164:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0169:  ldloc.s    V_5
    IL_016b:  ldc.r4     1.
    IL_0170:  ldc.i4.0
    IL_0171:  ldc.i4.0
    IL_0172:  ldc.i4.1
    IL_0173:  ldc.i4.0
    IL_0174:  ldnull
    IL_0175:  callvirt   instance void Game.ComponentPathfinding::SetDestination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                 float32,
                                                                                 float32,
                                                                                 int32,
                                                                                 bool,
                                                                                 bool,
                                                                                 bool,
                                                                                 class Game.ComponentBody)
    IL_017a:  ret
  } // end of method ComponentMoveAwayBehavior::'<Load>b__12_3'

  .method private hidebysig instance void 
          '<Load>b__12_4'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       89 (0x59)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_0)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0006:  brtrue.s   IL_001a

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.StateMachine Game.ComponentMoveAwayBehavior::m_stateMachine
    IL_000e:  ldstr      "Inactive"
    IL_0013:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0018:  br.s       IL_0047

    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.ComponentPathfinding Game.ComponentMoveAwayBehavior::m_componentPathfinding
    IL_0020:  callvirt   instance bool Game.ComponentPathfinding::get_IsStuck()
    IL_0025:  brtrue.s   IL_003c

    IL_0027:  ldarg.0
    IL_0028:  ldfld      class Game.ComponentPathfinding Game.ComponentMoveAwayBehavior::m_componentPathfinding
    IL_002d:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPathfinding::get_Destination()
    IL_0032:  stloc.0
    IL_0033:  ldloca.s   V_0
    IL_0035:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_003a:  brtrue.s   IL_0047

    IL_003c:  ldarg.0
    IL_003d:  ldc.r4     0.0
    IL_0042:  stfld      float32 Game.ComponentMoveAwayBehavior::m_importanceLevel
    IL_0047:  ldarg.0
    IL_0048:  ldfld      class Game.ComponentCreature Game.ComponentMoveAwayBehavior::m_componentCreature
    IL_004d:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_0052:  ldc.i4.1
    IL_0053:  callvirt   instance void Game.ComponentCreatureModel::set_LookRandomOrder(bool)
    IL_0058:  ret
  } // end of method ComponentMoveAwayBehavior::'<Load>b__12_4'

  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentMoveAwayBehavior::get_UpdateOrder()
  } // end of property ComponentMoveAwayBehavior::UpdateOrder
  .property instance float32 ImportanceLevel()
  {
    .get instance float32 Game.ComponentMoveAwayBehavior::get_ImportanceLevel()
  } // end of property ComponentMoveAwayBehavior::ImportanceLevel
} // end of class Game.ComponentMoveAwayBehavior