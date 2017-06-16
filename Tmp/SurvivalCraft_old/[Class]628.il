.class public auto ansi beforefieldinit Game.SubsystemCreatureSpawn
       extends [EntitySystem]GameEntitySystem.Subsystem
       implements Game.IUpdateable
{
  .class auto ansi nested private beforefieldinit CreatureType
         extends [System.Runtime]System.Object
  {
    .field public string Name
    .field public valuetype Game.SpawnPool SpawnPool
    .field public valuetype Game.SpawnLocationType SpawnLocationType
    .field public bool RandomSpawn
    .field public class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> SpawnSuitabilityFunction
    .field public class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> SpawnFunction
    .method public hidebysig virtual instance string 
            ToString() cil managed
    {
      // 代码大小       39 (0x27)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
      IL_0006:  ldstr      " ("
      IL_000b:  ldarg.0
      IL_000c:  ldflda     valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
      IL_0011:  constrained. Game.SpawnPool
      IL_0017:  callvirt   instance string [System.Runtime]System.Object::ToString()
      IL_001c:  ldstr      ")"
      IL_0021:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string,
                                                                        string,
                                                                        string)
      IL_0026:  ret
    } // end of method CreatureType::ToString

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method CreatureType::.ctor

  } // end of class CreatureType

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass25_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public valuetype Game.SpawnPool spawnPool
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
    } // end of method '<>c__DisplayClass25_0'::.ctor

    .method assembly hidebysig instance bool 
            '<SpawnRandomCreature>b__0'(class Game.SubsystemCreatureSpawn/CreatureType c) cil managed
    {
      // 代码大小       37 (0x25)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
      IL_0006:  ldarg.0
      IL_0007:  ldfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/'<>c__DisplayClass25_0'::spawnPool
      IL_000c:  bne.un.s   IL_0023

      IL_000e:  ldarg.1
      IL_000f:  ldfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
      IL_0014:  ldarg.0
      IL_0015:  ldfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/'<>c__DisplayClass25_0'::spawnLocationType
      IL_001a:  bne.un.s   IL_0023

      IL_001c:  ldarg.1
      IL_001d:  ldfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
      IL_0022:  ret

      IL_0023:  ldc.i4.0
      IL_0024:  ret
    } // end of method '<>c__DisplayClass25_0'::'<SpawnRandomCreature>b__0'

    .method assembly hidebysig instance float32 
            '<SpawnRandomCreature>b__1'(class Game.SubsystemCreatureSpawn/CreatureType c) cil managed
    {
      // 代码大小       24 (0x18)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
      IL_0006:  ldarg.1
      IL_0007:  ldarg.0
      IL_0008:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemCreatureSpawn/'<>c__DisplayClass25_0'::spawnPoint
      IL_000d:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
      IL_0012:  callvirt   instance !2 class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::Invoke(!0,
                                                                                                                                                                           !1)
      IL_0017:  ret
    } // end of method '<>c__DisplayClass25_0'::'<SpawnRandomCreature>b__1'

  } // end of class '<>c__DisplayClass25_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass26_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public valuetype Game.SpawnPool spawnPool
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass26_0'::.ctor

  } // end of class '<>c__DisplayClass26_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass26_1'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public valuetype Game.SpawnLocationType spawnLocationType
    .field public valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> spawnPoint
    .field public class Game.SubsystemCreatureSpawn/'<>c__DisplayClass26_0' 'CS$<>8__locals1'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass26_1'::.ctor

    .method assembly hidebysig instance bool 
            '<SpawnChunkCreatures>b__0'(class Game.SubsystemCreatureSpawn/CreatureType c) cil managed
    {
      // 代码大小       36 (0x24)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
      IL_0006:  ldarg.0
      IL_0007:  ldfld      class Game.SubsystemCreatureSpawn/'<>c__DisplayClass26_0' Game.SubsystemCreatureSpawn/'<>c__DisplayClass26_1'::'CS$<>8__locals1'
      IL_000c:  ldfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/'<>c__DisplayClass26_0'::spawnPool
      IL_0011:  bne.un.s   IL_0022

      IL_0013:  ldarg.1
      IL_0014:  ldfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
      IL_0019:  ldarg.0
      IL_001a:  ldfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/'<>c__DisplayClass26_1'::spawnLocationType
      IL_001f:  ceq
      IL_0021:  ret

      IL_0022:  ldc.i4.0
      IL_0023:  ret
    } // end of method '<>c__DisplayClass26_1'::'<SpawnChunkCreatures>b__0'

    .method assembly hidebysig instance float32 
            '<SpawnChunkCreatures>b__1'(class Game.SubsystemCreatureSpawn/CreatureType c) cil managed
    {
      // 代码大小       24 (0x18)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
      IL_0006:  ldarg.1
      IL_0007:  ldarg.0
      IL_0008:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemCreatureSpawn/'<>c__DisplayClass26_1'::spawnPoint
      IL_000d:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
      IL_0012:  callvirt   instance !2 class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::Invoke(!0,
                                                                                                                                                                           !1)
      IL_0017:  ret
    } // end of method '<>c__DisplayClass26_1'::'<SpawnChunkCreatures>b__1'

  } // end of class '<>c__DisplayClass26_1'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass33_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public valuetype Game.SpawnPool spawnPool
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass33_0'::.ctor

    .method assembly hidebysig instance bool 
            '<CountCreatures>b__1'(class Game.ComponentCreature c) cil managed
    {
      // 代码大小       20 (0x14)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  brfalse.s  IL_0012

      IL_0003:  ldarg.1
      IL_0004:  callvirt   instance valuetype Game.SpawnPool Game.ComponentCreature::get_SpawnPool()
      IL_0009:  ldarg.0
      IL_000a:  ldfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/'<>c__DisplayClass33_0'::spawnPool
      IL_000f:  ceq
      IL_0011:  ret

      IL_0012:  ldc.i4.0
      IL_0013:  ret
    } // end of method '<>c__DisplayClass33_0'::'<CountCreatures>b__1'

  } // end of class '<>c__DisplayClass33_0'

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.SubsystemCreatureSpawn/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<class Game.ComponentCreature,class Game.ComponentCreature> '<>9__33_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.SubsystemCreatureSpawn/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.SubsystemCreatureSpawn/'<>c' Game.SubsystemCreatureSpawn/'<>c'::'<>9'
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

    .method assembly hidebysig instance class Game.ComponentCreature 
            '<CountCreatures>b__33_0'(class Game.ComponentCreature s) cil managed
    {
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
      IL_0006:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>()
      IL_000b:  ret
    } // end of method '<>c'::'<CountCreatures>b__33_0'

  } // end of class '<>c'

  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemSpawn m_subsystemSpawn
  .field private class Game.SubsystemDrawing m_subsystemDrawing
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemEntityFactory m_subsystemEntityFactory
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemSky m_subsystemSky
  .field private class Game.SubsystemBodies m_subsystemBodies
  .field private class Game.Random m_random
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> m_creatureTypes
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentCreature,bool> m_creatures
  .field private class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> m_componentBodies
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnChunk> m_newSpawnChunks
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnChunk> m_spawnChunks
  .field private static valuetype Game.SpawnLocationType[] m_spawnLocations
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
    // 代码大小       269 (0x10d)
    .maxstack  4
    .locals init (valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnChunk> V_0,
             class Game.SpawnChunk V_1,
             class Game.SpawnChunk V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemGameInfo Game.SubsystemCreatureSpawn::m_subsystemGameInfo
    IL_0006:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_000b:  ldfld      valuetype Game.EnvironmentBehaviorMode Game.WorldInfo::EnvironmentBehaviorMode
    IL_0010:  brtrue     IL_010c

    IL_0015:  ldarg.0
    IL_0016:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnChunk> Game.SubsystemCreatureSpawn::m_newSpawnChunks
    IL_001b:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnChunk>::get_Count()
    IL_0020:  ldc.i4.0
    IL_0021:  ble.s      IL_007e

    IL_0023:  ldarg.0
    IL_0024:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnChunk> Game.SubsystemCreatureSpawn::m_newSpawnChunks
    IL_0029:  ldarg.0
    IL_002a:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<Update>b__20_0'(int32)
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
      IL_0052:  ldc.i4.1
      IL_0053:  ldc.i4.s   10
      IL_0055:  call       instance void Game.SubsystemCreatureSpawn::SpawnChunkCreatures(class Game.SpawnChunk,
                                                                                          valuetype Game.SpawnPool,
                                                                                          int32)
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
    IL_0093:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<Update>b__20_1'(int32)
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
      IL_00bc:  ldc.i4.2
      IL_00bd:  call       instance void Game.SubsystemCreatureSpawn::SpawnChunkCreatures(class Game.SpawnChunk,
                                                                                          valuetype Game.SpawnPool,
                                                                                          int32)
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
    IL_00f5:  ldc.r8     1.
    IL_00fe:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_0103:  brfalse.s  IL_010c

    IL_0105:  ldarg.0
    IL_0106:  ldc.i4.1
    IL_0107:  call       instance void Game.SubsystemCreatureSpawn::SpawnRandomCreature(valuetype Game.SpawnPool)
    IL_010c:  ret
  } // end of method SubsystemCreatureSpawn::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       174 (0xae)
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
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemDrawing>(bool)
    IL_0031:  stfld      class Game.SubsystemDrawing Game.SubsystemCreatureSpawn::m_subsystemDrawing
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0043:  stfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemEntityFactory>(bool)
    IL_0055:  stfld      class Game.SubsystemEntityFactory Game.SubsystemCreatureSpawn::m_subsystemEntityFactory
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_0067:  stfld      class Game.SubsystemTime Game.SubsystemCreatureSpawn::m_subsystemTime
    IL_006c:  ldarg.0
    IL_006d:  ldarg.0
    IL_006e:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0073:  ldc.i4.1
    IL_0074:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemSky>(bool)
    IL_0079:  stfld      class Game.SubsystemSky Game.SubsystemCreatureSpawn::m_subsystemSky
    IL_007e:  ldarg.0
    IL_007f:  ldarg.0
    IL_0080:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0085:  ldc.i4.1
    IL_0086:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBodies>(bool)
    IL_008b:  stfld      class Game.SubsystemBodies Game.SubsystemCreatureSpawn::m_subsystemBodies
    IL_0090:  ldarg.0
    IL_0091:  call       instance void Game.SubsystemCreatureSpawn::InitializeCreatureTypes()
    IL_0096:  ldarg.0
    IL_0097:  ldfld      class Game.SubsystemSpawn Game.SubsystemCreatureSpawn::m_subsystemSpawn
    IL_009c:  ldarg.0
    IL_009d:  ldftn      instance void Game.SubsystemCreatureSpawn::'<Load>b__21_0'(class Game.SpawnChunk)
    IL_00a3:  newobj     instance void class [System.Runtime]System.Action`1<class Game.SpawnChunk>::.ctor(object,
                                                                                                           native int)
    IL_00a8:  callvirt   instance void Game.SubsystemSpawn::add_SpawningChunk(class [System.Runtime]System.Action`1<class Game.SpawnChunk>)
    IL_00ad:  ret
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
    // 代码大小       3865 (0xf19)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0006:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_000b:  dup
    IL_000c:  ldstr      "Duck"
    IL_0011:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_0016:  dup
    IL_0017:  ldc.i4.1
    IL_0018:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_001d:  dup
    IL_001e:  ldc.i4.0
    IL_001f:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_0024:  dup
    IL_0025:  ldc.i4.1
    IL_0026:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_002b:  dup
    IL_002c:  ldarg.0
    IL_002d:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_0'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                          valuetype [Engine]Engine.Point3)
    IL_0033:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0038:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_003d:  dup
    IL_003e:  ldarg.0
    IL_003f:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_1'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                        valuetype [Engine]Engine.Point3)
    IL_0045:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_004a:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_004f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0054:  ldarg.0
    IL_0055:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_005a:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_005f:  dup
    IL_0060:  ldstr      "Raven"
    IL_0065:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_006a:  dup
    IL_006b:  ldc.i4.1
    IL_006c:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_0071:  dup
    IL_0072:  ldc.i4.0
    IL_0073:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_0078:  dup
    IL_0079:  ldc.i4.1
    IL_007a:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_007f:  dup
    IL_0080:  ldarg.0
    IL_0081:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_2'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                          valuetype [Engine]Engine.Point3)
    IL_0087:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_008c:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0091:  dup
    IL_0092:  ldarg.0
    IL_0093:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_3'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                        valuetype [Engine]Engine.Point3)
    IL_0099:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_009e:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_00a3:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_00a8:  ldarg.0
    IL_00a9:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_00ae:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_00b3:  dup
    IL_00b4:  ldstr      "Seagull"
    IL_00b9:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_00be:  dup
    IL_00bf:  ldc.i4.1
    IL_00c0:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_00c5:  dup
    IL_00c6:  ldc.i4.0
    IL_00c7:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_00cc:  dup
    IL_00cd:  ldc.i4.1
    IL_00ce:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_00d3:  dup
    IL_00d4:  ldarg.0
    IL_00d5:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_4'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                          valuetype [Engine]Engine.Point3)
    IL_00db:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_00e0:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_00e5:  dup
    IL_00e6:  ldarg.0
    IL_00e7:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_5'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                        valuetype [Engine]Engine.Point3)
    IL_00ed:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_00f2:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_00f7:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_00fc:  ldarg.0
    IL_00fd:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0102:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_0107:  dup
    IL_0108:  ldstr      "Wildboar"
    IL_010d:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_0112:  dup
    IL_0113:  ldc.i4.1
    IL_0114:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_0119:  dup
    IL_011a:  ldc.i4.0
    IL_011b:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_0120:  dup
    IL_0121:  ldc.i4.0
    IL_0122:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_0127:  dup
    IL_0128:  ldarg.0
    IL_0129:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_6'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                          valuetype [Engine]Engine.Point3)
    IL_012f:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0134:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0139:  dup
    IL_013a:  ldarg.0
    IL_013b:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_7'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                        valuetype [Engine]Engine.Point3)
    IL_0141:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0146:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_014b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0150:  ldarg.0
    IL_0151:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0156:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_015b:  dup
    IL_015c:  ldstr      "Brown Cattle"
    IL_0161:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_0166:  dup
    IL_0167:  ldc.i4.1
    IL_0168:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_016d:  dup
    IL_016e:  ldc.i4.0
    IL_016f:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_0174:  dup
    IL_0175:  ldc.i4.0
    IL_0176:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_017b:  dup
    IL_017c:  ldarg.0
    IL_017d:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_8'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                          valuetype [Engine]Engine.Point3)
    IL_0183:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0188:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_018d:  dup
    IL_018e:  ldarg.0
    IL_018f:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_9'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                        valuetype [Engine]Engine.Point3)
    IL_0195:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_019a:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_019f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_01a4:  ldarg.0
    IL_01a5:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_01aa:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_01af:  dup
    IL_01b0:  ldstr      "Black Cattle"
    IL_01b5:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_01ba:  dup
    IL_01bb:  ldc.i4.1
    IL_01bc:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_01c1:  dup
    IL_01c2:  ldc.i4.0
    IL_01c3:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_01c8:  dup
    IL_01c9:  ldc.i4.0
    IL_01ca:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_01cf:  dup
    IL_01d0:  ldarg.0
    IL_01d1:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_10'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_01d7:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_01dc:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_01e1:  dup
    IL_01e2:  ldarg.0
    IL_01e3:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_11'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_01e9:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_01ee:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_01f3:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_01f8:  ldarg.0
    IL_01f9:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_01fe:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_0203:  dup
    IL_0204:  ldstr      "White Bull"
    IL_0209:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_020e:  dup
    IL_020f:  ldc.i4.1
    IL_0210:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_0215:  dup
    IL_0216:  ldc.i4.0
    IL_0217:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_021c:  dup
    IL_021d:  ldc.i4.0
    IL_021e:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_0223:  dup
    IL_0224:  ldarg.0
    IL_0225:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_12'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_022b:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0230:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0235:  dup
    IL_0236:  ldarg.0
    IL_0237:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_13'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_023d:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0242:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0247:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_024c:  ldarg.0
    IL_024d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0252:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_0257:  dup
    IL_0258:  ldstr      "Gray Wolves"
    IL_025d:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_0262:  dup
    IL_0263:  ldc.i4.1
    IL_0264:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_0269:  dup
    IL_026a:  ldc.i4.0
    IL_026b:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_0270:  dup
    IL_0271:  ldc.i4.0
    IL_0272:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_0277:  dup
    IL_0278:  ldarg.0
    IL_0279:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_14'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_027f:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0284:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0289:  dup
    IL_028a:  ldarg.0
    IL_028b:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_15'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0291:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0296:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_029b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_02a0:  ldarg.0
    IL_02a1:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_02a6:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_02ab:  dup
    IL_02ac:  ldstr      "Coyotes"
    IL_02b1:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_02b6:  dup
    IL_02b7:  ldc.i4.1
    IL_02b8:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_02bd:  dup
    IL_02be:  ldc.i4.0
    IL_02bf:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_02c4:  dup
    IL_02c5:  ldc.i4.0
    IL_02c6:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_02cb:  dup
    IL_02cc:  ldarg.0
    IL_02cd:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_16'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_02d3:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_02d8:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_02dd:  dup
    IL_02de:  ldarg.0
    IL_02df:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_17'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_02e5:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_02ea:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_02ef:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_02f4:  ldarg.0
    IL_02f5:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_02fa:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_02ff:  dup
    IL_0300:  ldstr      "Brown Bears"
    IL_0305:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_030a:  dup
    IL_030b:  ldc.i4.1
    IL_030c:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_0311:  dup
    IL_0312:  ldc.i4.0
    IL_0313:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_0318:  dup
    IL_0319:  ldc.i4.0
    IL_031a:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_031f:  dup
    IL_0320:  ldarg.0
    IL_0321:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_18'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0327:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_032c:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0331:  dup
    IL_0332:  ldarg.0
    IL_0333:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_19'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0339:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_033e:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0343:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0348:  ldarg.0
    IL_0349:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_034e:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_0353:  dup
    IL_0354:  ldstr      "Black Bears"
    IL_0359:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_035e:  dup
    IL_035f:  ldc.i4.1
    IL_0360:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_0365:  dup
    IL_0366:  ldc.i4.0
    IL_0367:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_036c:  dup
    IL_036d:  ldc.i4.0
    IL_036e:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_0373:  dup
    IL_0374:  ldarg.0
    IL_0375:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_20'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_037b:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0380:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0385:  dup
    IL_0386:  ldarg.0
    IL_0387:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_21'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_038d:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0392:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0397:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_039c:  ldarg.0
    IL_039d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_03a2:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_03a7:  dup
    IL_03a8:  ldstr      "Polar Bears"
    IL_03ad:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_03b2:  dup
    IL_03b3:  ldc.i4.1
    IL_03b4:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_03b9:  dup
    IL_03ba:  ldc.i4.0
    IL_03bb:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_03c0:  dup
    IL_03c1:  ldc.i4.0
    IL_03c2:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_03c7:  dup
    IL_03c8:  ldarg.0
    IL_03c9:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_22'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_03cf:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_03d4:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_03d9:  dup
    IL_03da:  ldarg.0
    IL_03db:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_23'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_03e1:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_03e6:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_03eb:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_03f0:  ldarg.0
    IL_03f1:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_03f6:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_03fb:  dup
    IL_03fc:  ldstr      "Horses"
    IL_0401:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_0406:  dup
    IL_0407:  ldc.i4.1
    IL_0408:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_040d:  dup
    IL_040e:  ldc.i4.0
    IL_040f:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_0414:  dup
    IL_0415:  ldc.i4.0
    IL_0416:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_041b:  dup
    IL_041c:  ldarg.0
    IL_041d:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_24'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0423:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0428:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_042d:  dup
    IL_042e:  ldarg.0
    IL_042f:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_25'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0435:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_043a:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_043f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0444:  ldarg.0
    IL_0445:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_044a:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_044f:  dup
    IL_0450:  ldstr      "Camels"
    IL_0455:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_045a:  dup
    IL_045b:  ldc.i4.1
    IL_045c:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_0461:  dup
    IL_0462:  ldc.i4.0
    IL_0463:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_0468:  dup
    IL_0469:  ldc.i4.0
    IL_046a:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_046f:  dup
    IL_0470:  ldarg.0
    IL_0471:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_26'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0477:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_047c:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0481:  dup
    IL_0482:  ldarg.0
    IL_0483:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_27'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0489:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_048e:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0493:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0498:  ldarg.0
    IL_0499:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_049e:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_04a3:  dup
    IL_04a4:  ldstr      "Donkeys"
    IL_04a9:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_04ae:  dup
    IL_04af:  ldc.i4.1
    IL_04b0:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_04b5:  dup
    IL_04b6:  ldc.i4.0
    IL_04b7:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_04bc:  dup
    IL_04bd:  ldc.i4.0
    IL_04be:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_04c3:  dup
    IL_04c4:  ldarg.0
    IL_04c5:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_28'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_04cb:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_04d0:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_04d5:  dup
    IL_04d6:  ldarg.0
    IL_04d7:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_29'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_04dd:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_04e2:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_04e7:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_04ec:  ldarg.0
    IL_04ed:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_04f2:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_04f7:  dup
    IL_04f8:  ldstr      "Giraffes"
    IL_04fd:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_0502:  dup
    IL_0503:  ldc.i4.1
    IL_0504:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_0509:  dup
    IL_050a:  ldc.i4.0
    IL_050b:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_0510:  dup
    IL_0511:  ldc.i4.0
    IL_0512:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_0517:  dup
    IL_0518:  ldarg.0
    IL_0519:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_30'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_051f:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0524:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0529:  dup
    IL_052a:  ldarg.0
    IL_052b:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_31'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0531:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0536:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_053b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0540:  ldarg.0
    IL_0541:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0546:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_054b:  dup
    IL_054c:  ldstr      "Rhinos"
    IL_0551:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_0556:  dup
    IL_0557:  ldc.i4.1
    IL_0558:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_055d:  dup
    IL_055e:  ldc.i4.0
    IL_055f:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_0564:  dup
    IL_0565:  ldc.i4.0
    IL_0566:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_056b:  dup
    IL_056c:  ldarg.0
    IL_056d:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_32'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0573:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0578:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_057d:  dup
    IL_057e:  ldarg.0
    IL_057f:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_33'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0585:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_058a:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_058f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0594:  ldarg.0
    IL_0595:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_059a:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_059f:  dup
    IL_05a0:  ldstr      "Lions"
    IL_05a5:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_05aa:  dup
    IL_05ab:  ldc.i4.1
    IL_05ac:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_05b1:  dup
    IL_05b2:  ldc.i4.0
    IL_05b3:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_05b8:  dup
    IL_05b9:  ldc.i4.0
    IL_05ba:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_05bf:  dup
    IL_05c0:  ldarg.0
    IL_05c1:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_34'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_05c7:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_05cc:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_05d1:  dup
    IL_05d2:  ldarg.0
    IL_05d3:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_35'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_05d9:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_05de:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_05e3:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_05e8:  ldarg.0
    IL_05e9:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_05ee:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_05f3:  dup
    IL_05f4:  ldstr      "Tigers"
    IL_05f9:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_05fe:  dup
    IL_05ff:  ldc.i4.1
    IL_0600:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_0605:  dup
    IL_0606:  ldc.i4.0
    IL_0607:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_060c:  dup
    IL_060d:  ldc.i4.0
    IL_060e:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_0613:  dup
    IL_0614:  ldarg.0
    IL_0615:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_36'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_061b:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0620:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0625:  dup
    IL_0626:  ldarg.0
    IL_0627:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_37'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_062d:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0632:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0637:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_063c:  ldarg.0
    IL_063d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0642:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_0647:  dup
    IL_0648:  ldstr      "White Tigers"
    IL_064d:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_0652:  dup
    IL_0653:  ldc.i4.1
    IL_0654:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_0659:  dup
    IL_065a:  ldc.i4.0
    IL_065b:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_0660:  dup
    IL_0661:  ldc.i4.0
    IL_0662:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_0667:  dup
    IL_0668:  ldarg.0
    IL_0669:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_38'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_066f:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0674:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0679:  dup
    IL_067a:  ldarg.0
    IL_067b:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_39'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0681:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0686:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_068b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0690:  ldarg.0
    IL_0691:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0696:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_069b:  dup
    IL_069c:  ldstr      "Zebras"
    IL_06a1:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_06a6:  dup
    IL_06a7:  ldc.i4.1
    IL_06a8:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_06ad:  dup
    IL_06ae:  ldc.i4.0
    IL_06af:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_06b4:  dup
    IL_06b5:  ldc.i4.0
    IL_06b6:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_06bb:  dup
    IL_06bc:  ldarg.0
    IL_06bd:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_40'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_06c3:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_06c8:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_06cd:  dup
    IL_06ce:  ldarg.0
    IL_06cf:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_41'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_06d5:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_06da:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_06df:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_06e4:  ldarg.0
    IL_06e5:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_06ea:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_06ef:  dup
    IL_06f0:  ldstr      "Gnus"
    IL_06f5:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_06fa:  dup
    IL_06fb:  ldc.i4.1
    IL_06fc:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_0701:  dup
    IL_0702:  ldc.i4.0
    IL_0703:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_0708:  dup
    IL_0709:  ldc.i4.0
    IL_070a:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_070f:  dup
    IL_0710:  ldarg.0
    IL_0711:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_42'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0717:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_071c:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0721:  dup
    IL_0722:  ldarg.0
    IL_0723:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_43'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0729:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_072e:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0733:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0738:  ldarg.0
    IL_0739:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_073e:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_0743:  dup
    IL_0744:  ldstr      "Reindeers"
    IL_0749:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_074e:  dup
    IL_074f:  ldc.i4.1
    IL_0750:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_0755:  dup
    IL_0756:  ldc.i4.0
    IL_0757:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_075c:  dup
    IL_075d:  ldc.i4.0
    IL_075e:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_0763:  dup
    IL_0764:  ldarg.0
    IL_0765:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_44'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_076b:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0770:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0775:  dup
    IL_0776:  ldarg.0
    IL_0777:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_45'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_077d:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0782:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0787:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_078c:  ldarg.0
    IL_078d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0792:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_0797:  dup
    IL_0798:  ldstr      "Mooses"
    IL_079d:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_07a2:  dup
    IL_07a3:  ldc.i4.1
    IL_07a4:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_07a9:  dup
    IL_07aa:  ldc.i4.0
    IL_07ab:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_07b0:  dup
    IL_07b1:  ldc.i4.0
    IL_07b2:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_07b7:  dup
    IL_07b8:  ldarg.0
    IL_07b9:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_46'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_07bf:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_07c4:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_07c9:  dup
    IL_07ca:  ldarg.0
    IL_07cb:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_47'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_07d1:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_07d6:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_07db:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_07e0:  ldarg.0
    IL_07e1:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_07e6:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_07eb:  dup
    IL_07ec:  ldstr      "Bisons"
    IL_07f1:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_07f6:  dup
    IL_07f7:  ldc.i4.1
    IL_07f8:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_07fd:  dup
    IL_07fe:  ldc.i4.0
    IL_07ff:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_0804:  dup
    IL_0805:  ldc.i4.0
    IL_0806:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_080b:  dup
    IL_080c:  ldarg.0
    IL_080d:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_48'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0813:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0818:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_081d:  dup
    IL_081e:  ldarg.0
    IL_081f:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_49'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0825:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_082a:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_082f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0834:  ldarg.0
    IL_0835:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_083a:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_083f:  dup
    IL_0840:  ldstr      "Ostriches"
    IL_0845:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_084a:  dup
    IL_084b:  ldc.i4.1
    IL_084c:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_0851:  dup
    IL_0852:  ldc.i4.0
    IL_0853:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_0858:  dup
    IL_0859:  ldc.i4.0
    IL_085a:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_085f:  dup
    IL_0860:  ldarg.0
    IL_0861:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_50'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0867:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_086c:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0871:  dup
    IL_0872:  ldarg.0
    IL_0873:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_51'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0879:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_087e:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0883:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0888:  ldarg.0
    IL_0889:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_088e:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_0893:  dup
    IL_0894:  ldstr      "Cassowaries"
    IL_0899:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_089e:  dup
    IL_089f:  ldc.i4.1
    IL_08a0:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_08a5:  dup
    IL_08a6:  ldc.i4.0
    IL_08a7:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_08ac:  dup
    IL_08ad:  ldc.i4.0
    IL_08ae:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_08b3:  dup
    IL_08b4:  ldarg.0
    IL_08b5:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_52'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_08bb:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_08c0:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_08c5:  dup
    IL_08c6:  ldarg.0
    IL_08c7:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_53'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_08cd:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_08d2:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_08d7:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_08dc:  ldarg.0
    IL_08dd:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_08e2:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_08e7:  dup
    IL_08e8:  ldstr      "Hyenas"
    IL_08ed:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_08f2:  dup
    IL_08f3:  ldc.i4.1
    IL_08f4:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_08f9:  dup
    IL_08fa:  ldc.i4.0
    IL_08fb:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_0900:  dup
    IL_0901:  ldc.i4.0
    IL_0902:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_0907:  dup
    IL_0908:  ldarg.0
    IL_0909:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_54'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_090f:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0914:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0919:  dup
    IL_091a:  ldarg.0
    IL_091b:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_55'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0921:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0926:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_092b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0930:  ldarg.0
    IL_0931:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0936:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_093b:  dup
    IL_093c:  ldstr      "Cave Bears"
    IL_0941:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_0946:  dup
    IL_0947:  ldc.i4.1
    IL_0948:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_094d:  dup
    IL_094e:  ldc.i4.1
    IL_094f:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_0954:  dup
    IL_0955:  ldc.i4.0
    IL_0956:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_095b:  dup
    IL_095c:  ldarg.0
    IL_095d:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_56'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0963:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0968:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_096d:  dup
    IL_096e:  ldarg.0
    IL_096f:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_57'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0975:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_097a:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_097f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0984:  ldarg.0
    IL_0985:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_098a:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_098f:  dup
    IL_0990:  ldstr      "Cave Lions"
    IL_0995:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_099a:  dup
    IL_099b:  ldc.i4.1
    IL_099c:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_09a1:  dup
    IL_09a2:  ldc.i4.1
    IL_09a3:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_09a8:  dup
    IL_09a9:  ldc.i4.0
    IL_09aa:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_09af:  dup
    IL_09b0:  ldarg.0
    IL_09b1:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_58'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_09b7:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_09bc:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_09c1:  dup
    IL_09c2:  ldarg.0
    IL_09c3:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_59'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_09c9:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_09ce:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_09d3:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_09d8:  ldarg.0
    IL_09d9:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_09de:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_09e3:  dup
    IL_09e4:  ldstr      "Cave Hyenas"
    IL_09e9:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_09ee:  dup
    IL_09ef:  ldc.i4.1
    IL_09f0:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_09f5:  dup
    IL_09f6:  ldc.i4.1
    IL_09f7:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_09fc:  dup
    IL_09fd:  ldc.i4.0
    IL_09fe:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_0a03:  dup
    IL_0a04:  ldarg.0
    IL_0a05:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_60'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0a0b:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0a10:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0a15:  dup
    IL_0a16:  ldarg.0
    IL_0a17:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_61'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0a1d:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0a22:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0a27:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0a2c:  ldarg.0
    IL_0a2d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0a32:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_0a37:  dup
    IL_0a38:  ldstr      "Sharks"
    IL_0a3d:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_0a42:  dup
    IL_0a43:  ldc.i4.1
    IL_0a44:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_0a49:  dup
    IL_0a4a:  ldc.i4.2
    IL_0a4b:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_0a50:  dup
    IL_0a51:  ldc.i4.0
    IL_0a52:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_0a57:  dup
    IL_0a58:  ldarg.0
    IL_0a59:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_62'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0a5f:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0a64:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0a69:  dup
    IL_0a6a:  ldarg.0
    IL_0a6b:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_63'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0a71:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0a76:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0a7b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0a80:  ldarg.0
    IL_0a81:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0a86:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_0a8b:  dup
    IL_0a8c:  ldstr      "Barracudas"
    IL_0a91:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_0a96:  dup
    IL_0a97:  ldc.i4.1
    IL_0a98:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_0a9d:  dup
    IL_0a9e:  ldc.i4.2
    IL_0a9f:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_0aa4:  dup
    IL_0aa5:  ldc.i4.0
    IL_0aa6:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_0aab:  dup
    IL_0aac:  ldarg.0
    IL_0aad:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_64'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0ab3:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0ab8:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0abd:  dup
    IL_0abe:  ldarg.0
    IL_0abf:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_65'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0ac5:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0aca:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0acf:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0ad4:  ldarg.0
    IL_0ad5:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0ada:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_0adf:  dup
    IL_0ae0:  ldstr      "Bass_Sea"
    IL_0ae5:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_0aea:  dup
    IL_0aeb:  ldc.i4.1
    IL_0aec:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_0af1:  dup
    IL_0af2:  ldc.i4.2
    IL_0af3:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_0af8:  dup
    IL_0af9:  ldc.i4.0
    IL_0afa:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_0aff:  dup
    IL_0b00:  ldarg.0
    IL_0b01:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_66'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0b07:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0b0c:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0b11:  dup
    IL_0b12:  ldarg.0
    IL_0b13:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_67'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0b19:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0b1e:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0b23:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0b28:  ldarg.0
    IL_0b29:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0b2e:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_0b33:  dup
    IL_0b34:  ldstr      "Bass_Freshwater"
    IL_0b39:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_0b3e:  dup
    IL_0b3f:  ldc.i4.1
    IL_0b40:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_0b45:  dup
    IL_0b46:  ldc.i4.2
    IL_0b47:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_0b4c:  dup
    IL_0b4d:  ldc.i4.0
    IL_0b4e:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_0b53:  dup
    IL_0b54:  ldarg.0
    IL_0b55:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_68'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0b5b:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0b60:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0b65:  dup
    IL_0b66:  ldarg.0
    IL_0b67:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_69'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0b6d:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0b72:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0b77:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0b7c:  ldarg.0
    IL_0b7d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0b82:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_0b87:  dup
    IL_0b88:  ldstr      "Rays"
    IL_0b8d:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_0b92:  dup
    IL_0b93:  ldc.i4.1
    IL_0b94:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_0b99:  dup
    IL_0b9a:  ldc.i4.2
    IL_0b9b:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_0ba0:  dup
    IL_0ba1:  ldc.i4.0
    IL_0ba2:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_0ba7:  dup
    IL_0ba8:  ldarg.0
    IL_0ba9:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_70'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0baf:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0bb4:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0bb9:  dup
    IL_0bba:  ldarg.0
    IL_0bbb:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_71'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0bc1:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0bc6:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0bcb:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0bd0:  ldarg.0
    IL_0bd1:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0bd6:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_0bdb:  dup
    IL_0bdc:  ldstr      "Piranhas"
    IL_0be1:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_0be6:  dup
    IL_0be7:  ldc.i4.1
    IL_0be8:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_0bed:  dup
    IL_0bee:  ldc.i4.2
    IL_0bef:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_0bf4:  dup
    IL_0bf5:  ldc.i4.0
    IL_0bf6:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_0bfb:  dup
    IL_0bfc:  ldarg.0
    IL_0bfd:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_72'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0c03:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0c08:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0c0d:  dup
    IL_0c0e:  ldarg.0
    IL_0c0f:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_73'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0c15:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0c1a:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0c1f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0c24:  ldarg.0
    IL_0c25:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0c2a:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_0c2f:  dup
    IL_0c30:  ldstr      "Orcas"
    IL_0c35:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_0c3a:  dup
    IL_0c3b:  ldc.i4.1
    IL_0c3c:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_0c41:  dup
    IL_0c42:  ldc.i4.2
    IL_0c43:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_0c48:  dup
    IL_0c49:  ldc.i4.0
    IL_0c4a:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_0c4f:  dup
    IL_0c50:  ldarg.0
    IL_0c51:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_74'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0c57:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0c5c:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0c61:  dup
    IL_0c62:  ldarg.0
    IL_0c63:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_75'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0c69:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0c6e:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0c73:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0c78:  ldarg.0
    IL_0c79:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0c7e:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_0c83:  dup
    IL_0c84:  ldstr      "Belugas"
    IL_0c89:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_0c8e:  dup
    IL_0c8f:  ldc.i4.1
    IL_0c90:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_0c95:  dup
    IL_0c96:  ldc.i4.2
    IL_0c97:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_0c9c:  dup
    IL_0c9d:  ldc.i4.0
    IL_0c9e:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_0ca3:  dup
    IL_0ca4:  ldarg.0
    IL_0ca5:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_76'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0cab:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0cb0:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0cb5:  dup
    IL_0cb6:  ldarg.0
    IL_0cb7:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_77'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0cbd:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0cc2:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0cc7:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0ccc:  ldarg.0
    IL_0ccd:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0cd2:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_0cd7:  dup
    IL_0cd8:  ldstr      "NonVisited Gray Wolves"
    IL_0cdd:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_0ce2:  dup
    IL_0ce3:  ldc.i4.2
    IL_0ce4:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_0ce9:  dup
    IL_0cea:  ldc.i4.0
    IL_0ceb:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_0cf0:  dup
    IL_0cf1:  ldc.i4.0
    IL_0cf2:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_0cf7:  dup
    IL_0cf8:  ldarg.0
    IL_0cf9:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_78'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0cff:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0d04:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0d09:  dup
    IL_0d0a:  ldarg.0
    IL_0d0b:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_79'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0d11:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0d16:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0d1b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0d20:  ldarg.0
    IL_0d21:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0d26:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_0d2b:  dup
    IL_0d2c:  ldstr      "NonVisited Coyotes"
    IL_0d31:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_0d36:  dup
    IL_0d37:  ldc.i4.2
    IL_0d38:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_0d3d:  dup
    IL_0d3e:  ldc.i4.0
    IL_0d3f:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_0d44:  dup
    IL_0d45:  ldc.i4.0
    IL_0d46:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_0d4b:  dup
    IL_0d4c:  ldarg.0
    IL_0d4d:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_80'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0d53:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0d58:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0d5d:  dup
    IL_0d5e:  ldarg.0
    IL_0d5f:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_81'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0d65:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0d6a:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0d6f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0d74:  ldarg.0
    IL_0d75:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0d7a:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_0d7f:  dup
    IL_0d80:  ldstr      "NonVisited Brown Bears"
    IL_0d85:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_0d8a:  dup
    IL_0d8b:  ldc.i4.2
    IL_0d8c:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_0d91:  dup
    IL_0d92:  ldc.i4.0
    IL_0d93:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_0d98:  dup
    IL_0d99:  ldc.i4.0
    IL_0d9a:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_0d9f:  dup
    IL_0da0:  ldarg.0
    IL_0da1:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_82'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0da7:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0dac:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0db1:  dup
    IL_0db2:  ldarg.0
    IL_0db3:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_83'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0db9:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0dbe:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0dc3:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0dc8:  ldarg.0
    IL_0dc9:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0dce:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_0dd3:  dup
    IL_0dd4:  ldstr      "NonVisited Black Bears"
    IL_0dd9:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_0dde:  dup
    IL_0ddf:  ldc.i4.2
    IL_0de0:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_0de5:  dup
    IL_0de6:  ldc.i4.0
    IL_0de7:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_0dec:  dup
    IL_0ded:  ldc.i4.0
    IL_0dee:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_0df3:  dup
    IL_0df4:  ldarg.0
    IL_0df5:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_84'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0dfb:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0e00:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0e05:  dup
    IL_0e06:  ldarg.0
    IL_0e07:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_85'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0e0d:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0e12:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0e17:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0e1c:  ldarg.0
    IL_0e1d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0e22:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_0e27:  dup
    IL_0e28:  ldstr      "NonVisited Lions"
    IL_0e2d:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_0e32:  dup
    IL_0e33:  ldc.i4.2
    IL_0e34:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_0e39:  dup
    IL_0e3a:  ldc.i4.0
    IL_0e3b:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_0e40:  dup
    IL_0e41:  ldc.i4.0
    IL_0e42:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_0e47:  dup
    IL_0e48:  ldarg.0
    IL_0e49:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_86'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0e4f:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0e54:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0e59:  dup
    IL_0e5a:  ldarg.0
    IL_0e5b:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_87'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0e61:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0e66:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0e6b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0e70:  ldarg.0
    IL_0e71:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0e76:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_0e7b:  dup
    IL_0e7c:  ldstr      "NonVisited Tigers"
    IL_0e81:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_0e86:  dup
    IL_0e87:  ldc.i4.2
    IL_0e88:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_0e8d:  dup
    IL_0e8e:  ldc.i4.0
    IL_0e8f:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_0e94:  dup
    IL_0e95:  ldc.i4.0
    IL_0e96:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_0e9b:  dup
    IL_0e9c:  ldarg.0
    IL_0e9d:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_88'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0ea3:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0ea8:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0ead:  dup
    IL_0eae:  ldarg.0
    IL_0eaf:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_89'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0eb5:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0eba:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0ebf:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0ec4:  ldarg.0
    IL_0ec5:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0eca:  newobj     instance void Game.SubsystemCreatureSpawn/CreatureType::.ctor()
    IL_0ecf:  dup
    IL_0ed0:  ldstr      "NonVisited Hyenas"
    IL_0ed5:  stfld      string Game.SubsystemCreatureSpawn/CreatureType::Name
    IL_0eda:  dup
    IL_0edb:  ldc.i4.2
    IL_0edc:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/CreatureType::SpawnPool
    IL_0ee1:  dup
    IL_0ee2:  ldc.i4.0
    IL_0ee3:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/CreatureType::SpawnLocationType
    IL_0ee8:  dup
    IL_0ee9:  ldc.i4.0
    IL_0eea:  stfld      bool Game.SubsystemCreatureSpawn/CreatureType::RandomSpawn
    IL_0eef:  dup
    IL_0ef0:  ldarg.0
    IL_0ef1:  ldftn      instance float32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_90'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                           valuetype [Engine]Engine.Point3)
    IL_0ef7:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::.ctor(object,
                                                                                                                                                                          native int)
    IL_0efc:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_0f01:  dup
    IL_0f02:  ldarg.0
    IL_0f03:  ldftn      instance int32 Game.SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_91'(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                         valuetype [Engine]Engine.Point3)
    IL_0f09:  newobj     instance void class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::.ctor(object,
                                                                                                                                                                        native int)
    IL_0f0e:  stfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_0f13:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType>::Add(!0)
    IL_0f18:  ret
  } // end of method SubsystemCreatureSpawn::InitializeCreatureTypes

  .method private hidebysig instance void 
          SpawnRandomCreature(valuetype Game.SpawnPool spawnPool) cil managed
  {
    // 代码大小       414 (0x19e)
    .maxstack  5
    .locals init (class Game.SubsystemCreatureSpawn/'<>c__DisplayClass25_0' V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             valuetype [Engine]Engine.Vector2 V_4,
             valuetype [Engine]Engine.Vector2 V_5,
             valuetype [Engine]Engine.Vector2 V_6,
             class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.SubsystemCreatureSpawn/CreatureType> V_7,
             class [System.Runtime]System.Collections.Generic.IEnumerable`1<float32> V_8,
             int32 V_9,
             class Game.SubsystemCreatureSpawn/CreatureType V_10)
    IL_0000:  newobj     instance void Game.SubsystemCreatureSpawn/'<>c__DisplayClass25_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/'<>c__DisplayClass25_0'::spawnPool
    IL_000d:  ldloc.0
    IL_000e:  ldfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/'<>c__DisplayClass25_0'::spawnPool
    IL_0013:  ldloca.s   V_1
    IL_0015:  ldloca.s   V_2
    IL_0017:  call       void Game.SubsystemCreatureSpawn::GetSpawnPoolLimits(valuetype Game.SpawnPool,
                                                                              int32&,
                                                                              int32&)
    IL_001c:  ldarg.0
    IL_001d:  ldloc.0
    IL_001e:  ldfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/'<>c__DisplayClass25_0'::spawnPool
    IL_0023:  call       instance int32 Game.SubsystemCreatureSpawn::CountCreatures(valuetype Game.SpawnPool)
    IL_0028:  ldloc.1
    IL_0029:  blt.s      IL_002c

    IL_002b:  ret

    IL_002c:  ldc.i4.2
    IL_002d:  ldloc.1
    IL_002e:  mul
    IL_002f:  stloc.3
    IL_0030:  ldloca.s   V_4
    IL_0032:  ldarg.0
    IL_0033:  ldfld      class Game.SubsystemDrawing Game.SubsystemCreatureSpawn::m_subsystemDrawing
    IL_0038:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_003d:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0042:  ldarg.0
    IL_0043:  ldfld      class Game.SubsystemDrawing Game.SubsystemCreatureSpawn::m_subsystemDrawing
    IL_0048:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_004d:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0052:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0057:  ldarg.0
    IL_0058:  ldloc.0
    IL_0059:  ldfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/'<>c__DisplayClass25_0'::spawnPool
    IL_005e:  ldloc.s    V_4
    IL_0060:  ldc.r4     60.
    IL_0065:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_006a:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_006f:  ldloc.s    V_4
    IL_0071:  ldc.r4     60.
    IL_0076:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_007b:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0080:  call       instance int32 Game.SubsystemCreatureSpawn::CountCreaturesInArea(valuetype Game.SpawnPool,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2)
    IL_0085:  ldloc.3
    IL_0086:  blt.s      IL_0089

    IL_0088:  ret

    IL_0089:  ldloc.0
    IL_008a:  ldarg.0
    IL_008b:  call       instance valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn::GetRandomSpawnLocationType()
    IL_0090:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/'<>c__DisplayClass25_0'::spawnLocationType
    IL_0095:  ldloc.0
    IL_0096:  ldarg.0
    IL_0097:  ldloc.0
    IL_0098:  ldfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/'<>c__DisplayClass25_0'::spawnLocationType
    IL_009d:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemCreatureSpawn::GetRandomSpawnPoint(valuetype Game.SpawnLocationType)
    IL_00a2:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemCreatureSpawn/'<>c__DisplayClass25_0'::spawnPoint
    IL_00a7:  ldloc.0
    IL_00a8:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemCreatureSpawn/'<>c__DisplayClass25_0'::spawnPoint
    IL_00ad:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_HasValue()
    IL_00b2:  brfalse    IL_019d

    IL_00b7:  ldloc.0
    IL_00b8:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemCreatureSpawn/'<>c__DisplayClass25_0'::spawnPoint
    IL_00bd:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
    IL_00c2:  ldfld      int32 [Engine]Engine.Point3::X
    IL_00c7:  conv.r4
    IL_00c8:  ldloc.0
    IL_00c9:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemCreatureSpawn/'<>c__DisplayClass25_0'::spawnPoint
    IL_00ce:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
    IL_00d3:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_00d8:  conv.r4
    IL_00d9:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00de:  ldc.r4     12.
    IL_00e3:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_00e8:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_00ed:  stloc.s    V_5
    IL_00ef:  ldloc.0
    IL_00f0:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemCreatureSpawn/'<>c__DisplayClass25_0'::spawnPoint
    IL_00f5:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
    IL_00fa:  ldfld      int32 [Engine]Engine.Point3::X
    IL_00ff:  conv.r4
    IL_0100:  ldloc.0
    IL_0101:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemCreatureSpawn/'<>c__DisplayClass25_0'::spawnPoint
    IL_0106:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
    IL_010b:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0110:  conv.r4
    IL_0111:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0116:  ldc.r4     12.
    IL_011b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0120:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0125:  stloc.s    V_6
    IL_0127:  ldarg.0
    IL_0128:  ldloc.0
    IL_0129:  ldfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/'<>c__DisplayClass25_0'::spawnPool
    IL_012e:  ldloc.s    V_5
    IL_0130:  ldloc.s    V_6
    IL_0132:  call       instance int32 Game.SubsystemCreatureSpawn::CountCreaturesInArea(valuetype Game.SpawnPool,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2)
    IL_0137:  ldloc.2
    IL_0138:  blt.s      IL_013b

    IL_013a:  ret

    IL_013b:  ldarg.0
    IL_013c:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_0141:  ldloc.0
    IL_0142:  ldftn      instance bool Game.SubsystemCreatureSpawn/'<>c__DisplayClass25_0'::'<SpawnRandomCreature>b__0'(class Game.SubsystemCreatureSpawn/CreatureType)
    IL_0148:  newobj     instance void class [System.Runtime]System.Func`2<class Game.SubsystemCreatureSpawn/CreatureType,bool>::.ctor(object,
                                                                                                                                       native int)
    IL_014d:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class Game.SubsystemCreatureSpawn/CreatureType>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                        class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0152:  stloc.s    V_7
    IL_0154:  ldloc.s    V_7
    IL_0156:  ldloc.0
    IL_0157:  ldftn      instance float32 Game.SubsystemCreatureSpawn/'<>c__DisplayClass25_0'::'<SpawnRandomCreature>b__1'(class Game.SubsystemCreatureSpawn/CreatureType)
    IL_015d:  newobj     instance void class [System.Runtime]System.Func`2<class Game.SubsystemCreatureSpawn/CreatureType,float32>::.ctor(object,
                                                                                                                                          native int)
    IL_0162:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!1> [System.Linq]System.Linq.Enumerable::Select<class Game.SubsystemCreatureSpawn/CreatureType,float32>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                 class [System.Runtime]System.Func`2<!!0,!!1>)
    IL_0167:  stloc.s    V_8
    IL_0169:  ldarg.0
    IL_016a:  ldloc.s    V_8
    IL_016c:  call       instance int32 Game.SubsystemCreatureSpawn::GetRandomWeightedItem(class [System.Runtime]System.Collections.Generic.IEnumerable`1<float32>)
    IL_0171:  stloc.s    V_9
    IL_0173:  ldloc.s    V_9
    IL_0175:  ldc.i4.0
    IL_0176:  blt.s      IL_019d

    IL_0178:  ldloc.s    V_7
    IL_017a:  ldloc.s    V_9
    IL_017c:  call       !!0 [System.Linq]System.Linq.Enumerable::ElementAt<class Game.SubsystemCreatureSpawn/CreatureType>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                            int32)
    IL_0181:  stloc.s    V_10
    IL_0183:  ldloc.s    V_10
    IL_0185:  ldfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_018a:  ldloc.s    V_10
    IL_018c:  ldloc.0
    IL_018d:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemCreatureSpawn/'<>c__DisplayClass25_0'::spawnPoint
    IL_0192:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
    IL_0197:  callvirt   instance !2 class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::Invoke(!0,
                                                                                                                                                                       !1)
    IL_019c:  pop
    IL_019d:  ret
  } // end of method SubsystemCreatureSpawn::SpawnRandomCreature

  .method private hidebysig instance void 
          SpawnChunkCreatures(class Game.SpawnChunk chunk,
                              valuetype Game.SpawnPool spawnPool,
                              int32 maxAttempts) cil managed
  {
    // 代码大小       376 (0x178)
    .maxstack  4
    .locals init (class Game.SubsystemCreatureSpawn/'<>c__DisplayClass26_0' V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             valuetype [Engine]Engine.Vector2 V_4,
             valuetype [Engine]Engine.Vector2 V_5,
             int32 V_6,
             int32 V_7,
             class Game.SubsystemCreatureSpawn/'<>c__DisplayClass26_1' V_8,
             class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.SubsystemCreatureSpawn/CreatureType> V_9,
             class [System.Runtime]System.Collections.Generic.IEnumerable`1<float32> V_10,
             int32 V_11,
             class Game.SubsystemCreatureSpawn/CreatureType V_12,
             int32 V_13)
    IL_0000:  newobj     instance void Game.SubsystemCreatureSpawn/'<>c__DisplayClass26_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.2
    IL_0008:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/'<>c__DisplayClass26_0'::spawnPool
    IL_000d:  ldloc.0
    IL_000e:  ldfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/'<>c__DisplayClass26_0'::spawnPool
    IL_0013:  ldloca.s   V_1
    IL_0015:  ldloca.s   V_2
    IL_0017:  call       void Game.SubsystemCreatureSpawn::GetSpawnPoolLimits(valuetype Game.SpawnPool,
                                                                              int32&,
                                                                              int32&)
    IL_001c:  ldarg.0
    IL_001d:  ldloc.0
    IL_001e:  ldfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/'<>c__DisplayClass26_0'::spawnPool
    IL_0023:  call       instance int32 Game.SubsystemCreatureSpawn::CountCreatures(valuetype Game.SpawnPool)
    IL_0028:  stloc.3
    IL_0029:  ldarg.1
    IL_002a:  ldflda     valuetype [Engine]Engine.Point2 Game.SpawnChunk::Point
    IL_002f:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0034:  ldc.i4.s   16
    IL_0036:  mul
    IL_0037:  conv.r4
    IL_0038:  ldarg.1
    IL_0039:  ldflda     valuetype [Engine]Engine.Point2 Game.SpawnChunk::Point
    IL_003e:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0043:  ldc.i4.s   16
    IL_0045:  mul
    IL_0046:  conv.r4
    IL_0047:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_004c:  ldc.r4     8.
    IL_0051:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0056:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_005b:  stloc.s    V_4
    IL_005d:  ldarg.1
    IL_005e:  ldflda     valuetype [Engine]Engine.Point2 Game.SpawnChunk::Point
    IL_0063:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0068:  ldc.i4.1
    IL_0069:  add
    IL_006a:  ldc.i4.s   16
    IL_006c:  mul
    IL_006d:  conv.r4
    IL_006e:  ldarg.1
    IL_006f:  ldflda     valuetype [Engine]Engine.Point2 Game.SpawnChunk::Point
    IL_0074:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0079:  ldc.i4.1
    IL_007a:  add
    IL_007b:  ldc.i4.s   16
    IL_007d:  mul
    IL_007e:  conv.r4
    IL_007f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0084:  ldc.r4     8.
    IL_0089:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_008e:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0093:  stloc.s    V_5
    IL_0095:  ldarg.0
    IL_0096:  ldloc.0
    IL_0097:  ldfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/'<>c__DisplayClass26_0'::spawnPool
    IL_009c:  ldloc.s    V_4
    IL_009e:  ldloc.s    V_5
    IL_00a0:  call       instance int32 Game.SubsystemCreatureSpawn::CountCreaturesInArea(valuetype Game.SpawnPool,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2)
    IL_00a5:  stloc.s    V_6
    IL_00a7:  ldc.i4.0
    IL_00a8:  stloc.s    V_7
    IL_00aa:  br         IL_0166

    IL_00af:  newobj     instance void Game.SubsystemCreatureSpawn/'<>c__DisplayClass26_1'::.ctor()
    IL_00b4:  stloc.s    V_8
    IL_00b6:  ldloc.s    V_8
    IL_00b8:  ldloc.0
    IL_00b9:  stfld      class Game.SubsystemCreatureSpawn/'<>c__DisplayClass26_0' Game.SubsystemCreatureSpawn/'<>c__DisplayClass26_1'::'CS$<>8__locals1'
    IL_00be:  ldloc.s    V_8
    IL_00c0:  ldarg.0
    IL_00c1:  call       instance valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn::GetRandomSpawnLocationType()
    IL_00c6:  stfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/'<>c__DisplayClass26_1'::spawnLocationType
    IL_00cb:  ldloc.s    V_8
    IL_00cd:  ldarg.0
    IL_00ce:  ldarg.1
    IL_00cf:  ldloc.s    V_8
    IL_00d1:  ldfld      valuetype Game.SpawnLocationType Game.SubsystemCreatureSpawn/'<>c__DisplayClass26_1'::spawnLocationType
    IL_00d6:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemCreatureSpawn::GetRandomChunkSpawnPoint(class Game.SpawnChunk,
                                                                                                                                                                     valuetype Game.SpawnLocationType)
    IL_00db:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemCreatureSpawn/'<>c__DisplayClass26_1'::spawnPoint
    IL_00e0:  ldloc.s    V_8
    IL_00e2:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemCreatureSpawn/'<>c__DisplayClass26_1'::spawnPoint
    IL_00e7:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_HasValue()
    IL_00ec:  brfalse.s  IL_0160

    IL_00ee:  ldarg.0
    IL_00ef:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemCreatureSpawn/CreatureType> Game.SubsystemCreatureSpawn::m_creatureTypes
    IL_00f4:  ldloc.s    V_8
    IL_00f6:  ldftn      instance bool Game.SubsystemCreatureSpawn/'<>c__DisplayClass26_1'::'<SpawnChunkCreatures>b__0'(class Game.SubsystemCreatureSpawn/CreatureType)
    IL_00fc:  newobj     instance void class [System.Runtime]System.Func`2<class Game.SubsystemCreatureSpawn/CreatureType,bool>::.ctor(object,
                                                                                                                                       native int)
    IL_0101:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class Game.SubsystemCreatureSpawn/CreatureType>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                        class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0106:  stloc.s    V_9
    IL_0108:  ldloc.s    V_9
    IL_010a:  ldloc.s    V_8
    IL_010c:  ldftn      instance float32 Game.SubsystemCreatureSpawn/'<>c__DisplayClass26_1'::'<SpawnChunkCreatures>b__1'(class Game.SubsystemCreatureSpawn/CreatureType)
    IL_0112:  newobj     instance void class [System.Runtime]System.Func`2<class Game.SubsystemCreatureSpawn/CreatureType,float32>::.ctor(object,
                                                                                                                                          native int)
    IL_0117:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!1> [System.Linq]System.Linq.Enumerable::Select<class Game.SubsystemCreatureSpawn/CreatureType,float32>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                 class [System.Runtime]System.Func`2<!!0,!!1>)
    IL_011c:  stloc.s    V_10
    IL_011e:  ldarg.0
    IL_011f:  ldloc.s    V_10
    IL_0121:  call       instance int32 Game.SubsystemCreatureSpawn::GetRandomWeightedItem(class [System.Runtime]System.Collections.Generic.IEnumerable`1<float32>)
    IL_0126:  stloc.s    V_11
    IL_0128:  ldloc.s    V_11
    IL_012a:  ldc.i4.0
    IL_012b:  blt.s      IL_0160

    IL_012d:  ldloc.s    V_9
    IL_012f:  ldloc.s    V_11
    IL_0131:  call       !!0 [System.Linq]System.Linq.Enumerable::ElementAt<class Game.SubsystemCreatureSpawn/CreatureType>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                            int32)
    IL_0136:  stloc.s    V_12
    IL_0138:  ldloc.s    V_12
    IL_013a:  ldfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32> Game.SubsystemCreatureSpawn/CreatureType::SpawnFunction
    IL_013f:  ldloc.s    V_12
    IL_0141:  ldloc.s    V_8
    IL_0143:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemCreatureSpawn/'<>c__DisplayClass26_1'::spawnPoint
    IL_0148:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
    IL_014d:  callvirt   instance !2 class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,int32>::Invoke(!0,
                                                                                                                                                                       !1)
    IL_0152:  stloc.s    V_13
    IL_0154:  ldloc.3
    IL_0155:  ldloc.s    V_13
    IL_0157:  add
    IL_0158:  stloc.3
    IL_0159:  ldloc.s    V_6
    IL_015b:  ldloc.s    V_13
    IL_015d:  add
    IL_015e:  stloc.s    V_6
    IL_0160:  ldloc.s    V_7
    IL_0162:  ldc.i4.1
    IL_0163:  add
    IL_0164:  stloc.s    V_7
    IL_0166:  ldloc.s    V_7
    IL_0168:  ldarg.3
    IL_0169:  bge.s      IL_0177

    IL_016b:  ldloc.3
    IL_016c:  ldloc.1
    IL_016d:  bge.s      IL_0177

    IL_016f:  ldloc.s    V_6
    IL_0171:  ldloc.2
    IL_0172:  blt        IL_00af

    IL_0177:  ret
  } // end of method SubsystemCreatureSpawn::SpawnChunkCreatures

  .method private hidebysig instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> 
          SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                         string templateName,
                         valuetype [Engine]Engine.Point3 point,
                         int32 count) cil managed
  {
    // 代码大小       290 (0x122)
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
    IL_0008:  br         IL_0113

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
    IL_0073:  brfalse    IL_010f

    IL_0078:  ldarg.1
    IL_0079:  ldfld      class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32> Game.SubsystemCreatureSpawn/CreatureType::SpawnSuitabilityFunction
    IL_007e:  ldarg.1
    IL_007f:  ldloca.s   V_3
    IL_0081:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
    IL_0086:  callvirt   instance !2 class [System.Runtime]System.Func`3<class Game.SubsystemCreatureSpawn/CreatureType,valuetype [Engine]Engine.Point3,float32>::Invoke(!0,
                                                                                                                                                                         !1)
    IL_008b:  ldc.r4     0.0
    IL_0090:  ble.un.s   IL_010f

    IL_0092:  ldloca.s   V_4
    IL_0094:  ldloca.s   V_3
    IL_0096:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
    IL_009b:  ldfld      int32 [Engine]Engine.Point3::X
    IL_00a0:  conv.r4
    IL_00a1:  ldarg.0
    IL_00a2:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_00a7:  ldc.r4     0.40000001
    IL_00ac:  ldc.r4     0.60000002
    IL_00b1:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00b6:  add
    IL_00b7:  ldloca.s   V_3
    IL_00b9:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
    IL_00be:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00c3:  conv.r4
    IL_00c4:  ldc.r4     1.1
    IL_00c9:  add
    IL_00ca:  ldloca.s   V_3
    IL_00cc:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
    IL_00d1:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_00d6:  conv.r4
    IL_00d7:  ldarg.0
    IL_00d8:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_00dd:  ldc.r4     0.40000001
    IL_00e2:  ldc.r4     0.60000002
    IL_00e7:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00ec:  add
    IL_00ed:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00f2:  ldarg.0
    IL_00f3:  ldarg.2
    IL_00f4:  ldloc.s    V_4
    IL_00f6:  call       instance class [EntitySystem]GameEntitySystem.Entity Game.SubsystemCreatureSpawn::SpawnCreature(string,
                                                                                                                         valuetype [Engine]Engine.Vector3)
    IL_00fb:  stloc.s    V_5
    IL_00fd:  ldloc.s    V_5
    IL_00ff:  brfalse.s  IL_010f

    IL_0101:  ldloc.0
    IL_0102:  ldloc.s    V_5
    IL_0104:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::Add(!0)
    IL_0109:  ldarg.s    count
    IL_010b:  ldc.i4.1
    IL_010c:  sub
    IL_010d:  starg.s    count
    IL_010f:  ldloc.1
    IL_0110:  ldc.i4.1
    IL_0111:  add
    IL_0112:  stloc.1
    IL_0113:  ldarg.s    count
    IL_0115:  ldc.i4.0
    IL_0116:  ble.s      IL_0120

    IL_0118:  ldloc.1
    IL_0119:  ldc.i4.s   50
    IL_011b:  blt        IL_000d

    IL_0120:  ldloc.0
    IL_0121:  ret
  } // end of method SubsystemCreatureSpawn::SpawnCreatures

  .method private hidebysig instance class [EntitySystem]GameEntitySystem.Entity 
          SpawnCreature(string templateName,
                        valuetype [Engine]Engine.Vector3 position) cil managed
  {
    // 代码大小       127 (0x7f)
    .maxstack  5
    .locals init (class [EntitySystem]GameEntitySystem.Entity V_0,
             class [EntitySystem]GameEntitySystem.Entity V_1,
             class [System.Runtime]System.Exception V_2)
    .try
    {
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.SubsystemEntityFactory Game.SubsystemCreatureSpawn::m_subsystemEntityFactory
      IL_0006:  ldarg.1
      IL_0007:  ldc.i4.1
      IL_0008:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity Game.SubsystemEntityFactory::CreateEntity(string,
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
      IL_0046:  ldarg.0
      IL_0047:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
      IL_004c:  ldloc.0
      IL_004d:  callvirt   instance void [EntitySystem]GameEntitySystem.Project::AddEntity(class [EntitySystem]GameEntitySystem.Entity)
      IL_0052:  ldloc.0
      IL_0053:  stloc.1
      IL_0054:  leave.s    IL_007d

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0056:  stloc.2
      IL_0057:  ldstr      "Unable to spawn creature with template \"{0}\". Reas"
      + "on: {1}"
      IL_005c:  ldc.i4.2
      IL_005d:  newarr     [System.Runtime]System.Object
      IL_0062:  dup
      IL_0063:  ldc.i4.0
      IL_0064:  ldarg.1
      IL_0065:  stelem.ref
      IL_0066:  dup
      IL_0067:  ldc.i4.1
      IL_0068:  ldloc.2
      IL_0069:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_006e:  stelem.ref
      IL_006f:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_0074:  call       void [Engine]Engine.Log::Error(string)
      IL_0079:  ldnull
      IL_007a:  stloc.1
      IL_007b:  leave.s    IL_007d

    }  // end handler
    IL_007d:  ldloc.1
    IL_007e:  ret
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
          GetRandomSpawnPoint(valuetype Game.SpawnLocationType spawnLocationType) cil managed
  {
    // 代码大小       193 (0xc1)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> V_4,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> V_5)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br         IL_00ae

    IL_0007:  ldarg.0
    IL_0008:  ldfld      class Game.SubsystemDrawing Game.SubsystemCreatureSpawn::m_subsystemDrawing
    IL_000d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_0012:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0017:  conv.i4
    IL_0018:  ldarg.0
    IL_0019:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_001e:  callvirt   instance int32 Game.Random::Sign()
    IL_0023:  ldarg.0
    IL_0024:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_0029:  ldc.i4.s   20
    IL_002b:  ldc.i4.s   40
    IL_002d:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0032:  mul
    IL_0033:  add
    IL_0034:  stloc.1
    IL_0035:  ldarg.0
    IL_0036:  ldfld      class Game.SubsystemDrawing Game.SubsystemCreatureSpawn::m_subsystemDrawing
    IL_003b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_0040:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0045:  conv.i4
    IL_0046:  ldarg.0
    IL_0047:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_004c:  ldc.i4.s   -30
    IL_004e:  ldc.i4.s   30
    IL_0050:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0055:  add
    IL_0056:  ldc.i4.2
    IL_0057:  ldc.i4.s   126
    IL_0059:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_005e:  stloc.2
    IL_005f:  ldarg.0
    IL_0060:  ldfld      class Game.SubsystemDrawing Game.SubsystemCreatureSpawn::m_subsystemDrawing
    IL_0065:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_006a:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_006f:  conv.i4
    IL_0070:  ldarg.0
    IL_0071:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_0076:  callvirt   instance int32 Game.Random::Sign()
    IL_007b:  ldarg.0
    IL_007c:  ldfld      class Game.Random Game.SubsystemCreatureSpawn::m_random
    IL_0081:  ldc.i4.s   20
    IL_0083:  ldc.i4.s   40
    IL_0085:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_008a:  mul
    IL_008b:  add
    IL_008c:  stloc.3
    IL_008d:  ldarg.0
    IL_008e:  ldloc.1
    IL_008f:  ldloc.2
    IL_0090:  ldloc.3
    IL_0091:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0096:  ldarg.1
    IL_0097:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> Game.SubsystemCreatureSpawn::ProcessSpawnPoint(valuetype [Engine]Engine.Point3,
                                                                                                                                                              valuetype Game.SpawnLocationType)
    IL_009c:  stloc.s    V_4
    IL_009e:  ldloca.s   V_4
    IL_00a0:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_HasValue()
    IL_00a5:  brfalse.s  IL_00aa

    IL_00a7:  ldloc.s    V_4
    IL_00a9:  ret

    IL_00aa:  ldloc.0
    IL_00ab:  ldc.i4.1
    IL_00ac:  add
    IL_00ad:  stloc.0
    IL_00ae:  ldloc.0
    IL_00af:  ldc.i4.s   10
    IL_00b1:  blt        IL_0007

    IL_00b6:  ldloca.s   V_5
    IL_00b8:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>
    IL_00be:  ldloc.s    V_5
    IL_00c0:  ret
  } // end of method SubsystemCreatureSpawn::GetRandomSpawnPoint

  .method private hidebysig instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> 
          ProcessSpawnPoint(valuetype [Engine]Engine.Point3 spawnPoint,
                            valuetype Game.SpawnLocationType spawnLocationType) cil managed
  {
    // 代码大小       147 (0x93)
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
    IL_0023:  ldloc.0
    IL_0024:  ldloc.2
    IL_0025:  callvirt   instance class Game.TerrainChunk Game.SubsystemTerrain::CellToChunk(int32,
                                                                                             int32)
    IL_002a:  stloc.3
    IL_002b:  ldloc.3
    IL_002c:  brfalse.s  IL_0088

    IL_002e:  ldloc.3
    IL_002f:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_0034:  ldc.i4.6
    IL_0035:  ble.s      IL_0088

    IL_0037:  ldc.i4.0
    IL_0038:  stloc.s    V_4
    IL_003a:  br.s       IL_0082

    IL_003c:  ldloca.s   V_5
    IL_003e:  ldloc.0
    IL_003f:  ldloc.1
    IL_0040:  ldloc.s    V_4
    IL_0042:  add
    IL_0043:  ldloc.2
    IL_0044:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0049:  ldarg.0
    IL_004a:  ldloc.s    V_5
    IL_004c:  ldarg.2
    IL_004d:  call       instance bool Game.SubsystemCreatureSpawn::TestSpawnPoint(valuetype [Engine]Engine.Point3,
                                                                                   valuetype Game.SpawnLocationType)
    IL_0052:  brfalse.s  IL_005c

    IL_0054:  ldloc.s    V_5
    IL_0056:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::.ctor(!0)
    IL_005b:  ret

    IL_005c:  ldloca.s   V_6
    IL_005e:  ldloc.0
    IL_005f:  ldloc.1
    IL_0060:  ldloc.s    V_4
    IL_0062:  sub
    IL_0063:  ldloc.2
    IL_0064:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0069:  ldarg.0
    IL_006a:  ldloc.s    V_6
    IL_006c:  ldarg.2
    IL_006d:  call       instance bool Game.SubsystemCreatureSpawn::TestSpawnPoint(valuetype [Engine]Engine.Point3,
                                                                                   valuetype Game.SpawnLocationType)
    IL_0072:  brfalse.s  IL_007c

    IL_0074:  ldloc.s    V_6
    IL_0076:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::.ctor(!0)
    IL_007b:  ret

    IL_007c:  ldloc.s    V_4
    IL_007e:  ldc.i4.1
    IL_007f:  add
    IL_0080:  stloc.s    V_4
    IL_0082:  ldloc.s    V_4
    IL_0084:  ldc.i4.s   30
    IL_0086:  blt.s      IL_003c

    IL_0088:  ldloca.s   V_7
    IL_008a:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>
    IL_0090:  ldloc.s    V_7
    IL_0092:  ret
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
    IL_002c:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0031:  ldloc.0
    IL_0032:  ldloc.1
    IL_0033:  ldloc.2
    IL_0034:  callvirt   instance int32 Game.TerrainData::GetCellLightFast(int32,
                                                                           int32,
                                                                           int32)
    IL_0039:  stloc.3
    IL_003a:  ldarg.0
    IL_003b:  ldfld      class Game.SubsystemSky Game.SubsystemCreatureSpawn::m_subsystemSky
    IL_0040:  callvirt   instance int32 Game.SubsystemSky::get_LightValue()
    IL_0045:  ldloc.3
    IL_0046:  sub
    IL_0047:  ldc.i4.3
    IL_0048:  ble.s      IL_004c

    IL_004a:  ldc.i4.0
    IL_004b:  ret

    IL_004c:  ldarg.0
    IL_004d:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0052:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0057:  ldloc.0
    IL_0058:  ldloc.1
    IL_0059:  ldc.i4.1
    IL_005a:  sub
    IL_005b:  ldloc.2
    IL_005c:  callvirt   instance int32 Game.TerrainData::GetCellContentsFast(int32,
                                                                              int32,
                                                                              int32)
    IL_0061:  stloc.s    V_4
    IL_0063:  ldarg.0
    IL_0064:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0069:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_006e:  ldloc.0
    IL_006f:  ldloc.1
    IL_0070:  ldloc.2
    IL_0071:  callvirt   instance int32 Game.TerrainData::GetCellContentsFast(int32,
                                                                              int32,
                                                                              int32)
    IL_0076:  stloc.s    V_5
    IL_0078:  ldarg.0
    IL_0079:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_007e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0083:  ldloc.0
    IL_0084:  ldloc.1
    IL_0085:  ldc.i4.1
    IL_0086:  add
    IL_0087:  ldloc.2
    IL_0088:  callvirt   instance int32 Game.TerrainData::GetCellContentsFast(int32,
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
    IL_00f7:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00fc:  ldloc.0
    IL_00fd:  ldloc.1
    IL_00fe:  ldloc.2
    IL_00ff:  callvirt   instance int32 Game.TerrainData::GetCellLightFast(int32,
                                                                           int32,
                                                                           int32)
    IL_0104:  stloc.s    V_10
    IL_0106:  ldarg.0
    IL_0107:  ldfld      class Game.SubsystemSky Game.SubsystemCreatureSpawn::m_subsystemSky
    IL_010c:  callvirt   instance int32 Game.SubsystemSky::get_LightValue()
    IL_0111:  ldloc.s    V_10
    IL_0113:  sub
    IL_0114:  ldc.i4.5
    IL_0115:  bge.s      IL_0119

    IL_0117:  ldc.i4.0
    IL_0118:  ret

    IL_0119:  ldarg.0
    IL_011a:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_011f:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0124:  ldloc.0
    IL_0125:  ldloc.1
    IL_0126:  ldc.i4.1
    IL_0127:  sub
    IL_0128:  ldloc.2
    IL_0129:  callvirt   instance int32 Game.TerrainData::GetCellContentsFast(int32,
                                                                              int32,
                                                                              int32)
    IL_012e:  stloc.s    V_11
    IL_0130:  ldarg.0
    IL_0131:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0136:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_013b:  ldloc.0
    IL_013c:  ldloc.1
    IL_013d:  ldloc.2
    IL_013e:  callvirt   instance int32 Game.TerrainData::GetCellContentsFast(int32,
                                                                              int32,
                                                                              int32)
    IL_0143:  stloc.s    V_12
    IL_0145:  ldarg.0
    IL_0146:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_014b:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0150:  ldloc.0
    IL_0151:  ldloc.1
    IL_0152:  ldc.i4.1
    IL_0153:  add
    IL_0154:  ldloc.2
    IL_0155:  callvirt   instance int32 Game.TerrainData::GetCellContentsFast(int32,
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
    IL_01c1:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_01c6:  ldloc.0
    IL_01c7:  ldloc.1
    IL_01c8:  ldloc.2
    IL_01c9:  callvirt   instance int32 Game.TerrainData::GetCellContentsFast(int32,
                                                                              int32,
                                                                              int32)
    IL_01ce:  stloc.s    V_17
    IL_01d0:  ldarg.0
    IL_01d1:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_01d6:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_01db:  ldloc.0
    IL_01dc:  ldloc.1
    IL_01dd:  ldc.i4.1
    IL_01de:  add
    IL_01df:  ldloc.2
    IL_01e0:  callvirt   instance int32 Game.TerrainData::GetCellContentsFast(int32,
                                                                              int32,
                                                                              int32)
    IL_01e5:  stloc.s    V_18
    IL_01e7:  ldarg.0
    IL_01e8:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_01ed:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_01f2:  ldloc.0
    IL_01f3:  ldloc.1
    IL_01f4:  ldc.i4.2
    IL_01f5:  add
    IL_01f6:  ldloc.2
    IL_01f7:  callvirt   instance int32 Game.TerrainData::GetCellContentsFast(int32,
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
          CountCreatures(valuetype Game.SpawnPool spawnPool) cil managed
  {
    // 代码大小       73 (0x49)
    .maxstack  3
    .locals init (class Game.SubsystemCreatureSpawn/'<>c__DisplayClass33_0' V_0)
    IL_0000:  newobj     instance void Game.SubsystemCreatureSpawn/'<>c__DisplayClass33_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      valuetype Game.SpawnPool Game.SubsystemCreatureSpawn/'<>c__DisplayClass33_0'::spawnPool
    IL_000d:  ldarg.0
    IL_000e:  call       instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class Game.ComponentCreature,bool> Game.SubsystemCreatureSpawn::get_Creatures()
    IL_0013:  ldsfld     class [System.Runtime]System.Func`2<class Game.ComponentCreature,class Game.ComponentCreature> Game.SubsystemCreatureSpawn/'<>c'::'<>9__33_0'
    IL_0018:  dup
    IL_0019:  brtrue.s   IL_0032

    IL_001b:  pop
    IL_001c:  ldsfld     class Game.SubsystemCreatureSpawn/'<>c' Game.SubsystemCreatureSpawn/'<>c'::'<>9'
    IL_0021:  ldftn      instance class Game.ComponentCreature Game.SubsystemCreatureSpawn/'<>c'::'<CountCreatures>b__33_0'(class Game.ComponentCreature)
    IL_0027:  newobj     instance void class [System.Runtime]System.Func`2<class Game.ComponentCreature,class Game.ComponentCreature>::.ctor(object,
                                                                                                                                             native int)
    IL_002c:  dup
    IL_002d:  stsfld     class [System.Runtime]System.Func`2<class Game.ComponentCreature,class Game.ComponentCreature> Game.SubsystemCreatureSpawn/'<>c'::'<>9__33_0'
    IL_0032:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!1> [System.Linq]System.Linq.Enumerable::Select<class Game.ComponentCreature,class Game.ComponentCreature>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                    class [System.Runtime]System.Func`2<!!0,!!1>)
    IL_0037:  ldloc.0
    IL_0038:  ldftn      instance bool Game.SubsystemCreatureSpawn/'<>c__DisplayClass33_0'::'<CountCreatures>b__1'(class Game.ComponentCreature)
    IL_003e:  newobj     instance void class [System.Runtime]System.Func`2<class Game.ComponentCreature,bool>::.ctor(object,
                                                                                                                     native int)
    IL_0043:  call       int32 [System.Linq]System.Linq.Enumerable::Count<class Game.ComponentCreature>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                        class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0048:  ret
  } // end of method SubsystemCreatureSpawn::CountCreatures

  .method private hidebysig instance int32 
          CountCreaturesInArea(valuetype Game.SpawnPool spawnPool,
                               valuetype [Engine]Engine.Vector2 c1,
                               valuetype [Engine]Engine.Vector2 c2) cil managed
  {
    // 代码大小       440 (0x1b8)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             class Game.ComponentBody V_5,
             class Game.ComponentCreature V_6,
             valuetype [Engine]Engine.Vector3 V_7,
             int32 V_8,
             int32 V_9,
             class Game.SpawnChunk V_10,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnEntityData> V_11,
             valuetype [Engine]Engine.Vector3 V_12)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldarg.0
    IL_0003:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.SubsystemCreatureSpawn::m_componentBodies
    IL_0008:  callvirt   instance void class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::Clear()
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.SubsystemBodies Game.SubsystemCreatureSpawn::m_subsystemBodies
    IL_0013:  ldarg.2
    IL_0014:  ldarg.3
    IL_0015:  ldarg.0
    IL_0016:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.SubsystemCreatureSpawn::m_componentBodies
    IL_001b:  callvirt   instance void Game.SubsystemBodies::FindBodiesInArea(valuetype [Engine]Engine.Vector2,
                                                                              valuetype [Engine]Engine.Vector2,
                                                                              class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>)
    IL_0020:  ldc.i4.0
    IL_0021:  stloc.s    V_4
    IL_0023:  br.s       IL_00a0

    IL_0025:  ldarg.0
    IL_0026:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.SubsystemCreatureSpawn::m_componentBodies
    IL_002b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::get_Array()
    IL_0030:  ldloc.s    V_4
    IL_0032:  ldelem.ref
    IL_0033:  stloc.s    V_5
    IL_0035:  ldloc.s    V_5
    IL_0037:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_003c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>()
    IL_0041:  stloc.s    V_6
    IL_0043:  ldloc.s    V_6
    IL_0045:  brfalse.s  IL_009a

    IL_0047:  ldloc.s    V_6
    IL_0049:  callvirt   instance valuetype Game.SpawnPool Game.ComponentCreature::get_SpawnPool()
    IL_004e:  ldarg.1
    IL_004f:  bne.un.s   IL_009a

    IL_0051:  ldloc.s    V_5
    IL_0053:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0058:  stloc.s    V_7
    IL_005a:  ldloc.s    V_7
    IL_005c:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0061:  ldarg.2
    IL_0062:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0067:  blt.un.s   IL_009a

    IL_0069:  ldloc.s    V_7
    IL_006b:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0070:  ldarg.3
    IL_0071:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0076:  bgt.un.s   IL_009a

    IL_0078:  ldloc.s    V_7
    IL_007a:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_007f:  ldarg.2
    IL_0080:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0085:  blt.un.s   IL_009a

    IL_0087:  ldloc.s    V_7
    IL_0089:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_008e:  ldarg.3
    IL_008f:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0094:  bgt.un.s   IL_009a

    IL_0096:  ldloc.0
    IL_0097:  ldc.i4.1
    IL_0098:  add
    IL_0099:  stloc.0
    IL_009a:  ldloc.s    V_4
    IL_009c:  ldc.i4.1
    IL_009d:  add
    IL_009e:  stloc.s    V_4
    IL_00a0:  ldloc.s    V_4
    IL_00a2:  ldarg.0
    IL_00a3:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.SubsystemCreatureSpawn::m_componentBodies
    IL_00a8:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::get_Count()
    IL_00ad:  blt        IL_0025

    IL_00b2:  ldarg.2
    IL_00b3:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00b8:  ldc.r4     16.
    IL_00bd:  div
    IL_00be:  conv.i4
    IL_00bf:  ldarg.2
    IL_00c0:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00c5:  ldc.r4     16.
    IL_00ca:  div
    IL_00cb:  conv.i4
    IL_00cc:  stloc.1
    IL_00cd:  ldarg.3
    IL_00ce:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00d3:  ldc.r4     16.
    IL_00d8:  div
    IL_00d9:  conv.i4
    IL_00da:  stloc.2
    IL_00db:  ldarg.3
    IL_00dc:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00e1:  ldc.r4     16.
    IL_00e6:  div
    IL_00e7:  conv.i4
    IL_00e8:  stloc.3
    IL_00e9:  stloc.s    V_8
    IL_00eb:  br         IL_01ae

    IL_00f0:  ldloc.1
    IL_00f1:  stloc.s    V_9
    IL_00f3:  br         IL_01a0

    IL_00f8:  ldarg.0
    IL_00f9:  ldfld      class Game.SubsystemSpawn Game.SubsystemCreatureSpawn::m_subsystemSpawn
    IL_00fe:  ldloc.s    V_8
    IL_0100:  ldloc.s    V_9
    IL_0102:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_0107:  callvirt   instance class Game.SpawnChunk Game.SubsystemSpawn::GetSpawnChunk(valuetype [Engine]Engine.Point2)
    IL_010c:  stloc.s    V_10
    IL_010e:  ldloc.s    V_10
    IL_0110:  brfalse    IL_019a

    IL_0115:  ldloc.s    V_10
    IL_0117:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData> Game.SpawnChunk::SpawnsData
    IL_011c:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData>::GetEnumerator()
    IL_0121:  stloc.s    V_11
    .try
    {
      IL_0123:  br.s       IL_0181

      IL_0125:  ldloca.s   V_11
      IL_0127:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnEntityData>::get_Current()
      IL_012c:  pop
      IL_012d:  ldloc.s    V_10
      IL_012f:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData> Game.SpawnChunk::SpawnsData
      IL_0134:  ldc.i4.0
      IL_0135:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData>::get_Item(int32)
      IL_013a:  ldfld      valuetype [Engine]Engine.Vector3 Game.SpawnEntityData::Position
      IL_013f:  stloc.s    V_12
      IL_0141:  ldloc.s    V_12
      IL_0143:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0148:  ldarg.2
      IL_0149:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_014e:  blt.un.s   IL_0181

      IL_0150:  ldloc.s    V_12
      IL_0152:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0157:  ldarg.3
      IL_0158:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_015d:  bgt.un.s   IL_0181

      IL_015f:  ldloc.s    V_12
      IL_0161:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0166:  ldarg.2
      IL_0167:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_016c:  blt.un.s   IL_0181

      IL_016e:  ldloc.s    V_12
      IL_0170:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0175:  ldarg.3
      IL_0176:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_017b:  bgt.un.s   IL_0181

      IL_017d:  ldloc.0
      IL_017e:  ldc.i4.1
      IL_017f:  add
      IL_0180:  stloc.0
      IL_0181:  ldloca.s   V_11
      IL_0183:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnEntityData>::MoveNext()
      IL_0188:  brtrue.s   IL_0125

      IL_018a:  leave.s    IL_019a

    }  // end .try
    finally
    {
      IL_018c:  ldloca.s   V_11
      IL_018e:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnEntityData>
      IL_0194:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0199:  endfinally
    }  // end handler
    IL_019a:  ldloc.s    V_9
    IL_019c:  ldc.i4.1
    IL_019d:  add
    IL_019e:  stloc.s    V_9
    IL_01a0:  ldloc.s    V_9
    IL_01a2:  ldloc.3
    IL_01a3:  ble        IL_00f8

    IL_01a8:  ldloc.s    V_8
    IL_01aa:  ldc.i4.1
    IL_01ab:  add
    IL_01ac:  stloc.s    V_8
    IL_01ae:  ldloc.s    V_8
    IL_01b0:  ldloc.2
    IL_01b1:  ble        IL_00f0

    IL_01b6:  ldloc.0
    IL_01b7:  ret
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

  .method private hidebysig static void  GetSpawnPoolLimits(valuetype Game.SpawnPool spawnPool,
                                                            [out] int32& totalLimit,
                                                            [out] int32& areaLimit) cil managed
  {
    // 代码大小       34 (0x22)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  bne.un.s   IL_000c

    IL_0004:  ldarg.1
    IL_0005:  ldc.i4.s   16
    IL_0007:  stind.i4
    IL_0008:  ldarg.2
    IL_0009:  ldc.i4.4
    IL_000a:  stind.i4
    IL_000b:  ret

    IL_000c:  ldarg.0
    IL_000d:  ldc.i4.2
    IL_000e:  bne.un.s   IL_0017

    IL_0010:  ldarg.1
    IL_0011:  ldc.i4.4
    IL_0012:  stind.i4
    IL_0013:  ldarg.2
    IL_0014:  ldc.i4.2
    IL_0015:  stind.i4
    IL_0016:  ret

    IL_0017:  ldstr      "Unknown spawn pool."
    IL_001c:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0021:  throw
  } // end of method SubsystemCreatureSpawn::GetSpawnPoolLimits

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
          '<Update>b__20_0'(int32 max) cil managed
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
  } // end of method SubsystemCreatureSpawn::'<Update>b__20_0'

  .method private hidebysig instance int32 
          '<Update>b__20_1'(int32 max) cil managed
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
  } // end of method SubsystemCreatureSpawn::'<Update>b__20_1'

  .method private hidebysig instance void 
          '<Load>b__21_0'(class Game.SpawnChunk chunk) cil managed
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
  } // end of method SubsystemCreatureSpawn::'<Load>b__21_0'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_0'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
    IL_0025:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_002a:  ldarg.2
    IL_002b:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0030:  ldarg.2
    IL_0031:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0036:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0052:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_0057:  stloc.1
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_005e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0063:  ldarg.2
    IL_0064:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_006f:  ldc.i4.1
    IL_0070:  sub
    IL_0071:  ldarg.2
    IL_0072:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0077:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_007c:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0081:  stloc.2
    IL_0082:  ldarg.0
    IL_0083:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0088:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_008d:  ldarg.2
    IL_008e:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0093:  ldarg.2
    IL_0094:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0099:  callvirt   instance int32 Game.TerrainData::GetTopHeightFast(int32,
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

    IL_00d2:  ldc.r4     2.
    IL_00d7:  ret

    IL_00d8:  ldc.r4     0.0
    IL_00dd:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_0'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_1'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_1'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_2'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
    IL_0025:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_002a:  ldarg.2
    IL_002b:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0030:  ldarg.2
    IL_0031:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0036:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_003b:  stloc.1
    IL_003c:  ldarg.0
    IL_003d:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0042:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0047:  ldarg.2
    IL_0048:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004d:  ldarg.2
    IL_004e:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0053:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_005e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0063:  ldarg.2
    IL_0064:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_006f:  ldc.i4.1
    IL_0070:  sub
    IL_0071:  ldarg.2
    IL_0072:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0077:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_007c:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0081:  stloc.2
    IL_0082:  ldarg.0
    IL_0083:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0088:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_008d:  ldarg.2
    IL_008e:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0093:  ldarg.2
    IL_0094:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0099:  callvirt   instance int32 Game.TerrainData::GetTopHeightFast(int32,
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

    IL_00d6:  ldc.r4     2.
    IL_00db:  ret

    IL_00dc:  ldc.r4     0.0
    IL_00e1:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_2'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_3'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_3'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_4'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
    IL_0025:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_002a:  ldarg.2
    IL_002b:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0030:  ldarg.2
    IL_0031:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0036:  ldc.i4.1
    IL_0037:  sub
    IL_0038:  ldarg.2
    IL_0039:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_003e:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_0043:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0048:  stloc.1
    IL_0049:  ldarg.0
    IL_004a:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_004f:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0054:  ldarg.2
    IL_0055:  ldfld      int32 [Engine]Engine.Point3::X
    IL_005a:  ldarg.2
    IL_005b:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0060:  callvirt   instance int32 Game.TerrainData::GetTopHeightFast(int32,
                                                                           int32)
    IL_0065:  stloc.2
    IL_0066:  ldloc.0
    IL_0067:  ldc.r4     -40.
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

    IL_0091:  ldc.r4     2.
    IL_0096:  ret

    IL_0097:  ldc.r4     0.0
    IL_009c:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_4'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_5'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_5'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_6'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
    IL_0024:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0052:  ldc.i4.1
    IL_0053:  sub
    IL_0054:  ldarg.2
    IL_0055:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_005a:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_005f:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0064:  stloc.1
    IL_0065:  ldc.r4     30.
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

    IL_0082:  ldc.r4     0.30000001
    IL_0087:  ret

    IL_0088:  ldc.r4     0.0
    IL_008d:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_6'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_7'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_7'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_8'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
    IL_0024:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0052:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_0057:  stloc.1
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_005e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0063:  ldarg.2
    IL_0064:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_006f:  ldc.i4.1
    IL_0070:  sub
    IL_0071:  ldarg.2
    IL_0072:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0077:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_007c:  call       int32 Game.TerrainData::ExtractContents(int32)
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

    IL_00a3:  ldc.r4     0.1
    IL_00a8:  ret

    IL_00a9:  ldc.r4     0.0
    IL_00ae:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_8'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_9'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
    IL_0015:  ldc.i4.2
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_9'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_10'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
    IL_0024:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0052:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_0057:  stloc.1
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_005e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0063:  ldarg.2
    IL_0064:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_006f:  ldc.i4.1
    IL_0070:  sub
    IL_0071:  ldarg.2
    IL_0072:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0077:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_007c:  call       int32 Game.TerrainData::ExtractContents(int32)
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

    IL_00a3:  ldc.r4     0.1
    IL_00a8:  ret

    IL_00a9:  ldc.r4     0.0
    IL_00ae:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_10'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_11'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
    IL_0015:  ldc.i4.2
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_11'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_12'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
    IL_0024:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0052:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_0057:  stloc.1
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_005e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0063:  ldarg.2
    IL_0064:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_006f:  ldc.i4.1
    IL_0070:  sub
    IL_0071:  ldarg.2
    IL_0072:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0077:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_007c:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0081:  stloc.2
    IL_0082:  ldc.r4     200.
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_12'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_13'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_13'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_14'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
    IL_0024:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0052:  ldc.i4.1
    IL_0053:  sub
    IL_0054:  ldarg.2
    IL_0055:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_005a:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_005f:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0064:  stloc.1
    IL_0065:  ldc.r4     20.
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

    IL_0082:  ldc.r4     0.1
    IL_0087:  ret

    IL_0088:  ldc.r4     0.0
    IL_008d:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_14'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_15'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
    IL_000f:  ldc.i4.2
    IL_0010:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0015:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_001a:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_001f:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_15'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_16'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
    IL_0024:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0052:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_0057:  stloc.1
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_005e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0063:  ldarg.2
    IL_0064:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_006f:  ldc.i4.1
    IL_0070:  sub
    IL_0071:  ldarg.2
    IL_0072:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0077:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_007c:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0081:  stloc.2
    IL_0082:  ldc.r4     20.
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

    IL_00a3:  ldc.r4     0.1
    IL_00a8:  ret

    IL_00a9:  ldc.r4     0.0
    IL_00ae:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_16'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_17'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
    IL_000f:  ldc.i4.2
    IL_0010:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0015:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_001a:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_001f:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_17'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_18'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
    IL_0024:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0052:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_0057:  stloc.1
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_005e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0063:  ldarg.2
    IL_0064:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_006f:  ldc.i4.1
    IL_0070:  sub
    IL_0071:  ldarg.2
    IL_0072:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0077:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_007c:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0081:  stloc.2
    IL_0082:  ldc.r4     100.
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

    IL_009d:  ldc.r4     7.5000003e-002
    IL_00a2:  ret

    IL_00a3:  ldc.r4     0.0
    IL_00a8:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_18'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_19'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_19'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_20'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
    IL_0024:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0052:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_0057:  stloc.1
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_005e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0063:  ldarg.2
    IL_0064:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_006f:  ldc.i4.1
    IL_0070:  sub
    IL_0071:  ldarg.2
    IL_0072:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0077:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_007c:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0081:  stloc.2
    IL_0082:  ldc.r4     100.
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

    IL_009d:  ldc.r4     7.5000003e-002
    IL_00a2:  ret

    IL_00a3:  ldc.r4     0.0
    IL_00a8:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_20'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_21'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_21'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_22'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
    IL_0024:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0052:  ldc.i4.1
    IL_0053:  sub
    IL_0054:  ldarg.2
    IL_0055:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_005a:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_005f:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0064:  stloc.1
    IL_0065:  ldc.r4     -40.
    IL_006a:  ble.un.s   IL_007b

    IL_006c:  ldloc.0
    IL_006d:  ldc.i4.8
    IL_006e:  bge.s      IL_007b

    IL_0070:  ldloc.1
    IL_0071:  ldc.i4.s   62
    IL_0073:  bne.un.s   IL_007b

    IL_0075:  ldc.r4     0.2
    IL_007a:  ret

    IL_007b:  ldc.r4     0.0
    IL_0080:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_22'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_23'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_23'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_24'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
    IL_0024:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0052:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_0057:  stloc.1
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_005e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0063:  ldarg.2
    IL_0064:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_006f:  ldc.i4.1
    IL_0070:  sub
    IL_0071:  ldarg.2
    IL_0072:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0077:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_007c:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0081:  stloc.2
    IL_0082:  ldc.r4     30.
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_24'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_25'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       289 (0x121)
    .maxstack  7
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  ldarg.2
    IL_0012:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0017:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_25'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_26'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
    IL_0024:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0052:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_0057:  stloc.1
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_005e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0063:  ldarg.2
    IL_0064:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_006f:  ldc.i4.1
    IL_0070:  sub
    IL_0071:  ldarg.2
    IL_0072:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0077:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_007c:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0081:  stloc.2
    IL_0082:  ldc.r4     60.
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_26'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_27'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_27'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_28'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
    IL_0024:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0052:  ldc.i4.1
    IL_0053:  sub
    IL_0054:  ldarg.2
    IL_0055:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_005a:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_005f:  call       int32 Game.TerrainData::ExtractContents(int32)
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_28'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_29'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_29'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_30'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
    IL_0024:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0052:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_0057:  stloc.1
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_005e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0063:  ldarg.2
    IL_0064:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_006f:  ldc.i4.1
    IL_0070:  sub
    IL_0071:  ldarg.2
    IL_0072:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0077:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_007c:  call       int32 Game.TerrainData::ExtractContents(int32)
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_30'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_31'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_31'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_32'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
    IL_0024:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0052:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_0057:  stloc.1
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_005e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0063:  ldarg.2
    IL_0064:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_006f:  ldc.i4.1
    IL_0070:  sub
    IL_0071:  ldarg.2
    IL_0072:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0077:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_007c:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0081:  stloc.2
    IL_0082:  ldc.r4     150.
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

    IL_009d:  ldc.r4     0.1
    IL_00a2:  ret

    IL_00a3:  ldc.r4     0.0
    IL_00a8:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_32'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_33'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_33'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_34'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
    IL_0024:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0052:  ldc.i4.1
    IL_0053:  sub
    IL_0054:  ldarg.2
    IL_0055:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_005a:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_005f:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0064:  stloc.1
    IL_0065:  ldc.r4     50.
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_34'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_35'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_35'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_36'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       145 (0x91)
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
    IL_0024:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0052:  ldc.i4.1
    IL_0053:  sub
    IL_0054:  ldarg.2
    IL_0055:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_005a:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_005f:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0064:  stloc.1
    IL_0065:  ldc.r4     100.
    IL_006a:  ble.un.s   IL_008b

    IL_006c:  ldloc.0
    IL_006d:  ldc.i4.8
    IL_006e:  ble.s      IL_008b

    IL_0070:  ldloc.1
    IL_0071:  ldc.i4.8
    IL_0072:  beq.s      IL_0085

    IL_0074:  ldloc.1
    IL_0075:  ldc.i4.2
    IL_0076:  beq.s      IL_0085

    IL_0078:  ldloc.1
    IL_0079:  ldc.i4.3
    IL_007a:  beq.s      IL_0085

    IL_007c:  ldloc.1
    IL_007d:  ldc.i4.7
    IL_007e:  beq.s      IL_0085

    IL_0080:  ldloc.1
    IL_0081:  ldc.i4.s   62
    IL_0083:  bne.un.s   IL_008b

    IL_0085:  ldc.r4     5.0000001e-002
    IL_008a:  ret

    IL_008b:  ldc.r4     0.0
    IL_0090:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_36'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_37'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_37'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_38'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
    IL_0024:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0052:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_0057:  stloc.1
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_005e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0063:  ldarg.2
    IL_0064:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_006f:  ldc.i4.1
    IL_0070:  sub
    IL_0071:  ldarg.2
    IL_0072:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0077:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_007c:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0081:  stloc.2
    IL_0082:  ldc.r4     200.
    IL_0087:  ble.un.s   IL_00ac

    IL_0089:  ldloc.1
    IL_008a:  ldc.i4.8
    IL_008b:  ble.s      IL_00ac

    IL_008d:  ldloc.0
    IL_008e:  ldc.i4.2
    IL_008f:  bge.s      IL_00ac

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
    IL_00a2:  ldc.i4.s   62
    IL_00a4:  bne.un.s   IL_00ac

    IL_00a6:  ldc.r4     2.e-002
    IL_00ab:  ret

    IL_00ac:  ldc.r4     0.0
    IL_00b1:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_38'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_39'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_39'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_40'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
    IL_0024:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0052:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_0057:  stloc.1
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_005e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0063:  ldarg.2
    IL_0064:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_006f:  ldc.i4.1
    IL_0070:  sub
    IL_0071:  ldarg.2
    IL_0072:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0077:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_007c:  call       int32 Game.TerrainData::ExtractContents(int32)
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_40'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_41'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_41'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_42'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
    IL_0024:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0052:  ldc.i4.1
    IL_0053:  sub
    IL_0054:  ldarg.2
    IL_0055:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_005a:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_005f:  call       int32 Game.TerrainData::ExtractContents(int32)
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_42'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_43'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_43'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_44'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       102 (0x66)
    .maxstack  5
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  ldarg.2
    IL_0012:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0017:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_001c:  ldarg.0
    IL_001d:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0022:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0027:  ldarg.2
    IL_0028:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002d:  ldarg.2
    IL_002e:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0033:  ldc.i4.1
    IL_0034:  sub
    IL_0035:  ldarg.2
    IL_0036:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_003b:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_0040:  call       int32 Game.TerrainData::ExtractContents(int32)
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_44'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_45'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_45'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_46'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       102 (0x66)
    .maxstack  5
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  ldarg.2
    IL_0012:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0017:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_001c:  ldarg.0
    IL_001d:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0022:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0027:  ldarg.2
    IL_0028:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002d:  ldarg.2
    IL_002e:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0033:  ldc.i4.1
    IL_0034:  sub
    IL_0035:  ldarg.2
    IL_0036:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_003b:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_0040:  call       int32 Game.TerrainData::ExtractContents(int32)
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_46'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_47'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_47'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_48'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       137 (0x89)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  ldarg.2
    IL_0012:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0017:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_001c:  ldarg.0
    IL_001d:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0022:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0027:  ldarg.2
    IL_0028:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002d:  ldarg.2
    IL_002e:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0033:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_0038:  stloc.0
    IL_0039:  ldarg.0
    IL_003a:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_003f:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0044:  ldarg.2
    IL_0045:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004a:  ldarg.2
    IL_004b:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0050:  ldc.i4.1
    IL_0051:  sub
    IL_0052:  ldarg.2
    IL_0053:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0058:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_005d:  call       int32 Game.TerrainData::ExtractContents(int32)
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

    IL_007d:  ldc.r4     7.e-002
    IL_0082:  ret

    IL_0083:  ldc.r4     0.0
    IL_0088:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_48'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_49'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
    IL_000f:  ldc.i4.3
    IL_0010:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0015:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_001a:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_001f:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_49'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_50'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
    IL_0024:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0052:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_0057:  stloc.1
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_005e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0063:  ldarg.2
    IL_0064:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_006f:  ldc.i4.1
    IL_0070:  sub
    IL_0071:  ldarg.2
    IL_0072:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0077:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_007c:  call       int32 Game.TerrainData::ExtractContents(int32)
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_50'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_51'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_51'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_52'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
    IL_0024:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0052:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_0057:  stloc.1
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_005e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0063:  ldarg.2
    IL_0064:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_006f:  ldc.i4.1
    IL_0070:  sub
    IL_0071:  ldarg.2
    IL_0072:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0077:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_007c:  call       int32 Game.TerrainData::ExtractContents(int32)
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_52'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_53'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_53'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_54'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
    IL_0024:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0052:  ldc.i4.1
    IL_0053:  sub
    IL_0054:  ldarg.2
    IL_0055:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_005a:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_005f:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0064:  stloc.1
    IL_0065:  ldc.r4     20.
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_54'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_55'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_55'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_56'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       80 (0x50)
    .maxstack  4
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  ldarg.2
    IL_0012:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0017:  ldc.i4.1
    IL_0018:  sub
    IL_0019:  ldarg.2
    IL_001a:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_001f:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_0024:  call       int32 Game.TerrainData::ExtractContents(int32)
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_56'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_57'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_57'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_58'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  ldarg.2
    IL_0012:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0017:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_001c:  stloc.0
    IL_001d:  ldarg.0
    IL_001e:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0023:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0028:  ldarg.2
    IL_0029:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002e:  ldarg.2
    IL_002f:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0034:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_0039:  stloc.1
    IL_003a:  ldarg.0
    IL_003b:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0040:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0045:  ldarg.2
    IL_0046:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004b:  ldarg.2
    IL_004c:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0051:  ldc.i4.1
    IL_0052:  sub
    IL_0053:  ldarg.2
    IL_0054:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0059:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_005e:  call       int32 Game.TerrainData::ExtractContents(int32)
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

    IL_0086:  ldc.r4     1.
    IL_008b:  ret

    IL_008c:  ldc.r4     0.0
    IL_0091:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_58'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_59'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_59'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_60'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       113 (0x71)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  ldarg.2
    IL_000c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0011:  ldarg.2
    IL_0012:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0017:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_001c:  stloc.0
    IL_001d:  ldarg.0
    IL_001e:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0023:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0028:  ldarg.2
    IL_0029:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002e:  ldarg.2
    IL_002f:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0034:  ldc.i4.1
    IL_0035:  sub
    IL_0036:  ldarg.2
    IL_0037:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_003c:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_0041:  call       int32 Game.TerrainData::ExtractContents(int32)
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_60'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_61'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_61'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_62'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_62'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_63'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       22 (0x16)
    .maxstack  5
    .locals init (string V_0)
    IL_0000:  ldstr      "Shark"
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_63'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_64'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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

    IL_002b:  ldc.r4     0.5
    IL_0030:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_64'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_65'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_65'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_66'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_66'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_67'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_67'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_68'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
    IL_0024:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_68'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_69'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_69'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_70'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_70'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_71'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
    IL_0024:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0035:  ldarg.2
    IL_0036:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_003b:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
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
    IL_0056:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_005b:  ldarg.2
    IL_005c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0061:  ldloc.s    V_5
    IL_0063:  ldarg.2
    IL_0064:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0069:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_71'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_72'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
    IL_0024:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_002f:  ldarg.2
    IL_0030:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0035:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0046:  ldarg.2
    IL_0047:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004c:  ldarg.2
    IL_004d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0052:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_72'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_73'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_73'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_74'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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

    IL_0027:  ldc.r4     2.9999999e-002
    IL_002c:  ret

    IL_002d:  ldloc.0
    IL_002e:  ldc.r4     -30.
    IL_0033:  bge.un.s   IL_003b

    IL_0035:  ldc.r4     9.9999998e-003
    IL_003a:  ret

    IL_003b:  ldc.r4     0.0
    IL_0040:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_74'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_75'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_75'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_76'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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

    IL_0027:  ldc.r4     2.9999999e-002
    IL_002c:  ret

    IL_002d:  ldloc.0
    IL_002e:  ldc.r4     -30.
    IL_0033:  bge.un.s   IL_003b

    IL_0035:  ldc.r4     9.9999998e-003
    IL_003a:  ret

    IL_003b:  ldc.r4     0.0
    IL_0040:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_76'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_77'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_77'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_78'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       204 (0xcc)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemSky Game.SubsystemCreatureSpawn::m_subsystemSky
    IL_0006:  callvirt   instance float32 Game.SubsystemSky::get_LightIntensity()
    IL_000b:  ldc.r4     0.1
    IL_0010:  bge.un     IL_00c6

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
    IL_0039:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_003e:  ldarg.2
    IL_003f:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0044:  ldarg.2
    IL_0045:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_004a:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_004f:  stloc.0
    IL_0050:  ldarg.0
    IL_0051:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0056:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_005b:  ldarg.2
    IL_005c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0061:  ldarg.2
    IL_0062:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0067:  ldc.i4.1
    IL_0068:  sub
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_006f:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_0074:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0079:  stloc.1
    IL_007a:  ldarg.0
    IL_007b:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0080:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0085:  ldarg.2
    IL_0086:  ldfld      int32 [Engine]Engine.Point3::X
    IL_008b:  ldarg.2
    IL_008c:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0091:  ldc.i4.1
    IL_0092:  add
    IL_0093:  ldarg.2
    IL_0094:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0099:  callvirt   instance int32 Game.TerrainData::GetCellLightFast(int32,
                                                                           int32,
                                                                           int32)
    IL_009e:  stloc.2
    IL_009f:  ldc.r4     20.
    IL_00a4:  ble.un.s   IL_00c6

    IL_00a6:  ldloc.0
    IL_00a7:  ldc.i4.8
    IL_00a8:  blt.s      IL_00c6

    IL_00aa:  ldarg.2
    IL_00ab:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00b0:  ldc.i4.s   80
    IL_00b2:  bge.s      IL_00c6

    IL_00b4:  ldloc.2
    IL_00b5:  ldc.i4.7
    IL_00b6:  bgt.s      IL_00c6

    IL_00b8:  ldloc.1
    IL_00b9:  ldc.i4.8
    IL_00ba:  beq.s      IL_00c0

    IL_00bc:  ldloc.1
    IL_00bd:  ldc.i4.2
    IL_00be:  bne.un.s   IL_00c6

    IL_00c0:  ldc.r4     1.
    IL_00c5:  ret

    IL_00c6:  ldc.r4     0.0
    IL_00cb:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_78'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_79'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Wolf_Gray_NonVisited"
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_79'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_80'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
    IL_0006:  callvirt   instance float32 Game.SubsystemSky::get_LightIntensity()
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
    IL_0039:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_003e:  ldarg.2
    IL_003f:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0044:  ldarg.2
    IL_0045:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_004a:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_004f:  conv.r4
    IL_0050:  stloc.0
    IL_0051:  ldarg.0
    IL_0052:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0057:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_005c:  ldarg.2
    IL_005d:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0062:  ldarg.2
    IL_0063:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0068:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_006d:  conv.r4
    IL_006e:  stloc.1
    IL_006f:  ldarg.0
    IL_0070:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0075:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_007a:  ldarg.2
    IL_007b:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0080:  ldarg.2
    IL_0081:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0086:  ldc.i4.1
    IL_0087:  sub
    IL_0088:  ldarg.2
    IL_0089:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_008e:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_0093:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0098:  stloc.2
    IL_0099:  ldarg.0
    IL_009a:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_009f:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00a4:  ldarg.2
    IL_00a5:  ldfld      int32 [Engine]Engine.Point3::X
    IL_00aa:  ldarg.2
    IL_00ab:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00b0:  ldc.i4.1
    IL_00b1:  add
    IL_00b2:  ldarg.2
    IL_00b3:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_00b8:  callvirt   instance int32 Game.TerrainData::GetCellLightFast(int32,
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

    IL_00e7:  ldc.r4     1.
    IL_00ec:  ret

    IL_00ed:  ldc.r4     0.0
    IL_00f2:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_80'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_81'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Wolf_Coyote_NonVisited"
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_81'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_82'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
    IL_0006:  callvirt   instance float32 Game.SubsystemSky::get_LightIntensity()
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
    IL_0039:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_003e:  ldarg.2
    IL_003f:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0044:  ldarg.2
    IL_0045:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_004a:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_004f:  stloc.0
    IL_0050:  ldarg.0
    IL_0051:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0056:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_005b:  ldarg.2
    IL_005c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0061:  ldarg.2
    IL_0062:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0067:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_006c:  stloc.1
    IL_006d:  ldarg.0
    IL_006e:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0073:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0078:  ldarg.2
    IL_0079:  ldfld      int32 [Engine]Engine.Point3::X
    IL_007e:  ldarg.2
    IL_007f:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0084:  ldc.i4.1
    IL_0085:  sub
    IL_0086:  ldarg.2
    IL_0087:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_008c:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_0091:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0096:  stloc.2
    IL_0097:  ldarg.0
    IL_0098:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_009d:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00a2:  ldarg.2
    IL_00a3:  ldfld      int32 [Engine]Engine.Point3::X
    IL_00a8:  ldarg.2
    IL_00a9:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00ae:  ldc.i4.1
    IL_00af:  add
    IL_00b0:  ldarg.2
    IL_00b1:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_00b6:  callvirt   instance int32 Game.TerrainData::GetCellLightFast(int32,
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_82'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_83'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Bear_Brown_NonVisited"
    IL_0007:  ldarg.2
    IL_0008:  ldc.i4.1
    IL_0009:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_000e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_0013:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_83'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_84'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
    IL_0006:  callvirt   instance float32 Game.SubsystemSky::get_LightIntensity()
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
    IL_0039:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_003e:  ldarg.2
    IL_003f:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0044:  ldarg.2
    IL_0045:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_004a:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_004f:  stloc.0
    IL_0050:  ldarg.0
    IL_0051:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0056:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_005b:  ldarg.2
    IL_005c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0061:  ldarg.2
    IL_0062:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0067:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_006c:  stloc.1
    IL_006d:  ldarg.0
    IL_006e:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0073:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0078:  ldarg.2
    IL_0079:  ldfld      int32 [Engine]Engine.Point3::X
    IL_007e:  ldarg.2
    IL_007f:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0084:  ldc.i4.1
    IL_0085:  sub
    IL_0086:  ldarg.2
    IL_0087:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_008c:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_0091:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0096:  stloc.2
    IL_0097:  ldarg.0
    IL_0098:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_009d:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00a2:  ldarg.2
    IL_00a3:  ldfld      int32 [Engine]Engine.Point3::X
    IL_00a8:  ldarg.2
    IL_00a9:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00ae:  ldc.i4.1
    IL_00af:  add
    IL_00b0:  ldarg.2
    IL_00b1:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_00b6:  callvirt   instance int32 Game.TerrainData::GetCellLightFast(int32,
                                                                           int32,
                                                                           int32)
    IL_00bb:  stloc.3
    IL_00bc:  ldc.r4     100.
    IL_00c1:  ble.un.s   IL_00e1

    IL_00c3:  ldloc.1
    IL_00c4:  ldc.i4.4
    IL_00c5:  blt.s      IL_00e1

    IL_00c7:  ldloc.0
    IL_00c8:  ldc.i4.8
    IL_00c9:  bge.s      IL_00e1

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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_84'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_85'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Bear_Black_NonVisited"
    IL_0007:  ldarg.2
    IL_0008:  ldc.i4.1
    IL_0009:  call       instance class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity> Game.SubsystemCreatureSpawn::SpawnCreatures(class Game.SubsystemCreatureSpawn/CreatureType,
                                                                                                                                                                                       string,
                                                                                                                                                                                       valuetype [Engine]Engine.Point3,
                                                                                                                                                                                       int32)
    IL_000e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [EntitySystem]GameEntitySystem.Entity>::get_Count()
    IL_0013:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_85'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_86'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
    IL_0006:  callvirt   instance float32 Game.SubsystemSky::get_LightIntensity()
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
    IL_0039:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_003e:  ldarg.2
    IL_003f:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0044:  ldarg.2
    IL_0045:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_004a:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_004f:  stloc.0
    IL_0050:  ldarg.0
    IL_0051:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0056:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_005b:  ldarg.2
    IL_005c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0061:  ldarg.2
    IL_0062:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0067:  ldc.i4.1
    IL_0068:  sub
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_006f:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_0074:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0079:  stloc.1
    IL_007a:  ldarg.0
    IL_007b:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0080:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0085:  ldarg.2
    IL_0086:  ldfld      int32 [Engine]Engine.Point3::X
    IL_008b:  ldarg.2
    IL_008c:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0091:  ldc.i4.1
    IL_0092:  add
    IL_0093:  ldarg.2
    IL_0094:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0099:  callvirt   instance int32 Game.TerrainData::GetCellLightFast(int32,
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

    IL_00be:  ldc.r4     0.5
    IL_00c3:  ret

    IL_00c4:  ldc.r4     0.0
    IL_00c9:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_86'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_87'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Lion_NonVisited"
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_87'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_88'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
    IL_0006:  callvirt   instance float32 Game.SubsystemSky::get_LightIntensity()
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
    IL_0039:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_003e:  ldarg.2
    IL_003f:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0044:  ldarg.2
    IL_0045:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_004a:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_004f:  stloc.0
    IL_0050:  ldarg.0
    IL_0051:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0056:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_005b:  ldarg.2
    IL_005c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0061:  ldarg.2
    IL_0062:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0067:  ldc.i4.1
    IL_0068:  sub
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_006f:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_0074:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0079:  stloc.1
    IL_007a:  ldarg.0
    IL_007b:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0080:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0085:  ldarg.2
    IL_0086:  ldfld      int32 [Engine]Engine.Point3::X
    IL_008b:  ldarg.2
    IL_008c:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0091:  ldc.i4.1
    IL_0092:  add
    IL_0093:  ldarg.2
    IL_0094:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0099:  callvirt   instance int32 Game.TerrainData::GetCellLightFast(int32,
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
    IL_00bb:  ldc.i4.s   62
    IL_00bd:  bne.un.s   IL_00c5

    IL_00bf:  ldc.r4     0.5
    IL_00c4:  ret

    IL_00c5:  ldc.r4     0.0
    IL_00ca:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_88'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_89'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Lion_NonVisited"
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_89'

  .method private hidebysig instance float32 
          '<InitializeCreatureTypes>b__24_90'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
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
    IL_0006:  callvirt   instance float32 Game.SubsystemSky::get_LightIntensity()
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
    IL_0039:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_003e:  ldarg.2
    IL_003f:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0044:  ldarg.2
    IL_0045:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_004a:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_004f:  stloc.0
    IL_0050:  ldarg.0
    IL_0051:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0056:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_005b:  ldarg.2
    IL_005c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0061:  ldarg.2
    IL_0062:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0067:  ldc.i4.1
    IL_0068:  sub
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_006f:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_0074:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0079:  stloc.1
    IL_007a:  ldarg.0
    IL_007b:  ldfld      class Game.SubsystemTerrain Game.SubsystemCreatureSpawn::m_subsystemTerrain
    IL_0080:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0085:  ldarg.2
    IL_0086:  ldfld      int32 [Engine]Engine.Point3::X
    IL_008b:  ldarg.2
    IL_008c:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0091:  ldc.i4.1
    IL_0092:  add
    IL_0093:  ldarg.2
    IL_0094:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0099:  callvirt   instance int32 Game.TerrainData::GetCellLightFast(int32,
                                                                           int32,
                                                                           int32)
    IL_009e:  stloc.2
    IL_009f:  ldc.r4     50.
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

    IL_00be:  ldc.r4     0.5
    IL_00c3:  ret

    IL_00c4:  ldc.r4     0.0
    IL_00c9:  ret
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_90'

  .method private hidebysig instance int32 
          '<InitializeCreatureTypes>b__24_91'(class Game.SubsystemCreatureSpawn/CreatureType creatureType,
                                              valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Hyena_NonVisited"
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
  } // end of method SubsystemCreatureSpawn::'<InitializeCreatureTypes>b__24_91'

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