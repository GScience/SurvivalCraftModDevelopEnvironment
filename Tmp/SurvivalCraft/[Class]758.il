.class public auto ansi beforefieldinit Game.SubsystemSpawn
       extends [EntitySystem]GameEntitySystem.Subsystem
       implements Game.IUpdateable
{
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemDrawing m_subsystemDrawing
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemEntityFactory m_subsystemEntityFactory
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.Random m_random
  .field private float64 m_nextDiscardOldChunksTime
  .field private float64 m_nextVisitedTime
  .field private float64 m_nextChunkSpawnTime
  .field private float64 m_nextDespawnTime
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SpawnChunk> m_chunks
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentSpawn,bool> m_spawns
  .field public static literal float32 MaxChunkAge = float32(28800.)
  .field public static literal float32 VisitedRadius = float32(8.)
  .field public static literal float32 SpawnRadius = float32(40.)
  .field public static literal float32 DespawnRadius = float32(52.)
  .field private class [System.Runtime]System.Action`1<class Game.SpawnChunk> SpawningChunk
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance void 
          add_SpawningChunk(class [System.Runtime]System.Action`1<class Game.SpawnChunk> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<class Game.SpawnChunk> V_0,
             class [System.Runtime]System.Action`1<class Game.SpawnChunk> V_1,
             class [System.Runtime]System.Action`1<class Game.SpawnChunk> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<class Game.SpawnChunk> Game.SubsystemSpawn::SpawningChunk
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Combine(class [System.Runtime]System.Delegate,
                                                                                                        class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`1<class Game.SpawnChunk>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<class Game.SpawnChunk> Game.SubsystemSpawn::SpawningChunk
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<class Game.SpawnChunk>>(!!0&,
                                                                                                                                                           !!0,
                                                                                                                                                           !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method SubsystemSpawn::add_SpawningChunk

  .method public hidebysig specialname instance void 
          remove_SpawningChunk(class [System.Runtime]System.Action`1<class Game.SpawnChunk> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<class Game.SpawnChunk> V_0,
             class [System.Runtime]System.Action`1<class Game.SpawnChunk> V_1,
             class [System.Runtime]System.Action`1<class Game.SpawnChunk> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<class Game.SpawnChunk> Game.SubsystemSpawn::SpawningChunk
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Remove(class [System.Runtime]System.Delegate,
                                                                                                       class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`1<class Game.SpawnChunk>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<class Game.SpawnChunk> Game.SubsystemSpawn::SpawningChunk
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<class Game.SpawnChunk>>(!!0&,
                                                                                                                                                           !!0,
                                                                                                                                                           !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method SubsystemSpawn::remove_SpawningChunk

  .method public hidebysig specialname instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class Game.ComponentSpawn,bool> 
          get_Spawns() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentSpawn,bool> Game.SubsystemSpawn::m_spawns
    IL_0006:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentSpawn,bool>::get_Keys()
    IL_000b:  ret
  } // end of method SubsystemSpawn::get_Spawns

  .method public hidebysig instance class Game.SpawnChunk 
          GetSpawnChunk(valuetype [Engine]Engine.Point2 point) cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  3
    .locals init (class Game.SpawnChunk V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SpawnChunk> Game.SubsystemSpawn::m_chunks
    IL_0006:  ldarg.1
    IL_0007:  ldloca.s   V_0
    IL_0009:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SpawnChunk>::TryGetValue(!0,
                                                                                                                                                                             !1&)
    IL_000e:  pop
    IL_000f:  ldloc.0
    IL_0010:  ret
  } // end of method SubsystemSpawn::GetSpawnChunk

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemSpawn::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       209 (0xd1)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTime Game.SubsystemSpawn::m_subsystemTime
    IL_0006:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_000b:  ldarg.0
    IL_000c:  ldfld      float64 Game.SubsystemSpawn::m_nextDiscardOldChunksTime
    IL_0011:  blt.un.s   IL_0034

    IL_0013:  ldarg.0
    IL_0014:  ldarg.0
    IL_0015:  ldfld      class Game.SubsystemTime Game.SubsystemSpawn::m_subsystemTime
    IL_001a:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_001f:  ldc.r8     60.
    IL_0028:  add
    IL_0029:  stfld      float64 Game.SubsystemSpawn::m_nextDiscardOldChunksTime
    IL_002e:  ldarg.0
    IL_002f:  call       instance void Game.SubsystemSpawn::DiscardOldChunks()
    IL_0034:  ldarg.0
    IL_0035:  ldfld      class Game.SubsystemTime Game.SubsystemSpawn::m_subsystemTime
    IL_003a:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_003f:  ldarg.0
    IL_0040:  ldfld      float64 Game.SubsystemSpawn::m_nextVisitedTime
    IL_0045:  blt.un.s   IL_0068

    IL_0047:  ldarg.0
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.SubsystemTime Game.SubsystemSpawn::m_subsystemTime
    IL_004e:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0053:  ldc.r8     5.
    IL_005c:  add
    IL_005d:  stfld      float64 Game.SubsystemSpawn::m_nextVisitedTime
    IL_0062:  ldarg.0
    IL_0063:  call       instance void Game.SubsystemSpawn::UpdateLastVisitedTime()
    IL_0068:  ldarg.0
    IL_0069:  ldfld      class Game.SubsystemTime Game.SubsystemSpawn::m_subsystemTime
    IL_006e:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0073:  ldarg.0
    IL_0074:  ldfld      float64 Game.SubsystemSpawn::m_nextChunkSpawnTime
    IL_0079:  blt.un.s   IL_009c

    IL_007b:  ldarg.0
    IL_007c:  ldarg.0
    IL_007d:  ldfld      class Game.SubsystemTime Game.SubsystemSpawn::m_subsystemTime
    IL_0082:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0087:  ldc.r8     4.
    IL_0090:  add
    IL_0091:  stfld      float64 Game.SubsystemSpawn::m_nextChunkSpawnTime
    IL_0096:  ldarg.0
    IL_0097:  call       instance void Game.SubsystemSpawn::SpawnChunks()
    IL_009c:  ldarg.0
    IL_009d:  ldfld      class Game.SubsystemTime Game.SubsystemSpawn::m_subsystemTime
    IL_00a2:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_00a7:  ldarg.0
    IL_00a8:  ldfld      float64 Game.SubsystemSpawn::m_nextDespawnTime
    IL_00ad:  blt.un.s   IL_00d0

    IL_00af:  ldarg.0
    IL_00b0:  ldarg.0
    IL_00b1:  ldfld      class Game.SubsystemTime Game.SubsystemSpawn::m_subsystemTime
    IL_00b6:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_00bb:  ldc.r8     2.
    IL_00c4:  add
    IL_00c5:  stfld      float64 Game.SubsystemSpawn::m_nextDespawnTime
    IL_00ca:  ldarg.0
    IL_00cb:  call       instance void Game.SubsystemSpawn::DespawnChunks()
    IL_00d0:  ret
  } // end of method SubsystemSpawn::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       283 (0x11b)
    .maxstack  3
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>> V_0,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object> V_1,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_2,
             class Game.SpawnChunk V_3,
             string V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_000d:  stfld      class Game.SubsystemGameInfo Game.SubsystemSpawn::m_subsystemGameInfo
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemDrawing>(bool)
    IL_001f:  stfld      class Game.SubsystemDrawing Game.SubsystemSpawn::m_subsystemDrawing
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0031:  stfld      class Game.SubsystemTerrain Game.SubsystemSpawn::m_subsystemTerrain
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemEntityFactory>(bool)
    IL_0043:  stfld      class Game.SubsystemEntityFactory Game.SubsystemSpawn::m_subsystemEntityFactory
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_0055:  stfld      class Game.SubsystemTime Game.SubsystemSpawn::m_subsystemTime
    IL_005a:  ldarg.1
    IL_005b:  ldstr      "Chunks"
    IL_0060:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string)
    IL_0065:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>> [EntitySystem]TemplatesDatabase.ValuesDictionary::get_Items()
    IL_006a:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>>::GetEnumerator()
    IL_006f:  stloc.0
    .try
    {
      IL_0070:  br         IL_0103

      IL_0075:  ldloc.0
      IL_0076:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>>::get_Current()
      IL_007b:  stloc.1
      IL_007c:  ldloca.s   V_1
      IL_007e:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>::get_Value()
      IL_0083:  castclass  [EntitySystem]TemplatesDatabase.ValuesDictionary
      IL_0088:  stloc.2
      IL_0089:  newobj     instance void Game.SpawnChunk::.ctor()
      IL_008e:  stloc.3
      IL_008f:  ldloc.3
      IL_0090:  ldloca.s   V_1
      IL_0092:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>::get_Key()
      IL_0097:  call       !!0 [Engine]Engine.Serialization.HumanReadableConverter::ConvertFromString<valuetype [Engine]Engine.Point2>(string)
      IL_009c:  stfld      valuetype [Engine]Engine.Point2 Game.SpawnChunk::Point
      IL_00a1:  ldloc.3
      IL_00a2:  ldloc.2
      IL_00a3:  ldstr      "IsSpawned"
      IL_00a8:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<bool>(string)
      IL_00ad:  stfld      bool Game.SpawnChunk::IsSpawned
      IL_00b2:  ldloc.3
      IL_00b3:  ldloc.2
      IL_00b4:  ldstr      "LastVisitedTime"
      IL_00b9:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float64>(string)
      IL_00be:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
      IL_00c3:  stfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.SpawnChunk::LastVisitedTime
      IL_00c8:  ldloc.2
      IL_00c9:  ldstr      "SpawnsData"
      IL_00ce:  ldsfld     string [System.Runtime]System.String::Empty
      IL_00d3:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string,
                                                                                                           !!0)
      IL_00d8:  stloc.s    V_4
      IL_00da:  ldloc.s    V_4
      IL_00dc:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
      IL_00e1:  brtrue.s   IL_00f1

      IL_00e3:  ldarg.0
      IL_00e4:  ldloc.s    V_4
      IL_00e6:  ldloc.3
      IL_00e7:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData> Game.SpawnChunk::SpawnsData
      IL_00ec:  call       instance void Game.SubsystemSpawn::LoadSpawnsData(string,
                                                                             class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData>)
      IL_00f1:  ldarg.0
      IL_00f2:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SpawnChunk> Game.SubsystemSpawn::m_chunks
      IL_00f7:  ldloc.3
      IL_00f8:  ldfld      valuetype [Engine]Engine.Point2 Game.SpawnChunk::Point
      IL_00fd:  ldloc.3
      IL_00fe:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SpawnChunk>::set_Item(!0,
                                                                                                                                                                            !1)
      IL_0103:  ldloc.0
      IL_0104:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0109:  brtrue     IL_0075

      IL_010e:  leave.s    IL_011a

    }  // end .try
    finally
    {
      IL_0110:  ldloc.0
      IL_0111:  brfalse.s  IL_0119

      IL_0113:  ldloc.0
      IL_0114:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0119:  endfinally
    }  // end handler
    IL_011a:  ret
  } // end of method SubsystemSpawn::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       191 (0xbf)
    .maxstack  3
    .locals init (class [EntitySystem]TemplatesDatabase.ValuesDictionary V_0,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point2,class Game.SpawnChunk> V_1,
             class Game.SpawnChunk V_2,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_3,
             string V_4)
    IL_0000:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.1
    IL_0007:  ldstr      "Chunks"
    IL_000c:  ldloc.0
    IL_000d:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                          !!0)
    IL_0012:  ldarg.0
    IL_0013:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SpawnChunk> Game.SubsystemSpawn::m_chunks
    IL_0018:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SpawnChunk>::get_Values()
    IL_001d:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<valuetype [Engine]Engine.Point2,class Game.SpawnChunk>::GetEnumerator()
    IL_0022:  stloc.1
    .try
    {
      IL_0023:  br.s       IL_00a2

      IL_0025:  ldloca.s   V_1
      IL_0027:  call       instance !1 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point2,class Game.SpawnChunk>::get_Current()
      IL_002c:  stloc.2
      IL_002d:  ldloc.2
      IL_002e:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.SpawnChunk::LastVisitedTime
      IL_0033:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
      IL_0038:  brfalse.s  IL_00a2

      IL_003a:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
      IL_003f:  stloc.3
      IL_0040:  ldloc.0
      IL_0041:  ldloc.2
      IL_0042:  ldfld      valuetype [Engine]Engine.Point2 Game.SpawnChunk::Point
      IL_0047:  box        [Engine]Engine.Point2
      IL_004c:  call       string [Engine]Engine.Serialization.HumanReadableConverter::ConvertToString(object)
      IL_0051:  ldloc.3
      IL_0052:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                            !!0)
      IL_0057:  ldloc.3
      IL_0058:  ldstr      "IsSpawned"
      IL_005d:  ldloc.2
      IL_005e:  ldfld      bool Game.SpawnChunk::IsSpawned
      IL_0063:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<bool>(string,
                                                                                                          !!0)
      IL_0068:  ldloc.3
      IL_0069:  ldstr      "LastVisitedTime"
      IL_006e:  ldloc.2
      IL_006f:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.SpawnChunk::LastVisitedTime
      IL_0074:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::get_Value()
      IL_0079:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float64>(string,
                                                                                                             !!0)
      IL_007e:  ldarg.0
      IL_007f:  ldloc.2
      IL_0080:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData> Game.SpawnChunk::SpawnsData
      IL_0085:  call       instance string Game.SubsystemSpawn::SaveSpawnsData(class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData>)
      IL_008a:  stloc.s    V_4
      IL_008c:  ldloc.s    V_4
      IL_008e:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
      IL_0093:  brtrue.s   IL_00a2

      IL_0095:  ldloc.3
      IL_0096:  ldstr      "SpawnsData"
      IL_009b:  ldloc.s    V_4
      IL_009d:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                            !!0)
      IL_00a2:  ldloca.s   V_1
      IL_00a4:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point2,class Game.SpawnChunk>::MoveNext()
      IL_00a9:  brtrue     IL_0025

      IL_00ae:  leave.s    IL_00be

    }  // end .try
    finally
    {
      IL_00b0:  ldloca.s   V_1
      IL_00b2:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point2,class Game.SpawnChunk>
      IL_00b8:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00bd:  endfinally
    }  // end handler
    IL_00be:  ret
  } // end of method SubsystemSpawn::Save

  .method family hidebysig virtual instance void 
          OnEntityAdded(class [EntitySystem]GameEntitySystem.Entity entity) cil managed
  {
    // 代码大小       64 (0x40)
    .maxstack  3
    .locals init (valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentSpawn> V_0,
             valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.ComponentSpawn> V_1,
             class Game.ComponentSpawn V_2)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<!!0> [EntitySystem]GameEntitySystem.Entity::FindComponents<class Game.ComponentSpawn>()
    IL_0006:  stloc.1
    IL_0007:  ldloca.s   V_1
    IL_0009:  call       instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<!0> valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.ComponentSpawn>::GetEnumerator()
    IL_000e:  stloc.0
    .try
    {
      IL_000f:  br.s       IL_0026

      IL_0011:  ldloca.s   V_0
      IL_0013:  call       instance !0 valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentSpawn>::get_Current()
      IL_0018:  stloc.2
      IL_0019:  ldarg.0
      IL_001a:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentSpawn,bool> Game.SubsystemSpawn::m_spawns
      IL_001f:  ldloc.2
      IL_0020:  ldc.i4.1
      IL_0021:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentSpawn,bool>::Add(!0,
                                                                                                                                                !1)
      IL_0026:  ldloca.s   V_0
      IL_0028:  call       instance bool valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentSpawn>::MoveNext()
      IL_002d:  brtrue.s   IL_0011

      IL_002f:  leave.s    IL_003f

    }  // end .try
    finally
    {
      IL_0031:  ldloca.s   V_0
      IL_0033:  constrained. valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentSpawn>
      IL_0039:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_003e:  endfinally
    }  // end handler
    IL_003f:  ret
  } // end of method SubsystemSpawn::OnEntityAdded

  .method family hidebysig virtual instance void 
          OnEntityRemoved(class [EntitySystem]GameEntitySystem.Entity entity) cil managed
  {
    // 代码大小       64 (0x40)
    .maxstack  2
    .locals init (valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentSpawn> V_0,
             valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.ComponentSpawn> V_1,
             class Game.ComponentSpawn V_2)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<!!0> [EntitySystem]GameEntitySystem.Entity::FindComponents<class Game.ComponentSpawn>()
    IL_0006:  stloc.1
    IL_0007:  ldloca.s   V_1
    IL_0009:  call       instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<!0> valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.ComponentSpawn>::GetEnumerator()
    IL_000e:  stloc.0
    .try
    {
      IL_000f:  br.s       IL_0026

      IL_0011:  ldloca.s   V_0
      IL_0013:  call       instance !0 valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentSpawn>::get_Current()
      IL_0018:  stloc.2
      IL_0019:  ldarg.0
      IL_001a:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentSpawn,bool> Game.SubsystemSpawn::m_spawns
      IL_001f:  ldloc.2
      IL_0020:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentSpawn,bool>::Remove(!0)
      IL_0025:  pop
      IL_0026:  ldloca.s   V_0
      IL_0028:  call       instance bool valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentSpawn>::MoveNext()
      IL_002d:  brtrue.s   IL_0011

      IL_002f:  leave.s    IL_003f

    }  // end .try
    finally
    {
      IL_0031:  ldloca.s   V_0
      IL_0033:  constrained. valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentSpawn>
      IL_0039:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_003e:  endfinally
    }  // end handler
    IL_003f:  ret
  } // end of method SubsystemSpawn::OnEntityRemoved

  .method private hidebysig instance class Game.SpawnChunk 
          GetOrCreateSpawnChunk(valuetype [Engine]Engine.Point2 point) cil managed
  {
    // 代码大小       39 (0x27)
    .maxstack  3
    .locals init (class Game.SpawnChunk V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance class Game.SpawnChunk Game.SubsystemSpawn::GetSpawnChunk(valuetype [Engine]Engine.Point2)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  brtrue.s   IL_0025

    IL_000b:  newobj     instance void Game.SpawnChunk::.ctor()
    IL_0010:  dup
    IL_0011:  ldarg.1
    IL_0012:  stfld      valuetype [Engine]Engine.Point2 Game.SpawnChunk::Point
    IL_0017:  stloc.0
    IL_0018:  ldarg.0
    IL_0019:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SpawnChunk> Game.SubsystemSpawn::m_chunks
    IL_001e:  ldarg.1
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SpawnChunk>::Add(!0,
                                                                                                                                                                     !1)
    IL_0025:  ldloc.0
    IL_0026:  ret
  } // end of method SubsystemSpawn::GetOrCreateSpawnChunk

  .method private hidebysig instance void 
          DiscardOldChunks() cil managed
  {
    // 代码大小       175 (0xaf)
    .maxstack  2
    .locals init (class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point2> V_0,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point2,class Game.SpawnChunk> V_1,
             class Game.SpawnChunk V_2,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point2> V_3,
             valuetype [Engine]Engine.Point2 V_4)
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point2>::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SpawnChunk> Game.SubsystemSpawn::m_chunks
    IL_000c:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SpawnChunk>::get_Values()
    IL_0011:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<valuetype [Engine]Engine.Point2,class Game.SpawnChunk>::GetEnumerator()
    IL_0016:  stloc.1
    .try
    {
      IL_0017:  br.s       IL_005c

      IL_0019:  ldloca.s   V_1
      IL_001b:  call       instance !1 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point2,class Game.SpawnChunk>::get_Current()
      IL_0020:  stloc.2
      IL_0021:  ldloc.2
      IL_0022:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.SpawnChunk::LastVisitedTime
      IL_0027:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
      IL_002c:  brfalse.s  IL_0050

      IL_002e:  ldarg.0
      IL_002f:  ldfld      class Game.SubsystemGameInfo Game.SubsystemSpawn::m_subsystemGameInfo
      IL_0034:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
      IL_0039:  ldloc.2
      IL_003a:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.SpawnChunk::LastVisitedTime
      IL_003f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::get_Value()
      IL_0044:  sub
      IL_0045:  ldc.r8     28800.
      IL_004e:  ble.un.s   IL_005c

      IL_0050:  ldloc.0
      IL_0051:  ldloc.2
      IL_0052:  ldfld      valuetype [Engine]Engine.Point2 Game.SpawnChunk::Point
      IL_0057:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point2>::Add(!0)
      IL_005c:  ldloca.s   V_1
      IL_005e:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point2,class Game.SpawnChunk>::MoveNext()
      IL_0063:  brtrue.s   IL_0019

      IL_0065:  leave.s    IL_0075

    }  // end .try
    finally
    {
      IL_0067:  ldloca.s   V_1
      IL_0069:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point2,class Game.SpawnChunk>
      IL_006f:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0074:  endfinally
    }  // end handler
    IL_0075:  ldloc.0
    IL_0076:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point2>::GetEnumerator()
    IL_007b:  stloc.3
    .try
    {
      IL_007c:  br.s       IL_0095

      IL_007e:  ldloca.s   V_3
      IL_0080:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point2>::get_Current()
      IL_0085:  stloc.s    V_4
      IL_0087:  ldarg.0
      IL_0088:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SpawnChunk> Game.SubsystemSpawn::m_chunks
      IL_008d:  ldloc.s    V_4
      IL_008f:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SpawnChunk>::Remove(!0)
      IL_0094:  pop
      IL_0095:  ldloca.s   V_3
      IL_0097:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point2>::MoveNext()
      IL_009c:  brtrue.s   IL_007e

      IL_009e:  leave.s    IL_00ae

    }  // end .try
    finally
    {
      IL_00a0:  ldloca.s   V_3
      IL_00a2:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point2>
      IL_00a8:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00ad:  endfinally
    }  // end handler
    IL_00ae:  ret
  } // end of method SubsystemSpawn::DiscardOldChunks

  .method private hidebysig instance void 
          UpdateLastVisitedTime() cil managed
  {
    // 代码大小       233 (0xe9)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Vector2 V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             valuetype [Engine]Engine.Point2 V_2,
             valuetype [Engine]Engine.Point2 V_3,
             int32 V_4,
             int32 V_5,
             class Game.SpawnChunk V_6)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemDrawing Game.SubsystemSpawn::m_subsystemDrawing
    IL_0006:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_000b:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.SubsystemDrawing Game.SubsystemSpawn::m_subsystemDrawing
    IL_0016:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_001b:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0020:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0025:  dup
    IL_0026:  ldc.r4     8.
    IL_002b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0030:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_0035:  stloc.0
    IL_0036:  ldc.r4     8.
    IL_003b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0040:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0045:  stloc.1
    IL_0046:  ldloca.s   V_2
    IL_0048:  ldloc.0
    IL_0049:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_004e:  ldc.r4     16.
    IL_0053:  div
    IL_0054:  conv.i4
    IL_0055:  ldloc.0
    IL_0056:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_005b:  ldc.r4     16.
    IL_0060:  div
    IL_0061:  conv.i4
    IL_0062:  call       instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_0067:  ldloca.s   V_3
    IL_0069:  ldloc.1
    IL_006a:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_006f:  ldc.r4     16.
    IL_0074:  div
    IL_0075:  conv.i4
    IL_0076:  ldloc.1
    IL_0077:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_007c:  ldc.r4     16.
    IL_0081:  div
    IL_0082:  conv.i4
    IL_0083:  call       instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_0088:  ldloc.2
    IL_0089:  ldfld      int32 [Engine]Engine.Point2::X
    IL_008e:  stloc.s    V_4
    IL_0090:  br.s       IL_00de

    IL_0092:  ldloc.2
    IL_0093:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0098:  stloc.s    V_5
    IL_009a:  br.s       IL_00ce

    IL_009c:  ldarg.0
    IL_009d:  ldloc.s    V_4
    IL_009f:  ldloc.s    V_5
    IL_00a1:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_00a6:  call       instance class Game.SpawnChunk Game.SubsystemSpawn::GetSpawnChunk(valuetype [Engine]Engine.Point2)
    IL_00ab:  stloc.s    V_6
    IL_00ad:  ldloc.s    V_6
    IL_00af:  brfalse.s  IL_00c8

    IL_00b1:  ldloc.s    V_6
    IL_00b3:  ldarg.0
    IL_00b4:  ldfld      class Game.SubsystemGameInfo Game.SubsystemSpawn::m_subsystemGameInfo
    IL_00b9:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_00be:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_00c3:  stfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.SpawnChunk::LastVisitedTime
    IL_00c8:  ldloc.s    V_5
    IL_00ca:  ldc.i4.1
    IL_00cb:  add
    IL_00cc:  stloc.s    V_5
    IL_00ce:  ldloc.s    V_5
    IL_00d0:  ldloc.3
    IL_00d1:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_00d6:  ble.s      IL_009c

    IL_00d8:  ldloc.s    V_4
    IL_00da:  ldc.i4.1
    IL_00db:  add
    IL_00dc:  stloc.s    V_4
    IL_00de:  ldloc.s    V_4
    IL_00e0:  ldloc.3
    IL_00e1:  ldfld      int32 [Engine]Engine.Point2::X
    IL_00e6:  ble.s      IL_0092

    IL_00e8:  ret
  } // end of method SubsystemSpawn::UpdateLastVisitedTime

  .method private hidebysig instance void 
          SpawnChunks() cil managed
  {
    // 代码大小       578 (0x242)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Vector2 V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             valuetype [Engine]Engine.Vector2 V_2,
             valuetype [Engine]Engine.Point2 V_3,
             valuetype [Engine]Engine.Point2 V_4,
             class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnChunk> V_5,
             int32 V_6,
             int32 V_7,
             valuetype [Engine]Engine.Vector2 V_8,
             class Game.TerrainChunk V_9,
             valuetype [Engine]Engine.Point2 V_10,
             class Game.SpawnChunk V_11,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnEntityData> V_12,
             class Game.SpawnEntityData V_13,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnChunk> V_14,
             class Game.SpawnChunk V_15,
             class Game.SpawnEntityData V_16)
    IL_0000:  ldloca.s   V_0
    IL_0002:  ldarg.0
    IL_0003:  ldfld      class Game.SubsystemDrawing Game.SubsystemSpawn::m_subsystemDrawing
    IL_0008:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_000d:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0012:  ldarg.0
    IL_0013:  ldfld      class Game.SubsystemDrawing Game.SubsystemSpawn::m_subsystemDrawing
    IL_0018:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_001d:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0022:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0027:  ldloc.0
    IL_0028:  ldc.r4     40.
    IL_002d:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0032:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_0037:  stloc.1
    IL_0038:  ldloc.0
    IL_0039:  ldc.r4     40.
    IL_003e:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0043:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0048:  stloc.2
    IL_0049:  ldloca.s   V_3
    IL_004b:  ldloc.1
    IL_004c:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0051:  ldc.r4     16.
    IL_0056:  div
    IL_0057:  conv.i4
    IL_0058:  ldloc.1
    IL_0059:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_005e:  ldc.r4     16.
    IL_0063:  div
    IL_0064:  conv.i4
    IL_0065:  call       instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_006a:  ldloca.s   V_4
    IL_006c:  ldloc.2
    IL_006d:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0072:  ldc.r4     16.
    IL_0077:  div
    IL_0078:  conv.i4
    IL_0079:  ldloc.2
    IL_007a:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_007f:  ldc.r4     16.
    IL_0084:  div
    IL_0085:  conv.i4
    IL_0086:  call       instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_008b:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnChunk>::.ctor()
    IL_0090:  stloc.s    V_5
    IL_0092:  ldloc.3
    IL_0093:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0098:  stloc.s    V_6
    IL_009a:  br         IL_01b3

    IL_009f:  ldloc.3
    IL_00a0:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_00a5:  stloc.s    V_7
    IL_00a7:  br         IL_019f

    IL_00ac:  ldloca.s   V_8
    IL_00ae:  ldloc.s    V_6
    IL_00b0:  conv.r4
    IL_00b1:  ldc.r4     0.5
    IL_00b6:  add
    IL_00b7:  ldc.r4     16.
    IL_00bc:  mul
    IL_00bd:  ldloc.s    V_7
    IL_00bf:  conv.r4
    IL_00c0:  ldc.r4     0.5
    IL_00c5:  add
    IL_00c6:  ldc.r4     16.
    IL_00cb:  mul
    IL_00cc:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00d1:  ldloc.0
    IL_00d2:  ldloc.s    V_8
    IL_00d4:  call       float32 [Engine]Engine.Vector2::DistanceSquared(valuetype [Engine]Engine.Vector2,
                                                                         valuetype [Engine]Engine.Vector2)
    IL_00d9:  ldc.r4     1600.
    IL_00de:  bge.un     IL_0199

    IL_00e3:  ldarg.0
    IL_00e4:  ldfld      class Game.SubsystemTerrain Game.SubsystemSpawn::m_subsystemTerrain
    IL_00e9:  ldloc.s    V_8
    IL_00eb:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00f0:  conv.i4
    IL_00f1:  ldloc.s    V_8
    IL_00f3:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00f8:  conv.i4
    IL_00f9:  callvirt   instance class Game.TerrainChunk Game.SubsystemTerrain::CellToChunk(int32,
                                                                                             int32)
    IL_00fe:  stloc.s    V_9
    IL_0100:  ldloc.s    V_9
    IL_0102:  brfalse    IL_0199

    IL_0107:  ldloc.s    V_9
    IL_0109:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_010e:  ldc.i4.6
    IL_010f:  ble        IL_0199

    IL_0114:  ldloca.s   V_10
    IL_0116:  ldloc.s    V_6
    IL_0118:  ldloc.s    V_7
    IL_011a:  call       instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_011f:  ldarg.0
    IL_0120:  ldloc.s    V_10
    IL_0122:  call       instance class Game.SpawnChunk Game.SubsystemSpawn::GetOrCreateSpawnChunk(valuetype [Engine]Engine.Point2)
    IL_0127:  stloc.s    V_11
    IL_0129:  ldloc.s    V_11
    IL_012b:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData> Game.SpawnChunk::SpawnsData
    IL_0130:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData>::GetEnumerator()
    IL_0135:  stloc.s    V_12
    .try
    {
      IL_0137:  br.s       IL_0157

      IL_0139:  ldloca.s   V_12
      IL_013b:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnEntityData>::get_Current()
      IL_0140:  stloc.s    V_13
      IL_0142:  ldarg.0
      IL_0143:  ldloc.s    V_13
      IL_0145:  ldfld      string Game.SpawnEntityData::TemplateName
      IL_014a:  ldloc.s    V_13
      IL_014c:  ldfld      valuetype [Engine]Engine.Vector3 Game.SpawnEntityData::Position
      IL_0151:  call       instance class [EntitySystem]GameEntitySystem.Entity Game.SubsystemSpawn::SpawnEntity(string,
                                                                                                                 valuetype [Engine]Engine.Vector3)
      IL_0156:  pop
      IL_0157:  ldloca.s   V_12
      IL_0159:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnEntityData>::MoveNext()
      IL_015e:  brtrue.s   IL_0139

      IL_0160:  leave.s    IL_0170

    }  // end .try
    finally
    {
      IL_0162:  ldloca.s   V_12
      IL_0164:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnEntityData>
      IL_016a:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_016f:  endfinally
    }  // end handler
    IL_0170:  ldloc.s    V_11
    IL_0172:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData> Game.SpawnChunk::SpawnsData
    IL_0177:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData>::Clear()
    IL_017c:  ldarg.0
    IL_017d:  ldfld      class [System.Runtime]System.Action`1<class Game.SpawnChunk> Game.SubsystemSpawn::SpawningChunk
    IL_0182:  brfalse.s  IL_0191

    IL_0184:  ldarg.0
    IL_0185:  ldfld      class [System.Runtime]System.Action`1<class Game.SpawnChunk> Game.SubsystemSpawn::SpawningChunk
    IL_018a:  ldloc.s    V_11
    IL_018c:  callvirt   instance void class [System.Runtime]System.Action`1<class Game.SpawnChunk>::Invoke(!0)
    IL_0191:  ldloc.s    V_11
    IL_0193:  ldc.i4.1
    IL_0194:  stfld      bool Game.SpawnChunk::IsSpawned
    IL_0199:  ldloc.s    V_7
    IL_019b:  ldc.i4.1
    IL_019c:  add
    IL_019d:  stloc.s    V_7
    IL_019f:  ldloc.s    V_7
    IL_01a1:  ldloc.s    V_4
    IL_01a3:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_01a8:  ble        IL_00ac

    IL_01ad:  ldloc.s    V_6
    IL_01af:  ldc.i4.1
    IL_01b0:  add
    IL_01b1:  stloc.s    V_6
    IL_01b3:  ldloc.s    V_6
    IL_01b5:  ldloc.s    V_4
    IL_01b7:  ldfld      int32 [Engine]Engine.Point2::X
    IL_01bc:  ble        IL_009f

    IL_01c1:  ldloc.s    V_5
    IL_01c3:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnChunk>::GetEnumerator()
    IL_01c8:  stloc.s    V_14
    .try
    {
      IL_01ca:  br.s       IL_0228

      IL_01cc:  ldloca.s   V_14
      IL_01ce:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnChunk>::get_Current()
      IL_01d3:  stloc.s    V_15
      IL_01d5:  ldloc.s    V_15
      IL_01d7:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData> Game.SpawnChunk::SpawnsData
      IL_01dc:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData>::GetEnumerator()
      IL_01e1:  stloc.s    V_12
      .try
      {
        IL_01e3:  br.s       IL_0203

        IL_01e5:  ldloca.s   V_12
        IL_01e7:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnEntityData>::get_Current()
        IL_01ec:  stloc.s    V_16
        IL_01ee:  ldarg.0
        IL_01ef:  ldloc.s    V_16
        IL_01f1:  ldfld      string Game.SpawnEntityData::TemplateName
        IL_01f6:  ldloc.s    V_16
        IL_01f8:  ldfld      valuetype [Engine]Engine.Vector3 Game.SpawnEntityData::Position
        IL_01fd:  call       instance class [EntitySystem]GameEntitySystem.Entity Game.SubsystemSpawn::SpawnEntity(string,
                                                                                                                   valuetype [Engine]Engine.Vector3)
        IL_0202:  pop
        IL_0203:  ldloca.s   V_12
        IL_0205:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnEntityData>::MoveNext()
        IL_020a:  brtrue.s   IL_01e5

        IL_020c:  leave.s    IL_021c

      }  // end .try
      finally
      {
        IL_020e:  ldloca.s   V_12
        IL_0210:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnEntityData>
        IL_0216:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_021b:  endfinally
      }  // end handler
      IL_021c:  ldloc.s    V_15
      IL_021e:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData> Game.SpawnChunk::SpawnsData
      IL_0223:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData>::Clear()
      IL_0228:  ldloca.s   V_14
      IL_022a:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnChunk>::MoveNext()
      IL_022f:  brtrue.s   IL_01cc

      IL_0231:  leave.s    IL_0241

    }  // end .try
    finally
    {
      IL_0233:  ldloca.s   V_14
      IL_0235:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnChunk>
      IL_023b:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0240:  endfinally
    }  // end handler
    IL_0241:  ret
  } // end of method SubsystemSpawn::SpawnChunks

  .method private hidebysig instance void 
          DespawnChunks() cil managed
  {
    // 代码大小       344 (0x158)
    .maxstack  4
    .locals init (class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentSpawn> V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ComponentSpawn,bool> V_2,
             class Game.ComponentSpawn V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ComponentSpawn> V_5,
             class Game.ComponentSpawn V_6)
    IL_0000:  ldc.i4.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentSpawn>::.ctor(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloca.s   V_1
    IL_0009:  ldarg.0
    IL_000a:  ldfld      class Game.SubsystemDrawing Game.SubsystemSpawn::m_subsystemDrawing
    IL_000f:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_0014:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0019:  ldarg.0
    IL_001a:  ldfld      class Game.SubsystemDrawing Game.SubsystemSpawn::m_subsystemDrawing
    IL_001f:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_0024:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0029:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_002e:  ldarg.0
    IL_002f:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentSpawn,bool> Game.SubsystemSpawn::m_spawns
    IL_0034:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentSpawn,bool>::get_Keys()
    IL_0039:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class Game.ComponentSpawn,bool>::GetEnumerator()
    IL_003e:  stloc.2
    .try
    {
      IL_003f:  br.s       IL_008d

      IL_0041:  ldloca.s   V_2
      IL_0043:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ComponentSpawn,bool>::get_Current()
      IL_0048:  stloc.3
      IL_0049:  ldloc.3
      IL_004a:  callvirt   instance bool Game.ComponentSpawn::get_AutoDespawn()
      IL_004f:  brfalse.s  IL_008d

      IL_0051:  ldloc.3
      IL_0052:  callvirt   instance bool Game.ComponentSpawn::get_IsDespawning()
      IL_0057:  brtrue.s   IL_008d

      IL_0059:  ldloc.3
      IL_005a:  callvirt   instance class Game.ComponentFrame Game.ComponentSpawn::get_ComponentFrame()
      IL_005f:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
      IL_0064:  stloc.s    V_4
      IL_0066:  ldloc.s    V_4
      IL_0068:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_006d:  ldloc.s    V_4
      IL_006f:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0074:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_0079:  ldloc.1
      IL_007a:  call       float32 [Engine]Engine.Vector2::DistanceSquared(valuetype [Engine]Engine.Vector2,
                                                                           valuetype [Engine]Engine.Vector2)
      IL_007f:  ldc.r4     2704.
      IL_0084:  ble.un.s   IL_008d

      IL_0086:  ldloc.0
      IL_0087:  ldloc.3
      IL_0088:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentSpawn>::Add(!0)
      IL_008d:  ldloca.s   V_2
      IL_008f:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ComponentSpawn,bool>::MoveNext()
      IL_0094:  brtrue.s   IL_0041

      IL_0096:  leave.s    IL_00a6

    }  // end .try
    finally
    {
      IL_0098:  ldloca.s   V_2
      IL_009a:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ComponentSpawn,bool>
      IL_00a0:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00a5:  endfinally
    }  // end handler
    IL_00a6:  ldloc.0
    IL_00a7:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentSpawn>::GetEnumerator()
    IL_00ac:  stloc.s    V_5
    .try
    {
      IL_00ae:  br         IL_013b

      IL_00b3:  ldloca.s   V_5
      IL_00b5:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ComponentSpawn>::get_Current()
      IL_00ba:  stloc.s    V_6
      IL_00bc:  ldarg.0
      IL_00bd:  ldloc.s    V_6
      IL_00bf:  callvirt   instance class Game.ComponentFrame Game.ComponentSpawn::get_ComponentFrame()
      IL_00c4:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
      IL_00c9:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_00ce:  ldc.r4     16.
      IL_00d3:  div
      IL_00d4:  conv.i4
      IL_00d5:  ldloc.s    V_6
      IL_00d7:  callvirt   instance class Game.ComponentFrame Game.ComponentSpawn::get_ComponentFrame()
      IL_00dc:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
      IL_00e1:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_00e6:  ldc.r4     16.
      IL_00eb:  div
      IL_00ec:  conv.i4
      IL_00ed:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                      int32)
      IL_00f2:  call       instance class Game.SpawnChunk Game.SubsystemSpawn::GetOrCreateSpawnChunk(valuetype [Engine]Engine.Point2)
      IL_00f7:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData> Game.SpawnChunk::SpawnsData
      IL_00fc:  newobj     instance void Game.SpawnEntityData::.ctor()
      IL_0101:  dup
      IL_0102:  ldloc.s    V_6
      IL_0104:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
      IL_0109:  callvirt   instance class [EntitySystem]TemplatesDatabase.ValuesDictionary [EntitySystem]GameEntitySystem.Entity::get_ValuesDictionary()
      IL_010e:  callvirt   instance class [EntitySystem]TemplatesDatabase.DatabaseObject [EntitySystem]TemplatesDatabase.ValuesDictionary::get_DatabaseObject()
      IL_0113:  callvirt   instance string [EntitySystem]TemplatesDatabase.DatabaseObject::get_Name()
      IL_0118:  stfld      string Game.SpawnEntityData::TemplateName
      IL_011d:  dup
      IL_011e:  ldloc.s    V_6
      IL_0120:  callvirt   instance class Game.ComponentFrame Game.ComponentSpawn::get_ComponentFrame()
      IL_0125:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
      IL_012a:  stfld      valuetype [Engine]Engine.Vector3 Game.SpawnEntityData::Position
      IL_012f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData>::Add(!0)
      IL_0134:  ldloc.s    V_6
      IL_0136:  callvirt   instance void Game.ComponentSpawn::Despawn()
      IL_013b:  ldloca.s   V_5
      IL_013d:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ComponentSpawn>::MoveNext()
      IL_0142:  brtrue     IL_00b3

      IL_0147:  leave.s    IL_0157

    }  // end .try
    finally
    {
      IL_0149:  ldloca.s   V_5
      IL_014b:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ComponentSpawn>
      IL_0151:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0156:  endfinally
    }  // end handler
    IL_0157:  ret
  } // end of method SubsystemSpawn::DespawnChunks

  .method private hidebysig instance class [EntitySystem]GameEntitySystem.Entity 
          SpawnEntity(string templateName,
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
      IL_0001:  ldfld      class Game.SubsystemEntityFactory Game.SubsystemSpawn::m_subsystemEntityFactory
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
      IL_0028:  ldfld      class Game.Random Game.SubsystemSpawn::m_random
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
      IL_0057:  ldstr      "Unable to spawn entity with template \"{0}\". Reason"
      + ": {1}"
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
  } // end of method SubsystemSpawn::SpawnEntity

  .method private hidebysig instance void 
          LoadSpawnsData(string data,
                         class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData> creaturesData) cil managed
  {
    // 代码大小       158 (0x9e)
    .maxstack  5
    .locals init (string[] V_0,
             int32 V_1,
             string[] V_2,
             class Game.SpawnEntityData V_3,
             valuetype [Engine]Engine.Vector3 V_4)
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.1
    IL_0002:  newarr     [System.Runtime]System.Char
    IL_0007:  dup
    IL_0008:  ldc.i4.0
    IL_0009:  ldc.i4.s   59
    IL_000b:  stelem.i2
    IL_000c:  ldc.i4.1
    IL_000d:  callvirt   instance string[] [System.Runtime]System.String::Split(char[],
                                                                                valuetype [System.Runtime]System.StringSplitOptions)
    IL_0012:  stloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  stloc.1
    IL_0015:  br.s       IL_0094

    IL_0017:  ldloc.0
    IL_0018:  ldloc.1
    IL_0019:  ldelem.ref
    IL_001a:  ldc.i4.1
    IL_001b:  newarr     [System.Runtime]System.Char
    IL_0020:  dup
    IL_0021:  ldc.i4.0
    IL_0022:  ldc.i4.s   44
    IL_0024:  stelem.i2
    IL_0025:  ldc.i4.1
    IL_0026:  callvirt   instance string[] [System.Runtime]System.String::Split(char[],
                                                                                valuetype [System.Runtime]System.StringSplitOptions)
    IL_002b:  stloc.2
    IL_002c:  ldloc.2
    IL_002d:  ldlen
    IL_002e:  conv.i4
    IL_002f:  ldc.i4.4
    IL_0030:  bge.s      IL_003d

    IL_0032:  ldstr      "Invalid spawn data string."
    IL_0037:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_003c:  throw

    IL_003d:  newobj     instance void Game.SpawnEntityData::.ctor()
    IL_0042:  dup
    IL_0043:  ldloc.2
    IL_0044:  ldc.i4.0
    IL_0045:  ldelem.ref
    IL_0046:  stfld      string Game.SpawnEntityData::TemplateName
    IL_004b:  dup
    IL_004c:  ldloca.s   V_4
    IL_004e:  initobj    [Engine]Engine.Vector3
    IL_0054:  ldloca.s   V_4
    IL_0056:  ldloc.2
    IL_0057:  ldc.i4.1
    IL_0058:  ldelem.ref
    IL_0059:  call       float32 [System.Runtime]System.Single::Parse(string)
    IL_005e:  stfld      float32 [Engine]Engine.Vector3::X
    IL_0063:  ldloca.s   V_4
    IL_0065:  ldloc.2
    IL_0066:  ldc.i4.2
    IL_0067:  ldelem.ref
    IL_0068:  call       float32 [System.Runtime]System.Single::Parse(string)
    IL_006d:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_0072:  ldloca.s   V_4
    IL_0074:  ldloc.2
    IL_0075:  ldc.i4.3
    IL_0076:  ldelem.ref
    IL_0077:  call       float32 [System.Runtime]System.Single::Parse(string)
    IL_007c:  stfld      float32 [Engine]Engine.Vector3::Z
    IL_0081:  ldloc.s    V_4
    IL_0083:  stfld      valuetype [Engine]Engine.Vector3 Game.SpawnEntityData::Position
    IL_0088:  stloc.3
    IL_0089:  ldarg.2
    IL_008a:  ldloc.3
    IL_008b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData>::Add(!0)
    IL_0090:  ldloc.1
    IL_0091:  ldc.i4.1
    IL_0092:  add
    IL_0093:  stloc.1
    IL_0094:  ldloc.1
    IL_0095:  ldloc.0
    IL_0096:  ldlen
    IL_0097:  conv.i4
    IL_0098:  blt        IL_0017

    IL_009d:  ret
  } // end of method SubsystemSpawn::LoadSpawnsData

  .method private hidebysig instance string 
          SaveSpawnsData(class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData> spawnsData) cil managed
  {
    // 代码大小       215 (0xd7)
    .maxstack  3
    .locals init (class [System.Runtime]System.Text.StringBuilder V_0,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnEntityData> V_1,
             class Game.SpawnEntityData V_2)
    IL_0000:  newobj     instance void [System.Runtime]System.Text.StringBuilder::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData>::GetEnumerator()
    IL_000c:  stloc.1
    .try
    {
      IL_000d:  br         IL_00b4

      IL_0012:  ldloca.s   V_1
      IL_0014:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnEntityData>::get_Current()
      IL_0019:  stloc.2
      IL_001a:  ldloc.0
      IL_001b:  ldloc.2
      IL_001c:  ldfld      string Game.SpawnEntityData::TemplateName
      IL_0021:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
      IL_0026:  pop
      IL_0027:  ldloc.0
      IL_0028:  ldc.i4.s   44
      IL_002a:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
      IL_002f:  pop
      IL_0030:  ldloc.0
      IL_0031:  ldloc.2
      IL_0032:  ldflda     valuetype [Engine]Engine.Vector3 Game.SpawnEntityData::Position
      IL_0037:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_003c:  ldc.r4     10.
      IL_0041:  mul
      IL_0042:  call       float32 [Engine]Engine.MathUtils::Round(float32)
      IL_0047:  ldc.r4     10.
      IL_004c:  div
      IL_004d:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(float32)
      IL_0052:  pop
      IL_0053:  ldloc.0
      IL_0054:  ldc.i4.s   44
      IL_0056:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
      IL_005b:  pop
      IL_005c:  ldloc.0
      IL_005d:  ldloc.2
      IL_005e:  ldflda     valuetype [Engine]Engine.Vector3 Game.SpawnEntityData::Position
      IL_0063:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0068:  ldc.r4     10.
      IL_006d:  mul
      IL_006e:  call       float32 [Engine]Engine.MathUtils::Round(float32)
      IL_0073:  ldc.r4     10.
      IL_0078:  div
      IL_0079:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(float32)
      IL_007e:  pop
      IL_007f:  ldloc.0
      IL_0080:  ldc.i4.s   44
      IL_0082:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
      IL_0087:  pop
      IL_0088:  ldloc.0
      IL_0089:  ldloc.2
      IL_008a:  ldflda     valuetype [Engine]Engine.Vector3 Game.SpawnEntityData::Position
      IL_008f:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0094:  ldc.r4     10.
      IL_0099:  mul
      IL_009a:  call       float32 [Engine]Engine.MathUtils::Round(float32)
      IL_009f:  ldc.r4     10.
      IL_00a4:  div
      IL_00a5:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(float32)
      IL_00aa:  pop
      IL_00ab:  ldloc.0
      IL_00ac:  ldc.i4.s   59
      IL_00ae:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
      IL_00b3:  pop
      IL_00b4:  ldloca.s   V_1
      IL_00b6:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnEntityData>::MoveNext()
      IL_00bb:  brtrue     IL_0012

      IL_00c0:  leave.s    IL_00d0

    }  // end .try
    finally
    {
      IL_00c2:  ldloca.s   V_1
      IL_00c4:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnEntityData>
      IL_00ca:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00cf:  endfinally
    }  // end handler
    IL_00d0:  ldloc.0
    IL_00d1:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_00d6:  ret
  } // end of method SubsystemSpawn::SaveSpawnsData

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       100 (0x64)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.SubsystemSpawn::m_random
    IL_000b:  ldarg.0
    IL_000c:  ldc.r8     1.
    IL_0015:  stfld      float64 Game.SubsystemSpawn::m_nextDiscardOldChunksTime
    IL_001a:  ldarg.0
    IL_001b:  ldc.r8     1.
    IL_0024:  stfld      float64 Game.SubsystemSpawn::m_nextVisitedTime
    IL_0029:  ldarg.0
    IL_002a:  ldc.r8     1.
    IL_0033:  stfld      float64 Game.SubsystemSpawn::m_nextChunkSpawnTime
    IL_0038:  ldarg.0
    IL_0039:  ldc.r8     1.
    IL_0042:  stfld      float64 Game.SubsystemSpawn::m_nextDespawnTime
    IL_0047:  ldarg.0
    IL_0048:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SpawnChunk>::.ctor()
    IL_004d:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SpawnChunk> Game.SubsystemSpawn::m_chunks
    IL_0052:  ldarg.0
    IL_0053:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentSpawn,bool>::.ctor()
    IL_0058:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentSpawn,bool> Game.SubsystemSpawn::m_spawns
    IL_005d:  ldarg.0
    IL_005e:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_0063:  ret
  } // end of method SubsystemSpawn::.ctor

  .event class [System.Runtime]System.Action`1<class Game.SpawnChunk> SpawningChunk
  {
    .addon instance void Game.SubsystemSpawn::add_SpawningChunk(class [System.Runtime]System.Action`1<class Game.SpawnChunk>)
    .removeon instance void Game.SubsystemSpawn::remove_SpawningChunk(class [System.Runtime]System.Action`1<class Game.SpawnChunk>)
  } // end of event SubsystemSpawn::SpawningChunk
  .property instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class Game.ComponentSpawn,bool>
          Spawns()
  {
    .get instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class Game.ComponentSpawn,bool> Game.SubsystemSpawn::get_Spawns()
  } // end of property SubsystemSpawn::Spawns
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemSpawn::get_UpdateOrder()
  } // end of property SubsystemSpawn::UpdateOrder
} // end of class Game.SubsystemSpawn