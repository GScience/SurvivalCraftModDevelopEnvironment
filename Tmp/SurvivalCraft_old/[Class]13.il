.class public auto ansi beforefieldinit Game.ComponentDigInMudBehavior
       extends Game.ComponentBehavior
       implements Game.IUpdateable
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass21_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public string digInBlockName
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass21_0'::.ctor

    .method assembly hidebysig instance bool 
            '<Load>b__0'(class Game.Block b) cil managed
    {
      // 代码大小       23 (0x17)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
      IL_0006:  callvirt   instance string [System.Runtime]System.Type::get_Name()
      IL_000b:  ldarg.0
      IL_000c:  ldfld      string Game.ComponentDigInMudBehavior/'<>c__DisplayClass21_0'::digInBlockName
      IL_0011:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0016:  ret
    } // end of method '<>c__DisplayClass21_0'::'<Load>b__0'

  } // end of class '<>c__DisplayClass21_0'

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.ComponentDigInMudBehavior/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`3<int32,float32,bool> '<>9__22_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.ComponentDigInMudBehavior/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.ComponentDigInMudBehavior/'<>c' Game.ComponentDigInMudBehavior/'<>c'::'<>9'
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
            '<FindDestination>b__22_0'(int32 'value',
                                       float32 d) cil managed
    {
      // 代码大小       26 (0x1a)
      .maxstack  2
      .locals init (int32 V_0)
      IL_0000:  ldarg.1
      IL_0001:  call       int32 Game.Terrain::ExtractContents(int32)
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
    } // end of method '<>c'::'<FindDestination>b__22_0'

  } // end of class '<>c'

  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.ComponentCreature m_componentCreature
  .field private class Game.ComponentPathfinding m_componentPathfinding
  .field private class Game.ComponentMiner m_componentMiner
  .field private class Game.ComponentFishModel m_componentFishModel
  .field private class Game.ComponentSwimAwayBehavior m_componentSwimAwayBehavior
  .field private class Game.StateMachine m_stateMachine
  .field private class Game.Random m_random
  .field private float32 m_importanceLevel
  .field private float64 m_sinkTime
  .field private float64 m_digInTime
  .field private float64 m_digOutTime
  .field private float32 m_maxDigInDepth
  .field private int32 m_digInBlockIndex
  .field private class Game.ComponentBody m_collidedWithBody
  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentDigInMudBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.StateMachine Game.ComponentDigInMudBehavior::m_stateMachine
    IL_0006:  callvirt   instance void Game.StateMachine::Update()
    IL_000b:  ldarg.0
    IL_000c:  ldnull
    IL_000d:  stfld      class Game.ComponentBody Game.ComponentDigInMudBehavior::m_collidedWithBody
    IL_0012:  ret
  } // end of method ComponentDigInMudBehavior::Update

  .method public hidebysig specialname virtual 
          instance float32  get_ImportanceLevel() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentDigInMudBehavior::m_importanceLevel
    IL_0006:  ret
  } // end of method ComponentDigInMudBehavior::get_ImportanceLevel

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       383 (0x17f)
    .maxstack  5
    .locals init (class Game.ComponentDigInMudBehavior/'<>c__DisplayClass21_0' V_0)
    IL_0000:  newobj     instance void Game.ComponentDigInMudBehavior/'<>c__DisplayClass21_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldarg.0
    IL_0008:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_000d:  ldc.i4.1
    IL_000e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0013:  stfld      class Game.SubsystemTerrain Game.ComponentDigInMudBehavior::m_subsystemTerrain
    IL_0018:  ldarg.0
    IL_0019:  ldarg.0
    IL_001a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_001f:  ldc.i4.1
    IL_0020:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_0025:  stfld      class Game.SubsystemTime Game.ComponentDigInMudBehavior::m_subsystemTime
    IL_002a:  ldarg.0
    IL_002b:  ldarg.0
    IL_002c:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0031:  ldc.i4.1
    IL_0032:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_0037:  stfld      class Game.ComponentCreature Game.ComponentDigInMudBehavior::m_componentCreature
    IL_003c:  ldarg.0
    IL_003d:  ldarg.0
    IL_003e:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0043:  ldc.i4.1
    IL_0044:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPathfinding>(bool)
    IL_0049:  stfld      class Game.ComponentPathfinding Game.ComponentDigInMudBehavior::m_componentPathfinding
    IL_004e:  ldarg.0
    IL_004f:  ldarg.0
    IL_0050:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0055:  ldc.i4.1
    IL_0056:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentMiner>(bool)
    IL_005b:  stfld      class Game.ComponentMiner Game.ComponentDigInMudBehavior::m_componentMiner
    IL_0060:  ldarg.0
    IL_0061:  ldarg.0
    IL_0062:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0067:  ldc.i4.1
    IL_0068:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentFishModel>(bool)
    IL_006d:  stfld      class Game.ComponentFishModel Game.ComponentDigInMudBehavior::m_componentFishModel
    IL_0072:  ldarg.0
    IL_0073:  ldarg.0
    IL_0074:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0079:  ldc.i4.1
    IL_007a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentSwimAwayBehavior>(bool)
    IL_007f:  stfld      class Game.ComponentSwimAwayBehavior Game.ComponentDigInMudBehavior::m_componentSwimAwayBehavior
    IL_0084:  ldloc.0
    IL_0085:  ldarg.1
    IL_0086:  ldstr      "DigInBlockName"
    IL_008b:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_0090:  stfld      string Game.ComponentDigInMudBehavior/'<>c__DisplayClass21_0'::digInBlockName
    IL_0095:  ldarg.0
    IL_0096:  ldloc.0
    IL_0097:  ldfld      string Game.ComponentDigInMudBehavior/'<>c__DisplayClass21_0'::digInBlockName
    IL_009c:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_00a1:  brfalse.s  IL_00a6

    IL_00a3:  ldc.i4.0
    IL_00a4:  br.s       IL_00c1

    IL_00a6:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00ab:  ldloc.0
    IL_00ac:  ldftn      instance bool Game.ComponentDigInMudBehavior/'<>c__DisplayClass21_0'::'<Load>b__0'(class Game.Block)
    IL_00b2:  newobj     instance void class [System.Runtime]System.Func`2<class Game.Block,bool>::.ctor(object,
                                                                                                         native int)
    IL_00b7:  call       !!0 [System.Linq]System.Linq.Enumerable::First<class Game.Block>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                          class [System.Runtime]System.Func`2<!!0,bool>)
    IL_00bc:  ldfld      int32 Game.Block::BlockIndex
    IL_00c1:  stfld      int32 Game.ComponentDigInMudBehavior::m_digInBlockIndex
    IL_00c6:  ldarg.0
    IL_00c7:  ldarg.1
    IL_00c8:  ldstr      "MaxDigInDepth"
    IL_00cd:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00d2:  stfld      float32 Game.ComponentDigInMudBehavior::m_maxDigInDepth
    IL_00d7:  ldarg.0
    IL_00d8:  ldfld      class Game.ComponentCreature Game.ComponentDigInMudBehavior::m_componentCreature
    IL_00dd:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00e2:  ldarg.0
    IL_00e3:  ldftn      instance void Game.ComponentDigInMudBehavior::'<Load>b__21_1'(class Game.ComponentBody)
    IL_00e9:  newobj     instance void class [System.Runtime]System.Action`1<class Game.ComponentBody>::.ctor(object,
                                                                                                              native int)
    IL_00ee:  callvirt   instance void Game.ComponentBody::add_CollidedWithBody(class [System.Runtime]System.Action`1<class Game.ComponentBody>)
    IL_00f3:  ldarg.0
    IL_00f4:  ldfld      class Game.StateMachine Game.ComponentDigInMudBehavior::m_stateMachine
    IL_00f9:  ldstr      "Inactive"
    IL_00fe:  ldarg.0
    IL_00ff:  ldftn      instance void Game.ComponentDigInMudBehavior::'<Load>b__21_2'()
    IL_0105:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_010a:  ldarg.0
    IL_010b:  ldftn      instance void Game.ComponentDigInMudBehavior::'<Load>b__21_3'()
    IL_0111:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0116:  ldnull
    IL_0117:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_011c:  ldarg.0
    IL_011d:  ldfld      class Game.StateMachine Game.ComponentDigInMudBehavior::m_stateMachine
    IL_0122:  ldstr      "Sink"
    IL_0127:  ldarg.0
    IL_0128:  ldftn      instance void Game.ComponentDigInMudBehavior::'<Load>b__21_4'()
    IL_012e:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0133:  ldarg.0
    IL_0134:  ldftn      instance void Game.ComponentDigInMudBehavior::'<Load>b__21_5'()
    IL_013a:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_013f:  ldnull
    IL_0140:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_0145:  ldarg.0
    IL_0146:  ldfld      class Game.StateMachine Game.ComponentDigInMudBehavior::m_stateMachine
    IL_014b:  ldstr      "DigIn"
    IL_0150:  ldarg.0
    IL_0151:  ldftn      instance void Game.ComponentDigInMudBehavior::'<Load>b__21_6'()
    IL_0157:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_015c:  ldarg.0
    IL_015d:  ldftn      instance void Game.ComponentDigInMudBehavior::'<Load>b__21_7'()
    IL_0163:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0168:  ldnull
    IL_0169:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_016e:  ldarg.0
    IL_016f:  ldfld      class Game.StateMachine Game.ComponentDigInMudBehavior::m_stateMachine
    IL_0174:  ldstr      "Inactive"
    IL_0179:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_017e:  ret
  } // end of method ComponentDigInMudBehavior::Load

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
    IL_0008:  ldfld      class Game.Random Game.ComponentDigInMudBehavior::m_random
    IL_000d:  ldc.r4     1.
    IL_0012:  ldc.r4     1.
    IL_0017:  ldc.i4.0
    IL_0018:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Random::UniformVector2(float32,
                                                                                               float32,
                                                                                               bool)
    IL_001d:  stloc.1
    IL_001e:  ldc.r4     0.2
    IL_0023:  ldarg.0
    IL_0024:  ldfld      class Game.Random Game.ComponentDigInMudBehavior::m_random
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
    IL_0053:  ldfld      class Game.ComponentCreature Game.ComponentDigInMudBehavior::m_componentCreature
    IL_0058:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_005d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0062:  ldarg.0
    IL_0063:  ldfld      class Game.Random Game.ComponentDigInMudBehavior::m_random
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
    IL_0085:  ldfld      class Game.SubsystemTerrain Game.ComponentDigInMudBehavior::m_subsystemTerrain
    IL_008a:  ldarg.0
    IL_008b:  ldfld      class Game.ComponentCreature Game.ComponentDigInMudBehavior::m_componentCreature
    IL_0090:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0095:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_009a:  ldloc.s    V_4
    IL_009c:  ldc.i4.0
    IL_009d:  ldc.i4.0
    IL_009e:  ldsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.ComponentDigInMudBehavior/'<>c'::'<>9__22_0'
    IL_00a3:  dup
    IL_00a4:  brtrue.s   IL_00bd

    IL_00a6:  pop
    IL_00a7:  ldsfld     class Game.ComponentDigInMudBehavior/'<>c' Game.ComponentDigInMudBehavior/'<>c'::'<>9'
    IL_00ac:  ldftn      instance bool Game.ComponentDigInMudBehavior/'<>c'::'<FindDestination>b__22_0'(int32,
                                                                                                        float32)
    IL_00b2:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                      native int)
    IL_00b7:  dup
    IL_00b8:  stsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.ComponentDigInMudBehavior/'<>c'::'<>9__22_0'
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
    IL_00e9:  ldfld      class Game.ComponentCreature Game.ComponentDigInMudBehavior::m_componentCreature
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
  } // end of method ComponentDigInMudBehavior::FindDestination

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       44 (0x2c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.StateMachine::.ctor()
    IL_0006:  stfld      class Game.StateMachine Game.ComponentDigInMudBehavior::m_stateMachine
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.Random::.ctor()
    IL_0011:  stfld      class Game.Random Game.ComponentDigInMudBehavior::m_random
    IL_0016:  ldarg.0
    IL_0017:  ldc.r8     (00 00 00 00 00 00 F0 FF)
    IL_0020:  stfld      float64 Game.ComponentDigInMudBehavior::m_digOutTime
    IL_0025:  ldarg.0
    IL_0026:  call       instance void Game.ComponentBehavior::.ctor()
    IL_002b:  ret
  } // end of method ComponentDigInMudBehavior::.ctor

  .method private hidebysig instance void 
          '<Load>b__21_1'(class Game.ComponentBody b) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ComponentBody Game.ComponentDigInMudBehavior::m_collidedWithBody
    IL_0007:  ret
  } // end of method ComponentDigInMudBehavior::'<Load>b__21_1'

  .method private hidebysig instance void 
          '<Load>b__21_2'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     0.0
    IL_0006:  stfld      float32 Game.ComponentDigInMudBehavior::m_importanceLevel
    IL_000b:  ret
  } // end of method ComponentDigInMudBehavior::'<Load>b__21_2'

  .method private hidebysig instance void 
          '<Load>b__21_3'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       252 (0xfc)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Random Game.ComponentDigInMudBehavior::m_random
    IL_0006:  ldc.r4     0.0
    IL_000b:  ldc.r4     1.
    IL_0010:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0015:  ldc.r4     0.5
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.SubsystemTime Game.ComponentDigInMudBehavior::m_subsystemTime
    IL_0020:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_0025:  mul
    IL_0026:  bge.un     IL_00e3

    IL_002b:  ldarg.0
    IL_002c:  ldfld      class Game.SubsystemTime Game.ComponentDigInMudBehavior::m_subsystemTime
    IL_0031:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0036:  ldarg.0
    IL_0037:  ldfld      float64 Game.ComponentDigInMudBehavior::m_digOutTime
    IL_003c:  ldc.r8     15.
    IL_0045:  add
    IL_0046:  ble.un     IL_00e3

    IL_004b:  ldarg.0
    IL_004c:  ldfld      int32 Game.ComponentDigInMudBehavior::m_digInBlockIndex
    IL_0051:  brfalse    IL_00e3

    IL_0056:  ldarg.0
    IL_0057:  ldfld      class Game.ComponentCreature Game.ComponentDigInMudBehavior::m_componentCreature
    IL_005c:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0061:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0066:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_006b:  call       int32 Game.Terrain::ToCell(float32)
    IL_0070:  stloc.0
    IL_0071:  ldarg.0
    IL_0072:  ldfld      class Game.ComponentCreature Game.ComponentDigInMudBehavior::m_componentCreature
    IL_0077:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_007c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0081:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0086:  ldc.r4     0.89999998
    IL_008b:  sub
    IL_008c:  call       int32 Game.Terrain::ToCell(float32)
    IL_0091:  stloc.1
    IL_0092:  ldarg.0
    IL_0093:  ldfld      class Game.ComponentCreature Game.ComponentDigInMudBehavior::m_componentCreature
    IL_0098:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_009d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_00a2:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00a7:  call       int32 Game.Terrain::ToCell(float32)
    IL_00ac:  stloc.2
    IL_00ad:  ldarg.0
    IL_00ae:  ldfld      class Game.SubsystemTerrain Game.ComponentDigInMudBehavior::m_subsystemTerrain
    IL_00b3:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00b8:  ldloc.0
    IL_00b9:  ldloc.1
    IL_00ba:  ldloc.2
    IL_00bb:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_00c0:  ldarg.0
    IL_00c1:  ldfld      int32 Game.ComponentDigInMudBehavior::m_digInBlockIndex
    IL_00c6:  bne.un.s   IL_00e3

    IL_00c8:  ldarg.0
    IL_00c9:  ldarg.0
    IL_00ca:  ldfld      class Game.Random Game.ComponentDigInMudBehavior::m_random
    IL_00cf:  ldc.r4     1.
    IL_00d4:  ldc.r4     3.
    IL_00d9:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00de:  stfld      float32 Game.ComponentDigInMudBehavior::m_importanceLevel
    IL_00e3:  ldarg.0
    IL_00e4:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_00e9:  brfalse.s  IL_00fb

    IL_00eb:  ldarg.0
    IL_00ec:  ldfld      class Game.StateMachine Game.ComponentDigInMudBehavior::m_stateMachine
    IL_00f1:  ldstr      "Sink"
    IL_00f6:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_00fb:  ret
  } // end of method ComponentDigInMudBehavior::'<Load>b__21_3'

  .method private hidebysig instance void 
          '<Load>b__21_4'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       40 (0x28)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     10.
    IL_0006:  stfld      float32 Game.ComponentDigInMudBehavior::m_importanceLevel
    IL_000b:  ldarg.0
    IL_000c:  ldarg.0
    IL_000d:  ldfld      class Game.SubsystemTime Game.ComponentDigInMudBehavior::m_subsystemTime
    IL_0012:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0017:  stfld      float64 Game.ComponentDigInMudBehavior::m_sinkTime
    IL_001c:  ldarg.0
    IL_001d:  ldfld      class Game.ComponentPathfinding Game.ComponentDigInMudBehavior::m_componentPathfinding
    IL_0022:  callvirt   instance void Game.ComponentPathfinding::Stop()
    IL_0027:  ret
  } // end of method ComponentDigInMudBehavior::'<Load>b__21_4'

  .method private hidebysig instance void 
          '<Load>b__21_5'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       187 (0xbb)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0,
             int32 V_1,
             valuetype [Engine]Engine.Vector3 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Random Game.ComponentDigInMudBehavior::m_random
    IL_0006:  ldc.r4     0.0
    IL_000b:  ldc.r4     1.
    IL_0010:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0015:  ldc.r4     2.
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.SubsystemTime Game.ComponentDigInMudBehavior::m_subsystemTime
    IL_0020:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_0025:  mul
    IL_0026:  bge.un.s   IL_0085

    IL_0028:  ldarg.0
    IL_0029:  ldfld      class Game.ComponentCreature Game.ComponentDigInMudBehavior::m_componentCreature
    IL_002e:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0033:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_0038:  stloc.0
    IL_0039:  ldarg.0
    IL_003a:  ldfld      int32 Game.ComponentDigInMudBehavior::m_digInBlockIndex
    IL_003f:  stloc.1
    IL_0040:  ldloca.s   V_0
    IL_0042:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::GetValueOrDefault()
    IL_0047:  ldloc.1
    IL_0048:  beq.s      IL_004d

    IL_004a:  ldc.i4.0
    IL_004b:  br.s       IL_0054

    IL_004d:  ldloca.s   V_0
    IL_004f:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0054:  brfalse.s  IL_0085

    IL_0056:  ldarg.0
    IL_0057:  ldfld      class Game.ComponentCreature Game.ComponentDigInMudBehavior::m_componentCreature
    IL_005c:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0061:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_Velocity()
    IL_0066:  stloc.2
    IL_0067:  ldloca.s   V_2
    IL_0069:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
    IL_006e:  ldc.r4     1.
    IL_0073:  bge.un.s   IL_0085

    IL_0075:  ldarg.0
    IL_0076:  ldfld      class Game.StateMachine Game.ComponentDigInMudBehavior::m_stateMachine
    IL_007b:  ldstr      "DigIn"
    IL_0080:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0085:  ldarg.0
    IL_0086:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_008b:  brfalse.s  IL_00aa

    IL_008d:  ldarg.0
    IL_008e:  ldfld      class Game.SubsystemTime Game.ComponentDigInMudBehavior::m_subsystemTime
    IL_0093:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0098:  ldarg.0
    IL_0099:  ldfld      float64 Game.ComponentDigInMudBehavior::m_sinkTime
    IL_009e:  ldc.r8     6.
    IL_00a7:  add
    IL_00a8:  ble.un.s   IL_00ba

    IL_00aa:  ldarg.0
    IL_00ab:  ldfld      class Game.StateMachine Game.ComponentDigInMudBehavior::m_stateMachine
    IL_00b0:  ldstr      "Inactive"
    IL_00b5:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_00ba:  ret
  } // end of method ComponentDigInMudBehavior::'<Load>b__21_5'

  .method private hidebysig instance void 
          '<Load>b__21_6'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       53 (0x35)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.SubsystemTime Game.ComponentDigInMudBehavior::m_subsystemTime
    IL_0007:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_000c:  stfld      float64 Game.ComponentDigInMudBehavior::m_digInTime
    IL_0011:  ldarg.0
    IL_0012:  ldarg.0
    IL_0013:  ldfld      float64 Game.ComponentDigInMudBehavior::m_digInTime
    IL_0018:  ldarg.0
    IL_0019:  ldfld      class Game.Random Game.ComponentDigInMudBehavior::m_random
    IL_001e:  ldc.r4     30.
    IL_0023:  ldc.r4     60.
    IL_0028:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_002d:  conv.r8
    IL_002e:  add
    IL_002f:  stfld      float64 Game.ComponentDigInMudBehavior::m_digOutTime
    IL_0034:  ret
  } // end of method ComponentDigInMudBehavior::'<Load>b__21_6'

  .method private hidebysig instance void 
          '<Load>b__21_7'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       286 (0x11e)
    .maxstack  4
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0,
             int32 V_1,
             valuetype [Engine]Engine.Vector3 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentFishModel Game.ComponentDigInMudBehavior::m_componentFishModel
    IL_0006:  ldarg.0
    IL_0007:  ldfld      float32 Game.ComponentDigInMudBehavior::m_maxDigInDepth
    IL_000c:  callvirt   instance void Game.ComponentFishModel::set_DigInOrder(float32)
    IL_0011:  ldarg.0
    IL_0012:  ldfld      class Game.ComponentBody Game.ComponentDigInMudBehavior::m_collidedWithBody
    IL_0017:  brfalse    IL_00a2

    IL_001c:  ldarg.0
    IL_001d:  ldfld      class Game.SubsystemTime Game.ComponentDigInMudBehavior::m_subsystemTime
    IL_0022:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0027:  ldarg.0
    IL_0028:  ldfld      float64 Game.ComponentDigInMudBehavior::m_digInTime
    IL_002d:  sub
    IL_002e:  ldc.r8     2.
    IL_0037:  ble.un.s   IL_0081

    IL_0039:  ldarg.0
    IL_003a:  ldfld      class Game.ComponentBody Game.ComponentDigInMudBehavior::m_collidedWithBody
    IL_003f:  callvirt   instance float32 Game.ComponentBody::get_Density()
    IL_0044:  ldc.r4     0.94999999
    IL_0049:  bge.un.s   IL_0081

    IL_004b:  ldarg.0
    IL_004c:  ldfld      class Game.ComponentMiner Game.ComponentDigInMudBehavior::m_componentMiner
    IL_0051:  ldarg.0
    IL_0052:  ldfld      class Game.ComponentBody Game.ComponentDigInMudBehavior::m_collidedWithBody
    IL_0057:  ldarg.0
    IL_0058:  ldfld      class Game.ComponentBody Game.ComponentDigInMudBehavior::m_collidedWithBody
    IL_005d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0062:  ldarg.0
    IL_0063:  ldfld      class Game.ComponentCreature Game.ComponentDigInMudBehavior::m_componentCreature
    IL_0068:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_006d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0072:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0077:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_007c:  callvirt   instance void Game.ComponentMiner::Hit(class Game.ComponentBody,
                                                                valuetype [Engine]Engine.Vector3)
    IL_0081:  ldarg.0
    IL_0082:  ldfld      class Game.ComponentSwimAwayBehavior Game.ComponentDigInMudBehavior::m_componentSwimAwayBehavior
    IL_0087:  ldarg.0
    IL_0088:  ldfld      class Game.ComponentBody Game.ComponentDigInMudBehavior::m_collidedWithBody
    IL_008d:  callvirt   instance void Game.ComponentSwimAwayBehavior::SwimAwayFrom(class Game.ComponentBody)
    IL_0092:  ldarg.0
    IL_0093:  ldfld      class Game.StateMachine Game.ComponentDigInMudBehavior::m_stateMachine
    IL_0098:  ldstr      "Inactive"
    IL_009d:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_00a2:  ldarg.0
    IL_00a3:  callvirt   instance bool Game.ComponentBehavior::get_IsActive()
    IL_00a8:  brfalse.s  IL_010d

    IL_00aa:  ldarg.0
    IL_00ab:  ldfld      class Game.SubsystemTime Game.ComponentDigInMudBehavior::m_subsystemTime
    IL_00b0:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_00b5:  ldarg.0
    IL_00b6:  ldfld      float64 Game.ComponentDigInMudBehavior::m_digOutTime
    IL_00bb:  bge.s      IL_010d

    IL_00bd:  ldarg.0
    IL_00be:  ldfld      class Game.ComponentCreature Game.ComponentDigInMudBehavior::m_componentCreature
    IL_00c3:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00c8:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_00cd:  stloc.0
    IL_00ce:  ldarg.0
    IL_00cf:  ldfld      int32 Game.ComponentDigInMudBehavior::m_digInBlockIndex
    IL_00d4:  stloc.1
    IL_00d5:  ldloca.s   V_0
    IL_00d7:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::GetValueOrDefault()
    IL_00dc:  ldloc.1
    IL_00dd:  beq.s      IL_00e2

    IL_00df:  ldc.i4.1
    IL_00e0:  br.s       IL_00ec

    IL_00e2:  ldloca.s   V_0
    IL_00e4:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_00e9:  ldc.i4.0
    IL_00ea:  ceq
    IL_00ec:  brtrue.s   IL_010d

    IL_00ee:  ldarg.0
    IL_00ef:  ldfld      class Game.ComponentCreature Game.ComponentDigInMudBehavior::m_componentCreature
    IL_00f4:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00f9:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_Velocity()
    IL_00fe:  stloc.2
    IL_00ff:  ldloca.s   V_2
    IL_0101:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
    IL_0106:  ldc.r4     1.
    IL_010b:  ble.un.s   IL_011d

    IL_010d:  ldarg.0
    IL_010e:  ldfld      class Game.StateMachine Game.ComponentDigInMudBehavior::m_stateMachine
    IL_0113:  ldstr      "Inactive"
    IL_0118:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_011d:  ret
  } // end of method ComponentDigInMudBehavior::'<Load>b__21_7'

  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentDigInMudBehavior::get_UpdateOrder()
  } // end of property ComponentDigInMudBehavior::UpdateOrder
  .property instance float32 ImportanceLevel()
  {
    .get instance float32 Game.ComponentDigInMudBehavior::get_ImportanceLevel()
  } // end of property ComponentDigInMudBehavior::ImportanceLevel
} // end of class Game.ComponentDigInMudBehavior