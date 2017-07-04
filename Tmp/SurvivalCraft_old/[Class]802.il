.class public auto ansi beforefieldinit Game.TerrainUpdater
       extends [System.Runtime]System.Object
{
  .class auto ansi nested private beforefieldinit UpdateStatistics
         extends [System.Runtime]System.Object
  {
    .field private static int32 m_counter
    .field public float64 LoadingTime
    .field public int32 LoadingCount
    .field public float64 ContentsTime1
    .field public int32 ContentsCount1
    .field public float64 ContentsTime2
    .field public int32 ContentsCount2
    .field public float64 ContentsTime3
    .field public int32 ContentsCount3
    .field public float64 ContentsTime4
    .field public int32 ContentsCount4
    .field public float64 LightTime
    .field public int32 LightCount
    .field public float64 LightSourcesTime
    .field public int32 LightSourcesCount
    .field public float64 LightPropagateTime
    .field public int32 LightPropagateCount
    .field public int32 LightSourceInstancesCount
    .field public float64 VerticesTime1
    .field public int32 VerticesCount1
    .field public float64 VerticesTime2
    .field public int32 VerticesCount2
    .field public int32 SkippedVertices
    .method public hidebysig instance void 
            Log() cil managed
    {
      // 代码大小       781 (0x30d)
      .maxstack  7
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::VerticesCount1
      IL_0006:  ldc.i4.0
      IL_0007:  ble.s      IL_002e

      IL_0009:  ldstr      "------ ({0})"
      IL_000e:  ldc.i4.1
      IL_000f:  newarr     [System.Runtime]System.Object
      IL_0014:  dup
      IL_0015:  ldc.i4.0
      IL_0016:  ldsfld     int32 Game.TerrainUpdater/UpdateStatistics::m_counter
      IL_001b:  dup
      IL_001c:  ldc.i4.1
      IL_001d:  add
      IL_001e:  stsfld     int32 Game.TerrainUpdater/UpdateStatistics::m_counter
      IL_0023:  box        [System.Runtime]System.Int32
      IL_0028:  stelem.ref
      IL_0029:  call       void [Engine]Engine.Log::Information(string,
                                                                object[])
      IL_002e:  ldarg.0
      IL_002f:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::LoadingCount
      IL_0034:  ldc.i4.0
      IL_0035:  ble.s      IL_006a

      IL_0037:  ldstr      "Loading:        {0:0.0}ms ({1}x)"
      IL_003c:  ldc.i4.2
      IL_003d:  newarr     [System.Runtime]System.Object
      IL_0042:  dup
      IL_0043:  ldc.i4.0
      IL_0044:  ldarg.0
      IL_0045:  ldfld      float64 Game.TerrainUpdater/UpdateStatistics::LoadingTime
      IL_004a:  conv.r4
      IL_004b:  ldc.r4     1000.
      IL_0050:  mul
      IL_0051:  box        [System.Runtime]System.Single
      IL_0056:  stelem.ref
      IL_0057:  dup
      IL_0058:  ldc.i4.1
      IL_0059:  ldarg.0
      IL_005a:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::LoadingCount
      IL_005f:  box        [System.Runtime]System.Int32
      IL_0064:  stelem.ref
      IL_0065:  call       void [Engine]Engine.Log::Information(string,
                                                                object[])
      IL_006a:  ldarg.0
      IL_006b:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::ContentsCount1
      IL_0070:  ldc.i4.0
      IL_0071:  ble.s      IL_00a6

      IL_0073:  ldstr      "Contents1:      {0:0.0}ms ({1}x)"
      IL_0078:  ldc.i4.2
      IL_0079:  newarr     [System.Runtime]System.Object
      IL_007e:  dup
      IL_007f:  ldc.i4.0
      IL_0080:  ldarg.0
      IL_0081:  ldfld      float64 Game.TerrainUpdater/UpdateStatistics::ContentsTime1
      IL_0086:  conv.r4
      IL_0087:  ldc.r4     1000.
      IL_008c:  mul
      IL_008d:  box        [System.Runtime]System.Single
      IL_0092:  stelem.ref
      IL_0093:  dup
      IL_0094:  ldc.i4.1
      IL_0095:  ldarg.0
      IL_0096:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::ContentsCount1
      IL_009b:  box        [System.Runtime]System.Int32
      IL_00a0:  stelem.ref
      IL_00a1:  call       void [Engine]Engine.Log::Information(string,
                                                                object[])
      IL_00a6:  ldarg.0
      IL_00a7:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::ContentsCount2
      IL_00ac:  ldc.i4.0
      IL_00ad:  ble.s      IL_00e2

      IL_00af:  ldstr      "Contents2:      {0:0.0}ms ({1}x)"
      IL_00b4:  ldc.i4.2
      IL_00b5:  newarr     [System.Runtime]System.Object
      IL_00ba:  dup
      IL_00bb:  ldc.i4.0
      IL_00bc:  ldarg.0
      IL_00bd:  ldfld      float64 Game.TerrainUpdater/UpdateStatistics::ContentsTime2
      IL_00c2:  conv.r4
      IL_00c3:  ldc.r4     1000.
      IL_00c8:  mul
      IL_00c9:  box        [System.Runtime]System.Single
      IL_00ce:  stelem.ref
      IL_00cf:  dup
      IL_00d0:  ldc.i4.1
      IL_00d1:  ldarg.0
      IL_00d2:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::ContentsCount2
      IL_00d7:  box        [System.Runtime]System.Int32
      IL_00dc:  stelem.ref
      IL_00dd:  call       void [Engine]Engine.Log::Information(string,
                                                                object[])
      IL_00e2:  ldarg.0
      IL_00e3:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::ContentsCount3
      IL_00e8:  ldc.i4.0
      IL_00e9:  ble.s      IL_011e

      IL_00eb:  ldstr      "Contents3:      {0:0.0}ms ({1}x)"
      IL_00f0:  ldc.i4.2
      IL_00f1:  newarr     [System.Runtime]System.Object
      IL_00f6:  dup
      IL_00f7:  ldc.i4.0
      IL_00f8:  ldarg.0
      IL_00f9:  ldfld      float64 Game.TerrainUpdater/UpdateStatistics::ContentsTime3
      IL_00fe:  conv.r4
      IL_00ff:  ldc.r4     1000.
      IL_0104:  mul
      IL_0105:  box        [System.Runtime]System.Single
      IL_010a:  stelem.ref
      IL_010b:  dup
      IL_010c:  ldc.i4.1
      IL_010d:  ldarg.0
      IL_010e:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::ContentsCount3
      IL_0113:  box        [System.Runtime]System.Int32
      IL_0118:  stelem.ref
      IL_0119:  call       void [Engine]Engine.Log::Information(string,
                                                                object[])
      IL_011e:  ldarg.0
      IL_011f:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::ContentsCount4
      IL_0124:  ldc.i4.0
      IL_0125:  ble.s      IL_015a

      IL_0127:  ldstr      "Contents4:      {0:0.0}ms ({1}x)"
      IL_012c:  ldc.i4.2
      IL_012d:  newarr     [System.Runtime]System.Object
      IL_0132:  dup
      IL_0133:  ldc.i4.0
      IL_0134:  ldarg.0
      IL_0135:  ldfld      float64 Game.TerrainUpdater/UpdateStatistics::ContentsTime4
      IL_013a:  conv.r4
      IL_013b:  ldc.r4     1000.
      IL_0140:  mul
      IL_0141:  box        [System.Runtime]System.Single
      IL_0146:  stelem.ref
      IL_0147:  dup
      IL_0148:  ldc.i4.1
      IL_0149:  ldarg.0
      IL_014a:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::ContentsCount4
      IL_014f:  box        [System.Runtime]System.Int32
      IL_0154:  stelem.ref
      IL_0155:  call       void [Engine]Engine.Log::Information(string,
                                                                object[])
      IL_015a:  ldarg.0
      IL_015b:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::LightCount
      IL_0160:  ldc.i4.0
      IL_0161:  ble.s      IL_0196

      IL_0163:  ldstr      "Light:          {0:0.0}ms ({1}x)"
      IL_0168:  ldc.i4.2
      IL_0169:  newarr     [System.Runtime]System.Object
      IL_016e:  dup
      IL_016f:  ldc.i4.0
      IL_0170:  ldarg.0
      IL_0171:  ldfld      float64 Game.TerrainUpdater/UpdateStatistics::LightTime
      IL_0176:  conv.r4
      IL_0177:  ldc.r4     1000.
      IL_017c:  mul
      IL_017d:  box        [System.Runtime]System.Single
      IL_0182:  stelem.ref
      IL_0183:  dup
      IL_0184:  ldc.i4.1
      IL_0185:  ldarg.0
      IL_0186:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::LightCount
      IL_018b:  box        [System.Runtime]System.Int32
      IL_0190:  stelem.ref
      IL_0191:  call       void [Engine]Engine.Log::Information(string,
                                                                object[])
      IL_0196:  ldarg.0
      IL_0197:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::LightSourcesCount
      IL_019c:  ldc.i4.0
      IL_019d:  ble.s      IL_01d2

      IL_019f:  ldstr      "LightSources:   {0:0.0}ms ({1}x)"
      IL_01a4:  ldc.i4.2
      IL_01a5:  newarr     [System.Runtime]System.Object
      IL_01aa:  dup
      IL_01ab:  ldc.i4.0
      IL_01ac:  ldarg.0
      IL_01ad:  ldfld      float64 Game.TerrainUpdater/UpdateStatistics::LightSourcesTime
      IL_01b2:  conv.r4
      IL_01b3:  ldc.r4     1000.
      IL_01b8:  mul
      IL_01b9:  box        [System.Runtime]System.Single
      IL_01be:  stelem.ref
      IL_01bf:  dup
      IL_01c0:  ldc.i4.1
      IL_01c1:  ldarg.0
      IL_01c2:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::LightSourcesCount
      IL_01c7:  box        [System.Runtime]System.Int32
      IL_01cc:  stelem.ref
      IL_01cd:  call       void [Engine]Engine.Log::Information(string,
                                                                object[])
      IL_01d2:  ldarg.0
      IL_01d3:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::LightPropagateCount
      IL_01d8:  ldc.i4.0
      IL_01d9:  ble.s      IL_021c

      IL_01db:  ldstr      "LightPropagate: {0:0.0}ms ({1}x) {2} ls"
      IL_01e0:  ldc.i4.3
      IL_01e1:  newarr     [System.Runtime]System.Object
      IL_01e6:  dup
      IL_01e7:  ldc.i4.0
      IL_01e8:  ldarg.0
      IL_01e9:  ldfld      float64 Game.TerrainUpdater/UpdateStatistics::LightPropagateTime
      IL_01ee:  conv.r4
      IL_01ef:  ldc.r4     1000.
      IL_01f4:  mul
      IL_01f5:  box        [System.Runtime]System.Single
      IL_01fa:  stelem.ref
      IL_01fb:  dup
      IL_01fc:  ldc.i4.1
      IL_01fd:  ldarg.0
      IL_01fe:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::LightPropagateCount
      IL_0203:  box        [System.Runtime]System.Int32
      IL_0208:  stelem.ref
      IL_0209:  dup
      IL_020a:  ldc.i4.2
      IL_020b:  ldarg.0
      IL_020c:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::LightSourceInstancesCount
      IL_0211:  box        [System.Runtime]System.Int32
      IL_0216:  stelem.ref
      IL_0217:  call       void [Engine]Engine.Log::Information(string,
                                                                object[])
      IL_021c:  ldarg.0
      IL_021d:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::VerticesCount1
      IL_0222:  ldc.i4.0
      IL_0223:  ble.s      IL_0258

      IL_0225:  ldstr      "Vertices1:      {0:0.0}ms ({1}x)"
      IL_022a:  ldc.i4.2
      IL_022b:  newarr     [System.Runtime]System.Object
      IL_0230:  dup
      IL_0231:  ldc.i4.0
      IL_0232:  ldarg.0
      IL_0233:  ldfld      float64 Game.TerrainUpdater/UpdateStatistics::VerticesTime1
      IL_0238:  conv.r4
      IL_0239:  ldc.r4     1000.
      IL_023e:  mul
      IL_023f:  box        [System.Runtime]System.Single
      IL_0244:  stelem.ref
      IL_0245:  dup
      IL_0246:  ldc.i4.1
      IL_0247:  ldarg.0
      IL_0248:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::VerticesCount1
      IL_024d:  box        [System.Runtime]System.Int32
      IL_0252:  stelem.ref
      IL_0253:  call       void [Engine]Engine.Log::Information(string,
                                                                object[])
      IL_0258:  ldarg.0
      IL_0259:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::VerticesCount2
      IL_025e:  ldc.i4.0
      IL_025f:  ble.s      IL_0294

      IL_0261:  ldstr      "Vertices2:      {0:0.0}ms ({1}x)"
      IL_0266:  ldc.i4.2
      IL_0267:  newarr     [System.Runtime]System.Object
      IL_026c:  dup
      IL_026d:  ldc.i4.0
      IL_026e:  ldarg.0
      IL_026f:  ldfld      float64 Game.TerrainUpdater/UpdateStatistics::VerticesTime2
      IL_0274:  conv.r4
      IL_0275:  ldc.r4     1000.
      IL_027a:  mul
      IL_027b:  box        [System.Runtime]System.Single
      IL_0280:  stelem.ref
      IL_0281:  dup
      IL_0282:  ldc.i4.1
      IL_0283:  ldarg.0
      IL_0284:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::VerticesCount2
      IL_0289:  box        [System.Runtime]System.Int32
      IL_028e:  stelem.ref
      IL_028f:  call       void [Engine]Engine.Log::Information(string,
                                                                object[])
      IL_0294:  ldarg.0
      IL_0295:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::VerticesCount1
      IL_029a:  ldarg.0
      IL_029b:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::VerticesCount2
      IL_02a0:  add
      IL_02a1:  ldc.i4.0
      IL_02a2:  ble.s      IL_02e5

      IL_02a4:  ldstr      "Vertices:       {0:0.0}ms ({1}x)"
      IL_02a9:  ldc.i4.2
      IL_02aa:  newarr     [System.Runtime]System.Object
      IL_02af:  dup
      IL_02b0:  ldc.i4.0
      IL_02b1:  ldarg.0
      IL_02b2:  ldfld      float64 Game.TerrainUpdater/UpdateStatistics::VerticesTime1
      IL_02b7:  ldarg.0
      IL_02b8:  ldfld      float64 Game.TerrainUpdater/UpdateStatistics::VerticesTime2
      IL_02bd:  add
      IL_02be:  conv.r4
      IL_02bf:  ldc.r4     1000.
      IL_02c4:  mul
      IL_02c5:  box        [System.Runtime]System.Single
      IL_02ca:  stelem.ref
      IL_02cb:  dup
      IL_02cc:  ldc.i4.1
      IL_02cd:  ldarg.0
      IL_02ce:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::VerticesCount1
      IL_02d3:  ldarg.0
      IL_02d4:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::VerticesCount2
      IL_02d9:  add
      IL_02da:  box        [System.Runtime]System.Int32
      IL_02df:  stelem.ref
      IL_02e0:  call       void [Engine]Engine.Log::Information(string,
                                                                object[])
      IL_02e5:  ldarg.0
      IL_02e6:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::SkippedVertices
      IL_02eb:  ldc.i4.0
      IL_02ec:  ble.s      IL_030c

      IL_02ee:  ldstr      "SkippedVerts:   {0}x"
      IL_02f3:  ldc.i4.1
      IL_02f4:  newarr     [System.Runtime]System.Object
      IL_02f9:  dup
      IL_02fa:  ldc.i4.0
      IL_02fb:  ldarg.0
      IL_02fc:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::SkippedVertices
      IL_0301:  box        [System.Runtime]System.Int32
      IL_0306:  stelem.ref
      IL_0307:  call       void [Engine]Engine.Log::Information(string,
                                                                object[])
      IL_030c:  ret
    } // end of method UpdateStatistics::Log

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method UpdateStatistics::.ctor

  } // end of class UpdateStatistics

  .class sequential ansi sealed nested private beforefieldinit UpdateLocation
         extends [System.Runtime]System.ValueType
  {
    .field public valuetype [Engine]Engine.Vector2 Center
    .field public valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> LastChunksUpdateCenter
    .field public float32 VisibilityDistance
    .field public float32 ContentDistance
  } // end of class UpdateLocation

  .class sequential ansi sealed nested private beforefieldinit UpdateParameters
         extends [System.Runtime]System.ValueType
  {
    .field public class Game.TerrainChunk[] Chunks
    .field public class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype Game.TerrainUpdater/UpdateLocation> Locations
  } // end of class UpdateParameters

  .class sequential ansi sealed nested private beforefieldinit LightSource
         extends [System.Runtime]System.ValueType
  {
    .field public int32 X
    .field public int32 Y
    .field public int32 Z
    .field public int32 Light
  } // end of class LightSource

  .field private static literal int32 m_lightAttenuationWithDistance = int32(0x00000001)
  .field private static literal float32 m_updateHysteresis = float32(8.)
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemSky m_subsystemSky
  .field private class Game.SubsystemBlockBehaviors m_subsystemBlockBehaviors
  .field private class Game.Terrain m_terrain
  .field private class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainUpdater/LightSource> m_lightSources
  .field private class Game.TerrainUpdater/UpdateStatistics m_statistics
  .field private class [System.Threading.Tasks]System.Threading.Tasks.Task m_task
  .field private class [System.Threading]System.Threading.AutoResetEvent m_updateEvent
  .field private class [System.Threading]System.Threading.ManualResetEvent m_pauseEvent
  .field private bool modreq([System.Runtime]System.Runtime.CompilerServices.IsVolatile) m_quitUpdateThread
  .field private bool m_unpauseUpdateThread
  .field private object m_updateParametersLock
  .field private object m_unpauseLock
  .field private valuetype Game.TerrainUpdater/UpdateParameters m_updateParameters
  .field private valuetype Game.TerrainUpdater/UpdateParameters m_threadUpdateParameters
  .field private int32 m_lastSkylightValue
  .field private int32 m_synchronousUpdateFrame
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainUpdater/UpdateLocation>> m_pendingLocations
  .field public static int32 SlowTerrainUpdate
  .field public static bool LogTerrainUpdateStats
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemTerrain subsystemTerrain) cil managed
  {
    // 代码大小       234 (0xea)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainUpdater/LightSource>::.ctor()
    IL_0006:  stfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainUpdater/LightSource> Game.TerrainUpdater::m_lightSources
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.TerrainUpdater/UpdateStatistics::.ctor()
    IL_0011:  stfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_0016:  ldarg.0
    IL_0017:  ldc.i4.1
    IL_0018:  newobj     instance void [System.Threading]System.Threading.AutoResetEvent::.ctor(bool)
    IL_001d:  stfld      class [System.Threading]System.Threading.AutoResetEvent Game.TerrainUpdater::m_updateEvent
    IL_0022:  ldarg.0
    IL_0023:  ldc.i4.1
    IL_0024:  newobj     instance void [System.Threading]System.Threading.ManualResetEvent::.ctor(bool)
    IL_0029:  stfld      class [System.Threading]System.Threading.ManualResetEvent Game.TerrainUpdater::m_pauseEvent
    IL_002e:  ldarg.0
    IL_002f:  newobj     instance void [System.Runtime]System.Object::.ctor()
    IL_0034:  stfld      object Game.TerrainUpdater::m_updateParametersLock
    IL_0039:  ldarg.0
    IL_003a:  newobj     instance void [System.Runtime]System.Object::.ctor()
    IL_003f:  stfld      object Game.TerrainUpdater::m_unpauseLock
    IL_0044:  ldarg.0
    IL_0045:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainUpdater/UpdateLocation>>::.ctor()
    IL_004a:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainUpdater/UpdateLocation>> Game.TerrainUpdater::m_pendingLocations
    IL_004f:  ldarg.0
    IL_0050:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0055:  ldarg.0
    IL_0056:  ldarg.1
    IL_0057:  stfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_005c:  ldarg.0
    IL_005d:  ldarg.0
    IL_005e:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_0063:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0068:  ldc.i4.1
    IL_0069:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemSky>(bool)
    IL_006e:  stfld      class Game.SubsystemSky Game.TerrainUpdater::m_subsystemSky
    IL_0073:  ldarg.0
    IL_0074:  ldarg.0
    IL_0075:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_007a:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_007f:  ldc.i4.1
    IL_0080:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBlockBehaviors>(bool)
    IL_0085:  stfld      class Game.SubsystemBlockBehaviors Game.TerrainUpdater::m_subsystemBlockBehaviors
    IL_008a:  ldarg.0
    IL_008b:  ldarg.1
    IL_008c:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0091:  stfld      class Game.Terrain Game.TerrainUpdater::m_terrain
    IL_0096:  ldarg.0
    IL_0097:  ldflda     valuetype Game.TerrainUpdater/UpdateParameters Game.TerrainUpdater::m_updateParameters
    IL_009c:  ldc.i4.0
    IL_009d:  newarr     Game.TerrainChunk
    IL_00a2:  stfld      class Game.TerrainChunk[] Game.TerrainUpdater/UpdateParameters::Chunks
    IL_00a7:  ldarg.0
    IL_00a8:  ldflda     valuetype Game.TerrainUpdater/UpdateParameters Game.TerrainUpdater::m_updateParameters
    IL_00ad:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype Game.TerrainUpdater/UpdateLocation>::.ctor()
    IL_00b2:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype Game.TerrainUpdater/UpdateLocation> Game.TerrainUpdater/UpdateParameters::Locations
    IL_00b7:  ldarg.0
    IL_00b8:  ldflda     valuetype Game.TerrainUpdater/UpdateParameters Game.TerrainUpdater::m_threadUpdateParameters
    IL_00bd:  ldc.i4.0
    IL_00be:  newarr     Game.TerrainChunk
    IL_00c3:  stfld      class Game.TerrainChunk[] Game.TerrainUpdater/UpdateParameters::Chunks
    IL_00c8:  ldarg.0
    IL_00c9:  ldflda     valuetype Game.TerrainUpdater/UpdateParameters Game.TerrainUpdater::m_threadUpdateParameters
    IL_00ce:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype Game.TerrainUpdater/UpdateLocation>::.ctor()
    IL_00d3:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype Game.TerrainUpdater/UpdateLocation> Game.TerrainUpdater/UpdateParameters::Locations
    IL_00d8:  ldarg.0
    IL_00d9:  ldftn      instance void Game.TerrainUpdater::SettingsManager_SettingChanged(string)
    IL_00df:  newobj     instance void class [System.Runtime]System.Action`1<string>::.ctor(object,
                                                                                            native int)
    IL_00e4:  call       void Game.SettingsManager::add_SettingChanged(class [System.Runtime]System.Action`1<string>)
    IL_00e9:  ret
  } // end of method TerrainUpdater::.ctor

  .method public hidebysig instance void 
          Dispose() cil managed
  {
    // 代码大小       93 (0x5d)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldftn      instance void Game.TerrainUpdater::SettingsManager_SettingChanged(string)
    IL_0007:  newobj     instance void class [System.Runtime]System.Action`1<string>::.ctor(object,
                                                                                            native int)
    IL_000c:  call       void Game.SettingsManager::remove_SettingChanged(class [System.Runtime]System.Action`1<string>)
    IL_0011:  ldarg.0
    IL_0012:  ldc.i4.1
    IL_0013:  volatile.
    IL_0015:  stfld      bool modreq([System.Runtime]System.Runtime.CompilerServices.IsVolatile) Game.TerrainUpdater::m_quitUpdateThread
    IL_001a:  ldarg.0
    IL_001b:  call       instance void Game.TerrainUpdater::UnpauseUpdateThread()
    IL_0020:  ldarg.0
    IL_0021:  ldfld      class [System.Threading]System.Threading.AutoResetEvent Game.TerrainUpdater::m_updateEvent
    IL_0026:  callvirt   instance bool [System.Threading]System.Threading.EventWaitHandle::Set()
    IL_002b:  pop
    IL_002c:  ldarg.0
    IL_002d:  ldfld      class [System.Threading.Tasks]System.Threading.Tasks.Task Game.TerrainUpdater::m_task
    IL_0032:  brfalse.s  IL_0046

    IL_0034:  ldarg.0
    IL_0035:  ldfld      class [System.Threading.Tasks]System.Threading.Tasks.Task Game.TerrainUpdater::m_task
    IL_003a:  callvirt   instance void [System.Threading.Tasks]System.Threading.Tasks.Task::Wait()
    IL_003f:  ldarg.0
    IL_0040:  ldnull
    IL_0041:  stfld      class [System.Threading.Tasks]System.Threading.Tasks.Task Game.TerrainUpdater::m_task
    IL_0046:  ldarg.0
    IL_0047:  ldfld      class [System.Threading]System.Threading.ManualResetEvent Game.TerrainUpdater::m_pauseEvent
    IL_004c:  callvirt   instance void [System.Runtime]System.Threading.WaitHandle::Dispose()
    IL_0051:  ldarg.0
    IL_0052:  ldfld      class [System.Threading]System.Threading.AutoResetEvent Game.TerrainUpdater::m_updateEvent
    IL_0057:  callvirt   instance void [System.Runtime]System.Threading.WaitHandle::Dispose()
    IL_005c:  ret
  } // end of method TerrainUpdater::Dispose

  .method public hidebysig specialname instance class [System.Threading]System.Threading.AutoResetEvent 
          get_UpdateEvent() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Threading]System.Threading.AutoResetEvent Game.TerrainUpdater::m_updateEvent
    IL_0006:  ret
  } // end of method TerrainUpdater::get_UpdateEvent

  .method public hidebysig instance void 
          RequestSynchronousUpdate() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       int32 [Engine]Engine.Time::get_FrameIndex()
    IL_0006:  stfld      int32 Game.TerrainUpdater::m_synchronousUpdateFrame
    IL_000b:  ret
  } // end of method TerrainUpdater::RequestSynchronousUpdate

  .method public hidebysig instance void 
          SetUpdateLocation(int32 locationIndex,
                            valuetype [Engine]Engine.Vector2 center,
                            float32 visibilityDistance,
                            float32 contentDistance) cil managed
  {
    // 代码大小       145 (0x91)
    .maxstack  3
    .locals init (valuetype Game.TerrainUpdater/UpdateLocation V_0)
    IL_0000:  ldarg.s    contentDistance
    IL_0002:  ldarg.3
    IL_0003:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0008:  starg.s    contentDistance
    IL_000a:  ldarg.0
    IL_000b:  ldflda     valuetype Game.TerrainUpdater/UpdateParameters Game.TerrainUpdater::m_updateParameters
    IL_0010:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype Game.TerrainUpdater/UpdateLocation> Game.TerrainUpdater/UpdateParameters::Locations
    IL_0015:  ldarg.1
    IL_0016:  ldloca.s   V_0
    IL_0018:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype Game.TerrainUpdater/UpdateLocation>::TryGetValue(!0,
                                                                                                                                                                          !1&)
    IL_001d:  pop
    IL_001e:  ldarg.s    contentDistance
    IL_0020:  ldloc.0
    IL_0021:  ldfld      float32 Game.TerrainUpdater/UpdateLocation::ContentDistance
    IL_0026:  bne.un.s   IL_0058

    IL_0028:  ldarg.3
    IL_0029:  ldloc.0
    IL_002a:  ldfld      float32 Game.TerrainUpdater/UpdateLocation::VisibilityDistance
    IL_002f:  bne.un.s   IL_0058

    IL_0031:  ldloca.s   V_0
    IL_0033:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.TerrainUpdater/UpdateLocation::LastChunksUpdateCenter
    IL_0038:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_003d:  brfalse.s  IL_0058

    IL_003f:  ldarg.2
    IL_0040:  ldloca.s   V_0
    IL_0042:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.TerrainUpdater/UpdateLocation::LastChunksUpdateCenter
    IL_0047:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_004c:  call       float32 [Engine]Engine.Vector2::DistanceSquared(valuetype [Engine]Engine.Vector2,
                                                                         valuetype [Engine]Engine.Vector2)
    IL_0051:  ldc.r4     64.
    IL_0056:  ble.un.s   IL_0090

    IL_0058:  ldloca.s   V_0
    IL_005a:  ldarg.2
    IL_005b:  stfld      valuetype [Engine]Engine.Vector2 Game.TerrainUpdater/UpdateLocation::Center
    IL_0060:  ldloca.s   V_0
    IL_0062:  ldarg.3
    IL_0063:  stfld      float32 Game.TerrainUpdater/UpdateLocation::VisibilityDistance
    IL_0068:  ldloca.s   V_0
    IL_006a:  ldarg.s    contentDistance
    IL_006c:  stfld      float32 Game.TerrainUpdater/UpdateLocation::ContentDistance
    IL_0071:  ldloca.s   V_0
    IL_0073:  ldarg.2
    IL_0074:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_0079:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.TerrainUpdater/UpdateLocation::LastChunksUpdateCenter
    IL_007e:  ldarg.0
    IL_007f:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainUpdater/UpdateLocation>> Game.TerrainUpdater::m_pendingLocations
    IL_0084:  ldarg.1
    IL_0085:  ldloc.0
    IL_0086:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainUpdater/UpdateLocation>::.ctor(!0)
    IL_008b:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainUpdater/UpdateLocation>>::set_Item(!0,
                                                                                                                                                                                                                    !1)
    IL_0090:  ret
  } // end of method TerrainUpdater::SetUpdateLocation

  .method public hidebysig instance void 
          RemoveUpdateLocation(int32 locationIndex) cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainUpdater/UpdateLocation> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainUpdater/UpdateLocation>> Game.TerrainUpdater::m_pendingLocations
    IL_0006:  ldarg.1
    IL_0007:  ldloca.s   V_0
    IL_0009:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainUpdater/UpdateLocation>
    IL_000f:  ldloc.0
    IL_0010:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainUpdater/UpdateLocation>>::set_Item(!0,
                                                                                                                                                                                                                    !1)
    IL_0015:  ret
  } // end of method TerrainUpdater::RemoveUpdateLocation

  .method public hidebysig instance float32 
          GetUpdateProgress(int32 locationIndex,
                            float32 visibilityDistance,
                            float32 contentDistance) cil managed
  {
    // 代码大小       399 (0x18f)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             valuetype Game.TerrainUpdater/UpdateLocation V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5,
             valuetype [Engine]Engine.Point2 V_6,
             valuetype [Engine]Engine.Point2 V_7,
             int32 V_8,
             int32 V_9,
             class Game.TerrainChunk V_10,
             valuetype [Engine]Engine.Vector2 V_11,
             float32 V_12)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldc.i4.0
    IL_0003:  stloc.1
    IL_0004:  ldarg.0
    IL_0005:  ldflda     valuetype Game.TerrainUpdater/UpdateParameters Game.TerrainUpdater::m_updateParameters
    IL_000a:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype Game.TerrainUpdater/UpdateLocation> Game.TerrainUpdater/UpdateParameters::Locations
    IL_000f:  ldarg.1
    IL_0010:  ldloca.s   V_2
    IL_0012:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype Game.TerrainUpdater/UpdateLocation>::TryGetValue(!0,
                                                                                                                                                                          !1&)
    IL_0017:  brfalse    IL_0177

    IL_001c:  ldarg.2
    IL_001d:  ldloc.2
    IL_001e:  ldfld      float32 Game.TerrainUpdater/UpdateLocation::VisibilityDistance
    IL_0023:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0028:  ldc.r4     8.
    IL_002d:  sub
    IL_002e:  ldc.r4     0.1
    IL_0033:  sub
    IL_0034:  ldc.r4     0.0
    IL_0039:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_003e:  starg.s    visibilityDistance
    IL_0040:  ldarg.3
    IL_0041:  ldloc.2
    IL_0042:  ldfld      float32 Game.TerrainUpdater/UpdateLocation::ContentDistance
    IL_0047:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_004c:  ldc.r4     8.
    IL_0051:  sub
    IL_0052:  ldc.r4     0.1
    IL_0057:  sub
    IL_0058:  ldc.r4     0.0
    IL_005d:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0062:  starg.s    contentDistance
    IL_0064:  ldarg.2
    IL_0065:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
    IL_006a:  stloc.3
    IL_006b:  ldarg.3
    IL_006c:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
    IL_0071:  stloc.s    V_4
    IL_0073:  ldarg.2
    IL_0074:  ldarg.3
    IL_0075:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_007a:  stloc.s    V_5
    IL_007c:  ldloc.2
    IL_007d:  ldfld      valuetype [Engine]Engine.Vector2 Game.TerrainUpdater/UpdateLocation::Center
    IL_0082:  ldloc.s    V_5
    IL_0084:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0089:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_008e:  call       valuetype [Engine]Engine.Point2 Game.Terrain::ToChunk(valuetype [Engine]Engine.Vector2)
    IL_0093:  stloc.s    V_6
    IL_0095:  ldloc.2
    IL_0096:  ldfld      valuetype [Engine]Engine.Vector2 Game.TerrainUpdater/UpdateLocation::Center
    IL_009b:  ldloc.s    V_5
    IL_009d:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_00a2:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_00a7:  call       valuetype [Engine]Engine.Point2 Game.Terrain::ToChunk(valuetype [Engine]Engine.Vector2)
    IL_00ac:  stloc.s    V_7
    IL_00ae:  ldloc.s    V_6
    IL_00b0:  ldfld      int32 [Engine]Engine.Point2::X
    IL_00b5:  stloc.s    V_8
    IL_00b7:  br         IL_0167

    IL_00bc:  ldloc.s    V_6
    IL_00be:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_00c3:  stloc.s    V_9
    IL_00c5:  br         IL_0153

    IL_00ca:  ldarg.0
    IL_00cb:  ldfld      class Game.Terrain Game.TerrainUpdater::m_terrain
    IL_00d0:  ldloc.s    V_8
    IL_00d2:  ldloc.s    V_9
    IL_00d4:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCoords(int32,
                                                                                         int32)
    IL_00d9:  stloc.s    V_10
    IL_00db:  ldloca.s   V_11
    IL_00dd:  ldloc.s    V_8
    IL_00df:  conv.r4
    IL_00e0:  ldc.r4     0.5
    IL_00e5:  add
    IL_00e6:  ldc.r4     16.
    IL_00eb:  mul
    IL_00ec:  ldloc.s    V_9
    IL_00ee:  conv.r4
    IL_00ef:  ldc.r4     0.5
    IL_00f4:  add
    IL_00f5:  ldc.r4     16.
    IL_00fa:  mul
    IL_00fb:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0100:  ldloc.2
    IL_0101:  ldfld      valuetype [Engine]Engine.Vector2 Game.TerrainUpdater/UpdateLocation::Center
    IL_0106:  ldloc.s    V_11
    IL_0108:  call       float32 [Engine]Engine.Vector2::DistanceSquared(valuetype [Engine]Engine.Vector2,
                                                                         valuetype [Engine]Engine.Vector2)
    IL_010d:  stloc.s    V_12
    IL_010f:  ldloc.s    V_12
    IL_0111:  ldloc.3
    IL_0112:  bgt.un.s   IL_012f

    IL_0114:  ldloc.s    V_10
    IL_0116:  brfalse.s  IL_0123

    IL_0118:  ldloc.s    V_10
    IL_011a:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_011f:  ldc.i4.s   9
    IL_0121:  bge.s      IL_0129

    IL_0123:  ldloc.1
    IL_0124:  ldc.i4.1
    IL_0125:  add
    IL_0126:  stloc.1
    IL_0127:  br.s       IL_014d

    IL_0129:  ldloc.0
    IL_012a:  ldc.i4.1
    IL_012b:  add
    IL_012c:  stloc.0
    IL_012d:  br.s       IL_014d

    IL_012f:  ldloc.s    V_12
    IL_0131:  ldloc.s    V_4
    IL_0133:  bgt.un.s   IL_014d

    IL_0135:  ldloc.s    V_10
    IL_0137:  brfalse.s  IL_0143

    IL_0139:  ldloc.s    V_10
    IL_013b:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_0140:  ldc.i4.5
    IL_0141:  bge.s      IL_0149

    IL_0143:  ldloc.1
    IL_0144:  ldc.i4.1
    IL_0145:  add
    IL_0146:  stloc.1
    IL_0147:  br.s       IL_014d

    IL_0149:  ldloc.0
    IL_014a:  ldc.i4.1
    IL_014b:  add
    IL_014c:  stloc.0
    IL_014d:  ldloc.s    V_9
    IL_014f:  ldc.i4.1
    IL_0150:  add
    IL_0151:  stloc.s    V_9
    IL_0153:  ldloc.s    V_9
    IL_0155:  ldloc.s    V_7
    IL_0157:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_015c:  ble        IL_00ca

    IL_0161:  ldloc.s    V_8
    IL_0163:  ldc.i4.1
    IL_0164:  add
    IL_0165:  stloc.s    V_8
    IL_0167:  ldloc.s    V_8
    IL_0169:  ldloc.s    V_7
    IL_016b:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0170:  ble        IL_00bc

    IL_0175:  br.s       IL_017d

    IL_0177:  ldc.r4     0.0
    IL_017c:  ret

    IL_017d:  ldloc.1
    IL_017e:  ldc.i4.0
    IL_017f:  bgt.s      IL_0187

    IL_0181:  ldc.r4     1.
    IL_0186:  ret

    IL_0187:  ldloc.0
    IL_0188:  conv.r4
    IL_0189:  ldloc.1
    IL_018a:  ldloc.0
    IL_018b:  add
    IL_018c:  conv.r4
    IL_018d:  div
    IL_018e:  ret
  } // end of method TerrainUpdater::GetUpdateProgress

  .method public hidebysig instance void 
          Update() cil managed
  {
    // 代码大小       581 (0x245)
    .maxstack  3
    .locals init (class Game.TerrainChunk[] V_0,
             float64 V_1,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<int32,valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainUpdater/UpdateLocation>> V_2,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainUpdater/UpdateLocation>> V_3,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainUpdater/UpdateLocation> V_4,
             object V_5,
             bool V_6,
             int32 V_7,
             class Game.TerrainChunk V_8)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemSky Game.TerrainUpdater::m_subsystemSky
    IL_0006:  callvirt   instance int32 Game.SubsystemSky::get_SkyLightValue()
    IL_000b:  ldarg.0
    IL_000c:  ldfld      int32 Game.TerrainUpdater::m_lastSkylightValue
    IL_0011:  beq.s      IL_002c

    IL_0013:  ldarg.0
    IL_0014:  ldarg.0
    IL_0015:  ldfld      class Game.SubsystemSky Game.TerrainUpdater::m_subsystemSky
    IL_001a:  callvirt   instance int32 Game.SubsystemSky::get_SkyLightValue()
    IL_001f:  stfld      int32 Game.TerrainUpdater::m_lastSkylightValue
    IL_0024:  ldarg.0
    IL_0025:  ldc.i4.5
    IL_0026:  ldc.i4.0
    IL_0027:  call       instance void Game.TerrainUpdater::DowngradeAllChunksState(valuetype Game.TerrainChunkState,
                                                                                    bool)
    IL_002c:  call       bool Game.SettingsManager::get_MultithreadedTerrainUpdate()
    IL_0031:  brtrue.s   IL_008a

    IL_0033:  ldarg.0
    IL_0034:  ldfld      class [System.Threading.Tasks]System.Threading.Tasks.Task Game.TerrainUpdater::m_task
    IL_0039:  brfalse.s  IL_0068

    IL_003b:  ldarg.0
    IL_003c:  ldc.i4.1
    IL_003d:  volatile.
    IL_003f:  stfld      bool modreq([System.Runtime]System.Runtime.CompilerServices.IsVolatile) Game.TerrainUpdater::m_quitUpdateThread
    IL_0044:  ldarg.0
    IL_0045:  call       instance void Game.TerrainUpdater::UnpauseUpdateThread()
    IL_004a:  ldarg.0
    IL_004b:  ldfld      class [System.Threading]System.Threading.AutoResetEvent Game.TerrainUpdater::m_updateEvent
    IL_0050:  callvirt   instance bool [System.Threading]System.Threading.EventWaitHandle::Set()
    IL_0055:  pop
    IL_0056:  ldarg.0
    IL_0057:  ldfld      class [System.Threading.Tasks]System.Threading.Tasks.Task Game.TerrainUpdater::m_task
    IL_005c:  callvirt   instance void [System.Threading.Tasks]System.Threading.Tasks.Task::Wait()
    IL_0061:  ldarg.0
    IL_0062:  ldnull
    IL_0063:  stfld      class [System.Threading.Tasks]System.Threading.Tasks.Task Game.TerrainUpdater::m_task
    IL_0068:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_006d:  stloc.1
    IL_006e:  ldarg.0
    IL_006f:  call       instance bool Game.TerrainUpdater::SynchronousUpdateFunction()
    IL_0074:  brtrue.s   IL_00c4

    IL_0076:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_007b:  ldloc.1
    IL_007c:  sub
    IL_007d:  ldc.r8     9.9999997764825821e-003
    IL_0086:  blt.s      IL_006e

    IL_0088:  br.s       IL_00c4

    IL_008a:  ldarg.0
    IL_008b:  ldfld      class [System.Threading.Tasks]System.Threading.Tasks.Task Game.TerrainUpdater::m_task
    IL_0090:  brtrue.s   IL_00c4

    IL_0092:  ldarg.0
    IL_0093:  ldc.i4.0
    IL_0094:  volatile.
    IL_0096:  stfld      bool modreq([System.Runtime]System.Runtime.CompilerServices.IsVolatile) Game.TerrainUpdater::m_quitUpdateThread
    IL_009b:  ldarg.0
    IL_009c:  ldarg.0
    IL_009d:  ldftn      instance void Game.TerrainUpdater::ThreadUpdateFunction()
    IL_00a3:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00a8:  call       class [System.Threading.Tasks]System.Threading.Tasks.Task [System.Threading.Tasks]System.Threading.Tasks.Task::Run(class [System.Runtime]System.Action)
    IL_00ad:  stfld      class [System.Threading.Tasks]System.Threading.Tasks.Task Game.TerrainUpdater::m_task
    IL_00b2:  ldarg.0
    IL_00b3:  call       instance void Game.TerrainUpdater::UnpauseUpdateThread()
    IL_00b8:  ldarg.0
    IL_00b9:  ldfld      class [System.Threading]System.Threading.AutoResetEvent Game.TerrainUpdater::m_updateEvent
    IL_00be:  callvirt   instance bool [System.Threading]System.Threading.EventWaitHandle::Set()
    IL_00c3:  pop
    IL_00c4:  ldarg.0
    IL_00c5:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainUpdater/UpdateLocation>> Game.TerrainUpdater::m_pendingLocations
    IL_00ca:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainUpdater/UpdateLocation>>::get_Count()
    IL_00cf:  ldc.i4.0
    IL_00d0:  ble        IL_01cd

    IL_00d5:  ldarg.0
    IL_00d6:  ldfld      class [System.Threading]System.Threading.ManualResetEvent Game.TerrainUpdater::m_pauseEvent
    IL_00db:  callvirt   instance bool [System.Threading]System.Threading.EventWaitHandle::Reset()
    IL_00e0:  pop
    IL_00e1:  ldarg.0
    IL_00e2:  ldfld      class [System.Threading]System.Threading.AutoResetEvent Game.TerrainUpdater::m_updateEvent
    IL_00e7:  ldc.i4.0
    IL_00e8:  callvirt   instance bool [System.Runtime]System.Threading.WaitHandle::WaitOne(int32)
    IL_00ed:  brfalse    IL_01fd

    IL_00f2:  ldarg.0
    IL_00f3:  ldfld      class [System.Threading]System.Threading.ManualResetEvent Game.TerrainUpdater::m_pauseEvent
    IL_00f8:  callvirt   instance bool [System.Threading]System.Threading.EventWaitHandle::Set()
    IL_00fd:  pop
    .try
    {
      IL_00fe:  ldarg.0
      IL_00ff:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainUpdater/UpdateLocation>> Game.TerrainUpdater::m_pendingLocations
      IL_0104:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainUpdater/UpdateLocation>>::GetEnumerator()
      IL_0109:  stloc.2
      .try
      {
        IL_010a:  br.s       IL_0167

        IL_010c:  ldloca.s   V_2
        IL_010e:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<int32,valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainUpdater/UpdateLocation>>::get_Current()
        IL_0113:  stloc.3
        IL_0114:  ldloca.s   V_3
        IL_0116:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainUpdater/UpdateLocation>>::get_Value()
        IL_011b:  stloc.s    V_4
        IL_011d:  ldloca.s   V_4
        IL_011f:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainUpdater/UpdateLocation>::get_HasValue()
        IL_0124:  brfalse.s  IL_014f

        IL_0126:  ldarg.0
        IL_0127:  ldflda     valuetype Game.TerrainUpdater/UpdateParameters Game.TerrainUpdater::m_updateParameters
        IL_012c:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype Game.TerrainUpdater/UpdateLocation> Game.TerrainUpdater/UpdateParameters::Locations
        IL_0131:  ldloca.s   V_3
        IL_0133:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainUpdater/UpdateLocation>>::get_Key()
        IL_0138:  ldloca.s   V_3
        IL_013a:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainUpdater/UpdateLocation>>::get_Value()
        IL_013f:  stloc.s    V_4
        IL_0141:  ldloca.s   V_4
        IL_0143:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainUpdater/UpdateLocation>::get_Value()
        IL_0148:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype Game.TerrainUpdater/UpdateLocation>::set_Item(!0,
                                                                                                                                                                           !1)
        IL_014d:  br.s       IL_0167

        IL_014f:  ldarg.0
        IL_0150:  ldflda     valuetype Game.TerrainUpdater/UpdateParameters Game.TerrainUpdater::m_updateParameters
        IL_0155:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype Game.TerrainUpdater/UpdateLocation> Game.TerrainUpdater/UpdateParameters::Locations
        IL_015a:  ldloca.s   V_3
        IL_015c:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainUpdater/UpdateLocation>>::get_Key()
        IL_0161:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype Game.TerrainUpdater/UpdateLocation>::Remove(!0)
        IL_0166:  pop
        IL_0167:  ldloca.s   V_2
        IL_0169:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<int32,valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainUpdater/UpdateLocation>>::MoveNext()
        IL_016e:  brtrue.s   IL_010c

        IL_0170:  leave.s    IL_0180

      }  // end .try
      finally
      {
        IL_0172:  ldloca.s   V_2
        IL_0174:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<int32,valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainUpdater/UpdateLocation>>
        IL_017a:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_017f:  endfinally
      }  // end handler
      IL_0180:  ldarg.0
      IL_0181:  ldarg.0
      IL_0182:  ldflda     valuetype Game.TerrainUpdater/UpdateParameters Game.TerrainUpdater::m_updateParameters
      IL_0187:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype Game.TerrainUpdater/UpdateLocation> Game.TerrainUpdater/UpdateParameters::Locations
      IL_018c:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype Game.TerrainUpdater/UpdateLocation>::get_Values()
      IL_0191:  call       !!0[] [System.Linq]System.Linq.Enumerable::ToArray<valuetype Game.TerrainUpdater/UpdateLocation>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
      IL_0196:  call       instance bool Game.TerrainUpdater::AllocateAndFreeChunks(valuetype Game.TerrainUpdater/UpdateLocation[])
      IL_019b:  brfalse.s  IL_01b3

      IL_019d:  ldarg.0
      IL_019e:  ldflda     valuetype Game.TerrainUpdater/UpdateParameters Game.TerrainUpdater::m_updateParameters
      IL_01a3:  ldarg.0
      IL_01a4:  ldfld      class Game.Terrain Game.TerrainUpdater::m_terrain
      IL_01a9:  callvirt   instance class Game.TerrainChunk[] Game.Terrain::get_AllocatedChunks()
      IL_01ae:  stfld      class Game.TerrainChunk[] Game.TerrainUpdater/UpdateParameters::Chunks
      IL_01b3:  ldarg.0
      IL_01b4:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainUpdater/UpdateLocation>> Game.TerrainUpdater::m_pendingLocations
      IL_01b9:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainUpdater/UpdateLocation>>::Clear()
      IL_01be:  leave.s    IL_01fd

    }  // end .try
    finally
    {
      IL_01c0:  ldarg.0
      IL_01c1:  ldfld      class [System.Threading]System.Threading.AutoResetEvent Game.TerrainUpdater::m_updateEvent
      IL_01c6:  callvirt   instance bool [System.Threading]System.Threading.EventWaitHandle::Set()
      IL_01cb:  pop
      IL_01cc:  endfinally
    }  // end handler
    IL_01cd:  ldarg.0
    IL_01ce:  ldfld      object Game.TerrainUpdater::m_updateParametersLock
    IL_01d3:  stloc.s    V_5
    IL_01d5:  ldc.i4.0
    IL_01d6:  stloc.s    V_6
    .try
    {
      IL_01d8:  ldloc.s    V_5
      IL_01da:  ldloca.s   V_6
      IL_01dc:  call       void [System.Threading]System.Threading.Monitor::Enter(object,
                                                                                  bool&)
      IL_01e1:  ldarg.0
      IL_01e2:  call       instance bool Game.TerrainUpdater::SendReceiveChunkStates()
      IL_01e7:  brfalse.s  IL_01ef

      IL_01e9:  ldarg.0
      IL_01ea:  call       instance void Game.TerrainUpdater::UnpauseUpdateThread()
      IL_01ef:  leave.s    IL_01fd

    }  // end .try
    finally
    {
      IL_01f1:  ldloc.s    V_6
      IL_01f3:  brfalse.s  IL_01fc

      IL_01f5:  ldloc.s    V_5
      IL_01f7:  call       void [System.Threading]System.Threading.Monitor::Exit(object)
      IL_01fc:  endfinally
    }  // end handler
    IL_01fd:  ldarg.0
    IL_01fe:  ldfld      class Game.Terrain Game.TerrainUpdater::m_terrain
    IL_0203:  callvirt   instance class Game.TerrainChunk[] Game.Terrain::get_AllocatedChunks()
    IL_0208:  stloc.0
    IL_0209:  ldc.i4.0
    IL_020a:  stloc.s    V_7
    IL_020c:  br.s       IL_023d

    IL_020e:  ldloc.0
    IL_020f:  ldloc.s    V_7
    IL_0211:  ldelem.ref
    IL_0212:  stloc.s    V_8
    IL_0214:  ldloc.s    V_8
    IL_0216:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_021b:  ldc.i4.7
    IL_021c:  blt.s      IL_0237

    IL_021e:  ldloc.s    V_8
    IL_0220:  ldfld      bool Game.TerrainChunk::AreBehaviorsNotified
    IL_0225:  brtrue.s   IL_0237

    IL_0227:  ldloc.s    V_8
    IL_0229:  ldc.i4.1
    IL_022a:  stfld      bool Game.TerrainChunk::AreBehaviorsNotified
    IL_022f:  ldarg.0
    IL_0230:  ldloc.s    V_8
    IL_0232:  call       instance void Game.TerrainUpdater::NotifyBlockBehaviors(class Game.TerrainChunk)
    IL_0237:  ldloc.s    V_7
    IL_0239:  ldc.i4.1
    IL_023a:  add
    IL_023b:  stloc.s    V_7
    IL_023d:  ldloc.s    V_7
    IL_023f:  ldloc.0
    IL_0240:  ldlen
    IL_0241:  conv.i4
    IL_0242:  blt.s      IL_020e

    IL_0244:  ret
  } // end of method TerrainUpdater::Update

  .method public hidebysig instance void 
          PrepareForDrawing(class Game.Camera camera) cil managed
  {
    // 代码大小       222 (0xde)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk> V_1,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.TerrainChunk> V_2,
             class Game.TerrainChunk V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance class Game.View Game.Camera::get_View()
    IL_0007:  callvirt   instance class Game.PlayerData Game.View::get_PlayerData()
    IL_000c:  callvirt   instance int32 Game.PlayerData::get_PlayerIndex()
    IL_0011:  ldarg.1
    IL_0012:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_0017:  stloc.0
    IL_0018:  ldloca.s   V_0
    IL_001a:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XZ()
    IL_001f:  ldarg.0
    IL_0020:  ldfld      class Game.SubsystemSky Game.TerrainUpdater::m_subsystemSky
    IL_0025:  callvirt   instance float32 Game.SubsystemSky::get_VisibilityRange()
    IL_002a:  ldc.r4     64.
    IL_002f:  call       instance void Game.TerrainUpdater::SetUpdateLocation(int32,
                                                                              valuetype [Engine]Engine.Vector2,
                                                                              float32,
                                                                              float32)
    IL_0034:  ldarg.0
    IL_0035:  ldfld      int32 Game.TerrainUpdater::m_synchronousUpdateFrame
    IL_003a:  call       int32 [Engine]Engine.Time::get_FrameIndex()
    IL_003f:  bne.un     IL_00dd

    IL_0044:  ldarg.0
    IL_0045:  ldarg.1
    IL_0046:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_004b:  ldarg.1
    IL_004c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewDirection()
    IL_0051:  call       instance class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk> Game.TerrainUpdater::DetermineSynchronousUpdateChunks(valuetype [Engine]Engine.Vector3,
                                                                                                                                                                             valuetype [Engine]Engine.Vector3)
    IL_0056:  stloc.1
    IL_0057:  ldloc.1
    IL_0058:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk>::get_Count()
    IL_005d:  ldc.i4.0
    IL_005e:  ble.s      IL_00dd

    IL_0060:  ldarg.0
    IL_0061:  ldfld      class [System.Threading]System.Threading.AutoResetEvent Game.TerrainUpdater::m_updateEvent
    IL_0066:  callvirt   instance bool [System.Runtime]System.Threading.WaitHandle::WaitOne()
    IL_006b:  pop
    .try
    {
      IL_006c:  ldarg.0
      IL_006d:  call       instance bool Game.TerrainUpdater::SendReceiveChunkStates()
      IL_0072:  pop
      IL_0073:  ldarg.0
      IL_0074:  call       instance void Game.TerrainUpdater::SendReceiveChunkStatesThread()
      IL_0079:  ldloc.1
      IL_007a:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk>::GetEnumerator()
      IL_007f:  stloc.2
      .try
      {
        IL_0080:  br.s       IL_00a8

        IL_0082:  ldloca.s   V_2
        IL_0084:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.TerrainChunk>::get_Current()
        IL_0089:  stloc.3
        IL_008a:  br.s       IL_009e

        IL_008c:  ldarg.0
        IL_008d:  ldloc.3
        IL_008e:  ldarg.0
        IL_008f:  ldfld      class Game.SubsystemSky Game.TerrainUpdater::m_subsystemSky
        IL_0094:  callvirt   instance int32 Game.SubsystemSky::get_SkyLightValue()
        IL_0099:  call       instance void Game.TerrainUpdater::UpdateChunkSingleStep(class Game.TerrainChunk,
                                                                                      int32)
        IL_009e:  ldloc.3
        IL_009f:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::ThreadState
        IL_00a4:  ldc.i4.s   9
        IL_00a6:  blt.s      IL_008c

        IL_00a8:  ldloca.s   V_2
        IL_00aa:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.TerrainChunk>::MoveNext()
        IL_00af:  brtrue.s   IL_0082

        IL_00b1:  leave.s    IL_00c1

      }  // end .try
      finally
      {
        IL_00b3:  ldloca.s   V_2
        IL_00b5:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.TerrainChunk>
        IL_00bb:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_00c0:  endfinally
      }  // end handler
      IL_00c1:  ldarg.0
      IL_00c2:  call       instance void Game.TerrainUpdater::SendReceiveChunkStatesThread()
      IL_00c7:  ldarg.0
      IL_00c8:  call       instance bool Game.TerrainUpdater::SendReceiveChunkStates()
      IL_00cd:  pop
      IL_00ce:  leave.s    IL_00dd

    }  // end .try
    finally
    {
      IL_00d0:  ldarg.0
      IL_00d1:  ldfld      class [System.Threading]System.Threading.AutoResetEvent Game.TerrainUpdater::m_updateEvent
      IL_00d6:  callvirt   instance bool [System.Threading]System.Threading.EventWaitHandle::Set()
      IL_00db:  pop
      IL_00dc:  endfinally
    }  // end handler
    IL_00dd:  ret
  } // end of method TerrainUpdater::PrepareForDrawing

  .method public hidebysig instance void 
          DowngradeChunkNeighborhoodState(valuetype [Engine]Engine.Point2 coordinates,
                                          int32 radius,
                                          valuetype Game.TerrainChunkState state,
                                          bool forceGeometryRegeneration) cil managed
  {
    // 代码大小       98 (0x62)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             class Game.TerrainChunk V_2)
    IL_0000:  ldarg.2
    IL_0001:  neg
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_005d

    IL_0005:  ldarg.2
    IL_0006:  neg
    IL_0007:  stloc.1
    IL_0008:  br.s       IL_0055

    IL_000a:  ldarg.0
    IL_000b:  ldfld      class Game.Terrain Game.TerrainUpdater::m_terrain
    IL_0010:  ldarg.1
    IL_0011:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0016:  ldloc.0
    IL_0017:  add
    IL_0018:  ldarg.1
    IL_0019:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_001e:  ldloc.1
    IL_001f:  add
    IL_0020:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCoords(int32,
                                                                                         int32)
    IL_0025:  stloc.2
    IL_0026:  ldloc.2
    IL_0027:  brfalse.s  IL_0051

    IL_0029:  ldloc.2
    IL_002a:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_002f:  ldarg.3
    IL_0030:  ble.s      IL_004a

    IL_0032:  ldloc.2
    IL_0033:  ldarg.3
    IL_0034:  stfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_0039:  ldarg.s    forceGeometryRegeneration
    IL_003b:  brfalse.s  IL_004a

    IL_003d:  ldloc.2
    IL_003e:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_0043:  ldc.i4.0
    IL_0044:  conv.i8
    IL_0045:  stfld      int64 Game.TerrainChunkGeometry::GeometryHash
    IL_004a:  ldloc.2
    IL_004b:  ldc.i4.1
    IL_004c:  stfld      bool Game.TerrainChunk::WasDowngraded
    IL_0051:  ldloc.1
    IL_0052:  ldc.i4.1
    IL_0053:  add
    IL_0054:  stloc.1
    IL_0055:  ldloc.1
    IL_0056:  ldarg.2
    IL_0057:  ble.s      IL_000a

    IL_0059:  ldloc.0
    IL_005a:  ldc.i4.1
    IL_005b:  add
    IL_005c:  stloc.0
    IL_005d:  ldloc.0
    IL_005e:  ldarg.2
    IL_005f:  ble.s      IL_0005

    IL_0061:  ret
  } // end of method TerrainUpdater::DowngradeChunkNeighborhoodState

  .method public hidebysig instance void 
          DowngradeAllChunksState(valuetype Game.TerrainChunkState state,
                                  bool forceGeometryRegeneration) cil managed
  {
    // 代码大小       70 (0x46)
    .maxstack  2
    .locals init (class Game.TerrainChunk[] V_0,
             int32 V_1,
             class Game.TerrainChunk V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Terrain Game.TerrainUpdater::m_terrain
    IL_0006:  callvirt   instance class Game.TerrainChunk[] Game.Terrain::get_AllocatedChunks()
    IL_000b:  stloc.0
    IL_000c:  ldc.i4.0
    IL_000d:  stloc.1
    IL_000e:  br.s       IL_003f

    IL_0010:  ldloc.0
    IL_0011:  ldloc.1
    IL_0012:  ldelem.ref
    IL_0013:  stloc.2
    IL_0014:  ldloc.2
    IL_0015:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_001a:  ldarg.1
    IL_001b:  ble.s      IL_0034

    IL_001d:  ldloc.2
    IL_001e:  ldarg.1
    IL_001f:  stfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_0024:  ldarg.2
    IL_0025:  brfalse.s  IL_0034

    IL_0027:  ldloc.2
    IL_0028:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_002d:  ldc.i4.0
    IL_002e:  conv.i8
    IL_002f:  stfld      int64 Game.TerrainChunkGeometry::GeometryHash
    IL_0034:  ldloc.2
    IL_0035:  ldc.i4.1
    IL_0036:  stfld      bool Game.TerrainChunk::WasDowngraded
    IL_003b:  ldloc.1
    IL_003c:  ldc.i4.1
    IL_003d:  add
    IL_003e:  stloc.1
    IL_003f:  ldloc.1
    IL_0040:  ldloc.0
    IL_0041:  ldlen
    IL_0042:  conv.i4
    IL_0043:  blt.s      IL_0010

    IL_0045:  ret
  } // end of method TerrainUpdater::DowngradeAllChunksState

  .method private hidebysig static bool  IsChunkInRange(valuetype [Engine]Engine.Vector2 chunkCenter,
                                                        valuetype Game.TerrainUpdater/UpdateLocation[] locations) cil managed
  {
    // 代码大小       55 (0x37)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br.s       IL_002f

    IL_0004:  ldarg.1
    IL_0005:  ldloc.0
    IL_0006:  ldelema    Game.TerrainUpdater/UpdateLocation
    IL_000b:  ldfld      valuetype [Engine]Engine.Vector2 Game.TerrainUpdater/UpdateLocation::Center
    IL_0010:  ldarg.0
    IL_0011:  call       float32 [Engine]Engine.Vector2::DistanceSquared(valuetype [Engine]Engine.Vector2,
                                                                         valuetype [Engine]Engine.Vector2)
    IL_0016:  ldarg.1
    IL_0017:  ldloc.0
    IL_0018:  ldelema    Game.TerrainUpdater/UpdateLocation
    IL_001d:  ldfld      float32 Game.TerrainUpdater/UpdateLocation::ContentDistance
    IL_0022:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
    IL_0027:  bgt.un.s   IL_002b

    IL_0029:  ldc.i4.1
    IL_002a:  ret

    IL_002b:  ldloc.0
    IL_002c:  ldc.i4.1
    IL_002d:  add
    IL_002e:  stloc.0
    IL_002f:  ldloc.0
    IL_0030:  ldarg.1
    IL_0031:  ldlen
    IL_0032:  conv.i4
    IL_0033:  blt.s      IL_0004

    IL_0035:  ldc.i4.0
    IL_0036:  ret
  } // end of method TerrainUpdater::IsChunkInRange

  .method private hidebysig instance bool 
          AllocateAndFreeChunks(valuetype Game.TerrainUpdater/UpdateLocation[] locations) cil managed
  {
    // 代码大小       534 (0x216)
    .maxstack  5
    .locals init (bool V_0,
             class Game.TerrainChunk[] V_1,
             int32 V_2,
             class Game.TerrainChunk V_3,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.SubsystemBlockBehavior> V_4,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.SubsystemBlockBehavior> V_5,
             int32 V_6,
             valuetype [Engine]Engine.Point2 V_7,
             valuetype [Engine]Engine.Point2 V_8,
             int32 V_9,
             int32 V_10,
             valuetype [Engine]Engine.Vector2 V_11,
             class Game.TerrainChunk V_12)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldarg.0
    IL_0003:  ldfld      class Game.Terrain Game.TerrainUpdater::m_terrain
    IL_0008:  callvirt   instance class Game.TerrainChunk[] Game.Terrain::get_AllocatedChunks()
    IL_000d:  stloc.1
    IL_000e:  ldc.i4.0
    IL_000f:  stloc.2
    IL_0010:  br         IL_009e

    IL_0015:  ldloc.1
    IL_0016:  ldloc.2
    IL_0017:  ldelem.ref
    IL_0018:  stloc.3
    IL_0019:  ldloc.3
    IL_001a:  ldfld      valuetype [Engine]Engine.Vector2 Game.TerrainChunk::Center
    IL_001f:  ldarg.1
    IL_0020:  call       bool Game.TerrainUpdater::IsChunkInRange(valuetype [Engine]Engine.Vector2,
                                                                  valuetype Game.TerrainUpdater/UpdateLocation[])
    IL_0025:  brtrue.s   IL_009a

    IL_0027:  ldc.i4.1
    IL_0028:  stloc.0
    IL_0029:  ldarg.0
    IL_002a:  ldfld      class Game.SubsystemBlockBehaviors Game.TerrainUpdater::m_subsystemBlockBehaviors
    IL_002f:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.SubsystemBlockBehavior> Game.SubsystemBlockBehaviors::get_BlockBehaviors()
    IL_0034:  stloc.s    V_5
    IL_0036:  ldloca.s   V_5
    IL_0038:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.SubsystemBlockBehavior>::GetEnumerator()
    IL_003d:  stloc.s    V_4
    .try
    {
      IL_003f:  br.s       IL_004e

      IL_0041:  ldloca.s   V_4
      IL_0043:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.SubsystemBlockBehavior>::get_Current()
      IL_0048:  ldloc.3
      IL_0049:  callvirt   instance void Game.SubsystemBlockBehavior::OnChunkDiscarding(class Game.TerrainChunk)
      IL_004e:  ldloca.s   V_4
      IL_0050:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.SubsystemBlockBehavior>::MoveNext()
      IL_0055:  brtrue.s   IL_0041

      IL_0057:  leave.s    IL_0067

    }  // end .try
    finally
    {
      IL_0059:  ldloca.s   V_4
      IL_005b:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.SubsystemBlockBehavior>
      IL_0061:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0066:  endfinally
    }  // end handler
    IL_0067:  ldarg.0
    IL_0068:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_006d:  callvirt   instance class Game.TerrainSerializer129 Game.SubsystemTerrain::get_TerrainSerializer()
    IL_0072:  ldloc.3
    IL_0073:  callvirt   instance void Game.TerrainSerializer129::SaveChunk(class Game.TerrainChunk)
    IL_0078:  ldarg.0
    IL_0079:  ldfld      class Game.Terrain Game.TerrainUpdater::m_terrain
    IL_007e:  ldloc.3
    IL_007f:  callvirt   instance void Game.Terrain::FreeChunk(class Game.TerrainChunk)
    IL_0084:  ldarg.0
    IL_0085:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_008a:  callvirt   instance class Game.TerrainRenderer Game.SubsystemTerrain::get_TerrainRenderer()
    IL_008f:  ldloc.3
    IL_0090:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_0095:  callvirt   instance void Game.TerrainRenderer::ReturnTerrainChunkGeometryVertexIndexBuffers(class Game.TerrainChunkGeometry)
    IL_009a:  ldloc.2
    IL_009b:  ldc.i4.1
    IL_009c:  add
    IL_009d:  stloc.2
    IL_009e:  ldloc.2
    IL_009f:  ldloc.1
    IL_00a0:  ldlen
    IL_00a1:  conv.i4
    IL_00a2:  blt        IL_0015

    IL_00a7:  ldc.i4.0
    IL_00a8:  stloc.s    V_6
    IL_00aa:  br         IL_020a

    IL_00af:  ldarg.1
    IL_00b0:  ldloc.s    V_6
    IL_00b2:  ldelema    Game.TerrainUpdater/UpdateLocation
    IL_00b7:  ldfld      valuetype [Engine]Engine.Vector2 Game.TerrainUpdater/UpdateLocation::Center
    IL_00bc:  ldarg.1
    IL_00bd:  ldloc.s    V_6
    IL_00bf:  ldelema    Game.TerrainUpdater/UpdateLocation
    IL_00c4:  ldfld      float32 Game.TerrainUpdater/UpdateLocation::ContentDistance
    IL_00c9:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_00ce:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_00d3:  call       valuetype [Engine]Engine.Point2 Game.Terrain::ToChunk(valuetype [Engine]Engine.Vector2)
    IL_00d8:  stloc.s    V_7
    IL_00da:  ldarg.1
    IL_00db:  ldloc.s    V_6
    IL_00dd:  ldelema    Game.TerrainUpdater/UpdateLocation
    IL_00e2:  ldfld      valuetype [Engine]Engine.Vector2 Game.TerrainUpdater/UpdateLocation::Center
    IL_00e7:  ldarg.1
    IL_00e8:  ldloc.s    V_6
    IL_00ea:  ldelema    Game.TerrainUpdater/UpdateLocation
    IL_00ef:  ldfld      float32 Game.TerrainUpdater/UpdateLocation::ContentDistance
    IL_00f4:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_00f9:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_00fe:  call       valuetype [Engine]Engine.Point2 Game.Terrain::ToChunk(valuetype [Engine]Engine.Vector2)
    IL_0103:  stloc.s    V_8
    IL_0105:  ldloc.s    V_7
    IL_0107:  ldfld      int32 [Engine]Engine.Point2::X
    IL_010c:  stloc.s    V_9
    IL_010e:  br         IL_01f6

    IL_0113:  ldloc.s    V_7
    IL_0115:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_011a:  stloc.s    V_10
    IL_011c:  br         IL_01e2

    IL_0121:  ldloca.s   V_11
    IL_0123:  ldloc.s    V_9
    IL_0125:  conv.r4
    IL_0126:  ldc.r4     0.5
    IL_012b:  add
    IL_012c:  ldc.r4     16.
    IL_0131:  mul
    IL_0132:  ldloc.s    V_10
    IL_0134:  conv.r4
    IL_0135:  ldc.r4     0.5
    IL_013a:  add
    IL_013b:  ldc.r4     16.
    IL_0140:  mul
    IL_0141:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0146:  ldarg.0
    IL_0147:  ldfld      class Game.Terrain Game.TerrainUpdater::m_terrain
    IL_014c:  ldloc.s    V_9
    IL_014e:  ldloc.s    V_10
    IL_0150:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCoords(int32,
                                                                                         int32)
    IL_0155:  stloc.s    V_12
    IL_0157:  ldloc.s    V_12
    IL_0159:  brtrue.s   IL_019d

    IL_015b:  ldloc.s    V_11
    IL_015d:  ldarg.1
    IL_015e:  call       bool Game.TerrainUpdater::IsChunkInRange(valuetype [Engine]Engine.Vector2,
                                                                  valuetype Game.TerrainUpdater/UpdateLocation[])
    IL_0163:  brfalse.s  IL_01dc

    IL_0165:  ldc.i4.1
    IL_0166:  stloc.0
    IL_0167:  ldarg.0
    IL_0168:  ldfld      class Game.Terrain Game.TerrainUpdater::m_terrain
    IL_016d:  ldloc.s    V_9
    IL_016f:  ldloc.s    V_10
    IL_0171:  callvirt   instance class Game.TerrainChunk Game.Terrain::AllocateChunk(int32,
                                                                                      int32)
    IL_0176:  pop
    IL_0177:  ldarg.0
    IL_0178:  ldloc.s    V_9
    IL_017a:  ldloc.s    V_10
    IL_017c:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_0181:  ldc.i4.0
    IL_0182:  ldc.i4.0
    IL_0183:  ldc.i4.0
    IL_0184:  call       instance void Game.TerrainUpdater::DowngradeChunkNeighborhoodState(valuetype [Engine]Engine.Point2,
                                                                                            int32,
                                                                                            valuetype Game.TerrainChunkState,
                                                                                            bool)
    IL_0189:  ldarg.0
    IL_018a:  ldloc.s    V_9
    IL_018c:  ldloc.s    V_10
    IL_018e:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_0193:  ldc.i4.1
    IL_0194:  ldc.i4.5
    IL_0195:  ldc.i4.0
    IL_0196:  call       instance void Game.TerrainUpdater::DowngradeChunkNeighborhoodState(valuetype [Engine]Engine.Point2,
                                                                                            int32,
                                                                                            valuetype Game.TerrainChunkState,
                                                                                            bool)
    IL_019b:  br.s       IL_01dc

    IL_019d:  ldloc.s    V_12
    IL_019f:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_01a4:  ldfld      int32 [Engine]Engine.Point2::X
    IL_01a9:  ldloc.s    V_9
    IL_01ab:  bne.un.s   IL_01bd

    IL_01ad:  ldloc.s    V_12
    IL_01af:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_01b4:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_01b9:  ldloc.s    V_10
    IL_01bb:  beq.s      IL_01dc

    IL_01bd:  ldstr      "Chunk wraparound detected at {0}"
    IL_01c2:  ldc.i4.1
    IL_01c3:  newarr     [System.Runtime]System.Object
    IL_01c8:  dup
    IL_01c9:  ldc.i4.0
    IL_01ca:  ldloc.s    V_12
    IL_01cc:  ldfld      valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_01d1:  box        [Engine]Engine.Point2
    IL_01d6:  stelem.ref
    IL_01d7:  call       void [Engine]Engine.Log::Error(string,
                                                        object[])
    IL_01dc:  ldloc.s    V_10
    IL_01de:  ldc.i4.1
    IL_01df:  add
    IL_01e0:  stloc.s    V_10
    IL_01e2:  ldloc.s    V_10
    IL_01e4:  ldloc.s    V_8
    IL_01e6:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_01eb:  ble        IL_0121

    IL_01f0:  ldloc.s    V_9
    IL_01f2:  ldc.i4.1
    IL_01f3:  add
    IL_01f4:  stloc.s    V_9
    IL_01f6:  ldloc.s    V_9
    IL_01f8:  ldloc.s    V_8
    IL_01fa:  ldfld      int32 [Engine]Engine.Point2::X
    IL_01ff:  ble        IL_0113

    IL_0204:  ldloc.s    V_6
    IL_0206:  ldc.i4.1
    IL_0207:  add
    IL_0208:  stloc.s    V_6
    IL_020a:  ldloc.s    V_6
    IL_020c:  ldarg.1
    IL_020d:  ldlen
    IL_020e:  conv.i4
    IL_020f:  blt        IL_00af

    IL_0214:  ldloc.0
    IL_0215:  ret
  } // end of method TerrainUpdater::AllocateAndFreeChunks

  .method private hidebysig instance bool 
          SendReceiveChunkStates() cil managed
  {
    // 代码大小       112 (0x70)
    .maxstack  2
    .locals init (bool V_0,
             class Game.TerrainChunk[] V_1,
             int32 V_2,
             class Game.TerrainChunk V_3)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldarg.0
    IL_0003:  ldflda     valuetype Game.TerrainUpdater/UpdateParameters Game.TerrainUpdater::m_updateParameters
    IL_0008:  ldfld      class Game.TerrainChunk[] Game.TerrainUpdater/UpdateParameters::Chunks
    IL_000d:  stloc.1
    IL_000e:  ldc.i4.0
    IL_000f:  stloc.2
    IL_0010:  br.s       IL_0068

    IL_0012:  ldloc.1
    IL_0013:  ldloc.2
    IL_0014:  ldelem.ref
    IL_0015:  stloc.3
    IL_0016:  ldloc.3
    IL_0017:  ldfld      bool Game.TerrainChunk::WasDowngraded
    IL_001c:  brfalse.s  IL_003a

    IL_001e:  ldloc.3
    IL_001f:  ldloc.3
    IL_0020:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_0025:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainChunkState>::.ctor(!0)
    IL_002a:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainChunkState> Game.TerrainChunk::DowngradedState
    IL_002f:  ldloc.3
    IL_0030:  ldc.i4.0
    IL_0031:  stfld      bool Game.TerrainChunk::WasDowngraded
    IL_0036:  ldc.i4.1
    IL_0037:  stloc.0
    IL_0038:  br.s       IL_0058

    IL_003a:  ldloc.3
    IL_003b:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainChunkState> Game.TerrainChunk::UpgradedState
    IL_0040:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainChunkState>::get_HasValue()
    IL_0045:  brfalse.s  IL_0058

    IL_0047:  ldloc.3
    IL_0048:  ldloc.3
    IL_0049:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainChunkState> Game.TerrainChunk::UpgradedState
    IL_004e:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainChunkState>::get_Value()
    IL_0053:  stfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_0058:  ldloc.3
    IL_0059:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainChunkState> Game.TerrainChunk::UpgradedState
    IL_005e:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainChunkState>
    IL_0064:  ldloc.2
    IL_0065:  ldc.i4.1
    IL_0066:  add
    IL_0067:  stloc.2
    IL_0068:  ldloc.2
    IL_0069:  ldloc.1
    IL_006a:  ldlen
    IL_006b:  conv.i4
    IL_006c:  blt.s      IL_0012

    IL_006e:  ldloc.0
    IL_006f:  ret
  } // end of method TerrainUpdater::SendReceiveChunkStates

  .method private hidebysig instance void 
          SendReceiveChunkStatesThread() cil managed
  {
    // 代码大小       107 (0x6b)
    .maxstack  2
    .locals init (class Game.TerrainChunk[] V_0,
             int32 V_1,
             class Game.TerrainChunk V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype Game.TerrainUpdater/UpdateParameters Game.TerrainUpdater::m_threadUpdateParameters
    IL_0006:  ldfld      class Game.TerrainChunk[] Game.TerrainUpdater/UpdateParameters::Chunks
    IL_000b:  stloc.0
    IL_000c:  ldc.i4.0
    IL_000d:  stloc.1
    IL_000e:  br.s       IL_0064

    IL_0010:  ldloc.0
    IL_0011:  ldloc.1
    IL_0012:  ldelem.ref
    IL_0013:  stloc.2
    IL_0014:  ldloc.2
    IL_0015:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainChunkState> Game.TerrainChunk::DowngradedState
    IL_001a:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainChunkState>::get_HasValue()
    IL_001f:  brfalse.s  IL_0040

    IL_0021:  ldloc.2
    IL_0022:  ldloc.2
    IL_0023:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainChunkState> Game.TerrainChunk::DowngradedState
    IL_0028:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainChunkState>::get_Value()
    IL_002d:  stfld      valuetype Game.TerrainChunkState Game.TerrainChunk::ThreadState
    IL_0032:  ldloc.2
    IL_0033:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainChunkState> Game.TerrainChunk::DowngradedState
    IL_0038:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainChunkState>
    IL_003e:  br.s       IL_0059

    IL_0040:  ldloc.2
    IL_0041:  ldfld      bool Game.TerrainChunk::WasUpgraded
    IL_0046:  brfalse.s  IL_0059

    IL_0048:  ldloc.2
    IL_0049:  ldloc.2
    IL_004a:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::ThreadState
    IL_004f:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainChunkState>::.ctor(!0)
    IL_0054:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainChunkState> Game.TerrainChunk::UpgradedState
    IL_0059:  ldloc.2
    IL_005a:  ldc.i4.0
    IL_005b:  stfld      bool Game.TerrainChunk::WasUpgraded
    IL_0060:  ldloc.1
    IL_0061:  ldc.i4.1
    IL_0062:  add
    IL_0063:  stloc.1
    IL_0064:  ldloc.1
    IL_0065:  ldloc.0
    IL_0066:  ldlen
    IL_0067:  conv.i4
    IL_0068:  blt.s      IL_0010

    IL_006a:  ret
  } // end of method TerrainUpdater::SendReceiveChunkStatesThread

  .method private hidebysig instance void 
          ThreadUpdateFunction() cil managed
  {
    // 代码大小       119 (0x77)
    .maxstack  2
    .locals init (object V_0,
             bool V_1)
    IL_0000:  br.s       IL_006c

    IL_0002:  ldarg.0
    IL_0003:  ldfld      class [System.Threading]System.Threading.ManualResetEvent Game.TerrainUpdater::m_pauseEvent
    IL_0008:  callvirt   instance bool [System.Runtime]System.Threading.WaitHandle::WaitOne()
    IL_000d:  pop
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class [System.Threading]System.Threading.AutoResetEvent Game.TerrainUpdater::m_updateEvent
    IL_0014:  callvirt   instance bool [System.Runtime]System.Threading.WaitHandle::WaitOne()
    IL_0019:  pop
    .try
    {
      .try
      {
        IL_001a:  ldarg.0
        IL_001b:  call       instance bool Game.TerrainUpdater::SynchronousUpdateFunction()
        IL_0020:  brfalse.s  IL_005a

        IL_0022:  ldarg.0
        IL_0023:  ldfld      object Game.TerrainUpdater::m_unpauseLock
        IL_0028:  stloc.0
        IL_0029:  ldc.i4.0
        IL_002a:  stloc.1
        .try
        {
          IL_002b:  ldloc.0
          IL_002c:  ldloca.s   V_1
          IL_002e:  call       void [System.Threading]System.Threading.Monitor::Enter(object,
                                                                                      bool&)
          IL_0033:  ldarg.0
          IL_0034:  ldfld      bool Game.TerrainUpdater::m_unpauseUpdateThread
          IL_0039:  brtrue.s   IL_0047

          IL_003b:  ldarg.0
          IL_003c:  ldfld      class [System.Threading]System.Threading.ManualResetEvent Game.TerrainUpdater::m_pauseEvent
          IL_0041:  callvirt   instance bool [System.Threading]System.Threading.EventWaitHandle::Reset()
          IL_0046:  pop
          IL_0047:  ldarg.0
          IL_0048:  ldc.i4.0
          IL_0049:  stfld      bool Game.TerrainUpdater::m_unpauseUpdateThread
          IL_004e:  leave.s    IL_005a

        }  // end .try
        finally
        {
          IL_0050:  ldloc.1
          IL_0051:  brfalse.s  IL_0059

          IL_0053:  ldloc.0
          IL_0054:  call       void [System.Threading]System.Threading.Monitor::Exit(object)
          IL_0059:  endfinally
        }  // end handler
        IL_005a:  leave.s    IL_006c

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_005c:  pop
        IL_005d:  leave.s    IL_006c

      }  // end handler
    }  // end .try
    finally
    {
      IL_005f:  ldarg.0
      IL_0060:  ldfld      class [System.Threading]System.Threading.AutoResetEvent Game.TerrainUpdater::m_updateEvent
      IL_0065:  callvirt   instance bool [System.Threading]System.Threading.EventWaitHandle::Set()
      IL_006a:  pop
      IL_006b:  endfinally
    }  // end handler
    IL_006c:  ldarg.0
    IL_006d:  volatile.
    IL_006f:  ldfld      bool modreq([System.Runtime]System.Runtime.CompilerServices.IsVolatile) Game.TerrainUpdater::m_quitUpdateThread
    IL_0074:  brfalse.s  IL_0002

    IL_0076:  ret
  } // end of method TerrainUpdater::ThreadUpdateFunction

  .method private hidebysig instance bool 
          SynchronousUpdateFunction() cil managed
  {
    // 代码大小       145 (0x91)
    .maxstack  3
    .locals init (valuetype Game.TerrainChunkState V_0,
             class Game.TerrainChunk V_1,
             object V_2,
             bool V_3,
             float64 V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      object Game.TerrainUpdater::m_updateParametersLock
    IL_0006:  stloc.2
    IL_0007:  ldc.i4.0
    IL_0008:  stloc.3
    .try
    {
      IL_0009:  ldloc.2
      IL_000a:  ldloca.s   V_3
      IL_000c:  call       void [System.Threading]System.Threading.Monitor::Enter(object,
                                                                                  bool&)
      IL_0011:  ldarg.0
      IL_0012:  ldarg.0
      IL_0013:  ldfld      valuetype Game.TerrainUpdater/UpdateParameters Game.TerrainUpdater::m_updateParameters
      IL_0018:  stfld      valuetype Game.TerrainUpdater/UpdateParameters Game.TerrainUpdater::m_threadUpdateParameters
      IL_001d:  ldarg.0
      IL_001e:  call       instance void Game.TerrainUpdater::SendReceiveChunkStatesThread()
      IL_0023:  leave.s    IL_002f

    }  // end .try
    finally
    {
      IL_0025:  ldloc.3
      IL_0026:  brfalse.s  IL_002e

      IL_0028:  ldloc.2
      IL_0029:  call       void [System.Threading]System.Threading.Monitor::Exit(object)
      IL_002e:  endfinally
    }  // end handler
    IL_002f:  ldarg.0
    IL_0030:  ldloca.s   V_0
    IL_0032:  call       instance class Game.TerrainChunk Game.TerrainUpdater::FindBestChunkToUpdate(valuetype Game.TerrainChunkState&)
    IL_0037:  stloc.1
    IL_0038:  ldloc.1
    IL_0039:  brfalse.s  IL_0072

    IL_003b:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0040:  stloc.s    V_4
    IL_0042:  ldarg.0
    IL_0043:  ldloc.1
    IL_0044:  ldarg.0
    IL_0045:  ldfld      class Game.SubsystemSky Game.TerrainUpdater::m_subsystemSky
    IL_004a:  callvirt   instance int32 Game.SubsystemSky::get_SkyLightValue()
    IL_004f:  call       instance void Game.TerrainUpdater::UpdateChunkSingleStep(class Game.TerrainChunk,
                                                                                  int32)
    IL_0054:  ldloc.1
    IL_0055:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::ThreadState
    IL_005a:  ldloc.0
    IL_005b:  bge.s      IL_0070

    IL_005d:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0062:  ldloc.s    V_4
    IL_0064:  sub
    IL_0065:  ldc.r8     9.9999997764825821e-003
    IL_006e:  blt.s      IL_0042

    IL_0070:  ldc.i4.0
    IL_0071:  ret

    IL_0072:  ldsfld     bool Game.TerrainUpdater::LogTerrainUpdateStats
    IL_0077:  brfalse.s  IL_008f

    IL_0079:  ldarg.0
    IL_007a:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_007f:  callvirt   instance void Game.TerrainUpdater/UpdateStatistics::Log()
    IL_0084:  ldarg.0
    IL_0085:  newobj     instance void Game.TerrainUpdater/UpdateStatistics::.ctor()
    IL_008a:  stfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_008f:  ldc.i4.1
    IL_0090:  ret
  } // end of method TerrainUpdater::SynchronousUpdateFunction

  .method private hidebysig instance class Game.TerrainChunk 
          FindBestChunkToUpdate([out] valuetype Game.TerrainChunkState& desiredState) cil managed
  {
    // 代码大小       213 (0xd5)
    .maxstack  3
    .locals init (class Game.TerrainChunk[] V_0,
             valuetype Game.TerrainUpdater/UpdateLocation[] V_1,
             float32 V_2,
             class Game.TerrainChunk V_3,
             int32 V_4,
             class Game.TerrainChunk V_5,
             int32 V_6,
             float32 V_7)
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype Game.TerrainUpdater/UpdateParameters Game.TerrainUpdater::m_threadUpdateParameters
    IL_0006:  ldfld      class Game.TerrainChunk[] Game.TerrainUpdater/UpdateParameters::Chunks
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldflda     valuetype Game.TerrainUpdater/UpdateParameters Game.TerrainUpdater::m_threadUpdateParameters
    IL_0012:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype Game.TerrainUpdater/UpdateLocation> Game.TerrainUpdater/UpdateParameters::Locations
    IL_0017:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<int32,valuetype Game.TerrainUpdater/UpdateLocation>::get_Values()
    IL_001c:  call       !!0[] [System.Linq]System.Linq.Enumerable::ToArray<valuetype Game.TerrainUpdater/UpdateLocation>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0021:  stloc.1
    IL_0022:  ldc.r4     3.4028235e+038
    IL_0027:  stloc.2
    IL_0028:  ldnull
    IL_0029:  stloc.3
    IL_002a:  ldarg.1
    IL_002b:  ldc.i4.0
    IL_002c:  stind.i4
    IL_002d:  ldc.i4.0
    IL_002e:  stloc.s    V_4
    IL_0030:  br         IL_00c9

    IL_0035:  ldloc.0
    IL_0036:  ldloc.s    V_4
    IL_0038:  ldelem.ref
    IL_0039:  stloc.s    V_5
    IL_003b:  ldloc.s    V_5
    IL_003d:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::ThreadState
    IL_0042:  ldc.i4.s   9
    IL_0044:  bge.s      IL_00c3

    IL_0046:  ldc.i4.0
    IL_0047:  stloc.s    V_6
    IL_0049:  br.s       IL_00bc

    IL_004b:  ldloc.1
    IL_004c:  ldloc.s    V_6
    IL_004e:  ldelema    Game.TerrainUpdater/UpdateLocation
    IL_0053:  ldfld      valuetype [Engine]Engine.Vector2 Game.TerrainUpdater/UpdateLocation::Center
    IL_0058:  ldloc.s    V_5
    IL_005a:  ldfld      valuetype [Engine]Engine.Vector2 Game.TerrainChunk::Center
    IL_005f:  call       float32 [Engine]Engine.Vector2::DistanceSquared(valuetype [Engine]Engine.Vector2,
                                                                         valuetype [Engine]Engine.Vector2)
    IL_0064:  stloc.s    V_7
    IL_0066:  ldloc.s    V_7
    IL_0068:  ldloc.2
    IL_0069:  bge.un.s   IL_00b6

    IL_006b:  ldloc.s    V_7
    IL_006d:  ldloc.1
    IL_006e:  ldloc.s    V_6
    IL_0070:  ldelema    Game.TerrainUpdater/UpdateLocation
    IL_0075:  ldfld      float32 Game.TerrainUpdater/UpdateLocation::VisibilityDistance
    IL_007a:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
    IL_007f:  bgt.un.s   IL_008d

    IL_0081:  ldarg.1
    IL_0082:  ldc.i4.s   9
    IL_0084:  stind.i4
    IL_0085:  ldloc.s    V_7
    IL_0087:  stloc.2
    IL_0088:  ldloc.s    V_5
    IL_008a:  stloc.3
    IL_008b:  br.s       IL_00b6

    IL_008d:  ldloc.s    V_5
    IL_008f:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::ThreadState
    IL_0094:  ldc.i4.7
    IL_0095:  bge.s      IL_00b6

    IL_0097:  ldloc.s    V_7
    IL_0099:  ldloc.1
    IL_009a:  ldloc.s    V_6
    IL_009c:  ldelema    Game.TerrainUpdater/UpdateLocation
    IL_00a1:  ldfld      float32 Game.TerrainUpdater/UpdateLocation::ContentDistance
    IL_00a6:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
    IL_00ab:  bgt.un.s   IL_00b6

    IL_00ad:  ldarg.1
    IL_00ae:  ldc.i4.7
    IL_00af:  stind.i4
    IL_00b0:  ldloc.s    V_7
    IL_00b2:  stloc.2
    IL_00b3:  ldloc.s    V_5
    IL_00b5:  stloc.3
    IL_00b6:  ldloc.s    V_6
    IL_00b8:  ldc.i4.1
    IL_00b9:  add
    IL_00ba:  stloc.s    V_6
    IL_00bc:  ldloc.s    V_6
    IL_00be:  ldloc.1
    IL_00bf:  ldlen
    IL_00c0:  conv.i4
    IL_00c1:  blt.s      IL_004b

    IL_00c3:  ldloc.s    V_4
    IL_00c5:  ldc.i4.1
    IL_00c6:  add
    IL_00c7:  stloc.s    V_4
    IL_00c9:  ldloc.s    V_4
    IL_00cb:  ldloc.0
    IL_00cc:  ldlen
    IL_00cd:  conv.i4
    IL_00ce:  blt        IL_0035

    IL_00d3:  ldloc.3
    IL_00d4:  ret
  } // end of method TerrainUpdater::FindBestChunkToUpdate

  .method private hidebysig instance class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk> 
          DetermineSynchronousUpdateChunks(valuetype [Engine]Engine.Vector3 viewPosition,
                                           valuetype [Engine]Engine.Vector3 viewDirection) cil managed
  {
    // 代码大小       335 (0x14f)
    .maxstack  6
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk> V_2,
             valuetype [Engine]Engine.Vector3[] V_3,
             int32 V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             class Game.TerrainChunk V_6)
    IL_0000:  ldarg.2
    IL_0001:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0006:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_000b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0010:  stloc.0
    IL_0011:  ldarg.2
    IL_0012:  ldloc.0
    IL_0013:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_0018:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_001d:  stloc.1
    IL_001e:  ldc.i4.6
    IL_001f:  newarr     [Engine]Engine.Vector3
    IL_0024:  dup
    IL_0025:  ldc.i4.0
    IL_0026:  ldarg.1
    IL_0027:  stelem     [Engine]Engine.Vector3
    IL_002c:  dup
    IL_002d:  ldc.i4.1
    IL_002e:  ldarg.1
    IL_002f:  ldc.r4     6.
    IL_0034:  ldarg.2
    IL_0035:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_003a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_003f:  stelem     [Engine]Engine.Vector3
    IL_0044:  dup
    IL_0045:  ldc.i4.2
    IL_0046:  ldarg.1
    IL_0047:  ldc.r4     6.
    IL_004c:  ldarg.2
    IL_004d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0052:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0057:  ldc.r4     6.
    IL_005c:  ldloc.0
    IL_005d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0062:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0067:  stelem     [Engine]Engine.Vector3
    IL_006c:  dup
    IL_006d:  ldc.i4.3
    IL_006e:  ldarg.1
    IL_006f:  ldc.r4     6.
    IL_0074:  ldarg.2
    IL_0075:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_007a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_007f:  ldc.r4     6.
    IL_0084:  ldloc.0
    IL_0085:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_008a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_008f:  stelem     [Engine]Engine.Vector3
    IL_0094:  dup
    IL_0095:  ldc.i4.4
    IL_0096:  ldarg.1
    IL_0097:  ldc.r4     6.
    IL_009c:  ldarg.2
    IL_009d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00a2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00a7:  ldc.r4     2.
    IL_00ac:  ldloc.1
    IL_00ad:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00b2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00b7:  stelem     [Engine]Engine.Vector3
    IL_00bc:  dup
    IL_00bd:  ldc.i4.5
    IL_00be:  ldarg.1
    IL_00bf:  ldc.r4     6.
    IL_00c4:  ldarg.2
    IL_00c5:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00ca:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00cf:  ldc.r4     2.
    IL_00d4:  ldloc.1
    IL_00d5:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00da:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00df:  stelem     [Engine]Engine.Vector3
    IL_00e4:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk>::.ctor()
    IL_00e9:  stloc.2
    IL_00ea:  stloc.3
    IL_00eb:  ldc.i4.0
    IL_00ec:  stloc.s    V_4
    IL_00ee:  br.s       IL_0146

    IL_00f0:  ldloc.3
    IL_00f1:  ldloc.s    V_4
    IL_00f3:  ldelem     [Engine]Engine.Vector3
    IL_00f8:  stloc.s    V_5
    IL_00fa:  ldarg.0
    IL_00fb:  ldfld      class Game.Terrain Game.TerrainUpdater::m_terrain
    IL_0100:  ldloc.s    V_5
    IL_0102:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0107:  call       int32 Game.Terrain::ToCell(float32)
    IL_010c:  ldloc.s    V_5
    IL_010e:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0113:  call       int32 Game.Terrain::ToCell(float32)
    IL_0118:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_011d:  stloc.s    V_6
    IL_011f:  ldloc.s    V_6
    IL_0121:  brfalse.s  IL_0140

    IL_0123:  ldloc.s    V_6
    IL_0125:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_012a:  ldc.i4.s   9
    IL_012c:  bge.s      IL_0140

    IL_012e:  ldloc.2
    IL_012f:  ldloc.s    V_6
    IL_0131:  callvirt   instance bool class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk>::Contains(!0)
    IL_0136:  brtrue.s   IL_0140

    IL_0138:  ldloc.2
    IL_0139:  ldloc.s    V_6
    IL_013b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk>::Add(!0)
    IL_0140:  ldloc.s    V_4
    IL_0142:  ldc.i4.1
    IL_0143:  add
    IL_0144:  stloc.s    V_4
    IL_0146:  ldloc.s    V_4
    IL_0148:  ldloc.3
    IL_0149:  ldlen
    IL_014a:  conv.i4
    IL_014b:  blt.s      IL_00f0

    IL_014d:  ldloc.2
    IL_014e:  ret
  } // end of method TerrainUpdater::DetermineSynchronousUpdateChunks

  .method private hidebysig instance void 
          UpdateChunkSingleStep(class Game.TerrainChunk chunk,
                                int32 skylightValue) cil managed
  {
    // 代码大小       1417 (0x589)
    .maxstack  6
    .locals init (valuetype Game.TerrainChunkState V_0,
             float64 V_1,
             float64 V_2,
             float64 V_3,
             float64 V_4,
             float64 V_5,
             float64 V_6,
             float64 V_7,
             float64 V_8,
             float64 V_9,
             float64 V_10,
             float64 V_11,
             float64 V_12,
             float64 V_13,
             float64 V_14,
             float64 V_15,
             float64 V_16,
             int32 V_17,
             int32 V_18,
             class Game.TerrainChunk V_19,
             int32 V_20,
             int32 V_21,
             int32 V_22,
             class Game.TerrainChunk V_23,
             float64 V_24,
             float64 V_25,
             class Game.TerrainChunkGeometry V_26,
             bool V_27,
             class Game.TerrainGeometrySubset[] V_28,
             int32 V_29,
             float64 V_30,
             float64 V_31)
    IL_0000:  ldarg.1
    IL_0001:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::ThreadState
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  switch     ( 
                          IL_0032,
                          IL_009e,
                          IL_00f4,
                          IL_014c,
                          IL_01a4,
                          IL_01fc,
                          IL_0252,
                          IL_03e6,
                          IL_0508)
    IL_0031:  ret

    IL_0032:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0037:  stloc.1
    IL_0038:  ldarg.0
    IL_0039:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_003e:  callvirt   instance class Game.TerrainSerializer129 Game.SubsystemTerrain::get_TerrainSerializer()
    IL_0043:  ldarg.1
    IL_0044:  callvirt   instance bool Game.TerrainSerializer129::LoadChunk(class Game.TerrainChunk)
    IL_0049:  brfalse.s  IL_008f

    IL_004b:  ldarg.1
    IL_004c:  ldc.i4.5
    IL_004d:  stfld      valuetype Game.TerrainChunkState Game.TerrainChunk::ThreadState
    IL_0052:  ldarg.1
    IL_0053:  ldc.i4.1
    IL_0054:  stfld      bool Game.TerrainChunk::WasUpgraded
    IL_0059:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_005e:  stloc.2
    IL_005f:  ldarg.1
    IL_0060:  ldc.i4.1
    IL_0061:  stfld      bool Game.TerrainChunk::IsLoaded
    IL_0066:  ldarg.0
    IL_0067:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_006c:  dup
    IL_006d:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::LoadingCount
    IL_0072:  ldc.i4.1
    IL_0073:  add
    IL_0074:  stfld      int32 Game.TerrainUpdater/UpdateStatistics::LoadingCount
    IL_0079:  ldarg.0
    IL_007a:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_007f:  dup
    IL_0080:  ldfld      float64 Game.TerrainUpdater/UpdateStatistics::LoadingTime
    IL_0085:  ldloc.2
    IL_0086:  ldloc.1
    IL_0087:  sub
    IL_0088:  add
    IL_0089:  stfld      float64 Game.TerrainUpdater/UpdateStatistics::LoadingTime
    IL_008e:  ret

    IL_008f:  ldarg.1
    IL_0090:  ldc.i4.1
    IL_0091:  stfld      valuetype Game.TerrainChunkState Game.TerrainChunk::ThreadState
    IL_0096:  ldarg.1
    IL_0097:  ldc.i4.1
    IL_0098:  stfld      bool Game.TerrainChunk::WasUpgraded
    IL_009d:  ret

    IL_009e:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_00a3:  stloc.3
    IL_00a4:  ldarg.0
    IL_00a5:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_00aa:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_00af:  ldarg.1
    IL_00b0:  callvirt   instance void Game.ITerrainContentsGenerator::GenerateChunkContentsPass1(class Game.TerrainChunk)
    IL_00b5:  ldarg.1
    IL_00b6:  ldc.i4.2
    IL_00b7:  stfld      valuetype Game.TerrainChunkState Game.TerrainChunk::ThreadState
    IL_00bc:  ldarg.1
    IL_00bd:  ldc.i4.1
    IL_00be:  stfld      bool Game.TerrainChunk::WasUpgraded
    IL_00c3:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_00c8:  stloc.s    V_4
    IL_00ca:  ldarg.0
    IL_00cb:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_00d0:  dup
    IL_00d1:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::ContentsCount1
    IL_00d6:  ldc.i4.1
    IL_00d7:  add
    IL_00d8:  stfld      int32 Game.TerrainUpdater/UpdateStatistics::ContentsCount1
    IL_00dd:  ldarg.0
    IL_00de:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_00e3:  dup
    IL_00e4:  ldfld      float64 Game.TerrainUpdater/UpdateStatistics::ContentsTime1
    IL_00e9:  ldloc.s    V_4
    IL_00eb:  ldloc.3
    IL_00ec:  sub
    IL_00ed:  add
    IL_00ee:  stfld      float64 Game.TerrainUpdater/UpdateStatistics::ContentsTime1
    IL_00f3:  ret

    IL_00f4:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_00f9:  stloc.s    V_5
    IL_00fb:  ldarg.0
    IL_00fc:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_0101:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_0106:  ldarg.1
    IL_0107:  callvirt   instance void Game.ITerrainContentsGenerator::GenerateChunkContentsPass2(class Game.TerrainChunk)
    IL_010c:  ldarg.1
    IL_010d:  ldc.i4.3
    IL_010e:  stfld      valuetype Game.TerrainChunkState Game.TerrainChunk::ThreadState
    IL_0113:  ldarg.1
    IL_0114:  ldc.i4.1
    IL_0115:  stfld      bool Game.TerrainChunk::WasUpgraded
    IL_011a:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_011f:  stloc.s    V_6
    IL_0121:  ldarg.0
    IL_0122:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_0127:  dup
    IL_0128:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::ContentsCount2
    IL_012d:  ldc.i4.1
    IL_012e:  add
    IL_012f:  stfld      int32 Game.TerrainUpdater/UpdateStatistics::ContentsCount2
    IL_0134:  ldarg.0
    IL_0135:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_013a:  dup
    IL_013b:  ldfld      float64 Game.TerrainUpdater/UpdateStatistics::ContentsTime2
    IL_0140:  ldloc.s    V_6
    IL_0142:  ldloc.s    V_5
    IL_0144:  sub
    IL_0145:  add
    IL_0146:  stfld      float64 Game.TerrainUpdater/UpdateStatistics::ContentsTime2
    IL_014b:  ret

    IL_014c:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0151:  stloc.s    V_7
    IL_0153:  ldarg.0
    IL_0154:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_0159:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_015e:  ldarg.1
    IL_015f:  callvirt   instance void Game.ITerrainContentsGenerator::GenerateChunkContentsPass3(class Game.TerrainChunk)
    IL_0164:  ldarg.1
    IL_0165:  ldc.i4.4
    IL_0166:  stfld      valuetype Game.TerrainChunkState Game.TerrainChunk::ThreadState
    IL_016b:  ldarg.1
    IL_016c:  ldc.i4.1
    IL_016d:  stfld      bool Game.TerrainChunk::WasUpgraded
    IL_0172:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0177:  stloc.s    V_8
    IL_0179:  ldarg.0
    IL_017a:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_017f:  dup
    IL_0180:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::ContentsCount3
    IL_0185:  ldc.i4.1
    IL_0186:  add
    IL_0187:  stfld      int32 Game.TerrainUpdater/UpdateStatistics::ContentsCount3
    IL_018c:  ldarg.0
    IL_018d:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_0192:  dup
    IL_0193:  ldfld      float64 Game.TerrainUpdater/UpdateStatistics::ContentsTime3
    IL_0198:  ldloc.s    V_8
    IL_019a:  ldloc.s    V_7
    IL_019c:  sub
    IL_019d:  add
    IL_019e:  stfld      float64 Game.TerrainUpdater/UpdateStatistics::ContentsTime3
    IL_01a3:  ret

    IL_01a4:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_01a9:  stloc.s    V_9
    IL_01ab:  ldarg.0
    IL_01ac:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_01b1:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_01b6:  ldarg.1
    IL_01b7:  callvirt   instance void Game.ITerrainContentsGenerator::GenerateChunkContentsPass4(class Game.TerrainChunk)
    IL_01bc:  ldarg.1
    IL_01bd:  ldc.i4.5
    IL_01be:  stfld      valuetype Game.TerrainChunkState Game.TerrainChunk::ThreadState
    IL_01c3:  ldarg.1
    IL_01c4:  ldc.i4.1
    IL_01c5:  stfld      bool Game.TerrainChunk::WasUpgraded
    IL_01ca:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_01cf:  stloc.s    V_10
    IL_01d1:  ldarg.0
    IL_01d2:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_01d7:  dup
    IL_01d8:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::ContentsCount4
    IL_01dd:  ldc.i4.1
    IL_01de:  add
    IL_01df:  stfld      int32 Game.TerrainUpdater/UpdateStatistics::ContentsCount4
    IL_01e4:  ldarg.0
    IL_01e5:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_01ea:  dup
    IL_01eb:  ldfld      float64 Game.TerrainUpdater/UpdateStatistics::ContentsTime4
    IL_01f0:  ldloc.s    V_10
    IL_01f2:  ldloc.s    V_9
    IL_01f4:  sub
    IL_01f5:  add
    IL_01f6:  stfld      float64 Game.TerrainUpdater/UpdateStatistics::ContentsTime4
    IL_01fb:  ret

    IL_01fc:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0201:  stloc.s    V_11
    IL_0203:  ldarg.0
    IL_0204:  ldarg.1
    IL_0205:  ldarg.2
    IL_0206:  call       instance void Game.TerrainUpdater::GenerateChunkLightAndHeight(class Game.TerrainChunk,
                                                                                        int32)
    IL_020b:  ldarg.1
    IL_020c:  ldc.i4.6
    IL_020d:  stfld      valuetype Game.TerrainChunkState Game.TerrainChunk::ThreadState
    IL_0212:  ldarg.1
    IL_0213:  ldc.i4.1
    IL_0214:  stfld      bool Game.TerrainChunk::WasUpgraded
    IL_0219:  ldarg.1
    IL_021a:  ldc.i4.0
    IL_021b:  stfld      int32 Game.TerrainChunk::LightPropagationMask
    IL_0220:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0225:  stloc.s    V_12
    IL_0227:  ldarg.0
    IL_0228:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_022d:  dup
    IL_022e:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::LightCount
    IL_0233:  ldc.i4.1
    IL_0234:  add
    IL_0235:  stfld      int32 Game.TerrainUpdater/UpdateStatistics::LightCount
    IL_023a:  ldarg.0
    IL_023b:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_0240:  dup
    IL_0241:  ldfld      float64 Game.TerrainUpdater/UpdateStatistics::LightTime
    IL_0246:  ldloc.s    V_12
    IL_0248:  ldloc.s    V_11
    IL_024a:  sub
    IL_024b:  add
    IL_024c:  stfld      float64 Game.TerrainUpdater/UpdateStatistics::LightTime
    IL_0251:  ret

    IL_0252:  ldc.i4.s   -2
    IL_0254:  stloc.s    V_17
    IL_0256:  br.s       IL_02b6

    IL_0258:  ldc.i4.s   -2
    IL_025a:  stloc.s    V_18
    IL_025c:  br.s       IL_02ab

    IL_025e:  ldarg.0
    IL_025f:  ldfld      class Game.Terrain Game.TerrainUpdater::m_terrain
    IL_0264:  ldarg.1
    IL_0265:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_026a:  ldfld      int32 [Engine]Engine.Point2::X
    IL_026f:  ldloc.s    V_17
    IL_0271:  ldc.i4.s   16
    IL_0273:  mul
    IL_0274:  add
    IL_0275:  ldarg.1
    IL_0276:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_027b:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0280:  ldloc.s    V_18
    IL_0282:  ldc.i4.s   16
    IL_0284:  mul
    IL_0285:  add
    IL_0286:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_028b:  stloc.s    V_19
    IL_028d:  ldloc.s    V_19
    IL_028f:  brfalse.s  IL_02a5

    IL_0291:  ldloc.s    V_19
    IL_0293:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::ThreadState
    IL_0298:  ldc.i4.6
    IL_0299:  bge.s      IL_02a5

    IL_029b:  ldarg.0
    IL_029c:  ldloc.s    V_19
    IL_029e:  ldarg.2
    IL_029f:  call       instance void Game.TerrainUpdater::UpdateChunkSingleStep(class Game.TerrainChunk,
                                                                                  int32)
    IL_02a4:  ret

    IL_02a5:  ldloc.s    V_18
    IL_02a7:  ldc.i4.1
    IL_02a8:  add
    IL_02a9:  stloc.s    V_18
    IL_02ab:  ldloc.s    V_18
    IL_02ad:  ldc.i4.2
    IL_02ae:  ble.s      IL_025e

    IL_02b0:  ldloc.s    V_17
    IL_02b2:  ldc.i4.1
    IL_02b3:  add
    IL_02b4:  stloc.s    V_17
    IL_02b6:  ldloc.s    V_17
    IL_02b8:  ldc.i4.2
    IL_02b9:  ble.s      IL_0258

    IL_02bb:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_02c0:  stloc.s    V_13
    IL_02c2:  ldarg.0
    IL_02c3:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainUpdater/LightSource> Game.TerrainUpdater::m_lightSources
    IL_02c8:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainUpdater/LightSource>::Clear()
    IL_02cd:  ldc.i4.m1
    IL_02ce:  stloc.s    V_20
    IL_02d0:  br.s       IL_0346

    IL_02d2:  ldc.i4.m1
    IL_02d3:  stloc.s    V_21
    IL_02d5:  br.s       IL_033b

    IL_02d7:  ldloc.s    V_20
    IL_02d9:  ldloc.s    V_21
    IL_02db:  call       int32 Game.TerrainUpdater::CalculateLightPropagationBitIndex(int32,
                                                                                      int32)
    IL_02e0:  stloc.s    V_22
    IL_02e2:  ldarg.1
    IL_02e3:  ldfld      int32 Game.TerrainChunk::LightPropagationMask
    IL_02e8:  ldloc.s    V_22
    IL_02ea:  ldc.i4.s   31
    IL_02ec:  and
    IL_02ed:  shr
    IL_02ee:  ldc.i4.1
    IL_02ef:  and
    IL_02f0:  brtrue.s   IL_0335

    IL_02f2:  ldarg.0
    IL_02f3:  ldfld      class Game.Terrain Game.TerrainUpdater::m_terrain
    IL_02f8:  ldarg.1
    IL_02f9:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_02fe:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0303:  ldloc.s    V_20
    IL_0305:  ldc.i4.s   16
    IL_0307:  mul
    IL_0308:  add
    IL_0309:  ldarg.1
    IL_030a:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_030f:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0314:  ldloc.s    V_21
    IL_0316:  ldc.i4.s   16
    IL_0318:  mul
    IL_0319:  add
    IL_031a:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_031f:  stloc.s    V_23
    IL_0321:  ldloc.s    V_23
    IL_0323:  brfalse.s  IL_0335

    IL_0325:  ldarg.0
    IL_0326:  ldloc.s    V_23
    IL_0328:  call       instance void Game.TerrainUpdater::GenerateChunkLightSources(class Game.TerrainChunk)
    IL_032d:  ldarg.0
    IL_032e:  ldloc.s    V_23
    IL_0330:  call       instance void Game.TerrainUpdater::UpdateNeighborsLightPropagationBitmasks(class Game.TerrainChunk)
    IL_0335:  ldloc.s    V_21
    IL_0337:  ldc.i4.1
    IL_0338:  add
    IL_0339:  stloc.s    V_21
    IL_033b:  ldloc.s    V_21
    IL_033d:  ldc.i4.1
    IL_033e:  ble.s      IL_02d7

    IL_0340:  ldloc.s    V_20
    IL_0342:  ldc.i4.1
    IL_0343:  add
    IL_0344:  stloc.s    V_20
    IL_0346:  ldloc.s    V_20
    IL_0348:  ldc.i4.1
    IL_0349:  ble.s      IL_02d2

    IL_034b:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0350:  stloc.s    V_14
    IL_0352:  ldarg.0
    IL_0353:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_0358:  dup
    IL_0359:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::LightSourcesCount
    IL_035e:  ldc.i4.1
    IL_035f:  add
    IL_0360:  stfld      int32 Game.TerrainUpdater/UpdateStatistics::LightSourcesCount
    IL_0365:  ldarg.0
    IL_0366:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_036b:  dup
    IL_036c:  ldfld      float64 Game.TerrainUpdater/UpdateStatistics::LightSourcesTime
    IL_0371:  ldloc.s    V_14
    IL_0373:  ldloc.s    V_13
    IL_0375:  sub
    IL_0376:  add
    IL_0377:  stfld      float64 Game.TerrainUpdater/UpdateStatistics::LightSourcesTime
    IL_037c:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0381:  stloc.s    V_15
    IL_0383:  ldarg.0
    IL_0384:  call       instance void Game.TerrainUpdater::PropagateLight()
    IL_0389:  ldarg.1
    IL_038a:  ldc.i4.7
    IL_038b:  stfld      valuetype Game.TerrainChunkState Game.TerrainChunk::ThreadState
    IL_0390:  ldarg.1
    IL_0391:  ldc.i4.1
    IL_0392:  stfld      bool Game.TerrainChunk::WasUpgraded
    IL_0397:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_039c:  stloc.s    V_16
    IL_039e:  ldarg.0
    IL_039f:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_03a4:  dup
    IL_03a5:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::LightPropagateCount
    IL_03aa:  ldc.i4.1
    IL_03ab:  add
    IL_03ac:  stfld      int32 Game.TerrainUpdater/UpdateStatistics::LightPropagateCount
    IL_03b1:  ldarg.0
    IL_03b2:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_03b7:  dup
    IL_03b8:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::LightSourceInstancesCount
    IL_03bd:  ldarg.0
    IL_03be:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainUpdater/LightSource> Game.TerrainUpdater::m_lightSources
    IL_03c3:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainUpdater/LightSource>::get_Count()
    IL_03c8:  add
    IL_03c9:  stfld      int32 Game.TerrainUpdater/UpdateStatistics::LightSourceInstancesCount
    IL_03ce:  ldarg.0
    IL_03cf:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_03d4:  dup
    IL_03d5:  ldfld      float64 Game.TerrainUpdater/UpdateStatistics::LightPropagateTime
    IL_03da:  ldloc.s    V_16
    IL_03dc:  ldloc.s    V_15
    IL_03de:  sub
    IL_03df:  add
    IL_03e0:  stfld      float64 Game.TerrainUpdater/UpdateStatistics::LightPropagateTime
    IL_03e5:  ret

    IL_03e6:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_03eb:  stloc.s    V_24
    IL_03ed:  ldarg.1
    IL_03ee:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_03f3:  stloc.s    V_26
    IL_03f5:  ldc.i4.0
    IL_03f6:  stloc.s    V_27
    .try
    {
      IL_03f8:  ldloc.s    V_26
      IL_03fa:  ldloca.s   V_27
      IL_03fc:  call       void [System.Threading]System.Threading.Monitor::Enter(object,
                                                                                  bool&)
      IL_0401:  ldarg.1
      IL_0402:  ldarg.0
      IL_0403:  ldarg.1
      IL_0404:  call       instance int64 Game.TerrainUpdater::CalculateChunkGeometryHash(class Game.TerrainChunk)
      IL_0409:  stfld      int64 Game.TerrainChunk::ContentsHash
      IL_040e:  ldarg.1
      IL_040f:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
      IL_0414:  ldfld      int64 Game.TerrainChunkGeometry::GeometryHash
      IL_0419:  brfalse.s  IL_0455

      IL_041b:  ldarg.1
      IL_041c:  ldfld      int64 Game.TerrainChunk::ContentsHash
      IL_0421:  ldarg.1
      IL_0422:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
      IL_0427:  ldfld      int64 Game.TerrainChunkGeometry::GeometryHash
      IL_042c:  bne.un.s   IL_0455

      IL_042e:  ldarg.1
      IL_042f:  ldc.i4.s   9
      IL_0431:  stfld      valuetype Game.TerrainChunkState Game.TerrainChunk::ThreadState
      IL_0436:  ldarg.1
      IL_0437:  ldc.i4.1
      IL_0438:  stfld      bool Game.TerrainChunk::WasUpgraded
      IL_043d:  ldarg.0
      IL_043e:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
      IL_0443:  dup
      IL_0444:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::SkippedVertices
      IL_0449:  ldc.i4.1
      IL_044a:  add
      IL_044b:  stfld      int32 Game.TerrainUpdater/UpdateStatistics::SkippedVertices
      IL_0450:  leave      IL_0588

      IL_0455:  ldarg.1
      IL_0456:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
      IL_045b:  ldfld      class Game.TerrainGeometrySubset[] Game.TerrainChunkGeometry::AllSubsets
      IL_0460:  stloc.s    V_28
      IL_0462:  ldc.i4.0
      IL_0463:  stloc.s    V_29
      IL_0465:  br.s       IL_0487

      IL_0467:  ldloc.s    V_28
      IL_0469:  ldloc.s    V_29
      IL_046b:  ldelem.ref
      IL_046c:  dup
      IL_046d:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
      IL_0472:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::Clear()
      IL_0477:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
      IL_047c:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Clear()
      IL_0481:  ldloc.s    V_29
      IL_0483:  ldc.i4.1
      IL_0484:  add
      IL_0485:  stloc.s    V_29
      IL_0487:  ldloc.s    V_29
      IL_0489:  ldloc.s    V_28
      IL_048b:  ldlen
      IL_048c:  conv.i4
      IL_048d:  blt.s      IL_0467

      IL_048f:  ldarg.1
      IL_0490:  ldc.r4     128.
      IL_0495:  stfld      float32 Game.TerrainChunk::GeometryMinY
      IL_049a:  ldarg.1
      IL_049b:  ldc.r4     0.0
      IL_04a0:  stfld      float32 Game.TerrainChunk::GeometryMaxY
      IL_04a5:  ldarg.0
      IL_04a6:  ldarg.1
      IL_04a7:  ldc.i4.0
      IL_04a8:  ldc.i4.0
      IL_04a9:  ldc.i4.s   16
      IL_04ab:  ldc.i4.8
      IL_04ac:  call       instance void Game.TerrainUpdater::GenerateChunkVertices(class Game.TerrainChunk,
                                                                                    int32,
                                                                                    int32,
                                                                                    int32,
                                                                                    int32)
      IL_04b1:  ldarg.1
      IL_04b2:  ldc.i4.0
      IL_04b3:  volatile.
      IL_04b5:  stfld      bool modreq([System.Runtime]System.Runtime.CompilerServices.IsVolatile) Game.TerrainChunk::NewGeometryData
      IL_04ba:  leave.s    IL_04c8

    }  // end .try
    finally
    {
      IL_04bc:  ldloc.s    V_27
      IL_04be:  brfalse.s  IL_04c7

      IL_04c0:  ldloc.s    V_26
      IL_04c2:  call       void [System.Threading]System.Threading.Monitor::Exit(object)
      IL_04c7:  endfinally
    }  // end handler
    IL_04c8:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_04cd:  stloc.s    V_25
    IL_04cf:  ldarg.1
    IL_04d0:  ldc.i4.8
    IL_04d1:  stfld      valuetype Game.TerrainChunkState Game.TerrainChunk::ThreadState
    IL_04d6:  ldarg.1
    IL_04d7:  ldc.i4.1
    IL_04d8:  stfld      bool Game.TerrainChunk::WasUpgraded
    IL_04dd:  ldarg.0
    IL_04de:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_04e3:  dup
    IL_04e4:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::VerticesCount1
    IL_04e9:  ldc.i4.1
    IL_04ea:  add
    IL_04eb:  stfld      int32 Game.TerrainUpdater/UpdateStatistics::VerticesCount1
    IL_04f0:  ldarg.0
    IL_04f1:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_04f6:  dup
    IL_04f7:  ldfld      float64 Game.TerrainUpdater/UpdateStatistics::VerticesTime1
    IL_04fc:  ldloc.s    V_25
    IL_04fe:  ldloc.s    V_24
    IL_0500:  sub
    IL_0501:  add
    IL_0502:  stfld      float64 Game.TerrainUpdater/UpdateStatistics::VerticesTime1
    IL_0507:  ret

    IL_0508:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_050d:  stloc.s    V_30
    IL_050f:  ldarg.1
    IL_0510:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_0515:  stloc.s    V_26
    IL_0517:  ldc.i4.0
    IL_0518:  stloc.s    V_27
    .try
    {
      IL_051a:  ldloc.s    V_26
      IL_051c:  ldloca.s   V_27
      IL_051e:  call       void [System.Threading]System.Threading.Monitor::Enter(object,
                                                                                  bool&)
      IL_0523:  ldarg.0
      IL_0524:  ldarg.1
      IL_0525:  ldc.i4.0
      IL_0526:  ldc.i4.8
      IL_0527:  ldc.i4.s   16
      IL_0529:  ldc.i4.s   16
      IL_052b:  call       instance void Game.TerrainUpdater::GenerateChunkVertices(class Game.TerrainChunk,
                                                                                    int32,
                                                                                    int32,
                                                                                    int32,
                                                                                    int32)
      IL_0530:  ldarg.1
      IL_0531:  ldc.i4.1
      IL_0532:  volatile.
      IL_0534:  stfld      bool modreq([System.Runtime]System.Runtime.CompilerServices.IsVolatile) Game.TerrainChunk::NewGeometryData
      IL_0539:  leave.s    IL_0547

    }  // end .try
    finally
    {
      IL_053b:  ldloc.s    V_27
      IL_053d:  brfalse.s  IL_0546

      IL_053f:  ldloc.s    V_26
      IL_0541:  call       void [System.Threading]System.Threading.Monitor::Exit(object)
      IL_0546:  endfinally
    }  // end handler
    IL_0547:  ldarg.1
    IL_0548:  ldc.i4.s   9
    IL_054a:  stfld      valuetype Game.TerrainChunkState Game.TerrainChunk::ThreadState
    IL_054f:  ldarg.1
    IL_0550:  ldc.i4.1
    IL_0551:  stfld      bool Game.TerrainChunk::WasUpgraded
    IL_0556:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_055b:  stloc.s    V_31
    IL_055d:  ldarg.0
    IL_055e:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_0563:  dup
    IL_0564:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::VerticesCount2
    IL_0569:  ldc.i4.1
    IL_056a:  add
    IL_056b:  stfld      int32 Game.TerrainUpdater/UpdateStatistics::VerticesCount2
    IL_0570:  ldarg.0
    IL_0571:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_0576:  dup
    IL_0577:  ldfld      float64 Game.TerrainUpdater/UpdateStatistics::VerticesTime2
    IL_057c:  ldloc.s    V_31
    IL_057e:  ldloc.s    V_30
    IL_0580:  sub
    IL_0581:  add
    IL_0582:  stfld      float64 Game.TerrainUpdater/UpdateStatistics::VerticesTime2
    IL_0587:  ret

    IL_0588:  ret
  } // end of method TerrainUpdater::UpdateChunkSingleStep

  .method private hidebysig instance void 
          GenerateChunkLightAndHeight(class Game.TerrainChunk chunk,
                                      int32 skylightValue) cil managed
  {
    // 代码大小       212 (0xd4)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             class Game.Block V_9)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br         IL_00cb

    IL_0007:  ldc.i4.0
    IL_0008:  stloc.1
    IL_0009:  br         IL_00bf

    IL_000e:  ldarg.2
    IL_000f:  stloc.2
    IL_0010:  ldloc.0
    IL_0011:  ldc.i4.s   127
    IL_0013:  ldloc.1
    IL_0014:  call       int32 Game.TerrainChunk::CalculateCellIndex(int32,
                                                                     int32,
                                                                     int32)
    IL_0019:  stloc.3
    IL_001a:  ldc.i4.s   127
    IL_001c:  stloc.s    V_4
    IL_001e:  ldc.i4.0
    IL_001f:  stloc.s    V_5
    IL_0021:  ldc.i4.s   127
    IL_0023:  stloc.s    V_6
    IL_0025:  br.s       IL_00a2

    IL_0027:  ldarg.1
    IL_0028:  ldloc.3
    IL_0029:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32)
    IL_002e:  stloc.s    V_7
    IL_0030:  ldloc.s    V_7
    IL_0032:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0037:  stloc.s    V_8
    IL_0039:  ldloc.s    V_8
    IL_003b:  brfalse.s  IL_0081

    IL_003d:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0042:  ldloc.s    V_8
    IL_0044:  ldelem.ref
    IL_0045:  stloc.s    V_9
    IL_0047:  ldloc.s    V_4
    IL_0049:  ldc.i4.s   127
    IL_004b:  bne.un.s   IL_0051

    IL_004d:  ldloc.s    V_6
    IL_004f:  stloc.s    V_4
    IL_0051:  ldloc.s    V_9
    IL_0053:  ldfld      bool Game.Block::IsTransparent
    IL_0058:  brfalse.s  IL_005e

    IL_005a:  ldloc.s    V_6
    IL_005c:  stloc.s    V_5
    IL_005e:  ldloc.2
    IL_005f:  ldc.i4.0
    IL_0060:  ble.s      IL_0085

    IL_0062:  ldloc.s    V_9
    IL_0064:  ldfld      bool Game.Block::IsTransparent
    IL_0069:  brfalse.s  IL_007d

    IL_006b:  ldloc.2
    IL_006c:  ldloc.s    V_9
    IL_006e:  ldfld      int32 Game.Block::LightAttenuation
    IL_0073:  sub
    IL_0074:  ldc.i4.0
    IL_0075:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_007a:  stloc.2
    IL_007b:  br.s       IL_0085

    IL_007d:  ldc.i4.0
    IL_007e:  stloc.2
    IL_007f:  br.s       IL_0085

    IL_0081:  ldloc.s    V_6
    IL_0083:  stloc.s    V_5
    IL_0085:  ldloc.s    V_7
    IL_0087:  ldloc.2
    IL_0088:  call       int32 Game.Terrain::ReplaceLight(int32,
                                                          int32)
    IL_008d:  stloc.s    V_7
    IL_008f:  ldarg.1
    IL_0090:  ldloc.3
    IL_0091:  ldloc.s    V_7
    IL_0093:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32)
    IL_0098:  ldloc.s    V_6
    IL_009a:  ldc.i4.1
    IL_009b:  sub
    IL_009c:  stloc.s    V_6
    IL_009e:  ldloc.3
    IL_009f:  ldc.i4.1
    IL_00a0:  sub
    IL_00a1:  stloc.3
    IL_00a2:  ldloc.s    V_6
    IL_00a4:  ldc.i4.0
    IL_00a5:  bge.s      IL_0027

    IL_00a7:  ldarg.1
    IL_00a8:  ldloc.0
    IL_00a9:  ldloc.1
    IL_00aa:  ldloc.s    V_4
    IL_00ac:  callvirt   instance void Game.TerrainChunk::SetTopHeightFast(int32,
                                                                           int32,
                                                                           int32)
    IL_00b1:  ldarg.1
    IL_00b2:  ldloc.0
    IL_00b3:  ldloc.1
    IL_00b4:  ldloc.s    V_5
    IL_00b6:  callvirt   instance void Game.TerrainChunk::SetBottomHeightFast(int32,
                                                                              int32,
                                                                              int32)
    IL_00bb:  ldloc.1
    IL_00bc:  ldc.i4.1
    IL_00bd:  add
    IL_00be:  stloc.1
    IL_00bf:  ldloc.1
    IL_00c0:  ldc.i4.s   16
    IL_00c2:  blt        IL_000e

    IL_00c7:  ldloc.0
    IL_00c8:  ldc.i4.1
    IL_00c9:  add
    IL_00ca:  stloc.0
    IL_00cb:  ldloc.0
    IL_00cc:  ldc.i4.s   16
    IL_00ce:  blt        IL_0007

    IL_00d3:  ret
  } // end of method TerrainUpdater::GenerateChunkLightAndHeight

  .method private hidebysig instance void 
          GenerateChunkLightSources(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       608 (0x260)
    .maxstack  6
    .locals init (class Game.Block[] V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12,
             class Game.Block V_13,
             int32 V_14,
             int32 V_15,
             int32 V_16,
             int32 V_17,
             int32 V_18,
             valuetype Game.TerrainUpdater/LightSource V_19,
             int32 V_20,
             int32 V_21,
             int32 V_22,
             class Game.Block V_23,
             int32 V_24)
    IL_0000:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0005:  stloc.0
    IL_0006:  ldc.i4.0
    IL_0007:  stloc.1
    IL_0008:  br         IL_0257

    IL_000d:  ldc.i4.0
    IL_000e:  stloc.2
    IL_000f:  br         IL_024b

    IL_0014:  ldloc.1
    IL_0015:  ldc.i4.0
    IL_0016:  ldloc.2
    IL_0017:  call       int32 Game.TerrainChunk::CalculateCellIndex(int32,
                                                                     int32,
                                                                     int32)
    IL_001c:  stloc.3
    IL_001d:  ldarg.1
    IL_001e:  ldloc.1
    IL_001f:  ldloc.2
    IL_0020:  callvirt   instance int32 Game.TerrainChunk::GetTopHeightFast(int32,
                                                                            int32)
    IL_0025:  stloc.s    V_4
    IL_0027:  ldloc.1
    IL_0028:  ldarg.1
    IL_0029:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_002e:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0033:  add
    IL_0034:  stloc.s    V_5
    IL_0036:  ldloc.2
    IL_0037:  ldarg.1
    IL_0038:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_003d:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0042:  add
    IL_0043:  stloc.s    V_6
    IL_0045:  ldarg.0
    IL_0046:  ldfld      class Game.Terrain Game.TerrainUpdater::m_terrain
    IL_004b:  ldloc.s    V_5
    IL_004d:  ldc.i4.1
    IL_004e:  sub
    IL_004f:  ldloc.s    V_6
    IL_0051:  callvirt   instance int32 Game.Terrain::GetTopHeight(int32,
                                                                   int32)
    IL_0056:  ldarg.0
    IL_0057:  ldfld      class Game.Terrain Game.TerrainUpdater::m_terrain
    IL_005c:  ldloc.s    V_5
    IL_005e:  ldc.i4.1
    IL_005f:  add
    IL_0060:  ldloc.s    V_6
    IL_0062:  callvirt   instance int32 Game.Terrain::GetTopHeight(int32,
                                                                   int32)
    IL_0067:  stloc.s    V_7
    IL_0069:  ldarg.0
    IL_006a:  ldfld      class Game.Terrain Game.TerrainUpdater::m_terrain
    IL_006f:  ldloc.s    V_5
    IL_0071:  ldloc.s    V_6
    IL_0073:  ldc.i4.1
    IL_0074:  sub
    IL_0075:  callvirt   instance int32 Game.Terrain::GetTopHeight(int32,
                                                                   int32)
    IL_007a:  stloc.s    V_8
    IL_007c:  ldarg.0
    IL_007d:  ldfld      class Game.Terrain Game.TerrainUpdater::m_terrain
    IL_0082:  ldloc.s    V_5
    IL_0084:  ldloc.s    V_6
    IL_0086:  ldc.i4.1
    IL_0087:  add
    IL_0088:  callvirt   instance int32 Game.Terrain::GetTopHeight(int32,
                                                                   int32)
    IL_008d:  stloc.s    V_9
    IL_008f:  ldloc.s    V_7
    IL_0091:  ldloc.s    V_8
    IL_0093:  ldloc.s    V_9
    IL_0095:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32,
                                                             int32,
                                                             int32)
    IL_009a:  stloc.s    V_10
    IL_009c:  ldloc.s    V_10
    IL_009e:  ldc.i4.0
    IL_009f:  ble        IL_01a9

    IL_00a4:  ldloc.s    V_4
    IL_00a6:  stloc.s    V_11
    IL_00a8:  br         IL_01a0

    IL_00ad:  ldarg.1
    IL_00ae:  ldloc.3
    IL_00af:  ldloc.s    V_11
    IL_00b1:  add
    IL_00b2:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32)
    IL_00b7:  stloc.s    V_12
    IL_00b9:  ldloc.0
    IL_00ba:  ldloc.s    V_12
    IL_00bc:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_00c1:  ldelem.ref
    IL_00c2:  stloc.s    V_13
    IL_00c4:  ldloc.s    V_13
    IL_00c6:  ldfld      bool Game.Block::IsTransparent
    IL_00cb:  brfalse    IL_019a

    IL_00d0:  ldarg.0
    IL_00d1:  ldfld      class Game.Terrain Game.TerrainUpdater::m_terrain
    IL_00d6:  ldloc.s    V_5
    IL_00d8:  ldc.i4.1
    IL_00d9:  sub
    IL_00da:  ldloc.s    V_11
    IL_00dc:  ldloc.s    V_6
    IL_00de:  callvirt   instance int32 Game.Terrain::GetCellLightFast(int32,
                                                                       int32,
                                                                       int32)
    IL_00e3:  ldarg.0
    IL_00e4:  ldfld      class Game.Terrain Game.TerrainUpdater::m_terrain
    IL_00e9:  ldloc.s    V_5
    IL_00eb:  ldc.i4.1
    IL_00ec:  add
    IL_00ed:  ldloc.s    V_11
    IL_00ef:  ldloc.s    V_6
    IL_00f1:  callvirt   instance int32 Game.Terrain::GetCellLightFast(int32,
                                                                       int32,
                                                                       int32)
    IL_00f6:  stloc.s    V_14
    IL_00f8:  ldarg.0
    IL_00f9:  ldfld      class Game.Terrain Game.TerrainUpdater::m_terrain
    IL_00fe:  ldloc.s    V_5
    IL_0100:  ldloc.s    V_11
    IL_0102:  ldloc.s    V_6
    IL_0104:  ldc.i4.1
    IL_0105:  sub
    IL_0106:  callvirt   instance int32 Game.Terrain::GetCellLightFast(int32,
                                                                       int32,
                                                                       int32)
    IL_010b:  stloc.s    V_15
    IL_010d:  ldarg.0
    IL_010e:  ldfld      class Game.Terrain Game.TerrainUpdater::m_terrain
    IL_0113:  ldloc.s    V_5
    IL_0115:  ldloc.s    V_11
    IL_0117:  ldloc.s    V_6
    IL_0119:  ldc.i4.1
    IL_011a:  add
    IL_011b:  callvirt   instance int32 Game.Terrain::GetCellLightFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0120:  stloc.s    V_16
    IL_0122:  ldloc.s    V_14
    IL_0124:  ldloc.s    V_15
    IL_0126:  ldloc.s    V_16
    IL_0128:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32,
                                                             int32,
                                                             int32)
    IL_012d:  ldc.i4.1
    IL_012e:  sub
    IL_012f:  ldloc.s    V_13
    IL_0131:  ldfld      int32 Game.Block::LightAttenuation
    IL_0136:  sub
    IL_0137:  stloc.s    V_17
    IL_0139:  ldloc.s    V_12
    IL_013b:  call       int32 Game.Terrain::ExtractLight(int32)
    IL_0140:  ldloc.s    V_17
    IL_0142:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0147:  stloc.s    V_18
    IL_0149:  ldloc.s    V_18
    IL_014b:  ldc.i4.0
    IL_014c:  ble.s      IL_019a

    IL_014e:  ldarg.0
    IL_014f:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainUpdater/LightSource> Game.TerrainUpdater::m_lightSources
    IL_0154:  ldloca.s   V_19
    IL_0156:  initobj    Game.TerrainUpdater/LightSource
    IL_015c:  ldloca.s   V_19
    IL_015e:  ldloc.s    V_5
    IL_0160:  stfld      int32 Game.TerrainUpdater/LightSource::X
    IL_0165:  ldloca.s   V_19
    IL_0167:  ldloc.s    V_11
    IL_0169:  stfld      int32 Game.TerrainUpdater/LightSource::Y
    IL_016e:  ldloca.s   V_19
    IL_0170:  ldloc.s    V_6
    IL_0172:  stfld      int32 Game.TerrainUpdater/LightSource::Z
    IL_0177:  ldloca.s   V_19
    IL_0179:  ldloc.s    V_18
    IL_017b:  stfld      int32 Game.TerrainUpdater/LightSource::Light
    IL_0180:  ldloc.s    V_19
    IL_0182:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainUpdater/LightSource>::Add(!0)
    IL_0187:  ldarg.1
    IL_0188:  ldloc.3
    IL_0189:  ldloc.s    V_11
    IL_018b:  add
    IL_018c:  ldloc.s    V_12
    IL_018e:  ldloc.s    V_18
    IL_0190:  call       int32 Game.Terrain::ReplaceLight(int32,
                                                          int32)
    IL_0195:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32)
    IL_019a:  ldloc.s    V_11
    IL_019c:  ldc.i4.1
    IL_019d:  sub
    IL_019e:  stloc.s    V_11
    IL_01a0:  ldloc.s    V_11
    IL_01a2:  ldloc.s    V_10
    IL_01a4:  bgt        IL_00ad

    IL_01a9:  ldc.i4.0
    IL_01aa:  stloc.s    V_20
    IL_01ac:  br         IL_023e

    IL_01b1:  ldarg.1
    IL_01b2:  ldloc.3
    IL_01b3:  ldloc.s    V_20
    IL_01b5:  add
    IL_01b6:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32)
    IL_01bb:  stloc.s    V_21
    IL_01bd:  ldloc.s    V_21
    IL_01bf:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_01c4:  stloc.s    V_22
    IL_01c6:  ldloc.0
    IL_01c7:  ldloc.s    V_22
    IL_01c9:  ldelem.ref
    IL_01ca:  stloc.s    V_23
    IL_01cc:  ldloc.s    V_23
    IL_01ce:  ldfld      int32 Game.Block::EmittedLightAmount
    IL_01d3:  ldc.i4.0
    IL_01d4:  ble.s      IL_0238

    IL_01d6:  ldloc.s    V_23
    IL_01d8:  ldloc.s    V_21
    IL_01da:  callvirt   instance int32 Game.Block::GetEmittedLightAmount(int32)
    IL_01df:  stloc.s    V_24
    IL_01e1:  ldarg.0
    IL_01e2:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainUpdater/LightSource> Game.TerrainUpdater::m_lightSources
    IL_01e7:  ldloca.s   V_19
    IL_01e9:  initobj    Game.TerrainUpdater/LightSource
    IL_01ef:  ldloca.s   V_19
    IL_01f1:  ldloc.s    V_5
    IL_01f3:  stfld      int32 Game.TerrainUpdater/LightSource::X
    IL_01f8:  ldloca.s   V_19
    IL_01fa:  ldloc.s    V_20
    IL_01fc:  stfld      int32 Game.TerrainUpdater/LightSource::Y
    IL_0201:  ldloca.s   V_19
    IL_0203:  ldloc.s    V_6
    IL_0205:  stfld      int32 Game.TerrainUpdater/LightSource::Z
    IL_020a:  ldloca.s   V_19
    IL_020c:  ldloc.s    V_24
    IL_020e:  stfld      int32 Game.TerrainUpdater/LightSource::Light
    IL_0213:  ldloc.s    V_19
    IL_0215:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainUpdater/LightSource>::Add(!0)
    IL_021a:  ldloc.s    V_24
    IL_021c:  ldloc.s    V_21
    IL_021e:  call       int32 Game.Terrain::ExtractLight(int32)
    IL_0223:  ble.s      IL_0238

    IL_0225:  ldarg.1
    IL_0226:  ldloc.3
    IL_0227:  ldloc.s    V_20
    IL_0229:  add
    IL_022a:  ldloc.s    V_21
    IL_022c:  ldloc.s    V_24
    IL_022e:  call       int32 Game.Terrain::ReplaceLight(int32,
                                                          int32)
    IL_0233:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32)
    IL_0238:  ldloc.s    V_20
    IL_023a:  ldc.i4.1
    IL_023b:  add
    IL_023c:  stloc.s    V_20
    IL_023e:  ldloc.s    V_20
    IL_0240:  ldloc.s    V_4
    IL_0242:  ble        IL_01b1

    IL_0247:  ldloc.2
    IL_0248:  ldc.i4.1
    IL_0249:  add
    IL_024a:  stloc.2
    IL_024b:  ldloc.2
    IL_024c:  ldc.i4.s   16
    IL_024e:  blt        IL_0014

    IL_0253:  ldloc.1
    IL_0254:  ldc.i4.1
    IL_0255:  add
    IL_0256:  stloc.1
    IL_0257:  ldloc.1
    IL_0258:  ldc.i4.s   16
    IL_025a:  blt        IL_000d

    IL_025f:  ret
  } // end of method TerrainUpdater::GenerateChunkLightSources

  .method private hidebysig instance void 
          PropagateLightSource(int32 x,
                               int32 y,
                               int32 z,
                               int32 light) cil managed
  {
    // 代码大小       166 (0xa6)
    .maxstack  4
    .locals init (class Game.TerrainChunk V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             class Game.Block V_4,
             int32 V_5,
             int32 V_6,
             valuetype Game.TerrainUpdater/LightSource V_7)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Terrain Game.TerrainUpdater::m_terrain
    IL_0006:  ldarg.1
    IL_0007:  ldarg.3
    IL_0008:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_000d:  stloc.0
    IL_000e:  ldloc.0
    IL_000f:  brfalse    IL_00a5

    IL_0014:  ldarg.1
    IL_0015:  ldc.i4.s   15
    IL_0017:  and
    IL_0018:  ldarg.2
    IL_0019:  ldarg.3
    IL_001a:  ldc.i4.s   15
    IL_001c:  and
    IL_001d:  call       int32 Game.TerrainChunk::CalculateCellIndex(int32,
                                                                     int32,
                                                                     int32)
    IL_0022:  stloc.1
    IL_0023:  ldloc.0
    IL_0024:  ldloc.1
    IL_0025:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32)
    IL_002a:  stloc.2
    IL_002b:  ldloc.2
    IL_002c:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0031:  stloc.3
    IL_0032:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0037:  ldloc.3
    IL_0038:  ldelem.ref
    IL_0039:  stloc.s    V_4
    IL_003b:  ldloc.s    V_4
    IL_003d:  ldfld      bool Game.Block::IsTransparent
    IL_0042:  brfalse.s  IL_00a5

    IL_0044:  ldloc.2
    IL_0045:  call       int32 Game.Terrain::ExtractLight(int32)
    IL_004a:  stloc.s    V_5
    IL_004c:  ldarg.s    light
    IL_004e:  ldloc.s    V_4
    IL_0050:  ldfld      int32 Game.Block::LightAttenuation
    IL_0055:  sub
    IL_0056:  ldc.i4.1
    IL_0057:  sub
    IL_0058:  stloc.s    V_6
    IL_005a:  ldloc.s    V_6
    IL_005c:  ldloc.s    V_5
    IL_005e:  ble.s      IL_00a5

    IL_0060:  ldarg.0
    IL_0061:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainUpdater/LightSource> Game.TerrainUpdater::m_lightSources
    IL_0066:  ldloca.s   V_7
    IL_0068:  initobj    Game.TerrainUpdater/LightSource
    IL_006e:  ldloca.s   V_7
    IL_0070:  ldarg.1
    IL_0071:  stfld      int32 Game.TerrainUpdater/LightSource::X
    IL_0076:  ldloca.s   V_7
    IL_0078:  ldarg.2
    IL_0079:  stfld      int32 Game.TerrainUpdater/LightSource::Y
    IL_007e:  ldloca.s   V_7
    IL_0080:  ldarg.3
    IL_0081:  stfld      int32 Game.TerrainUpdater/LightSource::Z
    IL_0086:  ldloca.s   V_7
    IL_0088:  ldloc.s    V_6
    IL_008a:  stfld      int32 Game.TerrainUpdater/LightSource::Light
    IL_008f:  ldloc.s    V_7
    IL_0091:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainUpdater/LightSource>::Add(!0)
    IL_0096:  ldloc.0
    IL_0097:  ldloc.1
    IL_0098:  ldloc.2
    IL_0099:  ldloc.s    V_6
    IL_009b:  call       int32 Game.Terrain::ReplaceLight(int32,
                                                          int32)
    IL_00a0:  callvirt   instance void Game.TerrainChunk::SetCellValueFast(int32,
                                                                           int32)
    IL_00a5:  ret
  } // end of method TerrainUpdater::PropagateLightSource

  .method private hidebysig instance void 
          PropagateLight() cil managed
  {
    // 代码大小       250 (0xfa)
    .maxstack  5
    .locals init (int32 V_0,
             valuetype Game.TerrainUpdater/LightSource V_1,
             int32 V_2)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br         IL_00e0

    IL_0007:  ldarg.0
    IL_0008:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainUpdater/LightSource> Game.TerrainUpdater::m_lightSources
    IL_000d:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainUpdater/LightSource>::get_Array()
    IL_0012:  ldloc.0
    IL_0013:  ldelem     Game.TerrainUpdater/LightSource
    IL_0018:  stloc.1
    IL_0019:  ldloc.1
    IL_001a:  ldfld      int32 Game.TerrainUpdater/LightSource::Light
    IL_001f:  stloc.2
    IL_0020:  ldloc.2
    IL_0021:  ldc.i4.1
    IL_0022:  ble        IL_00dc

    IL_0027:  ldarg.0
    IL_0028:  ldloc.1
    IL_0029:  ldfld      int32 Game.TerrainUpdater/LightSource::X
    IL_002e:  ldc.i4.1
    IL_002f:  sub
    IL_0030:  ldloc.1
    IL_0031:  ldfld      int32 Game.TerrainUpdater/LightSource::Y
    IL_0036:  ldloc.1
    IL_0037:  ldfld      int32 Game.TerrainUpdater/LightSource::Z
    IL_003c:  ldloc.2
    IL_003d:  call       instance void Game.TerrainUpdater::PropagateLightSource(int32,
                                                                                 int32,
                                                                                 int32,
                                                                                 int32)
    IL_0042:  ldarg.0
    IL_0043:  ldloc.1
    IL_0044:  ldfld      int32 Game.TerrainUpdater/LightSource::X
    IL_0049:  ldc.i4.1
    IL_004a:  add
    IL_004b:  ldloc.1
    IL_004c:  ldfld      int32 Game.TerrainUpdater/LightSource::Y
    IL_0051:  ldloc.1
    IL_0052:  ldfld      int32 Game.TerrainUpdater/LightSource::Z
    IL_0057:  ldloc.2
    IL_0058:  call       instance void Game.TerrainUpdater::PropagateLightSource(int32,
                                                                                 int32,
                                                                                 int32,
                                                                                 int32)
    IL_005d:  ldloc.1
    IL_005e:  ldfld      int32 Game.TerrainUpdater/LightSource::Y
    IL_0063:  ldc.i4.0
    IL_0064:  ble.s      IL_0081

    IL_0066:  ldarg.0
    IL_0067:  ldloc.1
    IL_0068:  ldfld      int32 Game.TerrainUpdater/LightSource::X
    IL_006d:  ldloc.1
    IL_006e:  ldfld      int32 Game.TerrainUpdater/LightSource::Y
    IL_0073:  ldc.i4.1
    IL_0074:  sub
    IL_0075:  ldloc.1
    IL_0076:  ldfld      int32 Game.TerrainUpdater/LightSource::Z
    IL_007b:  ldloc.2
    IL_007c:  call       instance void Game.TerrainUpdater::PropagateLightSource(int32,
                                                                                 int32,
                                                                                 int32,
                                                                                 int32)
    IL_0081:  ldloc.1
    IL_0082:  ldfld      int32 Game.TerrainUpdater/LightSource::Y
    IL_0087:  ldc.i4.s   127
    IL_0089:  bge.s      IL_00a6

    IL_008b:  ldarg.0
    IL_008c:  ldloc.1
    IL_008d:  ldfld      int32 Game.TerrainUpdater/LightSource::X
    IL_0092:  ldloc.1
    IL_0093:  ldfld      int32 Game.TerrainUpdater/LightSource::Y
    IL_0098:  ldc.i4.1
    IL_0099:  add
    IL_009a:  ldloc.1
    IL_009b:  ldfld      int32 Game.TerrainUpdater/LightSource::Z
    IL_00a0:  ldloc.2
    IL_00a1:  call       instance void Game.TerrainUpdater::PropagateLightSource(int32,
                                                                                 int32,
                                                                                 int32,
                                                                                 int32)
    IL_00a6:  ldarg.0
    IL_00a7:  ldloc.1
    IL_00a8:  ldfld      int32 Game.TerrainUpdater/LightSource::X
    IL_00ad:  ldloc.1
    IL_00ae:  ldfld      int32 Game.TerrainUpdater/LightSource::Y
    IL_00b3:  ldloc.1
    IL_00b4:  ldfld      int32 Game.TerrainUpdater/LightSource::Z
    IL_00b9:  ldc.i4.1
    IL_00ba:  sub
    IL_00bb:  ldloc.2
    IL_00bc:  call       instance void Game.TerrainUpdater::PropagateLightSource(int32,
                                                                                 int32,
                                                                                 int32,
                                                                                 int32)
    IL_00c1:  ldarg.0
    IL_00c2:  ldloc.1
    IL_00c3:  ldfld      int32 Game.TerrainUpdater/LightSource::X
    IL_00c8:  ldloc.1
    IL_00c9:  ldfld      int32 Game.TerrainUpdater/LightSource::Y
    IL_00ce:  ldloc.1
    IL_00cf:  ldfld      int32 Game.TerrainUpdater/LightSource::Z
    IL_00d4:  ldc.i4.1
    IL_00d5:  add
    IL_00d6:  ldloc.2
    IL_00d7:  call       instance void Game.TerrainUpdater::PropagateLightSource(int32,
                                                                                 int32,
                                                                                 int32,
                                                                                 int32)
    IL_00dc:  ldloc.0
    IL_00dd:  ldc.i4.1
    IL_00de:  add
    IL_00df:  stloc.0
    IL_00e0:  ldloc.0
    IL_00e1:  ldarg.0
    IL_00e2:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainUpdater/LightSource> Game.TerrainUpdater::m_lightSources
    IL_00e7:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainUpdater/LightSource>::get_Count()
    IL_00ec:  bge.s      IL_00f9

    IL_00ee:  ldloc.0
    IL_00ef:  ldc.i4     0x1d4c0
    IL_00f4:  blt        IL_0007

    IL_00f9:  ret
  } // end of method TerrainUpdater::PropagateLight

  .method private hidebysig instance void 
          GenerateChunkVertices(class Game.TerrainChunk chunk,
                                int32 x1,
                                int32 z1,
                                int32 x2,
                                int32 z2) cil managed
  {
    // 代码大小       750 (0x2ee)
    .maxstack  7
    .locals init (class Game.TerrainChunk V_0,
             class Game.TerrainChunk V_1,
             class Game.TerrainChunk V_2,
             class Game.TerrainChunk V_3,
             class Game.TerrainChunk V_4,
             class Game.TerrainChunk V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12,
             int32 V_13,
             int32 V_14,
             int32 V_15,
             int32 V_16,
             int32 V_17,
             int32 V_18)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Terrain Game.TerrainUpdater::m_terrain
    IL_0006:  ldarg.1
    IL_0007:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_000c:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0011:  ldc.i4.1
    IL_0012:  sub
    IL_0013:  ldarg.1
    IL_0014:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_0019:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_001e:  ldc.i4.1
    IL_001f:  sub
    IL_0020:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCoords(int32,
                                                                                         int32)
    IL_0025:  stloc.0
    IL_0026:  ldarg.0
    IL_0027:  ldfld      class Game.Terrain Game.TerrainUpdater::m_terrain
    IL_002c:  ldarg.1
    IL_002d:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_0032:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0037:  ldarg.1
    IL_0038:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_003d:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0042:  ldc.i4.1
    IL_0043:  sub
    IL_0044:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCoords(int32,
                                                                                         int32)
    IL_0049:  ldarg.0
    IL_004a:  ldfld      class Game.Terrain Game.TerrainUpdater::m_terrain
    IL_004f:  ldarg.1
    IL_0050:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_0055:  ldfld      int32 [Engine]Engine.Point2::X
    IL_005a:  ldc.i4.1
    IL_005b:  add
    IL_005c:  ldarg.1
    IL_005d:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_0062:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0067:  ldc.i4.1
    IL_0068:  sub
    IL_0069:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCoords(int32,
                                                                                         int32)
    IL_006e:  stloc.1
    IL_006f:  ldarg.0
    IL_0070:  ldfld      class Game.Terrain Game.TerrainUpdater::m_terrain
    IL_0075:  ldarg.1
    IL_0076:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_007b:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0080:  ldc.i4.1
    IL_0081:  sub
    IL_0082:  ldarg.1
    IL_0083:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_0088:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_008d:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCoords(int32,
                                                                                         int32)
    IL_0092:  ldarg.0
    IL_0093:  ldfld      class Game.Terrain Game.TerrainUpdater::m_terrain
    IL_0098:  ldarg.1
    IL_0099:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_009e:  ldfld      int32 [Engine]Engine.Point2::X
    IL_00a3:  ldc.i4.1
    IL_00a4:  add
    IL_00a5:  ldarg.1
    IL_00a6:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_00ab:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_00b0:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCoords(int32,
                                                                                         int32)
    IL_00b5:  stloc.2
    IL_00b6:  ldarg.0
    IL_00b7:  ldfld      class Game.Terrain Game.TerrainUpdater::m_terrain
    IL_00bc:  ldarg.1
    IL_00bd:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_00c2:  ldfld      int32 [Engine]Engine.Point2::X
    IL_00c7:  ldc.i4.1
    IL_00c8:  sub
    IL_00c9:  ldarg.1
    IL_00ca:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_00cf:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_00d4:  ldc.i4.1
    IL_00d5:  add
    IL_00d6:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCoords(int32,
                                                                                         int32)
    IL_00db:  stloc.3
    IL_00dc:  ldarg.0
    IL_00dd:  ldfld      class Game.Terrain Game.TerrainUpdater::m_terrain
    IL_00e2:  ldarg.1
    IL_00e3:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_00e8:  ldfld      int32 [Engine]Engine.Point2::X
    IL_00ed:  ldarg.1
    IL_00ee:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_00f3:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_00f8:  ldc.i4.1
    IL_00f9:  add
    IL_00fa:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCoords(int32,
                                                                                         int32)
    IL_00ff:  stloc.s    V_4
    IL_0101:  ldarg.0
    IL_0102:  ldfld      class Game.Terrain Game.TerrainUpdater::m_terrain
    IL_0107:  ldarg.1
    IL_0108:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_010d:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0112:  ldc.i4.1
    IL_0113:  add
    IL_0114:  ldarg.1
    IL_0115:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_011a:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_011f:  ldc.i4.1
    IL_0120:  add
    IL_0121:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCoords(int32,
                                                                                         int32)
    IL_0126:  stloc.s    V_5
    IL_0128:  brtrue.s   IL_0133

    IL_012a:  ldarg.2
    IL_012b:  ldc.i4.1
    IL_012c:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0131:  starg.s    x1
    IL_0133:  brtrue.s   IL_013e

    IL_0135:  ldarg.3
    IL_0136:  ldc.i4.1
    IL_0137:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_013c:  starg.s    z1
    IL_013e:  ldloc.2
    IL_013f:  brtrue.s   IL_014c

    IL_0141:  ldarg.s    x2
    IL_0143:  ldc.i4.s   15
    IL_0145:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_014a:  starg.s    x2
    IL_014c:  ldloc.s    V_4
    IL_014e:  brtrue.s   IL_015b

    IL_0150:  ldarg.s    z2
    IL_0152:  ldc.i4.s   15
    IL_0154:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0159:  starg.s    z2
    IL_015b:  ldarg.2
    IL_015c:  stloc.s    V_6
    IL_015e:  br         IL_02e4

    IL_0163:  ldarg.3
    IL_0164:  stloc.s    V_7
    IL_0166:  br         IL_02d5

    IL_016b:  ldloc.s    V_6
    IL_016d:  brtrue.s   IL_0187

    IL_016f:  ldloc.s    V_7
    IL_0171:  brtrue.s   IL_0179

    IL_0173:  ldloc.0
    IL_0174:  brfalse    IL_02cf

    IL_0179:  ldloc.s    V_7
    IL_017b:  ldc.i4.s   15
    IL_017d:  bne.un.s   IL_01a4

    IL_017f:  ldloc.3
    IL_0180:  brtrue.s   IL_01a4

    IL_0182:  br         IL_02cf

    IL_0187:  ldloc.s    V_6
    IL_0189:  ldc.i4.s   15
    IL_018b:  bne.un.s   IL_01a4

    IL_018d:  ldloc.s    V_7
    IL_018f:  brtrue.s   IL_0197

    IL_0191:  ldloc.1
    IL_0192:  brfalse    IL_02cf

    IL_0197:  ldloc.s    V_7
    IL_0199:  ldc.i4.s   15
    IL_019b:  bne.un.s   IL_01a4

    IL_019d:  ldloc.s    V_5
    IL_019f:  brfalse    IL_02cf

    IL_01a4:  ldloc.s    V_6
    IL_01a6:  ldarg.1
    IL_01a7:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_01ac:  ldfld      int32 [Engine]Engine.Point2::X
    IL_01b1:  add
    IL_01b2:  stloc.s    V_8
    IL_01b4:  ldloc.s    V_7
    IL_01b6:  ldarg.1
    IL_01b7:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_01bc:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_01c1:  add
    IL_01c2:  stloc.s    V_9
    IL_01c4:  ldarg.1
    IL_01c5:  ldloc.s    V_6
    IL_01c7:  ldloc.s    V_7
    IL_01c9:  callvirt   instance int32 Game.TerrainChunk::GetBottomHeightFast(int32,
                                                                               int32)
    IL_01ce:  ldarg.0
    IL_01cf:  ldfld      class Game.Terrain Game.TerrainUpdater::m_terrain
    IL_01d4:  ldloc.s    V_8
    IL_01d6:  ldc.i4.1
    IL_01d7:  sub
    IL_01d8:  ldloc.s    V_9
    IL_01da:  callvirt   instance int32 Game.Terrain::GetBottomHeight(int32,
                                                                      int32)
    IL_01df:  stloc.s    V_10
    IL_01e1:  ldarg.0
    IL_01e2:  ldfld      class Game.Terrain Game.TerrainUpdater::m_terrain
    IL_01e7:  ldloc.s    V_8
    IL_01e9:  ldc.i4.1
    IL_01ea:  add
    IL_01eb:  ldloc.s    V_9
    IL_01ed:  callvirt   instance int32 Game.Terrain::GetBottomHeight(int32,
                                                                      int32)
    IL_01f2:  stloc.s    V_11
    IL_01f4:  ldarg.0
    IL_01f5:  ldfld      class Game.Terrain Game.TerrainUpdater::m_terrain
    IL_01fa:  ldloc.s    V_8
    IL_01fc:  ldloc.s    V_9
    IL_01fe:  ldc.i4.1
    IL_01ff:  sub
    IL_0200:  callvirt   instance int32 Game.Terrain::GetBottomHeight(int32,
                                                                      int32)
    IL_0205:  stloc.s    V_12
    IL_0207:  ldarg.0
    IL_0208:  ldfld      class Game.Terrain Game.TerrainUpdater::m_terrain
    IL_020d:  ldloc.s    V_8
    IL_020f:  ldloc.s    V_9
    IL_0211:  ldc.i4.1
    IL_0212:  add
    IL_0213:  callvirt   instance int32 Game.Terrain::GetBottomHeight(int32,
                                                                      int32)
    IL_0218:  stloc.s    V_13
    IL_021a:  ldc.i4.1
    IL_021b:  sub
    IL_021c:  ldloc.s    V_10
    IL_021e:  ldloc.s    V_11
    IL_0220:  ldloc.s    V_12
    IL_0222:  ldloc.s    V_13
    IL_0224:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32,
                                                             int32,
                                                             int32)
    IL_0229:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_022e:  ldarg.1
    IL_022f:  ldloc.s    V_6
    IL_0231:  ldloc.s    V_7
    IL_0233:  callvirt   instance int32 Game.TerrainChunk::GetTopHeightFast(int32,
                                                                            int32)
    IL_0238:  stloc.s    V_14
    IL_023a:  ldc.i4.1
    IL_023b:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0240:  ldloc.s    V_14
    IL_0242:  ldc.i4.s   126
    IL_0244:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0249:  stloc.s    V_14
    IL_024b:  ldloc.s    V_6
    IL_024d:  ldc.i4.0
    IL_024e:  ldloc.s    V_7
    IL_0250:  call       int32 Game.TerrainChunk::CalculateCellIndex(int32,
                                                                     int32,
                                                                     int32)
    IL_0255:  stloc.s    V_15
    IL_0257:  stloc.s    V_16
    IL_0259:  br.s       IL_02c9

    IL_025b:  ldarg.1
    IL_025c:  ldloc.s    V_15
    IL_025e:  ldloc.s    V_16
    IL_0260:  add
    IL_0261:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32)
    IL_0266:  stloc.s    V_17
    IL_0268:  ldloc.s    V_17
    IL_026a:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_026f:  stloc.s    V_18
    IL_0271:  ldloc.s    V_18
    IL_0273:  brfalse.s  IL_02c3

    IL_0275:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_027a:  ldloc.s    V_18
    IL_027c:  ldelem.ref
    IL_027d:  ldarg.0
    IL_027e:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_0283:  callvirt   instance class Game.BlockGeometryGenerator Game.SubsystemTerrain::get_BlockGeometryGenerator()
    IL_0288:  ldarg.1
    IL_0289:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_028e:  ldloc.s    V_17
    IL_0290:  ldloc.s    V_8
    IL_0292:  ldloc.s    V_16
    IL_0294:  ldloc.s    V_9
    IL_0296:  callvirt   instance void Game.Block::GenerateTerrainVertices(class Game.BlockGeometryGenerator,
                                                                           class Game.TerrainGeometrySubsets,
                                                                           int32,
                                                                           int32,
                                                                           int32,
                                                                           int32)
    IL_029b:  ldarg.1
    IL_029c:  ldarg.1
    IL_029d:  ldfld      float32 Game.TerrainChunk::GeometryMinY
    IL_02a2:  ldloc.s    V_16
    IL_02a4:  conv.r4
    IL_02a5:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_02aa:  stfld      float32 Game.TerrainChunk::GeometryMinY
    IL_02af:  ldarg.1
    IL_02b0:  ldarg.1
    IL_02b1:  ldfld      float32 Game.TerrainChunk::GeometryMaxY
    IL_02b6:  ldloc.s    V_16
    IL_02b8:  conv.r4
    IL_02b9:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_02be:  stfld      float32 Game.TerrainChunk::GeometryMaxY
    IL_02c3:  ldloc.s    V_16
    IL_02c5:  ldc.i4.1
    IL_02c6:  add
    IL_02c7:  stloc.s    V_16
    IL_02c9:  ldloc.s    V_16
    IL_02cb:  ldloc.s    V_14
    IL_02cd:  ble.s      IL_025b

    IL_02cf:  ldloc.s    V_7
    IL_02d1:  ldc.i4.1
    IL_02d2:  add
    IL_02d3:  stloc.s    V_7
    IL_02d5:  ldloc.s    V_7
    IL_02d7:  ldarg.s    z2
    IL_02d9:  blt        IL_016b

    IL_02de:  ldloc.s    V_6
    IL_02e0:  ldc.i4.1
    IL_02e1:  add
    IL_02e2:  stloc.s    V_6
    IL_02e4:  ldloc.s    V_6
    IL_02e6:  ldarg.s    x2
    IL_02e8:  blt        IL_0163

    IL_02ed:  ret
  } // end of method TerrainUpdater::GenerateChunkVertices

  .method private hidebysig static int32 
          CalculateLightPropagationBitIndex(int32 x,
                                            int32 z) cil managed
  {
    // 代码大小       10 (0xa)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  add
    IL_0003:  ldc.i4.3
    IL_0004:  ldarg.1
    IL_0005:  ldc.i4.1
    IL_0006:  add
    IL_0007:  mul
    IL_0008:  add
    IL_0009:  ret
  } // end of method TerrainUpdater::CalculateLightPropagationBitIndex

  .method private hidebysig instance void 
          UpdateNeighborsLightPropagationBitmasks(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       95 (0x5f)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             class Game.TerrainChunk V_2,
             int32 V_3)
    IL_0000:  ldc.i4.m1
    IL_0001:  stloc.0
    IL_0002:  br.s       IL_005a

    IL_0004:  ldc.i4.m1
    IL_0005:  stloc.1
    IL_0006:  br.s       IL_0052

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.Terrain Game.TerrainUpdater::m_terrain
    IL_000e:  ldarg.1
    IL_000f:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_0014:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0019:  ldloc.0
    IL_001a:  add
    IL_001b:  ldarg.1
    IL_001c:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_0021:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0026:  ldloc.1
    IL_0027:  add
    IL_0028:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCoords(int32,
                                                                                         int32)
    IL_002d:  stloc.2
    IL_002e:  ldloc.2
    IL_002f:  brfalse.s  IL_004e

    IL_0031:  ldloc.0
    IL_0032:  neg
    IL_0033:  ldloc.1
    IL_0034:  neg
    IL_0035:  call       int32 Game.TerrainUpdater::CalculateLightPropagationBitIndex(int32,
                                                                                      int32)
    IL_003a:  stloc.3
    IL_003b:  ldloc.2
    IL_003c:  dup
    IL_003d:  ldfld      int32 Game.TerrainChunk::LightPropagationMask
    IL_0042:  ldc.i4.1
    IL_0043:  ldloc.3
    IL_0044:  ldc.i4.s   31
    IL_0046:  and
    IL_0047:  shl
    IL_0048:  or
    IL_0049:  stfld      int32 Game.TerrainChunk::LightPropagationMask
    IL_004e:  ldloc.1
    IL_004f:  ldc.i4.1
    IL_0050:  add
    IL_0051:  stloc.1
    IL_0052:  ldloc.1
    IL_0053:  ldc.i4.1
    IL_0054:  ble.s      IL_0008

    IL_0056:  ldloc.0
    IL_0057:  ldc.i4.1
    IL_0058:  add
    IL_0059:  stloc.0
    IL_005a:  ldloc.0
    IL_005b:  ldc.i4.1
    IL_005c:  ble.s      IL_0004

    IL_005e:  ret
  } // end of method TerrainUpdater::UpdateNeighborsLightPropagationBitmasks

  .method private hidebysig instance int64 
          CalculateChunkGeometryHash(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       273 (0x111)
    .maxstack  6
    .locals init (int64 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             class Game.TerrainChunk V_9,
             int32 V_10,
             int32 V_11)
    IL_0000:  ldc.i4.0
    IL_0001:  conv.i8
    IL_0002:  stloc.0
    IL_0003:  ldc.i4.1
    IL_0004:  stloc.1
    IL_0005:  ldarg.1
    IL_0006:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_000b:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0010:  ldc.i4.1
    IL_0011:  sub
    IL_0012:  stloc.2
    IL_0013:  ldarg.1
    IL_0014:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0019:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_001e:  ldc.i4.1
    IL_001f:  sub
    IL_0020:  stloc.3
    IL_0021:  ldarg.1
    IL_0022:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0027:  ldfld      int32 [Engine]Engine.Point2::X
    IL_002c:  ldc.i4.s   16
    IL_002e:  add
    IL_002f:  ldc.i4.1
    IL_0030:  add
    IL_0031:  stloc.s    V_4
    IL_0033:  ldarg.1
    IL_0034:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0039:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_003e:  ldc.i4.s   16
    IL_0040:  add
    IL_0041:  ldc.i4.1
    IL_0042:  add
    IL_0043:  stloc.s    V_5
    IL_0045:  ldloc.2
    IL_0046:  stloc.s    V_6
    IL_0048:  br         IL_00d0

    IL_004d:  ldloc.3
    IL_004e:  stloc.s    V_7
    IL_0050:  br.s       IL_00c4

    IL_0052:  ldarg.0
    IL_0053:  ldfld      class Game.Terrain Game.TerrainUpdater::m_terrain
    IL_0058:  ldloc.s    V_6
    IL_005a:  ldloc.s    V_7
    IL_005c:  callvirt   instance int32 Game.Terrain::GetShaftValue(int32,
                                                                    int32)
    IL_0061:  stloc.s    V_8
    IL_0063:  ldloc.0
    IL_0064:  ldloc.1
    IL_0065:  ldloc.s    V_8
    IL_0067:  mul
    IL_0068:  conv.i8
    IL_0069:  add
    IL_006a:  stloc.0
    IL_006b:  ldarg.0
    IL_006c:  ldfld      class Game.Terrain Game.TerrainUpdater::m_terrain
    IL_0071:  ldloc.s    V_6
    IL_0073:  ldloc.s    V_7
    IL_0075:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_007a:  stloc.s    V_9
    IL_007c:  ldloc.s    V_9
    IL_007e:  brfalse.s  IL_00be

    IL_0080:  ldloc.s    V_6
    IL_0082:  ldc.i4.s   15
    IL_0084:  and
    IL_0085:  ldc.i4.0
    IL_0086:  ldloc.s    V_7
    IL_0088:  ldc.i4.s   15
    IL_008a:  and
    IL_008b:  call       int32 Game.TerrainChunk::CalculateCellIndex(int32,
                                                                     int32,
                                                                     int32)
    IL_0090:  stloc.s    V_10
    IL_0092:  ldloc.s    V_10
    IL_0094:  ldc.i4     0x80
    IL_0099:  add
    IL_009a:  stloc.s    V_11
    IL_009c:  br.s       IL_00b8

    IL_009e:  ldloc.0
    IL_009f:  ldloc.1
    IL_00a0:  conv.i8
    IL_00a1:  ldloc.s    V_9
    IL_00a3:  ldloc.s    V_10
    IL_00a5:  dup
    IL_00a6:  ldc.i4.1
    IL_00a7:  add
    IL_00a8:  stloc.s    V_10
    IL_00aa:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32)
    IL_00af:  conv.i8
    IL_00b0:  mul
    IL_00b1:  add
    IL_00b2:  stloc.0
    IL_00b3:  ldloc.1
    IL_00b4:  ldc.i4.s   113
    IL_00b6:  add
    IL_00b7:  stloc.1
    IL_00b8:  ldloc.s    V_10
    IL_00ba:  ldloc.s    V_11
    IL_00bc:  blt.s      IL_009e

    IL_00be:  ldloc.s    V_7
    IL_00c0:  ldc.i4.1
    IL_00c1:  add
    IL_00c2:  stloc.s    V_7
    IL_00c4:  ldloc.s    V_7
    IL_00c6:  ldloc.s    V_5
    IL_00c8:  blt.s      IL_0052

    IL_00ca:  ldloc.s    V_6
    IL_00cc:  ldc.i4.1
    IL_00cd:  add
    IL_00ce:  stloc.s    V_6
    IL_00d0:  ldloc.s    V_6
    IL_00d2:  ldloc.s    V_4
    IL_00d4:  blt        IL_004d

    IL_00d9:  ldloc.0
    IL_00da:  ldloc.2
    IL_00db:  conv.i8
    IL_00dc:  ldloc.1
    IL_00dd:  conv.i8
    IL_00de:  mul
    IL_00df:  add
    IL_00e0:  stloc.0
    IL_00e1:  ldloc.1
    IL_00e2:  ldc.i4.s   113
    IL_00e4:  add
    IL_00e5:  stloc.1
    IL_00e6:  ldloc.0
    IL_00e7:  ldloc.3
    IL_00e8:  conv.i8
    IL_00e9:  ldloc.1
    IL_00ea:  conv.i8
    IL_00eb:  mul
    IL_00ec:  add
    IL_00ed:  stloc.0
    IL_00ee:  ldloc.1
    IL_00ef:  ldc.i4.s   113
    IL_00f1:  add
    IL_00f2:  stloc.1
    IL_00f3:  ldloc.0
    IL_00f4:  ldloc.s    V_4
    IL_00f6:  conv.i8
    IL_00f7:  ldloc.1
    IL_00f8:  conv.i8
    IL_00f9:  mul
    IL_00fa:  add
    IL_00fb:  stloc.0
    IL_00fc:  ldloc.1
    IL_00fd:  ldc.i4.s   113
    IL_00ff:  add
    IL_0100:  stloc.1
    IL_0101:  ldloc.0
    IL_0102:  ldloc.s    V_5
    IL_0104:  conv.i8
    IL_0105:  ldloc.1
    IL_0106:  conv.i8
    IL_0107:  mul
    IL_0108:  add
    IL_0109:  stloc.0
    IL_010a:  ldloc.1
    IL_010b:  ldc.i4.s   113
    IL_010d:  add
    IL_010e:  stloc.1
    IL_010f:  ldloc.0
    IL_0110:  ret
  } // end of method TerrainUpdater::CalculateChunkGeometryHash

  .method private hidebysig instance void 
          NotifyBlockBehaviors(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       243 (0xf3)
    .maxstack  6
    .locals init (bool V_0,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.SubsystemBlockBehavior> V_1,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.SubsystemBlockBehavior> V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             class Game.SubsystemBlockBehavior[] V_9,
             int32 V_10)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemBlockBehaviors Game.TerrainUpdater::m_subsystemBlockBehaviors
    IL_0006:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.SubsystemBlockBehavior> Game.SubsystemBlockBehaviors::get_BlockBehaviors()
    IL_000b:  stloc.2
    IL_000c:  ldloca.s   V_2
    IL_000e:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.SubsystemBlockBehavior>::GetEnumerator()
    IL_0013:  stloc.1
    .try
    {
      IL_0014:  br.s       IL_0023

      IL_0016:  ldloca.s   V_1
      IL_0018:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.SubsystemBlockBehavior>::get_Current()
      IL_001d:  ldarg.1
      IL_001e:  callvirt   instance void Game.SubsystemBlockBehavior::OnChunkInitialized(class Game.TerrainChunk)
      IL_0023:  ldloca.s   V_1
      IL_0025:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.SubsystemBlockBehavior>::MoveNext()
      IL_002a:  brtrue.s   IL_0016

      IL_002c:  leave.s    IL_003c

    }  // end .try
    finally
    {
      IL_002e:  ldloca.s   V_1
      IL_0030:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.SubsystemBlockBehavior>
      IL_0036:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_003b:  endfinally
    }  // end handler
    IL_003c:  ldarg.1
    IL_003d:  ldfld      bool Game.TerrainChunk::IsLoaded
    IL_0042:  stloc.0
    IL_0043:  ldc.i4.0
    IL_0044:  stloc.3
    IL_0045:  br         IL_00ea

    IL_004a:  ldc.i4.0
    IL_004b:  stloc.s    V_4
    IL_004d:  br         IL_00dd

    IL_0052:  ldloc.3
    IL_0053:  ldc.i4.0
    IL_0054:  ldloc.s    V_4
    IL_0056:  call       int32 Game.TerrainChunk::CalculateCellIndex(int32,
                                                                     int32,
                                                                     int32)
    IL_005b:  stloc.s    V_5
    IL_005d:  ldc.i4.0
    IL_005e:  stloc.s    V_6
    IL_0060:  br.s       IL_00d1

    IL_0062:  ldarg.1
    IL_0063:  ldloc.s    V_5
    IL_0065:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32)
    IL_006a:  stloc.s    V_7
    IL_006c:  ldloc.s    V_7
    IL_006e:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0073:  stloc.s    V_8
    IL_0075:  ldloc.s    V_8
    IL_0077:  brfalse.s  IL_00c5

    IL_0079:  ldarg.0
    IL_007a:  ldfld      class Game.SubsystemBlockBehaviors Game.TerrainUpdater::m_subsystemBlockBehaviors
    IL_007f:  ldloc.s    V_8
    IL_0081:  callvirt   instance class Game.SubsystemBlockBehavior[] Game.SubsystemBlockBehaviors::GetBlockBehaviors(int32)
    IL_0086:  stloc.s    V_9
    IL_0088:  ldc.i4.0
    IL_0089:  stloc.s    V_10
    IL_008b:  br.s       IL_00bd

    IL_008d:  ldloc.s    V_9
    IL_008f:  ldloc.s    V_10
    IL_0091:  ldelem.ref
    IL_0092:  ldloc.s    V_7
    IL_0094:  ldloc.3
    IL_0095:  ldarg.1
    IL_0096:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_009b:  ldfld      int32 [Engine]Engine.Point2::X
    IL_00a0:  add
    IL_00a1:  ldloc.s    V_6
    IL_00a3:  ldloc.s    V_4
    IL_00a5:  ldarg.1
    IL_00a6:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_00ab:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_00b0:  add
    IL_00b1:  ldloc.0
    IL_00b2:  callvirt   instance void Game.SubsystemBlockBehavior::OnBlockGenerated(int32,
                                                                                     int32,
                                                                                     int32,
                                                                                     int32,
                                                                                     bool)
    IL_00b7:  ldloc.s    V_10
    IL_00b9:  ldc.i4.1
    IL_00ba:  add
    IL_00bb:  stloc.s    V_10
    IL_00bd:  ldloc.s    V_10
    IL_00bf:  ldloc.s    V_9
    IL_00c1:  ldlen
    IL_00c2:  conv.i4
    IL_00c3:  blt.s      IL_008d

    IL_00c5:  ldloc.s    V_6
    IL_00c7:  ldc.i4.1
    IL_00c8:  add
    IL_00c9:  stloc.s    V_6
    IL_00cb:  ldloc.s    V_5
    IL_00cd:  ldc.i4.1
    IL_00ce:  add
    IL_00cf:  stloc.s    V_5
    IL_00d1:  ldloc.s    V_6
    IL_00d3:  ldc.i4.s   127
    IL_00d5:  blt.s      IL_0062

    IL_00d7:  ldloc.s    V_4
    IL_00d9:  ldc.i4.1
    IL_00da:  add
    IL_00db:  stloc.s    V_4
    IL_00dd:  ldloc.s    V_4
    IL_00df:  ldc.i4.s   16
    IL_00e1:  blt        IL_0052

    IL_00e6:  ldloc.3
    IL_00e7:  ldc.i4.1
    IL_00e8:  add
    IL_00e9:  stloc.3
    IL_00ea:  ldloc.3
    IL_00eb:  ldc.i4.s   16
    IL_00ed:  blt        IL_004a

    IL_00f2:  ret
  } // end of method TerrainUpdater::NotifyBlockBehaviors

  .method private hidebysig instance void 
          UnpauseUpdateThread() cil managed
  {
    // 代码大小       49 (0x31)
    .maxstack  2
    .locals init (object V_0,
             bool V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      object Game.TerrainUpdater::m_unpauseLock
    IL_0006:  stloc.0
    IL_0007:  ldc.i4.0
    IL_0008:  stloc.1
    .try
    {
      IL_0009:  ldloc.0
      IL_000a:  ldloca.s   V_1
      IL_000c:  call       void [System.Threading]System.Threading.Monitor::Enter(object,
                                                                                  bool&)
      IL_0011:  ldarg.0
      IL_0012:  ldc.i4.1
      IL_0013:  stfld      bool Game.TerrainUpdater::m_unpauseUpdateThread
      IL_0018:  ldarg.0
      IL_0019:  ldfld      class [System.Threading]System.Threading.ManualResetEvent Game.TerrainUpdater::m_pauseEvent
      IL_001e:  callvirt   instance bool [System.Threading]System.Threading.EventWaitHandle::Set()
      IL_0023:  pop
      IL_0024:  leave.s    IL_0030

    }  // end .try
    finally
    {
      IL_0026:  ldloc.1
      IL_0027:  brfalse.s  IL_002f

      IL_0029:  ldloc.0
      IL_002a:  call       void [System.Threading]System.Threading.Monitor::Exit(object)
      IL_002f:  endfinally
    }  // end handler
    IL_0030:  ret
  } // end of method TerrainUpdater::UnpauseUpdateThread

  .method private hidebysig instance void 
          SettingsManager_SettingChanged(string name) cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "Brightness"
    IL_0006:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_000b:  brfalse.s  IL_0015

    IL_000d:  ldarg.0
    IL_000e:  ldc.i4.7
    IL_000f:  ldc.i4.1
    IL_0010:  call       instance void Game.TerrainUpdater::DowngradeAllChunksState(valuetype Game.TerrainChunkState,
                                                                                    bool)
    IL_0015:  ret
  } // end of method TerrainUpdater::SettingsManager_SettingChanged

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method TerrainUpdater::.cctor

  .property instance class [System.Threading]System.Threading.AutoResetEvent
          UpdateEvent()
  {
    .get instance class [System.Threading]System.Threading.AutoResetEvent Game.TerrainUpdater::get_UpdateEvent()
  } // end of property TerrainUpdater::UpdateEvent
} // end of class Game.TerrainUpdater