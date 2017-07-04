.class public auto ansi beforefieldinit Game.SubsystemSpawn
       extends [EntitySystem]GameEntitySystem.Subsystem
       implements Game.IUpdateable
{
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemPlayers m_subsystemPlayers
  .field private class Game.SubsystemViews m_subsystemViews
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.Random m_random
  .field private float64 m_nextDiscardOldChunksTime
  .field private float64 m_nextVisitedTime
  .field private float64 m_nextChunkSpawnTime
  .field private float64 m_nextDespawnTime
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SpawnChunk> m_chunks
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentSpawn,bool> m_spawns
  .field public static literal float32 MaxChunkAge = float32(76800.)
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
    // 代码大小       278 (0x116)
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
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPlayers>(bool)
    IL_001f:  stfld      class Game.SubsystemPlayers Game.SubsystemSpawn::m_subsystemPlayers
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemViews>(bool)
    IL_0031:  stfld      class Game.SubsystemViews Game.SubsystemSpawn::m_subsystemViews
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0043:  stfld      class Game.SubsystemTerrain Game.SubsystemSpawn::m_subsystemTerrain
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_0055:  stfld      class Game.SubsystemTime Game.SubsystemSpawn::m_subsystemTime
    IL_005a:  ldarg.1
    IL_005b:  ldstr      "Chunks"
    IL_0060:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string)
    IL_0065:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>> [EntitySystem]TemplatesDatabase.ValuesDictionary::GetEnumerator()
    IL_006a:  stloc.0
    .try
    {
      IL_006b:  br         IL_00fe

      IL_0070:  ldloc.0
      IL_0071:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>>::get_Current()
      IL_0076:  stloc.1
      IL_0077:  ldloca.s   V_1
      IL_0079:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>::get_Value()
      IL_007e:  castclass  [EntitySystem]TemplatesDatabase.ValuesDictionary
      IL_0083:  stloc.2
      IL_0084:  newobj     instance void Game.SpawnChunk::.ctor()
      IL_0089:  stloc.3
      IL_008a:  ldloc.3
      IL_008b:  ldloca.s   V_1
      IL_008d:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>::get_Key()
      IL_0092:  call       !!0 [Engine]Engine.Serialization.HumanReadableConverter::ConvertFromString<valuetype [Engine]Engine.Point2>(string)
      IL_0097:  stfld      valuetype [Engine]Engine.Point2 Game.SpawnChunk::Point
      IL_009c:  ldloc.3
      IL_009d:  ldloc.2
      IL_009e:  ldstr      "IsSpawned"
      IL_00a3:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<bool>(string)
      IL_00a8:  stfld      bool Game.SpawnChunk::IsSpawned
      IL_00ad:  ldloc.3
      IL_00ae:  ldloc.2
      IL_00af:  ldstr      "LastVisitedTime"
      IL_00b4:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float64>(string)
      IL_00b9:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
      IL_00be:  stfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.SpawnChunk::LastVisitedTime
      IL_00c3:  ldloc.2
      IL_00c4:  ldstr      "SpawnsData"
      IL_00c9:  ldsfld     string [System.Runtime]System.String::Empty
      IL_00ce:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string,
                                                                                                           !!0)
      IL_00d3:  stloc.s    V_4
      IL_00d5:  ldloc.s    V_4
      IL_00d7:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
      IL_00dc:  brtrue.s   IL_00ec

      IL_00de:  ldarg.0
      IL_00df:  ldloc.s    V_4
      IL_00e1:  ldloc.3
      IL_00e2:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData> Game.SpawnChunk::SpawnsData
      IL_00e7:  call       instance void Game.SubsystemSpawn::LoadSpawnsData(string,
                                                                             class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData>)
      IL_00ec:  ldarg.0
      IL_00ed:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SpawnChunk> Game.SubsystemSpawn::m_chunks
      IL_00f2:  ldloc.3
      IL_00f3:  ldfld      valuetype [Engine]Engine.Point2 Game.SpawnChunk::Point
      IL_00f8:  ldloc.3
      IL_00f9:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class Game.SpawnChunk>::set_Item(!0,
                                                                                                                                                                            !1)
      IL_00fe:  ldloc.0
      IL_00ff:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0104:  brtrue     IL_0070

      IL_0109:  leave.s    IL_0115

    }  // end .try
    finally
    {
      IL_010b:  ldloc.0
      IL_010c:  brfalse.s  IL_0114

      IL_010e:  ldloc.0
      IL_010f:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0114:  endfinally
    }  // end handler
    IL_0115:  ret
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
      IL_0045:  ldc.r8     76800.
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
    // 代码大小       250 (0xfa)
    .maxstack  3
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.ComponentPlayer> V_0,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.ComponentPlayer> V_1,
             class Game.ComponentPlayer V_2,
             valuetype [Engine]Engine.Vector2 V_3,
             valuetype [Engine]Engine.Vector2 V_4,
             valuetype [Engine]Engine.Point2 V_5,
             valuetype [Engine]Engine.Point2 V_6,
             int32 V_7,
             int32 V_8,
             class Game.SpawnChunk V_9)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemPlayers Game.SubsystemSpawn::m_subsystemPlayers
    IL_0006:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.ComponentPlayer> Game.SubsystemPlayers::get_ComponentPlayers()
    IL_000b:  stloc.1
    IL_000c:  ldloca.s   V_1
    IL_000e:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.ComponentPlayer>::GetEnumerator()
    IL_0013:  stloc.0
    .try
    {
      IL_0014:  br         IL_00dd

      IL_0019:  ldloca.s   V_0
      IL_001b:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.ComponentPlayer>::get_Current()
      IL_0020:  stloc.2
      IL_0021:  ldloc.2
      IL_0022:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
      IL_0027:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
      IL_002c:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0031:  ldloc.2
      IL_0032:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
      IL_0037:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
      IL_003c:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0041:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_0046:  dup
      IL_0047:  ldc.r4     8.
      IL_004c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
      IL_0051:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                   valuetype [Engine]Engine.Vector2)
      IL_0056:  stloc.3
      IL_0057:  ldc.r4     8.
      IL_005c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
      IL_0061:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_0066:  stloc.s    V_4
      IL_0068:  ldloc.3
      IL_0069:  call       valuetype [Engine]Engine.Point2 Game.Terrain::ToChunk(valuetype [Engine]Engine.Vector2)
      IL_006e:  stloc.s    V_5
      IL_0070:  ldloc.s    V_4
      IL_0072:  call       valuetype [Engine]Engine.Point2 Game.Terrain::ToChunk(valuetype [Engine]Engine.Vector2)
      IL_0077:  stloc.s    V_6
      IL_0079:  ldloc.s    V_5
      IL_007b:  ldfld      int32 [Engine]Engine.Point2::X
      IL_0080:  stloc.s    V_7
      IL_0082:  br.s       IL_00d2

      IL_0084:  ldloc.s    V_5
      IL_0086:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_008b:  stloc.s    V_8
      IL_008d:  br.s       IL_00c1

      IL_008f:  ldarg.0
      IL_0090:  ldloc.s    V_7
      IL_0092:  ldloc.s    V_8
      IL_0094:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                      int32)
      IL_0099:  call       instance class Game.SpawnChunk Game.SubsystemSpawn::GetSpawnChunk(valuetype [Engine]Engine.Point2)
      IL_009e:  stloc.s    V_9
      IL_00a0:  ldloc.s    V_9
      IL_00a2:  brfalse.s  IL_00bb

      IL_00a4:  ldloc.s    V_9
      IL_00a6:  ldarg.0
      IL_00a7:  ldfld      class Game.SubsystemGameInfo Game.SubsystemSpawn::m_subsystemGameInfo
      IL_00ac:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
      IL_00b1:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
      IL_00b6:  stfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.SpawnChunk::LastVisitedTime
      IL_00bb:  ldloc.s    V_8
      IL_00bd:  ldc.i4.1
      IL_00be:  add
      IL_00bf:  stloc.s    V_8
      IL_00c1:  ldloc.s    V_8
      IL_00c3:  ldloc.s    V_6
      IL_00c5:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_00ca:  ble.s      IL_008f

      IL_00cc:  ldloc.s    V_7
      IL_00ce:  ldc.i4.1
      IL_00cf:  add
      IL_00d0:  stloc.s    V_7
      IL_00d2:  ldloc.s    V_7
      IL_00d4:  ldloc.s    V_6
      IL_00d6:  ldfld      int32 [Engine]Engine.Point2::X
      IL_00db:  ble.s      IL_0084

      IL_00dd:  ldloca.s   V_0
      IL_00df:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.ComponentPlayer>::MoveNext()
      IL_00e4:  brtrue     IL_0019

      IL_00e9:  leave.s    IL_00f9

    }  // end .try
    finally
    {
      IL_00eb:  ldloca.s   V_0
      IL_00ed:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.ComponentPlayer>
      IL_00f3:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00f8:  endfinally
    }  // end handler
    IL_00f9:  ret
  } // end of method SubsystemSpawn::UpdateLastVisitedTime

  .method private hidebysig instance void 
          SpawnChunks() cil managed
  {
    // 代码大小       580 (0x244)
    .maxstack  4
    .locals init (class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnChunk> V_0,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.View> V_1,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.View> V_2,
             class Game.View V_3,
             valuetype [Engine]Engine.Vector2 V_4,
             valuetype [Engine]Engine.Vector2 V_5,
             valuetype [Engine]Engine.Vector2 V_6,
             valuetype [Engine]Engine.Point2 V_7,
             valuetype [Engine]Engine.Point2 V_8,
             int32 V_9,
             int32 V_10,
             valuetype [Engine]Engine.Vector2 V_11,
             class Game.TerrainChunk V_12,
             valuetype [Engine]Engine.Point2 V_13,
             class Game.SpawnChunk V_14,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnEntityData> V_15,
             class Game.SpawnEntityData V_16,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnChunk> V_17,
             class Game.SpawnChunk V_18,
             class Game.SpawnEntityData V_19)
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnChunk>::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.SubsystemViews Game.SubsystemSpawn::m_subsystemViews
    IL_000c:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.View> Game.SubsystemViews::get_Views()
    IL_0011:  stloc.2
    IL_0012:  ldloca.s   V_2
    IL_0014:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.View>::GetEnumerator()
    IL_0019:  stloc.1
    .try
    {
      IL_001a:  br         IL_01b4

      IL_001f:  ldloca.s   V_1
      IL_0021:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.View>::get_Current()
      IL_0026:  stloc.3
      IL_0027:  ldloca.s   V_4
      IL_0029:  ldloc.3
      IL_002a:  callvirt   instance class Game.Camera Game.View::get_ActiveCamera()
      IL_002f:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
      IL_0034:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0039:  ldloc.3
      IL_003a:  callvirt   instance class Game.Camera Game.View::get_ActiveCamera()
      IL_003f:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
      IL_0044:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0049:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_004e:  ldloc.s    V_4
      IL_0050:  ldc.r4     40.
      IL_0055:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
      IL_005a:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                   valuetype [Engine]Engine.Vector2)
      IL_005f:  stloc.s    V_5
      IL_0061:  ldloc.s    V_4
      IL_0063:  ldc.r4     40.
      IL_0068:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
      IL_006d:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_0072:  stloc.s    V_6
      IL_0074:  ldloc.s    V_5
      IL_0076:  call       valuetype [Engine]Engine.Point2 Game.Terrain::ToChunk(valuetype [Engine]Engine.Vector2)
      IL_007b:  stloc.s    V_7
      IL_007d:  ldloc.s    V_6
      IL_007f:  call       valuetype [Engine]Engine.Point2 Game.Terrain::ToChunk(valuetype [Engine]Engine.Vector2)
      IL_0084:  stloc.s    V_8
      IL_0086:  ldloc.s    V_7
      IL_0088:  ldfld      int32 [Engine]Engine.Point2::X
      IL_008d:  stloc.s    V_9
      IL_008f:  br         IL_01a6

      IL_0094:  ldloc.s    V_7
      IL_0096:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_009b:  stloc.s    V_10
      IL_009d:  br         IL_0192

      IL_00a2:  ldloca.s   V_11
      IL_00a4:  ldloc.s    V_9
      IL_00a6:  conv.r4
      IL_00a7:  ldc.r4     0.5
      IL_00ac:  add
      IL_00ad:  ldc.r4     16.
      IL_00b2:  mul
      IL_00b3:  ldloc.s    V_10
      IL_00b5:  conv.r4
      IL_00b6:  ldc.r4     0.5
      IL_00bb:  add
      IL_00bc:  ldc.r4     16.
      IL_00c1:  mul
      IL_00c2:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_00c7:  ldloc.s    V_4
      IL_00c9:  ldloc.s    V_11
      IL_00cb:  call       float32 [Engine]Engine.Vector2::DistanceSquared(valuetype [Engine]Engine.Vector2,
                                                                           valuetype [Engine]Engine.Vector2)
      IL_00d0:  ldc.r4     1600.
      IL_00d5:  bge.un     IL_018c

      IL_00da:  ldarg.0
      IL_00db:  ldfld      class Game.SubsystemTerrain Game.SubsystemSpawn::m_subsystemTerrain
      IL_00e0:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
      IL_00e5:  ldloc.s    V_11
      IL_00e7:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_00ec:  call       int32 Game.Terrain::ToCell(float32)
      IL_00f1:  ldloc.s    V_11
      IL_00f3:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_00f8:  call       int32 Game.Terrain::ToCell(float32)
      IL_00fd:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                         int32)
      IL_0102:  stloc.s    V_12
      IL_0104:  ldloc.s    V_12
      IL_0106:  brfalse    IL_018c

      IL_010b:  ldloc.s    V_12
      IL_010d:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
      IL_0112:  ldc.i4.6
      IL_0113:  ble.s      IL_018c

      IL_0115:  ldloca.s   V_13
      IL_0117:  ldloc.s    V_9
      IL_0119:  ldloc.s    V_10
      IL_011b:  call       instance void [Engine]Engine.Point2::.ctor(int32,
                                                                      int32)
      IL_0120:  ldarg.0
      IL_0121:  ldloc.s    V_13
      IL_0123:  call       instance class Game.SpawnChunk Game.SubsystemSpawn::GetOrCreateSpawnChunk(valuetype [Engine]Engine.Point2)
      IL_0128:  stloc.s    V_14
      IL_012a:  ldloc.s    V_14
      IL_012c:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData> Game.SpawnChunk::SpawnsData
      IL_0131:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData>::GetEnumerator()
      IL_0136:  stloc.s    V_15
      .try
      {
        IL_0138:  br.s       IL_014c

        IL_013a:  ldloca.s   V_15
        IL_013c:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnEntityData>::get_Current()
        IL_0141:  stloc.s    V_16
        IL_0143:  ldarg.0
        IL_0144:  ldloc.s    V_16
        IL_0146:  call       instance class [EntitySystem]GameEntitySystem.Entity Game.SubsystemSpawn::SpawnEntity(class Game.SpawnEntityData)
        IL_014b:  pop
        IL_014c:  ldloca.s   V_15
        IL_014e:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnEntityData>::MoveNext()
        IL_0153:  brtrue.s   IL_013a

        IL_0155:  leave.s    IL_0165

      }  // end .try
      finally
      {
        IL_0157:  ldloca.s   V_15
        IL_0159:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnEntityData>
        IL_015f:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_0164:  endfinally
      }  // end handler
      IL_0165:  ldloc.s    V_14
      IL_0167:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData> Game.SpawnChunk::SpawnsData
      IL_016c:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData>::Clear()
      IL_0171:  ldarg.0
      IL_0172:  ldfld      class [System.Runtime]System.Action`1<class Game.SpawnChunk> Game.SubsystemSpawn::SpawningChunk
      IL_0177:  dup
      IL_0178:  brtrue.s   IL_017d

      IL_017a:  pop
      IL_017b:  br.s       IL_0184

      IL_017d:  ldloc.s    V_14
      IL_017f:  callvirt   instance void class [System.Runtime]System.Action`1<class Game.SpawnChunk>::Invoke(!0)
      IL_0184:  ldloc.s    V_14
      IL_0186:  ldc.i4.1
      IL_0187:  stfld      bool Game.SpawnChunk::IsSpawned
      IL_018c:  ldloc.s    V_10
      IL_018e:  ldc.i4.1
      IL_018f:  add
      IL_0190:  stloc.s    V_10
      IL_0192:  ldloc.s    V_10
      IL_0194:  ldloc.s    V_8
      IL_0196:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_019b:  ble        IL_00a2

      IL_01a0:  ldloc.s    V_9
      IL_01a2:  ldc.i4.1
      IL_01a3:  add
      IL_01a4:  stloc.s    V_9
      IL_01a6:  ldloc.s    V_9
      IL_01a8:  ldloc.s    V_8
      IL_01aa:  ldfld      int32 [Engine]Engine.Point2::X
      IL_01af:  ble        IL_0094

      IL_01b4:  ldloca.s   V_1
      IL_01b6:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.View>::MoveNext()
      IL_01bb:  brtrue     IL_001f

      IL_01c0:  leave.s    IL_01d0

    }  // end .try
    finally
    {
      IL_01c2:  ldloca.s   V_1
      IL_01c4:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.View>
      IL_01ca:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01cf:  endfinally
    }  // end handler
    IL_01d0:  ldloc.0
    IL_01d1:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnChunk>::GetEnumerator()
    IL_01d6:  stloc.s    V_17
    .try
    {
      IL_01d8:  br.s       IL_022a

      IL_01da:  ldloca.s   V_17
      IL_01dc:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnChunk>::get_Current()
      IL_01e1:  stloc.s    V_18
      IL_01e3:  ldloc.s    V_18
      IL_01e5:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData> Game.SpawnChunk::SpawnsData
      IL_01ea:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData>::GetEnumerator()
      IL_01ef:  stloc.s    V_15
      .try
      {
        IL_01f1:  br.s       IL_0205

        IL_01f3:  ldloca.s   V_15
        IL_01f5:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnEntityData>::get_Current()
        IL_01fa:  stloc.s    V_19
        IL_01fc:  ldarg.0
        IL_01fd:  ldloc.s    V_19
        IL_01ff:  call       instance class [EntitySystem]GameEntitySystem.Entity Game.SubsystemSpawn::SpawnEntity(class Game.SpawnEntityData)
        IL_0204:  pop
        IL_0205:  ldloca.s   V_15
        IL_0207:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnEntityData>::MoveNext()
        IL_020c:  brtrue.s   IL_01f3

        IL_020e:  leave.s    IL_021e

      }  // end .try
      finally
      {
        IL_0210:  ldloca.s   V_15
        IL_0212:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnEntityData>
        IL_0218:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_021d:  endfinally
      }  // end handler
      IL_021e:  ldloc.s    V_18
      IL_0220:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData> Game.SpawnChunk::SpawnsData
      IL_0225:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData>::Clear()
      IL_022a:  ldloca.s   V_17
      IL_022c:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnChunk>::MoveNext()
      IL_0231:  brtrue.s   IL_01da

      IL_0233:  leave.s    IL_0243

    }  // end .try
    finally
    {
      IL_0235:  ldloca.s   V_17
      IL_0237:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnChunk>
      IL_023d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0242:  endfinally
    }  // end handler
    IL_0243:  ret
  } // end of method SubsystemSpawn::SpawnChunks

  .method private hidebysig instance void 
          DespawnChunks() cil managed
  {
    // 代码大小       422 (0x1a6)
    .maxstack  5
    .locals init (class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentSpawn> V_0,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ComponentSpawn,bool> V_1,
             class Game.ComponentSpawn V_2,
             bool V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             valuetype [Engine]Engine.Vector2 V_5,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.View> V_6,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.View> V_7,
             valuetype [Engine]Engine.Vector3 V_8,
             valuetype [Engine]Engine.Vector2 V_9,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ComponentSpawn> V_10,
             class Game.ComponentSpawn V_11,
             valuetype [Engine]Engine.Point2 V_12,
             valuetype [Engine]Engine.Vector3 V_13)
    IL_0000:  ldc.i4.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentSpawn>::.ctor(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentSpawn,bool> Game.SubsystemSpawn::m_spawns
    IL_000d:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentSpawn,bool>::get_Keys()
    IL_0012:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class Game.ComponentSpawn,bool>::GetEnumerator()
    IL_0017:  stloc.1
    .try
    {
      IL_0018:  br         IL_00d6

      IL_001d:  ldloca.s   V_1
      IL_001f:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ComponentSpawn,bool>::get_Current()
      IL_0024:  stloc.2
      IL_0025:  ldloc.2
      IL_0026:  callvirt   instance bool Game.ComponentSpawn::get_AutoDespawn()
      IL_002b:  brfalse    IL_00d6

      IL_0030:  ldloc.2
      IL_0031:  callvirt   instance bool Game.ComponentSpawn::get_IsDespawning()
      IL_0036:  brtrue     IL_00d6

      IL_003b:  ldc.i4.1
      IL_003c:  stloc.3
      IL_003d:  ldloc.2
      IL_003e:  callvirt   instance class Game.ComponentFrame Game.ComponentSpawn::get_ComponentFrame()
      IL_0043:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
      IL_0048:  stloc.s    V_4
      IL_004a:  ldloca.s   V_5
      IL_004c:  ldloc.s    V_4
      IL_004e:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0053:  ldloc.s    V_4
      IL_0055:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_005a:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_005f:  ldarg.0
      IL_0060:  ldfld      class Game.SubsystemViews Game.SubsystemSpawn::m_subsystemViews
      IL_0065:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.View> Game.SubsystemViews::get_Views()
      IL_006a:  stloc.s    V_7
      IL_006c:  ldloca.s   V_7
      IL_006e:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.View>::GetEnumerator()
      IL_0073:  stloc.s    V_6
      .try
      {
        IL_0075:  br.s       IL_00b3

        IL_0077:  ldloca.s   V_6
        IL_0079:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.View>::get_Current()
        IL_007e:  callvirt   instance class Game.Camera Game.View::get_ActiveCamera()
        IL_0083:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
        IL_0088:  stloc.s    V_8
        IL_008a:  ldloca.s   V_9
        IL_008c:  ldloc.s    V_8
        IL_008e:  ldfld      float32 [Engine]Engine.Vector3::X
        IL_0093:  ldloc.s    V_8
        IL_0095:  ldfld      float32 [Engine]Engine.Vector3::Z
        IL_009a:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                         float32)
        IL_009f:  ldloc.s    V_5
        IL_00a1:  ldloc.s    V_9
        IL_00a3:  call       float32 [Engine]Engine.Vector2::DistanceSquared(valuetype [Engine]Engine.Vector2,
                                                                             valuetype [Engine]Engine.Vector2)
        IL_00a8:  ldc.r4     2704.
        IL_00ad:  bgt.un.s   IL_00b3

        IL_00af:  ldc.i4.0
        IL_00b0:  stloc.3
        IL_00b1:  leave.s    IL_00cc

        IL_00b3:  ldloca.s   V_6
        IL_00b5:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.View>::MoveNext()
        IL_00ba:  brtrue.s   IL_0077

        IL_00bc:  leave.s    IL_00cc

      }  // end .try
      finally
      {
        IL_00be:  ldloca.s   V_6
        IL_00c0:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.View>
        IL_00c6:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_00cb:  endfinally
      }  // end handler
      IL_00cc:  ldloc.3
      IL_00cd:  brfalse.s  IL_00d6

      IL_00cf:  ldloc.0
      IL_00d0:  ldloc.2
      IL_00d1:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentSpawn>::Add(!0)
      IL_00d6:  ldloca.s   V_1
      IL_00d8:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ComponentSpawn,bool>::MoveNext()
      IL_00dd:  brtrue     IL_001d

      IL_00e2:  leave.s    IL_00f2

    }  // end .try
    finally
    {
      IL_00e4:  ldloca.s   V_1
      IL_00e6:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ComponentSpawn,bool>
      IL_00ec:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00f1:  endfinally
    }  // end handler
    IL_00f2:  ldloc.0
    IL_00f3:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentSpawn>::GetEnumerator()
    IL_00f8:  stloc.s    V_10
    .try
    {
      IL_00fa:  br         IL_0189

      IL_00ff:  ldloca.s   V_10
      IL_0101:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ComponentSpawn>::get_Current()
      IL_0106:  stloc.s    V_11
      IL_0108:  ldloc.s    V_11
      IL_010a:  callvirt   instance class Game.ComponentFrame Game.ComponentSpawn::get_ComponentFrame()
      IL_010f:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
      IL_0114:  stloc.s    V_13
      IL_0116:  ldloca.s   V_13
      IL_0118:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XZ()
      IL_011d:  call       valuetype [Engine]Engine.Point2 Game.Terrain::ToChunk(valuetype [Engine]Engine.Vector2)
      IL_0122:  stloc.s    V_12
      IL_0124:  ldarg.0
      IL_0125:  ldloc.s    V_12
      IL_0127:  call       instance class Game.SpawnChunk Game.SubsystemSpawn::GetOrCreateSpawnChunk(valuetype [Engine]Engine.Point2)
      IL_012c:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData> Game.SpawnChunk::SpawnsData
      IL_0131:  newobj     instance void Game.SpawnEntityData::.ctor()
      IL_0136:  dup
      IL_0137:  ldloc.s    V_11
      IL_0139:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
      IL_013e:  callvirt   instance class [EntitySystem]TemplatesDatabase.ValuesDictionary [EntitySystem]GameEntitySystem.Entity::get_ValuesDictionary()
      IL_0143:  callvirt   instance class [EntitySystem]TemplatesDatabase.DatabaseObject [EntitySystem]TemplatesDatabase.ValuesDictionary::get_DatabaseObject()
      IL_0148:  callvirt   instance string [EntitySystem]TemplatesDatabase.DatabaseObject::get_Name()
      IL_014d:  stfld      string Game.SpawnEntityData::TemplateName
      IL_0152:  dup
      IL_0153:  ldloc.s    V_11
      IL_0155:  callvirt   instance class Game.ComponentFrame Game.ComponentSpawn::get_ComponentFrame()
      IL_015a:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
      IL_015f:  stfld      valuetype [Engine]Engine.Vector3 Game.SpawnEntityData::Position
      IL_0164:  dup
      IL_0165:  ldloc.s    V_11
      IL_0167:  callvirt   instance class Game.ComponentCreature Game.ComponentSpawn::get_ComponentCreature()
      IL_016c:  dup
      IL_016d:  brtrue.s   IL_0173

      IL_016f:  pop
      IL_0170:  ldc.i4.0
      IL_0171:  br.s       IL_0178

      IL_0173:  call       instance bool Game.ComponentCreature::get_ConstantSpawn()
      IL_0178:  stfld      bool Game.SpawnEntityData::ConstantSpawn
      IL_017d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData>::Add(!0)
      IL_0182:  ldloc.s    V_11
      IL_0184:  callvirt   instance void Game.ComponentSpawn::Despawn()
      IL_0189:  ldloca.s   V_10
      IL_018b:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ComponentSpawn>::MoveNext()
      IL_0190:  brtrue     IL_00ff

      IL_0195:  leave.s    IL_01a5

    }  // end .try
    finally
    {
      IL_0197:  ldloca.s   V_10
      IL_0199:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ComponentSpawn>
      IL_019f:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01a4:  endfinally
    }  // end handler
    IL_01a5:  ret
  } // end of method SubsystemSpawn::DespawnChunks

  .method private hidebysig instance class [EntitySystem]GameEntitySystem.Entity 
          SpawnEntity(class Game.SpawnEntityData data) cil managed
  {
    // 代码大小       164 (0xa4)
    .maxstack  5
    .locals init (class [EntitySystem]GameEntitySystem.Entity V_0,
             class Game.ComponentCreature V_1,
             class [EntitySystem]GameEntitySystem.Entity V_2,
             class [System.Runtime]System.Exception V_3)
    .try
    {
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
      IL_0006:  ldarg.1
      IL_0007:  ldfld      string Game.SpawnEntityData::TemplateName
      IL_000c:  ldc.i4.1
      IL_000d:  call       class [EntitySystem]GameEntitySystem.Entity Game.DatabaseManager::CreateEntity(class [EntitySystem]GameEntitySystem.Project,
                                                                                                          string,
                                                                                                          bool)
      IL_0012:  stloc.0
      IL_0013:  ldloc.0
      IL_0014:  ldc.i4.1
      IL_0015:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentBody>(bool)
      IL_001a:  ldarg.1
      IL_001b:  ldfld      valuetype [Engine]Engine.Vector3 Game.SpawnEntityData::Position
      IL_0020:  callvirt   instance void Game.ComponentFrame::set_Position(valuetype [Engine]Engine.Vector3)
      IL_0025:  ldloc.0
      IL_0026:  ldc.i4.1
      IL_0027:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentBody>(bool)
      IL_002c:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
      IL_0031:  ldarg.0
      IL_0032:  ldfld      class Game.Random Game.SubsystemSpawn::m_random
      IL_0037:  ldc.r4     0.0
      IL_003c:  ldc.r4     6.2831855
      IL_0041:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_0046:  call       valuetype [Engine]Engine.Quaternion [Engine]Engine.Quaternion::CreateFromAxisAngle(valuetype [Engine]Engine.Vector3,
                                                                                                              float32)
      IL_004b:  callvirt   instance void Game.ComponentFrame::set_Rotation(valuetype [Engine]Engine.Quaternion)
      IL_0050:  ldloc.0
      IL_0051:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>()
      IL_0056:  stloc.1
      IL_0057:  ldloc.1
      IL_0058:  brfalse.s  IL_0066

      IL_005a:  ldloc.1
      IL_005b:  ldarg.1
      IL_005c:  ldfld      bool Game.SpawnEntityData::ConstantSpawn
      IL_0061:  callvirt   instance void Game.ComponentCreature::set_ConstantSpawn(bool)
      IL_0066:  ldarg.0
      IL_0067:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
      IL_006c:  ldloc.0
      IL_006d:  callvirt   instance void [EntitySystem]GameEntitySystem.Project::AddEntity(class [EntitySystem]GameEntitySystem.Entity)
      IL_0072:  ldloc.0
      IL_0073:  stloc.2
      IL_0074:  leave.s    IL_00a2

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0076:  stloc.3
      IL_0077:  ldstr      "Unable to spawn entity with template \"{0}\". Reason"
      + ": {1}"
      IL_007c:  ldc.i4.2
      IL_007d:  newarr     [System.Runtime]System.Object
      IL_0082:  dup
      IL_0083:  ldc.i4.0
      IL_0084:  ldarg.1
      IL_0085:  ldfld      string Game.SpawnEntityData::TemplateName
      IL_008a:  stelem.ref
      IL_008b:  dup
      IL_008c:  ldc.i4.1
      IL_008d:  ldloc.3
      IL_008e:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_0093:  stelem.ref
      IL_0094:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_0099:  call       void [Engine]Engine.Log::Error(string)
      IL_009e:  ldnull
      IL_009f:  stloc.2
      IL_00a0:  leave.s    IL_00a2

    }  // end handler
    IL_00a2:  ldloc.2
    IL_00a3:  ret
  } // end of method SubsystemSpawn::SpawnEntity

  .method private hidebysig instance void 
          LoadSpawnsData(string data,
                         class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData> creaturesData) cil managed
  {
    // 代码大小       196 (0xc4)
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
    IL_0015:  br         IL_00ba

    IL_001a:  ldloc.0
    IL_001b:  ldloc.1
    IL_001c:  ldelem.ref
    IL_001d:  ldc.i4.1
    IL_001e:  newarr     [System.Runtime]System.Char
    IL_0023:  dup
    IL_0024:  ldc.i4.0
    IL_0025:  ldc.i4.s   44
    IL_0027:  stelem.i2
    IL_0028:  ldc.i4.1
    IL_0029:  callvirt   instance string[] [System.Runtime]System.String::Split(char[],
                                                                                valuetype [System.Runtime]System.StringSplitOptions)
    IL_002e:  stloc.2
    IL_002f:  ldloc.2
    IL_0030:  ldlen
    IL_0031:  conv.i4
    IL_0032:  ldc.i4.4
    IL_0033:  bge.s      IL_0040

    IL_0035:  ldstr      "Invalid spawn data string."
    IL_003a:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_003f:  throw

    IL_0040:  newobj     instance void Game.SpawnEntityData::.ctor()
    IL_0045:  dup
    IL_0046:  ldloc.2
    IL_0047:  ldc.i4.0
    IL_0048:  ldelem.ref
    IL_0049:  stfld      string Game.SpawnEntityData::TemplateName
    IL_004e:  dup
    IL_004f:  ldloca.s   V_4
    IL_0051:  initobj    [Engine]Engine.Vector3
    IL_0057:  ldloca.s   V_4
    IL_0059:  ldloc.2
    IL_005a:  ldc.i4.1
    IL_005b:  ldelem.ref
    IL_005c:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_0061:  call       float32 [System.Runtime]System.Single::Parse(string,
                                                                      class [System.Runtime]System.IFormatProvider)
    IL_0066:  stfld      float32 [Engine]Engine.Vector3::X
    IL_006b:  ldloca.s   V_4
    IL_006d:  ldloc.2
    IL_006e:  ldc.i4.2
    IL_006f:  ldelem.ref
    IL_0070:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_0075:  call       float32 [System.Runtime]System.Single::Parse(string,
                                                                      class [System.Runtime]System.IFormatProvider)
    IL_007a:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_007f:  ldloca.s   V_4
    IL_0081:  ldloc.2
    IL_0082:  ldc.i4.3
    IL_0083:  ldelem.ref
    IL_0084:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_0089:  call       float32 [System.Runtime]System.Single::Parse(string,
                                                                      class [System.Runtime]System.IFormatProvider)
    IL_008e:  stfld      float32 [Engine]Engine.Vector3::Z
    IL_0093:  ldloc.s    V_4
    IL_0095:  stfld      valuetype [Engine]Engine.Vector3 Game.SpawnEntityData::Position
    IL_009a:  stloc.3
    IL_009b:  ldloc.2
    IL_009c:  ldlen
    IL_009d:  conv.i4
    IL_009e:  ldc.i4.5
    IL_009f:  blt.s      IL_00af

    IL_00a1:  ldloc.3
    IL_00a2:  ldloc.2
    IL_00a3:  ldc.i4.4
    IL_00a4:  ldelem.ref
    IL_00a5:  call       bool [System.Runtime]System.Boolean::Parse(string)
    IL_00aa:  stfld      bool Game.SpawnEntityData::ConstantSpawn
    IL_00af:  ldarg.2
    IL_00b0:  ldloc.3
    IL_00b1:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData>::Add(!0)
    IL_00b6:  ldloc.1
    IL_00b7:  ldc.i4.1
    IL_00b8:  add
    IL_00b9:  stloc.1
    IL_00ba:  ldloc.1
    IL_00bb:  ldloc.0
    IL_00bc:  ldlen
    IL_00bd:  conv.i4
    IL_00be:  blt        IL_001a

    IL_00c3:  ret
  } // end of method SubsystemSpawn::LoadSpawnsData

  .method private hidebysig instance string 
          SaveSpawnsData(class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData> spawnsData) cil managed
  {
    // 代码大小       281 (0x119)
    .maxstack  3
    .locals init (class [System.Runtime]System.Text.StringBuilder V_0,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnEntityData> V_1,
             class Game.SpawnEntityData V_2,
             float32 V_3)
    IL_0000:  newobj     instance void [System.Runtime]System.Text.StringBuilder::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.SpawnEntityData>::GetEnumerator()
    IL_000c:  stloc.1
    .try
    {
      IL_000d:  br         IL_00f6

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
      IL_004d:  stloc.3
      IL_004e:  ldloca.s   V_3
      IL_0050:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
      IL_0055:  call       instance string [System.Runtime]System.Single::ToString(class [System.Runtime]System.IFormatProvider)
      IL_005a:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
      IL_005f:  pop
      IL_0060:  ldloc.0
      IL_0061:  ldc.i4.s   44
      IL_0063:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
      IL_0068:  pop
      IL_0069:  ldloc.0
      IL_006a:  ldloc.2
      IL_006b:  ldflda     valuetype [Engine]Engine.Vector3 Game.SpawnEntityData::Position
      IL_0070:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0075:  ldc.r4     10.
      IL_007a:  mul
      IL_007b:  call       float32 [Engine]Engine.MathUtils::Round(float32)
      IL_0080:  ldc.r4     10.
      IL_0085:  div
      IL_0086:  stloc.3
      IL_0087:  ldloca.s   V_3
      IL_0089:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
      IL_008e:  call       instance string [System.Runtime]System.Single::ToString(class [System.Runtime]System.IFormatProvider)
      IL_0093:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
      IL_0098:  pop
      IL_0099:  ldloc.0
      IL_009a:  ldc.i4.s   44
      IL_009c:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
      IL_00a1:  pop
      IL_00a2:  ldloc.0
      IL_00a3:  ldloc.2
      IL_00a4:  ldflda     valuetype [Engine]Engine.Vector3 Game.SpawnEntityData::Position
      IL_00a9:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_00ae:  ldc.r4     10.
      IL_00b3:  mul
      IL_00b4:  call       float32 [Engine]Engine.MathUtils::Round(float32)
      IL_00b9:  ldc.r4     10.
      IL_00be:  div
      IL_00bf:  stloc.3
      IL_00c0:  ldloca.s   V_3
      IL_00c2:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
      IL_00c7:  call       instance string [System.Runtime]System.Single::ToString(class [System.Runtime]System.IFormatProvider)
      IL_00cc:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
      IL_00d1:  pop
      IL_00d2:  ldloc.0
      IL_00d3:  ldc.i4.s   44
      IL_00d5:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
      IL_00da:  pop
      IL_00db:  ldloc.0
      IL_00dc:  ldloc.2
      IL_00dd:  ldflda     bool Game.SpawnEntityData::ConstantSpawn
      IL_00e2:  call       instance string [System.Runtime]System.Boolean::ToString()
      IL_00e7:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
      IL_00ec:  pop
      IL_00ed:  ldloc.0
      IL_00ee:  ldc.i4.s   59
      IL_00f0:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
      IL_00f5:  pop
      IL_00f6:  ldloca.s   V_1
      IL_00f8:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnEntityData>::MoveNext()
      IL_00fd:  brtrue     IL_0012

      IL_0102:  leave.s    IL_0112

    }  // end .try
    finally
    {
      IL_0104:  ldloca.s   V_1
      IL_0106:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SpawnEntityData>
      IL_010c:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0111:  endfinally
    }  // end handler
    IL_0112:  ldloc.0
    IL_0113:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0118:  ret
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