.class public auto ansi beforefieldinit Game.SubsystemBlocksScanner
       extends [EntitySystem]GameEntitySystem.Subsystem
       implements Game.IUpdateable
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.SubsystemBlocksScanner/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<class Game.SubsystemBlockBehavior,bool> '<>9__15_0'
    .field public static class [System.Runtime]System.Func`2<class Game.SubsystemBlockBehavior,class Game.SubsystemPollableBlockBehavior> '<>9__15_1'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.SubsystemBlocksScanner/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.SubsystemBlocksScanner/'<>c' Game.SubsystemBlocksScanner/'<>c'::'<>9'
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
            '<Load>b__15_0'(class Game.SubsystemBlockBehavior s) cil managed
    {
      // 代码大小       10 (0xa)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  isinst     Game.SubsystemPollableBlockBehavior
      IL_0006:  ldnull
      IL_0007:  cgt.un
      IL_0009:  ret
    } // end of method '<>c'::'<Load>b__15_0'

    .method assembly hidebysig instance class Game.SubsystemPollableBlockBehavior 
            '<Load>b__15_1'(class Game.SubsystemBlockBehavior s) cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  castclass  Game.SubsystemPollableBlockBehavior
      IL_0006:  ret
    } // end of method '<>c'::'<Load>b__15_1'

  } // end of class '<>c'

  .field public static literal float32 ScanPeriod = float32(60.)
  .field private class Game.SubsystemPollableBlockBehavior[][] m_pollableBehaviorsByContents
  .field private valuetype [Engine]Engine.Point2 m_pollChunkCoordinates
  .field private int32 m_pollX
  .field private int32 m_pollZ
  .field private int32 m_pollPass
  .field private float32 m_pollCount
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemBlockBehaviors m_subsystemBlockBehaviors
  .field private class [System.Runtime]System.Action`1<class Game.TerrainChunk> ScanningChunkCompleted
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance void 
          add_ScanningChunkCompleted(class [System.Runtime]System.Action`1<class Game.TerrainChunk> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<class Game.TerrainChunk> V_0,
             class [System.Runtime]System.Action`1<class Game.TerrainChunk> V_1,
             class [System.Runtime]System.Action`1<class Game.TerrainChunk> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<class Game.TerrainChunk> Game.SubsystemBlocksScanner::ScanningChunkCompleted
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Combine(class [System.Runtime]System.Delegate,
                                                                                                        class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`1<class Game.TerrainChunk>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<class Game.TerrainChunk> Game.SubsystemBlocksScanner::ScanningChunkCompleted
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<class Game.TerrainChunk>>(!!0&,
                                                                                                                                                             !!0,
                                                                                                                                                             !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method SubsystemBlocksScanner::add_ScanningChunkCompleted

  .method public hidebysig specialname instance void 
          remove_ScanningChunkCompleted(class [System.Runtime]System.Action`1<class Game.TerrainChunk> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<class Game.TerrainChunk> V_0,
             class [System.Runtime]System.Action`1<class Game.TerrainChunk> V_1,
             class [System.Runtime]System.Action`1<class Game.TerrainChunk> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<class Game.TerrainChunk> Game.SubsystemBlocksScanner::ScanningChunkCompleted
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Remove(class [System.Runtime]System.Delegate,
                                                                                                       class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`1<class Game.TerrainChunk>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<class Game.TerrainChunk> Game.SubsystemBlocksScanner::ScanningChunkCompleted
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<class Game.TerrainChunk>>(!!0&,
                                                                                                                                                             !!0,
                                                                                                                                                             !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method SubsystemBlocksScanner::remove_ScanningChunkCompleted

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       3 (0x3)
    .maxstack  8
    IL_0000:  ldc.i4.s   99
    IL_0002:  ret
  } // end of method SubsystemBlocksScanner::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       525 (0x20d)
    .maxstack  6
    .locals init (class Game.Terrain V_0,
             class Game.TerrainChunk V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             class Game.SubsystemPollableBlockBehavior[] V_7,
             int32 V_8)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemBlocksScanner::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldarg.0
    IL_000e:  ldfld      float32 Game.SubsystemBlocksScanner::m_pollCount
    IL_0013:  ldloc.0
    IL_0014:  callvirt   instance class Game.TerrainChunk[] Game.Terrain::get_AllocatedChunks()
    IL_0019:  ldlen
    IL_001a:  conv.i4
    IL_001b:  ldc.i4.s   16
    IL_001d:  mul
    IL_001e:  ldc.i4.s   16
    IL_0020:  mul
    IL_0021:  conv.r4
    IL_0022:  ldarg.1
    IL_0023:  mul
    IL_0024:  ldc.r4     60.
    IL_0029:  div
    IL_002a:  add
    IL_002b:  stfld      float32 Game.SubsystemBlocksScanner::m_pollCount
    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  ldfld      float32 Game.SubsystemBlocksScanner::m_pollCount
    IL_0037:  ldc.r4     0.0
    IL_003c:  ldc.r4     200.
    IL_0041:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0046:  stfld      float32 Game.SubsystemBlocksScanner::m_pollCount
    IL_004b:  ldloc.0
    IL_004c:  ldarg.0
    IL_004d:  ldflda     valuetype [Engine]Engine.Point2 Game.SubsystemBlocksScanner::m_pollChunkCoordinates
    IL_0052:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0057:  ldarg.0
    IL_0058:  ldflda     valuetype [Engine]Engine.Point2 Game.SubsystemBlocksScanner::m_pollChunkCoordinates
    IL_005d:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0062:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetNextChunk(int32,
                                                                                     int32)
    IL_0067:  stloc.1
    IL_0068:  ldloc.1
    IL_0069:  brtrue     IL_01fc

    IL_006e:  ret

    IL_006f:  ldloc.1
    IL_0070:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_0075:  ldc.i4.4
    IL_0076:  bgt        IL_0188

    IL_007b:  ldarg.0
    IL_007c:  ldarg.0
    IL_007d:  ldfld      float32 Game.SubsystemBlocksScanner::m_pollCount
    IL_0082:  ldc.r4     32768.
    IL_0087:  sub
    IL_0088:  stfld      float32 Game.SubsystemBlocksScanner::m_pollCount
    IL_008d:  br         IL_0199

    IL_0092:  ldarg.0
    IL_0093:  ldfld      float32 Game.SubsystemBlocksScanner::m_pollCount
    IL_0098:  ldc.r4     1.
    IL_009d:  bge.un.s   IL_00a0

    IL_009f:  ret

    IL_00a0:  ldarg.0
    IL_00a1:  ldarg.0
    IL_00a2:  ldfld      float32 Game.SubsystemBlocksScanner::m_pollCount
    IL_00a7:  ldc.r4     1.
    IL_00ac:  sub
    IL_00ad:  stfld      float32 Game.SubsystemBlocksScanner::m_pollCount
    IL_00b2:  ldloc.1
    IL_00b3:  ldarg.0
    IL_00b4:  ldfld      int32 Game.SubsystemBlocksScanner::m_pollX
    IL_00b9:  ldarg.0
    IL_00ba:  ldfld      int32 Game.SubsystemBlocksScanner::m_pollZ
    IL_00bf:  callvirt   instance int32 Game.TerrainChunk::GetTopHeightFast(int32,
                                                                            int32)
    IL_00c4:  stloc.2
    IL_00c5:  ldarg.0
    IL_00c6:  ldfld      int32 Game.SubsystemBlocksScanner::m_pollX
    IL_00cb:  ldc.i4.0
    IL_00cc:  ldarg.0
    IL_00cd:  ldfld      int32 Game.SubsystemBlocksScanner::m_pollZ
    IL_00d2:  call       int32 Game.TerrainChunk::CalculateCellIndex(int32,
                                                                     int32,
                                                                     int32)
    IL_00d7:  stloc.3
    IL_00d8:  ldc.i4.0
    IL_00d9:  stloc.s    V_4
    IL_00db:  br.s       IL_0153

    IL_00dd:  ldloc.1
    IL_00de:  ldloc.3
    IL_00df:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32)
    IL_00e4:  stloc.s    V_5
    IL_00e6:  ldloc.s    V_5
    IL_00e8:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_00ed:  stloc.s    V_6
    IL_00ef:  ldloc.s    V_6
    IL_00f1:  brfalse.s  IL_0149

    IL_00f3:  ldarg.0
    IL_00f4:  ldfld      class Game.SubsystemPollableBlockBehavior[][] Game.SubsystemBlocksScanner::m_pollableBehaviorsByContents
    IL_00f9:  ldloc.s    V_6
    IL_00fb:  ldelem.ref
    IL_00fc:  stloc.s    V_7
    IL_00fe:  ldc.i4.0
    IL_00ff:  stloc.s    V_8
    IL_0101:  br.s       IL_0141

    IL_0103:  ldloc.s    V_7
    IL_0105:  ldloc.s    V_8
    IL_0107:  ldelem.ref
    IL_0108:  ldloc.s    V_5
    IL_010a:  ldloc.1
    IL_010b:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0110:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0115:  ldarg.0
    IL_0116:  ldfld      int32 Game.SubsystemBlocksScanner::m_pollX
    IL_011b:  add
    IL_011c:  ldloc.s    V_4
    IL_011e:  ldloc.1
    IL_011f:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0124:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0129:  ldarg.0
    IL_012a:  ldfld      int32 Game.SubsystemBlocksScanner::m_pollZ
    IL_012f:  add
    IL_0130:  ldarg.0
    IL_0131:  ldfld      int32 Game.SubsystemBlocksScanner::m_pollPass
    IL_0136:  callvirt   instance void Game.SubsystemPollableBlockBehavior::OnPoll(int32,
                                                                                   int32,
                                                                                   int32,
                                                                                   int32,
                                                                                   int32)
    IL_013b:  ldloc.s    V_8
    IL_013d:  ldc.i4.1
    IL_013e:  add
    IL_013f:  stloc.s    V_8
    IL_0141:  ldloc.s    V_8
    IL_0143:  ldloc.s    V_7
    IL_0145:  ldlen
    IL_0146:  conv.i4
    IL_0147:  blt.s      IL_0103

    IL_0149:  ldloc.s    V_4
    IL_014b:  ldc.i4.1
    IL_014c:  add
    IL_014d:  stloc.s    V_4
    IL_014f:  ldloc.3
    IL_0150:  ldc.i4.1
    IL_0151:  add
    IL_0152:  stloc.3
    IL_0153:  ldloc.s    V_4
    IL_0155:  ldloc.2
    IL_0156:  ble.s      IL_00dd

    IL_0158:  ldarg.0
    IL_0159:  ldarg.0
    IL_015a:  ldfld      int32 Game.SubsystemBlocksScanner::m_pollZ
    IL_015f:  ldc.i4.1
    IL_0160:  add
    IL_0161:  stfld      int32 Game.SubsystemBlocksScanner::m_pollZ
    IL_0166:  ldarg.0
    IL_0167:  ldfld      int32 Game.SubsystemBlocksScanner::m_pollZ
    IL_016c:  ldc.i4.s   16
    IL_016e:  blt        IL_0092

    IL_0173:  ldarg.0
    IL_0174:  ldc.i4.0
    IL_0175:  stfld      int32 Game.SubsystemBlocksScanner::m_pollZ
    IL_017a:  ldarg.0
    IL_017b:  ldarg.0
    IL_017c:  ldfld      int32 Game.SubsystemBlocksScanner::m_pollX
    IL_0181:  ldc.i4.1
    IL_0182:  add
    IL_0183:  stfld      int32 Game.SubsystemBlocksScanner::m_pollX
    IL_0188:  ldarg.0
    IL_0189:  ldfld      int32 Game.SubsystemBlocksScanner::m_pollX
    IL_018e:  ldc.i4.s   16
    IL_0190:  blt.s      IL_0166

    IL_0192:  ldarg.0
    IL_0193:  ldc.i4.0
    IL_0194:  stfld      int32 Game.SubsystemBlocksScanner::m_pollX
    IL_0199:  ldarg.0
    IL_019a:  ldfld      class [System.Runtime]System.Action`1<class Game.TerrainChunk> Game.SubsystemBlocksScanner::ScanningChunkCompleted
    IL_019f:  dup
    IL_01a0:  brtrue.s   IL_01a5

    IL_01a2:  pop
    IL_01a3:  br.s       IL_01ab

    IL_01a5:  ldloc.1
    IL_01a6:  callvirt   instance void class [System.Runtime]System.Action`1<class Game.TerrainChunk>::Invoke(!0)
    IL_01ab:  ldloc.0
    IL_01ac:  ldloc.1
    IL_01ad:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_01b2:  ldfld      int32 [Engine]Engine.Point2::X
    IL_01b7:  ldc.i4.1
    IL_01b8:  add
    IL_01b9:  ldloc.1
    IL_01ba:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_01bf:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_01c4:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetNextChunk(int32,
                                                                                     int32)
    IL_01c9:  stloc.1
    IL_01ca:  ldloc.1
    IL_01cb:  brtrue.s   IL_01ce

    IL_01cd:  ret

    IL_01ce:  ldloc.1
    IL_01cf:  ldfld      valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_01d4:  ldarg.0
    IL_01d5:  ldfld      valuetype [Engine]Engine.Point2 Game.SubsystemBlocksScanner::m_pollChunkCoordinates
    IL_01da:  call       int32 Game.Terrain::ComparePoints(valuetype [Engine]Engine.Point2,
                                                           valuetype [Engine]Engine.Point2)
    IL_01df:  ldc.i4.0
    IL_01e0:  bge.s      IL_01f0

    IL_01e2:  ldarg.0
    IL_01e3:  ldarg.0
    IL_01e4:  ldfld      int32 Game.SubsystemBlocksScanner::m_pollPass
    IL_01e9:  ldc.i4.1
    IL_01ea:  add
    IL_01eb:  stfld      int32 Game.SubsystemBlocksScanner::m_pollPass
    IL_01f0:  ldarg.0
    IL_01f1:  ldloc.1
    IL_01f2:  ldfld      valuetype [Engine]Engine.Point2 Game.TerrainChunk::Coords
    IL_01f7:  stfld      valuetype [Engine]Engine.Point2 Game.SubsystemBlocksScanner::m_pollChunkCoordinates
    IL_01fc:  ldarg.0
    IL_01fd:  ldfld      float32 Game.SubsystemBlocksScanner::m_pollCount
    IL_0202:  ldc.r4     1.
    IL_0207:  bge        IL_006f

    IL_020c:  ret
  } // end of method SubsystemBlocksScanner::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       241 (0xf1)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Point2 V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_000d:  stfld      class Game.SubsystemTerrain Game.SubsystemBlocksScanner::m_subsystemTerrain
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBlockBehaviors>(bool)
    IL_001f:  stfld      class Game.SubsystemBlockBehaviors Game.SubsystemBlocksScanner::m_subsystemBlockBehaviors
    IL_0024:  ldarg.0
    IL_0025:  ldarg.1
    IL_0026:  ldstr      "PollChunkCoordinates"
    IL_002b:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype [Engine]Engine.Point2>(string)
    IL_0030:  stfld      valuetype [Engine]Engine.Point2 Game.SubsystemBlocksScanner::m_pollChunkCoordinates
    IL_0035:  ldarg.1
    IL_0036:  ldstr      "PollPoint"
    IL_003b:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype [Engine]Engine.Point2>(string)
    IL_0040:  stloc.0
    IL_0041:  ldarg.0
    IL_0042:  ldloc.0
    IL_0043:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0048:  stfld      int32 Game.SubsystemBlocksScanner::m_pollX
    IL_004d:  ldarg.0
    IL_004e:  ldloc.0
    IL_004f:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0054:  stfld      int32 Game.SubsystemBlocksScanner::m_pollZ
    IL_0059:  ldarg.0
    IL_005a:  ldarg.1
    IL_005b:  ldstr      "PollPass"
    IL_0060:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<int32>(string)
    IL_0065:  stfld      int32 Game.SubsystemBlocksScanner::m_pollPass
    IL_006a:  ldarg.0
    IL_006b:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0070:  ldlen
    IL_0071:  conv.i4
    IL_0072:  newarr     class Game.SubsystemPollableBlockBehavior[]
    IL_0077:  stfld      class Game.SubsystemPollableBlockBehavior[][] Game.SubsystemBlocksScanner::m_pollableBehaviorsByContents
    IL_007c:  ldc.i4.0
    IL_007d:  stloc.1
    IL_007e:  br.s       IL_00e5

    IL_0080:  ldarg.0
    IL_0081:  ldfld      class Game.SubsystemPollableBlockBehavior[][] Game.SubsystemBlocksScanner::m_pollableBehaviorsByContents
    IL_0086:  ldloc.1
    IL_0087:  ldarg.0
    IL_0088:  ldfld      class Game.SubsystemBlockBehaviors Game.SubsystemBlocksScanner::m_subsystemBlockBehaviors
    IL_008d:  ldloc.1
    IL_008e:  callvirt   instance class Game.SubsystemBlockBehavior[] Game.SubsystemBlockBehaviors::GetBlockBehaviors(int32)
    IL_0093:  ldsfld     class [System.Runtime]System.Func`2<class Game.SubsystemBlockBehavior,bool> Game.SubsystemBlocksScanner/'<>c'::'<>9__15_0'
    IL_0098:  dup
    IL_0099:  brtrue.s   IL_00b2

    IL_009b:  pop
    IL_009c:  ldsfld     class Game.SubsystemBlocksScanner/'<>c' Game.SubsystemBlocksScanner/'<>c'::'<>9'
    IL_00a1:  ldftn      instance bool Game.SubsystemBlocksScanner/'<>c'::'<Load>b__15_0'(class Game.SubsystemBlockBehavior)
    IL_00a7:  newobj     instance void class [System.Runtime]System.Func`2<class Game.SubsystemBlockBehavior,bool>::.ctor(object,
                                                                                                                          native int)
    IL_00ac:  dup
    IL_00ad:  stsfld     class [System.Runtime]System.Func`2<class Game.SubsystemBlockBehavior,bool> Game.SubsystemBlocksScanner/'<>c'::'<>9__15_0'
    IL_00b2:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class Game.SubsystemBlockBehavior>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                           class [System.Runtime]System.Func`2<!!0,bool>)
    IL_00b7:  ldsfld     class [System.Runtime]System.Func`2<class Game.SubsystemBlockBehavior,class Game.SubsystemPollableBlockBehavior> Game.SubsystemBlocksScanner/'<>c'::'<>9__15_1'
    IL_00bc:  dup
    IL_00bd:  brtrue.s   IL_00d6

    IL_00bf:  pop
    IL_00c0:  ldsfld     class Game.SubsystemBlocksScanner/'<>c' Game.SubsystemBlocksScanner/'<>c'::'<>9'
    IL_00c5:  ldftn      instance class Game.SubsystemPollableBlockBehavior Game.SubsystemBlocksScanner/'<>c'::'<Load>b__15_1'(class Game.SubsystemBlockBehavior)
    IL_00cb:  newobj     instance void class [System.Runtime]System.Func`2<class Game.SubsystemBlockBehavior,class Game.SubsystemPollableBlockBehavior>::.ctor(object,
                                                                                                                                                               native int)
    IL_00d0:  dup
    IL_00d1:  stsfld     class [System.Runtime]System.Func`2<class Game.SubsystemBlockBehavior,class Game.SubsystemPollableBlockBehavior> Game.SubsystemBlocksScanner/'<>c'::'<>9__15_1'
    IL_00d6:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!1> [System.Linq]System.Linq.Enumerable::Select<class Game.SubsystemBlockBehavior,class Game.SubsystemPollableBlockBehavior>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                                      class [System.Runtime]System.Func`2<!!0,!!1>)
    IL_00db:  call       !!0[] [System.Linq]System.Linq.Enumerable::ToArray<class Game.SubsystemPollableBlockBehavior>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_00e0:  stelem.ref
    IL_00e1:  ldloc.1
    IL_00e2:  ldc.i4.1
    IL_00e3:  add
    IL_00e4:  stloc.1
    IL_00e5:  ldloc.1
    IL_00e6:  ldarg.0
    IL_00e7:  ldfld      class Game.SubsystemPollableBlockBehavior[][] Game.SubsystemBlocksScanner::m_pollableBehaviorsByContents
    IL_00ec:  ldlen
    IL_00ed:  conv.i4
    IL_00ee:  blt.s      IL_0080

    IL_00f0:  ret
  } // end of method SubsystemBlocksScanner::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       63 (0x3f)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "PollChunkCoordinates"
    IL_0006:  ldarg.0
    IL_0007:  ldfld      valuetype [Engine]Engine.Point2 Game.SubsystemBlocksScanner::m_pollChunkCoordinates
    IL_000c:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype [Engine]Engine.Point2>(string,
                                                                                                                                   !!0)
    IL_0011:  ldarg.1
    IL_0012:  ldstr      "PollPoint"
    IL_0017:  ldarg.0
    IL_0018:  ldfld      int32 Game.SubsystemBlocksScanner::m_pollX
    IL_001d:  ldarg.0
    IL_001e:  ldfld      int32 Game.SubsystemBlocksScanner::m_pollZ
    IL_0023:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_0028:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype [Engine]Engine.Point2>(string,
                                                                                                                                   !!0)
    IL_002d:  ldarg.1
    IL_002e:  ldstr      "PollPass"
    IL_0033:  ldarg.0
    IL_0034:  ldfld      int32 Game.SubsystemBlocksScanner::m_pollPass
    IL_0039:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<int32>(string,
                                                                                                         !!0)
    IL_003e:  ret
  } // end of method SubsystemBlocksScanner::Save

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_0006:  ret
  } // end of method SubsystemBlocksScanner::.ctor

  .event class [System.Runtime]System.Action`1<class Game.TerrainChunk> ScanningChunkCompleted
  {
    .addon instance void Game.SubsystemBlocksScanner::add_ScanningChunkCompleted(class [System.Runtime]System.Action`1<class Game.TerrainChunk>)
    .removeon instance void Game.SubsystemBlocksScanner::remove_ScanningChunkCompleted(class [System.Runtime]System.Action`1<class Game.TerrainChunk>)
  } // end of event SubsystemBlocksScanner::ScanningChunkCompleted
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemBlocksScanner::get_UpdateOrder()
  } // end of property SubsystemBlocksScanner::UpdateOrder
} // end of class Game.SubsystemBlocksScanner