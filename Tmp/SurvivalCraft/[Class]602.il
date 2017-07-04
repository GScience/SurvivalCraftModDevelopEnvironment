.class public auto ansi beforefieldinit Game.SubsystemFertilizerBlockBehavior
       extends Game.SubsystemBlockBehavior
{
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemParticles m_subsystemParticles
  .field private class Game.SubsystemAudio m_subsystemAudio
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4.s   102
    IL_000a:  stelem.i4
    IL_000b:  ret
  } // end of method SubsystemFertilizerBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance bool 
          OnUse(valuetype [Engine]Engine.Vector3 start,
                valuetype [Engine]Engine.Vector3 direction,
                class Game.ComponentMiner componentMiner) cil managed
  {
    // 代码大小       488 (0x1e8)
    .maxstack  7
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_0,
             int32 V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             class Game.Block V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8)
    IL_0000:  ldarg.3
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.ComponentMiner::PickTerrainForInteraction(valuetype [Engine]Engine.Vector3,
                                                                                                                                                                  valuetype [Engine]Engine.Vector3)
    IL_0008:  stloc.0
    IL_0009:  ldloca.s   V_0
    IL_000b:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_0010:  brfalse    IL_01e6

    IL_0015:  ldloca.s   V_0
    IL_0017:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_001c:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0021:  ldfld      int32 Game.CellFace::Face
    IL_0026:  ldc.i4.4
    IL_0027:  bne.un     IL_01e6

    IL_002c:  ldloca.s   V_0
    IL_002e:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0033:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0038:  ldfld      int32 Game.CellFace::Y
    IL_003d:  stloc.1
    IL_003e:  ldloca.s   V_0
    IL_0040:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0045:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_004a:  ldfld      int32 Game.CellFace::X
    IL_004f:  ldc.i4.1
    IL_0050:  sub
    IL_0051:  stloc.s    V_4
    IL_0053:  br         IL_00e4

    IL_0058:  ldloca.s   V_0
    IL_005a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_005f:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0064:  ldfld      int32 Game.CellFace::Z
    IL_0069:  ldc.i4.1
    IL_006a:  sub
    IL_006b:  stloc.s    V_5
    IL_006d:  br.s       IL_00c7

    IL_006f:  ldarg.0
    IL_0070:  ldfld      class Game.SubsystemTerrain Game.SubsystemFertilizerBlockBehavior::m_subsystemTerrain
    IL_0075:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_007a:  ldloc.s    V_4
    IL_007c:  ldloc.1
    IL_007d:  ldloc.s    V_5
    IL_007f:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0084:  stloc.s    V_6
    IL_0086:  ldloc.s    V_6
    IL_0088:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_008d:  ldc.i4     0xa8
    IL_0092:  bne.un.s   IL_00c1

    IL_0094:  ldloc.s    V_6
    IL_0096:  call       int32 Game.Terrain::ExtractData(int32)
    IL_009b:  ldc.i4.3
    IL_009c:  call       int32 Game.SoilBlock::SetNitrogen(int32,
                                                           int32)
    IL_00a1:  stloc.s    V_7
    IL_00a3:  ldloc.s    V_6
    IL_00a5:  ldloc.s    V_7
    IL_00a7:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_00ac:  stloc.s    V_8
    IL_00ae:  ldarg.0
    IL_00af:  ldfld      class Game.SubsystemTerrain Game.SubsystemFertilizerBlockBehavior::m_subsystemTerrain
    IL_00b4:  ldloc.s    V_4
    IL_00b6:  ldloc.1
    IL_00b7:  ldloc.s    V_5
    IL_00b9:  ldloc.s    V_8
    IL_00bb:  ldc.i4.1
    IL_00bc:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_00c1:  ldloc.s    V_5
    IL_00c3:  ldc.i4.1
    IL_00c4:  add
    IL_00c5:  stloc.s    V_5
    IL_00c7:  ldloc.s    V_5
    IL_00c9:  ldloca.s   V_0
    IL_00cb:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_00d0:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_00d5:  ldfld      int32 Game.CellFace::Z
    IL_00da:  ldc.i4.1
    IL_00db:  add
    IL_00dc:  ble.s      IL_006f

    IL_00de:  ldloc.s    V_4
    IL_00e0:  ldc.i4.1
    IL_00e1:  add
    IL_00e2:  stloc.s    V_4
    IL_00e4:  ldloc.s    V_4
    IL_00e6:  ldloca.s   V_0
    IL_00e8:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_00ed:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_00f2:  ldfld      int32 Game.CellFace::X
    IL_00f7:  ldc.i4.1
    IL_00f8:  add
    IL_00f9:  ble        IL_0058

    IL_00fe:  ldarg.0
    IL_00ff:  ldfld      class Game.SubsystemAudio Game.SubsystemFertilizerBlockBehavior::m_subsystemAudio
    IL_0104:  ldstr      "Audio/Impacts/Dirt"
    IL_0109:  ldc.r4     0.5
    IL_010e:  ldc.r4     0.0
    IL_0113:  ldloca.s   V_0
    IL_0115:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_011a:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_011f:  ldfld      int32 Game.CellFace::X
    IL_0124:  conv.r4
    IL_0125:  ldloca.s   V_0
    IL_0127:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_012c:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0131:  ldfld      int32 Game.CellFace::Y
    IL_0136:  conv.r4
    IL_0137:  ldloca.s   V_0
    IL_0139:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_013e:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0143:  ldfld      int32 Game.CellFace::Z
    IL_0148:  conv.r4
    IL_0149:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_014e:  ldc.r4     3.
    IL_0153:  ldc.i4.1
    IL_0154:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            bool)
    IL_0159:  ldloca.s   V_2
    IL_015b:  ldloca.s   V_0
    IL_015d:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0162:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0167:  ldfld      int32 Game.CellFace::X
    IL_016c:  conv.r4
    IL_016d:  ldc.r4     0.5
    IL_0172:  add
    IL_0173:  ldloca.s   V_0
    IL_0175:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_017a:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_017f:  ldfld      int32 Game.CellFace::Y
    IL_0184:  conv.r4
    IL_0185:  ldc.r4     1.5
    IL_018a:  add
    IL_018b:  ldloca.s   V_0
    IL_018d:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0192:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0197:  ldfld      int32 Game.CellFace::Z
    IL_019c:  conv.r4
    IL_019d:  ldc.r4     0.5
    IL_01a2:  add
    IL_01a3:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01a8:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_01ad:  ldarg.3
    IL_01ae:  callvirt   instance int32 Game.ComponentMiner::get_ActiveBlockValue()
    IL_01b3:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_01b8:  ldelem.ref
    IL_01b9:  stloc.3
    IL_01ba:  ldarg.0
    IL_01bb:  ldfld      class Game.SubsystemParticles Game.SubsystemFertilizerBlockBehavior::m_subsystemParticles
    IL_01c0:  ldloc.3
    IL_01c1:  ldarg.0
    IL_01c2:  ldfld      class Game.SubsystemTerrain Game.SubsystemFertilizerBlockBehavior::m_subsystemTerrain
    IL_01c7:  ldloc.2
    IL_01c8:  ldarg.3
    IL_01c9:  callvirt   instance int32 Game.ComponentMiner::get_ActiveBlockValue()
    IL_01ce:  ldc.r4     1.25
    IL_01d3:  callvirt   instance class Game.BlockDebrisParticleSystem Game.Block::CreateDebrisParticleSystem(class Game.SubsystemTerrain,
                                                                                                              valuetype [Engine]Engine.Vector3,
                                                                                                              int32,
                                                                                                              float32)
    IL_01d8:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
    IL_01dd:  ldarg.3
    IL_01de:  ldc.i4.1
    IL_01df:  callvirt   instance void Game.ComponentMiner::RemoveActiveTool(int32)
    IL_01e4:  ldc.i4.1
    IL_01e5:  ret

    IL_01e6:  ldc.i4.0
    IL_01e7:  ret
  } // end of method SubsystemFertilizerBlockBehavior::OnUse

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       62 (0x3e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0014:  stfld      class Game.SubsystemTerrain Game.SubsystemFertilizerBlockBehavior::m_subsystemTerrain
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0020:  ldc.i4.1
    IL_0021:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemParticles>(bool)
    IL_0026:  stfld      class Game.SubsystemParticles Game.SubsystemFertilizerBlockBehavior::m_subsystemParticles
    IL_002b:  ldarg.0
    IL_002c:  ldarg.0
    IL_002d:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0032:  ldc.i4.1
    IL_0033:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0038:  stfld      class Game.SubsystemAudio Game.SubsystemFertilizerBlockBehavior::m_subsystemAudio
    IL_003d:  ret
  } // end of method SubsystemFertilizerBlockBehavior::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0006:  ret
  } // end of method SubsystemFertilizerBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemFertilizerBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemFertilizerBlockBehavior::HandledBlocks
} // end of class Game.SubsystemFertilizerBlockBehavior