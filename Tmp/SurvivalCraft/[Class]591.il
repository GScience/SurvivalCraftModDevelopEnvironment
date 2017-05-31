.class public auto ansi beforefieldinit Game.SubsystemRakeBlockBehavior
       extends Game.SubsystemBlockBehavior
{
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemParticles m_subsystemParticles
  .field private class Game.SubsystemAudio m_subsystemAudio
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldc.i4.5
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=20' '<PrivateImplementationDetails>'::F47B46AACCF9C8A47D0AF1F2E7CDE2A55421C5E1
    IL_000c:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0011:  ret
  } // end of method SubsystemRakeBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance bool 
          OnUse(valuetype [Engine]Engine.Vector3 start,
                valuetype [Engine]Engine.Vector3 direction,
                class Game.ComponentMiner componentMiner) cil managed
  {
    // 代码大小       711 (0x2c7)
    .maxstack  7
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_0,
             int32 V_1,
             int32 V_2,
             class Game.Block V_3,
             int32 V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             int32 V_6,
             valuetype [Engine]Engine.Vector3 V_7)
    IL_0000:  ldarg.3
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.ComponentMiner::PickTerrainForInteraction(valuetype [Engine]Engine.Vector3,
                                                                                                                                                                  valuetype [Engine]Engine.Vector3)
    IL_0008:  stloc.0
    IL_0009:  ldloca.s   V_0
    IL_000b:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_0010:  brfalse    IL_02c5

    IL_0015:  ldloca.s   V_0
    IL_0017:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_001c:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0021:  ldfld      int32 Game.CellFace::Face
    IL_0026:  ldc.i4.4
    IL_0027:  bne.un     IL_02bc

    IL_002c:  ldarg.0
    IL_002d:  ldfld      class Game.SubsystemTerrain Game.SubsystemRakeBlockBehavior::m_subsystemTerrain
    IL_0032:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0037:  ldloca.s   V_0
    IL_0039:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_003e:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0043:  ldfld      int32 Game.CellFace::X
    IL_0048:  ldloca.s   V_0
    IL_004a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_004f:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0054:  ldfld      int32 Game.CellFace::Y
    IL_0059:  ldloca.s   V_0
    IL_005b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0060:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0065:  ldfld      int32 Game.CellFace::Z
    IL_006a:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_006f:  stloc.1
    IL_0070:  ldloc.1
    IL_0071:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0076:  stloc.2
    IL_0077:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_007c:  ldloc.2
    IL_007d:  ldelem.ref
    IL_007e:  stloc.3
    IL_007f:  ldloc.2
    IL_0080:  ldc.i4.2
    IL_0081:  bne.un     IL_01a2

    IL_0086:  ldloc.1
    IL_0087:  ldc.i4     0xa8
    IL_008c:  call       int32 Game.TerrainData::ReplaceContents(int32,
                                                                 int32)
    IL_0091:  stloc.s    V_4
    IL_0093:  ldarg.0
    IL_0094:  ldfld      class Game.SubsystemTerrain Game.SubsystemRakeBlockBehavior::m_subsystemTerrain
    IL_0099:  ldloca.s   V_0
    IL_009b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_00a0:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_00a5:  ldfld      int32 Game.CellFace::X
    IL_00aa:  ldloca.s   V_0
    IL_00ac:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_00b1:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_00b6:  ldfld      int32 Game.CellFace::Y
    IL_00bb:  ldloca.s   V_0
    IL_00bd:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_00c2:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_00c7:  ldfld      int32 Game.CellFace::Z
    IL_00cc:  ldloc.s    V_4
    IL_00ce:  ldc.i4.1
    IL_00cf:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_00d4:  ldarg.0
    IL_00d5:  ldfld      class Game.SubsystemAudio Game.SubsystemRakeBlockBehavior::m_subsystemAudio
    IL_00da:  ldstr      "Audio/Impacts/Dirt"
    IL_00df:  ldc.r4     0.5
    IL_00e4:  ldc.r4     0.0
    IL_00e9:  ldloca.s   V_0
    IL_00eb:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_00f0:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_00f5:  ldfld      int32 Game.CellFace::X
    IL_00fa:  conv.r4
    IL_00fb:  ldloca.s   V_0
    IL_00fd:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0102:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0107:  ldfld      int32 Game.CellFace::Y
    IL_010c:  conv.r4
    IL_010d:  ldloca.s   V_0
    IL_010f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0114:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0119:  ldfld      int32 Game.CellFace::Z
    IL_011e:  conv.r4
    IL_011f:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0124:  ldc.r4     3.
    IL_0129:  ldc.i4.1
    IL_012a:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            bool)
    IL_012f:  ldloca.s   V_5
    IL_0131:  ldloca.s   V_0
    IL_0133:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0138:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_013d:  ldfld      int32 Game.CellFace::X
    IL_0142:  conv.r4
    IL_0143:  ldc.r4     0.5
    IL_0148:  add
    IL_0149:  ldloca.s   V_0
    IL_014b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0150:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0155:  ldfld      int32 Game.CellFace::Y
    IL_015a:  conv.r4
    IL_015b:  ldc.r4     1.25
    IL_0160:  add
    IL_0161:  ldloca.s   V_0
    IL_0163:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0168:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_016d:  ldfld      int32 Game.CellFace::Z
    IL_0172:  conv.r4
    IL_0173:  ldc.r4     0.5
    IL_0178:  add
    IL_0179:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_017e:  ldarg.0
    IL_017f:  ldfld      class Game.SubsystemParticles Game.SubsystemRakeBlockBehavior::m_subsystemParticles
    IL_0184:  ldloc.3
    IL_0185:  ldarg.0
    IL_0186:  ldfld      class Game.SubsystemTerrain Game.SubsystemRakeBlockBehavior::m_subsystemTerrain
    IL_018b:  ldloc.s    V_5
    IL_018d:  ldloc.1
    IL_018e:  ldc.r4     0.5
    IL_0193:  callvirt   instance class Game.BlockDebrisParticleSystem Game.Block::CreateDebrisParticleSystem(class Game.SubsystemTerrain,
                                                                                                              valuetype [Engine]Engine.Vector3,
                                                                                                              int32,
                                                                                                              float32)
    IL_0198:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
    IL_019d:  br         IL_02bc

    IL_01a2:  ldloc.2
    IL_01a3:  ldc.i4.8
    IL_01a4:  bne.un     IL_02bc

    IL_01a9:  ldloc.1
    IL_01aa:  ldc.i4.2
    IL_01ab:  call       int32 Game.TerrainData::ReplaceContents(int32,
                                                                 int32)
    IL_01b0:  stloc.s    V_6
    IL_01b2:  ldarg.0
    IL_01b3:  ldfld      class Game.SubsystemTerrain Game.SubsystemRakeBlockBehavior::m_subsystemTerrain
    IL_01b8:  ldloca.s   V_0
    IL_01ba:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_01bf:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_01c4:  ldfld      int32 Game.CellFace::X
    IL_01c9:  ldloca.s   V_0
    IL_01cb:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_01d0:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_01d5:  ldfld      int32 Game.CellFace::Y
    IL_01da:  ldloca.s   V_0
    IL_01dc:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_01e1:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_01e6:  ldfld      int32 Game.CellFace::Z
    IL_01eb:  ldloc.s    V_6
    IL_01ed:  ldc.i4.1
    IL_01ee:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_01f3:  ldarg.0
    IL_01f4:  ldfld      class Game.SubsystemAudio Game.SubsystemRakeBlockBehavior::m_subsystemAudio
    IL_01f9:  ldstr      "Audio/Impacts/Plant"
    IL_01fe:  ldc.r4     0.5
    IL_0203:  ldc.r4     0.0
    IL_0208:  ldloca.s   V_0
    IL_020a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_020f:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0214:  ldfld      int32 Game.CellFace::X
    IL_0219:  conv.r4
    IL_021a:  ldloca.s   V_0
    IL_021c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0221:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0226:  ldfld      int32 Game.CellFace::Y
    IL_022b:  conv.r4
    IL_022c:  ldloca.s   V_0
    IL_022e:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0233:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0238:  ldfld      int32 Game.CellFace::Z
    IL_023d:  conv.r4
    IL_023e:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0243:  ldc.r4     3.
    IL_0248:  ldc.i4.1
    IL_0249:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            bool)
    IL_024e:  ldloca.s   V_7
    IL_0250:  ldloca.s   V_0
    IL_0252:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0257:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_025c:  ldfld      int32 Game.CellFace::X
    IL_0261:  conv.r4
    IL_0262:  ldc.r4     0.5
    IL_0267:  add
    IL_0268:  ldloca.s   V_0
    IL_026a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_026f:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0274:  ldfld      int32 Game.CellFace::Y
    IL_0279:  conv.r4
    IL_027a:  ldc.r4     1.2
    IL_027f:  add
    IL_0280:  ldloca.s   V_0
    IL_0282:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0287:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_028c:  ldfld      int32 Game.CellFace::Z
    IL_0291:  conv.r4
    IL_0292:  ldc.r4     0.5
    IL_0297:  add
    IL_0298:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_029d:  ldarg.0
    IL_029e:  ldfld      class Game.SubsystemParticles Game.SubsystemRakeBlockBehavior::m_subsystemParticles
    IL_02a3:  ldloc.3
    IL_02a4:  ldarg.0
    IL_02a5:  ldfld      class Game.SubsystemTerrain Game.SubsystemRakeBlockBehavior::m_subsystemTerrain
    IL_02aa:  ldloc.s    V_7
    IL_02ac:  ldloc.1
    IL_02ad:  ldc.r4     0.75
    IL_02b2:  callvirt   instance class Game.BlockDebrisParticleSystem Game.Block::CreateDebrisParticleSystem(class Game.SubsystemTerrain,
                                                                                                              valuetype [Engine]Engine.Vector3,
                                                                                                              int32,
                                                                                                              float32)
    IL_02b7:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
    IL_02bc:  ldarg.3
    IL_02bd:  ldc.i4.1
    IL_02be:  callvirt   instance void Game.ComponentMiner::DamageActiveTool(int32)
    IL_02c3:  ldc.i4.1
    IL_02c4:  ret

    IL_02c5:  ldc.i4.0
    IL_02c6:  ret
  } // end of method SubsystemRakeBlockBehavior::OnUse

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
    IL_0014:  stfld      class Game.SubsystemTerrain Game.SubsystemRakeBlockBehavior::m_subsystemTerrain
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0020:  ldc.i4.1
    IL_0021:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemParticles>(bool)
    IL_0026:  stfld      class Game.SubsystemParticles Game.SubsystemRakeBlockBehavior::m_subsystemParticles
    IL_002b:  ldarg.0
    IL_002c:  ldarg.0
    IL_002d:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0032:  ldc.i4.1
    IL_0033:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0038:  stfld      class Game.SubsystemAudio Game.SubsystemRakeBlockBehavior::m_subsystemAudio
    IL_003d:  ret
  } // end of method SubsystemRakeBlockBehavior::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0006:  ret
  } // end of method SubsystemRakeBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemRakeBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemRakeBlockBehavior::HandledBlocks
} // end of class Game.SubsystemRakeBlockBehavior