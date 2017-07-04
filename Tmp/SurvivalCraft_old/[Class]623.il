.class public auto ansi beforefieldinit Game.SubsystemMagnetBlockBehavior
       extends Game.SubsystemBlockBehavior
{
  .field private class Game.SubsystemPlayers m_subsystemPlayers
  .field private class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3> m_magnets
  .field public static literal int32 MaxMagnets = int32(0x00000008)
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4     0xa7
    IL_000d:  stelem.i4
    IL_000e:  ret
  } // end of method SubsystemMagnetBlockBehavior::get_HandledBlocks

  .method public hidebysig specialname instance int32 
          get_MagnetsCount() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3> Game.SubsystemMagnetBlockBehavior::m_magnets
    IL_0006:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3>::get_Count()
    IL_000b:  ret
  } // end of method SubsystemMagnetBlockBehavior::get_MagnetsCount

  .method public hidebysig instance valuetype [Engine]Engine.Vector3 
          FindNearestCompassTarget(valuetype [Engine]Engine.Vector3 compassPosition) cil managed
  {
    // 代码大小       225 (0xe1)
    .maxstack  2
    .locals init (float32 V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             int32 V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             float32 V_4,
             float32 V_5,
             valuetype [Engine]Engine.Vector3 V_6,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.PlayerData> V_7,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> V_8,
             valuetype [Engine]Engine.Vector3 V_9,
             float32 V_10)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3> Game.SubsystemMagnetBlockBehavior::m_magnets
    IL_0006:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3>::get_Count()
    IL_000b:  ldc.i4.0
    IL_000c:  ble.s      IL_006a

    IL_000e:  ldc.r4     3.4028235e+038
    IL_0013:  stloc.0
    IL_0014:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0019:  stloc.1
    IL_001a:  ldc.i4.0
    IL_001b:  stloc.2
    IL_001c:  br.s       IL_0047

    IL_001e:  ldarg.0
    IL_001f:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3> Game.SubsystemMagnetBlockBehavior::m_magnets
    IL_0024:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3>::get_Array()
    IL_0029:  ldloc.2
    IL_002a:  ldelem     [Engine]Engine.Vector3
    IL_002f:  stloc.3
    IL_0030:  ldarg.1
    IL_0031:  ldloc.3
    IL_0032:  call       float32 [Engine]Engine.Vector3::DistanceSquared(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0037:  stloc.s    V_4
    IL_0039:  ldloc.s    V_4
    IL_003b:  ldloc.0
    IL_003c:  bge.un.s   IL_0043

    IL_003e:  ldloc.s    V_4
    IL_0040:  stloc.0
    IL_0041:  ldloc.3
    IL_0042:  stloc.1
    IL_0043:  ldloc.2
    IL_0044:  ldc.i4.1
    IL_0045:  add
    IL_0046:  stloc.2
    IL_0047:  ldloc.2
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3> Game.SubsystemMagnetBlockBehavior::m_magnets
    IL_004e:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3>::get_Count()
    IL_0053:  bge.s      IL_0059

    IL_0055:  ldloc.2
    IL_0056:  ldc.i4.8
    IL_0057:  blt.s      IL_001e

    IL_0059:  ldloc.1
    IL_005a:  ldc.r4     0.5
    IL_005f:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_0064:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0069:  ret

    IL_006a:  ldc.r4     3.4028235e+038
    IL_006f:  stloc.s    V_5
    IL_0071:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0076:  stloc.s    V_6
    IL_0078:  ldarg.0
    IL_0079:  ldfld      class Game.SubsystemPlayers Game.SubsystemMagnetBlockBehavior::m_subsystemPlayers
    IL_007e:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> Game.SubsystemPlayers::get_PlayersData()
    IL_0083:  stloc.s    V_8
    IL_0085:  ldloca.s   V_8
    IL_0087:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData>::GetEnumerator()
    IL_008c:  stloc.s    V_7
    .try
    {
      IL_008e:  br.s       IL_00b6

      IL_0090:  ldloca.s   V_7
      IL_0092:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.PlayerData>::get_Current()
      IL_0097:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.PlayerData::get_SpawnPosition()
      IL_009c:  stloc.s    V_9
      IL_009e:  ldarg.1
      IL_009f:  ldloc.s    V_9
      IL_00a1:  call       float32 [Engine]Engine.Vector3::DistanceSquared(valuetype [Engine]Engine.Vector3,
                                                                           valuetype [Engine]Engine.Vector3)
      IL_00a6:  stloc.s    V_10
      IL_00a8:  ldloc.s    V_10
      IL_00aa:  ldloc.s    V_5
      IL_00ac:  bge.un.s   IL_00b6

      IL_00ae:  ldloc.s    V_10
      IL_00b0:  stloc.s    V_5
      IL_00b2:  ldloc.s    V_9
      IL_00b4:  stloc.s    V_6
      IL_00b6:  ldloca.s   V_7
      IL_00b8:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.PlayerData>::MoveNext()
      IL_00bd:  brtrue.s   IL_0090

      IL_00bf:  leave.s    IL_00cf

    }  // end .try
    finally
    {
      IL_00c1:  ldloca.s   V_7
      IL_00c3:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.PlayerData>
      IL_00c9:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00ce:  endfinally
    }  // end handler
    IL_00cf:  ldloc.s    V_6
    IL_00d1:  ldc.r4     0.5
    IL_00d6:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_00db:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00e0:  ret
  } // end of method SubsystemMagnetBlockBehavior::FindNearestCompassTarget

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       57 (0x39)
    .maxstack  3
    .locals init (string V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPlayers>(bool)
    IL_0014:  stfld      class Game.SubsystemPlayers Game.SubsystemMagnetBlockBehavior::m_subsystemPlayers
    IL_0019:  ldarg.1
    IL_001a:  ldstr      "Magnets"
    IL_001f:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_0024:  stloc.0
    IL_0025:  ldarg.0
    IL_0026:  ldc.i4.s   59
    IL_0028:  ldloc.0
    IL_0029:  call       !!0[] [Engine]Engine.Serialization.HumanReadableConverter::ValuesListFromString<valuetype [Engine]Engine.Vector3>(char,
                                                                                                                                           string)
    IL_002e:  newobj     instance void class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3>::.ctor(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
    IL_0033:  stfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3> Game.SubsystemMagnetBlockBehavior::m_magnets
    IL_0038:  ret
  } // end of method SubsystemMagnetBlockBehavior::Load

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
    IL_000a:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3> Game.SubsystemMagnetBlockBehavior::m_magnets
    IL_000f:  call       !!0[] [System.Linq]System.Linq.Enumerable::ToArray<valuetype [Engine]Engine.Vector3>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0014:  call       string [Engine]Engine.Serialization.HumanReadableConverter::ValuesListToString<valuetype [Engine]Engine.Vector3>(char,
                                                                                                                                          !!0[])
    IL_0019:  stloc.0
    IL_001a:  ldarg.1
    IL_001b:  ldstr      "Magnets"
    IL_0020:  ldloc.0
    IL_0021:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                          !!0)
    IL_0026:  ret
  } // end of method SubsystemMagnetBlockBehavior::Save

  .method public hidebysig virtual instance void 
          OnBlockAdded(int32 'value',
                       int32 oldValue,
                       int32 x,
                       int32 y,
                       int32 z) cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3> Game.SubsystemMagnetBlockBehavior::m_magnets
    IL_0006:  ldarg.3
    IL_0007:  conv.r4
    IL_0008:  ldarg.s    y
    IL_000a:  conv.r4
    IL_000b:  ldarg.s    z
    IL_000d:  conv.r4
    IL_000e:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0013:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3>::Add(!0)
    IL_0018:  ret
  } // end of method SubsystemMagnetBlockBehavior::OnBlockAdded

  .method public hidebysig virtual instance void 
          OnBlockRemoved(int32 'value',
                         int32 newValue,
                         int32 x,
                         int32 y,
                         int32 z) cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3> Game.SubsystemMagnetBlockBehavior::m_magnets
    IL_0006:  ldarg.3
    IL_0007:  conv.r4
    IL_0008:  ldarg.s    y
    IL_000a:  conv.r4
    IL_000b:  ldarg.s    z
    IL_000d:  conv.r4
    IL_000e:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0013:  callvirt   instance bool class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3>::Remove(!0)
    IL_0018:  pop
    IL_0019:  ret
  } // end of method SubsystemMagnetBlockBehavior::OnBlockRemoved

  .method public hidebysig virtual instance void 
          OnNeighborBlockChanged(int32 x,
                                 int32 y,
                                 int32 z,
                                 int32 neighborX,
                                 int32 neighborY,
                                 int32 neighborZ) cil managed
  {
    // 代码大小       55 (0x37)
    .maxstack  8
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  ldarg.1
    IL_000c:  ldarg.2
    IL_000d:  ldc.i4.1
    IL_000e:  sub
    IL_000f:  ldarg.3
    IL_0010:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_0015:  stloc.0
    IL_0016:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_001b:  ldloc.0
    IL_001c:  ldelem.ref
    IL_001d:  ldfld      bool Game.Block::IsTransparent
    IL_0022:  brfalse.s  IL_0036

    IL_0024:  ldarg.0
    IL_0025:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_002a:  ldc.i4.0
    IL_002b:  ldarg.1
    IL_002c:  ldarg.2
    IL_002d:  ldarg.3
    IL_002e:  ldc.i4.0
    IL_002f:  ldc.i4.0
    IL_0030:  ldc.i4.0
    IL_0031:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_0036:  ret
  } // end of method SubsystemMagnetBlockBehavior::OnNeighborBlockChanged

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3>::.ctor()
    IL_0006:  stfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3> Game.SubsystemMagnetBlockBehavior::m_magnets
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0011:  ret
  } // end of method SubsystemMagnetBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemMagnetBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemMagnetBlockBehavior::HandledBlocks
  .property instance int32 MagnetsCount()
  {
    .get instance int32 Game.SubsystemMagnetBlockBehavior::get_MagnetsCount()
  } // end of property SubsystemMagnetBlockBehavior::MagnetsCount
} // end of class Game.SubsystemMagnetBlockBehavior