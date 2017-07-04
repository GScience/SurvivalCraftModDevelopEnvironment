.class public auto ansi beforefieldinit Game.SubsystemBoatBlockBehavior
       extends Game.SubsystemBlockBehavior
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.SubsystemBoatBlockBehavior/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<class Game.ComponentBody,bool> '<>9__5_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.SubsystemBoatBlockBehavior/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.SubsystemBoatBlockBehavior/'<>c' Game.SubsystemBoatBlockBehavior/'<>c'::'<>9'
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
            '<OnUse>b__5_0'(class Game.ComponentBody b) cil managed
    {
      // 代码大小       32 (0x20)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
      IL_0006:  callvirt   instance class [EntitySystem]TemplatesDatabase.ValuesDictionary [EntitySystem]GameEntitySystem.Entity::get_ValuesDictionary()
      IL_000b:  callvirt   instance class [EntitySystem]TemplatesDatabase.DatabaseObject [EntitySystem]TemplatesDatabase.ValuesDictionary::get_DatabaseObject()
      IL_0010:  callvirt   instance string [EntitySystem]TemplatesDatabase.DatabaseObject::get_Name()
      IL_0015:  ldstr      "Boat"
      IL_001a:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_001f:  ret
    } // end of method '<>c'::'<OnUse>b__5_0'

  } // end of class '<>c'

  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.SubsystemBodies m_subsystemBodies
  .field private class Game.Random m_random
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4     0xb2
    IL_000d:  stelem.i4
    IL_000e:  ret
  } // end of method SubsystemBoatBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance bool 
          OnUse(valuetype [Engine]Engine.Vector3 start,
                valuetype [Engine]Engine.Vector3 direction,
                class Game.ComponentMiner componentMiner) cil managed
  {
    // 代码大小       421 (0x1a5)
    .maxstack  7
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> V_2,
             class [EntitySystem]GameEntitySystem.Entity V_3)
    IL_0000:  ldarg.3
    IL_0001:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0006:  pop
    IL_0007:  ldarg.3
    IL_0008:  callvirt   instance int32 Game.ComponentMiner::get_ActiveBlockValue()
    IL_000d:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0012:  ldc.i4     0xb2
    IL_0017:  bne.un     IL_01a3

    IL_001c:  ldarg.3
    IL_001d:  ldarg.1
    IL_001e:  ldarg.2
    IL_001f:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.ComponentMiner::PickTerrainForDigging(valuetype [Engine]Engine.Vector3,
                                                                                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0024:  stloc.0
    IL_0025:  ldloca.s   V_0
    IL_0027:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_002c:  brfalse    IL_01a3

    IL_0031:  ldloca.s   V_0
    IL_0033:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0038:  ldfld      valuetype [Engine]Engine.Vector3 Game.TerrainRaycastResult::RaycastStart
    IL_003d:  ldloca.s   V_0
    IL_003f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0044:  ldfld      valuetype [Engine]Engine.Vector3 Game.TerrainRaycastResult::RaycastEnd
    IL_0049:  ldloca.s   V_0
    IL_004b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0050:  ldfld      valuetype [Engine]Engine.Vector3 Game.TerrainRaycastResult::RaycastStart
    IL_0055:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_005a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_005f:  ldloca.s   V_0
    IL_0061:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0066:  ldfld      float32 Game.TerrainRaycastResult::Distance
    IL_006b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0070:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0075:  stloc.1
    IL_0076:  newobj     instance void class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::.ctor()
    IL_007b:  stloc.2
    IL_007c:  ldarg.0
    IL_007d:  ldfld      class Game.SubsystemBodies Game.SubsystemBoatBlockBehavior::m_subsystemBodies
    IL_0082:  ldloc.1
    IL_0083:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0088:  ldloc.1
    IL_0089:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_008e:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0093:  ldc.r4     8.
    IL_0098:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_009d:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_00a2:  ldloc.1
    IL_00a3:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00a8:  ldloc.1
    IL_00a9:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00ae:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00b3:  ldc.r4     8.
    IL_00b8:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_00bd:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_00c2:  ldloc.2
    IL_00c3:  callvirt   instance void Game.SubsystemBodies::FindBodiesInArea(valuetype [Engine]Engine.Vector2,
                                                                              valuetype [Engine]Engine.Vector2,
                                                                              class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>)
    IL_00c8:  ldloc.2
    IL_00c9:  ldsfld     class [System.Runtime]System.Func`2<class Game.ComponentBody,bool> Game.SubsystemBoatBlockBehavior/'<>c'::'<>9__5_0'
    IL_00ce:  dup
    IL_00cf:  brtrue.s   IL_00e8

    IL_00d1:  pop
    IL_00d2:  ldsfld     class Game.SubsystemBoatBlockBehavior/'<>c' Game.SubsystemBoatBlockBehavior/'<>c'::'<>9'
    IL_00d7:  ldftn      instance bool Game.SubsystemBoatBlockBehavior/'<>c'::'<OnUse>b__5_0'(class Game.ComponentBody)
    IL_00dd:  newobj     instance void class [System.Runtime]System.Func`2<class Game.ComponentBody,bool>::.ctor(object,
                                                                                                                 native int)
    IL_00e2:  dup
    IL_00e3:  stsfld     class [System.Runtime]System.Func`2<class Game.ComponentBody,bool> Game.SubsystemBoatBlockBehavior/'<>c'::'<>9__5_0'
    IL_00e8:  call       int32 [System.Linq]System.Linq.Enumerable::Count<class Game.ComponentBody>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                    class [System.Runtime]System.Func`2<!!0,bool>)
    IL_00ed:  ldc.i4.6
    IL_00ee:  bge        IL_0184

    IL_00f3:  ldarg.0
    IL_00f4:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_00f9:  ldstr      "Boat"
    IL_00fe:  ldc.i4.1
    IL_00ff:  call       class [EntitySystem]GameEntitySystem.Entity Game.DatabaseManager::CreateEntity(class [EntitySystem]GameEntitySystem.Project,
                                                                                                        string,
                                                                                                        bool)
    IL_0104:  stloc.3
    IL_0105:  ldloc.3
    IL_0106:  ldc.i4.1
    IL_0107:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentFrame>(bool)
    IL_010c:  ldloc.1
    IL_010d:  callvirt   instance void Game.ComponentFrame::set_Position(valuetype [Engine]Engine.Vector3)
    IL_0112:  ldloc.3
    IL_0113:  ldc.i4.1
    IL_0114:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentFrame>(bool)
    IL_0119:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_011e:  ldarg.0
    IL_011f:  ldfld      class Game.Random Game.SubsystemBoatBlockBehavior::m_random
    IL_0124:  ldc.r4     0.0
    IL_0129:  ldc.r4     6.2831855
    IL_012e:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0133:  call       valuetype [Engine]Engine.Quaternion [Engine]Engine.Quaternion::CreateFromAxisAngle(valuetype [Engine]Engine.Vector3,
                                                                                                            float32)
    IL_0138:  callvirt   instance void Game.ComponentFrame::set_Rotation(valuetype [Engine]Engine.Quaternion)
    IL_013d:  ldloc.3
    IL_013e:  ldc.i4.1
    IL_013f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentSpawn>(bool)
    IL_0144:  ldc.r4     0.0
    IL_0149:  callvirt   instance void Game.ComponentSpawn::set_SpawnDuration(float32)
    IL_014e:  ldarg.0
    IL_014f:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0154:  ldloc.3
    IL_0155:  callvirt   instance void [EntitySystem]GameEntitySystem.Project::AddEntity(class [EntitySystem]GameEntitySystem.Entity)
    IL_015a:  ldarg.3
    IL_015b:  ldc.i4.1
    IL_015c:  callvirt   instance void Game.ComponentMiner::RemoveActiveTool(int32)
    IL_0161:  ldarg.0
    IL_0162:  ldfld      class Game.SubsystemAudio Game.SubsystemBoatBlockBehavior::m_subsystemAudio
    IL_0167:  ldstr      "Audio/BlockPlaced"
    IL_016c:  ldc.r4     1.
    IL_0171:  ldc.r4     0.0
    IL_0176:  ldloc.1
    IL_0177:  ldc.r4     3.
    IL_017c:  ldc.i4.1
    IL_017d:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_0182:  br.s       IL_01a1

    IL_0184:  ldarg.3
    IL_0185:  callvirt   instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_018a:  dup
    IL_018b:  brtrue.s   IL_0190

    IL_018d:  pop
    IL_018e:  br.s       IL_01a1

    IL_0190:  call       instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0195:  ldstr      "Too many boats"
    IL_019a:  ldc.i4.1
    IL_019b:  ldc.i4.0
    IL_019c:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_01a1:  ldc.i4.1
    IL_01a2:  ret

    IL_01a3:  ldc.i4.0
    IL_01a4:  ret
  } // end of method SubsystemBoatBlockBehavior::OnUse

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       44 (0x2c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0014:  stfld      class Game.SubsystemAudio Game.SubsystemBoatBlockBehavior::m_subsystemAudio
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0020:  ldc.i4.1
    IL_0021:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBodies>(bool)
    IL_0026:  stfld      class Game.SubsystemBodies Game.SubsystemBoatBlockBehavior::m_subsystemBodies
    IL_002b:  ret
  } // end of method SubsystemBoatBlockBehavior::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.SubsystemBoatBlockBehavior::m_random
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0011:  ret
  } // end of method SubsystemBoatBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemBoatBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemBoatBlockBehavior::HandledBlocks
} // end of class Game.SubsystemBoatBlockBehavior