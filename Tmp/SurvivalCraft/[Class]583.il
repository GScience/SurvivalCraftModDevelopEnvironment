.class public auto ansi beforefieldinit Game.SubsystemMagnetBlockBehavior
       extends Game.SubsystemBlockBehavior
{
  .field private class Game.SubsystemPlayer m_subsystemPlayer
  .field private class Game.SubsystemGui m_subsystemGui
  .field private class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3> m_magnets
  .field private static literal int32 m_maxMagnets = int32(0x00000006)
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

  .method public hidebysig instance valuetype [Engine]Engine.Vector3 
          FindNearestCompassTarget(valuetype [Engine]Engine.Vector3 compassPosition) cil managed
  {
    // 代码大小       118 (0x76)
    .maxstack  2
    .locals init (float32 V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             int32 V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             float32 V_4)
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
    IL_0056:  ldc.i4.6
    IL_0057:  blt.s      IL_001e

    IL_0059:  ldloc.1
    IL_005a:  ldc.r4     0.5
    IL_005f:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_0064:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0069:  ret

    IL_006a:  ldarg.0
    IL_006b:  ldfld      class Game.SubsystemPlayer Game.SubsystemMagnetBlockBehavior::m_subsystemPlayer
    IL_0070:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemPlayer::get_ProposedSpawnPosition()
    IL_0075:  ret
  } // end of method SubsystemMagnetBlockBehavior::FindNearestCompassTarget

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       75 (0x4b)
    .maxstack  3
    .locals init (string V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPlayer>(bool)
    IL_0014:  stfld      class Game.SubsystemPlayer Game.SubsystemMagnetBlockBehavior::m_subsystemPlayer
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0020:  ldc.i4.1
    IL_0021:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGui>(bool)
    IL_0026:  stfld      class Game.SubsystemGui Game.SubsystemMagnetBlockBehavior::m_subsystemGui
    IL_002b:  ldarg.1
    IL_002c:  ldstr      "Magnets"
    IL_0031:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_0036:  stloc.0
    IL_0037:  ldarg.0
    IL_0038:  ldc.i4.s   59
    IL_003a:  ldloc.0
    IL_003b:  call       !!0[] [Engine]Engine.Serialization.HumanReadableConverter::ValuesListFromString<valuetype [Engine]Engine.Vector3>(char,
                                                                                                                                           string)
    IL_0040:  newobj     instance void class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3>::.ctor(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
    IL_0045:  stfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3> Game.SubsystemMagnetBlockBehavior::m_magnets
    IL_004a:  ret
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
    // 代码大小       146 (0x92)
    .maxstack  8
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  ldarg.1
    IL_000c:  ldarg.2
    IL_000d:  ldc.i4.1
    IL_000e:  sub
    IL_000f:  ldarg.3
    IL_0010:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
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
    IL_0036:  ldarg.0
    IL_0037:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3> Game.SubsystemMagnetBlockBehavior::m_magnets
    IL_003c:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3>::get_Count()
    IL_0041:  ldc.i4.6
    IL_0042:  ble.s      IL_0091

    IL_0044:  ldarg.1
    IL_0045:  ldarg.s    neighborX
    IL_0047:  bne.un.s   IL_0091

    IL_0049:  ldarg.2
    IL_004a:  ldarg.s    neighborY
    IL_004c:  bne.un.s   IL_0091

    IL_004e:  ldarg.3
    IL_004f:  ldarg.s    neighborZ
    IL_0051:  bne.un.s   IL_0091

    IL_0053:  ldarg.0
    IL_0054:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0059:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_005e:  ldarg.1
    IL_005f:  ldarg.2
    IL_0060:  ldarg.3
    IL_0061:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_0066:  ldc.i4     0xa7
    IL_006b:  bne.un.s   IL_0091

    IL_006d:  ldarg.0
    IL_006e:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0073:  ldc.i4.0
    IL_0074:  ldarg.1
    IL_0075:  ldarg.2
    IL_0076:  ldarg.3
    IL_0077:  ldc.i4.0
    IL_0078:  ldc.i4.0
    IL_0079:  ldc.i4.0
    IL_007a:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_007f:  ldarg.0
    IL_0080:  ldfld      class Game.SubsystemGui Game.SubsystemMagnetBlockBehavior::m_subsystemGui
    IL_0085:  ldstr      "Too many magnets"
    IL_008a:  ldc.i4.1
    IL_008b:  ldc.i4.0
    IL_008c:  callvirt   instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0091:  ret
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
} // end of class Game.SubsystemMagnetBlockBehavior