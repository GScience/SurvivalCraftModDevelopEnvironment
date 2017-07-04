.class public auto ansi beforefieldinit Game.SubsystemGrassBlockBehavior
       extends Game.SubsystemPollableBlockBehavior
       implements Game.IUpdateable
{
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> m_toUpdate
  .field private class Game.Random m_random
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4.8
    IL_0009:  stelem.i4
    IL_000a:  ret
  } // end of method SubsystemGrassBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance void 
          OnPoll(int32 'value',
                 int32 x,
                 int32 y,
                 int32 z,
                 int32 pollPass) cil managed
  {
    // 代码大小       404 (0x194)
    .maxstack  6
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  brtrue     IL_0193

    IL_000b:  ldarg.0
    IL_000c:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGrassBlockBehavior::m_subsystemGameInfo
    IL_0011:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0016:  ldfld      valuetype Game.EnvironmentBehaviorMode Game.WorldSettings::EnvironmentBehaviorMode
    IL_001b:  brfalse.s  IL_001e

    IL_001d:  ret

    IL_001e:  ldarg.0
    IL_001f:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0024:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0029:  ldarg.2
    IL_002a:  ldarg.3
    IL_002b:  ldc.i4.1
    IL_002c:  add
    IL_002d:  ldarg.s    z
    IL_002f:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0034:  call       int32 Game.Terrain::ExtractLight(int32)
    IL_0039:  dup
    IL_003a:  brtrue.s   IL_0057

    IL_003c:  ldarg.0
    IL_003d:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemGrassBlockBehavior::m_toUpdate
    IL_0042:  ldarg.2
    IL_0043:  ldarg.3
    IL_0044:  ldarg.s    z
    IL_0046:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_004b:  ldarg.1
    IL_004c:  ldc.i4.8
    IL_004d:  call       int32 Game.Terrain::ReplaceContents(int32,
                                                             int32)
    IL_0052:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::set_Item(!0,
                                                                                                                                                          !1)
    IL_0057:  ldc.i4.s   13
    IL_0059:  blt        IL_0193

    IL_005e:  ldarg.2
    IL_005f:  ldc.i4.1
    IL_0060:  sub
    IL_0061:  stloc.0
    IL_0062:  br         IL_018a

    IL_0067:  ldarg.s    z
    IL_0069:  ldc.i4.1
    IL_006a:  sub
    IL_006b:  stloc.1
    IL_006c:  br         IL_017c

    IL_0071:  ldarg.3
    IL_0072:  ldc.i4.2
    IL_0073:  sub
    IL_0074:  stloc.2
    IL_0075:  br         IL_016f

    IL_007a:  ldarg.0
    IL_007b:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0080:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0085:  ldloc.0
    IL_0086:  ldloc.2
    IL_0087:  ldloc.1
    IL_0088:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_008d:  stloc.3
    IL_008e:  ldloc.3
    IL_008f:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0094:  ldc.i4.2
    IL_0095:  bne.un     IL_016b

    IL_009a:  ldarg.0
    IL_009b:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_00a0:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00a5:  ldloc.0
    IL_00a6:  ldloc.2
    IL_00a7:  ldc.i4.1
    IL_00a8:  add
    IL_00a9:  ldloc.1
    IL_00aa:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_00af:  stloc.s    V_4
    IL_00b1:  ldarg.0
    IL_00b2:  ldloc.s    V_4
    IL_00b4:  call       instance bool Game.SubsystemGrassBlockBehavior::KillsGrassIfOnTopOfIt(int32)
    IL_00b9:  brtrue     IL_016b

    IL_00be:  ldloc.s    V_4
    IL_00c0:  call       int32 Game.Terrain::ExtractLight(int32)
    IL_00c5:  ldc.i4.s   13
    IL_00c7:  blt        IL_016b

    IL_00cc:  ldarg.0
    IL_00cd:  ldfld      class Game.Random Game.SubsystemGrassBlockBehavior::m_random
    IL_00d2:  ldc.r4     0.0
    IL_00d7:  ldc.r4     1.
    IL_00dc:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00e1:  ldc.r4     0.1
    IL_00e6:  bge.un     IL_016b

    IL_00eb:  ldloc.3
    IL_00ec:  ldc.i4.8
    IL_00ed:  call       int32 Game.Terrain::ReplaceContents(int32,
                                                             int32)
    IL_00f2:  stloc.s    V_5
    IL_00f4:  ldarg.0
    IL_00f5:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemGrassBlockBehavior::m_toUpdate
    IL_00fa:  ldloc.0
    IL_00fb:  ldloc.2
    IL_00fc:  ldloc.1
    IL_00fd:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0102:  ldloc.s    V_5
    IL_0104:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::set_Item(!0,
                                                                                                                                                          !1)
    IL_0109:  ldloc.s    V_4
    IL_010b:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0110:  brtrue.s   IL_016b

    IL_0112:  ldarg.0
    IL_0113:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0118:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_011d:  ldloc.0
    IL_011e:  ldloc.1
    IL_011f:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_0124:  stloc.s    V_6
    IL_0126:  ldarg.0
    IL_0127:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_012c:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0131:  ldloc.0
    IL_0132:  ldloc.1
    IL_0133:  callvirt   instance int32 Game.Terrain::GetHumidity(int32,
                                                                  int32)
    IL_0138:  stloc.s    V_7
    IL_013a:  ldarg.0
    IL_013b:  ldfld      class Game.Random Game.SubsystemGrassBlockBehavior::m_random
    IL_0140:  ldloc.s    V_5
    IL_0142:  ldloc.s    V_6
    IL_0144:  ldloc.s    V_7
    IL_0146:  ldloc.2
    IL_0147:  ldc.i4.1
    IL_0148:  add
    IL_0149:  call       int32 Game.PlantsManager::GenerateRandomPlantValue(class Game.Random,
                                                                            int32,
                                                                            int32,
                                                                            int32,
                                                                            int32)
    IL_014e:  stloc.s    V_8
    IL_0150:  ldloc.s    V_8
    IL_0152:  brfalse.s  IL_016b

    IL_0154:  ldarg.0
    IL_0155:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemGrassBlockBehavior::m_toUpdate
    IL_015a:  ldloc.0
    IL_015b:  ldloc.2
    IL_015c:  ldc.i4.1
    IL_015d:  add
    IL_015e:  ldloc.1
    IL_015f:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0164:  ldloc.s    V_8
    IL_0166:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::set_Item(!0,
                                                                                                                                                          !1)
    IL_016b:  ldloc.2
    IL_016c:  ldc.i4.1
    IL_016d:  add
    IL_016e:  stloc.2
    IL_016f:  ldloc.2
    IL_0170:  ldarg.3
    IL_0171:  ldc.i4.1
    IL_0172:  add
    IL_0173:  ble        IL_007a

    IL_0178:  ldloc.1
    IL_0179:  ldc.i4.1
    IL_017a:  add
    IL_017b:  stloc.1
    IL_017c:  ldloc.1
    IL_017d:  ldarg.s    z
    IL_017f:  ldc.i4.1
    IL_0180:  add
    IL_0181:  ble        IL_0071

    IL_0186:  ldloc.0
    IL_0187:  ldc.i4.1
    IL_0188:  add
    IL_0189:  stloc.0
    IL_018a:  ldloc.0
    IL_018b:  ldarg.2
    IL_018c:  ldc.i4.1
    IL_018d:  add
    IL_018e:  ble        IL_0067

    IL_0193:  ret
  } // end of method SubsystemGrassBlockBehavior::OnPoll

  .method public hidebysig virtual instance void 
          OnNeighborBlockChanged(int32 x,
                                 int32 y,
                                 int32 z,
                                 int32 neighborX,
                                 int32 neighborY,
                                 int32 neighborZ) cil managed
  {
    // 代码大小       155 (0x9b)
    .maxstack  7
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  ldarg.1
    IL_000c:  ldarg.2
    IL_000d:  ldc.i4.1
    IL_000e:  add
    IL_000f:  ldarg.3
    IL_0010:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0015:  stloc.0
    IL_0016:  ldloc.0
    IL_0017:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_001c:  ldc.i4.s   61
    IL_001e:  bne.un.s   IL_004e

    IL_0020:  ldarg.0
    IL_0021:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0026:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_002b:  ldarg.1
    IL_002c:  ldarg.2
    IL_002d:  ldarg.3
    IL_002e:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0033:  stloc.1
    IL_0034:  ldloc.1
    IL_0035:  ldc.i4.1
    IL_0036:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_003b:  stloc.1
    IL_003c:  ldarg.0
    IL_003d:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0042:  ldarg.1
    IL_0043:  ldarg.2
    IL_0044:  ldarg.3
    IL_0045:  ldloc.1
    IL_0046:  ldc.i4.1
    IL_0047:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_004c:  br.s       IL_007a

    IL_004e:  ldarg.0
    IL_004f:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0054:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0059:  ldarg.1
    IL_005a:  ldarg.2
    IL_005b:  ldarg.3
    IL_005c:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0061:  stloc.2
    IL_0062:  ldloc.2
    IL_0063:  ldc.i4.0
    IL_0064:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_0069:  stloc.2
    IL_006a:  ldarg.0
    IL_006b:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0070:  ldarg.1
    IL_0071:  ldarg.2
    IL_0072:  ldarg.3
    IL_0073:  ldloc.2
    IL_0074:  ldc.i4.1
    IL_0075:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_007a:  ldarg.0
    IL_007b:  ldloc.0
    IL_007c:  call       instance bool Game.SubsystemGrassBlockBehavior::KillsGrassIfOnTopOfIt(int32)
    IL_0081:  brfalse.s  IL_009a

    IL_0083:  ldarg.0
    IL_0084:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0089:  ldarg.1
    IL_008a:  ldarg.2
    IL_008b:  ldarg.3
    IL_008c:  ldc.i4.2
    IL_008d:  ldc.i4.0
    IL_008e:  ldc.i4.0
    IL_008f:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0094:  ldc.i4.1
    IL_0095:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_009a:  ret
  } // end of method SubsystemGrassBlockBehavior::OnNeighborBlockChanged

  .method public hidebysig virtual instance void 
          OnExplosion(int32 'value',
                      int32 x,
                      int32 y,
                      int32 z,
                      float32 damage) cil managed
  {
    // 代码大小       63 (0x3f)
    .maxstack  8
    IL_0000:  ldarg.s    damage
    IL_0002:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0007:  ldc.i4.8
    IL_0008:  ldelem.ref
    IL_0009:  ldfld      float32 Game.Block::ExplosionResilience
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Game.Random Game.SubsystemGrassBlockBehavior::m_random
    IL_0014:  ldc.r4     0.0
    IL_0019:  ldc.r4     1.
    IL_001e:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0023:  mul
    IL_0024:  ble.un.s   IL_003e

    IL_0026:  ldarg.0
    IL_0027:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_002c:  ldarg.2
    IL_002d:  ldarg.3
    IL_002e:  ldarg.s    z
    IL_0030:  ldc.i4.2
    IL_0031:  ldc.i4.0
    IL_0032:  ldc.i4.0
    IL_0033:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0038:  ldc.i4.1
    IL_0039:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_003e:  ret
  } // end of method SubsystemGrassBlockBehavior::OnExplosion

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       44 (0x2c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_000d:  stfld      class Game.SubsystemGameInfo Game.SubsystemGrassBlockBehavior::m_subsystemGameInfo
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_001f:  stfld      class Game.SubsystemTime Game.SubsystemGrassBlockBehavior::m_subsystemTime
    IL_0024:  ldarg.0
    IL_0025:  ldarg.1
    IL_0026:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_002b:  ret
  } // end of method SubsystemGrassBlockBehavior::Load

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemGrassBlockBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       346 (0x15a)
    .maxstack  6
    .locals init (valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,int32> V_0,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32> V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTime Game.SubsystemGrassBlockBehavior::m_subsystemTime
    IL_0006:  ldc.r8     60.
    IL_000f:  ldc.r8     0.0
    IL_0018:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_001d:  brfalse    IL_0159

    IL_0022:  ldarg.0
    IL_0023:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemGrassBlockBehavior::m_toUpdate
    IL_0028:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::GetEnumerator()
    IL_002d:  stloc.0
    .try
    {
      IL_002e:  br         IL_0132

      IL_0033:  ldloca.s   V_0
      IL_0035:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,int32>::get_Current()
      IL_003a:  stloc.1
      IL_003b:  ldloca.s   V_1
      IL_003d:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32>::get_Value()
      IL_0042:  call       int32 Game.Terrain::ExtractContents(int32)
      IL_0047:  ldc.i4.8
      IL_0048:  bne.un.s   IL_0086

      IL_004a:  ldarg.0
      IL_004b:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
      IL_0050:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
      IL_0055:  ldloca.s   V_1
      IL_0057:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32>::get_Key()
      IL_005c:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0061:  ldloca.s   V_1
      IL_0063:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32>::get_Key()
      IL_0068:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_006d:  ldloca.s   V_1
      IL_006f:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32>::get_Key()
      IL_0074:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0079:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                        int32,
                                                                        int32)
      IL_007e:  ldc.i4.2
      IL_007f:  beq.s      IL_00fb

      IL_0081:  br         IL_0132

      IL_0086:  ldarg.0
      IL_0087:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
      IL_008c:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
      IL_0091:  ldloca.s   V_1
      IL_0093:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32>::get_Key()
      IL_0098:  ldfld      int32 [Engine]Engine.Point3::X
      IL_009d:  ldloca.s   V_1
      IL_009f:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32>::get_Key()
      IL_00a4:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_00a9:  ldc.i4.1
      IL_00aa:  sub
      IL_00ab:  ldloca.s   V_1
      IL_00ad:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32>::get_Key()
      IL_00b2:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_00b7:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                        int32,
                                                                        int32)
      IL_00bc:  stloc.2
      IL_00bd:  ldloc.2
      IL_00be:  ldc.i4.8
      IL_00bf:  beq.s      IL_00c5

      IL_00c1:  ldloc.2
      IL_00c2:  ldc.i4.2
      IL_00c3:  bne.un.s   IL_0132

      IL_00c5:  ldarg.0
      IL_00c6:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
      IL_00cb:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
      IL_00d0:  ldloca.s   V_1
      IL_00d2:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32>::get_Key()
      IL_00d7:  ldfld      int32 [Engine]Engine.Point3::X
      IL_00dc:  ldloca.s   V_1
      IL_00de:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32>::get_Key()
      IL_00e3:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_00e8:  ldloca.s   V_1
      IL_00ea:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32>::get_Key()
      IL_00ef:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_00f4:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                        int32,
                                                                        int32)
      IL_00f9:  brtrue.s   IL_0132

      IL_00fb:  ldarg.0
      IL_00fc:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
      IL_0101:  ldloca.s   V_1
      IL_0103:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32>::get_Key()
      IL_0108:  ldfld      int32 [Engine]Engine.Point3::X
      IL_010d:  ldloca.s   V_1
      IL_010f:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32>::get_Key()
      IL_0114:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_0119:  ldloca.s   V_1
      IL_011b:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32>::get_Key()
      IL_0120:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0125:  ldloca.s   V_1
      IL_0127:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32>::get_Value()
      IL_012c:  ldc.i4.1
      IL_012d:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32,
                                                                           bool)
      IL_0132:  ldloca.s   V_0
      IL_0134:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,int32>::MoveNext()
      IL_0139:  brtrue     IL_0033

      IL_013e:  leave.s    IL_014e

    }  // end .try
    finally
    {
      IL_0140:  ldloca.s   V_0
      IL_0142:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,int32>
      IL_0148:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_014d:  endfinally
    }  // end handler
    IL_014e:  ldarg.0
    IL_014f:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemGrassBlockBehavior::m_toUpdate
    IL_0154:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::Clear()
    IL_0159:  ret
  } // end of method SubsystemGrassBlockBehavior::Update

  .method private hidebysig instance bool 
          KillsGrassIfOnTopOfIt(int32 'value') cil managed
  {
    // 代码大小       44 (0x2c)
    .maxstack  3
    .locals init (int32 V_0,
             class Game.Block V_1)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0006:  stloc.0
    IL_0007:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_000c:  ldloc.0
    IL_000d:  ldelem.ref
    IL_000e:  stloc.1
    IL_000f:  ldloc.1
    IL_0010:  isinst     Game.FluidBlock
    IL_0015:  brtrue.s   IL_002a

    IL_0017:  ldloc.1
    IL_0018:  ldc.i4.5
    IL_0019:  ldarg.1
    IL_001a:  callvirt   instance bool Game.Block::IsFaceTransparent(int32,
                                                                     int32)
    IL_001f:  brtrue.s   IL_0028

    IL_0021:  ldloc.1
    IL_0022:  ldfld      bool Game.Block::IsCollidable
    IL_0027:  ret

    IL_0028:  ldc.i4.0
    IL_0029:  ret

    IL_002a:  ldc.i4.1
    IL_002b:  ret
  } // end of method SubsystemGrassBlockBehavior::KillsGrassIfOnTopOfIt

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemGrassBlockBehavior::m_toUpdate
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.Random::.ctor()
    IL_0011:  stfld      class Game.Random Game.SubsystemGrassBlockBehavior::m_random
    IL_0016:  ldarg.0
    IL_0017:  call       instance void Game.SubsystemPollableBlockBehavior::.ctor()
    IL_001c:  ret
  } // end of method SubsystemGrassBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemGrassBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemGrassBlockBehavior::HandledBlocks
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemGrassBlockBehavior::get_UpdateOrder()
  } // end of property SubsystemGrassBlockBehavior::UpdateOrder
} // end of class Game.SubsystemGrassBlockBehavior