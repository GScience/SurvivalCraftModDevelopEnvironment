.class public auto ansi beforefieldinit Game.SubsystemRotBlockBehavior
       extends Game.SubsystemPollableBlockBehavior
{
  .field public static literal int32 MaxRot = int32(0x00000001)
  .field private class Game.SubsystemItemsScanner m_subsystemItemsScanner
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private float64 m_lastRotTime
  .field private int32 m_rotStep
  .field private static literal float32 m_rotPeriod = float32(60.)
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  ret
  } // end of method SubsystemRotBlockBehavior::get_HandledBlocks

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       101 (0x65)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_0014:  stfld      class Game.SubsystemGameInfo Game.SubsystemRotBlockBehavior::m_subsystemGameInfo
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0020:  ldc.i4.1
    IL_0021:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemItemsScanner>(bool)
    IL_0026:  stfld      class Game.SubsystemItemsScanner Game.SubsystemRotBlockBehavior::m_subsystemItemsScanner
    IL_002b:  ldarg.0
    IL_002c:  ldarg.1
    IL_002d:  ldstr      "LastRotTime"
    IL_0032:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float64>(string)
    IL_0037:  stfld      float64 Game.SubsystemRotBlockBehavior::m_lastRotTime
    IL_003c:  ldarg.0
    IL_003d:  ldarg.1
    IL_003e:  ldstr      "RotStep"
    IL_0043:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<int32>(string)
    IL_0048:  stfld      int32 Game.SubsystemRotBlockBehavior::m_rotStep
    IL_004d:  ldarg.0
    IL_004e:  ldfld      class Game.SubsystemItemsScanner Game.SubsystemRotBlockBehavior::m_subsystemItemsScanner
    IL_0053:  ldarg.0
    IL_0054:  ldftn      instance void Game.SubsystemRotBlockBehavior::ItemsScanned(valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.ScannedItemData>)
    IL_005a:  newobj     instance void class [System.Runtime]System.Action`1<valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.ScannedItemData>>::.ctor(object,
                                                                                                                                                             native int)
    IL_005f:  callvirt   instance void Game.SubsystemItemsScanner::add_ItemsScanned(class [System.Runtime]System.Action`1<valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.ScannedItemData>>)
    IL_0064:  ret
  } // end of method SubsystemRotBlockBehavior::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       42 (0x2a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0007:  ldarg.1
    IL_0008:  ldstr      "LastRotTime"
    IL_000d:  ldarg.0
    IL_000e:  ldfld      float64 Game.SubsystemRotBlockBehavior::m_lastRotTime
    IL_0013:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float64>(string,
                                                                                                           !!0)
    IL_0018:  ldarg.1
    IL_0019:  ldstr      "RotStep"
    IL_001e:  ldarg.0
    IL_001f:  ldfld      int32 Game.SubsystemRotBlockBehavior::m_rotStep
    IL_0024:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<int32>(string,
                                                                                                         !!0)
    IL_0029:  ret
  } // end of method SubsystemRotBlockBehavior::Save

  .method public hidebysig virtual instance void 
          OnPoll(int32 'value',
                 int32 x,
                 int32 y,
                 int32 z,
                 int32 pollPass) cil managed
  {
    // 代码大小       86 (0x56)
    .maxstack  6
    .locals init (int32 V_0,
             class Game.Block V_1,
             int32 V_2,
             int32 V_3)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0006:  stloc.0
    IL_0007:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_000c:  ldloc.0
    IL_000d:  ldelem.ref
    IL_000e:  stloc.1
    IL_000f:  ldloc.1
    IL_0010:  ldarg.1
    IL_0011:  callvirt   instance int32 Game.Block::GetRotPeriod(int32)
    IL_0016:  stloc.2
    IL_0017:  ldloc.2
    IL_0018:  ldc.i4.0
    IL_0019:  ble.s      IL_0055

    IL_001b:  ldarg.s    pollPass
    IL_001d:  ldloc.2
    IL_001e:  rem
    IL_001f:  brtrue.s   IL_0055

    IL_0021:  ldloc.1
    IL_0022:  ldarg.1
    IL_0023:  callvirt   instance int32 Game.Block::GetDamage(int32)
    IL_0028:  ldc.i4.1
    IL_0029:  add
    IL_002a:  stloc.3
    IL_002b:  ldloc.3
    IL_002c:  ldc.i4.1
    IL_002d:  bgt.s      IL_003b

    IL_002f:  ldloc.1
    IL_0030:  ldarg.1
    IL_0031:  ldloc.3
    IL_0032:  callvirt   instance int32 Game.Block::SetDamage(int32,
                                                              int32)
    IL_0037:  starg.s    'value'
    IL_0039:  br.s       IL_0044

    IL_003b:  ldloc.1
    IL_003c:  ldarg.1
    IL_003d:  callvirt   instance int32 Game.Block::GetDamageDestructionValue(int32)
    IL_0042:  starg.s    'value'
    IL_0044:  ldarg.0
    IL_0045:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_004a:  ldarg.2
    IL_004b:  ldarg.3
    IL_004c:  ldarg.s    z
    IL_004e:  ldarg.1
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_0055:  ret
  } // end of method SubsystemRotBlockBehavior::OnPoll

  .method private hidebysig instance void 
          ItemsScanned(valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.ScannedItemData> items) cil managed
  {
    // 代码大小       300 (0x12c)
    .maxstack  5
    .locals init (int32 V_0,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype Game.ScannedItemData> V_1,
             valuetype Game.ScannedItemData V_2,
             int32 V_3,
             class Game.Block V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemGameInfo Game.SubsystemRotBlockBehavior::m_subsystemGameInfo
    IL_0006:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_000b:  ldarg.0
    IL_000c:  ldfld      float64 Game.SubsystemRotBlockBehavior::m_lastRotTime
    IL_0011:  sub
    IL_0012:  ldc.r8     60.
    IL_001b:  div
    IL_001c:  conv.i4
    IL_001d:  stloc.0
    IL_001e:  ldloc.0
    IL_001f:  ldc.i4.0
    IL_0020:  ble        IL_012b

    IL_0025:  ldarg.0
    IL_0026:  ldfld      class Game.SubsystemGameInfo Game.SubsystemRotBlockBehavior::m_subsystemGameInfo
    IL_002b:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0030:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_0035:  brfalse    IL_0107

    IL_003a:  ldarga.s   items
    IL_003c:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.ScannedItemData>::GetEnumerator()
    IL_0041:  stloc.1
    .try
    {
      IL_0042:  br         IL_00eb

      IL_0047:  ldloca.s   V_1
      IL_0049:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype Game.ScannedItemData>::get_Current()
      IL_004e:  stloc.2
      IL_004f:  ldloc.2
      IL_0050:  ldfld      int32 Game.ScannedItemData::Value
      IL_0055:  call       int32 Game.Terrain::ExtractContents(int32)
      IL_005a:  stloc.3
      IL_005b:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_0060:  ldloc.3
      IL_0061:  ldelem.ref
      IL_0062:  stloc.s    V_4
      IL_0064:  ldloc.s    V_4
      IL_0066:  ldloc.2
      IL_0067:  ldfld      int32 Game.ScannedItemData::Value
      IL_006c:  callvirt   instance int32 Game.Block::GetRotPeriod(int32)
      IL_0071:  stloc.s    V_5
      IL_0073:  ldloc.s    V_5
      IL_0075:  ldc.i4.0
      IL_0076:  ble.s      IL_00eb

      IL_0078:  ldloc.s    V_4
      IL_007a:  ldloc.2
      IL_007b:  ldfld      int32 Game.ScannedItemData::Value
      IL_0080:  callvirt   instance int32 Game.Block::GetDamage(int32)
      IL_0085:  stloc.s    V_6
      IL_0087:  ldc.i4.0
      IL_0088:  stloc.s    V_7
      IL_008a:  br.s       IL_00a6

      IL_008c:  ldloc.s    V_7
      IL_008e:  ldarg.0
      IL_008f:  ldfld      int32 Game.SubsystemRotBlockBehavior::m_rotStep
      IL_0094:  add
      IL_0095:  ldloc.s    V_5
      IL_0097:  rem
      IL_0098:  brtrue.s   IL_00a0

      IL_009a:  ldloc.s    V_6
      IL_009c:  ldc.i4.1
      IL_009d:  add
      IL_009e:  stloc.s    V_6
      IL_00a0:  ldloc.s    V_7
      IL_00a2:  ldc.i4.1
      IL_00a3:  add
      IL_00a4:  stloc.s    V_7
      IL_00a6:  ldloc.s    V_7
      IL_00a8:  ldloc.0
      IL_00a9:  bge.s      IL_00b0

      IL_00ab:  ldloc.s    V_6
      IL_00ad:  ldc.i4.1
      IL_00ae:  ble.s      IL_008c

      IL_00b0:  ldloc.s    V_6
      IL_00b2:  ldc.i4.1
      IL_00b3:  bgt.s      IL_00d2

      IL_00b5:  ldarg.0
      IL_00b6:  ldfld      class Game.SubsystemItemsScanner Game.SubsystemRotBlockBehavior::m_subsystemItemsScanner
      IL_00bb:  ldloc.2
      IL_00bc:  ldloc.s    V_4
      IL_00be:  ldloc.2
      IL_00bf:  ldfld      int32 Game.ScannedItemData::Value
      IL_00c4:  ldloc.s    V_6
      IL_00c6:  callvirt   instance int32 Game.Block::SetDamage(int32,
                                                                int32)
      IL_00cb:  callvirt   instance void Game.SubsystemItemsScanner::ModifyItem(valuetype Game.ScannedItemData,
                                                                                int32)
      IL_00d0:  br.s       IL_00eb

      IL_00d2:  ldarg.0
      IL_00d3:  ldfld      class Game.SubsystemItemsScanner Game.SubsystemRotBlockBehavior::m_subsystemItemsScanner
      IL_00d8:  ldloc.2
      IL_00d9:  ldloc.s    V_4
      IL_00db:  ldloc.2
      IL_00dc:  ldfld      int32 Game.ScannedItemData::Value
      IL_00e1:  callvirt   instance int32 Game.Block::GetDamageDestructionValue(int32)
      IL_00e6:  callvirt   instance void Game.SubsystemItemsScanner::ModifyItem(valuetype Game.ScannedItemData,
                                                                                int32)
      IL_00eb:  ldloca.s   V_1
      IL_00ed:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype Game.ScannedItemData>::MoveNext()
      IL_00f2:  brtrue     IL_0047

      IL_00f7:  leave.s    IL_0107

    }  // end .try
    finally
    {
      IL_00f9:  ldloca.s   V_1
      IL_00fb:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype Game.ScannedItemData>
      IL_0101:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0106:  endfinally
    }  // end handler
    IL_0107:  ldarg.0
    IL_0108:  ldarg.0
    IL_0109:  ldfld      int32 Game.SubsystemRotBlockBehavior::m_rotStep
    IL_010e:  ldloc.0
    IL_010f:  add
    IL_0110:  stfld      int32 Game.SubsystemRotBlockBehavior::m_rotStep
    IL_0115:  ldarg.0
    IL_0116:  ldarg.0
    IL_0117:  ldfld      float64 Game.SubsystemRotBlockBehavior::m_lastRotTime
    IL_011c:  ldloc.0
    IL_011d:  conv.r4
    IL_011e:  ldc.r4     60.
    IL_0123:  mul
    IL_0124:  conv.r8
    IL_0125:  add
    IL_0126:  stfld      float64 Game.SubsystemRotBlockBehavior::m_lastRotTime
    IL_012b:  ret
  } // end of method SubsystemRotBlockBehavior::ItemsScanned

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.SubsystemPollableBlockBehavior::.ctor()
    IL_0006:  ret
  } // end of method SubsystemRotBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemRotBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemRotBlockBehavior::HandledBlocks
} // end of class Game.SubsystemRotBlockBehavior