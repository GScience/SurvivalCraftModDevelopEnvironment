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

  .class sequential ansi sealed nested private beforefieldinit LightSource
         extends [System.Runtime]System.ValueType
  {
    .field public int32 X
    .field public int32 Y
    .field public int32 Z
    .field public int32 Light
  } // end of class LightSource

  .class sequential ansi sealed nested private beforefieldinit TerrainUpdateParameters
         extends [System.Runtime]System.ValueType
  {
    .field public valuetype [Engine]Engine.Vector3 Center
    .field public float32 ContentsOnlyUpdateDistance
    .field public float32 FullUpdateDistance
    .field public int32 SkyLightValue
    .field public class [System.Runtime]System.Action CompletedHandler
  } // end of class TerrainUpdateParameters

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass39_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public int32 remainingCount
    .field public int32 totalCount
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass39_0'::.ctor

    .method assembly hidebysig instance void 
            '<FindBestChunkToUpdate>b__0'() cil managed
    {
      // 代码大小       32 (0x20)
      .maxstack  8
      IL_0000:  ldstr      "Generating Terrain"
      IL_0005:  ldc.r4     1.
      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.TerrainUpdater/'<>c__DisplayClass39_0'::remainingCount
      IL_0010:  conv.r4
      IL_0011:  ldarg.0
      IL_0012:  ldfld      int32 Game.TerrainUpdater/'<>c__DisplayClass39_0'::totalCount
      IL_0017:  conv.r4
      IL_0018:  div
      IL_0019:  sub
      IL_001a:  call       void Game.ProgressManager::UpdateProgress(string,
                                                                     float32)
      IL_001f:  ret
    } // end of method '<>c__DisplayClass39_0'::'<FindBestChunkToUpdate>b__0'

  } // end of class '<>c__DisplayClass39_0'

  .field private static literal int32 m_lightAttenuationWithDistance = int32(0x00000001)
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemSky m_subsystemSky
  .field private class Game.SubsystemBlockBehaviors m_subsystemBlockBehaviors
  .field private class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainUpdater/LightSource> m_lightSources
  .field private class Game.TerrainUpdater/UpdateStatistics m_statistics
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2> m_newTerrainOrigin
  .field private valuetype [Engine]Engine.Vector3 m_updateCenterAtLastReposition
  .field private valuetype Game.TerrainUpdater/TerrainUpdateParameters m_terrainUpdateParameters
  .field private class [System.Threading.Tasks]System.Threading.Tasks.Task m_task
  .field private class [System.Threading]System.Threading.AutoResetEvent m_updateEvent
  .field private class [System.Threading]System.Threading.ManualResetEvent m_pauseEvent
  .field private bool modreq([System.Runtime]System.Runtime.CompilerServices.IsVolatile) m_quitUpdateThread
  .field private bool m_unpauseUpdateThread
  .field private object m_updateParametersLock
  .field private object m_unpauseLock
  .field private valuetype Game.TerrainUpdater/TerrainUpdateParameters m_threadTerrainUpdateParameters
  .field public static int32 SlowTerrainUpdate
  .field public static bool LogTerrainUpdateStats
  .field private bool '<IsSynchronousUpdateRequired>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemTerrain subsystemTerrain) cil managed
  {
    // 代码大小       161 (0xa1)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainUpdater/LightSource>::.ctor()
    IL_0006:  stfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainUpdater/LightSource> Game.TerrainUpdater::m_lightSources
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.TerrainUpdater/UpdateStatistics::.ctor()
    IL_0011:  stfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_0016:  ldarg.0
    IL_0017:  ldc.r4     (00 00 80 7F)
    IL_001c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_0021:  stfld      valuetype [Engine]Engine.Vector3 Game.TerrainUpdater::m_updateCenterAtLastReposition
    IL_0026:  ldarg.0
    IL_0027:  ldc.i4.1
    IL_0028:  newobj     instance void [System.Threading]System.Threading.AutoResetEvent::.ctor(bool)
    IL_002d:  stfld      class [System.Threading]System.Threading.AutoResetEvent Game.TerrainUpdater::m_updateEvent
    IL_0032:  ldarg.0
    IL_0033:  ldc.i4.1
    IL_0034:  newobj     instance void [System.Threading]System.Threading.ManualResetEvent::.ctor(bool)
    IL_0039:  stfld      class [System.Threading]System.Threading.ManualResetEvent Game.TerrainUpdater::m_pauseEvent
    IL_003e:  ldarg.0
    IL_003f:  newobj     instance void [System.Runtime]System.Object::.ctor()
    IL_0044:  stfld      object Game.TerrainUpdater::m_updateParametersLock
    IL_0049:  ldarg.0
    IL_004a:  newobj     instance void [System.Runtime]System.Object::.ctor()
    IL_004f:  stfld      object Game.TerrainUpdater::m_unpauseLock
    IL_0054:  ldarg.0
    IL_0055:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_005a:  ldarg.0
    IL_005b:  ldarg.1
    IL_005c:  stfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_0061:  ldarg.0
    IL_0062:  ldarg.0
    IL_0063:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_0068:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_006d:  ldc.i4.1
    IL_006e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemSky>(bool)
    IL_0073:  stfld      class Game.SubsystemSky Game.TerrainUpdater::m_subsystemSky
    IL_0078:  ldarg.0
    IL_0079:  ldarg.0
    IL_007a:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_007f:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0084:  ldc.i4.1
    IL_0085:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBlockBehaviors>(bool)
    IL_008a:  stfld      class Game.SubsystemBlockBehaviors Game.TerrainUpdater::m_subsystemBlockBehaviors
    IL_008f:  ldarg.0
    IL_0090:  ldftn      instance void Game.TerrainUpdater::SettingsManager_SettingChanged(string)
    IL_0096:  newobj     instance void class [System.Runtime]System.Action`1<string>::.ctor(object,
                                                                                            native int)
    IL_009b:  call       void Game.SettingsManager::add_SettingChanged(class [System.Runtime]System.Action`1<string>)
    IL_00a0:  ret
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

  .method public hidebysig specialname instance bool 
          get_IsSynchronousUpdateRequired() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.TerrainUpdater::'<IsSynchronousUpdateRequired>k__BackingField'
    IL_0006:  ret
  } // end of method TerrainUpdater::get_IsSynchronousUpdateRequired

  .method public hidebysig specialname instance void 
          set_IsSynchronousUpdateRequired(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.TerrainUpdater::'<IsSynchronousUpdateRequired>k__BackingField'
    IL_0007:  ret
  } // end of method TerrainUpdater::set_IsSynchronousUpdateRequired

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
          SetTerrainUpdateParameters(valuetype [Engine]Engine.Vector3 center,
                                     float32 contentsOnlyUpdateDistance,
                                     float32 fullUpdateDistance,
                                     int32 skyLightValue,
                                     class [System.Runtime]System.Action completedHandler) cil managed
  {
    // 代码大小       411 (0x19b)
    .maxstack  5
    .locals init (bool V_0,
             valuetype [Engine]Engine.Point2 V_1,
             object V_2,
             bool V_3,
             valuetype Game.TerrainUpdater/TerrainUpdateParameters V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainUpdater::m_updateCenterAtLastReposition
    IL_0006:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_000b:  ldarg.1
    IL_000c:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0011:  sub
    IL_0012:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0017:  ldarg.0
    IL_0018:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainUpdater::m_updateCenterAtLastReposition
    IL_001d:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0022:  ldarg.1
    IL_0023:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0028:  sub
    IL_0029:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_002e:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0033:  ldc.r4     8.
    IL_0038:  blt.un.s   IL_00b2

    IL_003a:  ldloca.s   V_1
    IL_003c:  ldarg.1
    IL_003d:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0042:  ldc.r4     16.
    IL_0047:  div
    IL_0048:  conv.i4
    IL_0049:  ldc.i4.s   16
    IL_004b:  mul
    IL_004c:  ldarg.0
    IL_004d:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_0052:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0057:  callvirt   instance int32 Game.TerrainData::get_SizeX()
    IL_005c:  ldc.i4.2
    IL_005d:  div
    IL_005e:  sub
    IL_005f:  ldarg.1
    IL_0060:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0065:  ldc.r4     16.
    IL_006a:  div
    IL_006b:  conv.i4
    IL_006c:  ldc.i4.s   16
    IL_006e:  mul
    IL_006f:  ldarg.0
    IL_0070:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_0075:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_007a:  callvirt   instance int32 Game.TerrainData::get_SizeZ()
    IL_007f:  ldc.i4.2
    IL_0080:  div
    IL_0081:  sub
    IL_0082:  call       instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_0087:  ldloc.1
    IL_0088:  ldarg.0
    IL_0089:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_008e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0093:  callvirt   instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
    IL_0098:  call       bool [Engine]Engine.Point2::op_Inequality(valuetype [Engine]Engine.Point2,
                                                                   valuetype [Engine]Engine.Point2)
    IL_009d:  brfalse.s  IL_00b2

    IL_009f:  ldarg.0
    IL_00a0:  ldloc.1
    IL_00a1:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2>::.ctor(!0)
    IL_00a6:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2> Game.TerrainUpdater::m_newTerrainOrigin
    IL_00ab:  ldarg.0
    IL_00ac:  ldarg.1
    IL_00ad:  stfld      valuetype [Engine]Engine.Vector3 Game.TerrainUpdater::m_updateCenterAtLastReposition
    IL_00b2:  ldarg.s    skyLightValue
    IL_00b4:  ldarg.0
    IL_00b5:  ldflda     valuetype Game.TerrainUpdater/TerrainUpdateParameters Game.TerrainUpdater::m_terrainUpdateParameters
    IL_00ba:  ldfld      int32 Game.TerrainUpdater/TerrainUpdateParameters::SkyLightValue
    IL_00bf:  beq.s      IL_00c9

    IL_00c1:  ldarg.0
    IL_00c2:  ldc.i4.5
    IL_00c3:  ldc.i4.0
    IL_00c4:  call       instance void Game.TerrainUpdater::DowngradeAllChunksState(valuetype Game.TerrainChunkState,
                                                                                    bool)
    IL_00c9:  ldarg.s    completedHandler
    IL_00cb:  brfalse.s  IL_0112

    IL_00cd:  ldarg.0
    IL_00ce:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2> Game.TerrainUpdater::m_newTerrainOrigin
    IL_00d3:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2>::get_HasValue()
    IL_00d8:  brfalse.s  IL_0112

    IL_00da:  ldarg.0
    IL_00db:  ldfld      class [System.Threading]System.Threading.AutoResetEvent Game.TerrainUpdater::m_updateEvent
    IL_00e0:  callvirt   instance bool [System.Runtime]System.Threading.WaitHandle::WaitOne()
    IL_00e5:  pop
    .try
    {
      IL_00e6:  ldarg.0
      IL_00e7:  ldarg.0
      IL_00e8:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2> Game.TerrainUpdater::m_newTerrainOrigin
      IL_00ed:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2>::get_Value()
      IL_00f2:  call       instance void Game.TerrainUpdater::RepositionChunks(valuetype [Engine]Engine.Point2)
      IL_00f7:  leave.s    IL_0112

    }  // end .try
    finally
    {
      IL_00f9:  ldarg.0
      IL_00fa:  ldfld      class [System.Threading]System.Threading.AutoResetEvent Game.TerrainUpdater::m_updateEvent
      IL_00ff:  callvirt   instance bool [System.Threading]System.Threading.EventWaitHandle::Set()
      IL_0104:  pop
      IL_0105:  ldarg.0
      IL_0106:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2> Game.TerrainUpdater::m_newTerrainOrigin
      IL_010b:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2>
      IL_0111:  endfinally
    }  // end handler
    IL_0112:  ldc.i4.0
    IL_0113:  stloc.0
    IL_0114:  ldarg.2
    IL_0115:  ldarg.0
    IL_0116:  ldflda     valuetype Game.TerrainUpdater/TerrainUpdateParameters Game.TerrainUpdater::m_terrainUpdateParameters
    IL_011b:  ldfld      float32 Game.TerrainUpdater/TerrainUpdateParameters::ContentsOnlyUpdateDistance
    IL_0120:  beq.s      IL_0124

    IL_0122:  ldc.i4.1
    IL_0123:  stloc.0
    IL_0124:  ldarg.3
    IL_0125:  ldarg.0
    IL_0126:  ldflda     valuetype Game.TerrainUpdater/TerrainUpdateParameters Game.TerrainUpdater::m_terrainUpdateParameters
    IL_012b:  ldfld      float32 Game.TerrainUpdater/TerrainUpdateParameters::FullUpdateDistance
    IL_0130:  beq.s      IL_0134

    IL_0132:  ldc.i4.1
    IL_0133:  stloc.0
    IL_0134:  ldarg.s    completedHandler
    IL_0136:  brfalse.s  IL_013a

    IL_0138:  ldc.i4.1
    IL_0139:  stloc.0
    IL_013a:  ldarg.0
    IL_013b:  ldfld      object Game.TerrainUpdater::m_updateParametersLock
    IL_0140:  stloc.2
    IL_0141:  ldc.i4.0
    IL_0142:  stloc.3
    .try
    {
      IL_0143:  ldloc.2
      IL_0144:  ldloca.s   V_3
      IL_0146:  call       void [System.Threading]System.Threading.Monitor::Enter(object,
                                                                                  bool&)
      IL_014b:  ldarg.0
      IL_014c:  ldloca.s   V_4
      IL_014e:  initobj    Game.TerrainUpdater/TerrainUpdateParameters
      IL_0154:  ldloca.s   V_4
      IL_0156:  ldarg.1
      IL_0157:  stfld      valuetype [Engine]Engine.Vector3 Game.TerrainUpdater/TerrainUpdateParameters::Center
      IL_015c:  ldloca.s   V_4
      IL_015e:  ldarg.2
      IL_015f:  stfld      float32 Game.TerrainUpdater/TerrainUpdateParameters::ContentsOnlyUpdateDistance
      IL_0164:  ldloca.s   V_4
      IL_0166:  ldarg.3
      IL_0167:  stfld      float32 Game.TerrainUpdater/TerrainUpdateParameters::FullUpdateDistance
      IL_016c:  ldloca.s   V_4
      IL_016e:  ldarg.s    skyLightValue
      IL_0170:  stfld      int32 Game.TerrainUpdater/TerrainUpdateParameters::SkyLightValue
      IL_0175:  ldloca.s   V_4
      IL_0177:  ldarg.s    completedHandler
      IL_0179:  stfld      class [System.Runtime]System.Action Game.TerrainUpdater/TerrainUpdateParameters::CompletedHandler
      IL_017e:  ldloc.s    V_4
      IL_0180:  stfld      valuetype Game.TerrainUpdater/TerrainUpdateParameters Game.TerrainUpdater::m_terrainUpdateParameters
      IL_0185:  leave.s    IL_0191

    }  // end .try
    finally
    {
      IL_0187:  ldloc.3
      IL_0188:  brfalse.s  IL_0190

      IL_018a:  ldloc.2
      IL_018b:  call       void [System.Threading]System.Threading.Monitor::Exit(object)
      IL_0190:  endfinally
    }  // end handler
    IL_0191:  ldloc.0
    IL_0192:  brfalse.s  IL_019a

    IL_0194:  ldarg.0
    IL_0195:  call       instance void Game.TerrainUpdater::UnpauseUpdateThread()
    IL_019a:  ret
  } // end of method TerrainUpdater::SetTerrainUpdateParameters

  .method public hidebysig instance void 
          Update() cil managed
  {
    // 代码大小       362 (0x16a)
    .maxstack  3
    .locals init (float64 V_0,
             object V_1,
             bool V_2,
             class Game.TerrainChunk[] V_3,
             int32 V_4,
             class Game.TerrainChunk V_5)
    IL_0000:  call       bool Game.SettingsManager::get_MultithreadedTerrainUpdate()
    IL_0005:  brtrue.s   IL_005e

    IL_0007:  ldarg.0
    IL_0008:  ldfld      class [System.Threading.Tasks]System.Threading.Tasks.Task Game.TerrainUpdater::m_task
    IL_000d:  brfalse.s  IL_003c

    IL_000f:  ldarg.0
    IL_0010:  ldc.i4.1
    IL_0011:  volatile.
    IL_0013:  stfld      bool modreq([System.Runtime]System.Runtime.CompilerServices.IsVolatile) Game.TerrainUpdater::m_quitUpdateThread
    IL_0018:  ldarg.0
    IL_0019:  call       instance void Game.TerrainUpdater::UnpauseUpdateThread()
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class [System.Threading]System.Threading.AutoResetEvent Game.TerrainUpdater::m_updateEvent
    IL_0024:  callvirt   instance bool [System.Threading]System.Threading.EventWaitHandle::Set()
    IL_0029:  pop
    IL_002a:  ldarg.0
    IL_002b:  ldfld      class [System.Threading.Tasks]System.Threading.Tasks.Task Game.TerrainUpdater::m_task
    IL_0030:  callvirt   instance void [System.Threading.Tasks]System.Threading.Tasks.Task::Wait()
    IL_0035:  ldarg.0
    IL_0036:  ldnull
    IL_0037:  stfld      class [System.Threading.Tasks]System.Threading.Tasks.Task Game.TerrainUpdater::m_task
    IL_003c:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0041:  stloc.0
    IL_0042:  ldarg.0
    IL_0043:  call       instance bool Game.TerrainUpdater::SynchronousUpdateFunction()
    IL_0048:  brtrue.s   IL_0098

    IL_004a:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_004f:  ldloc.0
    IL_0050:  sub
    IL_0051:  ldc.r8     9.9999997764825821e-003
    IL_005a:  blt.s      IL_0042

    IL_005c:  br.s       IL_0098

    IL_005e:  ldarg.0
    IL_005f:  ldfld      class [System.Threading.Tasks]System.Threading.Tasks.Task Game.TerrainUpdater::m_task
    IL_0064:  brtrue.s   IL_0098

    IL_0066:  ldarg.0
    IL_0067:  ldc.i4.0
    IL_0068:  volatile.
    IL_006a:  stfld      bool modreq([System.Runtime]System.Runtime.CompilerServices.IsVolatile) Game.TerrainUpdater::m_quitUpdateThread
    IL_006f:  ldarg.0
    IL_0070:  ldarg.0
    IL_0071:  ldftn      instance void Game.TerrainUpdater::ThreadUpdateFunction()
    IL_0077:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_007c:  call       class [System.Threading.Tasks]System.Threading.Tasks.Task [System.Threading.Tasks]System.Threading.Tasks.Task::Run(class [System.Runtime]System.Action)
    IL_0081:  stfld      class [System.Threading.Tasks]System.Threading.Tasks.Task Game.TerrainUpdater::m_task
    IL_0086:  ldarg.0
    IL_0087:  call       instance void Game.TerrainUpdater::UnpauseUpdateThread()
    IL_008c:  ldarg.0
    IL_008d:  ldfld      class [System.Threading]System.Threading.AutoResetEvent Game.TerrainUpdater::m_updateEvent
    IL_0092:  callvirt   instance bool [System.Threading]System.Threading.EventWaitHandle::Set()
    IL_0097:  pop
    IL_0098:  ldarg.0
    IL_0099:  ldfld      object Game.TerrainUpdater::m_updateParametersLock
    IL_009e:  stloc.1
    IL_009f:  ldc.i4.0
    IL_00a0:  stloc.2
    .try
    {
      IL_00a1:  ldloc.1
      IL_00a2:  ldloca.s   V_2
      IL_00a4:  call       void [System.Threading]System.Threading.Monitor::Enter(object,
                                                                                  bool&)
      IL_00a9:  ldarg.0
      IL_00aa:  call       instance bool Game.TerrainUpdater::SendReceiveChunkStates()
      IL_00af:  brfalse.s  IL_00b7

      IL_00b1:  ldarg.0
      IL_00b2:  call       instance void Game.TerrainUpdater::UnpauseUpdateThread()
      IL_00b7:  leave.s    IL_00c3

    }  // end .try
    finally
    {
      IL_00b9:  ldloc.2
      IL_00ba:  brfalse.s  IL_00c2

      IL_00bc:  ldloc.1
      IL_00bd:  call       void [System.Threading]System.Threading.Monitor::Exit(object)
      IL_00c2:  endfinally
    }  // end handler
    IL_00c3:  ldarg.0
    IL_00c4:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2> Game.TerrainUpdater::m_newTerrainOrigin
    IL_00c9:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2>::get_HasValue()
    IL_00ce:  brfalse.s  IL_0122

    IL_00d0:  ldarg.0
    IL_00d1:  ldfld      class [System.Threading]System.Threading.ManualResetEvent Game.TerrainUpdater::m_pauseEvent
    IL_00d6:  callvirt   instance bool [System.Threading]System.Threading.EventWaitHandle::Reset()
    IL_00db:  pop
    IL_00dc:  ldarg.0
    IL_00dd:  ldfld      class [System.Threading]System.Threading.AutoResetEvent Game.TerrainUpdater::m_updateEvent
    IL_00e2:  ldc.i4.0
    IL_00e3:  callvirt   instance bool [System.Runtime]System.Threading.WaitHandle::WaitOne(int32)
    IL_00e8:  brfalse.s  IL_0122

    IL_00ea:  ldarg.0
    IL_00eb:  ldfld      class [System.Threading]System.Threading.ManualResetEvent Game.TerrainUpdater::m_pauseEvent
    IL_00f0:  callvirt   instance bool [System.Threading]System.Threading.EventWaitHandle::Set()
    IL_00f5:  pop
    .try
    {
      IL_00f6:  ldarg.0
      IL_00f7:  ldarg.0
      IL_00f8:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2> Game.TerrainUpdater::m_newTerrainOrigin
      IL_00fd:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2>::get_Value()
      IL_0102:  call       instance void Game.TerrainUpdater::RepositionChunks(valuetype [Engine]Engine.Point2)
      IL_0107:  leave.s    IL_0122

    }  // end .try
    finally
    {
      IL_0109:  ldarg.0
      IL_010a:  ldfld      class [System.Threading]System.Threading.AutoResetEvent Game.TerrainUpdater::m_updateEvent
      IL_010f:  callvirt   instance bool [System.Threading]System.Threading.EventWaitHandle::Set()
      IL_0114:  pop
      IL_0115:  ldarg.0
      IL_0116:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2> Game.TerrainUpdater::m_newTerrainOrigin
      IL_011b:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2>
      IL_0121:  endfinally
    }  // end handler
    IL_0122:  ldarg.0
    IL_0123:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_0128:  callvirt   instance class Game.TerrainChunk[] Game.SubsystemTerrain::get_Chunks()
    IL_012d:  stloc.3
    IL_012e:  ldc.i4.0
    IL_012f:  stloc.s    V_4
    IL_0131:  br.s       IL_0162

    IL_0133:  ldloc.3
    IL_0134:  ldloc.s    V_4
    IL_0136:  ldelem.ref
    IL_0137:  stloc.s    V_5
    IL_0139:  ldloc.s    V_5
    IL_013b:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_0140:  ldc.i4.7
    IL_0141:  blt.s      IL_015c

    IL_0143:  ldloc.s    V_5
    IL_0145:  ldfld      bool Game.TerrainChunk::AreBehaviorsNotified
    IL_014a:  brtrue.s   IL_015c

    IL_014c:  ldloc.s    V_5
    IL_014e:  ldc.i4.1
    IL_014f:  stfld      bool Game.TerrainChunk::AreBehaviorsNotified
    IL_0154:  ldarg.0
    IL_0155:  ldloc.s    V_5
    IL_0157:  call       instance void Game.TerrainUpdater::NotifyBlockBehaviors(class Game.TerrainChunk)
    IL_015c:  ldloc.s    V_4
    IL_015e:  ldc.i4.1
    IL_015f:  add
    IL_0160:  stloc.s    V_4
    IL_0162:  ldloc.s    V_4
    IL_0164:  ldloc.3
    IL_0165:  ldlen
    IL_0166:  conv.i4
    IL_0167:  blt.s      IL_0133

    IL_0169:  ret
  } // end of method TerrainUpdater::Update

  .method public hidebysig instance void 
          PrepareForDrawing(class Game.SubsystemDrawing subsystemDrawing) cil managed
  {
    // 代码大小       212 (0xd4)
    .maxstack  6
    .locals init (class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk> V_0,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.TerrainChunk> V_1,
             class Game.TerrainChunk V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_0007:  ldc.r4     64.
    IL_000c:  ldarg.0
    IL_000d:  ldfld      class Game.SubsystemSky Game.TerrainUpdater::m_subsystemSky
    IL_0012:  callvirt   instance float32 Game.SubsystemSky::get_VisibilityRange()
    IL_0017:  ldarg.0
    IL_0018:  ldfld      class Game.SubsystemSky Game.TerrainUpdater::m_subsystemSky
    IL_001d:  callvirt   instance int32 Game.SubsystemSky::get_LightValue()
    IL_0022:  ldnull
    IL_0023:  call       instance void Game.TerrainUpdater::SetTerrainUpdateParameters(valuetype [Engine]Engine.Vector3,
                                                                                       float32,
                                                                                       float32,
                                                                                       int32,
                                                                                       class [System.Runtime]System.Action)
    IL_0028:  ldarg.0
    IL_0029:  call       instance bool Game.TerrainUpdater::get_IsSynchronousUpdateRequired()
    IL_002e:  brfalse    IL_00d3

    IL_0033:  ldarg.0
    IL_0034:  ldc.i4.0
    IL_0035:  call       instance void Game.TerrainUpdater::set_IsSynchronousUpdateRequired(bool)
    IL_003a:  ldarg.0
    IL_003b:  ldarg.1
    IL_003c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_0041:  ldarg.1
    IL_0042:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewDirection()
    IL_0047:  call       instance class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk> Game.TerrainUpdater::DetermineSynchronousUpdateChunks(valuetype [Engine]Engine.Vector3,
                                                                                                                                                                             valuetype [Engine]Engine.Vector3)
    IL_004c:  stloc.0
    IL_004d:  ldloc.0
    IL_004e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk>::get_Count()
    IL_0053:  ldc.i4.0
    IL_0054:  ble.s      IL_00d3

    IL_0056:  ldarg.0
    IL_0057:  ldfld      class [System.Threading]System.Threading.AutoResetEvent Game.TerrainUpdater::m_updateEvent
    IL_005c:  callvirt   instance bool [System.Runtime]System.Threading.WaitHandle::WaitOne()
    IL_0061:  pop
    .try
    {
      IL_0062:  ldarg.0
      IL_0063:  call       instance bool Game.TerrainUpdater::SendReceiveChunkStates()
      IL_0068:  pop
      IL_0069:  ldarg.0
      IL_006a:  call       instance void Game.TerrainUpdater::SendReceiveChunkStatesThread()
      IL_006f:  ldloc.0
      IL_0070:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk>::GetEnumerator()
      IL_0075:  stloc.1
      .try
      {
        IL_0076:  br.s       IL_009e

        IL_0078:  ldloca.s   V_1
        IL_007a:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.TerrainChunk>::get_Current()
        IL_007f:  stloc.2
        IL_0080:  br.s       IL_0094

        IL_0082:  ldarg.0
        IL_0083:  ldloc.2
        IL_0084:  ldarg.0
        IL_0085:  ldfld      class Game.SubsystemSky Game.TerrainUpdater::m_subsystemSky
        IL_008a:  callvirt   instance int32 Game.SubsystemSky::get_LightValue()
        IL_008f:  call       instance void Game.TerrainUpdater::UpdateChunkSingleStep(class Game.TerrainChunk,
                                                                                      int32)
        IL_0094:  ldloc.2
        IL_0095:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::ThreadState
        IL_009a:  ldc.i4.s   9
        IL_009c:  blt.s      IL_0082

        IL_009e:  ldloca.s   V_1
        IL_00a0:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.TerrainChunk>::MoveNext()
        IL_00a5:  brtrue.s   IL_0078

        IL_00a7:  leave.s    IL_00b7

      }  // end .try
      finally
      {
        IL_00a9:  ldloca.s   V_1
        IL_00ab:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.TerrainChunk>
        IL_00b1:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_00b6:  endfinally
      }  // end handler
      IL_00b7:  ldarg.0
      IL_00b8:  call       instance void Game.TerrainUpdater::SendReceiveChunkStatesThread()
      IL_00bd:  ldarg.0
      IL_00be:  call       instance bool Game.TerrainUpdater::SendReceiveChunkStates()
      IL_00c3:  pop
      IL_00c4:  leave.s    IL_00d3

    }  // end .try
    finally
    {
      IL_00c6:  ldarg.0
      IL_00c7:  ldfld      class [System.Threading]System.Threading.AutoResetEvent Game.TerrainUpdater::m_updateEvent
      IL_00cc:  callvirt   instance bool [System.Threading]System.Threading.EventWaitHandle::Set()
      IL_00d1:  pop
      IL_00d2:  endfinally
    }  // end handler
    IL_00d3:  ret
  } // end of method TerrainUpdater::PrepareForDrawing

  .method public hidebysig instance void 
          DowngradeChunkNeighborhoodState(class Game.TerrainChunk chunk,
                                          int32 radius,
                                          valuetype Game.TerrainChunkState state,
                                          bool forceGeometryRegeneration) cil managed
  {
    // 代码大小       114 (0x72)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             class Game.TerrainChunk V_2)
    IL_0000:  ldarg.2
    IL_0001:  neg
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_006d

    IL_0005:  ldarg.2
    IL_0006:  neg
    IL_0007:  stloc.1
    IL_0008:  br.s       IL_0065

    IL_000a:  ldarg.0
    IL_000b:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_0010:  ldarg.1
    IL_0011:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0016:  ldfld      int32 [Engine]Engine.Point2::X
    IL_001b:  ldloc.0
    IL_001c:  ldc.i4.s   16
    IL_001e:  mul
    IL_001f:  add
    IL_0020:  ldarg.1
    IL_0021:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0026:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_002b:  ldloc.1
    IL_002c:  ldc.i4.s   16
    IL_002e:  mul
    IL_002f:  add
    IL_0030:  callvirt   instance class Game.TerrainChunk Game.SubsystemTerrain::CellToChunk(int32,
                                                                                             int32)
    IL_0035:  stloc.2
    IL_0036:  ldloc.2
    IL_0037:  brfalse.s  IL_0061

    IL_0039:  ldloc.2
    IL_003a:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_003f:  ldarg.3
    IL_0040:  ble.s      IL_005a

    IL_0042:  ldloc.2
    IL_0043:  ldarg.3
    IL_0044:  stfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_0049:  ldarg.s    forceGeometryRegeneration
    IL_004b:  brfalse.s  IL_005a

    IL_004d:  ldloc.2
    IL_004e:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_0053:  ldc.i4.0
    IL_0054:  conv.i8
    IL_0055:  stfld      int64 Game.TerrainChunkGeometry::GeometryHash
    IL_005a:  ldloc.2
    IL_005b:  ldc.i4.1
    IL_005c:  stfld      bool Game.TerrainChunk::WasDowngraded
    IL_0061:  ldloc.1
    IL_0062:  ldc.i4.1
    IL_0063:  add
    IL_0064:  stloc.1
    IL_0065:  ldloc.1
    IL_0066:  ldarg.2
    IL_0067:  ble.s      IL_000a

    IL_0069:  ldloc.0
    IL_006a:  ldc.i4.1
    IL_006b:  add
    IL_006c:  stloc.0
    IL_006d:  ldloc.0
    IL_006e:  ldarg.2
    IL_006f:  ble.s      IL_0005

    IL_0071:  ret
  } // end of method TerrainUpdater::DowngradeChunkNeighborhoodState

  .method public hidebysig instance void 
          DowngradeAllChunksState(valuetype Game.TerrainChunkState state,
                                  bool forceGeometryRegeneration) cil managed
  {
    // 代码大小       78 (0x4e)
    .maxstack  2
    .locals init (int32 V_0,
             class Game.TerrainChunk V_1)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br.s       IL_003d

    IL_0004:  ldarg.0
    IL_0005:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_000a:  callvirt   instance class Game.TerrainChunk[] Game.SubsystemTerrain::get_Chunks()
    IL_000f:  ldloc.0
    IL_0010:  ldelem.ref
    IL_0011:  stloc.1
    IL_0012:  ldloc.1
    IL_0013:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_0018:  ldarg.1
    IL_0019:  ble.s      IL_0032

    IL_001b:  ldloc.1
    IL_001c:  ldarg.1
    IL_001d:  stfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_0022:  ldarg.2
    IL_0023:  brfalse.s  IL_0032

    IL_0025:  ldloc.1
    IL_0026:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_002b:  ldc.i4.0
    IL_002c:  conv.i8
    IL_002d:  stfld      int64 Game.TerrainChunkGeometry::GeometryHash
    IL_0032:  ldloc.1
    IL_0033:  ldc.i4.1
    IL_0034:  stfld      bool Game.TerrainChunk::WasDowngraded
    IL_0039:  ldloc.0
    IL_003a:  ldc.i4.1
    IL_003b:  add
    IL_003c:  stloc.0
    IL_003d:  ldloc.0
    IL_003e:  ldarg.0
    IL_003f:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_0044:  callvirt   instance class Game.TerrainChunk[] Game.SubsystemTerrain::get_Chunks()
    IL_0049:  ldlen
    IL_004a:  conv.i4
    IL_004b:  blt.s      IL_0004

    IL_004d:  ret
  } // end of method TerrainUpdater::DowngradeAllChunksState

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
    // 代码大小       156 (0x9c)
    .maxstack  3
    .locals init (class Game.TerrainChunk V_0,
             object V_1,
             bool V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      object Game.TerrainUpdater::m_updateParametersLock
    IL_0006:  stloc.1
    IL_0007:  ldc.i4.0
    IL_0008:  stloc.2
    .try
    {
      IL_0009:  ldloc.1
      IL_000a:  ldloca.s   V_2
      IL_000c:  call       void [System.Threading]System.Threading.Monitor::Enter(object,
                                                                                  bool&)
      IL_0011:  ldarg.0
      IL_0012:  ldarg.0
      IL_0013:  ldfld      valuetype Game.TerrainUpdater/TerrainUpdateParameters Game.TerrainUpdater::m_terrainUpdateParameters
      IL_0018:  stfld      valuetype Game.TerrainUpdater/TerrainUpdateParameters Game.TerrainUpdater::m_threadTerrainUpdateParameters
      IL_001d:  ldarg.0
      IL_001e:  call       instance void Game.TerrainUpdater::SendReceiveChunkStatesThread()
      IL_0023:  leave.s    IL_002f

    }  // end .try
    finally
    {
      IL_0025:  ldloc.2
      IL_0026:  brfalse.s  IL_002e

      IL_0028:  ldloc.1
      IL_0029:  call       void [System.Threading]System.Threading.Monitor::Exit(object)
      IL_002e:  endfinally
    }  // end handler
    IL_002f:  ldarg.0
    IL_0030:  ldarg.0
    IL_0031:  ldfld      valuetype Game.TerrainUpdater/TerrainUpdateParameters Game.TerrainUpdater::m_threadTerrainUpdateParameters
    IL_0036:  call       instance class Game.TerrainChunk Game.TerrainUpdater::FindBestChunkToUpdate(valuetype Game.TerrainUpdater/TerrainUpdateParameters)
    IL_003b:  stloc.0
    IL_003c:  ldloc.0
    IL_003d:  brfalse.s  IL_0053

    IL_003f:  ldarg.0
    IL_0040:  ldloc.0
    IL_0041:  ldarg.0
    IL_0042:  ldfld      class Game.SubsystemSky Game.TerrainUpdater::m_subsystemSky
    IL_0047:  callvirt   instance int32 Game.SubsystemSky::get_LightValue()
    IL_004c:  call       instance void Game.TerrainUpdater::UpdateChunkSingleStep(class Game.TerrainChunk,
                                                                                  int32)
    IL_0051:  ldc.i4.0
    IL_0052:  ret

    IL_0053:  ldsfld     bool Game.TerrainUpdater::LogTerrainUpdateStats
    IL_0058:  brfalse.s  IL_0070

    IL_005a:  ldarg.0
    IL_005b:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_0060:  callvirt   instance void Game.TerrainUpdater/UpdateStatistics::Log()
    IL_0065:  ldarg.0
    IL_0066:  newobj     instance void Game.TerrainUpdater/UpdateStatistics::.ctor()
    IL_006b:  stfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_0070:  ldarg.0
    IL_0071:  ldflda     valuetype Game.TerrainUpdater/TerrainUpdateParameters Game.TerrainUpdater::m_threadTerrainUpdateParameters
    IL_0076:  ldfld      class [System.Runtime]System.Action Game.TerrainUpdater/TerrainUpdateParameters::CompletedHandler
    IL_007b:  brfalse.s  IL_009a

    IL_007d:  ldarg.0
    IL_007e:  ldflda     valuetype Game.TerrainUpdater/TerrainUpdateParameters Game.TerrainUpdater::m_threadTerrainUpdateParameters
    IL_0083:  ldfld      class [System.Runtime]System.Action Game.TerrainUpdater/TerrainUpdateParameters::CompletedHandler
    IL_0088:  ldc.i4.0
    IL_0089:  call       void [Engine]Engine.Dispatcher::Dispatch(class [System.Runtime]System.Action,
                                                                  bool)
    IL_008e:  ldarg.0
    IL_008f:  ldflda     valuetype Game.TerrainUpdater/TerrainUpdateParameters Game.TerrainUpdater::m_threadTerrainUpdateParameters
    IL_0094:  ldnull
    IL_0095:  stfld      class [System.Runtime]System.Action Game.TerrainUpdater/TerrainUpdateParameters::CompletedHandler
    IL_009a:  ldc.i4.1
    IL_009b:  ret
  } // end of method TerrainUpdater::SynchronousUpdateFunction

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
    IL_0003:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_0008:  callvirt   instance class Game.TerrainChunk[] Game.SubsystemTerrain::get_Chunks()
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
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.TerrainChunk[] Game.SubsystemTerrain::get_Chunks()
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

  .method private hidebysig instance class Game.TerrainChunk 
          FindBestChunkToUpdate(valuetype Game.TerrainUpdater/TerrainUpdateParameters parameters) cil managed
  {
    // 代码大小       318 (0x13e)
    .maxstack  3
    .locals init (class Game.TerrainUpdater/'<>c__DisplayClass39_0' V_0,
             class Game.TerrainChunk V_1,
             float32 V_2,
             class Game.TerrainChunk[] V_3,
             int32 V_4,
             class Game.TerrainChunk V_5,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainChunkState> V_6,
             float32 V_7,
             int32 V_8)
    IL_0000:  newobj     instance void Game.TerrainUpdater/'<>c__DisplayClass39_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldc.i4.0
    IL_0008:  stfld      int32 Game.TerrainUpdater/'<>c__DisplayClass39_0'::totalCount
    IL_000d:  ldloc.0
    IL_000e:  ldc.i4.0
    IL_000f:  stfld      int32 Game.TerrainUpdater/'<>c__DisplayClass39_0'::remainingCount
    IL_0014:  ldnull
    IL_0015:  stloc.1
    IL_0016:  ldc.r4     3.4028235e+038
    IL_001b:  stloc.2
    IL_001c:  ldarg.0
    IL_001d:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_0022:  callvirt   instance class Game.TerrainChunk[] Game.SubsystemTerrain::get_Chunks()
    IL_0027:  stloc.3
    IL_0028:  ldc.i4.0
    IL_0029:  stloc.s    V_4
    IL_002b:  br         IL_0120

    IL_0030:  ldloc.3
    IL_0031:  ldloc.s    V_4
    IL_0033:  ldelem.ref
    IL_0034:  stloc.s    V_5
    IL_0036:  ldloc.s    V_5
    IL_0038:  ldfld      valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_003d:  ldc.i4     0x7fffffff
    IL_0042:  ldc.i4     0x7fffffff
    IL_0047:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_004c:  call       bool [Engine]Engine.Point2::op_Inequality(valuetype [Engine]Engine.Point2,
                                                                   valuetype [Engine]Engine.Point2)
    IL_0051:  brfalse    IL_011a

    IL_0056:  ldloca.s   V_6
    IL_0058:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainChunkState>
    IL_005e:  ldarg.1
    IL_005f:  ldfld      valuetype [Engine]Engine.Vector3 Game.TerrainUpdater/TerrainUpdateParameters::Center
    IL_0064:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0069:  ldarg.1
    IL_006a:  ldfld      valuetype [Engine]Engine.Vector3 Game.TerrainUpdater/TerrainUpdateParameters::Center
    IL_006f:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0074:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0079:  ldloc.s    V_5
    IL_007b:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainChunk::Center
    IL_0080:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0085:  ldloc.s    V_5
    IL_0087:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainChunk::Center
    IL_008c:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0091:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0096:  call       float32 [Engine]Engine.Vector2::DistanceSquared(valuetype [Engine]Engine.Vector2,
                                                                         valuetype [Engine]Engine.Vector2)
    IL_009b:  stloc.s    V_7
    IL_009d:  ldloc.s    V_7
    IL_009f:  ldarg.1
    IL_00a0:  ldfld      float32 Game.TerrainUpdater/TerrainUpdateParameters::FullUpdateDistance
    IL_00a5:  ldarg.1
    IL_00a6:  ldfld      float32 Game.TerrainUpdater/TerrainUpdateParameters::FullUpdateDistance
    IL_00ab:  mul
    IL_00ac:  bge.un.s   IL_00b9

    IL_00ae:  ldloca.s   V_6
    IL_00b0:  ldc.i4.s   9
    IL_00b2:  call       instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainChunkState>::.ctor(!0)
    IL_00b7:  br.s       IL_00d2

    IL_00b9:  ldloc.s    V_7
    IL_00bb:  ldarg.1
    IL_00bc:  ldfld      float32 Game.TerrainUpdater/TerrainUpdateParameters::ContentsOnlyUpdateDistance
    IL_00c1:  ldarg.1
    IL_00c2:  ldfld      float32 Game.TerrainUpdater/TerrainUpdateParameters::ContentsOnlyUpdateDistance
    IL_00c7:  mul
    IL_00c8:  bge.un.s   IL_00d2

    IL_00ca:  ldloca.s   V_6
    IL_00cc:  ldc.i4.7
    IL_00cd:  call       instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainChunkState>::.ctor(!0)
    IL_00d2:  ldloca.s   V_6
    IL_00d4:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainChunkState>::get_HasValue()
    IL_00d9:  brfalse.s  IL_011a

    IL_00db:  ldloc.0
    IL_00dc:  ldfld      int32 Game.TerrainUpdater/'<>c__DisplayClass39_0'::totalCount
    IL_00e1:  ldc.i4.1
    IL_00e2:  add
    IL_00e3:  stloc.s    V_8
    IL_00e5:  ldloc.0
    IL_00e6:  ldloc.s    V_8
    IL_00e8:  stfld      int32 Game.TerrainUpdater/'<>c__DisplayClass39_0'::totalCount
    IL_00ed:  ldloca.s   V_6
    IL_00ef:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainChunkState>::get_Value()
    IL_00f4:  ldloc.s    V_5
    IL_00f6:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::ThreadState
    IL_00fb:  ble.s      IL_011a

    IL_00fd:  ldloc.0
    IL_00fe:  ldfld      int32 Game.TerrainUpdater/'<>c__DisplayClass39_0'::remainingCount
    IL_0103:  ldc.i4.1
    IL_0104:  add
    IL_0105:  stloc.s    V_8
    IL_0107:  ldloc.0
    IL_0108:  ldloc.s    V_8
    IL_010a:  stfld      int32 Game.TerrainUpdater/'<>c__DisplayClass39_0'::remainingCount
    IL_010f:  ldloc.s    V_7
    IL_0111:  ldloc.2
    IL_0112:  bge.un.s   IL_011a

    IL_0114:  ldloc.s    V_5
    IL_0116:  stloc.1
    IL_0117:  ldloc.s    V_7
    IL_0119:  stloc.2
    IL_011a:  ldloc.s    V_4
    IL_011c:  ldc.i4.1
    IL_011d:  add
    IL_011e:  stloc.s    V_4
    IL_0120:  ldloc.s    V_4
    IL_0122:  ldloc.3
    IL_0123:  ldlen
    IL_0124:  conv.i4
    IL_0125:  blt        IL_0030

    IL_012a:  ldloc.0
    IL_012b:  ldftn      instance void Game.TerrainUpdater/'<>c__DisplayClass39_0'::'<FindBestChunkToUpdate>b__0'()
    IL_0131:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0136:  ldc.i4.0
    IL_0137:  call       void [Engine]Engine.Dispatcher::Dispatch(class [System.Runtime]System.Action,
                                                                  bool)
    IL_013c:  ldloc.1
    IL_013d:  ret
  } // end of method TerrainUpdater::FindBestChunkToUpdate

  .method private hidebysig instance class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk> 
          DetermineSynchronousUpdateChunks(valuetype [Engine]Engine.Vector3 viewPosition,
                                           valuetype [Engine]Engine.Vector3 viewDirection) cil managed
  {
    // 代码大小       327 (0x147)
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
    IL_00ee:  br.s       IL_013e

    IL_00f0:  ldloc.3
    IL_00f1:  ldloc.s    V_4
    IL_00f3:  ldelem     [Engine]Engine.Vector3
    IL_00f8:  stloc.s    V_5
    IL_00fa:  ldarg.0
    IL_00fb:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_0100:  ldloc.s    V_5
    IL_0102:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0107:  conv.i4
    IL_0108:  ldloc.s    V_5
    IL_010a:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_010f:  conv.i4
    IL_0110:  callvirt   instance class Game.TerrainChunk Game.SubsystemTerrain::CellToChunk(int32,
                                                                                             int32)
    IL_0115:  stloc.s    V_6
    IL_0117:  ldloc.s    V_6
    IL_0119:  brfalse.s  IL_0138

    IL_011b:  ldloc.s    V_6
    IL_011d:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_0122:  ldc.i4.s   9
    IL_0124:  bge.s      IL_0138

    IL_0126:  ldloc.2
    IL_0127:  ldloc.s    V_6
    IL_0129:  callvirt   instance bool class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk>::Contains(!0)
    IL_012e:  brtrue.s   IL_0138

    IL_0130:  ldloc.2
    IL_0131:  ldloc.s    V_6
    IL_0133:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk>::Add(!0)
    IL_0138:  ldloc.s    V_4
    IL_013a:  ldc.i4.1
    IL_013b:  add
    IL_013c:  stloc.s    V_4
    IL_013e:  ldloc.s    V_4
    IL_0140:  ldloc.3
    IL_0141:  ldlen
    IL_0142:  conv.i4
    IL_0143:  blt.s      IL_00f0

    IL_0145:  ldloc.2
    IL_0146:  ret
  } // end of method TerrainUpdater::DetermineSynchronousUpdateChunks

  .method private hidebysig instance void 
          RepositionChunks(valuetype [Engine]Engine.Point2 terrainOrigin) cil managed
  {
    // 代码大小       720 (0x2d0)
    .maxstack  6
    .locals init (class Game.TerrainData V_0,
             valuetype [Engine]Engine.Point2 V_1,
             class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.TerrainChunk,valuetype [Engine]Engine.Point2> V_2,
             valuetype [Engine]Engine.Point2 V_3,
             int32 V_4,
             class Game.TerrainChunk V_5,
             int32 V_6,
             int32 V_7,
             valuetype [Engine]Engine.Point2 V_8,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.TerrainChunk,valuetype [Engine]Engine.Point2> V_9,
             class Game.TerrainChunk V_10,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.SubsystemBlockBehavior> V_11,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.SubsystemBlockBehavior> V_12,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<class Game.TerrainChunk,valuetype [Engine]Engine.Point2> V_13,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class Game.TerrainChunk,valuetype [Engine]Engine.Point2> V_14,
             class Game.TerrainChunk V_15)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  stloc.0
    IL_000c:  ldarg.1
    IL_000d:  ldloc.0
    IL_000e:  callvirt   instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
    IL_0013:  call       bool [Engine]Engine.Point2::op_Inequality(valuetype [Engine]Engine.Point2,
                                                                   valuetype [Engine]Engine.Point2)
    IL_0018:  brfalse    IL_02cf

    IL_001d:  ldloca.s   V_3
    IL_001f:  initobj    [Engine]Engine.Point2
    IL_0025:  ldloca.s   V_3
    IL_0027:  ldarg.1
    IL_0028:  ldfld      int32 [Engine]Engine.Point2::X
    IL_002d:  ldloc.0
    IL_002e:  callvirt   instance int32 Game.TerrainData::get_SizeX()
    IL_0033:  ldc.i4.1
    IL_0034:  sub
    IL_0035:  and
    IL_0036:  stfld      int32 [Engine]Engine.Point2::X
    IL_003b:  ldloca.s   V_3
    IL_003d:  ldarg.1
    IL_003e:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0043:  ldloc.0
    IL_0044:  callvirt   instance int32 Game.TerrainData::get_SizeZ()
    IL_0049:  ldc.i4.1
    IL_004a:  sub
    IL_004b:  and
    IL_004c:  stfld      int32 [Engine]Engine.Point2::Y
    IL_0051:  ldloc.3
    IL_0052:  stloc.1
    IL_0053:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.TerrainChunk,valuetype [Engine]Engine.Point2>::.ctor()
    IL_0058:  stloc.2
    IL_0059:  ldc.i4.0
    IL_005a:  stloc.s    V_4
    IL_005c:  br         IL_0102

    IL_0061:  ldarg.0
    IL_0062:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_0067:  callvirt   instance class Game.TerrainChunk[] Game.SubsystemTerrain::get_Chunks()
    IL_006c:  ldloc.s    V_4
    IL_006e:  ldelem.ref
    IL_006f:  stloc.s    V_5
    IL_0071:  ldloc.s    V_4
    IL_0073:  ldarg.0
    IL_0074:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_0079:  callvirt   instance int32 Game.SubsystemTerrain::get_ChunksCount()
    IL_007e:  rem
    IL_007f:  stloc.s    V_6
    IL_0081:  ldloc.s    V_4
    IL_0083:  ldarg.0
    IL_0084:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_0089:  callvirt   instance int32 Game.SubsystemTerrain::get_ChunksCount()
    IL_008e:  div
    IL_008f:  stloc.s    V_7
    IL_0091:  ldloca.s   V_3
    IL_0093:  initobj    [Engine]Engine.Point2
    IL_0099:  ldloca.s   V_3
    IL_009b:  ldloc.s    V_6
    IL_009d:  ldc.i4.s   16
    IL_009f:  mul
    IL_00a0:  ldloc.1
    IL_00a1:  ldfld      int32 [Engine]Engine.Point2::X
    IL_00a6:  sub
    IL_00a7:  ldloc.0
    IL_00a8:  callvirt   instance int32 Game.TerrainData::get_SizeX()
    IL_00ad:  ldc.i4.1
    IL_00ae:  sub
    IL_00af:  and
    IL_00b0:  ldarg.1
    IL_00b1:  ldfld      int32 [Engine]Engine.Point2::X
    IL_00b6:  add
    IL_00b7:  stfld      int32 [Engine]Engine.Point2::X
    IL_00bc:  ldloca.s   V_3
    IL_00be:  ldloc.s    V_7
    IL_00c0:  ldc.i4.s   16
    IL_00c2:  mul
    IL_00c3:  ldloc.1
    IL_00c4:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_00c9:  sub
    IL_00ca:  ldloc.0
    IL_00cb:  callvirt   instance int32 Game.TerrainData::get_SizeZ()
    IL_00d0:  ldc.i4.1
    IL_00d1:  sub
    IL_00d2:  and
    IL_00d3:  ldarg.1
    IL_00d4:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_00d9:  add
    IL_00da:  stfld      int32 [Engine]Engine.Point2::Y
    IL_00df:  ldloc.3
    IL_00e0:  stloc.s    V_8
    IL_00e2:  ldloc.s    V_8
    IL_00e4:  ldloc.s    V_5
    IL_00e6:  ldfld      valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_00eb:  call       bool [Engine]Engine.Point2::op_Inequality(valuetype [Engine]Engine.Point2,
                                                                   valuetype [Engine]Engine.Point2)
    IL_00f0:  brfalse.s  IL_00fc

    IL_00f2:  ldloc.2
    IL_00f3:  ldloc.s    V_5
    IL_00f5:  ldloc.s    V_8
    IL_00f7:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.TerrainChunk,valuetype [Engine]Engine.Point2>::Add(!0,
                                                                                                                                                                       !1)
    IL_00fc:  ldloc.s    V_4
    IL_00fe:  ldc.i4.1
    IL_00ff:  add
    IL_0100:  stloc.s    V_4
    IL_0102:  ldloc.s    V_4
    IL_0104:  ldarg.0
    IL_0105:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_010a:  callvirt   instance class Game.TerrainChunk[] Game.SubsystemTerrain::get_Chunks()
    IL_010f:  ldlen
    IL_0110:  conv.i4
    IL_0111:  blt        IL_0061

    IL_0116:  ldloc.2
    IL_0117:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.TerrainChunk,valuetype [Engine]Engine.Point2>::get_Keys()
    IL_011c:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class Game.TerrainChunk,valuetype [Engine]Engine.Point2>::GetEnumerator()
    IL_0121:  stloc.s    V_9
    .try
    {
      IL_0123:  br.s       IL_017f

      IL_0125:  ldloca.s   V_9
      IL_0127:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.TerrainChunk,valuetype [Engine]Engine.Point2>::get_Current()
      IL_012c:  stloc.s    V_10
      IL_012e:  ldarg.0
      IL_012f:  ldfld      class Game.SubsystemBlockBehaviors Game.TerrainUpdater::m_subsystemBlockBehaviors
      IL_0134:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.SubsystemBlockBehavior> Game.SubsystemBlockBehaviors::get_BlockBehaviors()
      IL_0139:  stloc.s    V_12
      IL_013b:  ldloca.s   V_12
      IL_013d:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.SubsystemBlockBehavior>::GetEnumerator()
      IL_0142:  stloc.s    V_11
      .try
      {
        IL_0144:  br.s       IL_0154

        IL_0146:  ldloca.s   V_11
        IL_0148:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.SubsystemBlockBehavior>::get_Current()
        IL_014d:  ldloc.s    V_10
        IL_014f:  callvirt   instance void Game.SubsystemBlockBehavior::OnChunkDiscarding(class Game.TerrainChunk)
        IL_0154:  ldloca.s   V_11
        IL_0156:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.SubsystemBlockBehavior>::MoveNext()
        IL_015b:  brtrue.s   IL_0146

        IL_015d:  leave.s    IL_016d

      }  // end .try
      finally
      {
        IL_015f:  ldloca.s   V_11
        IL_0161:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.SubsystemBlockBehavior>
        IL_0167:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_016c:  endfinally
      }  // end handler
      IL_016d:  ldarg.0
      IL_016e:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
      IL_0173:  callvirt   instance class Game.TerrainSerializer129 Game.SubsystemTerrain::get_TerrainSerializer()
      IL_0178:  ldloc.s    V_10
      IL_017a:  callvirt   instance void Game.TerrainSerializer129::SaveChunk(class Game.TerrainChunk)
      IL_017f:  ldloca.s   V_9
      IL_0181:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.TerrainChunk,valuetype [Engine]Engine.Point2>::MoveNext()
      IL_0186:  brtrue.s   IL_0125

      IL_0188:  leave.s    IL_0198

    }  // end .try
    finally
    {
      IL_018a:  ldloca.s   V_9
      IL_018c:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.TerrainChunk,valuetype [Engine]Engine.Point2>
      IL_0192:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0197:  endfinally
    }  // end handler
    IL_0198:  ldarg.0
    IL_0199:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_019e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_01a3:  ldarg.1
    IL_01a4:  callvirt   instance void Game.TerrainData::set_Origin(valuetype [Engine]Engine.Point2)
    IL_01a9:  ldloc.2
    IL_01aa:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.TerrainChunk,valuetype [Engine]Engine.Point2>::GetEnumerator()
    IL_01af:  stloc.s    V_13
    .try
    {
      IL_01b1:  br         IL_02b3

      IL_01b6:  ldloca.s   V_13
      IL_01b8:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<class Game.TerrainChunk,valuetype [Engine]Engine.Point2>::get_Current()
      IL_01bd:  stloc.s    V_14
      IL_01bf:  ldloca.s   V_14
      IL_01c1:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class Game.TerrainChunk,valuetype [Engine]Engine.Point2>::get_Key()
      IL_01c6:  stloc.s    V_15
      IL_01c8:  ldloc.s    V_15
      IL_01ca:  ldloca.s   V_14
      IL_01cc:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class Game.TerrainChunk,valuetype [Engine]Engine.Point2>::get_Value()
      IL_01d1:  stfld      valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_01d6:  ldloc.s    V_15
      IL_01d8:  ldloc.s    V_15
      IL_01da:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_01df:  ldfld      int32 [Engine]Engine.Point2::X
      IL_01e4:  conv.r4
      IL_01e5:  ldc.r4     0.0
      IL_01ea:  ldloc.s    V_15
      IL_01ec:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_01f1:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_01f6:  conv.r4
      IL_01f7:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_01fc:  ldloc.s    V_15
      IL_01fe:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_0203:  ldfld      int32 [Engine]Engine.Point2::X
      IL_0208:  ldc.i4.s   16
      IL_020a:  add
      IL_020b:  conv.r4
      IL_020c:  ldc.r4     128.
      IL_0211:  ldloc.s    V_15
      IL_0213:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_0218:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_021d:  ldc.i4.s   16
      IL_021f:  add
      IL_0220:  conv.r4
      IL_0221:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_0226:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                           valuetype [Engine]Engine.Vector3)
      IL_022b:  stfld      valuetype [Engine]Engine.BoundingBox Game.TerrainChunk::BoundingBox
      IL_0230:  ldloc.s    V_15
      IL_0232:  ldloc.s    V_15
      IL_0234:  ldflda     valuetype [Engine]Engine.BoundingBox Game.TerrainChunk::BoundingBox
      IL_0239:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
      IL_023e:  ldloc.s    V_15
      IL_0240:  ldflda     valuetype [Engine]Engine.BoundingBox Game.TerrainChunk::BoundingBox
      IL_0245:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
      IL_024a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_024f:  ldc.r4     2.
      IL_0254:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Division(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_0259:  stfld      valuetype [Engine]Engine.Vector3 Game.TerrainChunk::Center
      IL_025e:  ldloc.s    V_15
      IL_0260:  ldc.i4.0
      IL_0261:  stfld      int32 Game.TerrainChunk::ModificationCounter
      IL_0266:  ldloc.s    V_15
      IL_0268:  ldc.i4.0
      IL_0269:  stfld      bool Game.TerrainChunk::IsInVisibilityRange
      IL_026e:  ldloc.s    V_15
      IL_0270:  ldc.i4.0
      IL_0271:  stfld      bool Game.TerrainChunk::IsVisible
      IL_0276:  ldloc.s    V_15
      IL_0278:  ldc.i4.0
      IL_0279:  stfld      bool Game.TerrainChunk::AreBehaviorsNotified
      IL_027e:  ldloc.s    V_15
      IL_0280:  ldc.i4.0
      IL_0281:  stfld      bool Game.TerrainChunk::IsLoaded
      IL_0286:  ldarg.0
      IL_0287:  ldloc.s    V_15
      IL_0289:  ldc.i4.0
      IL_028a:  ldc.i4.0
      IL_028b:  ldc.i4.0
      IL_028c:  call       instance void Game.TerrainUpdater::DowngradeChunkNeighborhoodState(class Game.TerrainChunk,
                                                                                              int32,
                                                                                              valuetype Game.TerrainChunkState,
                                                                                              bool)
      IL_0291:  ldarg.0
      IL_0292:  ldloc.s    V_15
      IL_0294:  ldc.i4.1
      IL_0295:  ldc.i4.5
      IL_0296:  ldc.i4.0
      IL_0297:  call       instance void Game.TerrainUpdater::DowngradeChunkNeighborhoodState(class Game.TerrainChunk,
                                                                                              int32,
                                                                                              valuetype Game.TerrainChunkState,
                                                                                              bool)
      IL_029c:  ldarg.0
      IL_029d:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
      IL_02a2:  callvirt   instance class Game.TerrainRenderer Game.SubsystemTerrain::get_TerrainRenderer()
      IL_02a7:  ldloc.s    V_15
      IL_02a9:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
      IL_02ae:  callvirt   instance void Game.TerrainRenderer::ReturnTerrainChunkGeometryVertexIndexBuffers(class Game.TerrainChunkGeometry)
      IL_02b3:  ldloca.s   V_13
      IL_02b5:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<class Game.TerrainChunk,valuetype [Engine]Engine.Point2>::MoveNext()
      IL_02ba:  brtrue     IL_01b6

      IL_02bf:  leave.s    IL_02cf

    }  // end .try
    finally
    {
      IL_02c1:  ldloca.s   V_13
      IL_02c3:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<class Game.TerrainChunk,valuetype [Engine]Engine.Point2>
      IL_02c9:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_02ce:  endfinally
    }  // end handler
    IL_02cf:  ret
  } // end of method TerrainUpdater::RepositionChunks

  .method private hidebysig instance void 
          UpdateChunkSingleStep(class Game.TerrainChunk chunk,
                                int32 skylightValue) cil managed
  {
    // 代码大小       1524 (0x5f4)
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
                          IL_010f,
                          IL_0182,
                          IL_01f5,
                          IL_0268,
                          IL_02be,
                          IL_0452,
                          IL_0574)
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
    IL_00b0:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_00b5:  ldfld      int32 [Engine]Engine.Point2::X
    IL_00ba:  ldc.i4.s   16
    IL_00bc:  div
    IL_00bd:  ldarg.1
    IL_00be:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_00c3:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_00c8:  ldc.i4.s   16
    IL_00ca:  div
    IL_00cb:  callvirt   instance void Game.ITerrainContentsGenerator::GenerateChunkContentsPass1(int32,
                                                                                                  int32)
    IL_00d0:  ldarg.1
    IL_00d1:  ldc.i4.2
    IL_00d2:  stfld      valuetype Game.TerrainChunkState Game.TerrainChunk::ThreadState
    IL_00d7:  ldarg.1
    IL_00d8:  ldc.i4.1
    IL_00d9:  stfld      bool Game.TerrainChunk::WasUpgraded
    IL_00de:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_00e3:  stloc.s    V_4
    IL_00e5:  ldarg.0
    IL_00e6:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_00eb:  dup
    IL_00ec:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::ContentsCount1
    IL_00f1:  ldc.i4.1
    IL_00f2:  add
    IL_00f3:  stfld      int32 Game.TerrainUpdater/UpdateStatistics::ContentsCount1
    IL_00f8:  ldarg.0
    IL_00f9:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_00fe:  dup
    IL_00ff:  ldfld      float64 Game.TerrainUpdater/UpdateStatistics::ContentsTime1
    IL_0104:  ldloc.s    V_4
    IL_0106:  ldloc.3
    IL_0107:  sub
    IL_0108:  add
    IL_0109:  stfld      float64 Game.TerrainUpdater/UpdateStatistics::ContentsTime1
    IL_010e:  ret

    IL_010f:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0114:  stloc.s    V_5
    IL_0116:  ldarg.0
    IL_0117:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_011c:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_0121:  ldarg.1
    IL_0122:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0127:  ldfld      int32 [Engine]Engine.Point2::X
    IL_012c:  ldc.i4.s   16
    IL_012e:  div
    IL_012f:  ldarg.1
    IL_0130:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0135:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_013a:  ldc.i4.s   16
    IL_013c:  div
    IL_013d:  callvirt   instance void Game.ITerrainContentsGenerator::GenerateChunkContentsPass2(int32,
                                                                                                  int32)
    IL_0142:  ldarg.1
    IL_0143:  ldc.i4.3
    IL_0144:  stfld      valuetype Game.TerrainChunkState Game.TerrainChunk::ThreadState
    IL_0149:  ldarg.1
    IL_014a:  ldc.i4.1
    IL_014b:  stfld      bool Game.TerrainChunk::WasUpgraded
    IL_0150:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0155:  stloc.s    V_6
    IL_0157:  ldarg.0
    IL_0158:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_015d:  dup
    IL_015e:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::ContentsCount2
    IL_0163:  ldc.i4.1
    IL_0164:  add
    IL_0165:  stfld      int32 Game.TerrainUpdater/UpdateStatistics::ContentsCount2
    IL_016a:  ldarg.0
    IL_016b:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_0170:  dup
    IL_0171:  ldfld      float64 Game.TerrainUpdater/UpdateStatistics::ContentsTime2
    IL_0176:  ldloc.s    V_6
    IL_0178:  ldloc.s    V_5
    IL_017a:  sub
    IL_017b:  add
    IL_017c:  stfld      float64 Game.TerrainUpdater/UpdateStatistics::ContentsTime2
    IL_0181:  ret

    IL_0182:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0187:  stloc.s    V_7
    IL_0189:  ldarg.0
    IL_018a:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_018f:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_0194:  ldarg.1
    IL_0195:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_019a:  ldfld      int32 [Engine]Engine.Point2::X
    IL_019f:  ldc.i4.s   16
    IL_01a1:  div
    IL_01a2:  ldarg.1
    IL_01a3:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_01a8:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_01ad:  ldc.i4.s   16
    IL_01af:  div
    IL_01b0:  callvirt   instance void Game.ITerrainContentsGenerator::GenerateChunkContentsPass3(int32,
                                                                                                  int32)
    IL_01b5:  ldarg.1
    IL_01b6:  ldc.i4.4
    IL_01b7:  stfld      valuetype Game.TerrainChunkState Game.TerrainChunk::ThreadState
    IL_01bc:  ldarg.1
    IL_01bd:  ldc.i4.1
    IL_01be:  stfld      bool Game.TerrainChunk::WasUpgraded
    IL_01c3:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_01c8:  stloc.s    V_8
    IL_01ca:  ldarg.0
    IL_01cb:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_01d0:  dup
    IL_01d1:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::ContentsCount3
    IL_01d6:  ldc.i4.1
    IL_01d7:  add
    IL_01d8:  stfld      int32 Game.TerrainUpdater/UpdateStatistics::ContentsCount3
    IL_01dd:  ldarg.0
    IL_01de:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_01e3:  dup
    IL_01e4:  ldfld      float64 Game.TerrainUpdater/UpdateStatistics::ContentsTime3
    IL_01e9:  ldloc.s    V_8
    IL_01eb:  ldloc.s    V_7
    IL_01ed:  sub
    IL_01ee:  add
    IL_01ef:  stfld      float64 Game.TerrainUpdater/UpdateStatistics::ContentsTime3
    IL_01f4:  ret

    IL_01f5:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_01fa:  stloc.s    V_9
    IL_01fc:  ldarg.0
    IL_01fd:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_0202:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_0207:  ldarg.1
    IL_0208:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_020d:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0212:  ldc.i4.s   16
    IL_0214:  div
    IL_0215:  ldarg.1
    IL_0216:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_021b:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0220:  ldc.i4.s   16
    IL_0222:  div
    IL_0223:  callvirt   instance void Game.ITerrainContentsGenerator::GenerateChunkContentsPass4(int32,
                                                                                                  int32)
    IL_0228:  ldarg.1
    IL_0229:  ldc.i4.5
    IL_022a:  stfld      valuetype Game.TerrainChunkState Game.TerrainChunk::ThreadState
    IL_022f:  ldarg.1
    IL_0230:  ldc.i4.1
    IL_0231:  stfld      bool Game.TerrainChunk::WasUpgraded
    IL_0236:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_023b:  stloc.s    V_10
    IL_023d:  ldarg.0
    IL_023e:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_0243:  dup
    IL_0244:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::ContentsCount4
    IL_0249:  ldc.i4.1
    IL_024a:  add
    IL_024b:  stfld      int32 Game.TerrainUpdater/UpdateStatistics::ContentsCount4
    IL_0250:  ldarg.0
    IL_0251:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_0256:  dup
    IL_0257:  ldfld      float64 Game.TerrainUpdater/UpdateStatistics::ContentsTime4
    IL_025c:  ldloc.s    V_10
    IL_025e:  ldloc.s    V_9
    IL_0260:  sub
    IL_0261:  add
    IL_0262:  stfld      float64 Game.TerrainUpdater/UpdateStatistics::ContentsTime4
    IL_0267:  ret

    IL_0268:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_026d:  stloc.s    V_11
    IL_026f:  ldarg.0
    IL_0270:  ldarg.1
    IL_0271:  ldarg.2
    IL_0272:  call       instance void Game.TerrainUpdater::GenerateChunkLightAndHeight(class Game.TerrainChunk,
                                                                                        int32)
    IL_0277:  ldarg.1
    IL_0278:  ldc.i4.6
    IL_0279:  stfld      valuetype Game.TerrainChunkState Game.TerrainChunk::ThreadState
    IL_027e:  ldarg.1
    IL_027f:  ldc.i4.1
    IL_0280:  stfld      bool Game.TerrainChunk::WasUpgraded
    IL_0285:  ldarg.1
    IL_0286:  ldc.i4.0
    IL_0287:  stfld      int32 Game.TerrainChunk::LightPropagationMask
    IL_028c:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0291:  stloc.s    V_12
    IL_0293:  ldarg.0
    IL_0294:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_0299:  dup
    IL_029a:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::LightCount
    IL_029f:  ldc.i4.1
    IL_02a0:  add
    IL_02a1:  stfld      int32 Game.TerrainUpdater/UpdateStatistics::LightCount
    IL_02a6:  ldarg.0
    IL_02a7:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_02ac:  dup
    IL_02ad:  ldfld      float64 Game.TerrainUpdater/UpdateStatistics::LightTime
    IL_02b2:  ldloc.s    V_12
    IL_02b4:  ldloc.s    V_11
    IL_02b6:  sub
    IL_02b7:  add
    IL_02b8:  stfld      float64 Game.TerrainUpdater/UpdateStatistics::LightTime
    IL_02bd:  ret

    IL_02be:  ldc.i4.s   -2
    IL_02c0:  stloc.s    V_17
    IL_02c2:  br.s       IL_0322

    IL_02c4:  ldc.i4.s   -2
    IL_02c6:  stloc.s    V_18
    IL_02c8:  br.s       IL_0317

    IL_02ca:  ldarg.0
    IL_02cb:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_02d0:  ldarg.1
    IL_02d1:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_02d6:  ldfld      int32 [Engine]Engine.Point2::X
    IL_02db:  ldloc.s    V_17
    IL_02dd:  ldc.i4.s   16
    IL_02df:  mul
    IL_02e0:  add
    IL_02e1:  ldarg.1
    IL_02e2:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_02e7:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_02ec:  ldloc.s    V_18
    IL_02ee:  ldc.i4.s   16
    IL_02f0:  mul
    IL_02f1:  add
    IL_02f2:  callvirt   instance class Game.TerrainChunk Game.SubsystemTerrain::CellToChunk(int32,
                                                                                             int32)
    IL_02f7:  stloc.s    V_19
    IL_02f9:  ldloc.s    V_19
    IL_02fb:  brfalse.s  IL_0311

    IL_02fd:  ldloc.s    V_19
    IL_02ff:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::ThreadState
    IL_0304:  ldc.i4.6
    IL_0305:  bge.s      IL_0311

    IL_0307:  ldarg.0
    IL_0308:  ldloc.s    V_19
    IL_030a:  ldarg.2
    IL_030b:  call       instance void Game.TerrainUpdater::UpdateChunkSingleStep(class Game.TerrainChunk,
                                                                                  int32)
    IL_0310:  ret

    IL_0311:  ldloc.s    V_18
    IL_0313:  ldc.i4.1
    IL_0314:  add
    IL_0315:  stloc.s    V_18
    IL_0317:  ldloc.s    V_18
    IL_0319:  ldc.i4.2
    IL_031a:  ble.s      IL_02ca

    IL_031c:  ldloc.s    V_17
    IL_031e:  ldc.i4.1
    IL_031f:  add
    IL_0320:  stloc.s    V_17
    IL_0322:  ldloc.s    V_17
    IL_0324:  ldc.i4.2
    IL_0325:  ble.s      IL_02c4

    IL_0327:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_032c:  stloc.s    V_13
    IL_032e:  ldarg.0
    IL_032f:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainUpdater/LightSource> Game.TerrainUpdater::m_lightSources
    IL_0334:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainUpdater/LightSource>::Clear()
    IL_0339:  ldc.i4.m1
    IL_033a:  stloc.s    V_20
    IL_033c:  br.s       IL_03b2

    IL_033e:  ldc.i4.m1
    IL_033f:  stloc.s    V_21
    IL_0341:  br.s       IL_03a7

    IL_0343:  ldloc.s    V_20
    IL_0345:  ldloc.s    V_21
    IL_0347:  call       int32 Game.TerrainUpdater::CalculateLightPropagationBitIndex(int32,
                                                                                      int32)
    IL_034c:  stloc.s    V_22
    IL_034e:  ldarg.1
    IL_034f:  ldfld      int32 Game.TerrainChunk::LightPropagationMask
    IL_0354:  ldloc.s    V_22
    IL_0356:  ldc.i4.s   31
    IL_0358:  and
    IL_0359:  shr
    IL_035a:  ldc.i4.1
    IL_035b:  and
    IL_035c:  brtrue.s   IL_03a1

    IL_035e:  ldarg.0
    IL_035f:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_0364:  ldarg.1
    IL_0365:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_036a:  ldfld      int32 [Engine]Engine.Point2::X
    IL_036f:  ldloc.s    V_20
    IL_0371:  ldc.i4.s   16
    IL_0373:  mul
    IL_0374:  add
    IL_0375:  ldarg.1
    IL_0376:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_037b:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0380:  ldloc.s    V_21
    IL_0382:  ldc.i4.s   16
    IL_0384:  mul
    IL_0385:  add
    IL_0386:  callvirt   instance class Game.TerrainChunk Game.SubsystemTerrain::CellToChunk(int32,
                                                                                             int32)
    IL_038b:  stloc.s    V_23
    IL_038d:  ldloc.s    V_23
    IL_038f:  brfalse.s  IL_03a1

    IL_0391:  ldarg.0
    IL_0392:  ldloc.s    V_23
    IL_0394:  call       instance void Game.TerrainUpdater::GenerateChunkLightSources(class Game.TerrainChunk)
    IL_0399:  ldarg.0
    IL_039a:  ldloc.s    V_23
    IL_039c:  call       instance void Game.TerrainUpdater::UpdateNeighborsLightPropagationBitmasks(class Game.TerrainChunk)
    IL_03a1:  ldloc.s    V_21
    IL_03a3:  ldc.i4.1
    IL_03a4:  add
    IL_03a5:  stloc.s    V_21
    IL_03a7:  ldloc.s    V_21
    IL_03a9:  ldc.i4.1
    IL_03aa:  ble.s      IL_0343

    IL_03ac:  ldloc.s    V_20
    IL_03ae:  ldc.i4.1
    IL_03af:  add
    IL_03b0:  stloc.s    V_20
    IL_03b2:  ldloc.s    V_20
    IL_03b4:  ldc.i4.1
    IL_03b5:  ble.s      IL_033e

    IL_03b7:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_03bc:  stloc.s    V_14
    IL_03be:  ldarg.0
    IL_03bf:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_03c4:  dup
    IL_03c5:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::LightSourcesCount
    IL_03ca:  ldc.i4.1
    IL_03cb:  add
    IL_03cc:  stfld      int32 Game.TerrainUpdater/UpdateStatistics::LightSourcesCount
    IL_03d1:  ldarg.0
    IL_03d2:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_03d7:  dup
    IL_03d8:  ldfld      float64 Game.TerrainUpdater/UpdateStatistics::LightSourcesTime
    IL_03dd:  ldloc.s    V_14
    IL_03df:  ldloc.s    V_13
    IL_03e1:  sub
    IL_03e2:  add
    IL_03e3:  stfld      float64 Game.TerrainUpdater/UpdateStatistics::LightSourcesTime
    IL_03e8:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_03ed:  stloc.s    V_15
    IL_03ef:  ldarg.0
    IL_03f0:  call       instance void Game.TerrainUpdater::PropagateLight()
    IL_03f5:  ldarg.1
    IL_03f6:  ldc.i4.7
    IL_03f7:  stfld      valuetype Game.TerrainChunkState Game.TerrainChunk::ThreadState
    IL_03fc:  ldarg.1
    IL_03fd:  ldc.i4.1
    IL_03fe:  stfld      bool Game.TerrainChunk::WasUpgraded
    IL_0403:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0408:  stloc.s    V_16
    IL_040a:  ldarg.0
    IL_040b:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_0410:  dup
    IL_0411:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::LightPropagateCount
    IL_0416:  ldc.i4.1
    IL_0417:  add
    IL_0418:  stfld      int32 Game.TerrainUpdater/UpdateStatistics::LightPropagateCount
    IL_041d:  ldarg.0
    IL_041e:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_0423:  dup
    IL_0424:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::LightSourceInstancesCount
    IL_0429:  ldarg.0
    IL_042a:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainUpdater/LightSource> Game.TerrainUpdater::m_lightSources
    IL_042f:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainUpdater/LightSource>::get_Count()
    IL_0434:  add
    IL_0435:  stfld      int32 Game.TerrainUpdater/UpdateStatistics::LightSourceInstancesCount
    IL_043a:  ldarg.0
    IL_043b:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_0440:  dup
    IL_0441:  ldfld      float64 Game.TerrainUpdater/UpdateStatistics::LightPropagateTime
    IL_0446:  ldloc.s    V_16
    IL_0448:  ldloc.s    V_15
    IL_044a:  sub
    IL_044b:  add
    IL_044c:  stfld      float64 Game.TerrainUpdater/UpdateStatistics::LightPropagateTime
    IL_0451:  ret

    IL_0452:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0457:  stloc.s    V_24
    IL_0459:  ldarg.1
    IL_045a:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_045f:  stloc.s    V_26
    IL_0461:  ldc.i4.0
    IL_0462:  stloc.s    V_27
    .try
    {
      IL_0464:  ldloc.s    V_26
      IL_0466:  ldloca.s   V_27
      IL_0468:  call       void [System.Threading]System.Threading.Monitor::Enter(object,
                                                                                  bool&)
      IL_046d:  ldarg.1
      IL_046e:  ldarg.0
      IL_046f:  ldarg.1
      IL_0470:  call       instance int64 Game.TerrainUpdater::CalculateChunkGeometryHash(class Game.TerrainChunk)
      IL_0475:  stfld      int64 Game.TerrainChunk::ContentsHash
      IL_047a:  ldarg.1
      IL_047b:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
      IL_0480:  ldfld      int64 Game.TerrainChunkGeometry::GeometryHash
      IL_0485:  brfalse.s  IL_04c1

      IL_0487:  ldarg.1
      IL_0488:  ldfld      int64 Game.TerrainChunk::ContentsHash
      IL_048d:  ldarg.1
      IL_048e:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
      IL_0493:  ldfld      int64 Game.TerrainChunkGeometry::GeometryHash
      IL_0498:  bne.un.s   IL_04c1

      IL_049a:  ldarg.1
      IL_049b:  ldc.i4.s   9
      IL_049d:  stfld      valuetype Game.TerrainChunkState Game.TerrainChunk::ThreadState
      IL_04a2:  ldarg.1
      IL_04a3:  ldc.i4.1
      IL_04a4:  stfld      bool Game.TerrainChunk::WasUpgraded
      IL_04a9:  ldarg.0
      IL_04aa:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
      IL_04af:  dup
      IL_04b0:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::SkippedVertices
      IL_04b5:  ldc.i4.1
      IL_04b6:  add
      IL_04b7:  stfld      int32 Game.TerrainUpdater/UpdateStatistics::SkippedVertices
      IL_04bc:  leave      IL_05f3

      IL_04c1:  ldarg.1
      IL_04c2:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
      IL_04c7:  ldfld      class Game.TerrainGeometrySubset[] Game.TerrainChunkGeometry::AllSubsets
      IL_04cc:  stloc.s    V_28
      IL_04ce:  ldc.i4.0
      IL_04cf:  stloc.s    V_29
      IL_04d1:  br.s       IL_04f3

      IL_04d3:  ldloc.s    V_28
      IL_04d5:  ldloc.s    V_29
      IL_04d7:  ldelem.ref
      IL_04d8:  dup
      IL_04d9:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
      IL_04de:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::Clear()
      IL_04e3:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
      IL_04e8:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Clear()
      IL_04ed:  ldloc.s    V_29
      IL_04ef:  ldc.i4.1
      IL_04f0:  add
      IL_04f1:  stloc.s    V_29
      IL_04f3:  ldloc.s    V_29
      IL_04f5:  ldloc.s    V_28
      IL_04f7:  ldlen
      IL_04f8:  conv.i4
      IL_04f9:  blt.s      IL_04d3

      IL_04fb:  ldarg.1
      IL_04fc:  ldc.r4     128.
      IL_0501:  stfld      float32 Game.TerrainChunk::GeometryMinY
      IL_0506:  ldarg.1
      IL_0507:  ldc.r4     0.0
      IL_050c:  stfld      float32 Game.TerrainChunk::GeometryMaxY
      IL_0511:  ldarg.0
      IL_0512:  ldarg.1
      IL_0513:  ldc.i4.0
      IL_0514:  ldc.i4.s   16
      IL_0516:  ldc.i4.0
      IL_0517:  ldc.i4.8
      IL_0518:  call       instance void Game.TerrainUpdater::GenerateChunkVertices(class Game.TerrainChunk,
                                                                                    int32,
                                                                                    int32,
                                                                                    int32,
                                                                                    int32)
      IL_051d:  ldarg.1
      IL_051e:  ldc.i4.0
      IL_051f:  volatile.
      IL_0521:  stfld      bool modreq([System.Runtime]System.Runtime.CompilerServices.IsVolatile) Game.TerrainChunk::NewGeometryData
      IL_0526:  leave.s    IL_0534

    }  // end .try
    finally
    {
      IL_0528:  ldloc.s    V_27
      IL_052a:  brfalse.s  IL_0533

      IL_052c:  ldloc.s    V_26
      IL_052e:  call       void [System.Threading]System.Threading.Monitor::Exit(object)
      IL_0533:  endfinally
    }  // end handler
    IL_0534:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0539:  stloc.s    V_25
    IL_053b:  ldarg.1
    IL_053c:  ldc.i4.8
    IL_053d:  stfld      valuetype Game.TerrainChunkState Game.TerrainChunk::ThreadState
    IL_0542:  ldarg.1
    IL_0543:  ldc.i4.1
    IL_0544:  stfld      bool Game.TerrainChunk::WasUpgraded
    IL_0549:  ldarg.0
    IL_054a:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_054f:  dup
    IL_0550:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::VerticesCount1
    IL_0555:  ldc.i4.1
    IL_0556:  add
    IL_0557:  stfld      int32 Game.TerrainUpdater/UpdateStatistics::VerticesCount1
    IL_055c:  ldarg.0
    IL_055d:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_0562:  dup
    IL_0563:  ldfld      float64 Game.TerrainUpdater/UpdateStatistics::VerticesTime1
    IL_0568:  ldloc.s    V_25
    IL_056a:  ldloc.s    V_24
    IL_056c:  sub
    IL_056d:  add
    IL_056e:  stfld      float64 Game.TerrainUpdater/UpdateStatistics::VerticesTime1
    IL_0573:  ret

    IL_0574:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0579:  stloc.s    V_30
    IL_057b:  ldarg.1
    IL_057c:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_0581:  stloc.s    V_26
    IL_0583:  ldc.i4.0
    IL_0584:  stloc.s    V_27
    .try
    {
      IL_0586:  ldloc.s    V_26
      IL_0588:  ldloca.s   V_27
      IL_058a:  call       void [System.Threading]System.Threading.Monitor::Enter(object,
                                                                                  bool&)
      IL_058f:  ldarg.0
      IL_0590:  ldarg.1
      IL_0591:  ldc.i4.0
      IL_0592:  ldc.i4.s   16
      IL_0594:  ldc.i4.8
      IL_0595:  ldc.i4.8
      IL_0596:  call       instance void Game.TerrainUpdater::GenerateChunkVertices(class Game.TerrainChunk,
                                                                                    int32,
                                                                                    int32,
                                                                                    int32,
                                                                                    int32)
      IL_059b:  ldarg.1
      IL_059c:  ldc.i4.1
      IL_059d:  volatile.
      IL_059f:  stfld      bool modreq([System.Runtime]System.Runtime.CompilerServices.IsVolatile) Game.TerrainChunk::NewGeometryData
      IL_05a4:  leave.s    IL_05b2

    }  // end .try
    finally
    {
      IL_05a6:  ldloc.s    V_27
      IL_05a8:  brfalse.s  IL_05b1

      IL_05aa:  ldloc.s    V_26
      IL_05ac:  call       void [System.Threading]System.Threading.Monitor::Exit(object)
      IL_05b1:  endfinally
    }  // end handler
    IL_05b2:  ldarg.1
    IL_05b3:  ldc.i4.s   9
    IL_05b5:  stfld      valuetype Game.TerrainChunkState Game.TerrainChunk::ThreadState
    IL_05ba:  ldarg.1
    IL_05bb:  ldc.i4.1
    IL_05bc:  stfld      bool Game.TerrainChunk::WasUpgraded
    IL_05c1:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_05c6:  stloc.s    V_31
    IL_05c8:  ldarg.0
    IL_05c9:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_05ce:  dup
    IL_05cf:  ldfld      int32 Game.TerrainUpdater/UpdateStatistics::VerticesCount2
    IL_05d4:  ldc.i4.1
    IL_05d5:  add
    IL_05d6:  stfld      int32 Game.TerrainUpdater/UpdateStatistics::VerticesCount2
    IL_05db:  ldarg.0
    IL_05dc:  ldfld      class Game.TerrainUpdater/UpdateStatistics Game.TerrainUpdater::m_statistics
    IL_05e1:  dup
    IL_05e2:  ldfld      float64 Game.TerrainUpdater/UpdateStatistics::VerticesTime2
    IL_05e7:  ldloc.s    V_31
    IL_05e9:  ldloc.s    V_30
    IL_05eb:  sub
    IL_05ec:  add
    IL_05ed:  stfld      float64 Game.TerrainUpdater/UpdateStatistics::VerticesTime2
    IL_05f2:  ret

    IL_05f3:  ret
  } // end of method TerrainUpdater::UpdateChunkSingleStep

  .method private hidebysig instance void 
          GenerateChunkLightAndHeight(class Game.TerrainChunk chunk,
                                      int32 skylightValue) cil managed
  {
    // 代码大小       298 (0x12a)
    .maxstack  4
    .locals init (class Game.Block[] V_0,
             class Game.TerrainData V_1,
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
             int32 V_13,
             int32 V_14,
             int32 V_15,
             class Game.Block V_16)
    IL_0000:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_000c:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0011:  stloc.1
    IL_0012:  ldarg.1
    IL_0013:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0018:  ldfld      int32 [Engine]Engine.Point2::X
    IL_001d:  ldc.i4.0
    IL_001e:  stloc.2
    IL_001f:  ldarg.1
    IL_0020:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0025:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_002a:  stloc.3
    IL_002b:  dup
    IL_002c:  ldc.i4.s   16
    IL_002e:  add
    IL_002f:  stloc.s    V_4
    IL_0031:  ldc.i4.s   127
    IL_0033:  stloc.s    V_5
    IL_0035:  ldloc.3
    IL_0036:  ldc.i4.s   16
    IL_0038:  add
    IL_0039:  stloc.s    V_6
    IL_003b:  stloc.s    V_7
    IL_003d:  br         IL_0120

    IL_0042:  ldloc.3
    IL_0043:  stloc.s    V_8
    IL_0045:  br         IL_0111

    IL_004a:  ldarg.2
    IL_004b:  stloc.s    V_9
    IL_004d:  ldloc.1
    IL_004e:  ldloc.s    V_7
    IL_0050:  ldloc.s    V_5
    IL_0052:  ldloc.s    V_8
    IL_0054:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_0059:  stloc.s    V_10
    IL_005b:  ldloc.s    V_5
    IL_005d:  stloc.s    V_11
    IL_005f:  ldloc.2
    IL_0060:  stloc.s    V_12
    IL_0062:  ldloc.s    V_5
    IL_0064:  stloc.s    V_13
    IL_0066:  br         IL_00eb

    IL_006b:  ldloc.1
    IL_006c:  ldloc.s    V_10
    IL_006e:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32)
    IL_0073:  stloc.s    V_14
    IL_0075:  ldloc.s    V_14
    IL_0077:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_007c:  stloc.s    V_15
    IL_007e:  ldloc.s    V_15
    IL_0080:  brfalse.s  IL_00c6

    IL_0082:  ldloc.0
    IL_0083:  ldloc.s    V_15
    IL_0085:  ldelem.ref
    IL_0086:  stloc.s    V_16
    IL_0088:  ldloc.s    V_11
    IL_008a:  ldloc.s    V_5
    IL_008c:  bne.un.s   IL_0092

    IL_008e:  ldloc.s    V_13
    IL_0090:  stloc.s    V_11
    IL_0092:  ldloc.s    V_16
    IL_0094:  ldfld      bool Game.Block::IsTransparent
    IL_0099:  brfalse.s  IL_009f

    IL_009b:  ldloc.s    V_13
    IL_009d:  stloc.s    V_12
    IL_009f:  ldloc.s    V_9
    IL_00a1:  ldc.i4.0
    IL_00a2:  ble.s      IL_00ca

    IL_00a4:  ldloc.s    V_16
    IL_00a6:  ldfld      bool Game.Block::IsTransparent
    IL_00ab:  brfalse.s  IL_00c1

    IL_00ad:  ldloc.s    V_9
    IL_00af:  ldloc.s    V_16
    IL_00b1:  ldfld      int32 Game.Block::LightAttenuation
    IL_00b6:  sub
    IL_00b7:  ldc.i4.0
    IL_00b8:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00bd:  stloc.s    V_9
    IL_00bf:  br.s       IL_00ca

    IL_00c1:  ldc.i4.0
    IL_00c2:  stloc.s    V_9
    IL_00c4:  br.s       IL_00ca

    IL_00c6:  ldloc.s    V_13
    IL_00c8:  stloc.s    V_12
    IL_00ca:  ldloc.s    V_14
    IL_00cc:  ldloc.s    V_9
    IL_00ce:  call       int32 Game.TerrainData::ReplaceLight(int32,
                                                              int32)
    IL_00d3:  stloc.s    V_14
    IL_00d5:  ldloc.1
    IL_00d6:  ldloc.s    V_10
    IL_00d8:  ldloc.s    V_14
    IL_00da:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32)
    IL_00df:  ldloc.s    V_13
    IL_00e1:  ldc.i4.1
    IL_00e2:  sub
    IL_00e3:  stloc.s    V_13
    IL_00e5:  ldloc.s    V_10
    IL_00e7:  ldc.i4.1
    IL_00e8:  sub
    IL_00e9:  stloc.s    V_10
    IL_00eb:  ldloc.s    V_13
    IL_00ed:  ldloc.2
    IL_00ee:  bge        IL_006b

    IL_00f3:  ldloc.1
    IL_00f4:  ldloc.s    V_7
    IL_00f6:  ldloc.s    V_8
    IL_00f8:  ldloc.s    V_11
    IL_00fa:  callvirt   instance void Game.TerrainData::SetTopHeightFast(int32,
                                                                          int32,
                                                                          int32)
    IL_00ff:  ldloc.1
    IL_0100:  ldloc.s    V_7
    IL_0102:  ldloc.s    V_8
    IL_0104:  ldloc.s    V_12
    IL_0106:  callvirt   instance void Game.TerrainData::SetBottomHeightFast(int32,
                                                                             int32,
                                                                             int32)
    IL_010b:  ldloc.s    V_8
    IL_010d:  ldc.i4.1
    IL_010e:  add
    IL_010f:  stloc.s    V_8
    IL_0111:  ldloc.s    V_8
    IL_0113:  ldloc.s    V_6
    IL_0115:  blt        IL_004a

    IL_011a:  ldloc.s    V_7
    IL_011c:  ldc.i4.1
    IL_011d:  add
    IL_011e:  stloc.s    V_7
    IL_0120:  ldloc.s    V_7
    IL_0122:  ldloc.s    V_4
    IL_0124:  blt        IL_0042

    IL_0129:  ret
  } // end of method TerrainUpdater::GenerateChunkLightAndHeight

  .method private hidebysig instance void 
          GenerateChunkLightSources(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       721 (0x2d1)
    .maxstack  6
    .locals init (class Game.TerrainData V_0,
             class Game.Block[] V_1,
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
             int32 V_13,
             int32 V_14,
             int32 V_15,
             int32 V_16,
             class Game.Block V_17,
             int32 V_18,
             int32 V_19,
             int32 V_20,
             int32 V_21,
             int32 V_22,
             valuetype Game.TerrainUpdater/LightSource V_23,
             int32 V_24,
             int32 V_25,
             int32 V_26,
             class Game.Block V_27,
             int32 V_28)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  stloc.0
    IL_000c:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0011:  stloc.1
    IL_0012:  ldarg.1
    IL_0013:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0018:  ldfld      int32 [Engine]Engine.Point2::X
    IL_001d:  stloc.2
    IL_001e:  ldc.i4.0
    IL_001f:  stloc.3
    IL_0020:  ldarg.1
    IL_0021:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0026:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_002b:  stloc.s    V_4
    IL_002d:  ldloc.2
    IL_002e:  ldc.i4.s   16
    IL_0030:  add
    IL_0031:  stloc.s    V_5
    IL_0033:  ldloc.s    V_4
    IL_0035:  ldc.i4.s   16
    IL_0037:  add
    IL_0038:  stloc.s    V_6
    IL_003a:  ldloc.2
    IL_003b:  ldloc.0
    IL_003c:  callvirt   instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
    IL_0041:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0046:  ldc.i4.1
    IL_0047:  add
    IL_0048:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_004d:  stloc.2
    IL_004e:  ldloc.s    V_4
    IL_0050:  ldloc.0
    IL_0051:  callvirt   instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
    IL_0056:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_005b:  ldc.i4.1
    IL_005c:  add
    IL_005d:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0062:  stloc.s    V_4
    IL_0064:  ldloc.s    V_5
    IL_0066:  ldloc.0
    IL_0067:  callvirt   instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
    IL_006c:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0071:  ldarg.0
    IL_0072:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_0077:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_007c:  callvirt   instance int32 Game.TerrainData::get_SizeX()
    IL_0081:  add
    IL_0082:  ldc.i4.1
    IL_0083:  sub
    IL_0084:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0089:  stloc.s    V_5
    IL_008b:  ldloc.s    V_6
    IL_008d:  ldloc.0
    IL_008e:  callvirt   instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
    IL_0093:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0098:  ldarg.0
    IL_0099:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_009e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00a3:  callvirt   instance int32 Game.TerrainData::get_SizeZ()
    IL_00a8:  add
    IL_00a9:  ldc.i4.1
    IL_00aa:  sub
    IL_00ab:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_00b0:  stloc.s    V_6
    IL_00b2:  ldloc.2
    IL_00b3:  stloc.s    V_7
    IL_00b5:  br         IL_02c7

    IL_00ba:  ldloc.s    V_4
    IL_00bc:  stloc.s    V_8
    IL_00be:  br         IL_02b8

    IL_00c3:  ldloc.0
    IL_00c4:  ldloc.s    V_7
    IL_00c6:  ldc.i4.0
    IL_00c7:  ldloc.s    V_8
    IL_00c9:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_00ce:  stloc.s    V_9
    IL_00d0:  ldloc.0
    IL_00d1:  ldloc.s    V_7
    IL_00d3:  ldloc.s    V_8
    IL_00d5:  callvirt   instance int32 Game.TerrainData::GetTopHeightFast(int32,
                                                                           int32)
    IL_00da:  stloc.s    V_10
    IL_00dc:  ldloc.0
    IL_00dd:  ldloc.s    V_7
    IL_00df:  ldc.i4.1
    IL_00e0:  sub
    IL_00e1:  ldloc.s    V_8
    IL_00e3:  callvirt   instance int32 Game.TerrainData::GetTopHeightFast(int32,
                                                                           int32)
    IL_00e8:  ldloc.0
    IL_00e9:  ldloc.s    V_7
    IL_00eb:  ldc.i4.1
    IL_00ec:  add
    IL_00ed:  ldloc.s    V_8
    IL_00ef:  callvirt   instance int32 Game.TerrainData::GetTopHeightFast(int32,
                                                                           int32)
    IL_00f4:  stloc.s    V_11
    IL_00f6:  ldloc.0
    IL_00f7:  ldloc.s    V_7
    IL_00f9:  ldloc.s    V_8
    IL_00fb:  ldc.i4.1
    IL_00fc:  sub
    IL_00fd:  callvirt   instance int32 Game.TerrainData::GetTopHeightFast(int32,
                                                                           int32)
    IL_0102:  stloc.s    V_12
    IL_0104:  ldloc.0
    IL_0105:  ldloc.s    V_7
    IL_0107:  ldloc.s    V_8
    IL_0109:  ldc.i4.1
    IL_010a:  add
    IL_010b:  callvirt   instance int32 Game.TerrainData::GetTopHeightFast(int32,
                                                                           int32)
    IL_0110:  stloc.s    V_13
    IL_0112:  ldloc.s    V_11
    IL_0114:  ldloc.s    V_12
    IL_0116:  ldloc.s    V_13
    IL_0118:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32,
                                                             int32,
                                                             int32)
    IL_011d:  stloc.s    V_14
    IL_011f:  ldloc.s    V_10
    IL_0121:  stloc.s    V_15
    IL_0123:  br         IL_0209

    IL_0128:  ldloc.0
    IL_0129:  ldloc.s    V_9
    IL_012b:  ldloc.s    V_15
    IL_012d:  add
    IL_012e:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32)
    IL_0133:  stloc.s    V_16
    IL_0135:  ldloc.1
    IL_0136:  ldloc.s    V_16
    IL_0138:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_013d:  ldelem.ref
    IL_013e:  stloc.s    V_17
    IL_0140:  ldloc.s    V_17
    IL_0142:  ldfld      bool Game.Block::IsTransparent
    IL_0147:  brfalse    IL_0203

    IL_014c:  ldloc.0
    IL_014d:  ldloc.s    V_7
    IL_014f:  ldc.i4.1
    IL_0150:  sub
    IL_0151:  ldloc.s    V_15
    IL_0153:  ldloc.s    V_8
    IL_0155:  callvirt   instance int32 Game.TerrainData::GetCellLightFast(int32,
                                                                           int32,
                                                                           int32)
    IL_015a:  ldloc.0
    IL_015b:  ldloc.s    V_7
    IL_015d:  ldc.i4.1
    IL_015e:  add
    IL_015f:  ldloc.s    V_15
    IL_0161:  ldloc.s    V_8
    IL_0163:  callvirt   instance int32 Game.TerrainData::GetCellLightFast(int32,
                                                                           int32,
                                                                           int32)
    IL_0168:  stloc.s    V_18
    IL_016a:  ldloc.0
    IL_016b:  ldloc.s    V_7
    IL_016d:  ldloc.s    V_15
    IL_016f:  ldloc.s    V_8
    IL_0171:  ldc.i4.1
    IL_0172:  sub
    IL_0173:  callvirt   instance int32 Game.TerrainData::GetCellLightFast(int32,
                                                                           int32,
                                                                           int32)
    IL_0178:  stloc.s    V_19
    IL_017a:  ldloc.0
    IL_017b:  ldloc.s    V_7
    IL_017d:  ldloc.s    V_15
    IL_017f:  ldloc.s    V_8
    IL_0181:  ldc.i4.1
    IL_0182:  add
    IL_0183:  callvirt   instance int32 Game.TerrainData::GetCellLightFast(int32,
                                                                           int32,
                                                                           int32)
    IL_0188:  stloc.s    V_20
    IL_018a:  ldloc.s    V_18
    IL_018c:  ldloc.s    V_19
    IL_018e:  ldloc.s    V_20
    IL_0190:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32,
                                                             int32,
                                                             int32)
    IL_0195:  ldc.i4.1
    IL_0196:  sub
    IL_0197:  ldloc.s    V_17
    IL_0199:  ldfld      int32 Game.Block::LightAttenuation
    IL_019e:  sub
    IL_019f:  stloc.s    V_21
    IL_01a1:  ldloc.s    V_16
    IL_01a3:  call       int32 Game.TerrainData::ExtractLight(int32)
    IL_01a8:  ldloc.s    V_21
    IL_01aa:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_01af:  stloc.s    V_22
    IL_01b1:  ldloc.s    V_22
    IL_01b3:  ldc.i4.0
    IL_01b4:  ble.s      IL_0203

    IL_01b6:  ldarg.0
    IL_01b7:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainUpdater/LightSource> Game.TerrainUpdater::m_lightSources
    IL_01bc:  ldloca.s   V_23
    IL_01be:  initobj    Game.TerrainUpdater/LightSource
    IL_01c4:  ldloca.s   V_23
    IL_01c6:  ldloc.s    V_7
    IL_01c8:  stfld      int32 Game.TerrainUpdater/LightSource::X
    IL_01cd:  ldloca.s   V_23
    IL_01cf:  ldloc.s    V_15
    IL_01d1:  stfld      int32 Game.TerrainUpdater/LightSource::Y
    IL_01d6:  ldloca.s   V_23
    IL_01d8:  ldloc.s    V_8
    IL_01da:  stfld      int32 Game.TerrainUpdater/LightSource::Z
    IL_01df:  ldloca.s   V_23
    IL_01e1:  ldloc.s    V_22
    IL_01e3:  stfld      int32 Game.TerrainUpdater/LightSource::Light
    IL_01e8:  ldloc.s    V_23
    IL_01ea:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainUpdater/LightSource>::Add(!0)
    IL_01ef:  ldloc.0
    IL_01f0:  ldloc.s    V_9
    IL_01f2:  ldloc.s    V_15
    IL_01f4:  add
    IL_01f5:  ldloc.s    V_16
    IL_01f7:  ldloc.s    V_22
    IL_01f9:  call       int32 Game.TerrainData::ReplaceLight(int32,
                                                              int32)
    IL_01fe:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32)
    IL_0203:  ldloc.s    V_15
    IL_0205:  ldc.i4.1
    IL_0206:  sub
    IL_0207:  stloc.s    V_15
    IL_0209:  ldloc.s    V_15
    IL_020b:  ldloc.s    V_14
    IL_020d:  bgt        IL_0128

    IL_0212:  ldloc.3
    IL_0213:  stloc.s    V_24
    IL_0215:  br         IL_02a9

    IL_021a:  ldloc.0
    IL_021b:  ldloc.s    V_9
    IL_021d:  ldloc.s    V_24
    IL_021f:  add
    IL_0220:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32)
    IL_0225:  stloc.s    V_25
    IL_0227:  ldloc.s    V_25
    IL_0229:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_022e:  stloc.s    V_26
    IL_0230:  ldloc.1
    IL_0231:  ldloc.s    V_26
    IL_0233:  ldelem.ref
    IL_0234:  stloc.s    V_27
    IL_0236:  ldloc.s    V_27
    IL_0238:  ldfld      int32 Game.Block::EmittedLightAmount
    IL_023d:  ldc.i4.0
    IL_023e:  ble.s      IL_02a3

    IL_0240:  ldloc.s    V_27
    IL_0242:  ldloc.s    V_25
    IL_0244:  callvirt   instance int32 Game.Block::GetEmittedLightAmount(int32)
    IL_0249:  stloc.s    V_28
    IL_024b:  ldarg.0
    IL_024c:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainUpdater/LightSource> Game.TerrainUpdater::m_lightSources
    IL_0251:  ldloca.s   V_23
    IL_0253:  initobj    Game.TerrainUpdater/LightSource
    IL_0259:  ldloca.s   V_23
    IL_025b:  ldloc.s    V_7
    IL_025d:  stfld      int32 Game.TerrainUpdater/LightSource::X
    IL_0262:  ldloca.s   V_23
    IL_0264:  ldloc.s    V_24
    IL_0266:  stfld      int32 Game.TerrainUpdater/LightSource::Y
    IL_026b:  ldloca.s   V_23
    IL_026d:  ldloc.s    V_8
    IL_026f:  stfld      int32 Game.TerrainUpdater/LightSource::Z
    IL_0274:  ldloca.s   V_23
    IL_0276:  ldloc.s    V_28
    IL_0278:  stfld      int32 Game.TerrainUpdater/LightSource::Light
    IL_027d:  ldloc.s    V_23
    IL_027f:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainUpdater/LightSource>::Add(!0)
    IL_0284:  ldloc.s    V_28
    IL_0286:  ldloc.s    V_25
    IL_0288:  call       int32 Game.TerrainData::ExtractLight(int32)
    IL_028d:  ble.s      IL_02a3

    IL_028f:  ldloc.0
    IL_0290:  ldloc.s    V_9
    IL_0292:  ldloc.s    V_24
    IL_0294:  add
    IL_0295:  ldloc.s    V_25
    IL_0297:  ldloc.s    V_28
    IL_0299:  call       int32 Game.TerrainData::ReplaceLight(int32,
                                                              int32)
    IL_029e:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32)
    IL_02a3:  ldloc.s    V_24
    IL_02a5:  ldc.i4.1
    IL_02a6:  add
    IL_02a7:  stloc.s    V_24
    IL_02a9:  ldloc.s    V_24
    IL_02ab:  ldloc.s    V_10
    IL_02ad:  ble        IL_021a

    IL_02b2:  ldloc.s    V_8
    IL_02b4:  ldc.i4.1
    IL_02b5:  add
    IL_02b6:  stloc.s    V_8
    IL_02b8:  ldloc.s    V_8
    IL_02ba:  ldloc.s    V_6
    IL_02bc:  blt        IL_00c3

    IL_02c1:  ldloc.s    V_7
    IL_02c3:  ldc.i4.1
    IL_02c4:  add
    IL_02c5:  stloc.s    V_7
    IL_02c7:  ldloc.s    V_7
    IL_02c9:  ldloc.s    V_5
    IL_02cb:  blt        IL_00ba

    IL_02d0:  ret
  } // end of method TerrainUpdater::GenerateChunkLightSources

  .method private hidebysig instance void 
          PropagateLightSource(int32 x,
                               int32 y,
                               int32 z,
                               int32 light) cil managed
  {
    // 代码大小       153 (0x99)
    .maxstack  4
    .locals init (class Game.TerrainData V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             class Game.Block V_4,
             int32 V_5,
             int32 V_6,
             valuetype Game.TerrainUpdater/LightSource V_7)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldarg.1
    IL_000e:  ldarg.2
    IL_000f:  ldarg.3
    IL_0010:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_0015:  stloc.1
    IL_0016:  ldloc.0
    IL_0017:  ldloc.1
    IL_0018:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32)
    IL_001d:  stloc.2
    IL_001e:  ldloc.2
    IL_001f:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0024:  stloc.3
    IL_0025:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_002a:  ldloc.3
    IL_002b:  ldelem.ref
    IL_002c:  stloc.s    V_4
    IL_002e:  ldloc.s    V_4
    IL_0030:  ldfld      bool Game.Block::IsTransparent
    IL_0035:  brfalse.s  IL_0098

    IL_0037:  ldloc.2
    IL_0038:  call       int32 Game.TerrainData::ExtractLight(int32)
    IL_003d:  stloc.s    V_5
    IL_003f:  ldarg.s    light
    IL_0041:  ldloc.s    V_4
    IL_0043:  ldfld      int32 Game.Block::LightAttenuation
    IL_0048:  sub
    IL_0049:  ldc.i4.1
    IL_004a:  sub
    IL_004b:  stloc.s    V_6
    IL_004d:  ldloc.s    V_6
    IL_004f:  ldloc.s    V_5
    IL_0051:  ble.s      IL_0098

    IL_0053:  ldarg.0
    IL_0054:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainUpdater/LightSource> Game.TerrainUpdater::m_lightSources
    IL_0059:  ldloca.s   V_7
    IL_005b:  initobj    Game.TerrainUpdater/LightSource
    IL_0061:  ldloca.s   V_7
    IL_0063:  ldarg.1
    IL_0064:  stfld      int32 Game.TerrainUpdater/LightSource::X
    IL_0069:  ldloca.s   V_7
    IL_006b:  ldarg.2
    IL_006c:  stfld      int32 Game.TerrainUpdater/LightSource::Y
    IL_0071:  ldloca.s   V_7
    IL_0073:  ldarg.3
    IL_0074:  stfld      int32 Game.TerrainUpdater/LightSource::Z
    IL_0079:  ldloca.s   V_7
    IL_007b:  ldloc.s    V_6
    IL_007d:  stfld      int32 Game.TerrainUpdater/LightSource::Light
    IL_0082:  ldloc.s    V_7
    IL_0084:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainUpdater/LightSource>::Add(!0)
    IL_0089:  ldloc.0
    IL_008a:  ldloc.1
    IL_008b:  ldloc.2
    IL_008c:  ldloc.s    V_6
    IL_008e:  call       int32 Game.TerrainData::ReplaceLight(int32,
                                                              int32)
    IL_0093:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32)
    IL_0098:  ret
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
                                int32 startX,
                                int32 countX,
                                int32 startZ,
                                int32 countZ) cil managed
  {
    // 代码大小       441 (0x1b9)
    .maxstack  7
    .locals init (class Game.TerrainData V_0,
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
             int32 V_13,
             int32 V_14,
             int32 V_15)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  stloc.0
    IL_000c:  ldarg.1
    IL_000d:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0012:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0017:  ldarg.2
    IL_0018:  add
    IL_0019:  stloc.1
    IL_001a:  ldarg.1
    IL_001b:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0020:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0025:  ldarg.s    startZ
    IL_0027:  add
    IL_0028:  stloc.2
    IL_0029:  ldloc.1
    IL_002a:  ldarg.3
    IL_002b:  add
    IL_002c:  stloc.3
    IL_002d:  ldloc.2
    IL_002e:  ldarg.s    countZ
    IL_0030:  add
    IL_0031:  stloc.s    V_4
    IL_0033:  ldloc.1
    IL_0034:  ldloc.0
    IL_0035:  callvirt   instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
    IL_003a:  ldfld      int32 [Engine]Engine.Point2::X
    IL_003f:  ldc.i4.1
    IL_0040:  add
    IL_0041:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0046:  stloc.1
    IL_0047:  ldloc.2
    IL_0048:  ldloc.0
    IL_0049:  callvirt   instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
    IL_004e:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0053:  ldc.i4.1
    IL_0054:  add
    IL_0055:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_005a:  stloc.2
    IL_005b:  ldloc.3
    IL_005c:  ldloc.0
    IL_005d:  callvirt   instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
    IL_0062:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0067:  ldloc.0
    IL_0068:  callvirt   instance int32 Game.TerrainData::get_SizeX()
    IL_006d:  add
    IL_006e:  ldc.i4.1
    IL_006f:  sub
    IL_0070:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0075:  stloc.3
    IL_0076:  ldloc.s    V_4
    IL_0078:  ldloc.0
    IL_0079:  callvirt   instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
    IL_007e:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0083:  ldloc.0
    IL_0084:  callvirt   instance int32 Game.TerrainData::get_SizeZ()
    IL_0089:  add
    IL_008a:  ldc.i4.1
    IL_008b:  sub
    IL_008c:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0091:  stloc.s    V_4
    IL_0093:  ldloc.1
    IL_0094:  stloc.s    V_5
    IL_0096:  br         IL_01b0

    IL_009b:  ldloc.2
    IL_009c:  stloc.s    V_6
    IL_009e:  br         IL_01a1

    IL_00a3:  ldloc.0
    IL_00a4:  ldloc.s    V_5
    IL_00a6:  ldloc.s    V_6
    IL_00a8:  callvirt   instance int32 Game.TerrainData::GetBottomHeightFast(int32,
                                                                              int32)
    IL_00ad:  ldloc.0
    IL_00ae:  ldloc.s    V_5
    IL_00b0:  ldc.i4.1
    IL_00b1:  sub
    IL_00b2:  ldloc.s    V_6
    IL_00b4:  callvirt   instance int32 Game.TerrainData::GetBottomHeightFast(int32,
                                                                              int32)
    IL_00b9:  stloc.s    V_7
    IL_00bb:  ldloc.0
    IL_00bc:  ldloc.s    V_5
    IL_00be:  ldc.i4.1
    IL_00bf:  add
    IL_00c0:  ldloc.s    V_6
    IL_00c2:  callvirt   instance int32 Game.TerrainData::GetBottomHeightFast(int32,
                                                                              int32)
    IL_00c7:  stloc.s    V_8
    IL_00c9:  ldloc.0
    IL_00ca:  ldloc.s    V_5
    IL_00cc:  ldloc.s    V_6
    IL_00ce:  ldc.i4.1
    IL_00cf:  sub
    IL_00d0:  callvirt   instance int32 Game.TerrainData::GetBottomHeightFast(int32,
                                                                              int32)
    IL_00d5:  stloc.s    V_9
    IL_00d7:  ldloc.0
    IL_00d8:  ldloc.s    V_5
    IL_00da:  ldloc.s    V_6
    IL_00dc:  ldc.i4.1
    IL_00dd:  add
    IL_00de:  callvirt   instance int32 Game.TerrainData::GetBottomHeightFast(int32,
                                                                              int32)
    IL_00e3:  stloc.s    V_10
    IL_00e5:  ldc.i4.1
    IL_00e6:  sub
    IL_00e7:  ldloc.s    V_7
    IL_00e9:  ldloc.s    V_8
    IL_00eb:  ldloc.s    V_9
    IL_00ed:  ldloc.s    V_10
    IL_00ef:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32,
                                                             int32,
                                                             int32)
    IL_00f4:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_00f9:  ldloc.0
    IL_00fa:  ldloc.s    V_5
    IL_00fc:  ldloc.s    V_6
    IL_00fe:  callvirt   instance int32 Game.TerrainData::GetTopHeightFast(int32,
                                                                           int32)
    IL_0103:  stloc.s    V_11
    IL_0105:  ldc.i4.1
    IL_0106:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_010b:  ldloc.s    V_11
    IL_010d:  ldc.i4.s   126
    IL_010f:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0114:  stloc.s    V_11
    IL_0116:  ldloc.0
    IL_0117:  ldloc.s    V_5
    IL_0119:  ldc.i4.0
    IL_011a:  ldloc.s    V_6
    IL_011c:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_0121:  stloc.s    V_12
    IL_0123:  stloc.s    V_13
    IL_0125:  br.s       IL_0195

    IL_0127:  ldloc.0
    IL_0128:  ldloc.s    V_12
    IL_012a:  ldloc.s    V_13
    IL_012c:  add
    IL_012d:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32)
    IL_0132:  stloc.s    V_14
    IL_0134:  ldloc.s    V_14
    IL_0136:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_013b:  stloc.s    V_15
    IL_013d:  ldloc.s    V_15
    IL_013f:  brfalse.s  IL_018f

    IL_0141:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0146:  ldloc.s    V_15
    IL_0148:  ldelem.ref
    IL_0149:  ldarg.0
    IL_014a:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_014f:  callvirt   instance class Game.BlockGeometryGenerator Game.SubsystemTerrain::get_BlockGeometryGenerator()
    IL_0154:  ldarg.1
    IL_0155:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_015a:  ldloc.s    V_14
    IL_015c:  ldloc.s    V_5
    IL_015e:  ldloc.s    V_13
    IL_0160:  ldloc.s    V_6
    IL_0162:  callvirt   instance void Game.Block::GenerateTerrainVertices(class Game.BlockGeometryGenerator,
                                                                           class Game.TerrainGeometrySubsets,
                                                                           int32,
                                                                           int32,
                                                                           int32,
                                                                           int32)
    IL_0167:  ldarg.1
    IL_0168:  ldarg.1
    IL_0169:  ldfld      float32 Game.TerrainChunk::GeometryMinY
    IL_016e:  ldloc.s    V_13
    IL_0170:  conv.r4
    IL_0171:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0176:  stfld      float32 Game.TerrainChunk::GeometryMinY
    IL_017b:  ldarg.1
    IL_017c:  ldarg.1
    IL_017d:  ldfld      float32 Game.TerrainChunk::GeometryMaxY
    IL_0182:  ldloc.s    V_13
    IL_0184:  conv.r4
    IL_0185:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_018a:  stfld      float32 Game.TerrainChunk::GeometryMaxY
    IL_018f:  ldloc.s    V_13
    IL_0191:  ldc.i4.1
    IL_0192:  add
    IL_0193:  stloc.s    V_13
    IL_0195:  ldloc.s    V_13
    IL_0197:  ldloc.s    V_11
    IL_0199:  ble.s      IL_0127

    IL_019b:  ldloc.s    V_6
    IL_019d:  ldc.i4.1
    IL_019e:  add
    IL_019f:  stloc.s    V_6
    IL_01a1:  ldloc.s    V_6
    IL_01a3:  ldloc.s    V_4
    IL_01a5:  blt        IL_00a3

    IL_01aa:  ldloc.s    V_5
    IL_01ac:  ldc.i4.1
    IL_01ad:  add
    IL_01ae:  stloc.s    V_5
    IL_01b0:  ldloc.s    V_5
    IL_01b2:  ldloc.3
    IL_01b3:  blt        IL_009b

    IL_01b8:  ret
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
    // 代码大小       101 (0x65)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             class Game.TerrainChunk V_2,
             int32 V_3)
    IL_0000:  ldc.i4.m1
    IL_0001:  stloc.0
    IL_0002:  br.s       IL_0060

    IL_0004:  ldc.i4.m1
    IL_0005:  stloc.1
    IL_0006:  br.s       IL_0058

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_000e:  ldarg.1
    IL_000f:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0014:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.s   16
    IL_001c:  mul
    IL_001d:  add
    IL_001e:  ldarg.1
    IL_001f:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0024:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0029:  ldloc.1
    IL_002a:  ldc.i4.s   16
    IL_002c:  mul
    IL_002d:  add
    IL_002e:  callvirt   instance class Game.TerrainChunk Game.SubsystemTerrain::CellToChunk(int32,
                                                                                             int32)
    IL_0033:  stloc.2
    IL_0034:  ldloc.2
    IL_0035:  brfalse.s  IL_0054

    IL_0037:  ldloc.0
    IL_0038:  neg
    IL_0039:  ldloc.1
    IL_003a:  neg
    IL_003b:  call       int32 Game.TerrainUpdater::CalculateLightPropagationBitIndex(int32,
                                                                                      int32)
    IL_0040:  stloc.3
    IL_0041:  ldloc.2
    IL_0042:  dup
    IL_0043:  ldfld      int32 Game.TerrainChunk::LightPropagationMask
    IL_0048:  ldc.i4.1
    IL_0049:  ldloc.3
    IL_004a:  ldc.i4.s   31
    IL_004c:  and
    IL_004d:  shl
    IL_004e:  or
    IL_004f:  stfld      int32 Game.TerrainChunk::LightPropagationMask
    IL_0054:  ldloc.1
    IL_0055:  ldc.i4.1
    IL_0056:  add
    IL_0057:  stloc.1
    IL_0058:  ldloc.1
    IL_0059:  ldc.i4.1
    IL_005a:  ble.s      IL_0008

    IL_005c:  ldloc.0
    IL_005d:  ldc.i4.1
    IL_005e:  add
    IL_005f:  stloc.0
    IL_0060:  ldloc.0
    IL_0061:  ldc.i4.1
    IL_0062:  ble.s      IL_0004

    IL_0064:  ret
  } // end of method TerrainUpdater::UpdateNeighborsLightPropagationBitmasks

  .method private hidebysig instance int64 
          CalculateChunkGeometryHash(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       329 (0x149)
    .maxstack  6
    .locals init (class Game.TerrainData V_0,
             int64 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  stloc.0
    IL_000c:  ldc.i4.0
    IL_000d:  conv.i8
    IL_000e:  stloc.1
    IL_000f:  ldc.i4.1
    IL_0010:  stloc.2
    IL_0011:  ldarg.1
    IL_0012:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0017:  ldfld      int32 [Engine]Engine.Point2::X
    IL_001c:  ldc.i4.1
    IL_001d:  sub
    IL_001e:  ldloc.0
    IL_001f:  callvirt   instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
    IL_0024:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0029:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_002e:  stloc.3
    IL_002f:  ldarg.1
    IL_0030:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0035:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_003a:  ldc.i4.1
    IL_003b:  sub
    IL_003c:  ldloc.0
    IL_003d:  callvirt   instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
    IL_0042:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0047:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_004c:  stloc.s    V_4
    IL_004e:  ldarg.1
    IL_004f:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0054:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0059:  ldc.i4.s   16
    IL_005b:  add
    IL_005c:  ldc.i4.1
    IL_005d:  add
    IL_005e:  ldloc.0
    IL_005f:  callvirt   instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
    IL_0064:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0069:  ldloc.0
    IL_006a:  callvirt   instance int32 Game.TerrainData::get_SizeX()
    IL_006f:  add
    IL_0070:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0075:  stloc.s    V_5
    IL_0077:  ldarg.1
    IL_0078:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_007d:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0082:  ldc.i4.s   16
    IL_0084:  add
    IL_0085:  ldc.i4.1
    IL_0086:  add
    IL_0087:  ldloc.0
    IL_0088:  callvirt   instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
    IL_008d:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0092:  ldloc.0
    IL_0093:  callvirt   instance int32 Game.TerrainData::get_SizeZ()
    IL_0098:  add
    IL_0099:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_009e:  stloc.s    V_6
    IL_00a0:  ldloc.3
    IL_00a1:  stloc.s    V_7
    IL_00a3:  br.s       IL_010a

    IL_00a5:  ldloc.s    V_4
    IL_00a7:  stloc.s    V_8
    IL_00a9:  br.s       IL_00fe

    IL_00ab:  ldloc.0
    IL_00ac:  ldloc.s    V_7
    IL_00ae:  ldloc.s    V_8
    IL_00b0:  callvirt   instance int32 Game.TerrainData::GetShaftValueFast(int32,
                                                                            int32)
    IL_00b5:  stloc.s    V_9
    IL_00b7:  ldloc.1
    IL_00b8:  ldloc.2
    IL_00b9:  ldloc.s    V_9
    IL_00bb:  mul
    IL_00bc:  conv.i8
    IL_00bd:  add
    IL_00be:  stloc.1
    IL_00bf:  ldloc.0
    IL_00c0:  ldloc.s    V_7
    IL_00c2:  ldc.i4.0
    IL_00c3:  ldloc.s    V_8
    IL_00c5:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_00ca:  stloc.s    V_10
    IL_00cc:  ldloc.s    V_10
    IL_00ce:  ldloc.0
    IL_00cf:  callvirt   instance int32 Game.TerrainData::get_SizeY()
    IL_00d4:  add
    IL_00d5:  stloc.s    V_11
    IL_00d7:  br.s       IL_00f2

    IL_00d9:  ldloc.1
    IL_00da:  ldloc.2
    IL_00db:  conv.i8
    IL_00dc:  ldloc.0
    IL_00dd:  ldloc.s    V_10
    IL_00df:  dup
    IL_00e0:  ldc.i4.1
    IL_00e1:  add
    IL_00e2:  stloc.s    V_10
    IL_00e4:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32)
    IL_00e9:  conv.i8
    IL_00ea:  mul
    IL_00eb:  add
    IL_00ec:  stloc.1
    IL_00ed:  ldloc.2
    IL_00ee:  ldc.i4.s   113
    IL_00f0:  add
    IL_00f1:  stloc.2
    IL_00f2:  ldloc.s    V_10
    IL_00f4:  ldloc.s    V_11
    IL_00f6:  blt.s      IL_00d9

    IL_00f8:  ldloc.s    V_8
    IL_00fa:  ldc.i4.1
    IL_00fb:  add
    IL_00fc:  stloc.s    V_8
    IL_00fe:  ldloc.s    V_8
    IL_0100:  ldloc.s    V_6
    IL_0102:  blt.s      IL_00ab

    IL_0104:  ldloc.s    V_7
    IL_0106:  ldc.i4.1
    IL_0107:  add
    IL_0108:  stloc.s    V_7
    IL_010a:  ldloc.s    V_7
    IL_010c:  ldloc.s    V_5
    IL_010e:  blt.s      IL_00a5

    IL_0110:  ldloc.1
    IL_0111:  ldloc.3
    IL_0112:  conv.i8
    IL_0113:  ldloc.2
    IL_0114:  conv.i8
    IL_0115:  mul
    IL_0116:  add
    IL_0117:  stloc.1
    IL_0118:  ldloc.2
    IL_0119:  ldc.i4.s   113
    IL_011b:  add
    IL_011c:  stloc.2
    IL_011d:  ldloc.1
    IL_011e:  ldloc.s    V_4
    IL_0120:  conv.i8
    IL_0121:  ldloc.2
    IL_0122:  conv.i8
    IL_0123:  mul
    IL_0124:  add
    IL_0125:  stloc.1
    IL_0126:  ldloc.2
    IL_0127:  ldc.i4.s   113
    IL_0129:  add
    IL_012a:  stloc.2
    IL_012b:  ldloc.1
    IL_012c:  ldloc.s    V_5
    IL_012e:  conv.i8
    IL_012f:  ldloc.2
    IL_0130:  conv.i8
    IL_0131:  mul
    IL_0132:  add
    IL_0133:  stloc.1
    IL_0134:  ldloc.2
    IL_0135:  ldc.i4.s   113
    IL_0137:  add
    IL_0138:  stloc.2
    IL_0139:  ldloc.1
    IL_013a:  ldloc.s    V_6
    IL_013c:  conv.i8
    IL_013d:  ldloc.2
    IL_013e:  conv.i8
    IL_013f:  mul
    IL_0140:  add
    IL_0141:  stloc.1
    IL_0142:  ldloc.2
    IL_0143:  ldc.i4.s   113
    IL_0145:  add
    IL_0146:  stloc.2
    IL_0147:  ldloc.1
    IL_0148:  ret
  } // end of method TerrainUpdater::CalculateChunkGeometryHash

  .method private hidebysig instance void 
          NotifyBlockBehaviors(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       274 (0x112)
    .maxstack  6
    .locals init (class Game.TerrainData V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             bool V_6,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.SubsystemBlockBehavior> V_7,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.SubsystemBlockBehavior> V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12,
             int32 V_13,
             int32 V_14,
             class Game.SubsystemBlockBehavior[] V_15,
             int32 V_16)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemBlockBehaviors Game.TerrainUpdater::m_subsystemBlockBehaviors
    IL_0006:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.SubsystemBlockBehavior> Game.SubsystemBlockBehaviors::get_BlockBehaviors()
    IL_000b:  stloc.s    V_8
    IL_000d:  ldloca.s   V_8
    IL_000f:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.SubsystemBlockBehavior>::GetEnumerator()
    IL_0014:  stloc.s    V_7
    .try
    {
      IL_0016:  br.s       IL_0025

      IL_0018:  ldloca.s   V_7
      IL_001a:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.SubsystemBlockBehavior>::get_Current()
      IL_001f:  ldarg.1
      IL_0020:  callvirt   instance void Game.SubsystemBlockBehavior::OnChunkInitialized(class Game.TerrainChunk)
      IL_0025:  ldloca.s   V_7
      IL_0027:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.SubsystemBlockBehavior>::MoveNext()
      IL_002c:  brtrue.s   IL_0018

      IL_002e:  leave.s    IL_003e

    }  // end .try
    finally
    {
      IL_0030:  ldloca.s   V_7
      IL_0032:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.SubsystemBlockBehavior>
      IL_0038:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_003d:  endfinally
    }  // end handler
    IL_003e:  ldarg.0
    IL_003f:  ldfld      class Game.SubsystemTerrain Game.TerrainUpdater::m_subsystemTerrain
    IL_0044:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0049:  stloc.0
    IL_004a:  ldarg.1
    IL_004b:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0050:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0055:  ldc.i4.0
    IL_0056:  stloc.1
    IL_0057:  ldarg.1
    IL_0058:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_005d:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0062:  stloc.2
    IL_0063:  dup
    IL_0064:  ldc.i4.s   16
    IL_0066:  add
    IL_0067:  stloc.3
    IL_0068:  ldc.i4.s   127
    IL_006a:  stloc.s    V_4
    IL_006c:  ldloc.2
    IL_006d:  ldc.i4.s   16
    IL_006f:  add
    IL_0070:  stloc.s    V_5
    IL_0072:  ldarg.1
    IL_0073:  ldfld      bool Game.TerrainChunk::IsLoaded
    IL_0078:  stloc.s    V_6
    IL_007a:  stloc.s    V_9
    IL_007c:  br         IL_0109

    IL_0081:  ldloc.2
    IL_0082:  stloc.s    V_10
    IL_0084:  br.s       IL_00fd

    IL_0086:  ldloc.0
    IL_0087:  ldloc.s    V_9
    IL_0089:  ldloc.1
    IL_008a:  ldloc.s    V_10
    IL_008c:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_0091:  stloc.s    V_11
    IL_0093:  ldloc.1
    IL_0094:  stloc.s    V_12
    IL_0096:  br.s       IL_00f1

    IL_0098:  ldloc.0
    IL_0099:  ldloc.s    V_11
    IL_009b:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32)
    IL_00a0:  stloc.s    V_13
    IL_00a2:  ldloc.s    V_13
    IL_00a4:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_00a9:  stloc.s    V_14
    IL_00ab:  ldloc.s    V_14
    IL_00ad:  brfalse.s  IL_00e5

    IL_00af:  ldarg.0
    IL_00b0:  ldfld      class Game.SubsystemBlockBehaviors Game.TerrainUpdater::m_subsystemBlockBehaviors
    IL_00b5:  ldloc.s    V_14
    IL_00b7:  callvirt   instance class Game.SubsystemBlockBehavior[] Game.SubsystemBlockBehaviors::GetBlockBehaviors(int32)
    IL_00bc:  stloc.s    V_15
    IL_00be:  ldc.i4.0
    IL_00bf:  stloc.s    V_16
    IL_00c1:  br.s       IL_00dd

    IL_00c3:  ldloc.s    V_15
    IL_00c5:  ldloc.s    V_16
    IL_00c7:  ldelem.ref
    IL_00c8:  ldloc.s    V_13
    IL_00ca:  ldloc.s    V_9
    IL_00cc:  ldloc.s    V_12
    IL_00ce:  ldloc.s    V_10
    IL_00d0:  ldloc.s    V_6
    IL_00d2:  callvirt   instance void Game.SubsystemBlockBehavior::OnBlockGenerated(int32,
                                                                                     int32,
                                                                                     int32,
                                                                                     int32,
                                                                                     bool)
    IL_00d7:  ldloc.s    V_16
    IL_00d9:  ldc.i4.1
    IL_00da:  add
    IL_00db:  stloc.s    V_16
    IL_00dd:  ldloc.s    V_16
    IL_00df:  ldloc.s    V_15
    IL_00e1:  ldlen
    IL_00e2:  conv.i4
    IL_00e3:  blt.s      IL_00c3

    IL_00e5:  ldloc.s    V_12
    IL_00e7:  ldc.i4.1
    IL_00e8:  add
    IL_00e9:  stloc.s    V_12
    IL_00eb:  ldloc.s    V_11
    IL_00ed:  ldc.i4.1
    IL_00ee:  add
    IL_00ef:  stloc.s    V_11
    IL_00f1:  ldloc.s    V_12
    IL_00f3:  ldloc.s    V_4
    IL_00f5:  blt.s      IL_0098

    IL_00f7:  ldloc.s    V_10
    IL_00f9:  ldc.i4.1
    IL_00fa:  add
    IL_00fb:  stloc.s    V_10
    IL_00fd:  ldloc.s    V_10
    IL_00ff:  ldloc.s    V_5
    IL_0101:  blt.s      IL_0086

    IL_0103:  ldloc.s    V_9
    IL_0105:  ldc.i4.1
    IL_0106:  add
    IL_0107:  stloc.s    V_9
    IL_0109:  ldloc.s    V_9
    IL_010b:  ldloc.3
    IL_010c:  blt        IL_0081

    IL_0111:  ret
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

  .property instance bool IsSynchronousUpdateRequired()
  {
    .get instance bool Game.TerrainUpdater::get_IsSynchronousUpdateRequired()
    .set instance void Game.TerrainUpdater::set_IsSynchronousUpdateRequired(bool)
  } // end of property TerrainUpdater::IsSynchronousUpdateRequired
  .property instance class [System.Threading]System.Threading.AutoResetEvent
          UpdateEvent()
  {
    .get instance class [System.Threading]System.Threading.AutoResetEvent Game.TerrainUpdater::get_UpdateEvent()
  } // end of property TerrainUpdater::UpdateEvent
} // end of class Game.TerrainUpdater