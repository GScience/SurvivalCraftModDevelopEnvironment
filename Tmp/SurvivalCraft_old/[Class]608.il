.class public auto ansi beforefieldinit Game.SubsystemWoodBlockBehavior
       extends Game.SubsystemBlockBehavior
       implements Game.IUpdateable
{
  .field private static literal int32 m_radius = int32(0x00000003)
  .field private static literal int32 m_maxLeavesToCheck = int32(0x00001388)
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemPlayer m_subsystemPlayer
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> m_leavesToCheck
  .field private class Game.Random m_random
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
          OnBlockAdded(int32 'value',
                       int32 oldValue,
                       int32 x,
                       int32 y,
                       int32 z) cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method SubsystemWoodBlockBehavior::OnBlockAdded

  .method public hidebysig virtual instance void 
          OnBlockRemoved(int32 'value',
                         int32 newValue,
                         int32 x,
                         int32 y,
                         int32 z) cil managed
  {
    // 代码大小       401 (0x191)
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
             int32 V_9)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemGameInfo Game.SubsystemWoodBlockBehavior::m_subsystemGameInfo
    IL_0006:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_000b:  ldfld      valuetype Game.EnvironmentBehaviorMode Game.WorldInfo::EnvironmentBehaviorMode
    IL_0010:  brfalse.s  IL_0013

    IL_0012:  ret

    IL_0013:  ldarg.0
    IL_0014:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemWoodBlockBehavior::m_leavesToCheck
    IL_0019:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::get_Count()
    IL_001e:  ldc.i4     0x1388
    IL_0023:  bge        IL_0190

    IL_0028:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_002d:  ldarg.1
    IL_002e:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0033:  ldelem.ref
    IL_0034:  isinst     Game.WoodBlock
    IL_0039:  brfalse    IL_0190

    IL_003e:  ldarg.3
    IL_003f:  ldc.i4.3
    IL_0040:  sub
    IL_0041:  ldarg.0
    IL_0042:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0047:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_004c:  callvirt   instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
    IL_0051:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0056:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_005b:  ldarg.s    y
    IL_005d:  ldc.i4.3
    IL_005e:  sub
    IL_005f:  ldc.i4.0
    IL_0060:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0065:  stloc.0
    IL_0066:  ldarg.s    z
    IL_0068:  ldc.i4.3
    IL_0069:  sub
    IL_006a:  ldarg.0
    IL_006b:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0070:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0075:  callvirt   instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
    IL_007a:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_007f:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0084:  stloc.1
    IL_0085:  ldarg.3
    IL_0086:  ldc.i4.3
    IL_0087:  add
    IL_0088:  ldarg.0
    IL_0089:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_008e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0093:  callvirt   instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
    IL_0098:  ldfld      int32 [Engine]Engine.Point2::X
    IL_009d:  ldarg.0
    IL_009e:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_00a3:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00a8:  callvirt   instance int32 Game.TerrainData::get_SizeX()
    IL_00ad:  add
    IL_00ae:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_00b3:  stloc.2
    IL_00b4:  ldarg.s    y
    IL_00b6:  ldc.i4.3
    IL_00b7:  add
    IL_00b8:  ldarg.0
    IL_00b9:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_00be:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00c3:  callvirt   instance int32 Game.TerrainData::get_SizeY()
    IL_00c8:  ldc.i4.1
    IL_00c9:  sub
    IL_00ca:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_00cf:  stloc.3
    IL_00d0:  ldarg.s    z
    IL_00d2:  ldc.i4.3
    IL_00d3:  add
    IL_00d4:  ldarg.0
    IL_00d5:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_00da:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00df:  callvirt   instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
    IL_00e4:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_00e9:  ldarg.0
    IL_00ea:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_00ef:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00f4:  callvirt   instance int32 Game.TerrainData::get_SizeZ()
    IL_00f9:  add
    IL_00fa:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_00ff:  stloc.s    V_4
    IL_0101:  stloc.s    V_5
    IL_0103:  br         IL_0188

    IL_0108:  ldloc.1
    IL_0109:  stloc.s    V_6
    IL_010b:  br.s       IL_017c

    IL_010d:  ldarg.0
    IL_010e:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0113:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0118:  ldloc.s    V_5
    IL_011a:  ldc.i4.0
    IL_011b:  ldloc.s    V_6
    IL_011d:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_0122:  stloc.s    V_7
    IL_0124:  ldloc.0
    IL_0125:  stloc.s    V_8
    IL_0127:  br.s       IL_0171

    IL_0129:  ldarg.0
    IL_012a:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_012f:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0134:  ldloc.s    V_7
    IL_0136:  ldloc.s    V_8
    IL_0138:  add
    IL_0139:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32)
    IL_013e:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0143:  stloc.s    V_9
    IL_0145:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_014a:  ldloc.s    V_9
    IL_014c:  ldelem.ref
    IL_014d:  isinst     Game.LeavesBlock
    IL_0152:  brfalse.s  IL_016b

    IL_0154:  ldarg.0
    IL_0155:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemWoodBlockBehavior::m_leavesToCheck
    IL_015a:  ldloc.s    V_5
    IL_015c:  ldloc.s    V_8
    IL_015e:  ldloc.s    V_6
    IL_0160:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0165:  ldc.i4.1
    IL_0166:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::set_Item(!0,
                                                                                                                                                         !1)
    IL_016b:  ldloc.s    V_8
    IL_016d:  ldc.i4.1
    IL_016e:  add
    IL_016f:  stloc.s    V_8
    IL_0171:  ldloc.s    V_8
    IL_0173:  ldloc.3
    IL_0174:  ble.s      IL_0129

    IL_0176:  ldloc.s    V_6
    IL_0178:  ldc.i4.1
    IL_0179:  add
    IL_017a:  stloc.s    V_6
    IL_017c:  ldloc.s    V_6
    IL_017e:  ldloc.s    V_4
    IL_0180:  ble.s      IL_010d

    IL_0182:  ldloc.s    V_5
    IL_0184:  ldc.i4.1
    IL_0185:  add
    IL_0186:  stloc.s    V_5
    IL_0188:  ldloc.s    V_5
    IL_018a:  ldloc.2
    IL_018b:  ble        IL_0108

    IL_0190:  ret
  } // end of method SubsystemWoodBlockBehavior::OnBlockRemoved

  .method public hidebysig virtual instance void 
          OnChunkDiscarding(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       224 (0xe0)
    .maxstack  2
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3> V_4,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,bool> V_5,
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
    IL_0044:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemWoodBlockBehavior::m_leavesToCheck
    IL_0049:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::get_Keys()
    IL_004e:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<valuetype [Engine]Engine.Point3,bool>::GetEnumerator()
    IL_0053:  stloc.s    V_5
    .try
    {
      IL_0055:  br.s       IL_0091

      IL_0057:  ldloca.s   V_5
      IL_0059:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,bool>::get_Current()
      IL_005e:  stloc.s    V_6
      IL_0060:  ldloc.s    V_6
      IL_0062:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0067:  ldloc.0
      IL_0068:  blt.s      IL_0091

      IL_006a:  ldloc.s    V_6
      IL_006c:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0071:  ldloc.2
      IL_0072:  bge.s      IL_0091

      IL_0074:  ldloc.s    V_6
      IL_0076:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_007b:  ldloc.1
      IL_007c:  blt.s      IL_0091

      IL_007e:  ldloc.s    V_6
      IL_0080:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0085:  ldloc.3
      IL_0086:  bge.s      IL_0091

      IL_0088:  ldloc.s    V_4
      IL_008a:  ldloc.s    V_6
      IL_008c:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::Add(!0)
      IL_0091:  ldloca.s   V_5
      IL_0093:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,bool>::MoveNext()
      IL_0098:  brtrue.s   IL_0057

      IL_009a:  leave.s    IL_00aa

    }  // end .try
    finally
    {
      IL_009c:  ldloca.s   V_5
      IL_009e:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,bool>
      IL_00a4:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00a9:  endfinally
    }  // end handler
    IL_00aa:  ldloc.s    V_4
    IL_00ac:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::GetEnumerator()
    IL_00b1:  stloc.s    V_7
    .try
    {
      IL_00b3:  br.s       IL_00c6

      IL_00b5:  ldloca.s   V_7
      IL_00b7:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3>::get_Current()
      IL_00bc:  stloc.s    V_8
      IL_00be:  ldarg.0
      IL_00bf:  ldloc.s    V_8
      IL_00c1:  call       instance void Game.SubsystemWoodBlockBehavior::DecayLeavesIfNeeded(valuetype [Engine]Engine.Point3)
      IL_00c6:  ldloca.s   V_7
      IL_00c8:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3>::MoveNext()
      IL_00cd:  brtrue.s   IL_00b5

      IL_00cf:  leave.s    IL_00df

    }  // end .try
    finally
    {
      IL_00d1:  ldloca.s   V_7
      IL_00d3:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3>
      IL_00d9:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00de:  endfinally
    }  // end handler
    IL_00df:  ret
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
    // 代码大小       152 (0x98)
    .maxstack  4
    .locals init (class Game.ComponentPlayer V_0,
             float64 V_1,
             int32 V_2,
             int32 V_3,
             valuetype [Engine]Engine.Point3 V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemWoodBlockBehavior::m_leavesToCheck
    IL_0006:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::get_Count()
    IL_000b:  ldc.i4.0
    IL_000c:  ble        IL_0097

    IL_0011:  ldarg.0
    IL_0012:  ldfld      class Game.SubsystemPlayer Game.SubsystemWoodBlockBehavior::m_subsystemPlayer
    IL_0017:  callvirt   instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_001c:  stloc.0
    IL_001d:  ldloc.0
    IL_001e:  brfalse.s  IL_0097

    IL_0020:  ldloc.0
    IL_0021:  callvirt   instance class Game.ComponentSleep Game.ComponentPlayer::get_ComponentSleep()
    IL_0026:  callvirt   instance bool Game.ComponentSleep::get_IsSleeping()
    IL_002b:  brfalse.s  IL_0097

    IL_002d:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0032:  stloc.1
    IL_0033:  ldc.i4.0
    IL_0034:  stloc.2
    IL_0035:  br.s       IL_0077

    IL_0037:  ldarg.0
    IL_0038:  ldfld      class Game.Random Game.SubsystemWoodBlockBehavior::m_random
    IL_003d:  ldc.i4.0
    IL_003e:  ldarg.0
    IL_003f:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemWoodBlockBehavior::m_leavesToCheck
    IL_0044:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::get_Count()
    IL_0049:  ldc.i4.1
    IL_004a:  sub
    IL_004b:  ldc.i4.s   50
    IL_004d:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0052:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0057:  stloc.3
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemWoodBlockBehavior::m_leavesToCheck
    IL_005e:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::get_Keys()
    IL_0063:  ldloc.3
    IL_0064:  call       !!0 [System.Linq]System.Linq.Enumerable::ElementAt<valuetype [Engine]Engine.Point3>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                             int32)
    IL_0069:  stloc.s    V_4
    IL_006b:  ldarg.0
    IL_006c:  ldloc.s    V_4
    IL_006e:  call       instance void Game.SubsystemWoodBlockBehavior::DecayLeavesIfNeeded(valuetype [Engine]Engine.Point3)
    IL_0073:  ldloc.2
    IL_0074:  ldc.i4.1
    IL_0075:  add
    IL_0076:  stloc.2
    IL_0077:  ldarg.0
    IL_0078:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemWoodBlockBehavior::m_leavesToCheck
    IL_007d:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::get_Count()
    IL_0082:  ldc.i4.0
    IL_0083:  ble.s      IL_0097

    IL_0085:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_008a:  ldloc.1
    IL_008b:  sub
    IL_008c:  ldc.r8     1.e-002
    IL_0095:  blt.s      IL_0037

    IL_0097:  ret
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
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPlayer>(bool)
    IL_0014:  stfld      class Game.SubsystemPlayer Game.SubsystemWoodBlockBehavior::m_subsystemPlayer
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
    IL_004d:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemWoodBlockBehavior::m_leavesToCheck
    IL_0052:  ldloc.3
    IL_0053:  ldc.i4.1
    IL_0054:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::Add(!0,
                                                                                                                                                    !1)
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
    // 代码大小       44 (0x2c)
    .maxstack  3
    .locals init (string V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0007:  ldc.i4.s   59
    IL_0009:  ldarg.0
    IL_000a:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemWoodBlockBehavior::m_leavesToCheck
    IL_000f:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::get_Keys()
    IL_0014:  call       !!0[] [System.Linq]System.Linq.Enumerable::ToArray<valuetype [Engine]Engine.Point3>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0019:  call       string [Engine]Engine.Serialization.HumanReadableConverter::ValuesListToString<valuetype [Engine]Engine.Point3>(char,
                                                                                                                                         !!0[])
    IL_001e:  stloc.0
    IL_001f:  ldarg.1
    IL_0020:  ldstr      "LeavesToCheck"
    IL_0025:  ldloc.0
    IL_0026:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                          !!0)
    IL_002b:  ret
  } // end of method SubsystemWoodBlockBehavior::Save

  .method private hidebysig instance void 
          DecayLeavesIfNeeded(valuetype [Engine]Engine.Point3 p) cil managed
  {
    // 代码大小       441 (0x1b9)
    .maxstack  6
    .locals init (bool V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemWoodBlockBehavior::m_leavesToCheck
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::Remove(!0)
    IL_000c:  pop
    IL_000d:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0012:  ldarg.0
    IL_0013:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0018:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_001d:  ldarg.1
    IL_001e:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0023:  ldarg.1
    IL_0024:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0029:  ldarg.1
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_002f:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_0034:  ldelem.ref
    IL_0035:  isinst     Game.LeavesBlock
    IL_003a:  brfalse    IL_01b8

    IL_003f:  ldc.i4.0
    IL_0040:  stloc.0
    IL_0041:  ldarg.1
    IL_0042:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0047:  ldc.i4.3
    IL_0048:  sub
    IL_0049:  ldarg.0
    IL_004a:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_004f:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0054:  callvirt   instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
    IL_0059:  ldfld      int32 [Engine]Engine.Point2::X
    IL_005e:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0063:  ldarg.1
    IL_0064:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0069:  ldc.i4.3
    IL_006a:  sub
    IL_006b:  ldc.i4.0
    IL_006c:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0071:  stloc.1
    IL_0072:  ldarg.1
    IL_0073:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0078:  ldc.i4.3
    IL_0079:  sub
    IL_007a:  ldarg.0
    IL_007b:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0080:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0085:  callvirt   instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
    IL_008a:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_008f:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0094:  stloc.2
    IL_0095:  ldarg.1
    IL_0096:  ldfld      int32 [Engine]Engine.Point3::X
    IL_009b:  ldc.i4.3
    IL_009c:  add
    IL_009d:  ldarg.0
    IL_009e:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_00a3:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00a8:  callvirt   instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
    IL_00ad:  ldfld      int32 [Engine]Engine.Point2::X
    IL_00b2:  ldarg.0
    IL_00b3:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_00b8:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00bd:  callvirt   instance int32 Game.TerrainData::get_SizeX()
    IL_00c2:  add
    IL_00c3:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_00c8:  stloc.3
    IL_00c9:  ldarg.1
    IL_00ca:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00cf:  ldc.i4.3
    IL_00d0:  add
    IL_00d1:  ldarg.0
    IL_00d2:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_00d7:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00dc:  callvirt   instance int32 Game.TerrainData::get_SizeY()
    IL_00e1:  ldc.i4.1
    IL_00e2:  sub
    IL_00e3:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_00e8:  stloc.s    V_4
    IL_00ea:  ldarg.1
    IL_00eb:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_00f0:  ldc.i4.3
    IL_00f1:  add
    IL_00f2:  ldarg.0
    IL_00f3:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_00f8:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00fd:  callvirt   instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
    IL_0102:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0107:  ldarg.0
    IL_0108:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_010d:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0112:  callvirt   instance int32 Game.TerrainData::get_SizeZ()
    IL_0117:  add
    IL_0118:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_011d:  stloc.s    V_5
    IL_011f:  stloc.s    V_6
    IL_0121:  br.s       IL_0191

    IL_0123:  ldloc.2
    IL_0124:  stloc.s    V_7
    IL_0126:  br.s       IL_0185

    IL_0128:  ldarg.0
    IL_0129:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_012e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0133:  ldloc.s    V_6
    IL_0135:  ldc.i4.0
    IL_0136:  ldloc.s    V_7
    IL_0138:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                             int32,
                                                                             int32)
    IL_013d:  stloc.s    V_8
    IL_013f:  ldloc.1
    IL_0140:  stloc.s    V_9
    IL_0142:  br.s       IL_0179

    IL_0144:  ldarg.0
    IL_0145:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_014a:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_014f:  ldloc.s    V_8
    IL_0151:  ldloc.s    V_9
    IL_0153:  add
    IL_0154:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32)
    IL_0159:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_015e:  stloc.s    V_10
    IL_0160:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0165:  ldloc.s    V_10
    IL_0167:  ldelem.ref
    IL_0168:  isinst     Game.WoodBlock
    IL_016d:  brfalse.s  IL_0173

    IL_016f:  ldc.i4.1
    IL_0170:  stloc.0
    IL_0171:  br.s       IL_0196

    IL_0173:  ldloc.s    V_9
    IL_0175:  ldc.i4.1
    IL_0176:  add
    IL_0177:  stloc.s    V_9
    IL_0179:  ldloc.s    V_9
    IL_017b:  ldloc.s    V_4
    IL_017d:  ble.s      IL_0144

    IL_017f:  ldloc.s    V_7
    IL_0181:  ldc.i4.1
    IL_0182:  add
    IL_0183:  stloc.s    V_7
    IL_0185:  ldloc.s    V_7
    IL_0187:  ldloc.s    V_5
    IL_0189:  ble.s      IL_0128

    IL_018b:  ldloc.s    V_6
    IL_018d:  ldc.i4.1
    IL_018e:  add
    IL_018f:  stloc.s    V_6
    IL_0191:  ldloc.s    V_6
    IL_0193:  ldloc.3
    IL_0194:  ble.s      IL_0123

    IL_0196:  ldloc.0
    IL_0197:  brtrue.s   IL_01b8

    IL_0199:  ldarg.0
    IL_019a:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_019f:  ldarg.1
    IL_01a0:  ldfld      int32 [Engine]Engine.Point3::X
    IL_01a5:  ldarg.1
    IL_01a6:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_01ab:  ldarg.1
    IL_01ac:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_01b1:  ldc.i4.0
    IL_01b2:  ldc.i4.1
    IL_01b3:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_01b8:  ret
  } // end of method SubsystemWoodBlockBehavior::DecayLeavesIfNeeded

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemWoodBlockBehavior::m_leavesToCheck
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.Random::.ctor()
    IL_0011:  stfld      class Game.Random Game.SubsystemWoodBlockBehavior::m_random
    IL_0016:  ldarg.0
    IL_0017:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_001c:  ret
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