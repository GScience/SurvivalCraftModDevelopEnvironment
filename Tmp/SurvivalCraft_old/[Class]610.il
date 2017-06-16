.class public auto ansi beforefieldinit Game.SubsystemBlocksScanner
       extends [EntitySystem]GameEntitySystem.Subsystem
       implements Game.IUpdateable
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.SubsystemBlocksScanner/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<class Game.SubsystemBlockBehavior,bool> '<>9__10_0'
    .field public static class [System.Runtime]System.Func`2<class Game.SubsystemBlockBehavior,class Game.SubsystemPollableBlockBehavior> '<>9__10_1'
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
            '<Load>b__10_0'(class Game.SubsystemBlockBehavior s) cil managed
    {
      // 代码大小       10 (0xa)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  isinst     Game.SubsystemPollableBlockBehavior
      IL_0006:  ldnull
      IL_0007:  cgt.un
      IL_0009:  ret
    } // end of method '<>c'::'<Load>b__10_0'

    .method assembly hidebysig instance class Game.SubsystemPollableBlockBehavior 
            '<Load>b__10_1'(class Game.SubsystemBlockBehavior s) cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  castclass  Game.SubsystemPollableBlockBehavior
      IL_0006:  ret
    } // end of method '<>c'::'<Load>b__10_1'

  } // end of class '<>c'

  .field private class Game.SubsystemPollableBlockBehavior[][] m_pollableBehaviorsByContents
  .field private int32 m_pollX
  .field private int32 m_pollZ
  .field private int32 m_pollPass
  .field private float32 m_pollCount
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemBlockBehaviors m_subsystemBlockBehaviors
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
    // 代码大小       373 (0x175)
    .maxstack  6
    .locals init (class Game.TerrainData V_0,
             int32 V_1,
             int32 V_2,
             class Game.TerrainChunk V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             class Game.SubsystemPollableBlockBehavior[] V_8,
             int32 V_9)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemBlocksScanner::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldarg.0
    IL_000e:  ldfld      float32 Game.SubsystemBlocksScanner::m_pollCount
    IL_0013:  ldloc.0
    IL_0014:  callvirt   instance int32 Game.TerrainData::get_SizeX()
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance int32 Game.TerrainData::get_SizeZ()
    IL_001f:  mul
    IL_0020:  conv.r4
    IL_0021:  ldarg.1
    IL_0022:  mul
    IL_0023:  ldc.r4     60.
    IL_0028:  div
    IL_0029:  ldc.r4     0.0
    IL_002e:  ldc.r4     100.
    IL_0033:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0038:  add
    IL_0039:  stfld      float32 Game.SubsystemBlocksScanner::m_pollCount
    IL_003e:  br         IL_014d

    IL_0043:  ldarg.0
    IL_0044:  ldfld      int32 Game.SubsystemBlocksScanner::m_pollX
    IL_0049:  ldloc.0
    IL_004a:  callvirt   instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
    IL_004f:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0054:  add
    IL_0055:  stloc.1
    IL_0056:  br         IL_0127

    IL_005b:  ldarg.0
    IL_005c:  ldfld      int32 Game.SubsystemBlocksScanner::m_pollZ
    IL_0061:  ldloc.0
    IL_0062:  callvirt   instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
    IL_0067:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_006c:  add
    IL_006d:  stloc.2
    IL_006e:  ldarg.0
    IL_006f:  ldfld      float32 Game.SubsystemBlocksScanner::m_pollCount
    IL_0074:  ldc.r4     1.
    IL_0079:  bge.un.s   IL_007c

    IL_007b:  ret

    IL_007c:  ldarg.0
    IL_007d:  ldarg.0
    IL_007e:  ldfld      float32 Game.SubsystemBlocksScanner::m_pollCount
    IL_0083:  ldc.r4     1.
    IL_0088:  sub
    IL_0089:  stfld      float32 Game.SubsystemBlocksScanner::m_pollCount
    IL_008e:  ldarg.0
    IL_008f:  ldfld      class Game.SubsystemTerrain Game.SubsystemBlocksScanner::m_subsystemTerrain
    IL_0094:  ldloc.1
    IL_0095:  ldloc.2
    IL_0096:  callvirt   instance class Game.TerrainChunk Game.SubsystemTerrain::CellToChunk(int32,
                                                                                             int32)
    IL_009b:  stloc.3
    IL_009c:  ldloc.3
    IL_009d:  brfalse.s  IL_0119

    IL_009f:  ldloc.3
    IL_00a0:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_00a5:  ldc.i4.4
    IL_00a6:  ble.s      IL_0119

    IL_00a8:  ldloc.0
    IL_00a9:  ldloc.1
    IL_00aa:  ldc.i4.0
    IL_00ab:  ldloc.2
    IL_00ac:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_00b1:  stloc.s    V_4
    IL_00b3:  ldc.i4.0
    IL_00b4:  stloc.s    V_5
    IL_00b6:  br.s       IL_010f

    IL_00b8:  ldloc.0
    IL_00b9:  ldloc.s    V_4
    IL_00bb:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32)
    IL_00c0:  stloc.s    V_6
    IL_00c2:  ldloc.s    V_6
    IL_00c4:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_00c9:  stloc.s    V_7
    IL_00cb:  ldloc.s    V_7
    IL_00cd:  brfalse.s  IL_0103

    IL_00cf:  ldarg.0
    IL_00d0:  ldfld      class Game.SubsystemPollableBlockBehavior[][] Game.SubsystemBlocksScanner::m_pollableBehaviorsByContents
    IL_00d5:  ldloc.s    V_7
    IL_00d7:  ldelem.ref
    IL_00d8:  stloc.s    V_8
    IL_00da:  ldc.i4.0
    IL_00db:  stloc.s    V_9
    IL_00dd:  br.s       IL_00fb

    IL_00df:  ldloc.s    V_8
    IL_00e1:  ldloc.s    V_9
    IL_00e3:  ldelem.ref
    IL_00e4:  ldloc.s    V_6
    IL_00e6:  ldloc.1
    IL_00e7:  ldloc.s    V_5
    IL_00e9:  ldloc.2
    IL_00ea:  ldarg.0
    IL_00eb:  ldfld      int32 Game.SubsystemBlocksScanner::m_pollPass
    IL_00f0:  callvirt   instance void Game.SubsystemPollableBlockBehavior::OnPoll(int32,
                                                                                   int32,
                                                                                   int32,
                                                                                   int32,
                                                                                   int32)
    IL_00f5:  ldloc.s    V_9
    IL_00f7:  ldc.i4.1
    IL_00f8:  add
    IL_00f9:  stloc.s    V_9
    IL_00fb:  ldloc.s    V_9
    IL_00fd:  ldloc.s    V_8
    IL_00ff:  ldlen
    IL_0100:  conv.i4
    IL_0101:  blt.s      IL_00df

    IL_0103:  ldloc.s    V_5
    IL_0105:  ldc.i4.1
    IL_0106:  add
    IL_0107:  stloc.s    V_5
    IL_0109:  ldloc.s    V_4
    IL_010b:  ldc.i4.1
    IL_010c:  add
    IL_010d:  stloc.s    V_4
    IL_010f:  ldloc.s    V_5
    IL_0111:  ldloc.0
    IL_0112:  callvirt   instance int32 Game.TerrainData::get_SizeY()
    IL_0117:  blt.s      IL_00b8

    IL_0119:  ldarg.0
    IL_011a:  ldarg.0
    IL_011b:  ldfld      int32 Game.SubsystemBlocksScanner::m_pollZ
    IL_0120:  ldc.i4.1
    IL_0121:  add
    IL_0122:  stfld      int32 Game.SubsystemBlocksScanner::m_pollZ
    IL_0127:  ldarg.0
    IL_0128:  ldfld      int32 Game.SubsystemBlocksScanner::m_pollZ
    IL_012d:  ldloc.0
    IL_012e:  callvirt   instance int32 Game.TerrainData::get_SizeZ()
    IL_0133:  blt        IL_005b

    IL_0138:  ldarg.0
    IL_0139:  ldc.i4.0
    IL_013a:  stfld      int32 Game.SubsystemBlocksScanner::m_pollZ
    IL_013f:  ldarg.0
    IL_0140:  ldarg.0
    IL_0141:  ldfld      int32 Game.SubsystemBlocksScanner::m_pollX
    IL_0146:  ldc.i4.1
    IL_0147:  add
    IL_0148:  stfld      int32 Game.SubsystemBlocksScanner::m_pollX
    IL_014d:  ldarg.0
    IL_014e:  ldfld      int32 Game.SubsystemBlocksScanner::m_pollX
    IL_0153:  ldloc.0
    IL_0154:  callvirt   instance int32 Game.TerrainData::get_SizeX()
    IL_0159:  blt        IL_0043

    IL_015e:  ldarg.0
    IL_015f:  ldc.i4.0
    IL_0160:  stfld      int32 Game.SubsystemBlocksScanner::m_pollX
    IL_0165:  ldarg.0
    IL_0166:  ldarg.0
    IL_0167:  ldfld      int32 Game.SubsystemBlocksScanner::m_pollPass
    IL_016c:  ldc.i4.1
    IL_016d:  add
    IL_016e:  stfld      int32 Game.SubsystemBlocksScanner::m_pollPass
    IL_0173:  br.s       IL_014d
  } // end of method SubsystemBlocksScanner::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       224 (0xe0)
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
    IL_0024:  ldarg.1
    IL_0025:  ldstr      "PollPoint"
    IL_002a:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype [Engine]Engine.Point2>(string)
    IL_002f:  stloc.0
    IL_0030:  ldarg.0
    IL_0031:  ldloc.0
    IL_0032:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0037:  stfld      int32 Game.SubsystemBlocksScanner::m_pollX
    IL_003c:  ldarg.0
    IL_003d:  ldloc.0
    IL_003e:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0043:  stfld      int32 Game.SubsystemBlocksScanner::m_pollZ
    IL_0048:  ldarg.0
    IL_0049:  ldarg.1
    IL_004a:  ldstr      "PollPass"
    IL_004f:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<int32>(string)
    IL_0054:  stfld      int32 Game.SubsystemBlocksScanner::m_pollPass
    IL_0059:  ldarg.0
    IL_005a:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_005f:  ldlen
    IL_0060:  conv.i4
    IL_0061:  newarr     class Game.SubsystemPollableBlockBehavior[]
    IL_0066:  stfld      class Game.SubsystemPollableBlockBehavior[][] Game.SubsystemBlocksScanner::m_pollableBehaviorsByContents
    IL_006b:  ldc.i4.0
    IL_006c:  stloc.1
    IL_006d:  br.s       IL_00d4

    IL_006f:  ldarg.0
    IL_0070:  ldfld      class Game.SubsystemPollableBlockBehavior[][] Game.SubsystemBlocksScanner::m_pollableBehaviorsByContents
    IL_0075:  ldloc.1
    IL_0076:  ldarg.0
    IL_0077:  ldfld      class Game.SubsystemBlockBehaviors Game.SubsystemBlocksScanner::m_subsystemBlockBehaviors
    IL_007c:  ldloc.1
    IL_007d:  callvirt   instance class Game.SubsystemBlockBehavior[] Game.SubsystemBlockBehaviors::GetBlockBehaviors(int32)
    IL_0082:  ldsfld     class [System.Runtime]System.Func`2<class Game.SubsystemBlockBehavior,bool> Game.SubsystemBlocksScanner/'<>c'::'<>9__10_0'
    IL_0087:  dup
    IL_0088:  brtrue.s   IL_00a1

    IL_008a:  pop
    IL_008b:  ldsfld     class Game.SubsystemBlocksScanner/'<>c' Game.SubsystemBlocksScanner/'<>c'::'<>9'
    IL_0090:  ldftn      instance bool Game.SubsystemBlocksScanner/'<>c'::'<Load>b__10_0'(class Game.SubsystemBlockBehavior)
    IL_0096:  newobj     instance void class [System.Runtime]System.Func`2<class Game.SubsystemBlockBehavior,bool>::.ctor(object,
                                                                                                                          native int)
    IL_009b:  dup
    IL_009c:  stsfld     class [System.Runtime]System.Func`2<class Game.SubsystemBlockBehavior,bool> Game.SubsystemBlocksScanner/'<>c'::'<>9__10_0'
    IL_00a1:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class Game.SubsystemBlockBehavior>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                           class [System.Runtime]System.Func`2<!!0,bool>)
    IL_00a6:  ldsfld     class [System.Runtime]System.Func`2<class Game.SubsystemBlockBehavior,class Game.SubsystemPollableBlockBehavior> Game.SubsystemBlocksScanner/'<>c'::'<>9__10_1'
    IL_00ab:  dup
    IL_00ac:  brtrue.s   IL_00c5

    IL_00ae:  pop
    IL_00af:  ldsfld     class Game.SubsystemBlocksScanner/'<>c' Game.SubsystemBlocksScanner/'<>c'::'<>9'
    IL_00b4:  ldftn      instance class Game.SubsystemPollableBlockBehavior Game.SubsystemBlocksScanner/'<>c'::'<Load>b__10_1'(class Game.SubsystemBlockBehavior)
    IL_00ba:  newobj     instance void class [System.Runtime]System.Func`2<class Game.SubsystemBlockBehavior,class Game.SubsystemPollableBlockBehavior>::.ctor(object,
                                                                                                                                                               native int)
    IL_00bf:  dup
    IL_00c0:  stsfld     class [System.Runtime]System.Func`2<class Game.SubsystemBlockBehavior,class Game.SubsystemPollableBlockBehavior> Game.SubsystemBlocksScanner/'<>c'::'<>9__10_1'
    IL_00c5:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!1> [System.Linq]System.Linq.Enumerable::Select<class Game.SubsystemBlockBehavior,class Game.SubsystemPollableBlockBehavior>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                                      class [System.Runtime]System.Func`2<!!0,!!1>)
    IL_00ca:  call       !!0[] [System.Linq]System.Linq.Enumerable::ToArray<class Game.SubsystemPollableBlockBehavior>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_00cf:  stelem.ref
    IL_00d0:  ldloc.1
    IL_00d1:  ldc.i4.1
    IL_00d2:  add
    IL_00d3:  stloc.1
    IL_00d4:  ldloc.1
    IL_00d5:  ldarg.0
    IL_00d6:  ldfld      class Game.SubsystemPollableBlockBehavior[][] Game.SubsystemBlocksScanner::m_pollableBehaviorsByContents
    IL_00db:  ldlen
    IL_00dc:  conv.i4
    IL_00dd:  blt.s      IL_006f

    IL_00df:  ret
  } // end of method SubsystemBlocksScanner::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "PollPoint"
    IL_0006:  ldarg.0
    IL_0007:  ldfld      int32 Game.SubsystemBlocksScanner::m_pollX
    IL_000c:  ldarg.0
    IL_000d:  ldfld      int32 Game.SubsystemBlocksScanner::m_pollZ
    IL_0012:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_0017:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype [Engine]Engine.Point2>(string,
                                                                                                                                   !!0)
    IL_001c:  ldarg.1
    IL_001d:  ldstr      "PollPass"
    IL_0022:  ldarg.0
    IL_0023:  ldfld      int32 Game.SubsystemBlocksScanner::m_pollPass
    IL_0028:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<int32>(string,
                                                                                                         !!0)
    IL_002d:  ret
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

  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemBlocksScanner::get_UpdateOrder()
  } // end of property SubsystemBlocksScanner::UpdateOrder
} // end of class Game.SubsystemBlocksScanner