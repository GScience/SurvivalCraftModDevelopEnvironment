.class public auto ansi beforefieldinit Game.ComponentFishOutOfWaterBehavior
       extends Game.ComponentBehavior
       implements Game.IUpdateable
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.ComponentFishOutOfWaterBehavior/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`3<int32,float32,bool> '<>9__16_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.ComponentFishOutOfWaterBehavior/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.ComponentFishOutOfWaterBehavior/'<>c' Game.ComponentFishOutOfWaterBehavior/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance bool 
            '<FindDestination>b__16_0'(int32 'value',
                                       float32 d) cil managed
    {
      // 代码大小       26 (0x1a)
      .maxstack  2
      .locals init (int32 V_0)
      IL_0000:  ldarg.1
      IL_0001:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_0006:  stloc.0
      IL_0007:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_000c:  ldloc.0
      IL_000d:  ldelem.ref
      IL_000e:  isinst     Game.WaterBlock
      IL_0013:  ldnull
      IL_0014:  cgt.un
      IL_0016:  ldc.i4.0
      IL_0017:  ceq
      IL_0019:  ret
    } // end of method '<>c'::'<FindDestination>b__16_0'

  } // end of class '<>c'

  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.ComponentCreature m_componentCreature
  .field private class Game.ComponentFishModel m_componentFishModel
  .field private class Game.StateMachine m_stateMachine
  .field private float32 m_importanceLevel
  .field private float32 m_outOfWaterTime
  .field private valuetype [Engine]Engine.Vector2 m_direction
  .field private class Game.Random m_random
  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentFishOutOfWaterBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.StateMachine Game.ComponentFishOutOfWaterBehavior::m_stateMachine
    IL_0006:  callvirt   instance void Game.StateMachine::Update()
    IL_000b:  ret
  } // end of method ComponentFishOutOfWaterBehavior::Update

  .method public hidebysig specialname virtual 
          instance float32  get_ImportanceLevel() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentFishOutOfWaterBehavior::m_importanceLevel
    IL_0006:  ret
  } // end of method ComponentFishOutOfWaterBehavior::get_ImportanceLevel

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       149 (0x95)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_000d:  stfld      class Game.SubsystemTerrain Game.ComponentFishOutOfWaterBehavior::m_subsystemTerrain
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_001f:  stfld      class Game.SubsystemTime Game.ComponentFishOutOfWaterBehavior::m_subsystemTime
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_0031:  stfld      class Game.ComponentCreature Game.ComponentFishOutOfWaterBehavior::m_componentCreature
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentFishModel>(bool)
    IL_0043:  stfld      class Game.ComponentFishModel Game.ComponentFishOutOfWaterBehavior::m_componentFishModel
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.StateMachine Game.ComponentFishOutOfWaterBehavior::m_stateMachine
    IL_004e:  ldstr      "Inactive"
    IL_0053:  ldnull
    IL_0054:  ldarg.0
    IL_0055:  ldftn      instance void Game.ComponentFishOutOfWaterBehavior::'<Load>b__14_0'()
    IL_005b:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0060:  ldnull
    IL_0061:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_0066:  ldarg.0
    IL_0067:  ldfld      class Game.StateMachine Game.ComponentFishOutOfWaterBehavior::m_stateMachine
    IL_006c:  ldstr      "Jump"
    IL_0071:  ldnull
    IL_0072:  ldarg.0
    IL_0073:  ldftn      instance void Game.ComponentFishOutOfWaterBehavior::'<Load>b__14_1'()
    IL_0079:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_007e:  ldnull
    IL_007f:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_0084:  ldarg.0
    IL_0085:  ldfld      class Game.StateMachine Game.ComponentFishOutOfWaterBehavior::m_stateMachine
    IL_008a:  ldstr      "Inactive"
    IL_008f:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0094:  ret
  } // end of method ComponentFishOutOfWaterBehavior::Load

  .method private hidebysig instance bool 
          IsOutOfWater() cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentFishOutOfWaterBehavior::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_000b:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_0010:  ldc.r4     0.33000001
    IL_0015:  clt
    IL_0017:  ret
  } // end of method ComponentFishOutOfWaterBehavior::IsOutOfWater

  .method private hidebysig instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> 
          FindDestination() cil managed
  {
    // 代码大小       299 (0x12b)
    .maxstack  7
    .locals init (int32 V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             float32 V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_5,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_6)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br         IL_0119

    IL_0007:  ldarg.0
    IL_0008:  ldfld      class Game.Random Game.ComponentFishOutOfWaterBehavior::m_random
    IL_000d:  ldc.r4     1.
    IL_0012:  ldc.r4     1.
    IL_0017:  ldc.i4.0
    IL_0018:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Random::UniformVector2(float32,
                                                                                               float32,
                                                                                               bool)
    IL_001d:  stloc.1
    IL_001e:  ldc.r4     0.2
    IL_0023:  ldarg.0
    IL_0024:  ldfld      class Game.Random Game.ComponentFishOutOfWaterBehavior::m_random
    IL_0029:  ldc.r4     -0.80000001
    IL_002e:  ldc.r4     1.
    IL_0033:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0038:  mul
    IL_0039:  stloc.2
    IL_003a:  ldloc.1
    IL_003b:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0040:  ldloc.2
    IL_0041:  ldloc.1
    IL_0042:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0047:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_004c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0051:  stloc.3
    IL_0052:  ldarg.0
    IL_0053:  ldfld      class Game.ComponentCreature Game.ComponentFishOutOfWaterBehavior::m_componentCreature
    IL_0058:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_005d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0062:  ldarg.0
    IL_0063:  ldfld      class Game.Random Game.ComponentFishOutOfWaterBehavior::m_random
    IL_0068:  ldc.r4     8.
    IL_006d:  ldc.r4     16.
    IL_0072:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0077:  ldloc.3
    IL_0078:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_007d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0082:  stloc.s    V_4
    IL_0084:  ldarg.0
    IL_0085:  ldfld      class Game.SubsystemTerrain Game.ComponentFishOutOfWaterBehavior::m_subsystemTerrain
    IL_008a:  ldarg.0
    IL_008b:  ldfld      class Game.ComponentCreature Game.ComponentFishOutOfWaterBehavior::m_componentCreature
    IL_0090:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0095:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_009a:  ldloc.s    V_4
    IL_009c:  ldc.i4.0
    IL_009d:  ldc.i4.0
    IL_009e:  ldsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.ComponentFishOutOfWaterBehavior/'<>c'::'<>9__16_0'
    IL_00a3:  dup
    IL_00a4:  brtrue.s   IL_00bd

    IL_00a6:  pop
    IL_00a7:  ldsfld     class Game.ComponentFishOutOfWaterBehavior/'<>c' Game.ComponentFishOutOfWaterBehavior/'<>c'::'<>9'
    IL_00ac:  ldftn      instance bool Game.ComponentFishOutOfWaterBehavior/'<>c'::'<FindDestination>b__16_0'(int32,
                                                                                                              float32)
    IL_00b2:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                      native int)
    IL_00b7:  dup
    IL_00b8:  stsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.ComponentFishOutOfWaterBehavior/'<>c'::'<>9__16_0'
    IL_00bd:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                                                  bool,
                                                                                                                                                  bool,
                                                                                                                                                  class [System.Runtime]System.Func`3<int32,float32,bool>)
    IL_00c2:  stloc.s    V_5
    IL_00c4:  ldloca.s   V_5
    IL_00c6:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_00cb:  brtrue.s   IL_00d5

    IL_00cd:  ldloc.s    V_4
    IL_00cf:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_00d4:  ret

    IL_00d5:  ldloca.s   V_5
    IL_00d7:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_00dc:  ldfld      float32 Game.TerrainRaycastResult::Distance
    IL_00e1:  ldc.r4     4.
    IL_00e6:  ble.un.s   IL_0115

    IL_00e8:  ldarg.0
    IL_00e9:  ldfld      class Game.ComponentCreature Game.ComponentFishOutOfWaterBehavior::m_componentCreature
    IL_00ee:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00f3:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_00f8:  ldloc.3
    IL_00f9:  ldloca.s   V_5
    IL_00fb:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0100:  ldfld      float32 Game.TerrainRaycastResult::Distance
    IL_0105:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_010a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_010f:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0114:  ret

    IL_0115:  ldloc.0
    IL_0116:  ldc.i4.1
    IL_0117:  add
    IL_0118:  stloc.0
    IL_0119:  ldloc.0
    IL_011a:  ldc.i4.8
    IL_011b:  blt        IL_0007

    IL_0120:  ldloca.s   V_6
    IL_0122:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_0128:  ldloc.s    V_6
    IL_012a:  ret
  } // end of method ComponentFishOutOfWaterBehavior::FindDestination

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.StateMachine::.ctor()
    IL_0006:  stfld      class Game.StateMachine Game.ComponentFishOutOfWaterBehavior::m_stateMachine
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.Random::.ctor()
    IL_0011:  stfld      class Game.Random Game.ComponentFishOutOfWaterBehavior::m_random
    IL_0016:  ldarg.0
    IL_0017:  call       instance void Game.ComponentBehavior::.ctor()
    IL_001c:  ret
  } // end of method ComponentFishOutOfWaterBehavior::.ctor

  .method private hidebysig instance void 
          '<Load>b__14_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       94 (0x5e)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  call       instance bool Game.ComponentFishOutOfWaterBehavior::IsOutOfWater()
    IL_0006:  brfalse.s  IL_0022

    IL_0008:  ldarg.0
    IL_0009:  ldarg.0
    IL_000a:  ldfld      float32 Game.ComponentFishOutOfWaterBehavior::m_outOfWaterTime
    IL_000f:  ldarg.0
    IL_0010:  ldfld      class Game.SubsystemTime Game.ComponentFishOutOfWaterBehavior::m_subsystemTime
    IL_0015:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_001a:  add
    IL_001b:  stfld      float32 Game.ComponentFishOutOfWaterBehavior::m_outOfWaterTime
    IL_0020:  br.s       IL_002d

    IL_0022:  ldarg.0
    IL_0023:  ldc.r4     0.0
    IL_0028:  stfld      float32 Game.ComponentFishOutOfWaterBehavior::m_outOfWaterTime
    IL_002d:  ldarg.0
    IL_002e:  ldfld      float32 Game.ComponentFishOutOfWaterBehavior::m_outOfWaterTime
    IL_0033:  ldc.r4     3.
    IL_0038:  ble.un.s   IL_0045

    IL_003a:  ldarg.0
    IL_003b:  ldc.r4     1000.
    IL_0040:  stfld      float32 Game.ComponentFishOutOfWaterBehavior::m_importanceLevel
    IL_0045:  ldarg.0
    IL_0046:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_004b:  brfalse.s  IL_005d

    IL_004d:  ldarg.0
    IL_004e:  ldfld      class Game.StateMachine Game.ComponentFishOutOfWaterBehavior::m_stateMachine
    IL_0053:  ldstr      "Jump"
    IL_0058:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_005d:  ret
  } // end of method ComponentFishOutOfWaterBehavior::'<Load>b__14_0'

  .method private hidebysig instance void 
          '<Load>b__14_1'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       363 (0x16b)
    .maxstack  8
    .locals init (valuetype [System.Runtime]System.Nullable`1<float32> V_0,
             valuetype [System.Runtime]System.Nullable`1<int32> V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentFishModel Game.ComponentFishOutOfWaterBehavior::m_componentFishModel
    IL_0006:  ldc.r4     2.
    IL_000b:  ldc.r4     2.
    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.SubsystemTime Game.ComponentFishOutOfWaterBehavior::m_subsystemTime
    IL_0016:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_001b:  ldc.r8     1000.
    IL_0024:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_0029:  conv.r4
    IL_002a:  ldc.r4     1.2
    IL_002f:  ldarg.0
    IL_0030:  ldfld      class Game.ComponentCreature Game.ComponentFishOutOfWaterBehavior::m_componentCreature
    IL_0035:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_003a:  callvirt   instance float32 Game.ComponentLocomotion::get_TurnSpeed()
    IL_003f:  mul
    IL_0040:  ldc.i4.1
    IL_0041:  ldc.r4     1.
    IL_0046:  ldc.r4     1.
    IL_004b:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_0050:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0055:  mul
    IL_0056:  ldc.r4     1.
    IL_005b:  sub
    IL_005c:  mul
    IL_005d:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_0062:  callvirt   instance void Game.ComponentFishModel::set_BendOrder(valuetype [System.Runtime]System.Nullable`1<float32>)
    IL_0067:  ldarg.0
    IL_0068:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_006d:  brtrue.s   IL_007f

    IL_006f:  ldarg.0
    IL_0070:  ldfld      class Game.StateMachine Game.ComponentFishOutOfWaterBehavior::m_stateMachine
    IL_0075:  ldstr      "Inactive"
    IL_007a:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_007f:  ldarg.0
    IL_0080:  call       instance bool Game.ComponentFishOutOfWaterBehavior::IsOutOfWater()
    IL_0085:  brtrue.s   IL_0092

    IL_0087:  ldarg.0
    IL_0088:  ldc.r4     0.0
    IL_008d:  stfld      float32 Game.ComponentFishOutOfWaterBehavior::m_importanceLevel
    IL_0092:  ldarg.0
    IL_0093:  ldfld      class Game.Random Game.ComponentFishOutOfWaterBehavior::m_random
    IL_0098:  ldc.r4     0.0
    IL_009d:  ldc.r4     1.
    IL_00a2:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00a7:  ldc.r4     2.5
    IL_00ac:  ldarg.0
    IL_00ad:  ldfld      class Game.SubsystemTime Game.ComponentFishOutOfWaterBehavior::m_subsystemTime
    IL_00b2:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_00b7:  mul
    IL_00b8:  bge.un.s   IL_0107

    IL_00ba:  ldarg.0
    IL_00bb:  ldfld      class Game.ComponentCreature Game.ComponentFishOutOfWaterBehavior::m_componentCreature
    IL_00c0:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_00c5:  ldarg.0
    IL_00c6:  ldfld      class Game.Random Game.ComponentFishOutOfWaterBehavior::m_random
    IL_00cb:  ldc.r4     0.33000001
    IL_00d0:  ldc.r4     1.
    IL_00d5:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00da:  callvirt   instance void Game.ComponentLocomotion::set_JumpOrder(float32)
    IL_00df:  ldarg.0
    IL_00e0:  ldarg.0
    IL_00e1:  ldfld      class Game.ComponentFishModel Game.ComponentFishOutOfWaterBehavior::m_componentFishModel
    IL_00e6:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<float32> Game.ComponentFishModel::get_BendOrder()
    IL_00eb:  stloc.0
    IL_00ec:  ldloca.s   V_0
    IL_00ee:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_00f3:  call       float32 [Engine]Engine.MathUtils::Sign(float32)
    IL_00f8:  ldc.r4     0.0
    IL_00fd:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0102:  stfld      valuetype [Engine]Engine.Vector2 Game.ComponentFishOutOfWaterBehavior::m_direction
    IL_0107:  ldarg.0
    IL_0108:  ldfld      class Game.ComponentCreature Game.ComponentFishOutOfWaterBehavior::m_componentCreature
    IL_010d:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0112:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_0117:  stloc.1
    IL_0118:  ldloca.s   V_1
    IL_011a:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_011f:  brtrue.s   IL_016a

    IL_0121:  ldarg.0
    IL_0122:  ldfld      class Game.ComponentCreature Game.ComponentFishOutOfWaterBehavior::m_componentCreature
    IL_0127:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_012c:  ldarg.0
    IL_012d:  ldfld      class Game.ComponentFishModel Game.ComponentFishOutOfWaterBehavior::m_componentFishModel
    IL_0132:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<float32> Game.ComponentFishModel::get_BendOrder()
    IL_0137:  stloc.0
    IL_0138:  ldloca.s   V_0
    IL_013a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_013f:  neg
    IL_0140:  ldc.r4     0.0
    IL_0145:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_014a:  callvirt   instance void Game.ComponentLocomotion::set_TurnOrder(valuetype [Engine]Engine.Vector2)
    IL_014f:  ldarg.0
    IL_0150:  ldfld      class Game.ComponentCreature Game.ComponentFishOutOfWaterBehavior::m_componentCreature
    IL_0155:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_015a:  ldarg.0
    IL_015b:  ldfld      valuetype [Engine]Engine.Vector2 Game.ComponentFishOutOfWaterBehavior::m_direction
    IL_0160:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_0165:  callvirt   instance void Game.ComponentLocomotion::set_WalkOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
    IL_016a:  ret
  } // end of method ComponentFishOutOfWaterBehavior::'<Load>b__14_1'

  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentFishOutOfWaterBehavior::get_UpdateOrder()
  } // end of property ComponentFishOutOfWaterBehavior::UpdateOrder
  .property instance float32 ImportanceLevel()
  {
    .get instance float32 Game.ComponentFishOutOfWaterBehavior::get_ImportanceLevel()
  } // end of property ComponentFishOutOfWaterBehavior::ImportanceLevel
} // end of class Game.ComponentFishOutOfWaterBehavior