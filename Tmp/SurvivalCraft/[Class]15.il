.class public auto ansi beforefieldinit Game.ComponentEatPickableBehavior
       extends Game.ComponentBehavior
       implements Game.IUpdateable
{
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemPickables m_subsystemPickables
  .field private class Game.ComponentCreature m_componentCreature
  .field private class Game.ComponentPathfinding m_componentPathfinding
  .field private class Game.StateMachine m_stateMachine
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Pickable,bool> m_pickables
  .field private class Game.Random m_random
  .field private float32[] m_foodFactors
  .field private float32 m_importanceLevel
  .field private float64 m_nextFindPickableTime
  .field private float64 m_nextPickablesUpdateTime
  .field private class Game.Pickable m_pickable
  .field private float64 m_eatTime
  .field private float32 m_satiation
  .field private float32 m_blockedTime
  .field private int32 m_blockedCount
  .field private static literal float32 m_range = float32(16.)
  .method public hidebysig specialname instance float32 
          get_Satiation() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentEatPickableBehavior::m_satiation
    IL_0006:  ret
  } // end of method ComponentEatPickableBehavior::get_Satiation

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentEatPickableBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       65 (0x41)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentEatPickableBehavior::m_satiation
    IL_0006:  ldc.r4     0.0
    IL_000b:  ble.un.s   IL_0035

    IL_000d:  ldarg.0
    IL_000e:  ldarg.0
    IL_000f:  ldfld      float32 Game.ComponentEatPickableBehavior::m_satiation
    IL_0014:  ldc.r4     9.9999998e-003
    IL_0019:  ldarg.0
    IL_001a:  ldfld      class Game.SubsystemTime Game.ComponentEatPickableBehavior::m_subsystemTime
    IL_001f:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_0024:  mul
    IL_0025:  sub
    IL_0026:  ldc.r4     0.0
    IL_002b:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0030:  stfld      float32 Game.ComponentEatPickableBehavior::m_satiation
    IL_0035:  ldarg.0
    IL_0036:  ldfld      class Game.StateMachine Game.ComponentEatPickableBehavior::m_stateMachine
    IL_003b:  callvirt   instance void Game.StateMachine::Update()
    IL_0040:  ret
  } // end of method ComponentEatPickableBehavior::Update

  .method public hidebysig specialname virtual 
          instance float32  get_ImportanceLevel() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentEatPickableBehavior::m_importanceLevel
    IL_0006:  ret
  } // end of method ComponentEatPickableBehavior::get_ImportanceLevel

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       416 (0x1a0)
    .maxstack  5
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>> V_0,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object> V_1,
             valuetype Game.FoodType V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_000d:  stfld      class Game.SubsystemTime Game.ComponentEatPickableBehavior::m_subsystemTime
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPickables>(bool)
    IL_001f:  stfld      class Game.SubsystemPickables Game.ComponentEatPickableBehavior::m_subsystemPickables
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_0031:  stfld      class Game.ComponentCreature Game.ComponentEatPickableBehavior::m_componentCreature
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPathfinding>(bool)
    IL_0043:  stfld      class Game.ComponentPathfinding Game.ComponentEatPickableBehavior::m_componentPathfinding
    IL_0048:  ldarg.0
    IL_0049:  ldtoken    Game.FoodType
    IL_004e:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0053:  call       class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.EnumUtils::GetEnumValues(class [System.Runtime]System.Type)
    IL_0058:  call       int32 [System.Linq]System.Linq.Enumerable::Max(class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>)
    IL_005d:  ldc.i4.1
    IL_005e:  add
    IL_005f:  newarr     [System.Runtime]System.Single
    IL_0064:  stfld      float32[] Game.ComponentEatPickableBehavior::m_foodFactors
    IL_0069:  ldarg.1
    IL_006a:  ldstr      "FoodFactors"
    IL_006f:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string)
    IL_0074:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>> [EntitySystem]TemplatesDatabase.ValuesDictionary::GetEnumerator()
    IL_0079:  stloc.0
    .try
    {
      IL_007a:  br.s       IL_00b4

      IL_007c:  ldloc.0
      IL_007d:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>>::get_Current()
      IL_0082:  stloc.1
      IL_0083:  ldtoken    Game.FoodType
      IL_0088:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
      IL_008d:  ldloca.s   V_1
      IL_008f:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>::get_Key()
      IL_0094:  ldc.i4.0
      IL_0095:  call       object [System.Runtime]System.Enum::Parse(class [System.Runtime]System.Type,
                                                                     string,
                                                                     bool)
      IL_009a:  unbox.any  Game.FoodType
      IL_009f:  stloc.2
      IL_00a0:  ldarg.0
      IL_00a1:  ldfld      float32[] Game.ComponentEatPickableBehavior::m_foodFactors
      IL_00a6:  ldloc.2
      IL_00a7:  ldloca.s   V_1
      IL_00a9:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>::get_Value()
      IL_00ae:  unbox.any  [System.Runtime]System.Single
      IL_00b3:  stelem.r4
      IL_00b4:  ldloc.0
      IL_00b5:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_00ba:  brtrue.s   IL_007c

      IL_00bc:  leave.s    IL_00c8

    }  // end .try
    finally
    {
      IL_00be:  ldloc.0
      IL_00bf:  brfalse.s  IL_00c7

      IL_00c1:  ldloc.0
      IL_00c2:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00c7:  endfinally
    }  // end handler
    IL_00c8:  ldarg.0
    IL_00c9:  ldfld      class Game.SubsystemPickables Game.ComponentEatPickableBehavior::m_subsystemPickables
    IL_00ce:  ldarg.0
    IL_00cf:  ldftn      instance void Game.ComponentEatPickableBehavior::'<Load>b__24_0'(class Game.Pickable)
    IL_00d5:  newobj     instance void class [System.Runtime]System.Action`1<class Game.Pickable>::.ctor(object,
                                                                                                         native int)
    IL_00da:  callvirt   instance void Game.SubsystemPickables::add_PickableAdded(class [System.Runtime]System.Action`1<class Game.Pickable>)
    IL_00df:  ldarg.0
    IL_00e0:  ldfld      class Game.SubsystemPickables Game.ComponentEatPickableBehavior::m_subsystemPickables
    IL_00e5:  ldarg.0
    IL_00e6:  ldftn      instance void Game.ComponentEatPickableBehavior::'<Load>b__24_1'(class Game.Pickable)
    IL_00ec:  newobj     instance void class [System.Runtime]System.Action`1<class Game.Pickable>::.ctor(object,
                                                                                                         native int)
    IL_00f1:  callvirt   instance void Game.SubsystemPickables::add_PickableRemoved(class [System.Runtime]System.Action`1<class Game.Pickable>)
    IL_00f6:  ldarg.0
    IL_00f7:  ldfld      class Game.StateMachine Game.ComponentEatPickableBehavior::m_stateMachine
    IL_00fc:  ldstr      "Inactive"
    IL_0101:  ldarg.0
    IL_0102:  ldftn      instance void Game.ComponentEatPickableBehavior::'<Load>b__24_2'()
    IL_0108:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_010d:  ldarg.0
    IL_010e:  ldftn      instance void Game.ComponentEatPickableBehavior::'<Load>b__24_3'()
    IL_0114:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0119:  ldnull
    IL_011a:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_011f:  ldarg.0
    IL_0120:  ldfld      class Game.StateMachine Game.ComponentEatPickableBehavior::m_stateMachine
    IL_0125:  ldstr      "Move"
    IL_012a:  ldarg.0
    IL_012b:  ldftn      instance void Game.ComponentEatPickableBehavior::'<Load>b__24_4'()
    IL_0131:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0136:  ldarg.0
    IL_0137:  ldftn      instance void Game.ComponentEatPickableBehavior::'<Load>b__24_5'()
    IL_013d:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0142:  ldnull
    IL_0143:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_0148:  ldarg.0
    IL_0149:  ldfld      class Game.StateMachine Game.ComponentEatPickableBehavior::m_stateMachine
    IL_014e:  ldstr      "PickableMoved"
    IL_0153:  ldnull
    IL_0154:  ldarg.0
    IL_0155:  ldftn      instance void Game.ComponentEatPickableBehavior::'<Load>b__24_6'()
    IL_015b:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0160:  ldnull
    IL_0161:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_0166:  ldarg.0
    IL_0167:  ldfld      class Game.StateMachine Game.ComponentEatPickableBehavior::m_stateMachine
    IL_016c:  ldstr      "Eat"
    IL_0171:  ldarg.0
    IL_0172:  ldftn      instance void Game.ComponentEatPickableBehavior::'<Load>b__24_7'()
    IL_0178:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_017d:  ldarg.0
    IL_017e:  ldftn      instance void Game.ComponentEatPickableBehavior::'<Load>b__24_8'()
    IL_0184:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0189:  ldnull
    IL_018a:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_018f:  ldarg.0
    IL_0190:  ldfld      class Game.StateMachine Game.ComponentEatPickableBehavior::m_stateMachine
    IL_0195:  ldstr      "Inactive"
    IL_019a:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_019f:  ret
  } // end of method ComponentEatPickableBehavior::Load

  .method private hidebysig instance float32 
          GetFoodFactor(valuetype Game.FoodType foodType) cil managed
  {
    // 代码大小       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32[] Game.ComponentEatPickableBehavior::m_foodFactors
    IL_0006:  ldarg.1
    IL_0007:  ldelem.r4
    IL_0008:  ret
  } // end of method ComponentEatPickableBehavior::GetFoodFactor

  .method private hidebysig instance class Game.Pickable 
          FindPickable(valuetype [Engine]Engine.Vector3 position) cil managed
  {
    // 代码大小       280 (0x118)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Pickable> V_0,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.Pickable> V_1,
             class Game.Pickable V_2,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.Pickable,bool> V_3,
             class Game.Pickable V_4,
             float32 V_5,
             class Game.Pickable V_6)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTime Game.ComponentEatPickableBehavior::m_subsystemTime
    IL_0006:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_000b:  ldarg.0
    IL_000c:  ldfld      float64 Game.ComponentEatPickableBehavior::m_nextPickablesUpdateTime
    IL_0011:  ble.un     IL_00aa

    IL_0016:  ldarg.0
    IL_0017:  ldarg.0
    IL_0018:  ldfld      class Game.SubsystemTime Game.ComponentEatPickableBehavior::m_subsystemTime
    IL_001d:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class Game.Random Game.ComponentEatPickableBehavior::m_random
    IL_0028:  ldc.r4     2.
    IL_002d:  ldc.r4     4.
    IL_0032:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0037:  conv.r8
    IL_0038:  add
    IL_0039:  stfld      float64 Game.ComponentEatPickableBehavior::m_nextPickablesUpdateTime
    IL_003e:  ldarg.0
    IL_003f:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Pickable,bool> Game.ComponentEatPickableBehavior::m_pickables
    IL_0044:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Pickable,bool>::Clear()
    IL_0049:  ldarg.0
    IL_004a:  ldfld      class Game.SubsystemPickables Game.ComponentEatPickableBehavior::m_subsystemPickables
    IL_004f:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.Pickable> Game.SubsystemPickables::get_Pickables()
    IL_0054:  stloc.1
    IL_0055:  ldloca.s   V_1
    IL_0057:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.Pickable>::GetEnumerator()
    IL_005c:  stloc.0
    .try
    {
      IL_005d:  br.s       IL_006f

      IL_005f:  ldloca.s   V_0
      IL_0061:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Pickable>::get_Current()
      IL_0066:  stloc.2
      IL_0067:  ldarg.0
      IL_0068:  ldloc.2
      IL_0069:  call       instance bool Game.ComponentEatPickableBehavior::TryAddPickable(class Game.Pickable)
      IL_006e:  pop
      IL_006f:  ldloca.s   V_0
      IL_0071:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Pickable>::MoveNext()
      IL_0076:  brtrue.s   IL_005f

      IL_0078:  leave.s    IL_0088

    }  // end .try
    finally
    {
      IL_007a:  ldloca.s   V_0
      IL_007c:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Pickable>
      IL_0082:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0087:  endfinally
    }  // end handler
    IL_0088:  ldarg.0
    IL_0089:  ldfld      class Game.Pickable Game.ComponentEatPickableBehavior::m_pickable
    IL_008e:  brfalse.s  IL_00aa

    IL_0090:  ldarg.0
    IL_0091:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Pickable,bool> Game.ComponentEatPickableBehavior::m_pickables
    IL_0096:  ldarg.0
    IL_0097:  ldfld      class Game.Pickable Game.ComponentEatPickableBehavior::m_pickable
    IL_009c:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Pickable,bool>::ContainsKey(!0)
    IL_00a1:  brtrue.s   IL_00aa

    IL_00a3:  ldarg.0
    IL_00a4:  ldnull
    IL_00a5:  stfld      class Game.Pickable Game.ComponentEatPickableBehavior::m_pickable
    IL_00aa:  ldarg.0
    IL_00ab:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Pickable,bool> Game.ComponentEatPickableBehavior::m_pickables
    IL_00b0:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Pickable,bool>::get_Keys()
    IL_00b5:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class Game.Pickable,bool>::GetEnumerator()
    IL_00ba:  stloc.3
    .try
    {
      IL_00bb:  br.s       IL_00fa

      IL_00bd:  ldloca.s   V_3
      IL_00bf:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.Pickable,bool>::get_Current()
      IL_00c4:  stloc.s    V_4
      IL_00c6:  ldarg.1
      IL_00c7:  ldloc.s    V_4
      IL_00c9:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_00ce:  call       float32 [Engine]Engine.Vector3::DistanceSquared(valuetype [Engine]Engine.Vector3,
                                                                           valuetype [Engine]Engine.Vector3)
      IL_00d3:  stloc.s    V_5
      IL_00d5:  ldarg.0
      IL_00d6:  ldfld      class Game.Random Game.ComponentEatPickableBehavior::m_random
      IL_00db:  ldc.r4     0.0
      IL_00e0:  ldc.r4     1.
      IL_00e5:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_00ea:  ldloc.s    V_5
      IL_00ec:  ldc.r4     256.
      IL_00f1:  div
      IL_00f2:  ble.un.s   IL_00fa

      IL_00f4:  ldloc.s    V_4
      IL_00f6:  stloc.s    V_6
      IL_00f8:  leave.s    IL_0115

      IL_00fa:  ldloca.s   V_3
      IL_00fc:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.Pickable,bool>::MoveNext()
      IL_0101:  brtrue.s   IL_00bd

      IL_0103:  leave.s    IL_0113

    }  // end .try
    finally
    {
      IL_0105:  ldloca.s   V_3
      IL_0107:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.Pickable,bool>
      IL_010d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0112:  endfinally
    }  // end handler
    IL_0113:  ldnull
    IL_0114:  ret

    IL_0115:  ldloc.s    V_6
    IL_0117:  ret
  } // end of method ComponentEatPickableBehavior::FindPickable

  .method private hidebysig instance bool 
          TryAddPickable(class Game.Pickable pickable) cil managed
  {
    // 代码大小       89 (0x59)
    .maxstack  3
    .locals init (class Game.Block V_0)
    IL_0000:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0005:  ldarg.1
    IL_0006:  ldfld      int32 Game.WorldItem::Value
    IL_000b:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0010:  ldelem.ref
    IL_0011:  stloc.0
    IL_0012:  ldarg.0
    IL_0013:  ldfld      float32[] Game.ComponentEatPickableBehavior::m_foodFactors
    IL_0018:  ldloc.0
    IL_0019:  ldfld      valuetype Game.FoodType Game.Block::FoodType
    IL_001e:  ldelem.r4
    IL_001f:  ldc.r4     0.0
    IL_0024:  ble.un.s   IL_0057

    IL_0026:  ldarg.1
    IL_0027:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
    IL_002c:  ldarg.0
    IL_002d:  ldfld      class Game.ComponentCreature Game.ComponentEatPickableBehavior::m_componentCreature
    IL_0032:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0037:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_003c:  call       float32 [Engine]Engine.Vector3::DistanceSquared(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0041:  ldc.r4     256.
    IL_0046:  bge.un.s   IL_0057

    IL_0048:  ldarg.0
    IL_0049:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Pickable,bool> Game.ComponentEatPickableBehavior::m_pickables
    IL_004e:  ldarg.1
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Pickable,bool>::Add(!0,
                                                                                                                                        !1)
    IL_0055:  ldc.i4.1
    IL_0056:  ret

    IL_0057:  ldc.i4.0
    IL_0058:  ret
  } // end of method ComponentEatPickableBehavior::TryAddPickable

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.StateMachine::.ctor()
    IL_0006:  stfld      class Game.StateMachine Game.ComponentEatPickableBehavior::m_stateMachine
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Pickable,bool>::.ctor()
    IL_0011:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Pickable,bool> Game.ComponentEatPickableBehavior::m_pickables
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void Game.Random::.ctor()
    IL_001c:  stfld      class Game.Random Game.ComponentEatPickableBehavior::m_random
    IL_0021:  ldarg.0
    IL_0022:  call       instance void Game.ComponentBehavior::.ctor()
    IL_0027:  ret
  } // end of method ComponentEatPickableBehavior::.ctor

  .method private hidebysig instance void 
          '<Load>b__24_0'(class Game.Pickable pickable) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance bool Game.ComponentEatPickableBehavior::TryAddPickable(class Game.Pickable)
    IL_0007:  brfalse.s  IL_0018

    IL_0009:  ldarg.0
    IL_000a:  ldfld      class Game.Pickable Game.ComponentEatPickableBehavior::m_pickable
    IL_000f:  brtrue.s   IL_0018

    IL_0011:  ldarg.0
    IL_0012:  ldarg.1
    IL_0013:  stfld      class Game.Pickable Game.ComponentEatPickableBehavior::m_pickable
    IL_0018:  ret
  } // end of method ComponentEatPickableBehavior::'<Load>b__24_0'

  .method private hidebysig instance void 
          '<Load>b__24_1'(class Game.Pickable pickable) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       30 (0x1e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Pickable,bool> Game.ComponentEatPickableBehavior::m_pickables
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Pickable,bool>::Remove(!0)
    IL_000c:  pop
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.Pickable Game.ComponentEatPickableBehavior::m_pickable
    IL_0013:  ldarg.1
    IL_0014:  bne.un.s   IL_001d

    IL_0016:  ldarg.0
    IL_0017:  ldnull
    IL_0018:  stfld      class Game.Pickable Game.ComponentEatPickableBehavior::m_pickable
    IL_001d:  ret
  } // end of method ComponentEatPickableBehavior::'<Load>b__24_1'

  .method private hidebysig instance void 
          '<Load>b__24_2'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     0.0
    IL_0006:  stfld      float32 Game.ComponentEatPickableBehavior::m_importanceLevel
    IL_000b:  ldarg.0
    IL_000c:  ldnull
    IL_000d:  stfld      class Game.Pickable Game.ComponentEatPickableBehavior::m_pickable
    IL_0012:  ret
  } // end of method ComponentEatPickableBehavior::'<Load>b__24_2'

  .method private hidebysig instance void 
          '<Load>b__24_3'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       169 (0xa9)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentEatPickableBehavior::m_satiation
    IL_0006:  ldc.r4     1.
    IL_000b:  bge.un.s   IL_0089

    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.Pickable Game.ComponentEatPickableBehavior::m_pickable
    IL_0013:  brtrue.s   IL_006e

    IL_0015:  ldarg.0
    IL_0016:  ldfld      class Game.SubsystemTime Game.ComponentEatPickableBehavior::m_subsystemTime
    IL_001b:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0020:  ldarg.0
    IL_0021:  ldfld      float64 Game.ComponentEatPickableBehavior::m_nextFindPickableTime
    IL_0026:  ble.un.s   IL_0089

    IL_0028:  ldarg.0
    IL_0029:  ldarg.0
    IL_002a:  ldfld      class Game.SubsystemTime Game.ComponentEatPickableBehavior::m_subsystemTime
    IL_002f:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0034:  ldarg.0
    IL_0035:  ldfld      class Game.Random Game.ComponentEatPickableBehavior::m_random
    IL_003a:  ldc.r4     2.
    IL_003f:  ldc.r4     4.
    IL_0044:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0049:  conv.r8
    IL_004a:  add
    IL_004b:  stfld      float64 Game.ComponentEatPickableBehavior::m_nextFindPickableTime
    IL_0050:  ldarg.0
    IL_0051:  ldarg.0
    IL_0052:  ldarg.0
    IL_0053:  ldfld      class Game.ComponentCreature Game.ComponentEatPickableBehavior::m_componentCreature
    IL_0058:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_005d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0062:  call       instance class Game.Pickable Game.ComponentEatPickableBehavior::FindPickable(valuetype [Engine]Engine.Vector3)
    IL_0067:  stfld      class Game.Pickable Game.ComponentEatPickableBehavior::m_pickable
    IL_006c:  br.s       IL_0089

    IL_006e:  ldarg.0
    IL_006f:  ldarg.0
    IL_0070:  ldfld      class Game.Random Game.ComponentEatPickableBehavior::m_random
    IL_0075:  ldc.r4     5.
    IL_007a:  ldc.r4     10.
    IL_007f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0084:  stfld      float32 Game.ComponentEatPickableBehavior::m_importanceLevel
    IL_0089:  ldarg.0
    IL_008a:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_008f:  brfalse.s  IL_00a8

    IL_0091:  ldarg.0
    IL_0092:  ldfld      class Game.StateMachine Game.ComponentEatPickableBehavior::m_stateMachine
    IL_0097:  ldstr      "Move"
    IL_009c:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_00a1:  ldarg.0
    IL_00a2:  ldc.i4.0
    IL_00a3:  stfld      int32 Game.ComponentEatPickableBehavior::m_blockedCount
    IL_00a8:  ret
  } // end of method ComponentEatPickableBehavior::'<Load>b__24_3'

  .method private hidebysig instance void 
          '<Load>b__24_4'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       163 (0xa3)
    .maxstack  9
    .locals init (float32 V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Pickable Game.ComponentEatPickableBehavior::m_pickable
    IL_0006:  brfalse    IL_00a2

    IL_000b:  ldarg.0
    IL_000c:  ldfld      float32 Game.ComponentEatPickableBehavior::m_satiation
    IL_0011:  ldc.r4     0.0
    IL_0016:  beq.s      IL_001f

    IL_0018:  ldc.r4     0.5
    IL_001d:  br.s       IL_0034

    IL_001f:  ldarg.0
    IL_0020:  ldfld      class Game.Random Game.ComponentEatPickableBehavior::m_random
    IL_0025:  ldc.r4     0.5
    IL_002a:  ldc.r4     0.69999999
    IL_002f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0034:  stloc.0
    IL_0035:  ldarg.0
    IL_0036:  ldfld      float32 Game.ComponentEatPickableBehavior::m_satiation
    IL_003b:  ldc.r4     0.0
    IL_0040:  beq.s      IL_0049

    IL_0042:  ldc.i4     0x1f4
    IL_0047:  br.s       IL_004e

    IL_0049:  ldc.i4     0x3e8
    IL_004e:  stloc.1
    IL_004f:  ldarg.0
    IL_0050:  ldfld      class Game.ComponentPathfinding Game.ComponentEatPickableBehavior::m_componentPathfinding
    IL_0055:  ldarg.0
    IL_0056:  ldfld      class Game.Pickable Game.ComponentEatPickableBehavior::m_pickable
    IL_005b:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
    IL_0060:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0065:  ldloc.0
    IL_0066:  ldc.r4     2.
    IL_006b:  ldloc.1
    IL_006c:  ldc.i4.1
    IL_006d:  ldc.i4.0
    IL_006e:  ldc.i4.1
    IL_006f:  ldnull
    IL_0070:  callvirt   instance void Game.ComponentPathfinding::SetDestination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                 float32,
                                                                                 float32,
                                                                                 int32,
                                                                                 bool,
                                                                                 bool,
                                                                                 bool,
                                                                                 class Game.ComponentBody)
    IL_0075:  ldarg.0
    IL_0076:  ldfld      class Game.Random Game.ComponentEatPickableBehavior::m_random
    IL_007b:  ldc.r4     0.0
    IL_0080:  ldc.r4     1.
    IL_0085:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_008a:  ldc.r4     0.66000003
    IL_008f:  bge.un.s   IL_00a2

    IL_0091:  ldarg.0
    IL_0092:  ldfld      class Game.ComponentCreature Game.ComponentEatPickableBehavior::m_componentCreature
    IL_0097:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_009c:  ldc.i4.1
    IL_009d:  callvirt   instance void Game.ComponentCreatureSounds::PlayIdleSound(bool)
    IL_00a2:  ret
  } // end of method ComponentEatPickableBehavior::'<Load>b__24_4'

  .method private hidebysig instance void 
          '<Load>b__24_5'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       310 (0x136)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_0)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0006:  brtrue.s   IL_001d

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.StateMachine Game.ComponentEatPickableBehavior::m_stateMachine
    IL_000e:  ldstr      "Inactive"
    IL_0013:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0018:  br         IL_00c2

    IL_001d:  ldarg.0
    IL_001e:  ldfld      class Game.Pickable Game.ComponentEatPickableBehavior::m_pickable
    IL_0023:  brtrue.s   IL_0035

    IL_0025:  ldarg.0
    IL_0026:  ldc.r4     0.0
    IL_002b:  stfld      float32 Game.ComponentEatPickableBehavior::m_importanceLevel
    IL_0030:  br         IL_00c2

    IL_0035:  ldarg.0
    IL_0036:  ldfld      class Game.ComponentPathfinding Game.ComponentEatPickableBehavior::m_componentPathfinding
    IL_003b:  callvirt   instance bool Game.ComponentPathfinding::get_IsStuck()
    IL_0040:  brfalse.s  IL_0061

    IL_0042:  ldarg.0
    IL_0043:  ldc.r4     0.0
    IL_0048:  stfld      float32 Game.ComponentEatPickableBehavior::m_importanceLevel
    IL_004d:  ldarg.0
    IL_004e:  ldarg.0
    IL_004f:  ldfld      float32 Game.ComponentEatPickableBehavior::m_satiation
    IL_0054:  ldc.r4     0.75
    IL_0059:  add
    IL_005a:  stfld      float32 Game.ComponentEatPickableBehavior::m_satiation
    IL_005f:  br.s       IL_00c2

    IL_0061:  ldarg.0
    IL_0062:  ldfld      class Game.ComponentPathfinding Game.ComponentEatPickableBehavior::m_componentPathfinding
    IL_0067:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPathfinding::get_Destination()
    IL_006c:  stloc.0
    IL_006d:  ldloca.s   V_0
    IL_006f:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0074:  brtrue.s   IL_0088

    IL_0076:  ldarg.0
    IL_0077:  ldfld      class Game.StateMachine Game.ComponentEatPickableBehavior::m_stateMachine
    IL_007c:  ldstr      "Eat"
    IL_0081:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0086:  br.s       IL_00c2

    IL_0088:  ldarg.0
    IL_0089:  ldfld      class Game.ComponentPathfinding Game.ComponentEatPickableBehavior::m_componentPathfinding
    IL_008e:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentPathfinding::get_Destination()
    IL_0093:  stloc.0
    IL_0094:  ldloca.s   V_0
    IL_0096:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_009b:  ldarg.0
    IL_009c:  ldfld      class Game.Pickable Game.ComponentEatPickableBehavior::m_pickable
    IL_00a1:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
    IL_00a6:  call       float32 [Engine]Engine.Vector3::DistanceSquared(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_00ab:  ldc.r4     6.25e-002
    IL_00b0:  ble.un.s   IL_00c2

    IL_00b2:  ldarg.0
    IL_00b3:  ldfld      class Game.StateMachine Game.ComponentEatPickableBehavior::m_stateMachine
    IL_00b8:  ldstr      "PickableMoved"
    IL_00bd:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_00c2:  ldarg.0
    IL_00c3:  ldfld      class Game.Random Game.ComponentEatPickableBehavior::m_random
    IL_00c8:  ldc.r4     0.0
    IL_00cd:  ldc.r4     1.
    IL_00d2:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00d7:  ldc.r4     0.1
    IL_00dc:  ldarg.0
    IL_00dd:  ldfld      class Game.SubsystemTime Game.ComponentEatPickableBehavior::m_subsystemTime
    IL_00e2:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_00e7:  mul
    IL_00e8:  bge.un.s   IL_00fb

    IL_00ea:  ldarg.0
    IL_00eb:  ldfld      class Game.ComponentCreature Game.ComponentEatPickableBehavior::m_componentCreature
    IL_00f0:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_00f5:  ldc.i4.1
    IL_00f6:  callvirt   instance void Game.ComponentCreatureSounds::PlayIdleSound(bool)
    IL_00fb:  ldarg.0
    IL_00fc:  ldfld      class Game.Pickable Game.ComponentEatPickableBehavior::m_pickable
    IL_0101:  brfalse.s  IL_0124

    IL_0103:  ldarg.0
    IL_0104:  ldfld      class Game.ComponentCreature Game.ComponentEatPickableBehavior::m_componentCreature
    IL_0109:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_010e:  ldarg.0
    IL_010f:  ldfld      class Game.Pickable Game.ComponentEatPickableBehavior::m_pickable
    IL_0114:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
    IL_0119:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_011e:  callvirt   instance void Game.ComponentCreatureModel::set_LookAtOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_0123:  ret

    IL_0124:  ldarg.0
    IL_0125:  ldfld      class Game.ComponentCreature Game.ComponentEatPickableBehavior::m_componentCreature
    IL_012a:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_012f:  ldc.i4.1
    IL_0130:  callvirt   instance void Game.ComponentCreatureModel::set_LookRandomOrder(bool)
    IL_0135:  ret
  } // end of method ComponentEatPickableBehavior::'<Load>b__24_5'

  .method private hidebysig instance void 
          '<Load>b__24_6'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       99 (0x63)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Pickable Game.ComponentEatPickableBehavior::m_pickable
    IL_0006:  brfalse.s  IL_0028

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.ComponentCreature Game.ComponentEatPickableBehavior::m_componentCreature
    IL_000e:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_0013:  ldarg.0
    IL_0014:  ldfld      class Game.Pickable Game.ComponentEatPickableBehavior::m_pickable
    IL_0019:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
    IL_001e:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0023:  callvirt   instance void Game.ComponentCreatureModel::set_LookAtOrder(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_0028:  ldarg.0
    IL_0029:  ldfld      class Game.SubsystemTime Game.ComponentEatPickableBehavior::m_subsystemTime
    IL_002e:  ldc.r8     0.25
    IL_0037:  ldarg.0
    IL_0038:  callvirt   instance int32 [System.Runtime]System.Object::GetHashCode()
    IL_003d:  ldc.i4.s   100
    IL_003f:  rem
    IL_0040:  conv.r8
    IL_0041:  ldc.r8     1.e-002
    IL_004a:  mul
    IL_004b:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_0050:  brfalse.s  IL_0062

    IL_0052:  ldarg.0
    IL_0053:  ldfld      class Game.StateMachine Game.ComponentEatPickableBehavior::m_stateMachine
    IL_0058:  ldstr      "Move"
    IL_005d:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0062:  ret
  } // end of method ComponentEatPickableBehavior::'<Load>b__24_6'

  .method private hidebysig instance void 
          '<Load>b__24_7'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       40 (0x28)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.Random Game.ComponentEatPickableBehavior::m_random
    IL_0007:  ldc.r4     4.
    IL_000c:  ldc.r4     5.
    IL_0011:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0016:  conv.r8
    IL_0017:  stfld      float64 Game.ComponentEatPickableBehavior::m_eatTime
    IL_001c:  ldarg.0
    IL_001d:  ldc.r4     0.0
    IL_0022:  stfld      float32 Game.ComponentEatPickableBehavior::m_blockedTime
    IL_0027:  ret
  } // end of method ComponentEatPickableBehavior::'<Load>b__24_7'

  .method private hidebysig instance void 
          '<Load>b__24_8'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       617 (0x269)
    .maxstack  9
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_0006:  brtrue.s   IL_0018

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.StateMachine Game.ComponentEatPickableBehavior::m_stateMachine
    IL_000e:  ldstr      "Inactive"
    IL_0013:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0018:  ldarg.0
    IL_0019:  ldfld      class Game.Pickable Game.ComponentEatPickableBehavior::m_pickable
    IL_001e:  brtrue.s   IL_002b

    IL_0020:  ldarg.0
    IL_0021:  ldc.r4     0.0
    IL_0026:  stfld      float32 Game.ComponentEatPickableBehavior::m_importanceLevel
    IL_002b:  ldarg.0
    IL_002c:  ldfld      class Game.Pickable Game.ComponentEatPickableBehavior::m_pickable
    IL_0031:  brfalse    IL_01e0

    IL_0036:  ldarg.0
    IL_0037:  ldfld      class Game.ComponentCreature Game.ComponentEatPickableBehavior::m_componentCreature
    IL_003c:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_0041:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_0046:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_004b:  ldarg.0
    IL_004c:  ldfld      class Game.ComponentCreature Game.ComponentEatPickableBehavior::m_componentCreature
    IL_0051:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0056:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_005b:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0060:  ldarg.0
    IL_0061:  ldfld      class Game.ComponentCreature Game.ComponentEatPickableBehavior::m_componentCreature
    IL_0066:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_006b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_0070:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0075:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_007a:  ldarg.0
    IL_007b:  ldfld      class Game.Pickable Game.ComponentEatPickableBehavior::m_pickable
    IL_0080:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
    IL_0085:  call       float32 [Engine]Engine.Vector3::DistanceSquared(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_008a:  ldc.r4     0.5625
    IL_008f:  bge.un     IL_014b

    IL_0094:  ldarg.0
    IL_0095:  ldarg.0
    IL_0096:  ldfld      float64 Game.ComponentEatPickableBehavior::m_eatTime
    IL_009b:  ldarg.0
    IL_009c:  ldfld      class Game.SubsystemTime Game.ComponentEatPickableBehavior::m_subsystemTime
    IL_00a1:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_00a6:  conv.r8
    IL_00a7:  sub
    IL_00a8:  stfld      float64 Game.ComponentEatPickableBehavior::m_eatTime
    IL_00ad:  ldarg.0
    IL_00ae:  ldc.r4     0.0
    IL_00b3:  stfld      float32 Game.ComponentEatPickableBehavior::m_blockedTime
    IL_00b8:  ldarg.0
    IL_00b9:  ldfld      float64 Game.ComponentEatPickableBehavior::m_eatTime
    IL_00be:  ldc.r8     0.0
    IL_00c7:  bgt.un     IL_018d

    IL_00cc:  ldarg.0
    IL_00cd:  ldarg.0
    IL_00ce:  ldfld      float32 Game.ComponentEatPickableBehavior::m_satiation
    IL_00d3:  ldc.r4     1.
    IL_00d8:  add
    IL_00d9:  stfld      float32 Game.ComponentEatPickableBehavior::m_satiation
    IL_00de:  ldarg.0
    IL_00df:  ldfld      class Game.Pickable Game.ComponentEatPickableBehavior::m_pickable
    IL_00e4:  ldarg.0
    IL_00e5:  ldfld      class Game.Pickable Game.ComponentEatPickableBehavior::m_pickable
    IL_00ea:  ldfld      int32 Game.Pickable::Count
    IL_00ef:  ldc.i4.1
    IL_00f0:  sub
    IL_00f1:  ldc.i4.0
    IL_00f2:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00f7:  stfld      int32 Game.Pickable::Count
    IL_00fc:  ldarg.0
    IL_00fd:  ldfld      class Game.Pickable Game.ComponentEatPickableBehavior::m_pickable
    IL_0102:  ldfld      int32 Game.Pickable::Count
    IL_0107:  brtrue.s   IL_0122

    IL_0109:  ldarg.0
    IL_010a:  ldfld      class Game.Pickable Game.ComponentEatPickableBehavior::m_pickable
    IL_010f:  ldc.i4.1
    IL_0110:  stfld      bool Game.WorldItem::ToRemove
    IL_0115:  ldarg.0
    IL_0116:  ldc.r4     0.0
    IL_011b:  stfld      float32 Game.ComponentEatPickableBehavior::m_importanceLevel
    IL_0120:  br.s       IL_018d

    IL_0122:  ldarg.0
    IL_0123:  ldfld      class Game.Random Game.ComponentEatPickableBehavior::m_random
    IL_0128:  ldc.r4     0.0
    IL_012d:  ldc.r4     1.
    IL_0132:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0137:  ldc.r4     0.5
    IL_013c:  bge.un.s   IL_018d

    IL_013e:  ldarg.0
    IL_013f:  ldc.r4     0.0
    IL_0144:  stfld      float32 Game.ComponentEatPickableBehavior::m_importanceLevel
    IL_0149:  br.s       IL_018d

    IL_014b:  ldarg.0
    IL_014c:  ldfld      class Game.ComponentPathfinding Game.ComponentEatPickableBehavior::m_componentPathfinding
    IL_0151:  ldarg.0
    IL_0152:  ldfld      class Game.Pickable Game.ComponentEatPickableBehavior::m_pickable
    IL_0157:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
    IL_015c:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0161:  ldc.r4     0.40000001
    IL_0166:  ldc.r4     1.5
    IL_016b:  ldc.i4.0
    IL_016c:  ldc.i4.0
    IL_016d:  ldc.i4.1
    IL_016e:  ldc.i4.0
    IL_016f:  ldnull
    IL_0170:  callvirt   instance void Game.ComponentPathfinding::SetDestination(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                 float32,
                                                                                 float32,
                                                                                 int32,
                                                                                 bool,
                                                                                 bool,
                                                                                 bool,
                                                                                 class Game.ComponentBody)
    IL_0175:  ldarg.0
    IL_0176:  ldarg.0
    IL_0177:  ldfld      float32 Game.ComponentEatPickableBehavior::m_blockedTime
    IL_017c:  ldarg.0
    IL_017d:  ldfld      class Game.SubsystemTime Game.ComponentEatPickableBehavior::m_subsystemTime
    IL_0182:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_0187:  add
    IL_0188:  stfld      float32 Game.ComponentEatPickableBehavior::m_blockedTime
    IL_018d:  ldarg.0
    IL_018e:  ldfld      float32 Game.ComponentEatPickableBehavior::m_blockedTime
    IL_0193:  ldc.r4     3.
    IL_0198:  ble.un.s   IL_01e0

    IL_019a:  ldarg.0
    IL_019b:  ldarg.0
    IL_019c:  ldfld      int32 Game.ComponentEatPickableBehavior::m_blockedCount
    IL_01a1:  ldc.i4.1
    IL_01a2:  add
    IL_01a3:  stfld      int32 Game.ComponentEatPickableBehavior::m_blockedCount
    IL_01a8:  ldarg.0
    IL_01a9:  ldfld      int32 Game.ComponentEatPickableBehavior::m_blockedCount
    IL_01ae:  ldc.i4.3
    IL_01af:  blt.s      IL_01d0

    IL_01b1:  ldarg.0
    IL_01b2:  ldc.r4     0.0
    IL_01b7:  stfld      float32 Game.ComponentEatPickableBehavior::m_importanceLevel
    IL_01bc:  ldarg.0
    IL_01bd:  ldarg.0
    IL_01be:  ldfld      float32 Game.ComponentEatPickableBehavior::m_satiation
    IL_01c3:  ldc.r4     0.75
    IL_01c8:  add
    IL_01c9:  stfld      float32 Game.ComponentEatPickableBehavior::m_satiation
    IL_01ce:  br.s       IL_01e0

    IL_01d0:  ldarg.0
    IL_01d1:  ldfld      class Game.StateMachine Game.ComponentEatPickableBehavior::m_stateMachine
    IL_01d6:  ldstr      "Move"
    IL_01db:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_01e0:  ldarg.0
    IL_01e1:  ldfld      class Game.ComponentCreature Game.ComponentEatPickableBehavior::m_componentCreature
    IL_01e6:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_01eb:  ldc.i4.1
    IL_01ec:  callvirt   instance void Game.ComponentCreatureModel::set_FeedOrder(bool)
    IL_01f1:  ldarg.0
    IL_01f2:  ldfld      class Game.Random Game.ComponentEatPickableBehavior::m_random
    IL_01f7:  ldc.r4     0.0
    IL_01fc:  ldc.r4     1.
    IL_0201:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0206:  ldc.r4     0.1
    IL_020b:  ldarg.0
    IL_020c:  ldfld      class Game.SubsystemTime Game.ComponentEatPickableBehavior::m_subsystemTime
    IL_0211:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_0216:  mul
    IL_0217:  bge.un.s   IL_022a

    IL_0219:  ldarg.0
    IL_021a:  ldfld      class Game.ComponentCreature Game.ComponentEatPickableBehavior::m_componentCreature
    IL_021f:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_0224:  ldc.i4.1
    IL_0225:  callvirt   instance void Game.ComponentCreatureSounds::PlayIdleSound(bool)
    IL_022a:  ldarg.0
    IL_022b:  ldfld      class Game.Random Game.ComponentEatPickableBehavior::m_random
    IL_0230:  ldc.r4     0.0
    IL_0235:  ldc.r4     1.
    IL_023a:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_023f:  ldc.r4     1.5
    IL_0244:  ldarg.0
    IL_0245:  ldfld      class Game.SubsystemTime Game.ComponentEatPickableBehavior::m_subsystemTime
    IL_024a:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_024f:  mul
    IL_0250:  bge.un.s   IL_0268

    IL_0252:  ldarg.0
    IL_0253:  ldfld      class Game.ComponentCreature Game.ComponentEatPickableBehavior::m_componentCreature
    IL_0258:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_025d:  ldc.r4     2.
    IL_0262:  callvirt   instance bool Game.ComponentCreatureSounds::PlayFootstepSound(float32)
    IL_0267:  pop
    IL_0268:  ret
  } // end of method ComponentEatPickableBehavior::'<Load>b__24_8'

  .property instance float32 Satiation()
  {
    .get instance float32 Game.ComponentEatPickableBehavior::get_Satiation()
  } // end of property ComponentEatPickableBehavior::Satiation
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentEatPickableBehavior::get_UpdateOrder()
  } // end of property ComponentEatPickableBehavior::UpdateOrder
  .property instance float32 ImportanceLevel()
  {
    .get instance float32 Game.ComponentEatPickableBehavior::get_ImportanceLevel()
  } // end of property ComponentEatPickableBehavior::ImportanceLevel
} // end of class Game.ComponentEatPickableBehavior