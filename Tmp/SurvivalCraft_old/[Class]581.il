.class public auto ansi beforefieldinit Game.SubsystemIvyBlockBehavior
       extends Game.SubsystemPollableBlockBehavior
       implements Game.IUpdateable
{
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.Random m_random
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> m_toUpdate
  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemIvyBlockBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       202 (0xca)
    .maxstack  6
    .locals init (valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,int32> V_0,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32> V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTime Game.SubsystemIvyBlockBehavior::m_subsystemTime
    IL_0006:  ldc.r8     60.
    IL_000f:  ldc.r8     0.0
    IL_0018:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_001d:  brfalse    IL_00c9

    IL_0022:  ldarg.0
    IL_0023:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemIvyBlockBehavior::m_toUpdate
    IL_0028:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::GetEnumerator()
    IL_002d:  stloc.0
    .try
    {
      IL_002e:  br.s       IL_00a5

      IL_0030:  ldloca.s   V_0
      IL_0032:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,int32>::get_Current()
      IL_0037:  stloc.1
      IL_0038:  ldarg.0
      IL_0039:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
      IL_003e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_0043:  ldloca.s   V_1
      IL_0045:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32>::get_Key()
      IL_004a:  ldfld      int32 [Engine]Engine.Point3::X
      IL_004f:  ldloca.s   V_1
      IL_0051:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32>::get_Key()
      IL_0056:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_005b:  ldloca.s   V_1
      IL_005d:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32>::get_Key()
      IL_0062:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0067:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                            int32,
                                                                            int32)
      IL_006c:  brtrue.s   IL_00a5

      IL_006e:  ldarg.0
      IL_006f:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
      IL_0074:  ldloca.s   V_1
      IL_0076:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32>::get_Key()
      IL_007b:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0080:  ldloca.s   V_1
      IL_0082:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32>::get_Key()
      IL_0087:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_008c:  ldloca.s   V_1
      IL_008e:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32>::get_Key()
      IL_0093:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0098:  ldloca.s   V_1
      IL_009a:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32>::get_Value()
      IL_009f:  ldc.i4.1
      IL_00a0:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32,
                                                                           bool)
      IL_00a5:  ldloca.s   V_0
      IL_00a7:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,int32>::MoveNext()
      IL_00ac:  brtrue.s   IL_0030

      IL_00ae:  leave.s    IL_00be

    }  // end .try
    finally
    {
      IL_00b0:  ldloca.s   V_0
      IL_00b2:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,int32>
      IL_00b8:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00bd:  endfinally
    }  // end handler
    IL_00be:  ldarg.0
    IL_00bf:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemIvyBlockBehavior::m_toUpdate
    IL_00c4:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::Clear()
    IL_00c9:  ret
  } // end of method SubsystemIvyBlockBehavior::Update

  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  ret
  } // end of method SubsystemIvyBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance void 
          OnNeighborBlockChanged(int32 x,
                                 int32 y,
                                 int32 z,
                                 int32 neighborX,
                                 int32 neighborY,
                                 int32 neighborZ) cil managed
  {
    // 代码大小       174 (0xae)
    .maxstack  8
    .locals init (int32 V_0,
             bool V_1,
             int32 V_2,
             valuetype [Engine]Engine.Point3 V_3,
             int32 V_4)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  ldarg.1
    IL_000c:  ldarg.2
    IL_000d:  ldarg.3
    IL_000e:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0013:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0018:  call       int32 Game.IvyBlock::GetFace(int32)
    IL_001d:  stloc.0
    IL_001e:  ldc.i4.0
    IL_001f:  stloc.1
    IL_0020:  ldarg.0
    IL_0021:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0026:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_002b:  ldarg.1
    IL_002c:  ldarg.2
    IL_002d:  ldc.i4.1
    IL_002e:  add
    IL_002f:  ldarg.3
    IL_0030:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0035:  stloc.2
    IL_0036:  ldloc.2
    IL_0037:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_003c:  ldc.i4     0xc5
    IL_0041:  bne.un.s   IL_0053

    IL_0043:  ldloc.2
    IL_0044:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0049:  call       int32 Game.IvyBlock::GetFace(int32)
    IL_004e:  ldloc.0
    IL_004f:  bne.un.s   IL_0053

    IL_0051:  ldc.i4.1
    IL_0052:  stloc.1
    IL_0053:  ldloc.1
    IL_0054:  brtrue.s   IL_00ad

    IL_0056:  ldloc.0
    IL_0057:  call       valuetype [Engine]Engine.Point3 Game.CellFace::FaceToPoint3(int32)
    IL_005c:  stloc.3
    IL_005d:  ldarg.0
    IL_005e:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0063:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0068:  ldarg.1
    IL_0069:  ldloc.3
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_006f:  add
    IL_0070:  ldarg.2
    IL_0071:  ldloc.3
    IL_0072:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0077:  add
    IL_0078:  ldarg.3
    IL_0079:  ldloc.3
    IL_007a:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_007f:  add
    IL_0080:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0085:  stloc.s    V_4
    IL_0087:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_008c:  ldloc.s    V_4
    IL_008e:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0093:  ldelem.ref
    IL_0094:  ldfld      bool Game.Block::IsCollidable
    IL_0099:  brtrue.s   IL_00ad

    IL_009b:  ldarg.0
    IL_009c:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_00a1:  ldc.i4.0
    IL_00a2:  ldarg.1
    IL_00a3:  ldarg.2
    IL_00a4:  ldarg.3
    IL_00a5:  ldc.i4.0
    IL_00a6:  ldc.i4.1
    IL_00a7:  ldc.i4.0
    IL_00a8:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_00ad:  ret
  } // end of method SubsystemIvyBlockBehavior::OnNeighborBlockChanged

  .method public hidebysig virtual instance void 
          OnPoll(int32 'value',
                 int32 x,
                 int32 y,
                 int32 z,
                 int32 pollPass) cil managed
  {
    // 代码大小       93 (0x5d)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Random Game.SubsystemIvyBlockBehavior::m_random
    IL_0006:  ldc.r4     0.0
    IL_000b:  ldc.r4     1.
    IL_0010:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0015:  ldc.r4     0.5
    IL_001a:  bge.un.s   IL_005c

    IL_001c:  ldarg.2
    IL_001d:  ldarg.3
    IL_001e:  ldarg.s    z
    IL_0020:  call       bool Game.IvyBlock::IsGrowthStopCell(int32,
                                                              int32,
                                                              int32)
    IL_0025:  brfalse.s  IL_0028

    IL_0027:  ret

    IL_0028:  ldarg.0
    IL_0029:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_002e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0033:  ldarg.2
    IL_0034:  ldarg.3
    IL_0035:  ldc.i4.1
    IL_0036:  sub
    IL_0037:  ldarg.s    z
    IL_0039:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_003e:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0043:  brtrue.s   IL_005c

    IL_0045:  ldarg.0
    IL_0046:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemIvyBlockBehavior::m_toUpdate
    IL_004b:  ldarg.2
    IL_004c:  ldarg.3
    IL_004d:  ldc.i4.1
    IL_004e:  sub
    IL_004f:  ldarg.s    z
    IL_0051:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0056:  ldarg.1
    IL_0057:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::set_Item(!0,
                                                                                                                                                          !1)
    IL_005c:  ret
  } // end of method SubsystemIvyBlockBehavior::OnPoll

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_0014:  stfld      class Game.SubsystemTime Game.SubsystemIvyBlockBehavior::m_subsystemTime
    IL_0019:  ret
  } // end of method SubsystemIvyBlockBehavior::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.SubsystemIvyBlockBehavior::m_random
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::.ctor()
    IL_0011:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemIvyBlockBehavior::m_toUpdate
    IL_0016:  ldarg.0
    IL_0017:  call       instance void Game.SubsystemPollableBlockBehavior::.ctor()
    IL_001c:  ret
  } // end of method SubsystemIvyBlockBehavior::.ctor

  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemIvyBlockBehavior::get_UpdateOrder()
  } // end of property SubsystemIvyBlockBehavior::UpdateOrder
  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemIvyBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemIvyBlockBehavior::HandledBlocks
} // end of class Game.SubsystemIvyBlockBehavior