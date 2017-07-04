.class public auto ansi beforefieldinit Game.SubsystemPlantBlockBehavior
       extends Game.SubsystemPollableBlockBehavior
       implements Game.IUpdateable
{
  .class sequential ansi sealed nested private beforefieldinit Replacement
         extends [System.Runtime]System.ValueType
  {
    .field public int32 RequiredValue
    .field public int32 Value
  } // end of class Replacement

  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.Random m_random
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemPlantBlockBehavior/Replacement> m_toReplace
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldc.i4.s   11
    IL_0002:  newarr     [System.Runtime]System.Int32
    IL_0007:  dup
    IL_0008:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=44' '<PrivateImplementationDetails>'::'5C1DE6B0C112D70A9FB33CC9041AE636D21566CC'
    IL_000d:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0012:  ret
  } // end of method SubsystemPlantBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance void 
          OnNeighborBlockChanged(int32 x,
                                 int32 y,
                                 int32 z,
                                 int32 neighborX,
                                 int32 neighborY,
                                 int32 neighborZ) cil managed
  {
    // 代码大小       197 (0xc5)
    .maxstack  8
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             class Game.Block V_3)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  ldarg.1
    IL_000c:  ldarg.2
    IL_000d:  ldarg.3
    IL_000e:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0013:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0018:  stloc.0
    IL_0019:  ldarg.0
    IL_001a:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_001f:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0024:  ldarg.1
    IL_0025:  ldarg.2
    IL_0026:  ldc.i4.1
    IL_0027:  sub
    IL_0028:  ldarg.3
    IL_0029:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_002e:  stloc.1
    IL_002f:  ldloc.1
    IL_0030:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0035:  stloc.2
    IL_0036:  ldloc.0
    IL_0037:  ldc.i4     0x83
    IL_003c:  beq.s      IL_0046

    IL_003e:  ldloc.0
    IL_003f:  ldc.i4     0xf4
    IL_0044:  bne.un.s   IL_0069

    IL_0046:  ldloc.2
    IL_0047:  ldc.i4.8
    IL_0048:  beq.s      IL_00c4

    IL_004a:  ldloc.2
    IL_004b:  ldc.i4.2
    IL_004c:  beq.s      IL_00c4

    IL_004e:  ldloc.2
    IL_004f:  ldc.i4     0xa8
    IL_0054:  beq.s      IL_00c4

    IL_0056:  ldarg.0
    IL_0057:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_005c:  ldc.i4.0
    IL_005d:  ldarg.1
    IL_005e:  ldarg.2
    IL_005f:  ldarg.3
    IL_0060:  ldc.i4.0
    IL_0061:  ldc.i4.0
    IL_0062:  ldc.i4.0
    IL_0063:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_0068:  ret

    IL_0069:  ldloc.0
    IL_006a:  ldc.i4     0x84
    IL_006f:  bne.un.s   IL_009e

    IL_0071:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0076:  ldloc.2
    IL_0077:  ldelem.ref
    IL_0078:  stloc.3
    IL_0079:  ldloc.3
    IL_007a:  ldc.i4.4
    IL_007b:  ldloc.1
    IL_007c:  callvirt   instance bool Game.Block::IsFaceTransparent(int32,
                                                                     int32)
    IL_0081:  brfalse.s  IL_00c4

    IL_0083:  ldloc.3
    IL_0084:  isinst     Game.FenceBlock
    IL_0089:  brtrue.s   IL_00c4

    IL_008b:  ldarg.0
    IL_008c:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0091:  ldc.i4.0
    IL_0092:  ldarg.1
    IL_0093:  ldarg.2
    IL_0094:  ldarg.3
    IL_0095:  ldc.i4.0
    IL_0096:  ldc.i4.0
    IL_0097:  ldc.i4.0
    IL_0098:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_009d:  ret

    IL_009e:  ldloc.2
    IL_009f:  ldc.i4.8
    IL_00a0:  beq.s      IL_00c4

    IL_00a2:  ldloc.2
    IL_00a3:  ldc.i4.2
    IL_00a4:  beq.s      IL_00c4

    IL_00a6:  ldloc.2
    IL_00a7:  ldc.i4.7
    IL_00a8:  beq.s      IL_00c4

    IL_00aa:  ldloc.2
    IL_00ab:  ldc.i4     0xa8
    IL_00b0:  beq.s      IL_00c4

    IL_00b2:  ldarg.0
    IL_00b3:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_00b8:  ldc.i4.0
    IL_00b9:  ldarg.1
    IL_00ba:  ldarg.2
    IL_00bb:  ldarg.3
    IL_00bc:  ldc.i4.0
    IL_00bd:  ldc.i4.0
    IL_00be:  ldc.i4.0
    IL_00bf:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_00c4:  ret
  } // end of method SubsystemPlantBlockBehavior::OnNeighborBlockChanged

  .method public hidebysig virtual instance void 
          OnPoll(int32 'value',
                 int32 x,
                 int32 y,
                 int32 z,
                 int32 pollPass) cil managed
  {
    // 代码大小       150 (0x96)
    .maxstack  6
    .locals init (int32 V_0,
             class Game.Block V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemGameInfo Game.SubsystemPlantBlockBehavior::m_subsystemGameInfo
    IL_0006:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_000b:  ldfld      valuetype Game.EnvironmentBehaviorMode Game.WorldSettings::EnvironmentBehaviorMode
    IL_0010:  brfalse.s  IL_0013

    IL_0012:  ret

    IL_0013:  ldarg.3
    IL_0014:  ldc.i4.0
    IL_0015:  ble.s      IL_0095

    IL_0017:  ldarg.3
    IL_0018:  ldc.i4.s   127
    IL_001a:  bge.s      IL_0095

    IL_001c:  ldarg.1
    IL_001d:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0022:  stloc.0
    IL_0023:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0028:  ldloc.0
    IL_0029:  ldelem.ref
    IL_002a:  stloc.1
    IL_002b:  ldloc.0
    IL_002c:  ldc.i4.s   19
    IL_002e:  bne.un.s   IL_003e

    IL_0030:  ldarg.0
    IL_0031:  ldarg.1
    IL_0032:  ldarg.2
    IL_0033:  ldarg.3
    IL_0034:  ldarg.s    z
    IL_0036:  ldarg.s    pollPass
    IL_0038:  call       instance void Game.SubsystemPlantBlockBehavior::GrowTallGrass(int32,
                                                                                       int32,
                                                                                       int32,
                                                                                       int32,
                                                                                       int32)
    IL_003d:  ret

    IL_003e:  ldloc.1
    IL_003f:  isinst     Game.FlowerBlock
    IL_0044:  brfalse.s  IL_0054

    IL_0046:  ldarg.0
    IL_0047:  ldarg.1
    IL_0048:  ldarg.2
    IL_0049:  ldarg.3
    IL_004a:  ldarg.s    z
    IL_004c:  ldarg.s    pollPass
    IL_004e:  call       instance void Game.SubsystemPlantBlockBehavior::GrowFlower(int32,
                                                                                    int32,
                                                                                    int32,
                                                                                    int32,
                                                                                    int32)
    IL_0053:  ret

    IL_0054:  ldloc.0
    IL_0055:  ldc.i4     0xae
    IL_005a:  bne.un.s   IL_006a

    IL_005c:  ldarg.0
    IL_005d:  ldarg.1
    IL_005e:  ldarg.2
    IL_005f:  ldarg.3
    IL_0060:  ldarg.s    z
    IL_0062:  ldarg.s    pollPass
    IL_0064:  call       instance void Game.SubsystemPlantBlockBehavior::GrowRye(int32,
                                                                                 int32,
                                                                                 int32,
                                                                                 int32,
                                                                                 int32)
    IL_0069:  ret

    IL_006a:  ldloc.0
    IL_006b:  ldc.i4     0xcc
    IL_0070:  bne.un.s   IL_0080

    IL_0072:  ldarg.0
    IL_0073:  ldarg.1
    IL_0074:  ldarg.2
    IL_0075:  ldarg.3
    IL_0076:  ldarg.s    z
    IL_0078:  ldarg.s    pollPass
    IL_007a:  call       instance void Game.SubsystemPlantBlockBehavior::GrowCotton(int32,
                                                                                    int32,
                                                                                    int32,
                                                                                    int32,
                                                                                    int32)
    IL_007f:  ret

    IL_0080:  ldloc.0
    IL_0081:  ldc.i4     0x83
    IL_0086:  bne.un.s   IL_0095

    IL_0088:  ldarg.0
    IL_0089:  ldarg.1
    IL_008a:  ldarg.2
    IL_008b:  ldarg.3
    IL_008c:  ldarg.s    z
    IL_008e:  ldarg.s    pollPass
    IL_0090:  call       instance void Game.SubsystemPlantBlockBehavior::GrowPumpkin(int32,
                                                                                     int32,
                                                                                     int32,
                                                                                     int32,
                                                                                     int32)
    IL_0095:  ret
  } // end of method SubsystemPlantBlockBehavior::OnPoll

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       44 (0x2c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_0014:  stfld      class Game.SubsystemTime Game.SubsystemPlantBlockBehavior::m_subsystemTime
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0020:  ldc.i4.1
    IL_0021:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_0026:  stfld      class Game.SubsystemGameInfo Game.SubsystemPlantBlockBehavior::m_subsystemGameInfo
    IL_002b:  ret
  } // end of method SubsystemPlantBlockBehavior::Load

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemPlantBlockBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       203 (0xcb)
    .maxstack  6
    .locals init (valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemPlantBlockBehavior/Replacement> V_0,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemPlantBlockBehavior/Replacement> V_1,
             valuetype [Engine]Engine.Point3 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTime Game.SubsystemPlantBlockBehavior::m_subsystemTime
    IL_0006:  ldc.r8     30.
    IL_000f:  ldc.r8     0.0
    IL_0018:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_001d:  brfalse    IL_00ca

    IL_0022:  ldarg.0
    IL_0023:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemPlantBlockBehavior/Replacement> Game.SubsystemPlantBlockBehavior::m_toReplace
    IL_0028:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemPlantBlockBehavior/Replacement>::GetEnumerator()
    IL_002d:  stloc.0
    .try
    {
      IL_002e:  br.s       IL_00a6

      IL_0030:  ldloca.s   V_0
      IL_0032:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemPlantBlockBehavior/Replacement>::get_Current()
      IL_0037:  stloc.1
      IL_0038:  ldloca.s   V_1
      IL_003a:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemPlantBlockBehavior/Replacement>::get_Key()
      IL_003f:  stloc.2
      IL_0040:  ldarg.0
      IL_0041:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
      IL_0046:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
      IL_004b:  ldloc.2
      IL_004c:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0051:  ldloc.2
      IL_0052:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_0057:  ldloc.2
      IL_0058:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_005d:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                     int32,
                                                                     int32)
      IL_0062:  ldc.i4.0
      IL_0063:  call       int32 Game.Terrain::ReplaceLight(int32,
                                                            int32)
      IL_0068:  ldloca.s   V_1
      IL_006a:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemPlantBlockBehavior/Replacement>::get_Value()
      IL_006f:  ldfld      int32 Game.SubsystemPlantBlockBehavior/Replacement::RequiredValue
      IL_0074:  ldc.i4.0
      IL_0075:  call       int32 Game.Terrain::ReplaceLight(int32,
                                                            int32)
      IL_007a:  bne.un.s   IL_00a6

      IL_007c:  ldarg.0
      IL_007d:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
      IL_0082:  ldloc.2
      IL_0083:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0088:  ldloc.2
      IL_0089:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_008e:  ldloc.2
      IL_008f:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0094:  ldloca.s   V_1
      IL_0096:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemPlantBlockBehavior/Replacement>::get_Value()
      IL_009b:  ldfld      int32 Game.SubsystemPlantBlockBehavior/Replacement::Value
      IL_00a0:  ldc.i4.1
      IL_00a1:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32,
                                                                           bool)
      IL_00a6:  ldloca.s   V_0
      IL_00a8:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemPlantBlockBehavior/Replacement>::MoveNext()
      IL_00ad:  brtrue.s   IL_0030

      IL_00af:  leave.s    IL_00bf

    }  // end .try
    finally
    {
      IL_00b1:  ldloca.s   V_0
      IL_00b3:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemPlantBlockBehavior/Replacement>
      IL_00b9:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00be:  endfinally
    }  // end handler
    IL_00bf:  ldarg.0
    IL_00c0:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemPlantBlockBehavior/Replacement> Game.SubsystemPlantBlockBehavior::m_toReplace
    IL_00c5:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemPlantBlockBehavior/Replacement>::Clear()
    IL_00ca:  ret
  } // end of method SubsystemPlantBlockBehavior::Update

  .method private hidebysig instance void 
          GrowTallGrass(int32 'value',
                        int32 x,
                        int32 y,
                        int32 z,
                        int32 pollPass) cil managed
  {
    // 代码大小       110 (0x6e)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             valuetype Game.SubsystemPlantBlockBehavior/Replacement V_3)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  call       bool Game.TallGrassBlock::GetIsSmall(int32)
    IL_000d:  brtrue.s   IL_0010

    IL_000f:  ret

    IL_0010:  ldarg.0
    IL_0011:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0016:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_001b:  ldarg.2
    IL_001c:  ldarg.3
    IL_001d:  ldc.i4.1
    IL_001e:  add
    IL_001f:  ldarg.s    z
    IL_0021:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0026:  call       int32 Game.Terrain::ExtractLight(int32)
    IL_002b:  ldc.i4.s   9
    IL_002d:  bge.s      IL_0030

    IL_002f:  ret

    IL_0030:  ldloc.0
    IL_0031:  ldc.i4.0
    IL_0032:  call       int32 Game.TallGrassBlock::SetIsSmall(int32,
                                                               bool)
    IL_0037:  stloc.1
    IL_0038:  ldarg.1
    IL_0039:  ldloc.1
    IL_003a:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_003f:  stloc.2
    IL_0040:  ldarg.0
    IL_0041:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemPlantBlockBehavior/Replacement> Game.SubsystemPlantBlockBehavior::m_toReplace
    IL_0046:  ldarg.2
    IL_0047:  ldarg.3
    IL_0048:  ldarg.s    z
    IL_004a:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_004f:  ldloca.s   V_3
    IL_0051:  initobj    Game.SubsystemPlantBlockBehavior/Replacement
    IL_0057:  ldloca.s   V_3
    IL_0059:  ldloc.2
    IL_005a:  stfld      int32 Game.SubsystemPlantBlockBehavior/Replacement::Value
    IL_005f:  ldloca.s   V_3
    IL_0061:  ldarg.1
    IL_0062:  stfld      int32 Game.SubsystemPlantBlockBehavior/Replacement::RequiredValue
    IL_0067:  ldloc.3
    IL_0068:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemPlantBlockBehavior/Replacement>::set_Item(!0,
                                                                                                                                                                                                           !1)
    IL_006d:  ret
  } // end of method SubsystemPlantBlockBehavior::GrowTallGrass

  .method private hidebysig instance void 
          GrowFlower(int32 'value',
                     int32 x,
                     int32 y,
                     int32 z,
                     int32 pollPass) cil managed
  {
    // 代码大小       110 (0x6e)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             valuetype Game.SubsystemPlantBlockBehavior/Replacement V_3)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  call       bool Game.FlowerBlock::GetIsSmall(int32)
    IL_000d:  brtrue.s   IL_0010

    IL_000f:  ret

    IL_0010:  ldarg.0
    IL_0011:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0016:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_001b:  ldarg.2
    IL_001c:  ldarg.3
    IL_001d:  ldc.i4.1
    IL_001e:  add
    IL_001f:  ldarg.s    z
    IL_0021:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0026:  call       int32 Game.Terrain::ExtractLight(int32)
    IL_002b:  ldc.i4.s   9
    IL_002d:  bge.s      IL_0030

    IL_002f:  ret

    IL_0030:  ldloc.0
    IL_0031:  ldc.i4.0
    IL_0032:  call       int32 Game.FlowerBlock::SetIsSmall(int32,
                                                            bool)
    IL_0037:  stloc.1
    IL_0038:  ldarg.1
    IL_0039:  ldloc.1
    IL_003a:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_003f:  stloc.2
    IL_0040:  ldarg.0
    IL_0041:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemPlantBlockBehavior/Replacement> Game.SubsystemPlantBlockBehavior::m_toReplace
    IL_0046:  ldarg.2
    IL_0047:  ldarg.3
    IL_0048:  ldarg.s    z
    IL_004a:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_004f:  ldloca.s   V_3
    IL_0051:  initobj    Game.SubsystemPlantBlockBehavior/Replacement
    IL_0057:  ldloca.s   V_3
    IL_0059:  ldloc.2
    IL_005a:  stfld      int32 Game.SubsystemPlantBlockBehavior/Replacement::Value
    IL_005f:  ldloca.s   V_3
    IL_0061:  ldarg.1
    IL_0062:  stfld      int32 Game.SubsystemPlantBlockBehavior/Replacement::RequiredValue
    IL_0067:  ldloc.3
    IL_0068:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemPlantBlockBehavior/Replacement>::set_Item(!0,
                                                                                                                                                                                                           !1)
    IL_006d:  ret
  } // end of method SubsystemPlantBlockBehavior::GrowFlower

  .method private hidebysig instance void 
          GrowRye(int32 'value',
                  int32 x,
                  int32 y,
                  int32 z,
                  int32 pollPass) cil managed
  {
    // 代码大小       536 (0x218)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             valuetype Game.SubsystemPlantBlockBehavior/Replacement V_4,
             int32 V_5,
             int32 V_6,
             bool V_7,
             int32 V_8,
             int32 V_9,
             float32 V_10,
             int32 V_11,
             int32 V_12,
             int32 V_13,
             int32 V_14,
             int32 V_15)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  ldc.i4.1
    IL_000e:  add
    IL_000f:  ldarg.s    z
    IL_0011:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0016:  call       int32 Game.Terrain::ExtractLight(int32)
    IL_001b:  ldc.i4.s   9
    IL_001d:  bge.s      IL_0020

    IL_001f:  ret

    IL_0020:  ldarg.1
    IL_0021:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0026:  stloc.0
    IL_0027:  ldloc.0
    IL_0028:  call       int32 Game.RyeBlock::GetSize(int32)
    IL_002d:  stloc.1
    IL_002e:  ldloc.1
    IL_002f:  ldc.i4.7
    IL_0030:  bne.un.s   IL_0033

    IL_0032:  ret

    IL_0033:  ldloc.0
    IL_0034:  call       bool Game.RyeBlock::GetIsWild(int32)
    IL_0039:  brfalse.s  IL_0089

    IL_003b:  ldloc.1
    IL_003c:  ldc.i4.7
    IL_003d:  bge        IL_0217

    IL_0042:  ldloc.0
    IL_0043:  ldc.i4.1
    IL_0044:  call       int32 Game.RyeBlock::SetIsWild(int32,
                                                        bool)
    IL_0049:  ldloc.1
    IL_004a:  ldc.i4.1
    IL_004b:  add
    IL_004c:  call       int32 Game.RyeBlock::SetSize(int32,
                                                      int32)
    IL_0051:  stloc.2
    IL_0052:  ldarg.1
    IL_0053:  ldloc.2
    IL_0054:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_0059:  stloc.3
    IL_005a:  ldarg.0
    IL_005b:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemPlantBlockBehavior/Replacement> Game.SubsystemPlantBlockBehavior::m_toReplace
    IL_0060:  ldarg.2
    IL_0061:  ldarg.3
    IL_0062:  ldarg.s    z
    IL_0064:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0069:  ldloca.s   V_4
    IL_006b:  initobj    Game.SubsystemPlantBlockBehavior/Replacement
    IL_0071:  ldloca.s   V_4
    IL_0073:  ldloc.3
    IL_0074:  stfld      int32 Game.SubsystemPlantBlockBehavior/Replacement::Value
    IL_0079:  ldloca.s   V_4
    IL_007b:  ldarg.1
    IL_007c:  stfld      int32 Game.SubsystemPlantBlockBehavior/Replacement::RequiredValue
    IL_0081:  ldloc.s    V_4
    IL_0083:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemPlantBlockBehavior/Replacement>::set_Item(!0,
                                                                                                                                                                                                           !1)
    IL_0088:  ret

    IL_0089:  ldarg.0
    IL_008a:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_008f:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0094:  ldarg.2
    IL_0095:  ldarg.3
    IL_0096:  ldc.i4.1
    IL_0097:  sub
    IL_0098:  ldarg.s    z
    IL_009a:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_009f:  stloc.s    V_5
    IL_00a1:  ldloc.s    V_5
    IL_00a3:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_00a8:  ldc.i4     0xa8
    IL_00ad:  bne.un     IL_01d9

    IL_00b2:  ldloc.s    V_5
    IL_00b4:  call       int32 Game.Terrain::ExtractData(int32)
    IL_00b9:  stloc.s    V_6
    IL_00bb:  ldloc.s    V_6
    IL_00bd:  call       bool Game.SoilBlock::GetHydration(int32)
    IL_00c2:  stloc.s    V_7
    IL_00c4:  ldloc.s    V_6
    IL_00c6:  call       int32 Game.SoilBlock::GetNitrogen(int32)
    IL_00cb:  stloc.s    V_8
    IL_00cd:  ldc.i4.3
    IL_00ce:  stloc.s    V_9
    IL_00d0:  ldc.r4     0.80000001
    IL_00d5:  stloc.s    V_10
    IL_00d7:  ldloc.s    V_8
    IL_00d9:  ldc.i4.0
    IL_00da:  ble.s      IL_00ec

    IL_00dc:  ldloc.s    V_9
    IL_00de:  ldc.i4.1
    IL_00df:  sub
    IL_00e0:  stloc.s    V_9
    IL_00e2:  ldloc.s    V_10
    IL_00e4:  ldc.r4     0.40000001
    IL_00e9:  sub
    IL_00ea:  stloc.s    V_10
    IL_00ec:  ldloc.s    V_7
    IL_00ee:  brfalse.s  IL_0100

    IL_00f0:  ldloc.s    V_9
    IL_00f2:  ldc.i4.1
    IL_00f3:  sub
    IL_00f4:  stloc.s    V_9
    IL_00f6:  ldloc.s    V_10
    IL_00f8:  ldc.r4     0.40000001
    IL_00fd:  sub
    IL_00fe:  stloc.s    V_10
    IL_0100:  ldarg.s    pollPass
    IL_0102:  ldloc.s    V_9
    IL_0104:  ldc.i4.1
    IL_0105:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_010a:  rem
    IL_010b:  brfalse.s  IL_010e

    IL_010d:  ret

    IL_010e:  ldloc.0
    IL_010f:  ldloc.1
    IL_0110:  ldc.i4.1
    IL_0111:  add
    IL_0112:  ldc.i4.7
    IL_0113:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0118:  call       int32 Game.RyeBlock::SetSize(int32,
                                                      int32)
    IL_011d:  stloc.s    V_11
    IL_011f:  ldarg.0
    IL_0120:  ldfld      class Game.Random Game.SubsystemPlantBlockBehavior::m_random
    IL_0125:  ldc.r4     0.0
    IL_012a:  ldc.r4     1.
    IL_012f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0134:  ldloc.s    V_10
    IL_0136:  bge.un.s   IL_0146

    IL_0138:  ldloc.1
    IL_0139:  ldc.i4.3
    IL_013a:  bne.un.s   IL_0146

    IL_013c:  ldloc.s    V_11
    IL_013e:  ldc.i4.1
    IL_013f:  call       int32 Game.RyeBlock::SetIsWild(int32,
                                                        bool)
    IL_0144:  stloc.s    V_11
    IL_0146:  ldarg.1
    IL_0147:  ldloc.s    V_11
    IL_0149:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_014e:  stloc.s    V_12
    IL_0150:  ldarg.0
    IL_0151:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemPlantBlockBehavior/Replacement> Game.SubsystemPlantBlockBehavior::m_toReplace
    IL_0156:  ldarg.2
    IL_0157:  ldarg.3
    IL_0158:  ldarg.s    z
    IL_015a:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_015f:  ldloca.s   V_4
    IL_0161:  initobj    Game.SubsystemPlantBlockBehavior/Replacement
    IL_0167:  ldloca.s   V_4
    IL_0169:  ldloc.s    V_12
    IL_016b:  stfld      int32 Game.SubsystemPlantBlockBehavior/Replacement::Value
    IL_0170:  ldloca.s   V_4
    IL_0172:  ldarg.1
    IL_0173:  stfld      int32 Game.SubsystemPlantBlockBehavior/Replacement::RequiredValue
    IL_0178:  ldloc.s    V_4
    IL_017a:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemPlantBlockBehavior/Replacement>::set_Item(!0,
                                                                                                                                                                                                           !1)
    IL_017f:  ldloc.1
    IL_0180:  ldc.i4.1
    IL_0181:  add
    IL_0182:  ldc.i4.7
    IL_0183:  bne.un     IL_0217

    IL_0188:  ldloc.s    V_6
    IL_018a:  ldloc.s    V_8
    IL_018c:  ldc.i4.1
    IL_018d:  sub
    IL_018e:  ldc.i4.0
    IL_018f:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0194:  call       int32 Game.SoilBlock::SetNitrogen(int32,
                                                           int32)
    IL_0199:  stloc.s    V_13
    IL_019b:  ldloc.s    V_5
    IL_019d:  ldloc.s    V_13
    IL_019f:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_01a4:  stloc.s    V_14
    IL_01a6:  ldarg.0
    IL_01a7:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemPlantBlockBehavior/Replacement> Game.SubsystemPlantBlockBehavior::m_toReplace
    IL_01ac:  ldarg.2
    IL_01ad:  ldarg.3
    IL_01ae:  ldc.i4.1
    IL_01af:  sub
    IL_01b0:  ldarg.s    z
    IL_01b2:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_01b7:  ldloca.s   V_4
    IL_01b9:  initobj    Game.SubsystemPlantBlockBehavior/Replacement
    IL_01bf:  ldloca.s   V_4
    IL_01c1:  ldloc.s    V_14
    IL_01c3:  stfld      int32 Game.SubsystemPlantBlockBehavior/Replacement::Value
    IL_01c8:  ldloca.s   V_4
    IL_01ca:  ldloc.s    V_5
    IL_01cc:  stfld      int32 Game.SubsystemPlantBlockBehavior/Replacement::RequiredValue
    IL_01d1:  ldloc.s    V_4
    IL_01d3:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemPlantBlockBehavior/Replacement>::set_Item(!0,
                                                                                                                                                                                                           !1)
    IL_01d8:  ret

    IL_01d9:  ldarg.1
    IL_01da:  ldloc.0
    IL_01db:  ldc.i4.1
    IL_01dc:  call       int32 Game.RyeBlock::SetIsWild(int32,
                                                        bool)
    IL_01e1:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_01e6:  stloc.s    V_15
    IL_01e8:  ldarg.0
    IL_01e9:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemPlantBlockBehavior/Replacement> Game.SubsystemPlantBlockBehavior::m_toReplace
    IL_01ee:  ldarg.2
    IL_01ef:  ldarg.3
    IL_01f0:  ldarg.s    z
    IL_01f2:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_01f7:  ldloca.s   V_4
    IL_01f9:  initobj    Game.SubsystemPlantBlockBehavior/Replacement
    IL_01ff:  ldloca.s   V_4
    IL_0201:  ldloc.s    V_15
    IL_0203:  stfld      int32 Game.SubsystemPlantBlockBehavior/Replacement::Value
    IL_0208:  ldloca.s   V_4
    IL_020a:  ldarg.1
    IL_020b:  stfld      int32 Game.SubsystemPlantBlockBehavior/Replacement::RequiredValue
    IL_0210:  ldloc.s    V_4
    IL_0212:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemPlantBlockBehavior/Replacement>::set_Item(!0,
                                                                                                                                                                                                           !1)
    IL_0217:  ret
  } // end of method SubsystemPlantBlockBehavior::GrowRye

  .method private hidebysig instance void 
          GrowCotton(int32 'value',
                     int32 x,
                     int32 y,
                     int32 z,
                     int32 pollPass) cil managed
  {
    // 代码大小       536 (0x218)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             valuetype Game.SubsystemPlantBlockBehavior/Replacement V_4,
             int32 V_5,
             int32 V_6,
             bool V_7,
             int32 V_8,
             int32 V_9,
             float32 V_10,
             int32 V_11,
             int32 V_12,
             int32 V_13,
             int32 V_14,
             int32 V_15)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  ldc.i4.1
    IL_000e:  add
    IL_000f:  ldarg.s    z
    IL_0011:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0016:  call       int32 Game.Terrain::ExtractLight(int32)
    IL_001b:  ldc.i4.s   9
    IL_001d:  bge.s      IL_0020

    IL_001f:  ret

    IL_0020:  ldarg.1
    IL_0021:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0026:  stloc.0
    IL_0027:  ldloc.0
    IL_0028:  call       int32 Game.CottonBlock::GetSize(int32)
    IL_002d:  stloc.1
    IL_002e:  ldloc.1
    IL_002f:  ldc.i4.2
    IL_0030:  blt.s      IL_0033

    IL_0032:  ret

    IL_0033:  ldloc.0
    IL_0034:  call       bool Game.CottonBlock::GetIsWild(int32)
    IL_0039:  brfalse.s  IL_0089

    IL_003b:  ldloc.1
    IL_003c:  ldc.i4.2
    IL_003d:  bge        IL_0217

    IL_0042:  ldloc.0
    IL_0043:  ldc.i4.1
    IL_0044:  call       int32 Game.CottonBlock::SetIsWild(int32,
                                                           bool)
    IL_0049:  ldloc.1
    IL_004a:  ldc.i4.1
    IL_004b:  add
    IL_004c:  call       int32 Game.CottonBlock::SetSize(int32,
                                                         int32)
    IL_0051:  stloc.2
    IL_0052:  ldarg.1
    IL_0053:  ldloc.2
    IL_0054:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_0059:  stloc.3
    IL_005a:  ldarg.0
    IL_005b:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemPlantBlockBehavior/Replacement> Game.SubsystemPlantBlockBehavior::m_toReplace
    IL_0060:  ldarg.2
    IL_0061:  ldarg.3
    IL_0062:  ldarg.s    z
    IL_0064:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0069:  ldloca.s   V_4
    IL_006b:  initobj    Game.SubsystemPlantBlockBehavior/Replacement
    IL_0071:  ldloca.s   V_4
    IL_0073:  ldloc.3
    IL_0074:  stfld      int32 Game.SubsystemPlantBlockBehavior/Replacement::Value
    IL_0079:  ldloca.s   V_4
    IL_007b:  ldarg.1
    IL_007c:  stfld      int32 Game.SubsystemPlantBlockBehavior/Replacement::RequiredValue
    IL_0081:  ldloc.s    V_4
    IL_0083:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemPlantBlockBehavior/Replacement>::set_Item(!0,
                                                                                                                                                                                                           !1)
    IL_0088:  ret

    IL_0089:  ldarg.0
    IL_008a:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_008f:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0094:  ldarg.2
    IL_0095:  ldarg.3
    IL_0096:  ldc.i4.1
    IL_0097:  sub
    IL_0098:  ldarg.s    z
    IL_009a:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_009f:  stloc.s    V_5
    IL_00a1:  ldloc.s    V_5
    IL_00a3:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_00a8:  ldc.i4     0xa8
    IL_00ad:  bne.un     IL_01d9

    IL_00b2:  ldloc.s    V_5
    IL_00b4:  call       int32 Game.Terrain::ExtractData(int32)
    IL_00b9:  stloc.s    V_6
    IL_00bb:  ldloc.s    V_6
    IL_00bd:  call       bool Game.SoilBlock::GetHydration(int32)
    IL_00c2:  stloc.s    V_7
    IL_00c4:  ldloc.s    V_6
    IL_00c6:  call       int32 Game.SoilBlock::GetNitrogen(int32)
    IL_00cb:  stloc.s    V_8
    IL_00cd:  ldc.i4.6
    IL_00ce:  stloc.s    V_9
    IL_00d0:  ldc.r4     0.80000001
    IL_00d5:  stloc.s    V_10
    IL_00d7:  ldloc.s    V_8
    IL_00d9:  ldc.i4.0
    IL_00da:  ble.s      IL_00ec

    IL_00dc:  ldloc.s    V_9
    IL_00de:  ldc.i4.2
    IL_00df:  sub
    IL_00e0:  stloc.s    V_9
    IL_00e2:  ldloc.s    V_10
    IL_00e4:  ldc.r4     0.40000001
    IL_00e9:  sub
    IL_00ea:  stloc.s    V_10
    IL_00ec:  ldloc.s    V_7
    IL_00ee:  brfalse.s  IL_0100

    IL_00f0:  ldloc.s    V_9
    IL_00f2:  ldc.i4.2
    IL_00f3:  sub
    IL_00f4:  stloc.s    V_9
    IL_00f6:  ldloc.s    V_10
    IL_00f8:  ldc.r4     0.40000001
    IL_00fd:  sub
    IL_00fe:  stloc.s    V_10
    IL_0100:  ldarg.s    pollPass
    IL_0102:  ldloc.s    V_9
    IL_0104:  ldc.i4.1
    IL_0105:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_010a:  rem
    IL_010b:  brfalse.s  IL_010e

    IL_010d:  ret

    IL_010e:  ldloc.0
    IL_010f:  ldloc.1
    IL_0110:  ldc.i4.1
    IL_0111:  add
    IL_0112:  ldc.i4.2
    IL_0113:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0118:  call       int32 Game.CottonBlock::SetSize(int32,
                                                         int32)
    IL_011d:  stloc.s    V_11
    IL_011f:  ldarg.0
    IL_0120:  ldfld      class Game.Random Game.SubsystemPlantBlockBehavior::m_random
    IL_0125:  ldc.r4     0.0
    IL_012a:  ldc.r4     1.
    IL_012f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0134:  ldloc.s    V_10
    IL_0136:  bge.un.s   IL_0146

    IL_0138:  ldloc.1
    IL_0139:  ldc.i4.1
    IL_013a:  bne.un.s   IL_0146

    IL_013c:  ldloc.s    V_11
    IL_013e:  ldc.i4.1
    IL_013f:  call       int32 Game.CottonBlock::SetIsWild(int32,
                                                           bool)
    IL_0144:  stloc.s    V_11
    IL_0146:  ldarg.1
    IL_0147:  ldloc.s    V_11
    IL_0149:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_014e:  stloc.s    V_12
    IL_0150:  ldarg.0
    IL_0151:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemPlantBlockBehavior/Replacement> Game.SubsystemPlantBlockBehavior::m_toReplace
    IL_0156:  ldarg.2
    IL_0157:  ldarg.3
    IL_0158:  ldarg.s    z
    IL_015a:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_015f:  ldloca.s   V_4
    IL_0161:  initobj    Game.SubsystemPlantBlockBehavior/Replacement
    IL_0167:  ldloca.s   V_4
    IL_0169:  ldloc.s    V_12
    IL_016b:  stfld      int32 Game.SubsystemPlantBlockBehavior/Replacement::Value
    IL_0170:  ldloca.s   V_4
    IL_0172:  ldarg.1
    IL_0173:  stfld      int32 Game.SubsystemPlantBlockBehavior/Replacement::RequiredValue
    IL_0178:  ldloc.s    V_4
    IL_017a:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemPlantBlockBehavior/Replacement>::set_Item(!0,
                                                                                                                                                                                                           !1)
    IL_017f:  ldloc.1
    IL_0180:  ldc.i4.1
    IL_0181:  add
    IL_0182:  ldc.i4.2
    IL_0183:  bne.un     IL_0217

    IL_0188:  ldloc.s    V_6
    IL_018a:  ldloc.s    V_8
    IL_018c:  ldc.i4.1
    IL_018d:  sub
    IL_018e:  ldc.i4.0
    IL_018f:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0194:  call       int32 Game.SoilBlock::SetNitrogen(int32,
                                                           int32)
    IL_0199:  stloc.s    V_13
    IL_019b:  ldloc.s    V_5
    IL_019d:  ldloc.s    V_13
    IL_019f:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_01a4:  stloc.s    V_14
    IL_01a6:  ldarg.0
    IL_01a7:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemPlantBlockBehavior/Replacement> Game.SubsystemPlantBlockBehavior::m_toReplace
    IL_01ac:  ldarg.2
    IL_01ad:  ldarg.3
    IL_01ae:  ldc.i4.1
    IL_01af:  sub
    IL_01b0:  ldarg.s    z
    IL_01b2:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_01b7:  ldloca.s   V_4
    IL_01b9:  initobj    Game.SubsystemPlantBlockBehavior/Replacement
    IL_01bf:  ldloca.s   V_4
    IL_01c1:  ldloc.s    V_14
    IL_01c3:  stfld      int32 Game.SubsystemPlantBlockBehavior/Replacement::Value
    IL_01c8:  ldloca.s   V_4
    IL_01ca:  ldloc.s    V_5
    IL_01cc:  stfld      int32 Game.SubsystemPlantBlockBehavior/Replacement::RequiredValue
    IL_01d1:  ldloc.s    V_4
    IL_01d3:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemPlantBlockBehavior/Replacement>::set_Item(!0,
                                                                                                                                                                                                           !1)
    IL_01d8:  ret

    IL_01d9:  ldarg.1
    IL_01da:  ldloc.0
    IL_01db:  ldc.i4.1
    IL_01dc:  call       int32 Game.CottonBlock::SetIsWild(int32,
                                                           bool)
    IL_01e1:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_01e6:  stloc.s    V_15
    IL_01e8:  ldarg.0
    IL_01e9:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemPlantBlockBehavior/Replacement> Game.SubsystemPlantBlockBehavior::m_toReplace
    IL_01ee:  ldarg.2
    IL_01ef:  ldarg.3
    IL_01f0:  ldarg.s    z
    IL_01f2:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_01f7:  ldloca.s   V_4
    IL_01f9:  initobj    Game.SubsystemPlantBlockBehavior/Replacement
    IL_01ff:  ldloca.s   V_4
    IL_0201:  ldloc.s    V_15
    IL_0203:  stfld      int32 Game.SubsystemPlantBlockBehavior/Replacement::Value
    IL_0208:  ldloca.s   V_4
    IL_020a:  ldarg.1
    IL_020b:  stfld      int32 Game.SubsystemPlantBlockBehavior/Replacement::RequiredValue
    IL_0210:  ldloc.s    V_4
    IL_0212:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemPlantBlockBehavior/Replacement>::set_Item(!0,
                                                                                                                                                                                                           !1)
    IL_0217:  ret
  } // end of method SubsystemPlantBlockBehavior::GrowCotton

  .method private hidebysig instance void 
          GrowPumpkin(int32 'value',
                      int32 x,
                      int32 y,
                      int32 z,
                      int32 pollPass) cil managed
  {
    // 代码大小       428 (0x1ac)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             bool V_5,
             int32 V_6,
             int32 V_7,
             float32 V_8,
             int32 V_9,
             int32 V_10,
             valuetype Game.SubsystemPlantBlockBehavior/Replacement V_11,
             int32 V_12,
             int32 V_13)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  ldc.i4.1
    IL_000e:  add
    IL_000f:  ldarg.s    z
    IL_0011:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0016:  call       int32 Game.Terrain::ExtractLight(int32)
    IL_001b:  ldc.i4.s   9
    IL_001d:  bge.s      IL_0020

    IL_001f:  ret

    IL_0020:  ldarg.1
    IL_0021:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0026:  stloc.0
    IL_0027:  ldloc.0
    IL_0028:  call       int32 Game.BasePumpkinBlock::GetSize(int32)
    IL_002d:  stloc.1
    IL_002e:  ldloc.0
    IL_002f:  call       bool Game.BasePumpkinBlock::GetIsDead(int32)
    IL_0034:  brtrue.s   IL_003a

    IL_0036:  ldloc.1
    IL_0037:  ldc.i4.7
    IL_0038:  blt.s      IL_003b

    IL_003a:  ret

    IL_003b:  ldarg.0
    IL_003c:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0041:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0046:  ldarg.2
    IL_0047:  ldarg.3
    IL_0048:  ldc.i4.1
    IL_0049:  sub
    IL_004a:  ldarg.s    z
    IL_004c:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0051:  stloc.2
    IL_0052:  ldloc.2
    IL_0053:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0058:  stloc.3
    IL_0059:  ldloc.2
    IL_005a:  call       int32 Game.Terrain::ExtractData(int32)
    IL_005f:  stloc.s    V_4
    IL_0061:  ldloc.3
    IL_0062:  ldc.i4     0xa8
    IL_0067:  beq.s      IL_006c

    IL_0069:  ldc.i4.0
    IL_006a:  br.s       IL_0073

    IL_006c:  ldloc.s    V_4
    IL_006e:  call       bool Game.SoilBlock::GetHydration(int32)
    IL_0073:  stloc.s    V_5
    IL_0075:  ldloc.3
    IL_0076:  ldc.i4     0xa8
    IL_007b:  beq.s      IL_0080

    IL_007d:  ldc.i4.0
    IL_007e:  br.s       IL_0087

    IL_0080:  ldloc.s    V_4
    IL_0082:  call       int32 Game.SoilBlock::GetNitrogen(int32)
    IL_0087:  stloc.s    V_6
    IL_0089:  ldc.i4.4
    IL_008a:  stloc.s    V_7
    IL_008c:  ldc.r4     0.15000001
    IL_0091:  stloc.s    V_8
    IL_0093:  ldloc.3
    IL_0094:  ldc.i4     0xa8
    IL_0099:  bne.un.s   IL_00ab

    IL_009b:  ldloc.s    V_7
    IL_009d:  ldc.i4.1
    IL_009e:  sub
    IL_009f:  stloc.s    V_7
    IL_00a1:  ldloc.s    V_8
    IL_00a3:  ldc.r4     5.0000001e-002
    IL_00a8:  sub
    IL_00a9:  stloc.s    V_8
    IL_00ab:  ldloc.s    V_6
    IL_00ad:  ldc.i4.0
    IL_00ae:  ble.s      IL_00c0

    IL_00b0:  ldloc.s    V_7
    IL_00b2:  ldc.i4.1
    IL_00b3:  sub
    IL_00b4:  stloc.s    V_7
    IL_00b6:  ldloc.s    V_8
    IL_00b8:  ldc.r4     5.0000001e-002
    IL_00bd:  sub
    IL_00be:  stloc.s    V_8
    IL_00c0:  ldloc.s    V_5
    IL_00c2:  brfalse.s  IL_00d4

    IL_00c4:  ldloc.s    V_7
    IL_00c6:  ldc.i4.1
    IL_00c7:  sub
    IL_00c8:  stloc.s    V_7
    IL_00ca:  ldloc.s    V_8
    IL_00cc:  ldc.r4     5.0000001e-002
    IL_00d1:  sub
    IL_00d2:  stloc.s    V_8
    IL_00d4:  ldarg.s    pollPass
    IL_00d6:  ldloc.s    V_7
    IL_00d8:  ldc.i4.1
    IL_00d9:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00de:  rem
    IL_00df:  brfalse.s  IL_00e2

    IL_00e1:  ret

    IL_00e2:  ldloc.0
    IL_00e3:  ldloc.1
    IL_00e4:  ldc.i4.1
    IL_00e5:  add
    IL_00e6:  ldc.i4.7
    IL_00e7:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_00ec:  call       int32 Game.BasePumpkinBlock::SetSize(int32,
                                                              int32)
    IL_00f1:  stloc.s    V_9
    IL_00f3:  ldarg.0
    IL_00f4:  ldfld      class Game.Random Game.SubsystemPlantBlockBehavior::m_random
    IL_00f9:  ldc.r4     0.0
    IL_00fe:  ldc.r4     1.
    IL_0103:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0108:  ldloc.s    V_8
    IL_010a:  bge.un.s   IL_0116

    IL_010c:  ldloc.s    V_9
    IL_010e:  ldc.i4.1
    IL_010f:  call       int32 Game.BasePumpkinBlock::SetIsDead(int32,
                                                                bool)
    IL_0114:  stloc.s    V_9
    IL_0116:  ldarg.1
    IL_0117:  ldloc.s    V_9
    IL_0119:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_011e:  stloc.s    V_10
    IL_0120:  ldarg.0
    IL_0121:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemPlantBlockBehavior/Replacement> Game.SubsystemPlantBlockBehavior::m_toReplace
    IL_0126:  ldarg.2
    IL_0127:  ldarg.3
    IL_0128:  ldarg.s    z
    IL_012a:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_012f:  ldloca.s   V_11
    IL_0131:  initobj    Game.SubsystemPlantBlockBehavior/Replacement
    IL_0137:  ldloca.s   V_11
    IL_0139:  ldloc.s    V_10
    IL_013b:  stfld      int32 Game.SubsystemPlantBlockBehavior/Replacement::Value
    IL_0140:  ldloca.s   V_11
    IL_0142:  ldarg.1
    IL_0143:  stfld      int32 Game.SubsystemPlantBlockBehavior/Replacement::RequiredValue
    IL_0148:  ldloc.s    V_11
    IL_014a:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemPlantBlockBehavior/Replacement>::set_Item(!0,
                                                                                                                                                                                                           !1)
    IL_014f:  ldloc.3
    IL_0150:  ldc.i4     0xa8
    IL_0155:  bne.un.s   IL_01ab

    IL_0157:  ldloc.1
    IL_0158:  ldc.i4.1
    IL_0159:  add
    IL_015a:  ldc.i4.7
    IL_015b:  bne.un.s   IL_01ab

    IL_015d:  ldloc.s    V_4
    IL_015f:  ldloc.s    V_6
    IL_0161:  ldc.i4.3
    IL_0162:  sub
    IL_0163:  ldc.i4.0
    IL_0164:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0169:  call       int32 Game.SoilBlock::SetNitrogen(int32,
                                                           int32)
    IL_016e:  stloc.s    V_12
    IL_0170:  ldloc.2
    IL_0171:  ldloc.s    V_12
    IL_0173:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_0178:  stloc.s    V_13
    IL_017a:  ldarg.0
    IL_017b:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemPlantBlockBehavior/Replacement> Game.SubsystemPlantBlockBehavior::m_toReplace
    IL_0180:  ldarg.2
    IL_0181:  ldarg.3
    IL_0182:  ldc.i4.1
    IL_0183:  sub
    IL_0184:  ldarg.s    z
    IL_0186:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_018b:  ldloca.s   V_11
    IL_018d:  initobj    Game.SubsystemPlantBlockBehavior/Replacement
    IL_0193:  ldloca.s   V_11
    IL_0195:  ldloc.s    V_13
    IL_0197:  stfld      int32 Game.SubsystemPlantBlockBehavior/Replacement::Value
    IL_019c:  ldloca.s   V_11
    IL_019e:  ldloc.2
    IL_019f:  stfld      int32 Game.SubsystemPlantBlockBehavior/Replacement::RequiredValue
    IL_01a4:  ldloc.s    V_11
    IL_01a6:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemPlantBlockBehavior/Replacement>::set_Item(!0,
                                                                                                                                                                                                           !1)
    IL_01ab:  ret
  } // end of method SubsystemPlantBlockBehavior::GrowPumpkin

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.SubsystemPlantBlockBehavior::m_random
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemPlantBlockBehavior/Replacement>::.ctor()
    IL_0011:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemPlantBlockBehavior/Replacement> Game.SubsystemPlantBlockBehavior::m_toReplace
    IL_0016:  ldarg.0
    IL_0017:  call       instance void Game.SubsystemPollableBlockBehavior::.ctor()
    IL_001c:  ret
  } // end of method SubsystemPlantBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemPlantBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemPlantBlockBehavior::HandledBlocks
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemPlantBlockBehavior::get_UpdateOrder()
  } // end of property SubsystemPlantBlockBehavior::UpdateOrder
} // end of class Game.SubsystemPlantBlockBehavior