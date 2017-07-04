.class public auto ansi beforefieldinit Game.SubsystemWoodBlockBehavior
       extends Game.SubsystemBlockBehavior
       implements Game.IUpdateable
{
  .field private static literal int32 m_radius = int32(0x00000003)
  .field private static literal int32 m_maxLeavesToCheck = int32(0x00001388)
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class [System.Collections]System.Collections.Generic.HashSet`1<valuetype [Engine]Engine.Point3> m_leavesToCheck
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  ret
  } // end of method SubsystemWoodBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance void 
          OnBlockRemoved(int32 'value',
                         int32 newValue,
                         int32 x,
                         int32 y,
                         int32 z) cil managed
  {
    // 代码大小       266 (0x10a)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             class Game.TerrainChunk V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemGameInfo Game.SubsystemWoodBlockBehavior::m_subsystemGameInfo
    IL_0006:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_000b:  ldfld      valuetype Game.EnvironmentBehaviorMode Game.WorldSettings::EnvironmentBehaviorMode
    IL_0010:  brfalse.s  IL_0013

    IL_0012:  ret

    IL_0013:  ldarg.0
    IL_0014:  ldfld      class [System.Collections]System.Collections.Generic.HashSet`1<valuetype [Engine]Engine.Point3> Game.SubsystemWoodBlockBehavior::m_leavesToCheck
    IL_0019:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.HashSet`1<valuetype [Engine]Engine.Point3>::get_Count()
    IL_001e:  ldc.i4     0x1388
    IL_0023:  bge        IL_0109

    IL_0028:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_002d:  ldarg.1
    IL_002e:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0033:  ldelem.ref
    IL_0034:  isinst     Game.WoodBlock
    IL_0039:  brfalse    IL_0109

    IL_003e:  ldarg.3
    IL_003f:  ldc.i4.3
    IL_0040:  sub
    IL_0041:  ldarg.s    y
    IL_0043:  ldc.i4.3
    IL_0044:  sub
    IL_0045:  ldc.i4.0
    IL_0046:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_004b:  stloc.0
    IL_004c:  ldarg.s    z
    IL_004e:  ldc.i4.3
    IL_004f:  sub
    IL_0050:  stloc.1
    IL_0051:  ldarg.3
    IL_0052:  ldc.i4.3
    IL_0053:  add
    IL_0054:  stloc.2
    IL_0055:  ldarg.s    y
    IL_0057:  ldc.i4.3
    IL_0058:  add
    IL_0059:  ldc.i4.s   127
    IL_005b:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0060:  stloc.3
    IL_0061:  ldarg.s    z
    IL_0063:  ldc.i4.3
    IL_0064:  add
    IL_0065:  stloc.s    V_4
    IL_0067:  stloc.s    V_5
    IL_0069:  br         IL_0101

    IL_006e:  ldloc.1
    IL_006f:  stloc.s    V_6
    IL_0071:  br.s       IL_00f2

    IL_0073:  ldarg.0
    IL_0074:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0079:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_007e:  ldloc.s    V_5
    IL_0080:  ldloc.s    V_6
    IL_0082:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_0087:  stloc.s    V_7
    IL_0089:  ldloc.s    V_7
    IL_008b:  brfalse.s  IL_00ec

    IL_008d:  ldloc.s    V_5
    IL_008f:  ldc.i4.s   15
    IL_0091:  and
    IL_0092:  ldc.i4.0
    IL_0093:  ldloc.s    V_6
    IL_0095:  ldc.i4.s   15
    IL_0097:  and
    IL_0098:  call       int32 Game.TerrainChunk::CalculateCellIndex(int32,
                                                                     int32,
                                                                     int32)
    IL_009d:  stloc.s    V_8
    IL_009f:  ldloc.0
    IL_00a0:  stloc.s    V_9
    IL_00a2:  br.s       IL_00e7

    IL_00a4:  ldloc.s    V_7
    IL_00a6:  ldloc.s    V_8
    IL_00a8:  ldloc.s    V_9
    IL_00aa:  add
    IL_00ab:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32)
    IL_00b0:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_00b5:  stloc.s    V_10
    IL_00b7:  ldloc.s    V_10
    IL_00b9:  brfalse.s  IL_00e1

    IL_00bb:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00c0:  ldloc.s    V_10
    IL_00c2:  ldelem.ref
    IL_00c3:  isinst     Game.LeavesBlock
    IL_00c8:  brfalse.s  IL_00e1

    IL_00ca:  ldarg.0
    IL_00cb:  ldfld      class [System.Collections]System.Collections.Generic.HashSet`1<valuetype [Engine]Engine.Point3> Game.SubsystemWoodBlockBehavior::m_leavesToCheck
    IL_00d0:  ldloc.s    V_5
    IL_00d2:  ldloc.s    V_9
    IL_00d4:  ldloc.s    V_6
    IL_00d6:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_00db:  callvirt   instance bool class [System.Collections]System.Collections.Generic.HashSet`1<valuetype [Engine]Engine.Point3>::Add(!0)
    IL_00e0:  pop
    IL_00e1:  ldloc.s    V_9
    IL_00e3:  ldc.i4.1
    IL_00e4:  add
    IL_00e5:  stloc.s    V_9
    IL_00e7:  ldloc.s    V_9
    IL_00e9:  ldloc.3
    IL_00ea:  ble.s      IL_00a4

    IL_00ec:  ldloc.s    V_6
    IL_00ee:  ldc.i4.1
    IL_00ef:  add
    IL_00f0:  stloc.s    V_6
    IL_00f2:  ldloc.s    V_6
    IL_00f4:  ldloc.s    V_4
    IL_00f6:  ble        IL_0073

    IL_00fb:  ldloc.s    V_5
    IL_00fd:  ldc.i4.1
    IL_00fe:  add
    IL_00ff:  stloc.s    V_5
    IL_0101:  ldloc.s    V_5
    IL_0103:  ldloc.2
    IL_0104:  ble        IL_006e

    IL_0109:  ret
  } // end of method SubsystemWoodBlockBehavior::OnBlockRemoved

  .method public hidebysig virtual instance void 
          OnChunkDiscarding(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       219 (0xdb)
    .maxstack  2
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3> V_4,
             valuetype [System.Collections]System.Collections.Generic.HashSet`1/Enumerator<valuetype [Engine]Engine.Point3> V_5,
             valuetype [Engine]Engine.Point3 V_6,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3> V_7,
             valuetype [Engine]Engine.Point3 V_8)
    IL_0000:  ldarg.1
    IL_0001:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0006:  ldfld      int32 [Engine]Engine.Point2::X
    IL_000b:  ldc.i4.s   16
    IL_000d:  sub
    IL_000e:  stloc.0
    IL_000f:  ldarg.1
    IL_0010:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0015:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_001a:  ldc.i4.s   16
    IL_001c:  sub
    IL_001d:  stloc.1
    IL_001e:  ldarg.1
    IL_001f:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0024:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0029:  ldc.i4.s   32
    IL_002b:  add
    IL_002c:  stloc.2
    IL_002d:  ldarg.1
    IL_002e:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0033:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0038:  ldc.i4.s   32
    IL_003a:  add
    IL_003b:  stloc.3
    IL_003c:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::.ctor()
    IL_0041:  stloc.s    V_4
    IL_0043:  ldarg.0
    IL_0044:  ldfld      class [System.Collections]System.Collections.Generic.HashSet`1<valuetype [Engine]Engine.Point3> Game.SubsystemWoodBlockBehavior::m_leavesToCheck
    IL_0049:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.HashSet`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.HashSet`1<valuetype [Engine]Engine.Point3>::GetEnumerator()
    IL_004e:  stloc.s    V_5
    .try
    {
      IL_0050:  br.s       IL_008c

      IL_0052:  ldloca.s   V_5
      IL_0054:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.HashSet`1/Enumerator<valuetype [Engine]Engine.Point3>::get_Current()
      IL_0059:  stloc.s    V_6
      IL_005b:  ldloc.s    V_6
      IL_005d:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0062:  ldloc.0
      IL_0063:  blt.s      IL_008c

      IL_0065:  ldloc.s    V_6
      IL_0067:  ldfld      int32 [Engine]Engine.Point3::X
      IL_006c:  ldloc.2
      IL_006d:  bge.s      IL_008c

      IL_006f:  ldloc.s    V_6
      IL_0071:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0076:  ldloc.1
      IL_0077:  blt.s      IL_008c

      IL_0079:  ldloc.s    V_6
      IL_007b:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0080:  ldloc.3
      IL_0081:  bge.s      IL_008c

      IL_0083:  ldloc.s    V_4
      IL_0085:  ldloc.s    V_6
      IL_0087:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::Add(!0)
      IL_008c:  ldloca.s   V_5
      IL_008e:  call       instance bool valuetype [System.Collections]System.Collections.Generic.HashSet`1/Enumerator<valuetype [Engine]Engine.Point3>::MoveNext()
      IL_0093:  brtrue.s   IL_0052

      IL_0095:  leave.s    IL_00a5

    }  // end .try
    finally
    {
      IL_0097:  ldloca.s   V_5
      IL_0099:  constrained. valuetype [System.Collections]System.Collections.Generic.HashSet`1/Enumerator<valuetype [Engine]Engine.Point3>
      IL_009f:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00a4:  endfinally
    }  // end handler
    IL_00a5:  ldloc.s    V_4
    IL_00a7:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::GetEnumerator()
    IL_00ac:  stloc.s    V_7
    .try
    {
      IL_00ae:  br.s       IL_00c1

      IL_00b0:  ldloca.s   V_7
      IL_00b2:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3>::get_Current()
      IL_00b7:  stloc.s    V_8
      IL_00b9:  ldarg.0
      IL_00ba:  ldloc.s    V_8
      IL_00bc:  call       instance void Game.SubsystemWoodBlockBehavior::DecayLeavesIfNeeded(valuetype [Engine]Engine.Point3)
      IL_00c1:  ldloca.s   V_7
      IL_00c3:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3>::MoveNext()
      IL_00c8:  brtrue.s   IL_00b0

      IL_00ca:  leave.s    IL_00da

    }  // end .try
    finally
    {
      IL_00cc:  ldloca.s   V_7
      IL_00ce:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3>
      IL_00d4:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00d9:  endfinally
    }  // end handler
    IL_00da:  ret
  } // end of method SubsystemWoodBlockBehavior::OnChunkDiscarding

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemWoodBlockBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       126 (0x7e)
    .maxstack  3
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.HashSet`1<valuetype [Engine]Engine.Point3> Game.SubsystemWoodBlockBehavior::m_leavesToCheck
    IL_0006:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.HashSet`1<valuetype [Engine]Engine.Point3>::get_Count()
    IL_000b:  ldc.i4.0
    IL_000c:  ble.s      IL_007d

    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Game.SubsystemTime Game.SubsystemWoodBlockBehavior::m_subsystemTime
    IL_0014:  ldc.r8     20.
    IL_001d:  ldc.r8     0.0
    IL_0026:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_002b:  brfalse.s  IL_007d

    IL_002d:  ldarg.0
    IL_002e:  ldfld      class [System.Collections]System.Collections.Generic.HashSet`1<valuetype [Engine]Engine.Point3> Game.SubsystemWoodBlockBehavior::m_leavesToCheck
    IL_0033:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.HashSet`1<valuetype [Engine]Engine.Point3>::get_Count()
    IL_0038:  conv.r4
    IL_0039:  ldc.r4     0.1
    IL_003e:  mul
    IL_003f:  conv.i4
    IL_0040:  ldc.i4.s   10
    IL_0042:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0047:  ldc.i4     0xc8
    IL_004c:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0051:  stloc.0
    IL_0052:  ldc.i4.0
    IL_0053:  stloc.1
    IL_0054:  br.s       IL_006b

    IL_0056:  ldarg.0
    IL_0057:  ldarg.0
    IL_0058:  ldfld      class [System.Collections]System.Collections.Generic.HashSet`1<valuetype [Engine]Engine.Point3> Game.SubsystemWoodBlockBehavior::m_leavesToCheck
    IL_005d:  call       !!0 [System.Linq]System.Linq.Enumerable::First<valuetype [Engine]Engine.Point3>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0062:  call       instance void Game.SubsystemWoodBlockBehavior::DecayLeavesIfNeeded(valuetype [Engine]Engine.Point3)
    IL_0067:  ldloc.1
    IL_0068:  ldc.i4.1
    IL_0069:  add
    IL_006a:  stloc.1
    IL_006b:  ldloc.1
    IL_006c:  ldloc.0
    IL_006d:  bge.s      IL_007d

    IL_006f:  ldarg.0
    IL_0070:  ldfld      class [System.Collections]System.Collections.Generic.HashSet`1<valuetype [Engine]Engine.Point3> Game.SubsystemWoodBlockBehavior::m_leavesToCheck
    IL_0075:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.HashSet`1<valuetype [Engine]Engine.Point3>::get_Count()
    IL_007a:  ldc.i4.0
    IL_007b:  bgt.s      IL_0056

    IL_007d:  ret
  } // end of method SubsystemWoodBlockBehavior::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       100 (0x64)
    .maxstack  3
    .locals init (string V_0,
             valuetype [Engine]Engine.Point3[] V_1,
             int32 V_2,
             valuetype [Engine]Engine.Point3 V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_0014:  stfld      class Game.SubsystemTime Game.SubsystemWoodBlockBehavior::m_subsystemTime
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0020:  ldc.i4.1
    IL_0021:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_0026:  stfld      class Game.SubsystemGameInfo Game.SubsystemWoodBlockBehavior::m_subsystemGameInfo
    IL_002b:  ldarg.1
    IL_002c:  ldstr      "LeavesToCheck"
    IL_0031:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_0036:  stloc.0
    IL_0037:  ldc.i4.s   59
    IL_0039:  ldloc.0
    IL_003a:  call       !!0[] [Engine]Engine.Serialization.HumanReadableConverter::ValuesListFromString<valuetype [Engine]Engine.Point3>(char,
                                                                                                                                          string)
    IL_003f:  stloc.1
    IL_0040:  ldc.i4.0
    IL_0041:  stloc.2
    IL_0042:  br.s       IL_005d

    IL_0044:  ldloc.1
    IL_0045:  ldloc.2
    IL_0046:  ldelem     [Engine]Engine.Point3
    IL_004b:  stloc.3
    IL_004c:  ldarg.0
    IL_004d:  ldfld      class [System.Collections]System.Collections.Generic.HashSet`1<valuetype [Engine]Engine.Point3> Game.SubsystemWoodBlockBehavior::m_leavesToCheck
    IL_0052:  ldloc.3
    IL_0053:  callvirt   instance bool class [System.Collections]System.Collections.Generic.HashSet`1<valuetype [Engine]Engine.Point3>::Add(!0)
    IL_0058:  pop
    IL_0059:  ldloc.2
    IL_005a:  ldc.i4.1
    IL_005b:  add
    IL_005c:  stloc.2
    IL_005d:  ldloc.2
    IL_005e:  ldloc.1
    IL_005f:  ldlen
    IL_0060:  conv.i4
    IL_0061:  blt.s      IL_0044

    IL_0063:  ret
  } // end of method SubsystemWoodBlockBehavior::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       39 (0x27)
    .maxstack  3
    .locals init (string V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0007:  ldc.i4.s   59
    IL_0009:  ldarg.0
    IL_000a:  ldfld      class [System.Collections]System.Collections.Generic.HashSet`1<valuetype [Engine]Engine.Point3> Game.SubsystemWoodBlockBehavior::m_leavesToCheck
    IL_000f:  call       !!0[] [System.Linq]System.Linq.Enumerable::ToArray<valuetype [Engine]Engine.Point3>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0014:  call       string [Engine]Engine.Serialization.HumanReadableConverter::ValuesListToString<valuetype [Engine]Engine.Point3>(char,
                                                                                                                                         !!0[])
    IL_0019:  stloc.0
    IL_001a:  ldarg.1
    IL_001b:  ldstr      "LeavesToCheck"
    IL_0020:  ldloc.0
    IL_0021:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                          !!0)
    IL_0026:  ret
  } // end of method SubsystemWoodBlockBehavior::Save

  .method private hidebysig instance void 
          DecayLeavesIfNeeded(valuetype [Engine]Engine.Point3 p) cil managed
  {
    // 代码大小       306 (0x132)
    .maxstack  6
    .locals init (bool V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             class Game.TerrainChunk V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.HashSet`1<valuetype [Engine]Engine.Point3> Game.SubsystemWoodBlockBehavior::m_leavesToCheck
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance bool class [System.Collections]System.Collections.Generic.HashSet`1<valuetype [Engine]Engine.Point3>::Remove(!0)
    IL_000c:  pop
    IL_000d:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0012:  ldarg.0
    IL_0013:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0018:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_001d:  ldarg.1
    IL_001e:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0023:  ldarg.1
    IL_0024:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0029:  ldarg.1
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_002f:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_0034:  ldelem.ref
    IL_0035:  isinst     Game.LeavesBlock
    IL_003a:  brfalse    IL_0131

    IL_003f:  ldc.i4.0
    IL_0040:  stloc.0
    IL_0041:  ldarg.1
    IL_0042:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0047:  ldc.i4.3
    IL_0048:  sub
    IL_0049:  ldarg.1
    IL_004a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_004f:  ldc.i4.3
    IL_0050:  sub
    IL_0051:  ldc.i4.0
    IL_0052:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0057:  stloc.1
    IL_0058:  ldarg.1
    IL_0059:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_005e:  ldc.i4.3
    IL_005f:  sub
    IL_0060:  stloc.2
    IL_0061:  ldarg.1
    IL_0062:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0067:  ldc.i4.3
    IL_0068:  add
    IL_0069:  stloc.3
    IL_006a:  ldarg.1
    IL_006b:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0070:  ldc.i4.3
    IL_0071:  add
    IL_0072:  ldc.i4.s   127
    IL_0074:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0079:  stloc.s    V_4
    IL_007b:  ldarg.1
    IL_007c:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0081:  ldc.i4.3
    IL_0082:  add
    IL_0083:  stloc.s    V_5
    IL_0085:  stloc.s    V_6
    IL_0087:  br.s       IL_0107

    IL_0089:  ldloc.2
    IL_008a:  stloc.s    V_7
    IL_008c:  br.s       IL_00fb

    IL_008e:  ldarg.0
    IL_008f:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0094:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0099:  ldloc.s    V_6
    IL_009b:  ldloc.s    V_7
    IL_009d:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_00a2:  stloc.s    V_8
    IL_00a4:  ldloc.s    V_8
    IL_00a6:  brfalse.s  IL_00f5

    IL_00a8:  ldloc.s    V_6
    IL_00aa:  ldc.i4.s   15
    IL_00ac:  and
    IL_00ad:  ldc.i4.0
    IL_00ae:  ldloc.s    V_7
    IL_00b0:  ldc.i4.s   15
    IL_00b2:  and
    IL_00b3:  call       int32 Game.TerrainChunk::CalculateCellIndex(int32,
                                                                     int32,
                                                                     int32)
    IL_00b8:  stloc.s    V_9
    IL_00ba:  ldloc.1
    IL_00bb:  stloc.s    V_10
    IL_00bd:  br.s       IL_00ef

    IL_00bf:  ldloc.s    V_8
    IL_00c1:  ldloc.s    V_9
    IL_00c3:  ldloc.s    V_10
    IL_00c5:  add
    IL_00c6:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32)
    IL_00cb:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_00d0:  stloc.s    V_11
    IL_00d2:  ldloc.s    V_11
    IL_00d4:  brfalse.s  IL_00e9

    IL_00d6:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00db:  ldloc.s    V_11
    IL_00dd:  ldelem.ref
    IL_00de:  isinst     Game.WoodBlock
    IL_00e3:  brfalse.s  IL_00e9

    IL_00e5:  ldc.i4.1
    IL_00e6:  stloc.0
    IL_00e7:  br.s       IL_010f

    IL_00e9:  ldloc.s    V_10
    IL_00eb:  ldc.i4.1
    IL_00ec:  add
    IL_00ed:  stloc.s    V_10
    IL_00ef:  ldloc.s    V_10
    IL_00f1:  ldloc.s    V_4
    IL_00f3:  ble.s      IL_00bf

    IL_00f5:  ldloc.s    V_7
    IL_00f7:  ldc.i4.1
    IL_00f8:  add
    IL_00f9:  stloc.s    V_7
    IL_00fb:  ldloc.s    V_7
    IL_00fd:  ldloc.s    V_5
    IL_00ff:  ble.s      IL_008e

    IL_0101:  ldloc.s    V_6
    IL_0103:  ldc.i4.1
    IL_0104:  add
    IL_0105:  stloc.s    V_6
    IL_0107:  ldloc.s    V_6
    IL_0109:  ldloc.3
    IL_010a:  ble        IL_0089

    IL_010f:  ldloc.0
    IL_0110:  brtrue.s   IL_0131

    IL_0112:  ldarg.0
    IL_0113:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0118:  ldarg.1
    IL_0119:  ldfld      int32 [Engine]Engine.Point3::X
    IL_011e:  ldarg.1
    IL_011f:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0124:  ldarg.1
    IL_0125:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_012a:  ldc.i4.0
    IL_012b:  ldc.i4.1
    IL_012c:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_0131:  ret
  } // end of method SubsystemWoodBlockBehavior::DecayLeavesIfNeeded

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.HashSet`1<valuetype [Engine]Engine.Point3>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.HashSet`1<valuetype [Engine]Engine.Point3> Game.SubsystemWoodBlockBehavior::m_leavesToCheck
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0011:  ret
  } // end of method SubsystemWoodBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemWoodBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemWoodBlockBehavior::HandledBlocks
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemWoodBlockBehavior::get_UpdateOrder()
  } // end of property SubsystemWoodBlockBehavior::UpdateOrder
} // end of class Game.SubsystemWoodBlockBehavior