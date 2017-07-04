.class public auto ansi beforefieldinit Game.SubsystemCreatureSpawn
       extends [EntitySystem]GameEntitySystem.Subsystem
       implements Game.IUpdateable
{
  .class auto ansi nested private beforefieldinit CreatureType
         extends [System.Runtime]System.Object
  {
    .field public string Name
    .field public valuetype Game.SpawnLocationType SpawnLocationType
    .field public bool RandomSpawn
    .field public bool ConstantSpawn
    .field public class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> SpawnSuitabilityFunction
    .field public class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> SpawnFunction
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor(string name,
                                 valuetype Game.SpawnLocationType spawnLocationType,
                                 bool randomSpawn,
                                 bool constantSpawn) cil managed
    {
      // 代码大小       36 (0x24)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ldarg.0
      IL_0007:  ldarg.1
      IL_0008:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
      IL_000d:  ldarg.0
      IL_000e:  ldarg.2
      IL_000f:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
      IL_0014:  ldarg.0
      IL_0015:  ldarg.3
      IL_0016:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
      IL_001b:  ldarg.0
      IL_001c:  ldarg.s    constantSpawn
      IL_001e:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::ConstantSpawn
      IL_0023:  ret
    } // end of method CreatureType::.ctor

    .method public hidebysig virtual instance string 
            ToString() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
      IL_0006:  ret
    } // end of method CreatureType::ToString

  } // end of class CreatureType

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass30_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public valuetype Game.SpawnLocationType spawnLocationType
    .field public valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> spawnPoint
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass30_0'::.ctor

    .method assembly hidebysig instance bool 
            '<SpawnRandomCreature>b__0'(class Game.SubsystemCreatureSpawn/CreatureType c) cil managed
    {
      // 代码大小       23 (0x17)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
      IL_0006:  ldarg.0
      IL_0007:  ldfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/'<>c__DisplayClass30_0'::spawnLocationType
      IL_000c:  bne.un.s   IL_0015

      IL_000e:  ldarg.1
      IL_000f:  ldfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
      IL_0014:  ret

      IL_0015:  ldc.i4.0
      IL_0016:  ret
    } // end of method '<>c__DisplayClass30_0'::'<SpawnRandomCreature>b__0'

    .method assembly hidebysig instance float32 
            '<SpawnRandomCreature>b__1'(class Game.SubsystemCreatureSpawn/CreatureType c) cil managed
    {
      // 代码大小       24 (0x18)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
      IL_0006:  ldarg.1
      IL_0007:  ldarg.0
      IL_0008:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemCreatureSpawn/'<>c__DisplayClass30_0'::spawnPoint
      IL_000d:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
      IL_0012:  callvirt   instance !2 class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::Invoke(!0,
                                                                                                                                                                           !1)
      IL_0017:  ret
    } // end of method '<>c__DisplayClass30_0'::'<SpawnRandomCreature>b__1'

  } // end of class '<>c__DisplayClass30_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass31_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public valuetype Game.SpawnLocationType spawnLocationType
    .field public valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> spawnPoint
    .field public class Game.SubsystemCreatureSpawn/'<>c__DisplayClass31_1' 'CS$<>8__locals1'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass31_0'::.ctor

    .method assembly hidebysig instance bool 
            '<SpawnChunkCreatures>b__0'(class Game.SubsystemCreatureSpawn/CreatureType c) cil managed
    {
      // 代码大小       36 (0x24)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
      IL_0006:  ldarg.0
      IL_0007:  ldfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/'<>c__DisplayClass31_0'::spawnLocationType
      IL_000c:  bne.un.s   IL_0022

      IL_000e:  ldarg.1
      IL_000f:  ldfld      bool Game.SubsystemCreatureSpawn/CreatureType::ConstantSpawn
      IL_0014:  ldarg.0
      IL_0015:  ldfld      class Game.SubsystemCreatureSpawn/'<>c__DisplayClass31_1' Game.SubsystemCreatureSpawn/'<>c__DisplayClass31_0'::'CS$<>8__locals1'
      IL_001a:  ldfld      bool Game.SubsystemCreatureSpawn/'<>c__DisplayClass31_1'::constantSpawn
      IL_001f:  ceq
      IL_0021:  ret

      IL_0022:  ldc.i4.0
      IL_0023:  ret
    } // end of method '<>c__DisplayClass31_0'::'<SpawnChunkCreatures>b__0'

    .method assembly hidebysig instance float32 
            '<SpawnChunkCreatures>b__1'(class Game.SubsystemCreatureSpawn/CreatureType c) cil managed
    {
      // 代码大小       24 (0x18)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
      IL_0006:  ldarg.1
      IL_0007:  ldarg.0
      IL_0008:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemCreatureSpawn/'<>c__DisplayClass31_0'::spawnPoint
      IL_000d:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
      IL_0012:  callvirt   instance !2 class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::Invoke(!0,
                                                                                                                                                                           !1)
      IL_0017:  ret
    } // end of method '<>c__DisplayClass31_0'::'<SpawnChunkCreatures>b__1'

  } // end of class '<>c__DisplayClass31_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass31_1'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public bool constantSpawn
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass31_1'::.ctor

  } // end of class '<>c__DisplayClass31_1'

  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemSpawn m_subsystemSpawn
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemSky m_subsystemSky
  .field private class Game.SubsystemBodies m_subsystemBodies
  .field private class Game.SubsystemViews m_subsystemViews
  .field private class Game.Random m_random
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> m_creatureTypes
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentCreature,bool> m_creatures
  .field private class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> m_componentBodies
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnChunk> m_newSpawnChunks
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnChunk> m_spawnChunks
  .field private static valuetype Game.SpawnLocationType[] m_spawnLocations
  .field private static literal int32 m_totalLimit = int32(0x00000018)
  .field private static literal int32 m_areaLimit = int32(0x00000003)
  .field private static literal int32 m_areaRadius = int32(0x00000010)
  .field private static literal int32 m_totalLimitConstant = int32(0x00000012)
  .field private static literal int32 m_areaLimitConstant = int32(0x00000004)
  .field private static literal int32 m_areaRadiusConstant = int32(0x0000002A)
  .method public hidebysig specialname instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class Game.ComponentCreature,bool> 
          get_Creatures() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentCreature,bool> Game.SubsystemCreatureSpawn::m_creatures
    IL_0006:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentCreature,bool>::get_Keys()
    IL_000b:  ret
  } // end of method SubsystemCreatureSpawn::get_Creatures

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemCreatureSpawn::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       268 (0x10c)
    .maxstack  4
    .locals init (valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnChunk> V_0,
             class Game.SpawnChunk V_1,
             class Game.SpawnChunk V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemGameInfo Game.SubsystemCreatureSpawn::m_subsystemGameInfo
    IL_0006:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_000b:  ldfld      valuetype Game.EnvironmentBehaviorMode Game.WorldSettings::EnvironmentBehaviorMode
    IL_0010:  brtrue     IL_010b

    IL_0015:  ldarg.0
    IL_0016:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnChunk> Game.SubsystemCreatureSpawn::m_newSpawnChunks
    IL_001b:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnChunk>::get_Count()
    IL_0020:  ldc.i4.0
    IL_0021:  ble.s      IL_007e

    IL_0023:  ldarg.0
    IL_0024:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnChunk> Game.SubsystemCreatureSpawn::m_newSpawnChunks
    IL_0029:  ldarg.0
    IL_002a:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<Update>b__25_0'(int32)
    IL_0030:  newobj     instance void class [System.Runtime]System.Func`2<int32,int32>::.ctor(object,
                                                                                               native int)
    IL_0035:  call       void Game.CollectionUtils::RandomShuffle<class Game.SpawnChunk>(class [System.Runtime]System.Collections.Generic.IList`1<!!0>,
                                                                                         class [System.Runtime]System.Func`2<int32,int32>)
    IL_003a:  ldarg.0
    IL_003b:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnChunk> Game.SubsystemCreatureSpawn::m_newSpawnChunks
    IL_0040:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnChunk>::GetEnumerator()
    IL_0045:  stloc.0
    .try
    {
      IL_0046:  br.s       IL_005a

      IL_0048:  ldloca.s   V_0
      IL_004a:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnChunk>::get_Current()
      IL_004f:  stloc.1
      IL_0050:  ldarg.0
      IL_0051:  ldloc.1
      IL_0052:  ldc.i4.s   10
      IL_0054:  ldc.i4.0
      IL_0055:  call       instance void Game.SubsystemCreatureSpawn::SpawnChunkCreatures(class Game.SpawnChunk,
                                                                                          int32,
                                                                                          bool)
      IL_005a:  ldloca.s   V_0
      IL_005c:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnChunk>::MoveNext()
      IL_0061:  brtrue.s   IL_0048

      IL_0063:  leave.s    IL_0073

    }  // end .try
    finally
    {
      IL_0065:  ldloca.s   V_0
      IL_0067:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnChunk>
      IL_006d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0072:  endfinally
    }  // end handler
    IL_0073:  ldarg.0
    IL_0074:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnChunk> Game.SubsystemCreatureSpawn::m_newSpawnChunks
    IL_0079:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnChunk>::Clear()
    IL_007e:  ldarg.0
    IL_007f:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnChunk> Game.SubsystemCreatureSpawn::m_spawnChunks
    IL_0084:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnChunk>::get_Count()
    IL_0089:  ldc.i4.0
    IL_008a:  ble.s      IL_00e6

    IL_008c:  ldarg.0
    IL_008d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnChunk> Game.SubsystemCreatureSpawn::m_spawnChunks
    IL_0092:  ldarg.0
    IL_0093:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<Update>b__25_1'(int32)
    IL_0099:  newobj     instance void class [System.Runtime]System.Func`2<int32,int32>::.ctor(object,
                                                                                               native int)
    IL_009e:  call       void Game.CollectionUtils::RandomShuffle<class Game.SpawnChunk>(class [System.Runtime]System.Collections.Generic.IList`1<!!0>,
                                                                                         class [System.Runtime]System.Func`2<int32,int32>)
    IL_00a3:  ldarg.0
    IL_00a4:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnChunk> Game.SubsystemCreatureSpawn::m_spawnChunks
    IL_00a9:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnChunk>::GetEnumerator()
    IL_00ae:  stloc.0
    .try
    {
      IL_00af:  br.s       IL_00c2

      IL_00b1:  ldloca.s   V_0
      IL_00b3:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnChunk>::get_Current()
      IL_00b8:  stloc.2
      IL_00b9:  ldarg.0
      IL_00ba:  ldloc.2
      IL_00bb:  ldc.i4.2
      IL_00bc:  ldc.i4.1
      IL_00bd:  call       instance void Game.SubsystemCreatureSpawn::SpawnChunkCreatures(class Game.SpawnChunk,
                                                                                          int32,
                                                                                          bool)
      IL_00c2:  ldloca.s   V_0
      IL_00c4:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnChunk>::MoveNext()
      IL_00c9:  brtrue.s   IL_00b1

      IL_00cb:  leave.s    IL_00db

    }  // end .try
    finally
    {
      IL_00cd:  ldloca.s   V_0
      IL_00cf:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnChunk>
      IL_00d5:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00da:  endfinally
    }  // end handler
    IL_00db:  ldarg.0
    IL_00dc:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnChunk> Game.SubsystemCreatureSpawn::m_spawnChunks
    IL_00e1:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnChunk>::Clear()
    IL_00e6:  ldarg.0
    IL_00e7:  ldfld      class Game.SubsystemTime Game.SubsystemCreatureSpawn::m_subsystemTime
    IL_00ec:  ldc.r8     60.
    IL_00f5:  ldc.r8     2.
    IL_00fe:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_0103:  brfalse.s  IL_010b

    IL_0105:  ldarg.0
    IL_0106:  call       instance void Game.SubsystemCreatureSpawn::SpawnRandomCreature()
    IL_010b:  ret
  } // end of method SubsystemCreatureSpawn::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       156 (0x9c)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_000d:  stfld      class Game.SubsystemGameInfo Game.SubsystemCreatureSpawn::m_subsystemGameInfo
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemSpawn>(bool)
    IL_001f:  stfld      class Game.SubsystemSpawn Game.SubsystemCreatureSpawn::m_subsystemSpawn
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0031:  stfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_0043:  stfld      class Game.SubsystemTime Game.SubsystemCreatureSpawn::m_subsystemTime
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemSky>(bool)
    IL_0055:  stfld      class Game.SubsystemSky Game.SubsystemCreatureSpawn::m_subsystemSky
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBodies>(bool)
    IL_0067:  stfld      class Game.SubsystemBodies Game.SubsystemCreatureSpawn::m_subsystemBodies
    IL_006c:  ldarg.0
    IL_006d:  ldarg.0
    IL_006e:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0073:  ldc.i4.1
    IL_0074:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemViews>(bool)
    IL_0079:  stfld      class Game.SubsystemViews Game.SubsystemCreatureSpawn::m_subsystemViews
    IL_007e:  ldarg.0
    IL_007f:  call       instance void Game.SubsystemCreatureSpawn::InitializeCreatureTypes()
    IL_0084:  ldarg.0
    IL_0085:  ldfld      class Game.SubsystemSpawn Game.SubsystemCreatureSpawn::m_subsystemSpawn
    IL_008a:  ldarg.0
    IL_008b:  ldftn      instance void Game.SubsystemCreatureSpawn::'<Load>b__26_0'(class Game.SpawnChunk)
    IL_0091:  newobj     instance void class [System.Runtime]System.Action`1<class Game.SpawnChunk>::.ctor(object,
                                                                                                           native int)
    IL_0096:  callvirt   instance void Game.SubsystemSpawn::add_SpawningChunk(class [System.Runtime]System.Action`1<class Game.SpawnChunk>)
    IL_009b:  ret
  } // end of method SubsystemCreatureSpawn::Load

  .method family hidebysig virtual instance void 
          OnEntityAdded(class [EntitySystem]GameEntitySystem.Entity entity) cil managed
  {
    // 代码大小       64 (0x40)
    .maxstack  3
    .locals init (valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentCreature> V_0,
             valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.ComponentCreature> V_1,
             class Game.ComponentCreature V_2)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<!!0> [EntitySystem]GameEntitySystem.Entity::FindComponents<class Game.ComponentCreature>()
    IL_0006:  stloc.1
    IL_0007:  ldloca.s   V_1
    IL_0009:  call       instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<!0> valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.ComponentCreature>::GetEnumerator()
    IL_000e:  stloc.0
    .try
    {
      IL_000f:  br.s       IL_0026

      IL_0011:  ldloca.s   V_0
      IL_0013:  call       instance !0 valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentCreature>::get_Current()
      IL_0018:  stloc.2
      IL_0019:  ldarg.0
      IL_001a:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentCreature,bool> Game.SubsystemCreatureSpawn::m_creatures
      IL_001f:  ldloc.2
      IL_0020:  ldc.i4.1
      IL_0021:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentCreature,bool>::Add(!0,
                                                                                                                                                   !1)
      IL_0026:  ldloca.s   V_0
      IL_0028:  call       instance bool valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentCreature>::MoveNext()
      IL_002d:  brtrue.s   IL_0011

      IL_002f:  leave.s    IL_003f

    }  // end .try
    finally
    {
      IL_0031:  ldloca.s   V_0
      IL_0033:  constrained. valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentCreature>
      IL_0039:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_003e:  endfinally
    }  // end handler
    IL_003f:  ret
  } // end of method SubsystemCreatureSpawn::OnEntityAdded

  .method family hidebysig virtual instance void 
          OnEntityRemoved(class [EntitySystem]GameEntitySystem.Entity entity) cil managed
  {
    // 代码大小       64 (0x40)
    .maxstack  2
    .locals init (valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentCreature> V_0,
             valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.ComponentCreature> V_1,
             class Game.ComponentCreature V_2)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<!!0> [EntitySystem]GameEntitySystem.Entity::FindComponents<class Game.ComponentCreature>()
    IL_0006:  stloc.1
    IL_0007:  ldloca.s   V_1
    IL_0009:  call       instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<!0> valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.ComponentCreature>::GetEnumerator()
    IL_000e:  stloc.0
    .try
    {
      IL_000f:  br.s       IL_0026

      IL_0011:  ldloca.s   V_0
      IL_0013:  call       instance !0 valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentCreature>::get_Current()
      IL_0018:  stloc.2
      IL_0019:  ldarg.0
      IL_001a:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentCreature,bool> Game.SubsystemCreatureSpawn::m_creatures
      IL_001f:  ldloc.2
      IL_0020:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentCreature,bool>::Remove(!0)
      IL_0025:  pop
      IL_0026:  ldloca.s   V_0
      IL_0028:  call       instance bool valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentCreature>::MoveNext()
      IL_002d:  brtrue.s   IL_0011

      IL_002f:  leave.s    IL_003f

    }  // end .try
    finally
    {
      IL_0031:  ldloca.s   V_0
      IL_0033:  constrained. valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentCreature>
      IL_0039:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_003e:  endfinally
    }  // end handler
    IL_003f:  ret
  } // end of method SubsystemCreatureSpawn::OnEntityRemoved

  .method private hidebysig instance void 
          InitializeCreatureTypes() cil managed
  {
    // 代码大小       3301 (0xce5)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0006:  ldstr      "Duck"
    IL_000b:  ldc.i4.0
    IL_000c:  ldc.i4.1
    IL_000d:  ldc.i4.0
    IL_000e:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_0013:  dup
    IL_0014:  ldarg.0
    IL_0015:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_0'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                          valuetype [Engine]Engine.Point3)
    IL_001b:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0020:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0025:  dup
    IL_0026:  ldarg.0
    IL_0027:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_1'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                        valuetype [Engine]Engine.Point3)
    IL_002d:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0032:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0037:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_003c:  ldarg.0
    IL_003d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0042:  ldstr      "Raven"
    IL_0047:  ldc.i4.0
    IL_0048:  ldc.i4.1
    IL_0049:  ldc.i4.0
    IL_004a:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_004f:  dup
    IL_0050:  ldarg.0
    IL_0051:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_2'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                          valuetype [Engine]Engine.Point3)
    IL_0057:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_005c:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0061:  dup
    IL_0062:  ldarg.0
    IL_0063:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_3'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                        valuetype [Engine]Engine.Point3)
    IL_0069:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_006e:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0073:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0078:  ldarg.0
    IL_0079:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_007e:  ldstr      "Seagull"
    IL_0083:  ldc.i4.0
    IL_0084:  ldc.i4.1
    IL_0085:  ldc.i4.0
    IL_0086:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_008b:  dup
    IL_008c:  ldarg.0
    IL_008d:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_4'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                          valuetype [Engine]Engine.Point3)
    IL_0093:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0098:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_009d:  dup
    IL_009e:  ldarg.0
    IL_009f:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_5'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                        valuetype [Engine]Engine.Point3)
    IL_00a5:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_00aa:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_00af:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_00b4:  ldarg.0
    IL_00b5:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_00ba:  ldstr      "Wildboar"
    IL_00bf:  ldc.i4.0
    IL_00c0:  ldc.i4.0
    IL_00c1:  ldc.i4.0
    IL_00c2:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_00c7:  dup
    IL_00c8:  ldarg.0
    IL_00c9:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_6'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                          valuetype [Engine]Engine.Point3)
    IL_00cf:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_00d4:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_00d9:  dup
    IL_00da:  ldarg.0
    IL_00db:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_7'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                        valuetype [Engine]Engine.Point3)
    IL_00e1:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_00e6:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_00eb:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_00f0:  ldarg.0
    IL_00f1:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_00f6:  ldstr      "Brown Cattle"
    IL_00fb:  ldc.i4.0
    IL_00fc:  ldc.i4.0
    IL_00fd:  ldc.i4.0
    IL_00fe:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_0103:  dup
    IL_0104:  ldarg.0
    IL_0105:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_8'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                          valuetype [Engine]Engine.Point3)
    IL_010b:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0110:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0115:  dup
    IL_0116:  ldarg.0
    IL_0117:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_9'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                        valuetype [Engine]Engine.Point3)
    IL_011d:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0122:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0127:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_012c:  ldarg.0
    IL_012d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0132:  ldstr      "Black Cattle"
    IL_0137:  ldc.i4.0
    IL_0138:  ldc.i4.0
    IL_0139:  ldc.i4.0
    IL_013a:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_013f:  dup
    IL_0140:  ldarg.0
    IL_0141:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_10'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0147:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_014c:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0151:  dup
    IL_0152:  ldarg.0
    IL_0153:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_11'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0159:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_015e:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0163:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0168:  ldarg.0
    IL_0169:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_016e:  ldstr      "White Bull"
    IL_0173:  ldc.i4.0
    IL_0174:  ldc.i4.0
    IL_0175:  ldc.i4.0
    IL_0176:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_017b:  dup
    IL_017c:  ldarg.0
    IL_017d:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_12'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0183:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0188:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_018d:  dup
    IL_018e:  ldarg.0
    IL_018f:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_13'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0195:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_019a:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_019f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_01a4:  ldarg.0
    IL_01a5:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_01aa:  ldstr      "Gray Wolves"
    IL_01af:  ldc.i4.0
    IL_01b0:  ldc.i4.0
    IL_01b1:  ldc.i4.0
    IL_01b2:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_01b7:  dup
    IL_01b8:  ldarg.0
    IL_01b9:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_14'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_01bf:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_01c4:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_01c9:  dup
    IL_01ca:  ldarg.0
    IL_01cb:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_15'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_01d1:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_01d6:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_01db:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_01e0:  ldarg.0
    IL_01e1:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_01e6:  ldstr      "Coyotes"
    IL_01eb:  ldc.i4.0
    IL_01ec:  ldc.i4.0
    IL_01ed:  ldc.i4.0
    IL_01ee:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_01f3:  dup
    IL_01f4:  ldarg.0
    IL_01f5:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_16'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_01fb:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0200:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0205:  dup
    IL_0206:  ldarg.0
    IL_0207:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_17'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_020d:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0212:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0217:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_021c:  ldarg.0
    IL_021d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0222:  ldstr      "Brown Bears"
    IL_0227:  ldc.i4.0
    IL_0228:  ldc.i4.0
    IL_0229:  ldc.i4.0
    IL_022a:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_022f:  dup
    IL_0230:  ldarg.0
    IL_0231:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_18'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0237:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_023c:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0241:  dup
    IL_0242:  ldarg.0
    IL_0243:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_19'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0249:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_024e:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0253:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0258:  ldarg.0
    IL_0259:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_025e:  ldstr      "Black Bears"
    IL_0263:  ldc.i4.0
    IL_0264:  ldc.i4.0
    IL_0265:  ldc.i4.0
    IL_0266:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_026b:  dup
    IL_026c:  ldarg.0
    IL_026d:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_20'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0273:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0278:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_027d:  dup
    IL_027e:  ldarg.0
    IL_027f:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_21'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0285:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_028a:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_028f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0294:  ldarg.0
    IL_0295:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_029a:  ldstr      "Polar Bears"
    IL_029f:  ldc.i4.0
    IL_02a0:  ldc.i4.0
    IL_02a1:  ldc.i4.0
    IL_02a2:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_02a7:  dup
    IL_02a8:  ldarg.0
    IL_02a9:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_22'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_02af:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_02b4:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_02b9:  dup
    IL_02ba:  ldarg.0
    IL_02bb:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_23'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_02c1:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_02c6:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_02cb:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_02d0:  ldarg.0
    IL_02d1:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_02d6:  ldstr      "Horses"
    IL_02db:  ldc.i4.0
    IL_02dc:  ldc.i4.0
    IL_02dd:  ldc.i4.0
    IL_02de:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_02e3:  dup
    IL_02e4:  ldarg.0
    IL_02e5:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_24'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_02eb:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_02f0:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_02f5:  dup
    IL_02f6:  ldarg.0
    IL_02f7:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_25'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_02fd:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0302:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0307:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_030c:  ldarg.0
    IL_030d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0312:  ldstr      "Camels"
    IL_0317:  ldc.i4.0
    IL_0318:  ldc.i4.0
    IL_0319:  ldc.i4.0
    IL_031a:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_031f:  dup
    IL_0320:  ldarg.0
    IL_0321:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_26'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0327:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_032c:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0331:  dup
    IL_0332:  ldarg.0
    IL_0333:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_27'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0339:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_033e:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0343:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0348:  ldarg.0
    IL_0349:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_034e:  ldstr      "Donkeys"
    IL_0353:  ldc.i4.0
    IL_0354:  ldc.i4.0
    IL_0355:  ldc.i4.0
    IL_0356:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_035b:  dup
    IL_035c:  ldarg.0
    IL_035d:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_28'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0363:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0368:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_036d:  dup
    IL_036e:  ldarg.0
    IL_036f:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_29'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0375:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_037a:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_037f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0384:  ldarg.0
    IL_0385:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_038a:  ldstr      "Giraffes"
    IL_038f:  ldc.i4.0
    IL_0390:  ldc.i4.0
    IL_0391:  ldc.i4.0
    IL_0392:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_0397:  dup
    IL_0398:  ldarg.0
    IL_0399:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_30'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_039f:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_03a4:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_03a9:  dup
    IL_03aa:  ldarg.0
    IL_03ab:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_31'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_03b1:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_03b6:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_03bb:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_03c0:  ldarg.0
    IL_03c1:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_03c6:  ldstr      "Rhinos"
    IL_03cb:  ldc.i4.0
    IL_03cc:  ldc.i4.0
    IL_03cd:  ldc.i4.0
    IL_03ce:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_03d3:  dup
    IL_03d4:  ldarg.0
    IL_03d5:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_32'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_03db:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_03e0:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_03e5:  dup
    IL_03e6:  ldarg.0
    IL_03e7:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_33'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_03ed:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_03f2:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_03f7:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_03fc:  ldarg.0
    IL_03fd:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0402:  ldstr      "Tigers"
    IL_0407:  ldc.i4.0
    IL_0408:  ldc.i4.0
    IL_0409:  ldc.i4.0
    IL_040a:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_040f:  dup
    IL_0410:  ldarg.0
    IL_0411:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_34'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0417:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_041c:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0421:  dup
    IL_0422:  ldarg.0
    IL_0423:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_35'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0429:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_042e:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0433:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0438:  ldarg.0
    IL_0439:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_043e:  ldstr      "White Tigers"
    IL_0443:  ldc.i4.0
    IL_0444:  ldc.i4.0
    IL_0445:  ldc.i4.0
    IL_0446:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_044b:  dup
    IL_044c:  ldarg.0
    IL_044d:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_36'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0453:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0458:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_045d:  dup
    IL_045e:  ldarg.0
    IL_045f:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_37'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0465:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_046a:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_046f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0474:  ldarg.0
    IL_0475:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_047a:  ldstr      "Lions"
    IL_047f:  ldc.i4.0
    IL_0480:  ldc.i4.0
    IL_0481:  ldc.i4.0
    IL_0482:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_0487:  dup
    IL_0488:  ldarg.0
    IL_0489:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_38'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_048f:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0494:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0499:  dup
    IL_049a:  ldarg.0
    IL_049b:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_39'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_04a1:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_04a6:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_04ab:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_04b0:  ldarg.0
    IL_04b1:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_04b6:  ldstr      "Jaguars"
    IL_04bb:  ldc.i4.0
    IL_04bc:  ldc.i4.0
    IL_04bd:  ldc.i4.0
    IL_04be:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_04c3:  dup
    IL_04c4:  ldarg.0
    IL_04c5:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_40'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_04cb:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_04d0:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_04d5:  dup
    IL_04d6:  ldarg.0
    IL_04d7:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_41'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_04dd:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_04e2:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_04e7:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_04ec:  ldarg.0
    IL_04ed:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_04f2:  ldstr      "Leopards"
    IL_04f7:  ldc.i4.0
    IL_04f8:  ldc.i4.0
    IL_04f9:  ldc.i4.0
    IL_04fa:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_04ff:  dup
    IL_0500:  ldarg.0
    IL_0501:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_42'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0507:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_050c:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0511:  dup
    IL_0512:  ldarg.0
    IL_0513:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_43'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0519:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_051e:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0523:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0528:  ldarg.0
    IL_0529:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_052e:  ldstr      "Zebras"
    IL_0533:  ldc.i4.0
    IL_0534:  ldc.i4.0
    IL_0535:  ldc.i4.0
    IL_0536:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_053b:  dup
    IL_053c:  ldarg.0
    IL_053d:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_44'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0543:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0548:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_054d:  dup
    IL_054e:  ldarg.0
    IL_054f:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_45'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0555:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_055a:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_055f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0564:  ldarg.0
    IL_0565:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_056a:  ldstr      "Gnus"
    IL_056f:  ldc.i4.0
    IL_0570:  ldc.i4.0
    IL_0571:  ldc.i4.0
    IL_0572:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_0577:  dup
    IL_0578:  ldarg.0
    IL_0579:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_46'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_057f:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0584:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0589:  dup
    IL_058a:  ldarg.0
    IL_058b:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_47'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0591:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0596:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_059b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_05a0:  ldarg.0
    IL_05a1:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_05a6:  ldstr      "Reindeers"
    IL_05ab:  ldc.i4.0
    IL_05ac:  ldc.i4.0
    IL_05ad:  ldc.i4.0
    IL_05ae:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_05b3:  dup
    IL_05b4:  ldarg.0
    IL_05b5:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_48'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_05bb:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_05c0:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_05c5:  dup
    IL_05c6:  ldarg.0
    IL_05c7:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_49'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_05cd:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_05d2:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_05d7:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_05dc:  ldarg.0
    IL_05dd:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_05e2:  ldstr      "Mooses"
    IL_05e7:  ldc.i4.0
    IL_05e8:  ldc.i4.0
    IL_05e9:  ldc.i4.0
    IL_05ea:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_05ef:  dup
    IL_05f0:  ldarg.0
    IL_05f1:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_50'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_05f7:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_05fc:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0601:  dup
    IL_0602:  ldarg.0
    IL_0603:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_51'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0609:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_060e:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0613:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0618:  ldarg.0
    IL_0619:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_061e:  ldstr      "Bisons"
    IL_0623:  ldc.i4.0
    IL_0624:  ldc.i4.0
    IL_0625:  ldc.i4.0
    IL_0626:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_062b:  dup
    IL_062c:  ldarg.0
    IL_062d:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_52'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0633:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0638:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_063d:  dup
    IL_063e:  ldarg.0
    IL_063f:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_53'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0645:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_064a:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_064f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0654:  ldarg.0
    IL_0655:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_065a:  ldstr      "Ostriches"
    IL_065f:  ldc.i4.0
    IL_0660:  ldc.i4.0
    IL_0661:  ldc.i4.0
    IL_0662:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_0667:  dup
    IL_0668:  ldarg.0
    IL_0669:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_54'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_066f:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0674:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0679:  dup
    IL_067a:  ldarg.0
    IL_067b:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_55'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0681:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0686:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_068b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0690:  ldarg.0
    IL_0691:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0696:  ldstr      "Cassowaries"
    IL_069b:  ldc.i4.0
    IL_069c:  ldc.i4.0
    IL_069d:  ldc.i4.0
    IL_069e:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_06a3:  dup
    IL_06a4:  ldarg.0
    IL_06a5:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_56'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_06ab:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_06b0:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_06b5:  dup
    IL_06b6:  ldarg.0
    IL_06b7:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_57'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_06bd:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_06c2:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_06c7:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_06cc:  ldarg.0
    IL_06cd:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_06d2:  ldstr      "Hyenas"
    IL_06d7:  ldc.i4.0
    IL_06d8:  ldc.i4.0
    IL_06d9:  ldc.i4.0
    IL_06da:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_06df:  dup
    IL_06e0:  ldarg.0
    IL_06e1:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_58'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_06e7:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_06ec:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_06f1:  dup
    IL_06f2:  ldarg.0
    IL_06f3:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_59'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_06f9:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_06fe:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0703:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0708:  ldarg.0
    IL_0709:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_070e:  ldstr      "Cave Bears"
    IL_0713:  ldc.i4.1
    IL_0714:  ldc.i4.0
    IL_0715:  ldc.i4.0
    IL_0716:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_071b:  dup
    IL_071c:  ldarg.0
    IL_071d:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_60'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0723:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0728:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_072d:  dup
    IL_072e:  ldarg.0
    IL_072f:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_61'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0735:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_073a:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_073f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0744:  ldarg.0
    IL_0745:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_074a:  ldstr      "Cave Tigers"
    IL_074f:  ldc.i4.1
    IL_0750:  ldc.i4.0
    IL_0751:  ldc.i4.0
    IL_0752:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_0757:  dup
    IL_0758:  ldarg.0
    IL_0759:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_62'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_075f:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0764:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0769:  dup
    IL_076a:  ldarg.0
    IL_076b:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_63'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0771:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0776:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_077b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0780:  ldarg.0
    IL_0781:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0786:  ldstr      "Cave Lions"
    IL_078b:  ldc.i4.1
    IL_078c:  ldc.i4.0
    IL_078d:  ldc.i4.0
    IL_078e:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_0793:  dup
    IL_0794:  ldarg.0
    IL_0795:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_64'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_079b:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_07a0:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_07a5:  dup
    IL_07a6:  ldarg.0
    IL_07a7:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_65'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_07ad:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_07b2:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_07b7:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_07bc:  ldarg.0
    IL_07bd:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_07c2:  ldstr      "Cave Jaguars"
    IL_07c7:  ldc.i4.1
    IL_07c8:  ldc.i4.0
    IL_07c9:  ldc.i4.0
    IL_07ca:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_07cf:  dup
    IL_07d0:  ldarg.0
    IL_07d1:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_66'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_07d7:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_07dc:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_07e1:  dup
    IL_07e2:  ldarg.0
    IL_07e3:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_67'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_07e9:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_07ee:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_07f3:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_07f8:  ldarg.0
    IL_07f9:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_07fe:  ldstr      "Cave Leopards"
    IL_0803:  ldc.i4.1
    IL_0804:  ldc.i4.0
    IL_0805:  ldc.i4.0
    IL_0806:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_080b:  dup
    IL_080c:  ldarg.0
    IL_080d:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_68'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0813:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0818:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_081d:  dup
    IL_081e:  ldarg.0
    IL_081f:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_69'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0825:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_082a:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_082f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0834:  ldarg.0
    IL_0835:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_083a:  ldstr      "Cave Hyenas"
    IL_083f:  ldc.i4.1
    IL_0840:  ldc.i4.0
    IL_0841:  ldc.i4.0
    IL_0842:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_0847:  dup
    IL_0848:  ldarg.0
    IL_0849:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_70'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_084f:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0854:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0859:  dup
    IL_085a:  ldarg.0
    IL_085b:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_71'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0861:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0866:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_086b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0870:  ldarg.0
    IL_0871:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0876:  ldstr      "Bull Sharks"
    IL_087b:  ldc.i4.2
    IL_087c:  ldc.i4.0
    IL_087d:  ldc.i4.0
    IL_087e:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_0883:  dup
    IL_0884:  ldarg.0
    IL_0885:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_72'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_088b:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0890:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0895:  dup
    IL_0896:  ldarg.0
    IL_0897:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_73'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_089d:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_08a2:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_08a7:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_08ac:  ldarg.0
    IL_08ad:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_08b2:  ldstr      "Tiger Sharks"
    IL_08b7:  ldc.i4.2
    IL_08b8:  ldc.i4.0
    IL_08b9:  ldc.i4.0
    IL_08ba:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_08bf:  dup
    IL_08c0:  ldarg.0
    IL_08c1:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_74'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_08c7:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_08cc:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_08d1:  dup
    IL_08d2:  ldarg.0
    IL_08d3:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_75'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_08d9:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_08de:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_08e3:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_08e8:  ldarg.0
    IL_08e9:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_08ee:  ldstr      "Barracudas"
    IL_08f3:  ldc.i4.2
    IL_08f4:  ldc.i4.0
    IL_08f5:  ldc.i4.0
    IL_08f6:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_08fb:  dup
    IL_08fc:  ldarg.0
    IL_08fd:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_76'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0903:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0908:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_090d:  dup
    IL_090e:  ldarg.0
    IL_090f:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_77'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0915:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_091a:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_091f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0924:  ldarg.0
    IL_0925:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_092a:  ldstr      "Bass_Sea"
    IL_092f:  ldc.i4.2
    IL_0930:  ldc.i4.0
    IL_0931:  ldc.i4.0
    IL_0932:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_0937:  dup
    IL_0938:  ldarg.0
    IL_0939:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_78'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_093f:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0944:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0949:  dup
    IL_094a:  ldarg.0
    IL_094b:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_79'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0951:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0956:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_095b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0960:  ldarg.0
    IL_0961:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0966:  ldstr      "Bass_Freshwater"
    IL_096b:  ldc.i4.2
    IL_096c:  ldc.i4.0
    IL_096d:  ldc.i4.0
    IL_096e:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_0973:  dup
    IL_0974:  ldarg.0
    IL_0975:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_80'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_097b:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0980:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0985:  dup
    IL_0986:  ldarg.0
    IL_0987:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_81'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_098d:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0992:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0997:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_099c:  ldarg.0
    IL_099d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_09a2:  ldstr      "Rays"
    IL_09a7:  ldc.i4.2
    IL_09a8:  ldc.i4.0
    IL_09a9:  ldc.i4.0
    IL_09aa:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_09af:  dup
    IL_09b0:  ldarg.0
    IL_09b1:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_82'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_09b7:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_09bc:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_09c1:  dup
    IL_09c2:  ldarg.0
    IL_09c3:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_83'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_09c9:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_09ce:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_09d3:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_09d8:  ldarg.0
    IL_09d9:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_09de:  ldstr      "Piranhas"
    IL_09e3:  ldc.i4.2
    IL_09e4:  ldc.i4.0
    IL_09e5:  ldc.i4.0
    IL_09e6:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_09eb:  dup
    IL_09ec:  ldarg.0
    IL_09ed:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_84'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_09f3:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_09f8:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_09fd:  dup
    IL_09fe:  ldarg.0
    IL_09ff:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_85'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0a05:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0a0a:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0a0f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0a14:  ldarg.0
    IL_0a15:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0a1a:  ldstr      "Orcas"
    IL_0a1f:  ldc.i4.2
    IL_0a20:  ldc.i4.0
    IL_0a21:  ldc.i4.0
    IL_0a22:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_0a27:  dup
    IL_0a28:  ldarg.0
    IL_0a29:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_86'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0a2f:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0a34:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0a39:  dup
    IL_0a3a:  ldarg.0
    IL_0a3b:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_87'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0a41:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0a46:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0a4b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0a50:  ldarg.0
    IL_0a51:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0a56:  ldstr      "Belugas"
    IL_0a5b:  ldc.i4.2
    IL_0a5c:  ldc.i4.0
    IL_0a5d:  ldc.i4.0
    IL_0a5e:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_0a63:  dup
    IL_0a64:  ldarg.0
    IL_0a65:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_88'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0a6b:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0a70:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0a75:  dup
    IL_0a76:  ldarg.0
    IL_0a77:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_89'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0a7d:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0a82:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0a87:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0a8c:  ldarg.0
    IL_0a8d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0a92:  ldstr      "Constant Gray Wolves"
    IL_0a97:  ldc.i4.0
    IL_0a98:  ldc.i4.0
    IL_0a99:  ldc.i4.1
    IL_0a9a:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_0a9f:  dup
    IL_0aa0:  ldarg.0
    IL_0aa1:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_90'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0aa7:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0aac:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0ab1:  dup
    IL_0ab2:  ldarg.0
    IL_0ab3:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_91'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0ab9:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0abe:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0ac3:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0ac8:  ldarg.0
    IL_0ac9:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0ace:  ldstr      "Constant Coyotes"
    IL_0ad3:  ldc.i4.0
    IL_0ad4:  ldc.i4.0
    IL_0ad5:  ldc.i4.1
    IL_0ad6:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_0adb:  dup
    IL_0adc:  ldarg.0
    IL_0add:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_92'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0ae3:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0ae8:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0aed:  dup
    IL_0aee:  ldarg.0
    IL_0aef:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_93'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0af5:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0afa:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0aff:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0b04:  ldarg.0
    IL_0b05:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0b0a:  ldstr      "Constant Brown Bears"
    IL_0b0f:  ldc.i4.0
    IL_0b10:  ldc.i4.0
    IL_0b11:  ldc.i4.1
    IL_0b12:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_0b17:  dup
    IL_0b18:  ldarg.0
    IL_0b19:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_94'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0b1f:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0b24:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0b29:  dup
    IL_0b2a:  ldarg.0
    IL_0b2b:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_95'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0b31:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0b36:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0b3b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0b40:  ldarg.0
    IL_0b41:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0b46:  ldstr      "Constant Black Bears"
    IL_0b4b:  ldc.i4.0
    IL_0b4c:  ldc.i4.0
    IL_0b4d:  ldc.i4.1
    IL_0b4e:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_0b53:  dup
    IL_0b54:  ldarg.0
    IL_0b55:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_96'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0b5b:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0b60:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0b65:  dup
    IL_0b66:  ldarg.0
    IL_0b67:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_97'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0b6d:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0b72:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0b77:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0b7c:  ldarg.0
    IL_0b7d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0b82:  ldstr      "Constant Polar Bears"
    IL_0b87:  ldc.i4.0
    IL_0b88:  ldc.i4.0
    IL_0b89:  ldc.i4.1
    IL_0b8a:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_0b8f:  dup
    IL_0b90:  ldarg.0
    IL_0b91:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_98'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0b97:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0b9c:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0ba1:  dup
    IL_0ba2:  ldarg.0
    IL_0ba3:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_99'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0ba9:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0bae:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0bb3:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0bb8:  ldarg.0
    IL_0bb9:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0bbe:  ldstr      "Constant Tigers"
    IL_0bc3:  ldc.i4.0
    IL_0bc4:  ldc.i4.0
    IL_0bc5:  ldc.i4.1
    IL_0bc6:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_0bcb:  dup
    IL_0bcc:  ldarg.0
    IL_0bcd:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_100'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                            valuetype [Engine]Engine.Point3)
    IL_0bd3:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0bd8:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0bdd:  dup
    IL_0bde:  ldarg.0
    IL_0bdf:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_101'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                          valuetype [Engine]Engine.Point3)
    IL_0be5:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0bea:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0bef:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0bf4:  ldarg.0
    IL_0bf5:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0bfa:  ldstr      "Constant Lions"
    IL_0bff:  ldc.i4.0
    IL_0c00:  ldc.i4.0
    IL_0c01:  ldc.i4.1
    IL_0c02:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_0c07:  dup
    IL_0c08:  ldarg.0
    IL_0c09:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_102'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                            valuetype [Engine]Engine.Point3)
    IL_0c0f:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0c14:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0c19:  dup
    IL_0c1a:  ldarg.0
    IL_0c1b:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_103'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                          valuetype [Engine]Engine.Point3)
    IL_0c21:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0c26:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0c2b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0c30:  ldarg.0
    IL_0c31:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0c36:  ldstr      "Constant Jaguars"
    IL_0c3b:  ldc.i4.0
    IL_0c3c:  ldc.i4.0
    IL_0c3d:  ldc.i4.1
    IL_0c3e:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_0c43:  dup
    IL_0c44:  ldarg.0
    IL_0c45:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_104'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                            valuetype [Engine]Engine.Point3)
    IL_0c4b:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0c50:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0c55:  dup
    IL_0c56:  ldarg.0
    IL_0c57:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_105'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                          valuetype [Engine]Engine.Point3)
    IL_0c5d:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0c62:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0c67:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0c6c:  ldarg.0
    IL_0c6d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0c72:  ldstr      "Constant Leopards"
    IL_0c77:  ldc.i4.0
    IL_0c78:  ldc.i4.0
    IL_0c79:  ldc.i4.1
    IL_0c7a:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_0c7f:  dup
    IL_0c80:  ldarg.0
    IL_0c81:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_106'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                            valuetype [Engine]Engine.Point3)
    IL_0c87:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0c8c:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0c91:  dup
    IL_0c92:  ldarg.0
    IL_0c93:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_107'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                          valuetype [Engine]Engine.Point3)
    IL_0c99:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0c9e:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0ca3:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0ca8:  ldarg.0
    IL_0ca9:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0cae:  ldstr      "Constant Hyenas"
    IL_0cb3:  ldc.i4.0
    IL_0cb4:  ldc.i4.0
    IL_0cb5:  ldc.i4.1
    IL_0cb6:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor(string,
                                                                                       valuetype Game.SpawnLocationType,
                                                                                       bool,
                                                                                       bool)
    IL_0cbb:  dup
    IL_0cbc:  ldarg.0
    IL_0cbd:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_108'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                            valuetype [Engine]Engine.Point3)
    IL_0cc3:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0cc8:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0ccd:  dup
    IL_0cce:  ldarg.0
    IL_0ccf:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_109'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                          valuetype [Engine]Engine.Point3)
    IL_0cd5:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0cda:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0cdf:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0ce4:  ret
  } // end of method SubsystemCreatureSpawn::InitializeCreatureTypes

  .method private hidebysig instance void 
          SpawnRandomCreature() cil managed
  {
    // 代码大小       451 (0x1c3)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.View> V_0,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.View> V_1,
             class Game.View V_2,
             class Game.SubsystemCreatureSpawn/'<>c__DisplayClass30_0' V_3,
             int32 V_4,
             valuetype [Engine]Engine.Vector2 V_5,
             valuetype [Engine]Engine.Vector2 V_6,
             valuetype [Engine]Engine.Vector2 V_7,
             class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.SubsystemCreatureSpawn/CreatureType> V_8,
             class [System.Runtime]System.Collections.Generic.IEnumerable`1<float32> V_9,
             int32 V_10,
             class Game.SubsystemCreatureSpawn/CreatureType V_11)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.0
    IL_0002:  call       instance int32 Game.SubsystemCreatureSpawn::CountCreatures(bool)
    IL_0007:  ldc.i4.s   24
    IL_0009:  blt.s      IL_000c

    IL_000b:  ret

    IL_000c:  ldarg.0
    IL_000d:  ldfld      class Game.SubsystemViews Game.SubsystemCreatureSpawn::m_subsystemViews
    IL_0012:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.View> Game.SubsystemViews::get_Views()
    IL_0017:  stloc.1
    IL_0018:  ldloca.s   V_1
    IL_001a:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.View>::GetEnumerator()
    IL_001f:  stloc.0
    .try
    {
      IL_0020:  br         IL_01a6

      IL_0025:  ldloca.s   V_0
      IL_0027:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.View>::get_Current()
      IL_002c:  stloc.2
      IL_002d:  newobj     instance void Game.SubsystemCreatureSpawn/'<>c__DisplayClass30_0'::.ctor()
      IL_0032:  stloc.3
      IL_0033:  ldc.i4.s   48
      IL_0035:  stloc.s    V_4
      IL_0037:  ldloca.s   V_5
      IL_0039:  ldloc.2
      IL_003a:  callvirt   instance class Game.Camera Game.View::get_ActiveCamera()
      IL_003f:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
      IL_0044:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0049:  ldloc.2
      IL_004a:  callvirt   instance class Game.Camera Game.View::get_ActiveCamera()
      IL_004f:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
      IL_0054:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0059:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_005e:  ldarg.0
      IL_005f:  ldloc.s    V_5
      IL_0061:  ldc.r4     60.
      IL_0066:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
      IL_006b:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                   valuetype [Engine]Engine.Vector2)
      IL_0070:  ldloc.s    V_5
      IL_0072:  ldc.r4     60.
      IL_0077:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
      IL_007c:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_0081:  ldc.i4.0
      IL_0082:  call       instance int32 Game.SubsystemCreatureSpawn::CountCreaturesInArea(valuetype [Engine]Engine.Vector2,
                                                                                            valuetype [Engine]Engine.Vector2,
                                                                                            bool)
      IL_0087:  ldloc.s    V_4
      IL_0089:  blt.s      IL_0090

      IL_008b:  leave      IL_01c2

      IL_0090:  ldloc.3
      IL_0091:  ldarg.0
      IL_0092:  call       instance valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn::GetRandomSpawnLocationType()
      IL_0097:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/'<>c__DisplayClass30_0'::spawnLocationType
      IL_009c:  ldloc.3
      IL_009d:  ldarg.0
      IL_009e:  ldloc.2
      IL_009f:  callvirt   instance class Game.Camera Game.View::get_ActiveCamera()
      IL_00a4:  ldloc.3
      IL_00a5:  ldfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/'<>c__DisplayClass30_0'::spawnLocationType
      IL_00aa:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemCreatureSpawn::GetRandomSpawnPoint(class Game.Camera,
                                                                                                                                                                  valuetype Game.SpawnLocationType)
      IL_00af:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemCreatureSpawn/'<>c__DisplayClass30_0'::spawnPoint
      IL_00b4:  ldloc.3
      IL_00b5:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemCreatureSpawn/'<>c__DisplayClass30_0'::spawnPoint
      IL_00ba:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_HasValue()
      IL_00bf:  brfalse    IL_01a6

      IL_00c4:  ldloc.3
      IL_00c5:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemCreatureSpawn/'<>c__DisplayClass30_0'::spawnPoint
      IL_00ca:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
      IL_00cf:  ldfld      int32 [Engine]Engine.Point3::X
      IL_00d4:  conv.r4
      IL_00d5:  ldloc.3
      IL_00d6:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemCreatureSpawn/'<>c__DisplayClass30_0'::spawnPoint
      IL_00db:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
      IL_00e0:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_00e5:  conv.r4
      IL_00e6:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_00eb:  ldc.r4     16.
      IL_00f0:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
      IL_00f5:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                   valuetype [Engine]Engine.Vector2)
      IL_00fa:  stloc.s    V_6
      IL_00fc:  ldloc.3
      IL_00fd:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemCreatureSpawn/'<>c__DisplayClass30_0'::spawnPoint
      IL_0102:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
      IL_0107:  ldfld      int32 [Engine]Engine.Point3::X
      IL_010c:  conv.r4
      IL_010d:  ldloc.3
      IL_010e:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemCreatureSpawn/'<>c__DisplayClass30_0'::spawnPoint
      IL_0113:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
      IL_0118:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_011d:  conv.r4
      IL_011e:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_0123:  ldc.r4     16.
      IL_0128:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
      IL_012d:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_0132:  stloc.s    V_7
      IL_0134:  ldarg.0
      IL_0135:  ldloc.s    V_6
      IL_0137:  ldloc.s    V_7
      IL_0139:  ldc.i4.0
      IL_013a:  call       instance int32 Game.SubsystemCreatureSpawn::CountCreaturesInArea(valuetype [Engine]Engine.Vector2,
                                                                                            valuetype [Engine]Engine.Vector2,
                                                                                            bool)
      IL_013f:  ldc.i4.3
      IL_0140:  blt.s      IL_0144

      IL_0142:  leave.s    IL_01c2

      IL_0144:  ldarg.0
      IL_0145:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
      IL_014a:  ldloc.3
      IL_014b:  ldftn      instance bool Game.SubsystemCreatureSpawn/'<>c__DisplayClass30_0'::'<SpawnRandomCreature>b__0'(class Game.SubsystemCreatureSpawn/CreatureType)
      IL_0151:  newobj     instance void class [System.Runtime]System.Func`2<class Game.SubsystemCreatureSpawn/CreatureType,bool>::.ctor(object,
                                                                                                                                         native int)
      IL_0156:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class Game.SubsystemCreatureSpawn/CreatureType>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                          class [System.Runtime]System.Func`2<!!0,bool>)
      IL_015b:  stloc.s    V_8
      IL_015d:  ldloc.s    V_8
      IL_015f:  ldloc.3
      IL_0160:  ldftn      instance float32 Game.SubsystemCreatureSpawn/'<>c__DisplayClass30_0'::'<SpawnRandomCreature>b__1'(class Game.SubsystemCreatureSpawn/CreatureType)
      IL_0166:  newobj     instance void class [System.Runtime]System.Func`2<class Game.SubsystemCreatureSpawn/CreatureType,float32>::.ctor(object,
                                                                                                                                            native int)
      IL_016b:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!1> [System.Linq]System.Linq.Enumerable::Select<class Game.SubsystemCreatureSpawn/CreatureType,float32>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                   class [System.Runtime]System.Func`2<!!0,!!1>)
      IL_0170:  stloc.s    V_9
      IL_0172:  ldarg.0
      IL_0173:  ldloc.s    V_9
      IL_0175:  call       instance int32 Game.SubsystemCreatureSpawn::GetRandomWeightedItem(class [System.Runtime]System.Collections.Generic.IEnumerable`1<float32>)
      IL_017a:  stloc.s    V_10
      IL_017c:  ldloc.s    V_10
      IL_017e:  ldc.i4.0
      IL_017f:  blt.s      IL_01a6

      IL_0181:  ldloc.s    V_8
      IL_0183:  ldloc.s    V_10
      IL_0185:  call       !!0 [System.Linq]System.Linq.Enumerable::ElementAt<class Game.SubsystemCreatureSpawn/CreatureType>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                              int32)
      IL_018a:  stloc.s    V_11
      IL_018c:  ldloc.s    V_11
      IL_018e:  ldfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
      IL_0193:  ldloc.s    V_11
      IL_0195:  ldloc.3
      IL_0196:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemCreatureSpawn/'<>c__DisplayClass30_0'::spawnPoint
      IL_019b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
      IL_01a0:  callvirt   instance !2 class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::Invoke(!0,
                                                                                                                                                                         !1)
      IL_01a5:  pop
      IL_01a6:  ldloca.s   V_0
      IL_01a8:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.View>::MoveNext()
      IL_01ad:  brtrue     IL_0025

      IL_01b2:  leave.s    IL_01c2

    }  // end .try
    finally
    {
      IL_01b4:  ldloca.s   V_0
      IL_01b6:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.View>
      IL_01bc:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01c1:  endfinally
    }  // end handler
    IL_01c2:  ret
  } // end of method SubsystemCreatureSpawn::SpawnRandomCreature

  .method private hidebysig instance void 
          SpawnChunkCreatures(class Game.SpawnChunk chunk,
                              int32 maxAttempts,
                              bool constantSpawn) cil managed
  {
    // 代码大小       401 (0x191)
    .maxstack  4
    .locals init (class Game.SubsystemCreatureSpawn/'<>c__DisplayClass31_1' V_0,
             int32 V_1,
             int32 V_2,
             float32 V_3,
             int32 V_4,
             valuetype [Engine]Engine.Vector2 V_5,
             valuetype [Engine]Engine.Vector2 V_6,
             int32 V_7,
             int32 V_8,
             class Game.SubsystemCreatureSpawn/'<>c__DisplayClass31_0' V_9,
             class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.SubsystemCreatureSpawn/CreatureType> V_10,
             class [System.Runtime]System.Collections.Generic.IEnumerable`1<float32> V_11,
             int32 V_12,
             class Game.SubsystemCreatureSpawn/CreatureType V_13,
             int32 V_14)
    IL_0000:  newobj     instance void Game.SubsystemCreatureSpawn/'<>c__DisplayClass31_1'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.3
    IL_0008:  stfld      bool Game.SubsystemCreatureSpawn/'<>c__DisplayClass31_1'::constantSpawn
    IL_000d:  ldloc.0
    IL_000e:  ldfld      bool Game.SubsystemCreatureSpawn/'<>c__DisplayClass31_1'::constantSpawn
    IL_0013:  brtrue.s   IL_0019

    IL_0015:  ldc.i4.s   24
    IL_0017:  br.s       IL_001b

    IL_0019:  ldc.i4.s   18
    IL_001b:  stloc.1
    IL_001c:  ldloc.0
    IL_001d:  ldfld      bool Game.SubsystemCreatureSpawn/'<>c__DisplayClass31_1'::constantSpawn
    IL_0022:  brtrue.s   IL_0027

    IL_0024:  ldc.i4.3
    IL_0025:  br.s       IL_0028

    IL_0027:  ldc.i4.4
    IL_0028:  stloc.2
    IL_0029:  ldloc.0
    IL_002a:  ldfld      bool Game.SubsystemCreatureSpawn/'<>c__DisplayClass31_1'::constantSpawn
    IL_002f:  brtrue.s   IL_0035

    IL_0031:  ldc.i4.s   16
    IL_0033:  br.s       IL_0037

    IL_0035:  ldc.i4.s   42
    IL_0037:  conv.r4
    IL_0038:  stloc.3
    IL_0039:  ldarg.0
    IL_003a:  ldloc.0
    IL_003b:  ldfld      bool Game.SubsystemCreatureSpawn/'<>c__DisplayClass31_1'::constantSpawn
    IL_0040:  call       instance int32 Game.SubsystemCreatureSpawn::CountCreatures(bool)
    IL_0045:  stloc.s    V_4
    IL_0047:  ldarg.1
    IL_0048:  ldflda     valuetype [Engine]Engine.Point2 Game.SpawnChunk::Point
    IL_004d:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0052:  ldc.i4.s   16
    IL_0054:  mul
    IL_0055:  conv.r4
    IL_0056:  ldarg.1
    IL_0057:  ldflda     valuetype [Engine]Engine.Point2 Game.SpawnChunk::Point
    IL_005c:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0061:  ldc.i4.s   16
    IL_0063:  mul
    IL_0064:  conv.r4
    IL_0065:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_006a:  ldloc.3
    IL_006b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0070:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_0075:  stloc.s    V_5
    IL_0077:  ldarg.1
    IL_0078:  ldflda     valuetype [Engine]Engine.Point2 Game.SpawnChunk::Point
    IL_007d:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0082:  ldc.i4.1
    IL_0083:  add
    IL_0084:  ldc.i4.s   16
    IL_0086:  mul
    IL_0087:  conv.r4
    IL_0088:  ldarg.1
    IL_0089:  ldflda     valuetype [Engine]Engine.Point2 Game.SpawnChunk::Point
    IL_008e:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0093:  ldc.i4.1
    IL_0094:  add
    IL_0095:  ldc.i4.s   16
    IL_0097:  mul
    IL_0098:  conv.r4
    IL_0099:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_009e:  ldloc.3
    IL_009f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_00a4:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_00a9:  stloc.s    V_6
    IL_00ab:  ldarg.0
    IL_00ac:  ldloc.s    V_5
    IL_00ae:  ldloc.s    V_6
    IL_00b0:  ldloc.0
    IL_00b1:  ldfld      bool Game.SubsystemCreatureSpawn/'<>c__DisplayClass31_1'::constantSpawn
    IL_00b6:  call       instance int32 Game.SubsystemCreatureSpawn::CountCreaturesInArea(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          bool)
    IL_00bb:  stloc.s    V_7
    IL_00bd:  ldc.i4.0
    IL_00be:  stloc.s    V_8
    IL_00c0:  br         IL_017e

    IL_00c5:  newobj     instance void Game.SubsystemCreatureSpawn/'<>c__DisplayClass31_0'::.ctor()
    IL_00ca:  stloc.s    V_9
    IL_00cc:  ldloc.s    V_9
    IL_00ce:  ldloc.0
    IL_00cf:  stfld      class Game.SubsystemCreatureSpawn/'<>c__DisplayClass31_1' Game.SubsystemCreatureSpawn/'<>c__DisplayClass31_0'::'CS$<>8__locals1'
    IL_00d4:  ldloc.s    V_9
    IL_00d6:  ldarg.0
    IL_00d7:  call       instance valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn::GetRandomSpawnLocationType()
    IL_00dc:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/'<>c__DisplayClass31_0'::spawnLocationType
    IL_00e1:  ldloc.s    V_9
    IL_00e3:  ldarg.0
    IL_00e4:  ldarg.1
    IL_00e5:  ldloc.s    V_9
    IL_00e7:  ldfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/'<>c__DisplayClass31_0'::spawnLocationType
    IL_00ec:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemCreatureSpawn::GetRandomChunkSpawnPoint(class Game.SpawnChunk,
                                                                                                                                                                     valuetype Game.SpawnLocationType)
    IL_00f1:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemCreatureSpawn/'<>c__DisplayClass31_0'::spawnPoint
    IL_00f6:  ldloc.s    V_9
    IL_00f8:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemCreatureSpawn/'<>c__DisplayClass31_0'::spawnPoint
    IL_00fd:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_HasValue()
    IL_0102:  brfalse.s  IL_0178

    IL_0104:  ldarg.0
    IL_0105:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_010a:  ldloc.s    V_9
    IL_010c:  ldftn      instance bool Game.SubsystemCreatureSpawn/'<>c__DisplayClass31_0'::'<SpawnChunkCreatures>b__0'(class Game.SubsystemCreatureSpawn/CreatureType)
    IL_0112:  newobj     instance void class [System.Runtime]System.Func`2<class Game.SubsystemCreatureSpawn/CreatureType,bool>::.ctor(object,
                                                                                                                                       native int)
    IL_0117:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class Game.SubsystemCreatureSpawn/CreatureType>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                        class [System.Runtime]System.Func`2<!!0,bool>)
    IL_011c:  stloc.s    V_10
    IL_011e:  ldloc.s    V_10
    IL_0120:  ldloc.s    V_9
    IL_0122:  ldftn      instance float32 Game.SubsystemCreatureSpawn/'<>c__DisplayClass31_0'::'<SpawnChunkCreatures>b__1'(class Game.SubsystemCreatureSpawn/CreatureType)
    IL_0128:  newobj     instance void class [System.Runtime]System.Func`2<class Game.SubsystemCreatureSpawn/CreatureType,float32>::.ctor(object,
                                                                                                                                          native int)
    IL_012d:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!1> [System.Linq]System.Linq.Enumerable::Select<class Game.SubsystemCreatureSpawn/CreatureType,float32>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                 class [System.Runtime]System.Func`2<!!0,!!1>)
    IL_0132:  stloc.s    V_11
    IL_0134:  ldarg.0
    IL_0135:  ldloc.s    V_11
    IL_0137:  call       instance int32 Game.SubsystemCreatureSpawn::GetRandomWeightedItem(class [System.Runtime]System.Collections.Generic.IEnumerable`1<float32>)
    IL_013c:  stloc.s    V_12
    IL_013e:  ldloc.s    V_12
    IL_0140:  ldc.i4.0
    IL_0141:  blt.s      IL_0178

    IL_0143:  ldloc.s    V_10
    IL_0145:  ldloc.s    V_12
    IL_0147:  call       !!0 [System.Linq]System.Linq.Enumerable::ElementAt<class Game.SubsystemCreatureSpawn/CreatureType>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                            int32)
    IL_014c:  stloc.s    V_13
    IL_014e:  ldloc.s    V_13
    IL_0150:  ldfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0155:  ldloc.s    V_13
    IL_0157:  ldloc.s    V_9
    IL_0159:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemCreatureSpawn/'<>c__DisplayClass31_0'::spawnPoint
    IL_015e:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
    IL_0163:  callvirt   instance !2 class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::Invoke(!0,
                                                                                                                                                                       !1)
    IL_0168:  stloc.s    V_14
    IL_016a:  ldloc.s    V_4
    IL_016c:  ldloc.s    V_14
    IL_016e:  add
    IL_016f:  stloc.s    V_4
    IL_0171:  ldloc.s    V_7
    IL_0173:  ldloc.s    V_14
    IL_0175:  add
    IL_0176:  stloc.s    V_7
    IL_0178:  ldloc.s    V_8
    IL_017a:  ldc.i4.1
    IL_017b:  add
    IL_017c:  stloc.s    V_8
    IL_017e:  ldloc.s    V_8
    IL_0180:  ldarg.2
    IL_0181:  bge.s      IL_0190

    IL_0183:  ldloc.s    V_4
    IL_0185:  ldloc.1
    IL_0186:  bge.s      IL_0190

    IL_0188:  ldloc.s    V_7
    IL_018a:  ldloc.2
    IL_018b:  blt        IL_00c5

    IL_0190:  ret
  } // end of method SubsystemCreatureSpawn::SpawnChunkCreatures

  .method private hidebysig instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> 
          SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                         string templateName,
                         valuetype [Engine]Engine.Point3 point,
                         int32 count) cil managed
  {
    // 代码大小       299 (0x12b)
    .maxstack  7
    .locals init (class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> V_0,
             int32 V_1,
             valuetype [Engine]Engine.Point3 V_2,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             class [EntitySystem]GameEntitySystem.Entity V_5)
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldc.i4.0
    IL_0007:  stloc.1
    IL_0008:  br         IL_011c

    IL_000d:  ldarg.3
    IL_000e:  stloc.2
    IL_000f:  ldloc.1
    IL_0010:  ldc.i4.0
    IL_0011:  ble.s      IL_005e

    IL_0013:  ldloca.s   V_2
    IL_0015:  ldflda     int32 [Engine]Engine.Point3::X
    IL_001a:  dup
    IL_001b:  ldind.i4
    IL_001c:  ldarg.0
    IL_001d:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_0022:  ldc.i4.s   -8
    IL_0024:  ldc.i4.8
    IL_0025:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_002a:  add
    IL_002b:  stind.i4
    IL_002c:  ldloca.s   V_2
    IL_002e:  ldflda     int32 [Engine]Engine.Point3::Y
    IL_0033:  dup
    IL_0034:  ldind.i4
    IL_0035:  ldarg.0
    IL_0036:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_003b:  ldc.i4.s   -4
    IL_003d:  ldc.i4.8
    IL_003e:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0043:  add
    IL_0044:  stind.i4
    IL_0045:  ldloca.s   V_2
    IL_0047:  ldflda     int32 [Engine]Engine.Point3::Z
    IL_004c:  dup
    IL_004d:  ldind.i4
    IL_004e:  ldarg.0
    IL_004f:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_0054:  ldc.i4.s   -8
    IL_0056:  ldc.i4.8
    IL_0057:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_005c:  add
    IL_005d:  stind.i4
    IL_005e:  ldarg.0
    IL_005f:  ldloc.2
    IL_0060:  ldarg.1
    IL_0061:  ldfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_0066:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemCreatureSpawn::ProcessSpawnPoint(valuetype [Engine]Engine.Point3,
                                                                                                                                                              valuetype Game.SpawnLocationType)
    IL_006b:  stloc.3
    IL_006c:  ldloca.s   V_3
    IL_006e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_HasValue()
    IL_0073:  brfalse    IL_0118

    IL_0078:  ldarg.1
    IL_0079:  ldfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_007e:  ldarg.1
    IL_007f:  ldloca.s   V_3
    IL_0081:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
    IL_0086:  callvirt   instance !2 class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::Invoke(!0,
                                                                                                                                                                         !1)
    IL_008b:  ldc.r4     0.0
    IL_0090:  ble.un     IL_0118

    IL_0095:  ldloca.s   V_4
    IL_0097:  ldloca.s   V_3
    IL_0099:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
    IL_009e:  ldfld      int32 [Engine]Engine.Point3::X
    IL_00a3:  conv.r4
    IL_00a4:  ldarg.0
    IL_00a5:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_00aa:  ldc.r4     0.40000001
    IL_00af:  ldc.r4     0.60000002
    IL_00b4:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00b9:  add
    IL_00ba:  ldloca.s   V_3
    IL_00bc:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
    IL_00c1:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00c6:  conv.r4
    IL_00c7:  ldc.r4     1.1
    IL_00cc:  add
    IL_00cd:  ldloca.s   V_3
    IL_00cf:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
    IL_00d4:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_00d9:  conv.r4
    IL_00da:  ldarg.0
    IL_00db:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_00e0:  ldc.r4     0.40000001
    IL_00e5:  ldc.r4     0.60000002
    IL_00ea:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00ef:  add
    IL_00f0:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00f5:  ldarg.0
    IL_00f6:  ldarg.2
    IL_00f7:  ldloc.s    V_4
    IL_00f9:  ldarg.1
    IL_00fa:  ldfld      bool Game.SubsystemCreatureSpawn/CreatureType::ConstantSpawn
    IL_00ff:  call       instance class [EntitySystem]GameEntitySystem.Entity Game.SubsystemCreatureSpawn::SpawnCreature(string,
                                                                                                                         valuetype [Engine]Engine.Vector3,
                                                                                                                         bool)
    IL_0104:  stloc.s    V_5
    IL_0106:  ldloc.s    V_5
    IL_0108:  brfalse.s  IL_0118

    IL_010a:  ldloc.0
    IL_010b:  ldloc.s    V_5
    IL_010d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::Add(!0)
    IL_0112:  ldarg.s    count
    IL_0114:  ldc.i4.1
    IL_0115:  sub
    IL_0116:  starg.s    count
    IL_0118:  ldloc.1
    IL_0119:  ldc.i4.1
    IL_011a:  add
    IL_011b:  stloc.1
    IL_011c:  ldarg.s    count
    IL_011e:  ldc.i4.0
    IL_011f:  ble.s      IL_0129

    IL_0121:  ldloc.1
    IL_0122:  ldc.i4.s   50
    IL_0124:  blt        IL_000d

    IL_0129:  ldloc.0
    IL_012a:  ret
  } // end of method SubsystemCreatureSpawn::SpawnCreatures

  .method private hidebysig instance class [EntitySystem]GameEntitySystem.Entity 
          SpawnCreature(string templateName,
                        valuetype [Engine]Engine.Vector3 position,
                        bool constantSpawn) cil managed
  {
    // 代码大小       140 (0x8c)
    .maxstack  5
    .locals init (class [EntitySystem]GameEntitySystem.Entity V_0,
             class [EntitySystem]GameEntitySystem.Entity V_1,
             class [System.Runtime]System.Exception V_2)
    .try
    {
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
      IL_0006:  ldarg.1
      IL_0007:  ldc.i4.1
      IL_0008:  call       class [EntitySystem]GameEntitySystem.Entity Game.DatabaseManager::CreateEntity(class [EntitySystem]GameEntitySystem.Project,
                                                                                                          string,
                                                                                                          bool)
      IL_000d:  stloc.0
      IL_000e:  ldloc.0
      IL_000f:  ldc.i4.1
      IL_0010:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentBody>(bool)
      IL_0015:  ldarg.2
      IL_0016:  callvirt   instance void Game.ComponentFrame::set_Position(valuetype [Engine]Engine.Vector3)
      IL_001b:  ldloc.0
      IL_001c:  ldc.i4.1
      IL_001d:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentBody>(bool)
      IL_0022:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
      IL_0027:  ldarg.0
      IL_0028:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
      IL_002d:  ldc.r4     0.0
      IL_0032:  ldc.r4     6.2831855
      IL_0037:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_003c:  call       valuetype [Engine]Engine.Quaternion [Engine]Engine.Quaternion::CreateFromAxisAngle(valuetype [Engine]Engine.Vector3,
                                                                                                              float32)
      IL_0041:  callvirt   instance void Game.ComponentFrame::set_Rotation(valuetype [Engine]Engine.Quaternion)
      IL_0046:  ldloc.0
      IL_0047:  ldc.i4.1
      IL_0048:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
      IL_004d:  ldarg.3
      IL_004e:  callvirt   instance void Game.ComponentCreature::set_ConstantSpawn(bool)
      IL_0053:  ldarg.0
      IL_0054:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
      IL_0059:  ldloc.0
      IL_005a:  callvirt   instance void [EntitySystem]GameEntitySystem.Project::AddEntity(class [EntitySystem]GameEntitySystem.Entity)
      IL_005f:  ldloc.0
      IL_0060:  stloc.1
      IL_0061:  leave.s    IL_008a

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0063:  stloc.2
      IL_0064:  ldstr      "Unable to spawn creature with template \"{0}\". Reas"
      + "on: {1}"
      IL_0069:  ldc.i4.2
      IL_006a:  newarr     [System.Runtime]System.Object
      IL_006f:  dup
      IL_0070:  ldc.i4.0
      IL_0071:  ldarg.1
      IL_0072:  stelem.ref
      IL_0073:  dup
      IL_0074:  ldc.i4.1
      IL_0075:  ldloc.2
      IL_0076:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_007b:  stelem.ref
      IL_007c:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_0081:  call       void [Engine]Engine.Log::Error(string)
      IL_0086:  ldnull
      IL_0087:  stloc.1
      IL_0088:  leave.s    IL_008a

    }  // end handler
    IL_008a:  ldloc.1
    IL_008b:  ret
  } // end of method SubsystemCreatureSpawn::SpawnCreature

  .method private hidebysig instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> 
          GetRandomChunkSpawnPoint(class Game.SpawnChunk chunk,
                                   valuetype Game.SpawnLocationType spawnLocationType) cil managed
  {
    // 代码大小       128 (0x80)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> V_4,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> V_5)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br.s       IL_0071

    IL_0004:  ldc.i4.s   16
    IL_0006:  ldarg.1
    IL_0007:  ldflda     valuetype [Engine]Engine.Point2 Game.SpawnChunk::Point
    IL_000c:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0011:  mul
    IL_0012:  ldarg.0
    IL_0013:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_0018:  ldc.i4.0
    IL_0019:  ldc.i4.s   15
    IL_001b:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0020:  add
    IL_0021:  stloc.1
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_0028:  ldc.i4.s   10
    IL_002a:  ldc.i4.s   118
    IL_002c:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0031:  stloc.2
    IL_0032:  ldc.i4.s   16
    IL_0034:  ldarg.1
    IL_0035:  ldflda     valuetype [Engine]Engine.Point2 Game.SpawnChunk::Point
    IL_003a:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_003f:  mul
    IL_0040:  ldarg.0
    IL_0041:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_0046:  ldc.i4.0
    IL_0047:  ldc.i4.s   15
    IL_0049:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_004e:  add
    IL_004f:  stloc.3
    IL_0050:  ldarg.0
    IL_0051:  ldloc.1
    IL_0052:  ldloc.2
    IL_0053:  ldloc.3
    IL_0054:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0059:  ldarg.2
    IL_005a:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemCreatureSpawn::ProcessSpawnPoint(valuetype [Engine]Engine.Point3,
                                                                                                                                                              valuetype Game.SpawnLocationType)
    IL_005f:  stloc.s    V_4
    IL_0061:  ldloca.s   V_4
    IL_0063:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_HasValue()
    IL_0068:  brfalse.s  IL_006d

    IL_006a:  ldloc.s    V_4
    IL_006c:  ret

    IL_006d:  ldloc.0
    IL_006e:  ldc.i4.1
    IL_006f:  add
    IL_0070:  stloc.0
    IL_0071:  ldloc.0
    IL_0072:  ldc.i4.5
    IL_0073:  blt.s      IL_0004

    IL_0075:  ldloca.s   V_5
    IL_0077:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>
    IL_007d:  ldloc.s    V_5
    IL_007f:  ret
  } // end of method SubsystemCreatureSpawn::GetRandomChunkSpawnPoint

  .method private hidebysig instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> 
          GetRandomSpawnPoint(class Game.Camera camera,
                              valuetype Game.SpawnLocationType spawnLocationType) cil managed
  {
    // 代码大小       190 (0xbe)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> V_4,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> V_5)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br         IL_00ab

    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_000d:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0012:  call       int32 Game.Terrain::ToCell(float32)
    IL_0017:  ldarg.0
    IL_0018:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_001d:  callvirt   instance int32 Game.Random::Sign()
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_0028:  ldc.i4.s   20
    IL_002a:  ldc.i4.s   40
    IL_002c:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0031:  mul
    IL_0032:  add
    IL_0033:  stloc.1
    IL_0034:  ldarg.1
    IL_0035:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_003a:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_003f:  call       int32 Game.Terrain::ToCell(float32)
    IL_0044:  ldarg.0
    IL_0045:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_004a:  ldc.i4.s   -30
    IL_004c:  ldc.i4.s   30
    IL_004e:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0053:  add
    IL_0054:  ldc.i4.2
    IL_0055:  ldc.i4.s   126
    IL_0057:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_005c:  stloc.2
    IL_005d:  ldarg.1
    IL_005e:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_0063:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0068:  call       int32 Game.Terrain::ToCell(float32)
    IL_006d:  ldarg.0
    IL_006e:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_0073:  callvirt   instance int32 Game.Random::Sign()
    IL_0078:  ldarg.0
    IL_0079:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_007e:  ldc.i4.s   20
    IL_0080:  ldc.i4.s   40
    IL_0082:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0087:  mul
    IL_0088:  add
    IL_0089:  stloc.3
    IL_008a:  ldarg.0
    IL_008b:  ldloc.1
    IL_008c:  ldloc.2
    IL_008d:  ldloc.3
    IL_008e:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0093:  ldarg.2
    IL_0094:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemCreatureSpawn::ProcessSpawnPoint(valuetype [Engine]Engine.Point3,
                                                                                                                                                              valuetype Game.SpawnLocationType)
    IL_0099:  stloc.s    V_4
    IL_009b:  ldloca.s   V_4
    IL_009d:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_HasValue()
    IL_00a2:  brfalse.s  IL_00a7

    IL_00a4:  ldloc.s    V_4
    IL_00a6:  ret

    IL_00a7:  ldloc.0
    IL_00a8:  ldc.i4.1
    IL_00a9:  add
    IL_00aa:  stloc.0
    IL_00ab:  ldloc.0
    IL_00ac:  ldc.i4.s   10
    IL_00ae:  blt        IL_0007

    IL_00b3:  ldloca.s   V_5
    IL_00b5:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>
    IL_00bb:  ldloc.s    V_5
    IL_00bd:  ret
  } // end of method SubsystemCreatureSpawn::GetRandomSpawnPoint

  .method private hidebysig instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> 
          ProcessSpawnPoint(valuetype [Engine]Engine.Point3 spawnPoint,
                            valuetype Game.SpawnLocationType spawnLocationType) cil managed
  {
    // 代码大小       152 (0x98)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             class Game.TerrainChunk V_3,
             int32 V_4,
             valuetype [Engine]Engine.Point3 V_5,
             valuetype [Engine]Engine.Point3 V_6,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> V_7)
    IL_0000:  ldarg.1
    IL_0001:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0006:  stloc.0
    IL_0007:  ldarg.1
    IL_0008:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_000d:  ldc.i4.1
    IL_000e:  ldc.i4.s   126
    IL_0010:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_0015:  stloc.1
    IL_0016:  ldarg.1
    IL_0017:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_001c:  stloc.2
    IL_001d:  ldarg.0
    IL_001e:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0023:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0028:  ldloc.0
    IL_0029:  ldloc.2
    IL_002a:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_002f:  stloc.3
    IL_0030:  ldloc.3
    IL_0031:  brfalse.s  IL_008d

    IL_0033:  ldloc.3
    IL_0034:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_0039:  ldc.i4.6
    IL_003a:  ble.s      IL_008d

    IL_003c:  ldc.i4.0
    IL_003d:  stloc.s    V_4
    IL_003f:  br.s       IL_0087

    IL_0041:  ldloca.s   V_5
    IL_0043:  ldloc.0
    IL_0044:  ldloc.1
    IL_0045:  ldloc.s    V_4
    IL_0047:  add
    IL_0048:  ldloc.2
    IL_0049:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_004e:  ldarg.0
    IL_004f:  ldloc.s    V_5
    IL_0051:  ldarg.2
    IL_0052:  call       instance bool Game.SubsystemCreatureSpawn::TestSpawnPoint(valuetype [Engine]Engine.Point3,
                                                                                   valuetype Game.SpawnLocationType)
    IL_0057:  brfalse.s  IL_0061

    IL_0059:  ldloc.s    V_5
    IL_005b:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::.ctor(!0)
    IL_0060:  ret

    IL_0061:  ldloca.s   V_6
    IL_0063:  ldloc.0
    IL_0064:  ldloc.1
    IL_0065:  ldloc.s    V_4
    IL_0067:  sub
    IL_0068:  ldloc.2
    IL_0069:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_006e:  ldarg.0
    IL_006f:  ldloc.s    V_6
    IL_0071:  ldarg.2
    IL_0072:  call       instance bool Game.SubsystemCreatureSpawn::TestSpawnPoint(valuetype [Engine]Engine.Point3,
                                                                                   valuetype Game.SpawnLocationType)
    IL_0077:  brfalse.s  IL_0081

    IL_0079:  ldloc.s    V_6
    IL_007b:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::.ctor(!0)
    IL_0080:  ret

    IL_0081:  ldloc.s    V_4
    IL_0083:  ldc.i4.1
    IL_0084:  add
    IL_0085:  stloc.s    V_4
    IL_0087:  ldloc.s    V_4
    IL_0089:  ldc.i4.s   30
    IL_008b:  blt.s      IL_0041

    IL_008d:  ldloca.s   V_7
    IL_008f:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>
    IL_0095:  ldloc.s    V_7
    IL_0097:  ret
  } // end of method SubsystemCreatureSpawn::ProcessSpawnPoint

  .method private hidebysig instance bool 
          TestSpawnPoint(valuetype [Engine]Engine.Point3 spawnPoint,
                         valuetype Game.SpawnLocationType spawnLocationType) cil managed
  {
    // 代码大小       578 (0x242)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             class Game.Block V_7,
             class Game.Block V_8,
             class Game.Block V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12,
             int32 V_13,
             class Game.Block V_14,
             class Game.Block V_15,
             class Game.Block V_16,
             int32 V_17,
             int32 V_18,
             int32 V_19,
             class Game.Block V_20,
             class Game.Block V_21)
    IL_0000:  ldarg.1
    IL_0001:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0006:  stloc.0
    IL_0007:  ldarg.1
    IL_0008:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_000d:  stloc.1
    IL_000e:  ldarg.1
    IL_000f:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0014:  stloc.2
    IL_0015:  ldloc.1
    IL_0016:  ldc.i4.3
    IL_0017:  ble.s      IL_001e

    IL_0019:  ldloc.1
    IL_001a:  ldc.i4.s   125
    IL_001c:  blt.s      IL_0020

    IL_001e:  ldc.i4.0
    IL_001f:  ret

    IL_0020:  ldarg.2
    IL_0021:  brtrue     IL_00ea

    IL_0026:  ldarg.0
    IL_0027:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_002c:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0031:  ldloc.0
    IL_0032:  ldloc.1
    IL_0033:  ldloc.2
    IL_0034:  callvirt   instance int32 Game.Terrain::GetCellLightFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0039:  stloc.3
    IL_003a:  ldarg.0
    IL_003b:  ldfld      class Game.SubsystemSky Game.SubsystemCreatureSpawn::m_subsystemSky
    IL_0040:  callvirt   instance int32 Game.SubsystemSky::get_SkyLightValue()
    IL_0045:  ldloc.3
    IL_0046:  sub
    IL_0047:  ldc.i4.3
    IL_0048:  ble.s      IL_004c

    IL_004a:  ldc.i4.0
    IL_004b:  ret

    IL_004c:  ldarg.0
    IL_004d:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0052:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0057:  ldloc.0
    IL_0058:  ldloc.1
    IL_0059:  ldc.i4.1
    IL_005a:  sub
    IL_005b:  ldloc.2
    IL_005c:  callvirt   instance int32 Game.Terrain::GetCellContentsFast(int32,
                                                                          int32,
                                                                          int32)
    IL_0061:  stloc.s    V_4
    IL_0063:  ldarg.0
    IL_0064:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0069:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_006e:  ldloc.0
    IL_006f:  ldloc.1
    IL_0070:  ldloc.2
    IL_0071:  callvirt   instance int32 Game.Terrain::GetCellContentsFast(int32,
                                                                          int32,
                                                                          int32)
    IL_0076:  stloc.s    V_5
    IL_0078:  ldarg.0
    IL_0079:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_007e:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0083:  ldloc.0
    IL_0084:  ldloc.1
    IL_0085:  ldc.i4.1
    IL_0086:  add
    IL_0087:  ldloc.2
    IL_0088:  callvirt   instance int32 Game.Terrain::GetCellContentsFast(int32,
                                                                          int32,
                                                                          int32)
    IL_008d:  stloc.s    V_6
    IL_008f:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0094:  ldloc.s    V_4
    IL_0096:  ldelem.ref
    IL_0097:  stloc.s    V_7
    IL_0099:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_009e:  ldloc.s    V_5
    IL_00a0:  ldelem.ref
    IL_00a1:  stloc.s    V_8
    IL_00a3:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00a8:  ldloc.s    V_6
    IL_00aa:  ldelem.ref
    IL_00ab:  stloc.s    V_9
    IL_00ad:  ldloc.s    V_7
    IL_00af:  ldfld      bool Game.Block::IsCollidable
    IL_00b4:  brtrue.s   IL_00bf

    IL_00b6:  ldloc.s    V_7
    IL_00b8:  isinst     Game.WaterBlock
    IL_00bd:  brfalse.s  IL_00e8

    IL_00bf:  ldloc.s    V_8
    IL_00c1:  ldfld      bool Game.Block::IsCollidable
    IL_00c6:  brtrue.s   IL_00e8

    IL_00c8:  ldloc.s    V_8
    IL_00ca:  isinst     Game.WaterBlock
    IL_00cf:  brtrue.s   IL_00e8

    IL_00d1:  ldloc.s    V_9
    IL_00d3:  ldfld      bool Game.Block::IsCollidable
    IL_00d8:  brtrue.s   IL_00e8

    IL_00da:  ldloc.s    V_9
    IL_00dc:  isinst     Game.WaterBlock
    IL_00e1:  ldnull
    IL_00e2:  cgt.un
    IL_00e4:  ldc.i4.0
    IL_00e5:  ceq
    IL_00e7:  ret

    IL_00e8:  ldc.i4.0
    IL_00e9:  ret

    IL_00ea:  ldarg.2
    IL_00eb:  ldc.i4.1
    IL_00ec:  bne.un     IL_01b7

    IL_00f1:  ldarg.0
    IL_00f2:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_00f7:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00fc:  ldloc.0
    IL_00fd:  ldloc.1
    IL_00fe:  ldloc.2
    IL_00ff:  callvirt   instance int32 Game.Terrain::GetCellLightFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0104:  stloc.s    V_10
    IL_0106:  ldarg.0
    IL_0107:  ldfld      class Game.SubsystemSky Game.SubsystemCreatureSpawn::m_subsystemSky
    IL_010c:  callvirt   instance int32 Game.SubsystemSky::get_SkyLightValue()
    IL_0111:  ldloc.s    V_10
    IL_0113:  sub
    IL_0114:  ldc.i4.5
    IL_0115:  bge.s      IL_0119

    IL_0117:  ldc.i4.0
    IL_0118:  ret

    IL_0119:  ldarg.0
    IL_011a:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_011f:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0124:  ldloc.0
    IL_0125:  ldloc.1
    IL_0126:  ldc.i4.1
    IL_0127:  sub
    IL_0128:  ldloc.2
    IL_0129:  callvirt   instance int32 Game.Terrain::GetCellContentsFast(int32,
                                                                          int32,
                                                                          int32)
    IL_012e:  stloc.s    V_11
    IL_0130:  ldarg.0
    IL_0131:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0136:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_013b:  ldloc.0
    IL_013c:  ldloc.1
    IL_013d:  ldloc.2
    IL_013e:  callvirt   instance int32 Game.Terrain::GetCellContentsFast(int32,
                                                                          int32,
                                                                          int32)
    IL_0143:  stloc.s    V_12
    IL_0145:  ldarg.0
    IL_0146:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_014b:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0150:  ldloc.0
    IL_0151:  ldloc.1
    IL_0152:  ldc.i4.1
    IL_0153:  add
    IL_0154:  ldloc.2
    IL_0155:  callvirt   instance int32 Game.Terrain::GetCellContentsFast(int32,
                                                                          int32,
                                                                          int32)
    IL_015a:  stloc.s    V_13
    IL_015c:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0161:  ldloc.s    V_11
    IL_0163:  ldelem.ref
    IL_0164:  stloc.s    V_14
    IL_0166:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_016b:  ldloc.s    V_12
    IL_016d:  ldelem.ref
    IL_016e:  stloc.s    V_15
    IL_0170:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0175:  ldloc.s    V_13
    IL_0177:  ldelem.ref
    IL_0178:  stloc.s    V_16
    IL_017a:  ldloc.s    V_14
    IL_017c:  ldfld      bool Game.Block::IsCollidable
    IL_0181:  brtrue.s   IL_018c

    IL_0183:  ldloc.s    V_14
    IL_0185:  isinst     Game.WaterBlock
    IL_018a:  brfalse.s  IL_01b5

    IL_018c:  ldloc.s    V_15
    IL_018e:  ldfld      bool Game.Block::IsCollidable
    IL_0193:  brtrue.s   IL_01b5

    IL_0195:  ldloc.s    V_15
    IL_0197:  isinst     Game.WaterBlock
    IL_019c:  brtrue.s   IL_01b5

    IL_019e:  ldloc.s    V_16
    IL_01a0:  ldfld      bool Game.Block::IsCollidable
    IL_01a5:  brtrue.s   IL_01b5

    IL_01a7:  ldloc.s    V_16
    IL_01a9:  isinst     Game.WaterBlock
    IL_01ae:  ldnull
    IL_01af:  cgt.un
    IL_01b1:  ldc.i4.0
    IL_01b2:  ceq
    IL_01b4:  ret

    IL_01b5:  ldc.i4.0
    IL_01b6:  ret

    IL_01b7:  ldarg.2
    IL_01b8:  ldc.i4.2
    IL_01b9:  bne.un.s   IL_0237

    IL_01bb:  ldarg.0
    IL_01bc:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_01c1:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_01c6:  ldloc.0
    IL_01c7:  ldloc.1
    IL_01c8:  ldloc.2
    IL_01c9:  callvirt   instance int32 Game.Terrain::GetCellContentsFast(int32,
                                                                          int32,
                                                                          int32)
    IL_01ce:  stloc.s    V_17
    IL_01d0:  ldarg.0
    IL_01d1:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_01d6:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_01db:  ldloc.0
    IL_01dc:  ldloc.1
    IL_01dd:  ldc.i4.1
    IL_01de:  add
    IL_01df:  ldloc.2
    IL_01e0:  callvirt   instance int32 Game.Terrain::GetCellContentsFast(int32,
                                                                          int32,
                                                                          int32)
    IL_01e5:  stloc.s    V_18
    IL_01e7:  ldarg.0
    IL_01e8:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_01ed:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_01f2:  ldloc.0
    IL_01f3:  ldloc.1
    IL_01f4:  ldc.i4.2
    IL_01f5:  add
    IL_01f6:  ldloc.2
    IL_01f7:  callvirt   instance int32 Game.Terrain::GetCellContentsFast(int32,
                                                                          int32,
                                                                          int32)
    IL_01fc:  stloc.s    V_19
    IL_01fe:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0203:  ldloc.s    V_17
    IL_0205:  ldelem.ref
    IL_0206:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_020b:  ldloc.s    V_18
    IL_020d:  ldelem.ref
    IL_020e:  stloc.s    V_20
    IL_0210:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0215:  ldloc.s    V_19
    IL_0217:  ldelem.ref
    IL_0218:  stloc.s    V_21
    IL_021a:  isinst     Game.WaterBlock
    IL_021f:  brfalse.s  IL_0235

    IL_0221:  ldloc.s    V_20
    IL_0223:  ldfld      bool Game.Block::IsCollidable
    IL_0228:  brtrue.s   IL_0235

    IL_022a:  ldloc.s    V_21
    IL_022c:  ldfld      bool Game.Block::IsCollidable
    IL_0231:  ldc.i4.0
    IL_0232:  ceq
    IL_0234:  ret

    IL_0235:  ldc.i4.0
    IL_0236:  ret

    IL_0237:  ldstr      "Unknown spawn location type."
    IL_023c:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0241:  throw
  } // end of method SubsystemCreatureSpawn::TestSpawnPoint

  .method private hidebysig instance int32 
          CountCreatures(bool constantSpawn) cil managed
  {
    // 代码大小       82 (0x52)
    .maxstack  2
    .locals init (int32 V_0,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ComponentBody,valuetype [Engine]Engine.Point2> V_1,
             class Game.ComponentCreature V_2)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldarg.0
    IL_0003:  ldfld      class Game.SubsystemBodies Game.SubsystemCreatureSpawn::m_subsystemBodies
    IL_0008:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class Game.ComponentBody,valuetype [Engine]Engine.Point2> Game.SubsystemBodies::get_Bodies()
    IL_000d:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class Game.ComponentBody,valuetype [Engine]Engine.Point2>::GetEnumerator()
    IL_0012:  stloc.1
    .try
    {
      IL_0013:  br.s       IL_0037

      IL_0015:  ldloca.s   V_1
      IL_0017:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ComponentBody,valuetype [Engine]Engine.Point2>::get_Current()
      IL_001c:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
      IL_0021:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>()
      IL_0026:  stloc.2
      IL_0027:  ldloc.2
      IL_0028:  brfalse.s  IL_0037

      IL_002a:  ldloc.2
      IL_002b:  callvirt   instance bool Game.ComponentCreature::get_ConstantSpawn()
      IL_0030:  ldarg.1
      IL_0031:  bne.un.s   IL_0037

      IL_0033:  ldloc.0
      IL_0034:  ldc.i4.1
      IL_0035:  add
      IL_0036:  stloc.0
      IL_0037:  ldloca.s   V_1
      IL_0039:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ComponentBody,valuetype [Engine]Engine.Point2>::MoveNext()
      IL_003e:  brtrue.s   IL_0015

      IL_0040:  leave.s    IL_0050

    }  // end .try
    finally
    {
      IL_0042:  ldloca.s   V_1
      IL_0044:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ComponentBody,valuetype [Engine]Engine.Point2>
      IL_004a:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_004f:  endfinally
    }  // end handler
    IL_0050:  ldloc.0
    IL_0051:  ret
  } // end of method SubsystemCreatureSpawn::CountCreatures

  .method private hidebysig instance int32 
          CountCreaturesInArea(valuetype [Engine]Engine.Vector2 c1,
                               valuetype [Engine]Engine.Vector2 c2,
                               bool constantSpawn) cil managed
  {
    // 代码大小       415 (0x19f)
    .maxstack  4
    .locals init (int32 V_0,
             valuetype [Engine]Engine.Point2 V_1,
             valuetype [Engine]Engine.Point2 V_2,
             int32 V_3,
             class Game.ComponentBody V_4,
             class Game.ComponentCreature V_5,
             valuetype [Engine]Engine.Vector3 V_6,
             int32 V_7,
             int32 V_8,
             class Game.SpawnChunk V_9,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnEntityData> V_10,
             class Game.SpawnEntityData V_11,
             valuetype [Engine]Engine.Vector3 V_12)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldarg.0
    IL_0003:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.SubsystemCreatureSpawn::m_componentBodies
    IL_0008:  callvirt   instance void class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::Clear()
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.SubsystemBodies Game.SubsystemCreatureSpawn::m_subsystemBodies
    IL_0013:  ldarg.1
    IL_0014:  ldarg.2
    IL_0015:  ldarg.0
    IL_0016:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.SubsystemCreatureSpawn::m_componentBodies
    IL_001b:  callvirt   instance void Game.SubsystemBodies::FindBodiesInArea(valuetype [Engine]Engine.Vector2,
                                                                              valuetype [Engine]Engine.Vector2,
                                                                              class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>)
    IL_0020:  ldc.i4.0
    IL_0021:  stloc.3
    IL_0022:  br.s       IL_009c

    IL_0024:  ldarg.0
    IL_0025:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.SubsystemCreatureSpawn::m_componentBodies
    IL_002a:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::get_Array()
    IL_002f:  ldloc.3
    IL_0030:  ldelem.ref
    IL_0031:  stloc.s    V_4
    IL_0033:  ldloc.s    V_4
    IL_0035:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_003a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>()
    IL_003f:  stloc.s    V_5
    IL_0041:  ldloc.s    V_5
    IL_0043:  brfalse.s  IL_0098

    IL_0045:  ldloc.s    V_5
    IL_0047:  callvirt   instance bool Game.ComponentCreature::get_ConstantSpawn()
    IL_004c:  ldarg.3
    IL_004d:  bne.un.s   IL_0098

    IL_004f:  ldloc.s    V_4
    IL_0051:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0056:  stloc.s    V_6
    IL_0058:  ldloc.s    V_6
    IL_005a:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_005f:  ldarg.1
    IL_0060:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0065:  blt.un.s   IL_0098

    IL_0067:  ldloc.s    V_6
    IL_0069:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_006e:  ldarg.2
    IL_006f:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0074:  bgt.un.s   IL_0098

    IL_0076:  ldloc.s    V_6
    IL_0078:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_007d:  ldarg.1
    IL_007e:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0083:  blt.un.s   IL_0098

    IL_0085:  ldloc.s    V_6
    IL_0087:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_008c:  ldarg.2
    IL_008d:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0092:  bgt.un.s   IL_0098

    IL_0094:  ldloc.0
    IL_0095:  ldc.i4.1
    IL_0096:  add
    IL_0097:  stloc.0
    IL_0098:  ldloc.3
    IL_0099:  ldc.i4.1
    IL_009a:  add
    IL_009b:  stloc.3
    IL_009c:  ldloc.3
    IL_009d:  ldarg.0
    IL_009e:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.SubsystemCreatureSpawn::m_componentBodies
    IL_00a3:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::get_Count()
    IL_00a8:  blt        IL_0024

    IL_00ad:  ldarg.1
    IL_00ae:  call       valuetype [Engine]Engine.Point2 Game.Terrain::ToChunk(valuetype [Engine]Engine.Vector2)
    IL_00b3:  stloc.1
    IL_00b4:  ldarg.2
    IL_00b5:  call       valuetype [Engine]Engine.Point2 Game.Terrain::ToChunk(valuetype [Engine]Engine.Vector2)
    IL_00ba:  stloc.2
    IL_00bb:  ldloc.1
    IL_00bc:  ldfld      int32 [Engine]Engine.Point2::X
    IL_00c1:  stloc.s    V_7
    IL_00c3:  br         IL_0190

    IL_00c8:  ldloc.1
    IL_00c9:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_00ce:  stloc.s    V_8
    IL_00d0:  br         IL_017d

    IL_00d5:  ldarg.0
    IL_00d6:  ldfld      class Game.SubsystemSpawn Game.SubsystemCreatureSpawn::m_subsystemSpawn
    IL_00db:  ldloc.s    V_7
    IL_00dd:  ldloc.s    V_8
    IL_00df:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_00e4:  callvirt   instance class Game.SpawnChunk Game.SubsystemSpawn::GetSpawnChunk(valuetype [Engine]Engine.Point2)
    IL_00e9:  stloc.s    V_9
    IL_00eb:  ldloc.s    V_9
    IL_00ed:  brfalse    IL_0177

    IL_00f2:  ldloc.s    V_9
    IL_00f4:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData> Game.SpawnChunk::SpawnsData
    IL_00f9:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData>::GetEnumerator()
    IL_00fe:  stloc.s    V_10
    .try
    {
      IL_0100:  br.s       IL_015e

      IL_0102:  ldloca.s   V_10
      IL_0104:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnEntityData>::get_Current()
      IL_0109:  stloc.s    V_11
      IL_010b:  ldloc.s    V_11
      IL_010d:  ldfld      bool Game.SpawnEntityData::ConstantSpawn
      IL_0112:  ldarg.3
      IL_0113:  bne.un.s   IL_015e

      IL_0115:  ldloc.s    V_11
      IL_0117:  ldfld      valuetype [Engine]Engine.Vector3 Game.SpawnEntityData::Position
      IL_011c:  stloc.s    V_12
      IL_011e:  ldloc.s    V_12
      IL_0120:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0125:  ldarg.1
      IL_0126:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_012b:  blt.un.s   IL_015e

      IL_012d:  ldloc.s    V_12
      IL_012f:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0134:  ldarg.2
      IL_0135:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_013a:  bgt.un.s   IL_015e

      IL_013c:  ldloc.s    V_12
      IL_013e:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0143:  ldarg.1
      IL_0144:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0149:  blt.un.s   IL_015e

      IL_014b:  ldloc.s    V_12
      IL_014d:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0152:  ldarg.2
      IL_0153:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0158:  bgt.un.s   IL_015e

      IL_015a:  ldloc.0
      IL_015b:  ldc.i4.1
      IL_015c:  add
      IL_015d:  stloc.0
      IL_015e:  ldloca.s   V_10
      IL_0160:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnEntityData>::MoveNext()
      IL_0165:  brtrue.s   IL_0102

      IL_0167:  leave.s    IL_0177

    }  // end .try
    finally
    {
      IL_0169:  ldloca.s   V_10
      IL_016b:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnEntityData>
      IL_0171:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0176:  endfinally
    }  // end handler
    IL_0177:  ldloc.s    V_8
    IL_0179:  ldc.i4.1
    IL_017a:  add
    IL_017b:  stloc.s    V_8
    IL_017d:  ldloc.s    V_8
    IL_017f:  ldloc.2
    IL_0180:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0185:  ble        IL_00d5

    IL_018a:  ldloc.s    V_7
    IL_018c:  ldc.i4.1
    IL_018d:  add
    IL_018e:  stloc.s    V_7
    IL_0190:  ldloc.s    V_7
    IL_0192:  ldloc.2
    IL_0193:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0198:  ble        IL_00c8

    IL_019d:  ldloc.0
    IL_019e:  ret
  } // end of method SubsystemCreatureSpawn::CountCreaturesInArea

  .method private hidebysig instance int32 
          GetRandomWeightedItem(class [System.Runtime]System.Collections.Generic.IEnumerable`1<float32> items) cil managed
  {
    // 代码大小       98 (0x62)
    .maxstack  3
    .locals init (float32 V_0,
             float32 V_1,
             int32 V_2,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<float32> V_3,
             float32 V_4,
             int32 V_5)
    IL_0000:  ldarg.1
    IL_0001:  call       float32 [System.Linq]System.Linq.Enumerable::Sum(class [System.Runtime]System.Collections.Generic.IEnumerable`1<float32>)
    IL_0006:  ldc.r4     1.
    IL_000b:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_0017:  ldc.r4     0.0
    IL_001c:  ldloc.0
    IL_001d:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0022:  stloc.1
    IL_0023:  ldc.i4.0
    IL_0024:  stloc.2
    IL_0025:  ldarg.1
    IL_0026:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<float32>::GetEnumerator()
    IL_002b:  stloc.3
    .try
    {
      IL_002c:  br.s       IL_0049

      IL_002e:  ldloc.3
      IL_002f:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<float32>::get_Current()
      IL_0034:  stloc.s    V_4
      IL_0036:  ldloc.1
      IL_0037:  ldloc.s    V_4
      IL_0039:  bge.un.s   IL_0040

      IL_003b:  ldloc.2
      IL_003c:  stloc.s    V_5
      IL_003e:  leave.s    IL_005f

      IL_0040:  ldloc.1
      IL_0041:  ldloc.s    V_4
      IL_0043:  sub
      IL_0044:  stloc.1
      IL_0045:  ldloc.2
      IL_0046:  ldc.i4.1
      IL_0047:  add
      IL_0048:  stloc.2
      IL_0049:  ldloc.3
      IL_004a:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_004f:  brtrue.s   IL_002e

      IL_0051:  leave.s    IL_005d

    }  // end .try
    finally
    {
      IL_0053:  ldloc.3
      IL_0054:  brfalse.s  IL_005c

      IL_0056:  ldloc.3
      IL_0057:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_005c:  endfinally
    }  // end handler
    IL_005d:  ldc.i4.m1
    IL_005e:  ret

    IL_005f:  ldloc.s    V_5
    IL_0061:  ret
  } // end of method SubsystemCreatureSpawn::GetRandomWeightedItem

  .method private hidebysig instance valuetype Game.SpawnLocationType 
          GetRandomSpawnLocationType() cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  8
    IL_0000:  ldsfld     valuetype Game.SpawnLocationType[] Game.SubsystemCreatureSpawn::m_spawnLocations
    IL_0005:  ldarg.0
    IL_0006:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_000b:  ldc.i4.0
    IL_000c:  ldsfld     valuetype Game.SpawnLocationType[] Game.SubsystemCreatureSpawn::m_spawnLocations
    IL_0011:  ldlen
    IL_0012:  conv.i4
    IL_0013:  ldc.i4.1
    IL_0014:  sub
    IL_0015:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_001a:  ldelem.i4
    IL_001b:  ret
  } // end of method SubsystemCreatureSpawn::GetRandomSpawnLocationType

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       73 (0x49)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::.ctor()
    IL_0011:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentCreature,bool>::.ctor()
    IL_001c:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentCreature,bool> Game.SubsystemCreatureSpawn::m_creatures
    IL_0021:  ldarg.0
    IL_0022:  newobj     instance void class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::.ctor()
    IL_0027:  stfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.SubsystemCreatureSpawn::m_componentBodies
    IL_002c:  ldarg.0
    IL_002d:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnChunk>::.ctor()
    IL_0032:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnChunk> Game.SubsystemCreatureSpawn::m_newSpawnChunks
    IL_0037:  ldarg.0
    IL_0038:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnChunk>::.ctor()
    IL_003d:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnChunk> Game.SubsystemCreatureSpawn::m_spawnChunks
    IL_0042:  ldarg.0
    IL_0043:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_0048:  ret
  } // end of method SubsystemCreatureSpawn::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       31 (0x1f)
    .maxstack  8
    IL_0000:  ldtoken    Game.SpawnLocationType
    IL_0005:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_000a:  call       class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.EnumUtils::GetEnumValues(class [System.Runtime]System.Type)
    IL_000f:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Cast<valuetype Game.SpawnLocationType>(class [System.Runtime]System.Collections.IEnumerable)
    IL_0014:  call       !!0[] [System.Linq]System.Linq.Enumerable::ToArray<valuetype Game.SpawnLocationType>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0019:  stsfld     valuetype Game.SpawnLocationType[] Game.SubsystemCreatureSpawn::m_spawnLocations
    IL_001e:  ret
  } // end of method SubsystemCreatureSpawn::.cctor

  .method private hidebysig instance int32 
          '<Update>b__25_0'(int32 max) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_0006:  ldc.i4.0
    IL_0007:  ldarg.1
    IL_0008:  ldc.i4.1
    IL_0009:  sub
    IL_000a:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_000f:  ret
  } // end of method SubsystemCreatureSpawn::'<Update>b__25_0'

  .method private hidebysig instance int32 
          '<Update>b__25_1'(int32 max) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_0006:  ldc.i4.0
    IL_0007:  ldarg.1
    IL_0008:  ldc.i4.1
    IL_0009:  sub
    IL_000a:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_000f:  ret
  } // end of method SubsystemCreatureSpawn::'<Update>b__25_1'

  .method private hidebysig instance void 
          '<Load>b__26_0'(class Game.SpawnChunk chunk) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       33 (0x21)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnChunk> Game.SubsystemCreatureSpawn::m_spawnChunks
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnChunk>::Add(!0)
    IL_000c:  ldarg.1
    IL_000d:  ldfld      bool Game.SpawnChunk::IsSpawned
    IL_0012:  brtrue.s   IL_0020

    IL_0014:  ldarg.0
    IL_0015:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnChunk> Game.SubsystemCreatureSpawn::m_newSpawnChunks
    IL_001a:  ldarg.1
    IL_001b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnChunk>::Add(!0)
    IL_0020:  ret
  } // end of method SubsystemCreatureSpawn::'<Load>b__26_0'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_0'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                             valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       222 (0xde)
    .maxstack  5
    .locals init (float32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  conv.r4
    IL_0012:  ldarg.2
    IL_0013:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0018:  conv.r4
    IL_0019:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_001e:  stloc.0
    IL_001f:  ldarg.0
    IL_0020:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0025:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_002a:  ldarg.2
    IL_002b:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0030:  ldarg.2
    IL_0031:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0036:  callvirt   instance int32 Game.Terrain::GetHumidity(int32,
                                                                  int32)
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0052:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_0057:  stloc.1
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_005e:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0063:  ldarg.2
    IL_0064:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_006f:  ldc.i4.1
    IL_0070:  sub
    IL_0071:  ldarg.2
    IL_0072:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0077:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_007c:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0081:  stloc.2
    IL_0082:  ldarg.0
    IL_0083:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0088:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_008d:  ldarg.2
    IL_008e:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0093:  ldarg.2
    IL_0094:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0099:  callvirt   instance int32 Game.Terrain::GetTopHeight(int32,
                                                                   int32)
    IL_009e:  stloc.3
    IL_009f:  ldc.i4.8
    IL_00a0:  ble.s      IL_00d8

    IL_00a2:  ldloc.1
    IL_00a3:  ldc.i4.4
    IL_00a4:  ble.s      IL_00d8

    IL_00a6:  ldloc.0
    IL_00a7:  ldc.r4     30.
    IL_00ac:  ble.un.s   IL_00d8

    IL_00ae:  ldarg.2
    IL_00af:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00b4:  ldloc.3
    IL_00b5:  blt.s      IL_00d8

    IL_00b7:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00bc:  ldloc.2
    IL_00bd:  ldelem.ref
    IL_00be:  isinst     Game.LeavesBlock
    IL_00c3:  brtrue.s   IL_00d2

    IL_00c5:  ldloc.2
    IL_00c6:  ldc.i4.s   18
    IL_00c8:  beq.s      IL_00d2

    IL_00ca:  ldloc.2
    IL_00cb:  ldc.i4.8
    IL_00cc:  beq.s      IL_00d2

    IL_00ce:  ldloc.2
    IL_00cf:  ldc.i4.2
    IL_00d0:  bne.un.s   IL_00d8

    IL_00d2:  ldc.r4     2.5
    IL_00d7:  ret

    IL_00d8:  ldc.r4     0.0
    IL_00dd:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_0'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_1'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                             valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Duck"
    IL_0007:  ldarg.2
    IL_0008:  ldc.i4.1
    IL_0009:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_000e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_0013:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_1'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_2'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                             valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       226 (0xe2)
    .maxstack  5
    .locals init (float32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  conv.r4
    IL_0012:  ldarg.2
    IL_0013:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0018:  conv.r4
    IL_0019:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_001e:  stloc.0
    IL_001f:  ldarg.0
    IL_0020:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0025:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_002a:  ldarg.2
    IL_002b:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0030:  ldarg.2
    IL_0031:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0036:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_003b:  stloc.1
    IL_003c:  ldarg.0
    IL_003d:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0042:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0047:  ldarg.2
    IL_0048:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004d:  ldarg.2
    IL_004e:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0053:  callvirt   instance int32 Game.Terrain::GetHumidity(int32,
                                                                  int32)
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_005e:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0063:  ldarg.2
    IL_0064:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_006f:  ldc.i4.1
    IL_0070:  sub
    IL_0071:  ldarg.2
    IL_0072:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0077:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_007c:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0081:  stloc.2
    IL_0082:  ldarg.0
    IL_0083:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0088:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_008d:  ldarg.2
    IL_008e:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0093:  ldarg.2
    IL_0094:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0099:  callvirt   instance int32 Game.Terrain::GetTopHeight(int32,
                                                                   int32)
    IL_009e:  stloc.3
    IL_009f:  ldc.i4.8
    IL_00a0:  ble.s      IL_00a6

    IL_00a2:  ldloc.1
    IL_00a3:  ldc.i4.4
    IL_00a4:  bgt.s      IL_00dc

    IL_00a6:  ldloc.0
    IL_00a7:  ldc.r4     30.
    IL_00ac:  ble.un.s   IL_00dc

    IL_00ae:  ldarg.2
    IL_00af:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00b4:  ldloc.3
    IL_00b5:  blt.s      IL_00dc

    IL_00b7:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00bc:  ldloc.2
    IL_00bd:  ldelem.ref
    IL_00be:  isinst     Game.LeavesBlock
    IL_00c3:  brtrue.s   IL_00d6

    IL_00c5:  ldloc.2
    IL_00c6:  ldc.i4.s   62
    IL_00c8:  beq.s      IL_00d6

    IL_00ca:  ldloc.2
    IL_00cb:  ldc.i4.8
    IL_00cc:  beq.s      IL_00d6

    IL_00ce:  ldloc.2
    IL_00cf:  ldc.i4.2
    IL_00d0:  beq.s      IL_00d6

    IL_00d2:  ldloc.2
    IL_00d3:  ldc.i4.7
    IL_00d4:  bne.un.s   IL_00dc

    IL_00d6:  ldc.r4     2.5
    IL_00db:  ret

    IL_00dc:  ldc.r4     0.0
    IL_00e1:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_2'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_3'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                             valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Raven"
    IL_0007:  ldarg.2
    IL_0008:  ldc.i4.1
    IL_0009:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_000e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_0013:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_3'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_4'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                             valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       157 (0x9d)
    .maxstack  4
    .locals init (float32 V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  conv.r4
    IL_0012:  ldarg.2
    IL_0013:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0018:  conv.r4
    IL_0019:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_001e:  stloc.0
    IL_001f:  ldarg.0
    IL_0020:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0025:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_002a:  ldarg.2
    IL_002b:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0030:  ldarg.2
    IL_0031:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0036:  ldc.i4.1
    IL_0037:  sub
    IL_0038:  ldarg.2
    IL_0039:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_003e:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0043:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0048:  stloc.1
    IL_0049:  ldarg.0
    IL_004a:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_004f:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0054:  ldarg.2
    IL_0055:  ldfld      int32 [Engine]Engine.Point3::X
    IL_005a:  ldarg.2
    IL_005b:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0060:  callvirt   instance int32 Game.Terrain::GetTopHeight(int32,
                                                                   int32)
    IL_0065:  stloc.2
    IL_0066:  ldloc.0
    IL_0067:  ldc.r4     -100.
    IL_006c:  ble.un.s   IL_0097

    IL_006e:  ldloc.0
    IL_006f:  ldc.r4     40.
    IL_0074:  bge.un.s   IL_0097

    IL_0076:  ldarg.2
    IL_0077:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_007c:  ldloc.2
    IL_007d:  blt.s      IL_0097

    IL_007f:  ldloc.1
    IL_0080:  ldc.i4.s   18
    IL_0082:  beq.s      IL_0091

    IL_0084:  ldloc.1
    IL_0085:  ldc.i4.7
    IL_0086:  beq.s      IL_0091

    IL_0088:  ldloc.1
    IL_0089:  ldc.i4.6
    IL_008a:  beq.s      IL_0091

    IL_008c:  ldloc.1
    IL_008d:  ldc.i4.s   62
    IL_008f:  bne.un.s   IL_0097

    IL_0091:  ldc.r4     2.5
    IL_0096:  ret

    IL_0097:  ldc.r4     0.0
    IL_009c:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_4'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_5'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                             valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Seagull"
    IL_0007:  ldarg.2
    IL_0008:  ldc.i4.1
    IL_0009:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_000e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_0013:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_5'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_6'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                             valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       142 (0x8e)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  conv.r4
    IL_0012:  ldarg.2
    IL_0013:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0018:  conv.r4
    IL_0019:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0024:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.Terrain::GetHumidity(int32,
                                                                  int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0052:  ldc.i4.1
    IL_0053:  sub
    IL_0054:  ldarg.2
    IL_0055:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_005a:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_005f:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0064:  stloc.1
    IL_0065:  ldc.r4     20.
    IL_006a:  ble.un.s   IL_0088

    IL_006c:  ldloc.0
    IL_006d:  ldc.i4.8
    IL_006e:  ble.s      IL_0088

    IL_0070:  ldarg.2
    IL_0071:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0076:  ldc.i4.s   80
    IL_0078:  bge.s      IL_0088

    IL_007a:  ldloc.1
    IL_007b:  ldc.i4.8
    IL_007c:  beq.s      IL_0082

    IL_007e:  ldloc.1
    IL_007f:  ldc.i4.2
    IL_0080:  bne.un.s   IL_0088

    IL_0082:  ldc.r4     0.25
    IL_0087:  ret

    IL_0088:  ldc.r4     0.0
    IL_008d:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_6'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_7'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                             valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Wildboar"
    IL_0007:  ldarg.2
    IL_0008:  ldc.i4.1
    IL_0009:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_000e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_0013:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_7'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_8'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                             valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       175 (0xaf)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  conv.r4
    IL_0012:  ldarg.2
    IL_0013:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0018:  conv.r4
    IL_0019:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0024:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.Terrain::GetHumidity(int32,
                                                                  int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0052:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_0057:  stloc.1
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_005e:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0063:  ldarg.2
    IL_0064:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_006f:  ldc.i4.1
    IL_0070:  sub
    IL_0071:  ldarg.2
    IL_0072:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0077:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_007c:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0081:  stloc.2
    IL_0082:  ldc.r4     20.
    IL_0087:  ble.un.s   IL_00a9

    IL_0089:  ldloc.0
    IL_008a:  ldc.i4.4
    IL_008b:  ble.s      IL_00a9

    IL_008d:  ldloc.1
    IL_008e:  ldc.i4.8
    IL_008f:  blt.s      IL_00a9

    IL_0091:  ldarg.2
    IL_0092:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0097:  ldc.i4.s   70
    IL_0099:  bge.s      IL_00a9

    IL_009b:  ldloc.2
    IL_009c:  ldc.i4.8
    IL_009d:  beq.s      IL_00a3

    IL_009f:  ldloc.2
    IL_00a0:  ldc.i4.2
    IL_00a1:  bne.un.s   IL_00a9

    IL_00a3:  ldc.r4     5.0000001e-002
    IL_00a8:  ret

    IL_00a9:  ldc.r4     0.0
    IL_00ae:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_8'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_9'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                             valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       80 (0x50)
    .maxstack  6
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_0006:  ldc.i4.3
    IL_0007:  ldc.i4.5
    IL_0008:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_000d:  stloc.0
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_0014:  ldc.i4.1
    IL_0015:  ldc.i4.3
    IL_0016:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_001b:  ldloc.0
    IL_001c:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0021:  stloc.1
    IL_0022:  ldloc.0
    IL_0023:  ldloc.1
    IL_0024:  sub
    IL_0025:  stloc.2
    IL_0026:  ldc.i4.0
    IL_0027:  ldarg.0
    IL_0028:  ldarg.1
    IL_0029:  ldstr      "Bull_Brown"
    IL_002e:  ldarg.2
    IL_002f:  ldloc.1
    IL_0030:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_0035:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_003a:  add
    IL_003b:  ldarg.0
    IL_003c:  ldarg.1
    IL_003d:  ldstr      "Cow_Brown"
    IL_0042:  ldarg.2
    IL_0043:  ldloc.2
    IL_0044:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_0049:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_004e:  add
    IL_004f:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_9'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_10'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       175 (0xaf)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  conv.r4
    IL_0012:  ldarg.2
    IL_0013:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0018:  conv.r4
    IL_0019:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0024:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.Terrain::GetHumidity(int32,
                                                                  int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0052:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_0057:  stloc.1
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_005e:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0063:  ldarg.2
    IL_0064:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_006f:  ldc.i4.1
    IL_0070:  sub
    IL_0071:  ldarg.2
    IL_0072:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0077:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_007c:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0081:  stloc.2
    IL_0082:  ldc.r4     20.
    IL_0087:  ble.un.s   IL_00a9

    IL_0089:  ldloc.0
    IL_008a:  ldc.i4.4
    IL_008b:  ble.s      IL_00a9

    IL_008d:  ldloc.1
    IL_008e:  ldc.i4.8
    IL_008f:  bge.s      IL_00a9

    IL_0091:  ldarg.2
    IL_0092:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0097:  ldc.i4.s   70
    IL_0099:  bge.s      IL_00a9

    IL_009b:  ldloc.2
    IL_009c:  ldc.i4.8
    IL_009d:  beq.s      IL_00a3

    IL_009f:  ldloc.2
    IL_00a0:  ldc.i4.2
    IL_00a1:  bne.un.s   IL_00a9

    IL_00a3:  ldc.r4     5.0000001e-002
    IL_00a8:  ret

    IL_00a9:  ldc.r4     0.0
    IL_00ae:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_10'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_11'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       80 (0x50)
    .maxstack  6
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_0006:  ldc.i4.3
    IL_0007:  ldc.i4.5
    IL_0008:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_000d:  stloc.0
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_0014:  ldc.i4.1
    IL_0015:  ldc.i4.3
    IL_0016:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_001b:  ldloc.0
    IL_001c:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0021:  stloc.1
    IL_0022:  ldloc.0
    IL_0023:  ldloc.1
    IL_0024:  sub
    IL_0025:  stloc.2
    IL_0026:  ldc.i4.0
    IL_0027:  ldarg.0
    IL_0028:  ldarg.1
    IL_0029:  ldstr      "Bull_Black"
    IL_002e:  ldarg.2
    IL_002f:  ldloc.1
    IL_0030:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_0035:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_003a:  add
    IL_003b:  ldarg.0
    IL_003c:  ldarg.1
    IL_003d:  ldstr      "Cow_Black"
    IL_0042:  ldarg.2
    IL_0043:  ldloc.2
    IL_0044:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_0049:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_004e:  add
    IL_004f:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_11'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_12'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       175 (0xaf)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  conv.r4
    IL_0012:  ldarg.2
    IL_0013:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0018:  conv.r4
    IL_0019:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0024:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.Terrain::GetHumidity(int32,
                                                                  int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0052:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_0057:  stloc.1
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_005e:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0063:  ldarg.2
    IL_0064:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_006f:  ldc.i4.1
    IL_0070:  sub
    IL_0071:  ldarg.2
    IL_0072:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0077:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_007c:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0081:  stloc.2
    IL_0082:  ldc.r4     20.
    IL_0087:  ble.un.s   IL_00a9

    IL_0089:  ldloc.0
    IL_008a:  ldc.i4.8
    IL_008b:  ble.s      IL_00a9

    IL_008d:  ldloc.1
    IL_008e:  ldc.i4.4
    IL_008f:  bge.s      IL_00a9

    IL_0091:  ldarg.2
    IL_0092:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0097:  ldc.i4.s   70
    IL_0099:  bge.s      IL_00a9

    IL_009b:  ldloc.2
    IL_009c:  ldc.i4.8
    IL_009d:  beq.s      IL_00a3

    IL_009f:  ldloc.2
    IL_00a0:  ldc.i4.2
    IL_00a1:  bne.un.s   IL_00a9

    IL_00a3:  ldc.r4     9.9999998e-003
    IL_00a8:  ret

    IL_00a9:  ldc.r4     0.0
    IL_00ae:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_12'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_13'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Bull_White"
    IL_0007:  ldarg.2
    IL_0008:  ldc.i4.1
    IL_0009:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_000e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_0013:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_13'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_14'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       142 (0x8e)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  conv.r4
    IL_0012:  ldarg.2
    IL_0013:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0018:  conv.r4
    IL_0019:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0024:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.Terrain::GetHumidity(int32,
                                                                  int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0052:  ldc.i4.1
    IL_0053:  sub
    IL_0054:  ldarg.2
    IL_0055:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_005a:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_005f:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0064:  stloc.1
    IL_0065:  ldc.r4     40.
    IL_006a:  ble.un.s   IL_0088

    IL_006c:  ldloc.0
    IL_006d:  ldc.i4.8
    IL_006e:  blt.s      IL_0088

    IL_0070:  ldarg.2
    IL_0071:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0076:  ldc.i4.s   80
    IL_0078:  bge.s      IL_0088

    IL_007a:  ldloc.1
    IL_007b:  ldc.i4.8
    IL_007c:  beq.s      IL_0082

    IL_007e:  ldloc.1
    IL_007f:  ldc.i4.2
    IL_0080:  bne.un.s   IL_0088

    IL_0082:  ldc.r4     7.5000003e-002
    IL_0087:  ret

    IL_0088:  ldc.r4     0.0
    IL_008d:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_14'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_15'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Wolf_Gray"
    IL_0007:  ldarg.2
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_000e:  ldc.i4.1
    IL_000f:  ldc.i4.3
    IL_0010:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0015:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_001a:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_001f:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_15'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_16'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       175 (0xaf)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  conv.r4
    IL_0012:  ldarg.2
    IL_0013:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0018:  conv.r4
    IL_0019:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0024:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.Terrain::GetHumidity(int32,
                                                                  int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0052:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_0057:  stloc.1
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_005e:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0063:  ldarg.2
    IL_0064:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_006f:  ldc.i4.1
    IL_0070:  sub
    IL_0071:  ldarg.2
    IL_0072:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0077:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_007c:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0081:  stloc.2
    IL_0082:  ldc.r4     40.
    IL_0087:  ble.un.s   IL_00a9

    IL_0089:  ldloc.1
    IL_008a:  ldc.i4.8
    IL_008b:  ble.s      IL_00a9

    IL_008d:  ldloc.0
    IL_008e:  ldc.i4.8
    IL_008f:  bge.s      IL_00a9

    IL_0091:  ldloc.0
    IL_0092:  ldc.i4.2
    IL_0093:  blt.s      IL_00a9

    IL_0095:  ldarg.2
    IL_0096:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_009b:  ldc.i4.s   80
    IL_009d:  bge.s      IL_00a9

    IL_009f:  ldloc.2
    IL_00a0:  ldc.i4.7
    IL_00a1:  bne.un.s   IL_00a9

    IL_00a3:  ldc.r4     7.5000003e-002
    IL_00a8:  ret

    IL_00a9:  ldc.r4     0.0
    IL_00ae:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_16'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_17'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Wolf_Coyote"
    IL_0007:  ldarg.2
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_000e:  ldc.i4.1
    IL_000f:  ldc.i4.3
    IL_0010:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0015:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_001a:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_001f:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_17'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_18'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       169 (0xa9)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  conv.r4
    IL_0012:  ldarg.2
    IL_0013:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0018:  conv.r4
    IL_0019:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0024:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0052:  callvirt   instance int32 Game.Terrain::GetHumidity(int32,
                                                                  int32)
    IL_0057:  stloc.1
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_005e:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0063:  ldarg.2
    IL_0064:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_006f:  ldc.i4.1
    IL_0070:  sub
    IL_0071:  ldarg.2
    IL_0072:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0077:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_007c:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0081:  stloc.2
    IL_0082:  ldc.r4     40.
    IL_0087:  ble.un.s   IL_00a3

    IL_0089:  ldloc.1
    IL_008a:  ldc.i4.4
    IL_008b:  blt.s      IL_00a3

    IL_008d:  ldloc.0
    IL_008e:  ldc.i4.8
    IL_008f:  blt.s      IL_00a3

    IL_0091:  ldloc.2
    IL_0092:  ldc.i4.8
    IL_0093:  beq.s      IL_009d

    IL_0095:  ldloc.2
    IL_0096:  ldc.i4.2
    IL_0097:  beq.s      IL_009d

    IL_0099:  ldloc.2
    IL_009a:  ldc.i4.3
    IL_009b:  bne.un.s   IL_00a3

    IL_009d:  ldc.r4     0.1
    IL_00a2:  ret

    IL_00a3:  ldc.r4     0.0
    IL_00a8:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_18'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_19'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Bear_Brown"
    IL_0007:  ldarg.2
    IL_0008:  ldc.i4.1
    IL_0009:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_000e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_0013:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_19'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_20'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       169 (0xa9)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  conv.r4
    IL_0012:  ldarg.2
    IL_0013:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0018:  conv.r4
    IL_0019:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0024:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0052:  callvirt   instance int32 Game.Terrain::GetHumidity(int32,
                                                                  int32)
    IL_0057:  stloc.1
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_005e:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0063:  ldarg.2
    IL_0064:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_006f:  ldc.i4.1
    IL_0070:  sub
    IL_0071:  ldarg.2
    IL_0072:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0077:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_007c:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0081:  stloc.2
    IL_0082:  ldc.r4     40.
    IL_0087:  ble.un.s   IL_00a3

    IL_0089:  ldloc.1
    IL_008a:  ldc.i4.4
    IL_008b:  blt.s      IL_00a3

    IL_008d:  ldloc.0
    IL_008e:  ldc.i4.8
    IL_008f:  bge.s      IL_00a3

    IL_0091:  ldloc.2
    IL_0092:  ldc.i4.8
    IL_0093:  beq.s      IL_009d

    IL_0095:  ldloc.2
    IL_0096:  ldc.i4.2
    IL_0097:  beq.s      IL_009d

    IL_0099:  ldloc.2
    IL_009a:  ldc.i4.3
    IL_009b:  bne.un.s   IL_00a3

    IL_009d:  ldc.r4     0.1
    IL_00a2:  ret

    IL_00a3:  ldc.r4     0.0
    IL_00a8:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_20'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_21'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Bear_Black"
    IL_0007:  ldarg.2
    IL_0008:  ldc.i4.1
    IL_0009:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_000e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_0013:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_21'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_22'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       129 (0x81)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  conv.r4
    IL_0012:  ldarg.2
    IL_0013:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0018:  conv.r4
    IL_0019:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0024:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0052:  ldc.i4.1
    IL_0053:  sub
    IL_0054:  ldarg.2
    IL_0055:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_005a:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_005f:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0064:  stloc.1
    IL_0065:  ldc.r4     -40.
    IL_006a:  ble.un.s   IL_007b

    IL_006c:  ldloc.0
    IL_006d:  ldc.i4.8
    IL_006e:  bge.s      IL_007b

    IL_0070:  ldloc.1
    IL_0071:  ldc.i4.s   62
    IL_0073:  bne.un.s   IL_007b

    IL_0075:  ldc.r4     0.1
    IL_007a:  ret

    IL_007b:  ldc.r4     0.0
    IL_0080:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_22'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_23'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Bear_Polar"
    IL_0007:  ldarg.2
    IL_0008:  ldc.i4.1
    IL_0009:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_000e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_0013:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_23'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_24'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       169 (0xa9)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  conv.r4
    IL_0012:  ldarg.2
    IL_0013:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0018:  conv.r4
    IL_0019:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0024:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0052:  callvirt   instance int32 Game.Terrain::GetHumidity(int32,
                                                                  int32)
    IL_0057:  stloc.1
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_005e:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0063:  ldarg.2
    IL_0064:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_006f:  ldc.i4.1
    IL_0070:  sub
    IL_0071:  ldarg.2
    IL_0072:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0077:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_007c:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0081:  stloc.2
    IL_0082:  ldc.r4     20.
    IL_0087:  ble.un.s   IL_00a3

    IL_0089:  ldloc.0
    IL_008a:  ldc.i4.3
    IL_008b:  ble.s      IL_00a3

    IL_008d:  ldloc.1
    IL_008e:  ldc.i4.6
    IL_008f:  ble.s      IL_00a3

    IL_0091:  ldloc.2
    IL_0092:  ldc.i4.8
    IL_0093:  beq.s      IL_009d

    IL_0095:  ldloc.2
    IL_0096:  ldc.i4.2
    IL_0097:  beq.s      IL_009d

    IL_0099:  ldloc.2
    IL_009a:  ldc.i4.3
    IL_009b:  bne.un.s   IL_00a3

    IL_009d:  ldc.r4     5.0000001e-002
    IL_00a2:  ret

    IL_00a3:  ldc.r4     0.0
    IL_00a8:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_24'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_25'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       289 (0x121)
    .maxstack  7
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  ldarg.2
    IL_0012:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0017:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_001c:  ldc.i4.0
    IL_001d:  stloc.0
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_0024:  ldc.r4     0.0
    IL_0029:  ldc.r4     1.
    IL_002e:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0033:  ldc.r4     0.34999999
    IL_0038:  bge.un.s   IL_0050

    IL_003a:  ldloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldarg.1
    IL_003d:  ldstr      "Horse_Black"
    IL_0042:  ldarg.2
    IL_0043:  ldc.i4.1
    IL_0044:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_0049:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_004e:  add
    IL_004f:  stloc.0
    IL_0050:  ldarg.0
    IL_0051:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_0056:  ldc.r4     0.0
    IL_005b:  ldc.r4     1.
    IL_0060:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0065:  ldc.r4     0.5
    IL_006a:  bge.un.s   IL_0082

    IL_006c:  ldloc.0
    IL_006d:  ldarg.0
    IL_006e:  ldarg.1
    IL_006f:  ldstr      "Horse_Bay"
    IL_0074:  ldarg.2
    IL_0075:  ldc.i4.1
    IL_0076:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_007b:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_0080:  add
    IL_0081:  stloc.0
    IL_0082:  ldarg.0
    IL_0083:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_0088:  ldc.r4     0.0
    IL_008d:  ldc.r4     1.
    IL_0092:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0097:  ldc.r4     0.5
    IL_009c:  bge.un.s   IL_00b4

    IL_009e:  ldloc.0
    IL_009f:  ldarg.0
    IL_00a0:  ldarg.1
    IL_00a1:  ldstr      "Horse_Chestnut"
    IL_00a6:  ldarg.2
    IL_00a7:  ldc.i4.1
    IL_00a8:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_00ad:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_00b2:  add
    IL_00b3:  stloc.0
    IL_00b4:  dup
    IL_00b5:  ldc.i4.8
    IL_00b6:  ble.s      IL_00ea

    IL_00b8:  ldarg.0
    IL_00b9:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_00be:  ldc.r4     0.0
    IL_00c3:  ldc.r4     1.
    IL_00c8:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00cd:  ldc.r4     0.30000001
    IL_00d2:  bge.un.s   IL_00ea

    IL_00d4:  ldloc.0
    IL_00d5:  ldarg.0
    IL_00d6:  ldarg.1
    IL_00d7:  ldstr      "Horse_Palomino"
    IL_00dc:  ldarg.2
    IL_00dd:  ldc.i4.1
    IL_00de:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_00e3:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_00e8:  add
    IL_00e9:  stloc.0
    IL_00ea:  ldc.i4.8
    IL_00eb:  bge.s      IL_011f

    IL_00ed:  ldarg.0
    IL_00ee:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_00f3:  ldc.r4     0.0
    IL_00f8:  ldc.r4     1.
    IL_00fd:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0102:  ldc.r4     0.30000001
    IL_0107:  bge.un.s   IL_011f

    IL_0109:  ldloc.0
    IL_010a:  ldarg.0
    IL_010b:  ldarg.1
    IL_010c:  ldstr      "Horse_White"
    IL_0111:  ldarg.2
    IL_0112:  ldc.i4.1
    IL_0113:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_0118:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_011d:  add
    IL_011e:  stloc.0
    IL_011f:  ldloc.0
    IL_0120:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_25'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_26'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       161 (0xa1)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  conv.r4
    IL_0012:  ldarg.2
    IL_0013:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0018:  conv.r4
    IL_0019:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0024:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0052:  callvirt   instance int32 Game.Terrain::GetHumidity(int32,
                                                                  int32)
    IL_0057:  stloc.1
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_005e:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0063:  ldarg.2
    IL_0064:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_006f:  ldc.i4.1
    IL_0070:  sub
    IL_0071:  ldarg.2
    IL_0072:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0077:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_007c:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0081:  stloc.2
    IL_0082:  ldc.r4     20.
    IL_0087:  ble.un.s   IL_009b

    IL_0089:  ldloc.0
    IL_008a:  ldc.i4.8
    IL_008b:  ble.s      IL_009b

    IL_008d:  ldloc.1
    IL_008e:  ldc.i4.8
    IL_008f:  bge.s      IL_009b

    IL_0091:  ldloc.2
    IL_0092:  ldc.i4.7
    IL_0093:  bne.un.s   IL_009b

    IL_0095:  ldc.r4     5.0000001e-002
    IL_009a:  ret

    IL_009b:  ldc.r4     0.0
    IL_00a0:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_26'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_27'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Camel"
    IL_0007:  ldarg.2
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_000e:  ldc.i4.1
    IL_000f:  ldc.i4.2
    IL_0010:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0015:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_001a:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_001f:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_27'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_28'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       140 (0x8c)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  conv.r4
    IL_0012:  ldarg.2
    IL_0013:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0018:  conv.r4
    IL_0019:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0024:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0052:  ldc.i4.1
    IL_0053:  sub
    IL_0054:  ldarg.2
    IL_0055:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_005a:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_005f:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0064:  stloc.1
    IL_0065:  ldc.r4     20.
    IL_006a:  ble.un.s   IL_0086

    IL_006c:  ldloc.0
    IL_006d:  ldc.i4.6
    IL_006e:  ble.s      IL_0086

    IL_0070:  ldloc.1
    IL_0071:  ldc.i4.8
    IL_0072:  beq.s      IL_0080

    IL_0074:  ldloc.1
    IL_0075:  ldc.i4.2
    IL_0076:  beq.s      IL_0080

    IL_0078:  ldloc.1
    IL_0079:  ldc.i4.3
    IL_007a:  beq.s      IL_0080

    IL_007c:  ldloc.1
    IL_007d:  ldc.i4.7
    IL_007e:  bne.un.s   IL_0086

    IL_0080:  ldc.r4     5.0000001e-002
    IL_0085:  ret

    IL_0086:  ldc.r4     0.0
    IL_008b:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_28'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_29'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Donkey"
    IL_0007:  ldarg.2
    IL_0008:  ldc.i4.1
    IL_0009:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_000e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_0013:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_29'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_30'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       169 (0xa9)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  conv.r4
    IL_0012:  ldarg.2
    IL_0013:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0018:  conv.r4
    IL_0019:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0024:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0052:  callvirt   instance int32 Game.Terrain::GetHumidity(int32,
                                                                  int32)
    IL_0057:  stloc.1
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_005e:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0063:  ldarg.2
    IL_0064:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_006f:  ldc.i4.1
    IL_0070:  sub
    IL_0071:  ldarg.2
    IL_0072:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0077:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_007c:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0081:  stloc.2
    IL_0082:  ldc.r4     20.
    IL_0087:  ble.un.s   IL_00a3

    IL_0089:  ldloc.0
    IL_008a:  ldc.i4.8
    IL_008b:  ble.s      IL_00a3

    IL_008d:  ldloc.1
    IL_008e:  ldc.i4.7
    IL_008f:  ble.s      IL_00a3

    IL_0091:  ldloc.2
    IL_0092:  ldc.i4.8
    IL_0093:  beq.s      IL_009d

    IL_0095:  ldloc.2
    IL_0096:  ldc.i4.2
    IL_0097:  beq.s      IL_009d

    IL_0099:  ldloc.2
    IL_009a:  ldc.i4.3
    IL_009b:  bne.un.s   IL_00a3

    IL_009d:  ldc.r4     2.9999999e-002
    IL_00a2:  ret

    IL_00a3:  ldc.r4     0.0
    IL_00a8:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_30'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_31'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Giraffe"
    IL_0007:  ldarg.2
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_000e:  ldc.i4.1
    IL_000f:  ldc.i4.2
    IL_0010:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0015:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_001a:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_001f:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_31'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_32'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       169 (0xa9)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  conv.r4
    IL_0012:  ldarg.2
    IL_0013:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0018:  conv.r4
    IL_0019:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0024:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0052:  callvirt   instance int32 Game.Terrain::GetHumidity(int32,
                                                                  int32)
    IL_0057:  stloc.1
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_005e:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0063:  ldarg.2
    IL_0064:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_006f:  ldc.i4.1
    IL_0070:  sub
    IL_0071:  ldarg.2
    IL_0072:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0077:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_007c:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0081:  stloc.2
    IL_0082:  ldc.r4     40.
    IL_0087:  ble.un.s   IL_00a3

    IL_0089:  ldloc.0
    IL_008a:  ldc.i4.8
    IL_008b:  ble.s      IL_00a3

    IL_008d:  ldloc.1
    IL_008e:  ldc.i4.7
    IL_008f:  ble.s      IL_00a3

    IL_0091:  ldloc.2
    IL_0092:  ldc.i4.8
    IL_0093:  beq.s      IL_009d

    IL_0095:  ldloc.2
    IL_0096:  ldc.i4.2
    IL_0097:  beq.s      IL_009d

    IL_0099:  ldloc.2
    IL_009a:  ldc.i4.3
    IL_009b:  bne.un.s   IL_00a3

    IL_009d:  ldc.r4     5.0000001e-002
    IL_00a2:  ret

    IL_00a3:  ldc.r4     0.0
    IL_00a8:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_32'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_33'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Rhino"
    IL_0007:  ldarg.2
    IL_0008:  ldc.i4.1
    IL_0009:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_000e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_0013:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_33'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_34'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       140 (0x8c)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  conv.r4
    IL_0012:  ldarg.2
    IL_0013:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0018:  conv.r4
    IL_0019:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0024:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.Terrain::GetHumidity(int32,
                                                                  int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0052:  ldc.i4.1
    IL_0053:  sub
    IL_0054:  ldarg.2
    IL_0055:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_005a:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_005f:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0064:  stloc.1
    IL_0065:  ldc.r4     40.
    IL_006a:  ble.un.s   IL_0086

    IL_006c:  ldloc.0
    IL_006d:  ldc.i4.8
    IL_006e:  ble.s      IL_0086

    IL_0070:  ldloc.1
    IL_0071:  ldc.i4.8
    IL_0072:  beq.s      IL_0080

    IL_0074:  ldloc.1
    IL_0075:  ldc.i4.2
    IL_0076:  beq.s      IL_0080

    IL_0078:  ldloc.1
    IL_0079:  ldc.i4.3
    IL_007a:  beq.s      IL_0080

    IL_007c:  ldloc.1
    IL_007d:  ldc.i4.7
    IL_007e:  bne.un.s   IL_0086

    IL_0080:  ldc.r4     2.5e-002
    IL_0085:  ret

    IL_0086:  ldc.r4     0.0
    IL_008b:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_34'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_35'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Tiger"
    IL_0007:  ldarg.2
    IL_0008:  ldc.i4.1
    IL_0009:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_000e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_0013:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_35'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_36'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       174 (0xae)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  conv.r4
    IL_0012:  ldarg.2
    IL_0013:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0018:  conv.r4
    IL_0019:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0024:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0052:  callvirt   instance int32 Game.Terrain::GetHumidity(int32,
                                                                  int32)
    IL_0057:  pop
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_005e:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0063:  ldarg.2
    IL_0064:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_006f:  ldc.i4.1
    IL_0070:  sub
    IL_0071:  ldarg.2
    IL_0072:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0077:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_007c:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0081:  stloc.1
    IL_0082:  ldc.r4     40.
    IL_0087:  ble.un.s   IL_00a8

    IL_0089:  ldloc.0
    IL_008a:  ldc.i4.2
    IL_008b:  bge.s      IL_00a8

    IL_008d:  ldloc.1
    IL_008e:  ldc.i4.8
    IL_008f:  beq.s      IL_00a2

    IL_0091:  ldloc.1
    IL_0092:  ldc.i4.2
    IL_0093:  beq.s      IL_00a2

    IL_0095:  ldloc.1
    IL_0096:  ldc.i4.3
    IL_0097:  beq.s      IL_00a2

    IL_0099:  ldloc.1
    IL_009a:  ldc.i4.7
    IL_009b:  beq.s      IL_00a2

    IL_009d:  ldloc.1
    IL_009e:  ldc.i4.s   62
    IL_00a0:  bne.un.s   IL_00a8

    IL_00a2:  ldc.r4     2.5e-002
    IL_00a7:  ret

    IL_00a8:  ldc.r4     0.0
    IL_00ad:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_36'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_37'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Tiger_White"
    IL_0007:  ldarg.2
    IL_0008:  ldc.i4.1
    IL_0009:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_000e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_0013:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_37'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_38'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       140 (0x8c)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  conv.r4
    IL_0012:  ldarg.2
    IL_0013:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0018:  conv.r4
    IL_0019:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0024:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0052:  ldc.i4.1
    IL_0053:  sub
    IL_0054:  ldarg.2
    IL_0055:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_005a:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_005f:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0064:  stloc.1
    IL_0065:  ldc.r4     40.
    IL_006a:  ble.un.s   IL_0086

    IL_006c:  ldloc.0
    IL_006d:  ldc.i4.8
    IL_006e:  ble.s      IL_0086

    IL_0070:  ldloc.1
    IL_0071:  ldc.i4.8
    IL_0072:  beq.s      IL_0080

    IL_0074:  ldloc.1
    IL_0075:  ldc.i4.2
    IL_0076:  beq.s      IL_0080

    IL_0078:  ldloc.1
    IL_0079:  ldc.i4.3
    IL_007a:  beq.s      IL_0080

    IL_007c:  ldloc.1
    IL_007d:  ldc.i4.7
    IL_007e:  bne.un.s   IL_0086

    IL_0080:  ldc.r4     5.0000001e-002
    IL_0085:  ret

    IL_0086:  ldc.r4     0.0
    IL_008b:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_38'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_39'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Lion"
    IL_0007:  ldarg.2
    IL_0008:  ldc.i4.1
    IL_0009:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_000e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_0013:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_39'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_40'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       178 (0xb2)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  conv.r4
    IL_0012:  ldarg.2
    IL_0013:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0018:  conv.r4
    IL_0019:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0024:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0052:  callvirt   instance int32 Game.Terrain::GetHumidity(int32,
                                                                  int32)
    IL_0057:  stloc.1
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_005e:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0063:  ldarg.2
    IL_0064:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_006f:  ldc.i4.1
    IL_0070:  sub
    IL_0071:  ldarg.2
    IL_0072:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0077:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_007c:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0081:  stloc.2
    IL_0082:  ldc.r4     40.
    IL_0087:  ble.un.s   IL_00ac

    IL_0089:  ldloc.1
    IL_008a:  ldc.i4.8
    IL_008b:  ble.s      IL_00ac

    IL_008d:  ldloc.0
    IL_008e:  ldc.i4.8
    IL_008f:  ble.s      IL_00ac

    IL_0091:  ldloc.2
    IL_0092:  ldc.i4.8
    IL_0093:  beq.s      IL_00a6

    IL_0095:  ldloc.2
    IL_0096:  ldc.i4.2
    IL_0097:  beq.s      IL_00a6

    IL_0099:  ldloc.2
    IL_009a:  ldc.i4.3
    IL_009b:  beq.s      IL_00a6

    IL_009d:  ldloc.2
    IL_009e:  ldc.i4.7
    IL_009f:  beq.s      IL_00a6

    IL_00a1:  ldloc.2
    IL_00a2:  ldc.i4.s   12
    IL_00a4:  bne.un.s   IL_00ac

    IL_00a6:  ldc.r4     5.0000001e-002
    IL_00ab:  ret

    IL_00ac:  ldc.r4     0.0
    IL_00b1:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_40'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_41'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Jaguar"
    IL_0007:  ldarg.2
    IL_0008:  ldc.i4.1
    IL_0009:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_000e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_0013:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_41'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_42'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       174 (0xae)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  conv.r4
    IL_0012:  ldarg.2
    IL_0013:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0018:  conv.r4
    IL_0019:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0024:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0052:  callvirt   instance int32 Game.Terrain::GetHumidity(int32,
                                                                  int32)
    IL_0057:  pop
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_005e:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0063:  ldarg.2
    IL_0064:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_006f:  ldc.i4.1
    IL_0070:  sub
    IL_0071:  ldarg.2
    IL_0072:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0077:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_007c:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0081:  stloc.1
    IL_0082:  ldc.r4     40.
    IL_0087:  ble.un.s   IL_00a8

    IL_0089:  ldloc.0
    IL_008a:  ldc.i4.8
    IL_008b:  ble.s      IL_00a8

    IL_008d:  ldloc.1
    IL_008e:  ldc.i4.8
    IL_008f:  beq.s      IL_00a2

    IL_0091:  ldloc.1
    IL_0092:  ldc.i4.2
    IL_0093:  beq.s      IL_00a2

    IL_0095:  ldloc.1
    IL_0096:  ldc.i4.3
    IL_0097:  beq.s      IL_00a2

    IL_0099:  ldloc.1
    IL_009a:  ldc.i4.7
    IL_009b:  beq.s      IL_00a2

    IL_009d:  ldloc.1
    IL_009e:  ldc.i4.s   12
    IL_00a0:  bne.un.s   IL_00a8

    IL_00a2:  ldc.r4     5.0000001e-002
    IL_00a7:  ret

    IL_00a8:  ldc.r4     0.0
    IL_00ad:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_42'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_43'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Leopard"
    IL_0007:  ldarg.2
    IL_0008:  ldc.i4.1
    IL_0009:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_000e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_0013:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_43'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_44'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       169 (0xa9)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  conv.r4
    IL_0012:  ldarg.2
    IL_0013:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0018:  conv.r4
    IL_0019:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0024:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0052:  callvirt   instance int32 Game.Terrain::GetHumidity(int32,
                                                                  int32)
    IL_0057:  stloc.1
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_005e:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0063:  ldarg.2
    IL_0064:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_006f:  ldc.i4.1
    IL_0070:  sub
    IL_0071:  ldarg.2
    IL_0072:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0077:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_007c:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0081:  stloc.2
    IL_0082:  ldc.r4     20.
    IL_0087:  ble.un.s   IL_00a3

    IL_0089:  ldloc.0
    IL_008a:  ldc.i4.8
    IL_008b:  ble.s      IL_00a3

    IL_008d:  ldloc.1
    IL_008e:  ldc.i4.7
    IL_008f:  ble.s      IL_00a3

    IL_0091:  ldloc.2
    IL_0092:  ldc.i4.8
    IL_0093:  beq.s      IL_009d

    IL_0095:  ldloc.2
    IL_0096:  ldc.i4.2
    IL_0097:  beq.s      IL_009d

    IL_0099:  ldloc.2
    IL_009a:  ldc.i4.3
    IL_009b:  bne.un.s   IL_00a3

    IL_009d:  ldc.r4     5.0000001e-002
    IL_00a2:  ret

    IL_00a3:  ldc.r4     0.0
    IL_00a8:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_44'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_45'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Zebra"
    IL_0007:  ldarg.2
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_000e:  ldc.i4.1
    IL_000f:  ldc.i4.2
    IL_0010:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0015:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_001a:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_001f:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_45'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_46'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       136 (0x88)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  conv.r4
    IL_0012:  ldarg.2
    IL_0013:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0018:  conv.r4
    IL_0019:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0024:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0052:  ldc.i4.1
    IL_0053:  sub
    IL_0054:  ldarg.2
    IL_0055:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_005a:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_005f:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0064:  stloc.1
    IL_0065:  ldc.r4     20.
    IL_006a:  ble.un.s   IL_0082

    IL_006c:  ldloc.0
    IL_006d:  ldc.i4.8
    IL_006e:  ble.s      IL_0082

    IL_0070:  ldloc.1
    IL_0071:  ldc.i4.8
    IL_0072:  beq.s      IL_007c

    IL_0074:  ldloc.1
    IL_0075:  ldc.i4.2
    IL_0076:  beq.s      IL_007c

    IL_0078:  ldloc.1
    IL_0079:  ldc.i4.3
    IL_007a:  bne.un.s   IL_0082

    IL_007c:  ldc.r4     5.0000001e-002
    IL_0081:  ret

    IL_0082:  ldc.r4     0.0
    IL_0087:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_46'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_47'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Gnu"
    IL_0007:  ldarg.2
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_000e:  ldc.i4.1
    IL_000f:  ldc.i4.2
    IL_0010:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0015:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_001a:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_001f:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_47'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_48'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       102 (0x66)
    .maxstack  5
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  ldarg.2
    IL_0012:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0017:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_001c:  ldarg.0
    IL_001d:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0022:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0027:  ldarg.2
    IL_0028:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002d:  ldarg.2
    IL_002e:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0033:  ldc.i4.1
    IL_0034:  sub
    IL_0035:  ldarg.2
    IL_0036:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_003b:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0040:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0045:  stloc.0
    IL_0046:  ldc.i4.3
    IL_0047:  bge.s      IL_0060

    IL_0049:  ldloc.0
    IL_004a:  ldc.i4.8
    IL_004b:  beq.s      IL_005a

    IL_004d:  ldloc.0
    IL_004e:  ldc.i4.2
    IL_004f:  beq.s      IL_005a

    IL_0051:  ldloc.0
    IL_0052:  ldc.i4.3
    IL_0053:  beq.s      IL_005a

    IL_0055:  ldloc.0
    IL_0056:  ldc.i4.s   62
    IL_0058:  bne.un.s   IL_0060

    IL_005a:  ldc.r4     5.0000001e-002
    IL_005f:  ret

    IL_0060:  ldc.r4     0.0
    IL_0065:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_48'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_49'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Reindeer"
    IL_0007:  ldarg.2
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_000e:  ldc.i4.1
    IL_000f:  ldc.i4.3
    IL_0010:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0015:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_001a:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_001f:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_49'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_50'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       102 (0x66)
    .maxstack  5
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  ldarg.2
    IL_0012:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0017:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_001c:  ldarg.0
    IL_001d:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0022:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0027:  ldarg.2
    IL_0028:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002d:  ldarg.2
    IL_002e:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0033:  ldc.i4.1
    IL_0034:  sub
    IL_0035:  ldarg.2
    IL_0036:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_003b:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0040:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0045:  stloc.0
    IL_0046:  ldc.i4.7
    IL_0047:  bge.s      IL_0060

    IL_0049:  ldloc.0
    IL_004a:  ldc.i4.8
    IL_004b:  beq.s      IL_005a

    IL_004d:  ldloc.0
    IL_004e:  ldc.i4.2
    IL_004f:  beq.s      IL_005a

    IL_0051:  ldloc.0
    IL_0052:  ldc.i4.3
    IL_0053:  beq.s      IL_005a

    IL_0055:  ldloc.0
    IL_0056:  ldc.i4.s   62
    IL_0058:  bne.un.s   IL_0060

    IL_005a:  ldc.r4     0.1
    IL_005f:  ret

    IL_0060:  ldc.r4     0.0
    IL_0065:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_50'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_51'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Moose"
    IL_0007:  ldarg.2
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_000e:  ldc.i4.1
    IL_000f:  ldc.i4.1
    IL_0010:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0015:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_001a:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_001f:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_51'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_52'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       137 (0x89)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  ldarg.2
    IL_0012:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0017:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_001c:  ldarg.0
    IL_001d:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0022:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0027:  ldarg.2
    IL_0028:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002d:  ldarg.2
    IL_002e:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0033:  callvirt   instance int32 Game.Terrain::GetHumidity(int32,
                                                                  int32)
    IL_0038:  stloc.0
    IL_0039:  ldarg.0
    IL_003a:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_003f:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0044:  ldarg.2
    IL_0045:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004a:  ldarg.2
    IL_004b:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0050:  ldc.i4.1
    IL_0051:  sub
    IL_0052:  ldarg.2
    IL_0053:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0058:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_005d:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0062:  stloc.1
    IL_0063:  ldc.i4.s   10
    IL_0065:  bge.s      IL_0083

    IL_0067:  ldloc.0
    IL_0068:  ldc.i4.s   12
    IL_006a:  bge.s      IL_0083

    IL_006c:  ldloc.1
    IL_006d:  ldc.i4.8
    IL_006e:  beq.s      IL_007d

    IL_0070:  ldloc.1
    IL_0071:  ldc.i4.2
    IL_0072:  beq.s      IL_007d

    IL_0074:  ldloc.1
    IL_0075:  ldc.i4.3
    IL_0076:  beq.s      IL_007d

    IL_0078:  ldloc.1
    IL_0079:  ldc.i4.s   62
    IL_007b:  bne.un.s   IL_0083

    IL_007d:  ldc.r4     0.1
    IL_0082:  ret

    IL_0083:  ldc.r4     0.0
    IL_0088:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_52'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_53'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Bison"
    IL_0007:  ldarg.2
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_000e:  ldc.i4.1
    IL_000f:  ldc.i4.4
    IL_0010:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0015:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_001a:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_001f:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_53'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_54'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       179 (0xb3)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  conv.r4
    IL_0012:  ldarg.2
    IL_0013:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0018:  conv.r4
    IL_0019:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0024:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0052:  callvirt   instance int32 Game.Terrain::GetHumidity(int32,
                                                                  int32)
    IL_0057:  stloc.1
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_005e:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0063:  ldarg.2
    IL_0064:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_006f:  ldc.i4.1
    IL_0070:  sub
    IL_0071:  ldarg.2
    IL_0072:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0077:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_007c:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0081:  stloc.2
    IL_0082:  ldc.r4     20.
    IL_0087:  ble.un.s   IL_00ad

    IL_0089:  ldloc.0
    IL_008a:  ldc.i4.8
    IL_008b:  ble.s      IL_00ad

    IL_008d:  ldloc.1
    IL_008e:  ldc.i4.8
    IL_008f:  bge.s      IL_00ad

    IL_0091:  ldarg.2
    IL_0092:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0097:  ldc.i4.s   75
    IL_0099:  bge.s      IL_00ad

    IL_009b:  ldloc.2
    IL_009c:  ldc.i4.8
    IL_009d:  beq.s      IL_00a7

    IL_009f:  ldloc.2
    IL_00a0:  ldc.i4.2
    IL_00a1:  beq.s      IL_00a7

    IL_00a3:  ldloc.2
    IL_00a4:  ldc.i4.7
    IL_00a5:  bne.un.s   IL_00ad

    IL_00a7:  ldc.r4     5.0000001e-002
    IL_00ac:  ret

    IL_00ad:  ldc.r4     0.0
    IL_00b2:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_54'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_55'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Ostrich"
    IL_0007:  ldarg.2
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_000e:  ldc.i4.1
    IL_000f:  ldc.i4.2
    IL_0010:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0015:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_001a:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_001f:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_55'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_56'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       180 (0xb4)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  conv.r4
    IL_0012:  ldarg.2
    IL_0013:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0018:  conv.r4
    IL_0019:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0024:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0052:  callvirt   instance int32 Game.Terrain::GetHumidity(int32,
                                                                  int32)
    IL_0057:  stloc.1
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_005e:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0063:  ldarg.2
    IL_0064:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_006f:  ldc.i4.1
    IL_0070:  sub
    IL_0071:  ldarg.2
    IL_0072:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0077:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_007c:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0081:  stloc.2
    IL_0082:  ldc.r4     20.
    IL_0087:  ble.un.s   IL_00ae

    IL_0089:  ldloc.0
    IL_008a:  ldc.i4.8
    IL_008b:  ble.s      IL_00ae

    IL_008d:  ldloc.1
    IL_008e:  ldc.i4.s   12
    IL_0090:  bge.s      IL_00ae

    IL_0092:  ldarg.2
    IL_0093:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0098:  ldc.i4.s   75
    IL_009a:  bge.s      IL_00ae

    IL_009c:  ldloc.2
    IL_009d:  ldc.i4.8
    IL_009e:  beq.s      IL_00a8

    IL_00a0:  ldloc.2
    IL_00a1:  ldc.i4.2
    IL_00a2:  beq.s      IL_00a8

    IL_00a4:  ldloc.2
    IL_00a5:  ldc.i4.7
    IL_00a6:  bne.un.s   IL_00ae

    IL_00a8:  ldc.r4     5.0000001e-002
    IL_00ad:  ret

    IL_00ae:  ldc.r4     0.0
    IL_00b3:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_56'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_57'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Cassowary"
    IL_0007:  ldarg.2
    IL_0008:  ldc.i4.1
    IL_0009:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_000e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_0013:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_57'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_58'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       146 (0x92)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  conv.r4
    IL_0012:  ldarg.2
    IL_0013:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0018:  conv.r4
    IL_0019:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0024:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0052:  ldc.i4.1
    IL_0053:  sub
    IL_0054:  ldarg.2
    IL_0055:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_005a:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_005f:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0064:  stloc.1
    IL_0065:  ldc.r4     40.
    IL_006a:  ble.un.s   IL_008c

    IL_006c:  ldloc.0
    IL_006d:  ldc.i4.8
    IL_006e:  ble.s      IL_008c

    IL_0070:  ldarg.2
    IL_0071:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0076:  ldc.i4.s   75
    IL_0078:  bge.s      IL_008c

    IL_007a:  ldloc.1
    IL_007b:  ldc.i4.8
    IL_007c:  beq.s      IL_0086

    IL_007e:  ldloc.1
    IL_007f:  ldc.i4.2
    IL_0080:  beq.s      IL_0086

    IL_0082:  ldloc.1
    IL_0083:  ldc.i4.7
    IL_0084:  bne.un.s   IL_008c

    IL_0086:  ldc.r4     5.0000001e-002
    IL_008b:  ret

    IL_008c:  ldc.r4     0.0
    IL_0091:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_58'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_59'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Hyena"
    IL_0007:  ldarg.2
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_000e:  ldc.i4.1
    IL_000f:  ldc.i4.2
    IL_0010:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0015:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_001a:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_001f:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_59'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_60'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       80 (0x50)
    .maxstack  4
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  ldarg.2
    IL_0012:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0017:  ldc.i4.1
    IL_0018:  sub
    IL_0019:  ldarg.2
    IL_001a:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_001f:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0024:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0029:  stloc.0
    IL_002a:  ldloc.0
    IL_002b:  ldc.i4.3
    IL_002c:  beq.s      IL_0044

    IL_002e:  ldloc.0
    IL_002f:  ldc.i4.s   67
    IL_0031:  beq.s      IL_0044

    IL_0033:  ldloc.0
    IL_0034:  ldc.i4.4
    IL_0035:  beq.s      IL_0044

    IL_0037:  ldloc.0
    IL_0038:  ldc.i4.s   66
    IL_003a:  beq.s      IL_0044

    IL_003c:  ldloc.0
    IL_003d:  ldc.i4.2
    IL_003e:  beq.s      IL_0044

    IL_0040:  ldloc.0
    IL_0041:  ldc.i4.7
    IL_0042:  bne.un.s   IL_004a

    IL_0044:  ldc.r4     1.
    IL_0049:  ret

    IL_004a:  ldc.r4     0.0
    IL_004f:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_60'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_61'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       44 (0x2c)
    .maxstack  5
    .locals init (string V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_0006:  ldc.i4.0
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_000d:  brfalse.s  IL_0016

    IL_000f:  ldstr      "Bear_Brown"
    IL_0014:  br.s       IL_001b

    IL_0016:  ldstr      "Bear_Black"
    IL_001b:  stloc.0
    IL_001c:  ldarg.0
    IL_001d:  ldarg.1
    IL_001e:  ldloc.0
    IL_001f:  ldarg.2
    IL_0020:  ldc.i4.1
    IL_0021:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_0026:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_002b:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_61'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_62'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       80 (0x50)
    .maxstack  4
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  ldarg.2
    IL_0012:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0017:  ldc.i4.1
    IL_0018:  sub
    IL_0019:  ldarg.2
    IL_001a:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_001f:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0024:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0029:  stloc.0
    IL_002a:  ldloc.0
    IL_002b:  ldc.i4.3
    IL_002c:  beq.s      IL_0044

    IL_002e:  ldloc.0
    IL_002f:  ldc.i4.s   67
    IL_0031:  beq.s      IL_0044

    IL_0033:  ldloc.0
    IL_0034:  ldc.i4.4
    IL_0035:  beq.s      IL_0044

    IL_0037:  ldloc.0
    IL_0038:  ldc.i4.s   66
    IL_003a:  beq.s      IL_0044

    IL_003c:  ldloc.0
    IL_003d:  ldc.i4.2
    IL_003e:  beq.s      IL_0044

    IL_0040:  ldloc.0
    IL_0041:  ldc.i4.7
    IL_0042:  bne.un.s   IL_004a

    IL_0044:  ldc.r4     0.25
    IL_0049:  ret

    IL_004a:  ldc.r4     0.0
    IL_004f:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_62'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_63'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Tiger"
    IL_0007:  ldarg.2
    IL_0008:  ldc.i4.1
    IL_0009:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_000e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_0013:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_63'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_64'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       146 (0x92)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  ldarg.2
    IL_0012:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0017:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_001c:  stloc.0
    IL_001d:  ldarg.0
    IL_001e:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0023:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0028:  ldarg.2
    IL_0029:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002e:  ldarg.2
    IL_002f:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0034:  callvirt   instance int32 Game.Terrain::GetHumidity(int32,
                                                                  int32)
    IL_0039:  stloc.1
    IL_003a:  ldarg.0
    IL_003b:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0040:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0045:  ldarg.2
    IL_0046:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004b:  ldarg.2
    IL_004c:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0051:  ldc.i4.1
    IL_0052:  sub
    IL_0053:  ldarg.2
    IL_0054:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0059:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_005e:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0063:  stloc.2
    IL_0064:  ldloc.2
    IL_0065:  ldc.i4.3
    IL_0066:  beq.s      IL_007e

    IL_0068:  ldloc.2
    IL_0069:  ldc.i4.s   67
    IL_006b:  beq.s      IL_007e

    IL_006d:  ldloc.2
    IL_006e:  ldc.i4.4
    IL_006f:  beq.s      IL_007e

    IL_0071:  ldloc.2
    IL_0072:  ldc.i4.s   66
    IL_0074:  beq.s      IL_007e

    IL_0076:  ldloc.2
    IL_0077:  ldc.i4.2
    IL_0078:  beq.s      IL_007e

    IL_007a:  ldloc.2
    IL_007b:  ldc.i4.7
    IL_007c:  bne.un.s   IL_008c

    IL_007e:  ldloc.0
    IL_007f:  ldc.i4.8
    IL_0080:  ble.s      IL_008c

    IL_0082:  ldloc.1
    IL_0083:  ldc.i4.8
    IL_0084:  bge.s      IL_008c

    IL_0086:  ldc.r4     0.25
    IL_008b:  ret

    IL_008c:  ldc.r4     0.0
    IL_0091:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_64'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_65'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Lion"
    IL_0007:  ldarg.2
    IL_0008:  ldc.i4.1
    IL_0009:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_000e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_0013:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_65'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_66'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       80 (0x50)
    .maxstack  4
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  ldarg.2
    IL_0012:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0017:  ldc.i4.1
    IL_0018:  sub
    IL_0019:  ldarg.2
    IL_001a:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_001f:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0024:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0029:  stloc.0
    IL_002a:  ldloc.0
    IL_002b:  ldc.i4.3
    IL_002c:  beq.s      IL_0044

    IL_002e:  ldloc.0
    IL_002f:  ldc.i4.s   67
    IL_0031:  beq.s      IL_0044

    IL_0033:  ldloc.0
    IL_0034:  ldc.i4.4
    IL_0035:  beq.s      IL_0044

    IL_0037:  ldloc.0
    IL_0038:  ldc.i4.s   66
    IL_003a:  beq.s      IL_0044

    IL_003c:  ldloc.0
    IL_003d:  ldc.i4.2
    IL_003e:  beq.s      IL_0044

    IL_0040:  ldloc.0
    IL_0041:  ldc.i4.7
    IL_0042:  bne.un.s   IL_004a

    IL_0044:  ldc.r4     0.5
    IL_0049:  ret

    IL_004a:  ldc.r4     0.0
    IL_004f:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_66'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_67'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Jaguar"
    IL_0007:  ldarg.2
    IL_0008:  ldc.i4.1
    IL_0009:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_000e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_0013:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_67'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_68'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       80 (0x50)
    .maxstack  4
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  ldarg.2
    IL_0012:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0017:  ldc.i4.1
    IL_0018:  sub
    IL_0019:  ldarg.2
    IL_001a:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_001f:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0024:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0029:  stloc.0
    IL_002a:  ldloc.0
    IL_002b:  ldc.i4.3
    IL_002c:  beq.s      IL_0044

    IL_002e:  ldloc.0
    IL_002f:  ldc.i4.s   67
    IL_0031:  beq.s      IL_0044

    IL_0033:  ldloc.0
    IL_0034:  ldc.i4.4
    IL_0035:  beq.s      IL_0044

    IL_0037:  ldloc.0
    IL_0038:  ldc.i4.s   66
    IL_003a:  beq.s      IL_0044

    IL_003c:  ldloc.0
    IL_003d:  ldc.i4.2
    IL_003e:  beq.s      IL_0044

    IL_0040:  ldloc.0
    IL_0041:  ldc.i4.7
    IL_0042:  bne.un.s   IL_004a

    IL_0044:  ldc.r4     0.25
    IL_0049:  ret

    IL_004a:  ldc.r4     0.0
    IL_004f:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_68'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_69'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Leopard"
    IL_0007:  ldarg.2
    IL_0008:  ldc.i4.1
    IL_0009:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_000e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_0013:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_69'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_70'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       113 (0x71)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  ldarg.2
    IL_0012:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0017:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_001c:  stloc.0
    IL_001d:  ldarg.0
    IL_001e:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0023:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0028:  ldarg.2
    IL_0029:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002e:  ldarg.2
    IL_002f:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0034:  ldc.i4.1
    IL_0035:  sub
    IL_0036:  ldarg.2
    IL_0037:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_003c:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0041:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0046:  stloc.1
    IL_0047:  ldloc.1
    IL_0048:  ldc.i4.3
    IL_0049:  beq.s      IL_0061

    IL_004b:  ldloc.1
    IL_004c:  ldc.i4.s   67
    IL_004e:  beq.s      IL_0061

    IL_0050:  ldloc.1
    IL_0051:  ldc.i4.4
    IL_0052:  beq.s      IL_0061

    IL_0054:  ldloc.1
    IL_0055:  ldc.i4.s   66
    IL_0057:  beq.s      IL_0061

    IL_0059:  ldloc.1
    IL_005a:  ldc.i4.2
    IL_005b:  beq.s      IL_0061

    IL_005d:  ldloc.1
    IL_005e:  ldc.i4.7
    IL_005f:  bne.un.s   IL_006b

    IL_0061:  ldloc.0
    IL_0062:  ldc.i4.8
    IL_0063:  ble.s      IL_006b

    IL_0065:  ldc.r4     1.
    IL_006a:  ret

    IL_006b:  ldc.r4     0.0
    IL_0070:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_70'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_71'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Hyena"
    IL_0007:  ldarg.2
    IL_0008:  ldc.i4.1
    IL_0009:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_000e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_0013:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_71'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_72'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       49 (0x31)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  conv.r4
    IL_0012:  ldarg.2
    IL_0013:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0018:  conv.r4
    IL_0019:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_001e:  ldc.r4     -2.
    IL_0023:  blt.s      IL_002b

    IL_0025:  ldc.r4     0.0
    IL_002a:  ret

    IL_002b:  ldc.r4     1.
    IL_0030:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_72'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_73'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       22 (0x16)
    .maxstack  5
    .locals init (string V_0)
    IL_0000:  ldstr      "Shark_Bull"
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  ldloc.0
    IL_0009:  ldarg.2
    IL_000a:  ldc.i4.1
    IL_000b:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_0010:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_0015:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_73'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_74'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       49 (0x31)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  conv.r4
    IL_0012:  ldarg.2
    IL_0013:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0018:  conv.r4
    IL_0019:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_001e:  ldc.r4     -5.
    IL_0023:  blt.s      IL_002b

    IL_0025:  ldc.r4     0.0
    IL_002a:  ret

    IL_002b:  ldc.r4     0.5
    IL_0030:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_74'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_75'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       22 (0x16)
    .maxstack  5
    .locals init (string V_0)
    IL_0000:  ldstr      "Shark_Tiger"
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  ldloc.0
    IL_0009:  ldarg.2
    IL_000a:  ldc.i4.1
    IL_000b:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_0010:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_0015:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_75'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_76'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       49 (0x31)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  conv.r4
    IL_0012:  ldarg.2
    IL_0013:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0018:  conv.r4
    IL_0019:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_001e:  ldc.r4     -2.
    IL_0023:  blt.s      IL_002b

    IL_0025:  ldc.r4     0.0
    IL_002a:  ret

    IL_002b:  ldc.r4     0.75
    IL_0030:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_76'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_77'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       22 (0x16)
    .maxstack  5
    .locals init (string V_0)
    IL_0000:  ldstr      "Barracuda"
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  ldloc.0
    IL_0009:  ldarg.2
    IL_000a:  ldc.i4.1
    IL_000b:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_0010:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_0015:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_77'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_78'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       49 (0x31)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  conv.r4
    IL_0012:  ldarg.2
    IL_0013:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0018:  conv.r4
    IL_0019:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_001e:  ldc.r4     -2.
    IL_0023:  blt.s      IL_002b

    IL_0025:  ldc.r4     0.0
    IL_002a:  ret

    IL_002b:  ldc.r4     1.
    IL_0030:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_78'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_79'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       22 (0x16)
    .maxstack  5
    .locals init (string V_0)
    IL_0000:  ldstr      "Bass_Sea"
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  ldloc.0
    IL_0009:  ldarg.2
    IL_000a:  ldc.i4.1
    IL_000b:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_0010:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_0015:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_79'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_80'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       82 (0x52)
    .maxstack  4
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  conv.r4
    IL_0012:  ldarg.2
    IL_0013:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0018:  conv.r4
    IL_0019:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0024:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_003a:  stloc.0
    IL_003b:  ldc.r4     10.
    IL_0040:  ble.un.s   IL_004c

    IL_0042:  ldloc.0
    IL_0043:  ldc.i4.4
    IL_0044:  blt.s      IL_004c

    IL_0046:  ldc.r4     1.
    IL_004b:  ret

    IL_004c:  ldc.r4     0.0
    IL_0051:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_80'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_81'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       34 (0x22)
    .maxstack  7
    .locals init (string V_0)
    IL_0000:  ldstr      "Bass_Freshwater"
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  ldloc.0
    IL_0009:  ldarg.2
    IL_000a:  ldarg.0
    IL_000b:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_0010:  ldc.i4.1
    IL_0011:  ldc.i4.2
    IL_0012:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0017:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_001c:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_0021:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_81'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_82'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       49 (0x31)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  conv.r4
    IL_0012:  ldarg.2
    IL_0013:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0018:  conv.r4
    IL_0019:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_001e:  ldc.r4     10.
    IL_0023:  blt.s      IL_002b

    IL_0025:  ldc.r4     1.
    IL_002a:  ret

    IL_002b:  ldc.r4     0.5
    IL_0030:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_82'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_83'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       217 (0xd9)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             string V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldc.i4.0
    IL_0003:  stloc.1
    IL_0004:  ldarg.2
    IL_0005:  ldfld      int32 [Engine]Engine.Point3::X
    IL_000a:  ldc.i4.2
    IL_000b:  sub
    IL_000c:  stloc.3
    IL_000d:  br         IL_00aa

    IL_0012:  ldarg.2
    IL_0013:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0018:  ldc.i4.2
    IL_0019:  sub
    IL_001a:  stloc.s    V_4
    IL_001c:  br.s       IL_0097

    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0024:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0035:  ldarg.2
    IL_0036:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_003b:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_0040:  ldc.i4.s   18
    IL_0042:  bne.un.s   IL_0091

    IL_0044:  ldarg.2
    IL_0045:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_004a:  ldc.i4.1
    IL_004b:  sub
    IL_004c:  stloc.s    V_5
    IL_004e:  br.s       IL_008c

    IL_0050:  ldarg.0
    IL_0051:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0056:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_005b:  ldarg.2
    IL_005c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0061:  ldloc.s    V_5
    IL_0063:  ldarg.2
    IL_0064:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0069:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_006e:  stloc.s    V_6
    IL_0070:  ldloc.s    V_6
    IL_0072:  ldc.i4.2
    IL_0073:  bne.un.s   IL_007b

    IL_0075:  ldloc.0
    IL_0076:  ldc.i4.1
    IL_0077:  add
    IL_0078:  stloc.0
    IL_0079:  br.s       IL_0091

    IL_007b:  ldloc.s    V_6
    IL_007d:  ldc.i4.7
    IL_007e:  bne.un.s   IL_0086

    IL_0080:  ldloc.1
    IL_0081:  ldc.i4.1
    IL_0082:  add
    IL_0083:  stloc.1
    IL_0084:  br.s       IL_0091

    IL_0086:  ldloc.s    V_5
    IL_0088:  ldc.i4.1
    IL_0089:  sub
    IL_008a:  stloc.s    V_5
    IL_008c:  ldloc.s    V_5
    IL_008e:  ldc.i4.0
    IL_008f:  bgt.s      IL_0050

    IL_0091:  ldloc.s    V_4
    IL_0093:  ldc.i4.1
    IL_0094:  add
    IL_0095:  stloc.s    V_4
    IL_0097:  ldloc.s    V_4
    IL_0099:  ldarg.2
    IL_009a:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_009f:  ldc.i4.2
    IL_00a0:  add
    IL_00a1:  ble        IL_001e

    IL_00a6:  ldloc.3
    IL_00a7:  ldc.i4.1
    IL_00a8:  add
    IL_00a9:  stloc.3
    IL_00aa:  ldloc.3
    IL_00ab:  ldarg.2
    IL_00ac:  ldfld      int32 [Engine]Engine.Point3::X
    IL_00b1:  ldc.i4.2
    IL_00b2:  add
    IL_00b3:  ble        IL_0012

    IL_00b8:  ldloc.0
    IL_00b9:  ldloc.1
    IL_00ba:  bge.s      IL_00c3

    IL_00bc:  ldstr      "Ray_Yellow"
    IL_00c1:  br.s       IL_00c8

    IL_00c3:  ldstr      "Ray_Brown"
    IL_00c8:  stloc.2
    IL_00c9:  ldarg.0
    IL_00ca:  ldarg.1
    IL_00cb:  ldloc.2
    IL_00cc:  ldarg.2
    IL_00cd:  ldc.i4.1
    IL_00ce:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_00d3:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_00d8:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_83'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_84'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       115 (0x73)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  conv.r4
    IL_0012:  ldarg.2
    IL_0013:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0018:  conv.r4
    IL_0019:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0024:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.Terrain::GetHumidity(int32,
                                                                  int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0052:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_0057:  stloc.1
    IL_0058:  ldc.r4     10.
    IL_005d:  ble.un.s   IL_006d

    IL_005f:  ldloc.0
    IL_0060:  ldc.i4.4
    IL_0061:  blt.s      IL_006d

    IL_0063:  ldloc.1
    IL_0064:  ldc.i4.7
    IL_0065:  blt.s      IL_006d

    IL_0067:  ldc.r4     1.5
    IL_006c:  ret

    IL_006d:  ldc.r4     0.0
    IL_0072:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_84'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_85'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       34 (0x22)
    .maxstack  7
    .locals init (string V_0)
    IL_0000:  ldstr      "Piranha"
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  ldloc.0
    IL_0009:  ldarg.2
    IL_000a:  ldarg.0
    IL_000b:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_0010:  ldc.i4.2
    IL_0011:  ldc.i4.4
    IL_0012:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0017:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_001c:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_0021:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_85'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_86'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       65 (0x41)
    .maxstack  3
    .locals init (float32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  conv.r4
    IL_0012:  ldarg.2
    IL_0013:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0018:  conv.r4
    IL_0019:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_001e:  stloc.0
    IL_001f:  ldloc.0
    IL_0020:  ldc.r4     -100.
    IL_0025:  bge.un.s   IL_002d

    IL_0027:  ldc.r4     5.0000001e-002
    IL_002c:  ret

    IL_002d:  ldloc.0
    IL_002e:  ldc.r4     -20.
    IL_0033:  bge.un.s   IL_003b

    IL_0035:  ldc.r4     9.9999998e-003
    IL_003a:  ret

    IL_003b:  ldc.r4     0.0
    IL_0040:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_86'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_87'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       22 (0x16)
    .maxstack  5
    .locals init (string V_0)
    IL_0000:  ldstr      "Orca"
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  ldloc.0
    IL_0009:  ldarg.2
    IL_000a:  ldc.i4.1
    IL_000b:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_0010:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_0015:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_87'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_88'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       65 (0x41)
    .maxstack  3
    .locals init (float32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  conv.r4
    IL_0012:  ldarg.2
    IL_0013:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0018:  conv.r4
    IL_0019:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_001e:  stloc.0
    IL_001f:  ldloc.0
    IL_0020:  ldc.r4     -100.
    IL_0025:  bge.un.s   IL_002d

    IL_0027:  ldc.r4     5.0000001e-002
    IL_002c:  ret

    IL_002d:  ldloc.0
    IL_002e:  ldc.r4     -20.
    IL_0033:  bge.un.s   IL_003b

    IL_0035:  ldc.r4     9.9999998e-003
    IL_003a:  ret

    IL_003b:  ldc.r4     0.0
    IL_0040:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_88'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_89'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       22 (0x16)
    .maxstack  5
    .locals init (string V_0)
    IL_0000:  ldstr      "Beluga"
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  ldloc.0
    IL_0009:  ldarg.2
    IL_000a:  ldc.i4.1
    IL_000b:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_0010:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_0015:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_89'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_90'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       242 (0xf2)
    .maxstack  5
    .locals init (int32 V_0,
             float32 V_1,
             int32 V_2,
             int32 V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemSky Game.SubsystemCreatureSpawn::m_subsystemSky
    IL_0006:  callvirt   instance float32 Game.SubsystemSky::get_SkyLightIntensity()
    IL_000b:  ldc.r4     0.1
    IL_0010:  bge.un     IL_00ec

    IL_0015:  ldarg.0
    IL_0016:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_001b:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_0020:  ldarg.2
    IL_0021:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0026:  conv.r4
    IL_0027:  ldarg.2
    IL_0028:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_002d:  conv.r4
    IL_002e:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_0033:  ldarg.0
    IL_0034:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0039:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_003e:  ldarg.2
    IL_003f:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0044:  ldarg.2
    IL_0045:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_004a:  callvirt   instance int32 Game.Terrain::GetHumidity(int32,
                                                                  int32)
    IL_004f:  stloc.0
    IL_0050:  ldarg.0
    IL_0051:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0056:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_005b:  ldarg.2
    IL_005c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0061:  ldarg.2
    IL_0062:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0067:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_006c:  conv.r4
    IL_006d:  stloc.1
    IL_006e:  ldarg.0
    IL_006f:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0074:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0079:  ldarg.2
    IL_007a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_007f:  ldarg.2
    IL_0080:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0085:  ldc.i4.1
    IL_0086:  sub
    IL_0087:  ldarg.2
    IL_0088:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_008d:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0092:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0097:  stloc.2
    IL_0098:  ldarg.0
    IL_0099:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_009e:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00a3:  ldarg.2
    IL_00a4:  ldfld      int32 [Engine]Engine.Point3::X
    IL_00a9:  ldarg.2
    IL_00aa:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00af:  ldc.i4.1
    IL_00b0:  add
    IL_00b1:  ldarg.2
    IL_00b2:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_00b7:  callvirt   instance int32 Game.Terrain::GetCellLightFast(int32,
                                                                       int32,
                                                                       int32)
    IL_00bc:  stloc.3
    IL_00bd:  ldc.r4     20.
    IL_00c2:  ble.un.s   IL_00c8

    IL_00c4:  ldloc.0
    IL_00c5:  ldc.i4.8
    IL_00c6:  bge.s      IL_00de

    IL_00c8:  ldloc.1
    IL_00c9:  ldc.r4     8.
    IL_00ce:  bgt.un.s   IL_00ec

    IL_00d0:  ldarg.2
    IL_00d1:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00d6:  ldc.i4.s   80
    IL_00d8:  bge.s      IL_00ec

    IL_00da:  ldloc.3
    IL_00db:  ldc.i4.7
    IL_00dc:  bgt.s      IL_00ec

    IL_00de:  ldloc.2
    IL_00df:  ldc.i4.8
    IL_00e0:  beq.s      IL_00e6

    IL_00e2:  ldloc.2
    IL_00e3:  ldc.i4.2
    IL_00e4:  bne.un.s   IL_00ec

    IL_00e6:  ldc.r4     2.
    IL_00eb:  ret

    IL_00ec:  ldc.r4     0.0
    IL_00f1:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_90'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_91'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Wolf_Gray"
    IL_0007:  ldarg.2
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_000e:  ldc.i4.1
    IL_000f:  ldc.i4.3
    IL_0010:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0015:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_001a:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_001f:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_91'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_92'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       243 (0xf3)
    .maxstack  5
    .locals init (float32 V_0,
             float32 V_1,
             int32 V_2,
             int32 V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemSky Game.SubsystemCreatureSpawn::m_subsystemSky
    IL_0006:  callvirt   instance float32 Game.SubsystemSky::get_SkyLightIntensity()
    IL_000b:  ldc.r4     0.1
    IL_0010:  bge.un     IL_00ed

    IL_0015:  ldarg.0
    IL_0016:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_001b:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_0020:  ldarg.2
    IL_0021:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0026:  conv.r4
    IL_0027:  ldarg.2
    IL_0028:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_002d:  conv.r4
    IL_002e:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_0033:  ldarg.0
    IL_0034:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0039:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_003e:  ldarg.2
    IL_003f:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0044:  ldarg.2
    IL_0045:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_004a:  callvirt   instance int32 Game.Terrain::GetHumidity(int32,
                                                                  int32)
    IL_004f:  conv.r4
    IL_0050:  stloc.0
    IL_0051:  ldarg.0
    IL_0052:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0057:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_005c:  ldarg.2
    IL_005d:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0062:  ldarg.2
    IL_0063:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0068:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_006d:  conv.r4
    IL_006e:  stloc.1
    IL_006f:  ldarg.0
    IL_0070:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0075:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_007a:  ldarg.2
    IL_007b:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0080:  ldarg.2
    IL_0081:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0086:  ldc.i4.1
    IL_0087:  sub
    IL_0088:  ldarg.2
    IL_0089:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_008e:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0093:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0098:  stloc.2
    IL_0099:  ldarg.0
    IL_009a:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_009f:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00a4:  ldarg.2
    IL_00a5:  ldfld      int32 [Engine]Engine.Point3::X
    IL_00aa:  ldarg.2
    IL_00ab:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00b0:  ldc.i4.1
    IL_00b1:  add
    IL_00b2:  ldarg.2
    IL_00b3:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_00b8:  callvirt   instance int32 Game.Terrain::GetCellLightFast(int32,
                                                                       int32,
                                                                       int32)
    IL_00bd:  stloc.3
    IL_00be:  ldc.r4     20.
    IL_00c3:  ble.un.s   IL_00ed

    IL_00c5:  ldloc.1
    IL_00c6:  ldc.r4     8.
    IL_00cb:  ble.un.s   IL_00ed

    IL_00cd:  ldloc.0
    IL_00ce:  ldc.r4     8.
    IL_00d3:  bge.un.s   IL_00ed

    IL_00d5:  ldarg.2
    IL_00d6:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00db:  ldc.i4.s   80
    IL_00dd:  bge.s      IL_00ed

    IL_00df:  ldloc.3
    IL_00e0:  ldc.i4.7
    IL_00e1:  bgt.s      IL_00ed

    IL_00e3:  ldloc.2
    IL_00e4:  ldc.i4.7
    IL_00e5:  bne.un.s   IL_00ed

    IL_00e7:  ldc.r4     2.
    IL_00ec:  ret

    IL_00ed:  ldc.r4     0.0
    IL_00f2:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_92'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_93'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Wolf_Coyote"
    IL_0007:  ldarg.2
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_000e:  ldc.i4.1
    IL_000f:  ldc.i4.3
    IL_0010:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0015:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_001a:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_001f:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_93'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_94'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       231 (0xe7)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemSky Game.SubsystemCreatureSpawn::m_subsystemSky
    IL_0006:  callvirt   instance float32 Game.SubsystemSky::get_SkyLightIntensity()
    IL_000b:  ldc.r4     0.1
    IL_0010:  bge.un     IL_00e1

    IL_0015:  ldarg.0
    IL_0016:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_001b:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_0020:  ldarg.2
    IL_0021:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0026:  conv.r4
    IL_0027:  ldarg.2
    IL_0028:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_002d:  conv.r4
    IL_002e:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_0033:  ldarg.0
    IL_0034:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0039:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_003e:  ldarg.2
    IL_003f:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0044:  ldarg.2
    IL_0045:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_004a:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_004f:  stloc.0
    IL_0050:  ldarg.0
    IL_0051:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0056:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_005b:  ldarg.2
    IL_005c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0061:  ldarg.2
    IL_0062:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0067:  callvirt   instance int32 Game.Terrain::GetHumidity(int32,
                                                                  int32)
    IL_006c:  stloc.1
    IL_006d:  ldarg.0
    IL_006e:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0073:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0078:  ldarg.2
    IL_0079:  ldfld      int32 [Engine]Engine.Point3::X
    IL_007e:  ldarg.2
    IL_007f:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0084:  ldc.i4.1
    IL_0085:  sub
    IL_0086:  ldarg.2
    IL_0087:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_008c:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0091:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0096:  stloc.2
    IL_0097:  ldarg.0
    IL_0098:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_009d:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00a2:  ldarg.2
    IL_00a3:  ldfld      int32 [Engine]Engine.Point3::X
    IL_00a8:  ldarg.2
    IL_00a9:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00ae:  ldc.i4.1
    IL_00af:  add
    IL_00b0:  ldarg.2
    IL_00b1:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_00b6:  callvirt   instance int32 Game.Terrain::GetCellLightFast(int32,
                                                                       int32,
                                                                       int32)
    IL_00bb:  stloc.3
    IL_00bc:  ldc.r4     20.
    IL_00c1:  ble.un.s   IL_00e1

    IL_00c3:  ldloc.1
    IL_00c4:  ldc.i4.4
    IL_00c5:  blt.s      IL_00e1

    IL_00c7:  ldloc.0
    IL_00c8:  ldc.i4.8
    IL_00c9:  blt.s      IL_00e1

    IL_00cb:  ldloc.3
    IL_00cc:  ldc.i4.7
    IL_00cd:  bgt.s      IL_00e1

    IL_00cf:  ldloc.2
    IL_00d0:  ldc.i4.8
    IL_00d1:  beq.s      IL_00db

    IL_00d3:  ldloc.2
    IL_00d4:  ldc.i4.2
    IL_00d5:  beq.s      IL_00db

    IL_00d7:  ldloc.2
    IL_00d8:  ldc.i4.3
    IL_00d9:  bne.un.s   IL_00e1

    IL_00db:  ldc.r4     0.5
    IL_00e0:  ret

    IL_00e1:  ldc.r4     0.0
    IL_00e6:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_94'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_95'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Bear_Brown"
    IL_0007:  ldarg.2
    IL_0008:  ldc.i4.1
    IL_0009:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_000e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_0013:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_95'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_96'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       227 (0xe3)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemSky Game.SubsystemCreatureSpawn::m_subsystemSky
    IL_0006:  callvirt   instance float32 Game.SubsystemSky::get_SkyLightIntensity()
    IL_000b:  ldc.r4     0.1
    IL_0010:  bge.un     IL_00dd

    IL_0015:  ldarg.0
    IL_0016:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_001b:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_0020:  ldarg.2
    IL_0021:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0026:  conv.r4
    IL_0027:  ldarg.2
    IL_0028:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_002d:  conv.r4
    IL_002e:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_0033:  ldarg.0
    IL_0034:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0039:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_003e:  ldarg.2
    IL_003f:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0044:  ldarg.2
    IL_0045:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_004a:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_004f:  stloc.0
    IL_0050:  ldarg.0
    IL_0051:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0056:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_005b:  ldarg.2
    IL_005c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0061:  ldarg.2
    IL_0062:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0067:  callvirt   instance int32 Game.Terrain::GetHumidity(int32,
                                                                  int32)
    IL_006c:  pop
    IL_006d:  ldarg.0
    IL_006e:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0073:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0078:  ldarg.2
    IL_0079:  ldfld      int32 [Engine]Engine.Point3::X
    IL_007e:  ldarg.2
    IL_007f:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0084:  ldc.i4.1
    IL_0085:  sub
    IL_0086:  ldarg.2
    IL_0087:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_008c:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0091:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0096:  stloc.1
    IL_0097:  ldarg.0
    IL_0098:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_009d:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00a2:  ldarg.2
    IL_00a3:  ldfld      int32 [Engine]Engine.Point3::X
    IL_00a8:  ldarg.2
    IL_00a9:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00ae:  ldc.i4.1
    IL_00af:  add
    IL_00b0:  ldarg.2
    IL_00b1:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_00b6:  callvirt   instance int32 Game.Terrain::GetCellLightFast(int32,
                                                                       int32,
                                                                       int32)
    IL_00bb:  stloc.2
    IL_00bc:  ldc.r4     20.
    IL_00c1:  ble.un.s   IL_00dd

    IL_00c3:  ldloc.0
    IL_00c4:  ldc.i4.8
    IL_00c5:  bge.s      IL_00dd

    IL_00c7:  ldloc.2
    IL_00c8:  ldc.i4.7
    IL_00c9:  bgt.s      IL_00dd

    IL_00cb:  ldloc.1
    IL_00cc:  ldc.i4.8
    IL_00cd:  beq.s      IL_00d7

    IL_00cf:  ldloc.1
    IL_00d0:  ldc.i4.2
    IL_00d1:  beq.s      IL_00d7

    IL_00d3:  ldloc.1
    IL_00d4:  ldc.i4.3
    IL_00d5:  bne.un.s   IL_00dd

    IL_00d7:  ldc.r4     0.5
    IL_00dc:  ret

    IL_00dd:  ldc.r4     0.0
    IL_00e2:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_96'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_97'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Bear_Black"
    IL_0007:  ldarg.2
    IL_0008:  ldc.i4.1
    IL_0009:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_000e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_0013:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_97'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_98'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       191 (0xbf)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemSky Game.SubsystemCreatureSpawn::m_subsystemSky
    IL_0006:  callvirt   instance float32 Game.SubsystemSky::get_SkyLightIntensity()
    IL_000b:  ldc.r4     0.1
    IL_0010:  bge.un     IL_00b9

    IL_0015:  ldarg.0
    IL_0016:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_001b:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_0020:  ldarg.2
    IL_0021:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0026:  conv.r4
    IL_0027:  ldarg.2
    IL_0028:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_002d:  conv.r4
    IL_002e:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_0033:  ldarg.0
    IL_0034:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0039:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_003e:  ldarg.2
    IL_003f:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0044:  ldarg.2
    IL_0045:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_004a:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_004f:  stloc.0
    IL_0050:  ldarg.0
    IL_0051:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0056:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_005b:  ldarg.2
    IL_005c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0061:  ldarg.2
    IL_0062:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0067:  ldc.i4.1
    IL_0068:  sub
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_006f:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0074:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0079:  stloc.1
    IL_007a:  ldarg.0
    IL_007b:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0080:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0085:  ldarg.2
    IL_0086:  ldfld      int32 [Engine]Engine.Point3::X
    IL_008b:  ldarg.2
    IL_008c:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0091:  ldc.i4.1
    IL_0092:  add
    IL_0093:  ldarg.2
    IL_0094:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0099:  callvirt   instance int32 Game.Terrain::GetCellLightFast(int32,
                                                                       int32,
                                                                       int32)
    IL_009e:  stloc.2
    IL_009f:  ldc.r4     -40.
    IL_00a4:  ble.un.s   IL_00b9

    IL_00a6:  ldloc.0
    IL_00a7:  ldc.i4.8
    IL_00a8:  bge.s      IL_00b9

    IL_00aa:  ldloc.2
    IL_00ab:  ldc.i4.7
    IL_00ac:  bgt.s      IL_00b9

    IL_00ae:  ldloc.1
    IL_00af:  ldc.i4.s   62
    IL_00b1:  bne.un.s   IL_00b9

    IL_00b3:  ldc.r4     0.25
    IL_00b8:  ret

    IL_00b9:  ldc.r4     0.0
    IL_00be:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_98'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_99'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Bear_Black"
    IL_0007:  ldarg.2
    IL_0008:  ldc.i4.1
    IL_0009:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_000e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_0013:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_99'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_100'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                               valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       198 (0xc6)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemSky Game.SubsystemCreatureSpawn::m_subsystemSky
    IL_0006:  callvirt   instance float32 Game.SubsystemSky::get_SkyLightIntensity()
    IL_000b:  ldc.r4     0.1
    IL_0010:  bge.un     IL_00c0

    IL_0015:  ldarg.0
    IL_0016:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_001b:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_0020:  ldarg.2
    IL_0021:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0026:  conv.r4
    IL_0027:  ldarg.2
    IL_0028:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_002d:  conv.r4
    IL_002e:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_0033:  ldarg.0
    IL_0034:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0039:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_003e:  ldarg.2
    IL_003f:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0044:  ldarg.2
    IL_0045:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_004a:  callvirt   instance int32 Game.Terrain::GetHumidity(int32,
                                                                  int32)
    IL_004f:  stloc.0
    IL_0050:  ldarg.0
    IL_0051:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0056:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_005b:  ldarg.2
    IL_005c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0061:  ldarg.2
    IL_0062:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0067:  ldc.i4.1
    IL_0068:  sub
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_006f:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0074:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0079:  stloc.1
    IL_007a:  ldarg.0
    IL_007b:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0080:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0085:  ldarg.2
    IL_0086:  ldfld      int32 [Engine]Engine.Point3::X
    IL_008b:  ldarg.2
    IL_008c:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0091:  ldc.i4.1
    IL_0092:  add
    IL_0093:  ldarg.2
    IL_0094:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0099:  callvirt   instance int32 Game.Terrain::GetCellLightFast(int32,
                                                                       int32,
                                                                       int32)
    IL_009e:  stloc.2
    IL_009f:  ldc.r4     20.
    IL_00a4:  ble.un.s   IL_00c0

    IL_00a6:  ldloc.0
    IL_00a7:  ldc.i4.8
    IL_00a8:  ble.s      IL_00c0

    IL_00aa:  ldloc.2
    IL_00ab:  ldc.i4.7
    IL_00ac:  bgt.s      IL_00c0

    IL_00ae:  ldloc.1
    IL_00af:  ldc.i4.8
    IL_00b0:  beq.s      IL_00ba

    IL_00b2:  ldloc.1
    IL_00b3:  ldc.i4.2
    IL_00b4:  beq.s      IL_00ba

    IL_00b6:  ldloc.1
    IL_00b7:  ldc.i4.3
    IL_00b8:  bne.un.s   IL_00c0

    IL_00ba:  ldc.r4     5.0000001e-002
    IL_00bf:  ret

    IL_00c0:  ldc.r4     0.0
    IL_00c5:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_100'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_101'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                               valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Tiger"
    IL_0007:  ldarg.2
    IL_0008:  ldc.i4.1
    IL_0009:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_000e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_0013:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_101'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_102'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                               valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       202 (0xca)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemSky Game.SubsystemCreatureSpawn::m_subsystemSky
    IL_0006:  callvirt   instance float32 Game.SubsystemSky::get_SkyLightIntensity()
    IL_000b:  ldc.r4     0.1
    IL_0010:  bge.un     IL_00c4

    IL_0015:  ldarg.0
    IL_0016:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_001b:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_0020:  ldarg.2
    IL_0021:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0026:  conv.r4
    IL_0027:  ldarg.2
    IL_0028:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_002d:  conv.r4
    IL_002e:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_0033:  ldarg.0
    IL_0034:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0039:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_003e:  ldarg.2
    IL_003f:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0044:  ldarg.2
    IL_0045:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_004a:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_004f:  stloc.0
    IL_0050:  ldarg.0
    IL_0051:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0056:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_005b:  ldarg.2
    IL_005c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0061:  ldarg.2
    IL_0062:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0067:  ldc.i4.1
    IL_0068:  sub
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_006f:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0074:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0079:  stloc.1
    IL_007a:  ldarg.0
    IL_007b:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0080:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0085:  ldarg.2
    IL_0086:  ldfld      int32 [Engine]Engine.Point3::X
    IL_008b:  ldarg.2
    IL_008c:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0091:  ldc.i4.1
    IL_0092:  add
    IL_0093:  ldarg.2
    IL_0094:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0099:  callvirt   instance int32 Game.Terrain::GetCellLightFast(int32,
                                                                       int32,
                                                                       int32)
    IL_009e:  stloc.2
    IL_009f:  ldc.r4     20.
    IL_00a4:  ble.un.s   IL_00c4

    IL_00a6:  ldloc.0
    IL_00a7:  ldc.i4.8
    IL_00a8:  ble.s      IL_00c4

    IL_00aa:  ldloc.2
    IL_00ab:  ldc.i4.7
    IL_00ac:  bgt.s      IL_00c4

    IL_00ae:  ldloc.1
    IL_00af:  ldc.i4.8
    IL_00b0:  beq.s      IL_00be

    IL_00b2:  ldloc.1
    IL_00b3:  ldc.i4.2
    IL_00b4:  beq.s      IL_00be

    IL_00b6:  ldloc.1
    IL_00b7:  ldc.i4.3
    IL_00b8:  beq.s      IL_00be

    IL_00ba:  ldloc.1
    IL_00bb:  ldc.i4.7
    IL_00bc:  bne.un.s   IL_00c4

    IL_00be:  ldc.r4     0.25
    IL_00c3:  ret

    IL_00c4:  ldc.r4     0.0
    IL_00c9:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_102'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_103'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                               valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Lion"
    IL_0007:  ldarg.2
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_000e:  ldc.i4.1
    IL_000f:  ldc.i4.2
    IL_0010:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0015:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_001a:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_001f:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_103'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_104'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                               valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       236 (0xec)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemSky Game.SubsystemCreatureSpawn::m_subsystemSky
    IL_0006:  callvirt   instance float32 Game.SubsystemSky::get_SkyLightIntensity()
    IL_000b:  ldc.r4     0.1
    IL_0010:  bge.un     IL_00e6

    IL_0015:  ldarg.0
    IL_0016:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_001b:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_0020:  ldarg.2
    IL_0021:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0026:  conv.r4
    IL_0027:  ldarg.2
    IL_0028:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_002d:  conv.r4
    IL_002e:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_0033:  ldarg.0
    IL_0034:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0039:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_003e:  ldarg.2
    IL_003f:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0044:  ldarg.2
    IL_0045:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_004a:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_004f:  stloc.0
    IL_0050:  ldarg.0
    IL_0051:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0056:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_005b:  ldarg.2
    IL_005c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0061:  ldarg.2
    IL_0062:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0067:  callvirt   instance int32 Game.Terrain::GetHumidity(int32,
                                                                  int32)
    IL_006c:  stloc.1
    IL_006d:  ldarg.0
    IL_006e:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0073:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0078:  ldarg.2
    IL_0079:  ldfld      int32 [Engine]Engine.Point3::X
    IL_007e:  ldarg.2
    IL_007f:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0084:  ldc.i4.1
    IL_0085:  sub
    IL_0086:  ldarg.2
    IL_0087:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_008c:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0091:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0096:  stloc.2
    IL_0097:  ldarg.0
    IL_0098:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_009d:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00a2:  ldarg.2
    IL_00a3:  ldfld      int32 [Engine]Engine.Point3::X
    IL_00a8:  ldarg.2
    IL_00a9:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00ae:  ldc.i4.1
    IL_00af:  add
    IL_00b0:  ldarg.2
    IL_00b1:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_00b6:  callvirt   instance int32 Game.Terrain::GetCellLightFast(int32,
                                                                       int32,
                                                                       int32)
    IL_00bb:  stloc.3
    IL_00bc:  ldc.r4     20.
    IL_00c1:  ble.un.s   IL_00e6

    IL_00c3:  ldloc.0
    IL_00c4:  ldc.i4.8
    IL_00c5:  ble.s      IL_00e6

    IL_00c7:  ldloc.1
    IL_00c8:  ldc.i4.8
    IL_00c9:  ble.s      IL_00e6

    IL_00cb:  ldloc.3
    IL_00cc:  ldc.i4.7
    IL_00cd:  bgt.s      IL_00e6

    IL_00cf:  ldloc.2
    IL_00d0:  ldc.i4.8
    IL_00d1:  beq.s      IL_00e0

    IL_00d3:  ldloc.2
    IL_00d4:  ldc.i4.2
    IL_00d5:  beq.s      IL_00e0

    IL_00d7:  ldloc.2
    IL_00d8:  ldc.i4.3
    IL_00d9:  beq.s      IL_00e0

    IL_00db:  ldloc.2
    IL_00dc:  ldc.i4.s   12
    IL_00de:  bne.un.s   IL_00e6

    IL_00e0:  ldc.r4     0.25
    IL_00e5:  ret

    IL_00e6:  ldc.r4     0.0
    IL_00eb:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_104'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_105'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                               valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Jaguar"
    IL_0007:  ldarg.2
    IL_0008:  ldc.i4.1
    IL_0009:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_000e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_0013:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_105'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_106'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                               valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       203 (0xcb)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemSky Game.SubsystemCreatureSpawn::m_subsystemSky
    IL_0006:  callvirt   instance float32 Game.SubsystemSky::get_SkyLightIntensity()
    IL_000b:  ldc.r4     0.1
    IL_0010:  bge.un     IL_00c5

    IL_0015:  ldarg.0
    IL_0016:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_001b:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_0020:  ldarg.2
    IL_0021:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0026:  conv.r4
    IL_0027:  ldarg.2
    IL_0028:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_002d:  conv.r4
    IL_002e:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_0033:  ldarg.0
    IL_0034:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0039:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_003e:  ldarg.2
    IL_003f:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0044:  ldarg.2
    IL_0045:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_004a:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_004f:  stloc.0
    IL_0050:  ldarg.0
    IL_0051:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0056:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_005b:  ldarg.2
    IL_005c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0061:  ldarg.2
    IL_0062:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0067:  ldc.i4.1
    IL_0068:  sub
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_006f:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0074:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0079:  stloc.1
    IL_007a:  ldarg.0
    IL_007b:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0080:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0085:  ldarg.2
    IL_0086:  ldfld      int32 [Engine]Engine.Point3::X
    IL_008b:  ldarg.2
    IL_008c:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0091:  ldc.i4.1
    IL_0092:  add
    IL_0093:  ldarg.2
    IL_0094:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0099:  callvirt   instance int32 Game.Terrain::GetCellLightFast(int32,
                                                                       int32,
                                                                       int32)
    IL_009e:  stloc.2
    IL_009f:  ldc.r4     20.
    IL_00a4:  ble.un.s   IL_00c5

    IL_00a6:  ldloc.0
    IL_00a7:  ldc.i4.8
    IL_00a8:  ble.s      IL_00c5

    IL_00aa:  ldloc.2
    IL_00ab:  ldc.i4.7
    IL_00ac:  bgt.s      IL_00c5

    IL_00ae:  ldloc.1
    IL_00af:  ldc.i4.8
    IL_00b0:  beq.s      IL_00bf

    IL_00b2:  ldloc.1
    IL_00b3:  ldc.i4.2
    IL_00b4:  beq.s      IL_00bf

    IL_00b6:  ldloc.1
    IL_00b7:  ldc.i4.3
    IL_00b8:  beq.s      IL_00bf

    IL_00ba:  ldloc.1
    IL_00bb:  ldc.i4.s   12
    IL_00bd:  bne.un.s   IL_00c5

    IL_00bf:  ldc.r4     0.25
    IL_00c4:  ret

    IL_00c5:  ldc.r4     0.0
    IL_00ca:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_106'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_107'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                               valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Leopard"
    IL_0007:  ldarg.2
    IL_0008:  ldc.i4.1
    IL_0009:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_000e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_0013:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_107'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__29_108'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                               valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       202 (0xca)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemSky Game.SubsystemCreatureSpawn::m_subsystemSky
    IL_0006:  callvirt   instance float32 Game.SubsystemSky::get_SkyLightIntensity()
    IL_000b:  ldc.r4     0.1
    IL_0010:  bge.un     IL_00c4

    IL_0015:  ldarg.0
    IL_0016:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_001b:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_0020:  ldarg.2
    IL_0021:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0026:  conv.r4
    IL_0027:  ldarg.2
    IL_0028:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_002d:  conv.r4
    IL_002e:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_0033:  ldarg.0
    IL_0034:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0039:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_003e:  ldarg.2
    IL_003f:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0044:  ldarg.2
    IL_0045:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_004a:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_004f:  stloc.0
    IL_0050:  ldarg.0
    IL_0051:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0056:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_005b:  ldarg.2
    IL_005c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0061:  ldarg.2
    IL_0062:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0067:  ldc.i4.1
    IL_0068:  sub
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_006f:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0074:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0079:  stloc.1
    IL_007a:  ldarg.0
    IL_007b:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0080:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0085:  ldarg.2
    IL_0086:  ldfld      int32 [Engine]Engine.Point3::X
    IL_008b:  ldarg.2
    IL_008c:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0091:  ldc.i4.1
    IL_0092:  add
    IL_0093:  ldarg.2
    IL_0094:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0099:  callvirt   instance int32 Game.Terrain::GetCellLightFast(int32,
                                                                       int32,
                                                                       int32)
    IL_009e:  stloc.2
    IL_009f:  ldc.r4     20.
    IL_00a4:  ble.un.s   IL_00c4

    IL_00a6:  ldloc.0
    IL_00a7:  ldc.i4.8
    IL_00a8:  ble.s      IL_00c4

    IL_00aa:  ldloc.2
    IL_00ab:  ldc.i4.7
    IL_00ac:  bgt.s      IL_00c4

    IL_00ae:  ldloc.1
    IL_00af:  ldc.i4.8
    IL_00b0:  beq.s      IL_00be

    IL_00b2:  ldloc.1
    IL_00b3:  ldc.i4.2
    IL_00b4:  beq.s      IL_00be

    IL_00b6:  ldloc.1
    IL_00b7:  ldc.i4.3
    IL_00b8:  beq.s      IL_00be

    IL_00ba:  ldloc.1
    IL_00bb:  ldc.i4.7
    IL_00bc:  bne.un.s   IL_00c4

    IL_00be:  ldc.r4     1.
    IL_00c3:  ret

    IL_00c4:  ldc.r4     0.0
    IL_00c9:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_108'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__29_109'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                               valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Hyena"
    IL_0007:  ldarg.2
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_000e:  ldc.i4.1
    IL_000f:  ldc.i4.2
    IL_0010:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0015:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_001a:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_001f:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__29_109'

  .property instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class Game.ComponentCreature,bool>
          Creatures()
  {
    .get instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class Game.ComponentCreature,bool> Game.SubsystemCreatureSpawn::get_Creatures()
  } // end of property SubsystemCreatureSpawn::Creatures
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemCreatureSpawn::get_UpdateOrder()
  } // end of property SubsystemCreatureSpawn::UpdateOrder
} // end of class Game.SubsystemCreatureSpawn