.class public auto ansi beforefieldinit Game.SubsystemSoundMaterials
       extends [EntitySystem]GameEntitySystem.Subsystem
{
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.Random m_random
  .field private class [EntitySystem]TemplatesDatabase.ValuesDictionary m_impactsSoundsValuesDictionary
  .field private class [EntitySystem]TemplatesDatabase.ValuesDictionary m_footstepSoundsValuesDictionary
  .method public hidebysig instance void 
          PlayImpactSound(int32 'value',
                          valuetype [Engine]Engine.Vector3 position,
                          float32 loudnessMultiplier) cil managed
  {
    // 代码大小       109 (0x6d)
    .maxstack  7
    .locals init (int32 V_0,
             string V_1,
             string V_2,
             float32 V_3)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0006:  stloc.0
    IL_0007:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_000c:  ldloc.0
    IL_000d:  ldelem.ref
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Game.SubsystemTerrain Game.SubsystemSoundMaterials::m_subsystemTerrain
    IL_0014:  ldarg.1
    IL_0015:  callvirt   instance string Game.Block::GetSoundMaterialName(class Game.SubsystemTerrain,
                                                                          int32)
    IL_001a:  stloc.1
    IL_001b:  ldloc.1
    IL_001c:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0021:  brtrue.s   IL_006c

    IL_0023:  ldarg.0
    IL_0024:  ldfld      class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.SubsystemSoundMaterials::m_impactsSoundsValuesDictionary
    IL_0029:  ldloc.1
    IL_002a:  ldnull
    IL_002b:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string,
                                                                                                         !!0)
    IL_0030:  stloc.2
    IL_0031:  ldloc.2
    IL_0032:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0037:  brtrue.s   IL_006c

    IL_0039:  ldarg.0
    IL_003a:  ldfld      class Game.Random Game.SubsystemSoundMaterials::m_random
    IL_003f:  ldc.r4     -0.2
    IL_0044:  ldc.r4     0.2
    IL_0049:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_004e:  stloc.3
    IL_004f:  ldarg.0
    IL_0050:  ldfld      class Game.SubsystemAudio Game.SubsystemSoundMaterials::m_subsystemAudio
    IL_0055:  ldloc.2
    IL_0056:  ldc.r4     0.5
    IL_005b:  ldarg.3
    IL_005c:  mul
    IL_005d:  ldloc.3
    IL_005e:  ldarg.2
    IL_005f:  ldc.r4     5.
    IL_0064:  ldarg.3
    IL_0065:  mul
    IL_0066:  ldc.i4.1
    IL_0067:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            bool)
    IL_006c:  ret
  } // end of method SubsystemSoundMaterials::PlayImpactSound

  .method public hidebysig instance bool 
          PlayFootstepSound(class Game.ComponentCreature componentCreature,
                            float32 loudnessMultiplier) cil managed
  {
    // 代码大小       268 (0x10c)
    .maxstack  7
    .locals init (string V_0,
             string V_1,
             float32 V_2,
             class Game.ComponentPlayer V_3,
             string V_4,
             float32 V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance string Game.SubsystemSoundMaterials::GetFootstepSoundMaterialName(class Game.ComponentCreature)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_000e:  brtrue     IL_010a

    IL_0013:  ldarg.1
    IL_0014:  callvirt   instance class Game.ComponentCreatureSounds Game.ComponentCreature::get_ComponentCreatureSounds()
    IL_0019:  callvirt   instance class [EntitySystem]TemplatesDatabase.ValuesDictionary [EntitySystem]GameEntitySystem.Component::get_ValuesDictionary()
    IL_001e:  ldstr      "CustomFootstepSounds"
    IL_0023:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string)
    IL_0028:  ldloc.0
    IL_0029:  ldnull
    IL_002a:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string,
                                                                                                         !!0)
    IL_002f:  stloc.1
    IL_0030:  ldloc.1
    IL_0031:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0036:  brfalse.s  IL_0046

    IL_0038:  ldarg.0
    IL_0039:  ldfld      class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.SubsystemSoundMaterials::m_footstepSoundsValuesDictionary
    IL_003e:  ldloc.0
    IL_003f:  ldnull
    IL_0040:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string,
                                                                                                         !!0)
    IL_0045:  stloc.1
    IL_0046:  ldloc.1
    IL_0047:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_004c:  brtrue     IL_010a

    IL_0051:  ldarg.0
    IL_0052:  ldfld      class Game.Random Game.SubsystemSoundMaterials::m_random
    IL_0057:  ldc.r4     -0.2
    IL_005c:  ldc.r4     0.2
    IL_0061:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0066:  stloc.2
    IL_0067:  ldarg.0
    IL_0068:  ldfld      class Game.SubsystemAudio Game.SubsystemSoundMaterials::m_subsystemAudio
    IL_006d:  ldloc.1
    IL_006e:  ldc.r4     0.75
    IL_0073:  ldarg.2
    IL_0074:  mul
    IL_0075:  ldloc.2
    IL_0076:  ldarg.1
    IL_0077:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_007c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0081:  ldc.r4     2.
    IL_0086:  ldarg.2
    IL_0087:  mul
    IL_0088:  ldc.i4.1
    IL_0089:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            bool)
    IL_008e:  ldarg.1
    IL_008f:  isinst     Game.ComponentPlayer
    IL_0094:  stloc.3
    IL_0095:  ldloc.3
    IL_0096:  brfalse.s  IL_0108

    IL_0098:  ldloc.3
    IL_0099:  callvirt   instance class Game.ComponentVitalStats Game.ComponentPlayer::get_ComponentVitalStats()
    IL_009e:  callvirt   instance float32 Game.ComponentVitalStats::get_Wetness()
    IL_00a3:  ldc.r4     0.0
    IL_00a8:  ble.un.s   IL_0108

    IL_00aa:  ldarg.0
    IL_00ab:  ldfld      class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.SubsystemSoundMaterials::m_footstepSoundsValuesDictionary
    IL_00b0:  ldstr      "Squishy"
    IL_00b5:  ldnull
    IL_00b6:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string,
                                                                                                         !!0)
    IL_00bb:  stloc.s    V_4
    IL_00bd:  ldloc.s    V_4
    IL_00bf:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_00c4:  brtrue.s   IL_0108

    IL_00c6:  ldc.r4     0.75
    IL_00cb:  ldarg.2
    IL_00cc:  mul
    IL_00cd:  ldloc.3
    IL_00ce:  callvirt   instance class Game.ComponentVitalStats Game.ComponentPlayer::get_ComponentVitalStats()
    IL_00d3:  callvirt   instance float32 Game.ComponentVitalStats::get_Wetness()
    IL_00d8:  ldc.r4     4.
    IL_00dd:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_00e2:  mul
    IL_00e3:  stloc.s    V_5
    IL_00e5:  ldarg.0
    IL_00e6:  ldfld      class Game.SubsystemAudio Game.SubsystemSoundMaterials::m_subsystemAudio
    IL_00eb:  ldloc.s    V_4
    IL_00ed:  ldloc.s    V_5
    IL_00ef:  ldloc.2
    IL_00f0:  ldarg.1
    IL_00f1:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00f6:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_00fb:  ldc.r4     2.
    IL_0100:  ldarg.2
    IL_0101:  mul
    IL_0102:  ldc.i4.1
    IL_0103:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            bool)
    IL_0108:  ldc.i4.1
    IL_0109:  ret

    IL_010a:  ldc.i4.0
    IL_010b:  ret
  } // end of method SubsystemSoundMaterials::PlayFootstepSound

  .method public hidebysig instance string 
          GetFootstepSoundMaterialName(class Game.ComponentCreature componentCreature) cil managed
  {
    // 代码大小       297 (0x129)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [System.Runtime]System.Nullable`1<int32> V_1,
             int32 V_2,
             int32 V_3,
             string V_4)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0006:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_000b:  stloc.0
    IL_000c:  ldarg.1
    IL_000d:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0012:  callvirt   instance float32 Game.ComponentBody::get_ImmersionDepth()
    IL_0017:  ldc.r4     0.2
    IL_001c:  ble.un.s   IL_0036

    IL_001e:  ldarg.1
    IL_001f:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0024:  callvirt   instance class Game.FluidBlock Game.ComponentBody::get_ImmersionFluidBlock()
    IL_0029:  isinst     Game.WaterBlock
    IL_002e:  brfalse.s  IL_0036

    IL_0030:  ldstr      "Water"
    IL_0035:  ret

    IL_0036:  ldarg.1
    IL_0037:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_003c:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentLocomotion::get_LadderValue()
    IL_0041:  stloc.1
    IL_0042:  ldloca.s   V_1
    IL_0044:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0049:  brfalse.s  IL_0073

    IL_004b:  ldarg.1
    IL_004c:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0051:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentLocomotion::get_LadderValue()
    IL_0056:  stloc.1
    IL_0057:  ldloca.s   V_1
    IL_0059:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_005e:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0063:  ldc.i4.s   59
    IL_0065:  bne.un.s   IL_006d

    IL_0067:  ldstr      "WoodenLadder"
    IL_006c:  ret

    IL_006d:  ldstr      "MetalLadder"
    IL_0072:  ret

    IL_0073:  ldarg.0
    IL_0074:  ldfld      class Game.SubsystemTerrain Game.SubsystemSoundMaterials::m_subsystemTerrain
    IL_0079:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_007e:  ldloc.0
    IL_007f:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0084:  conv.i4
    IL_0085:  ldloc.0
    IL_0086:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_008b:  ldc.r4     0.1
    IL_0090:  add
    IL_0091:  conv.i4
    IL_0092:  ldloc.0
    IL_0093:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0098:  conv.i4
    IL_0099:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_009e:  stloc.2
    IL_009f:  ldloc.2
    IL_00a0:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_00a5:  stloc.3
    IL_00a6:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00ab:  ldloc.3
    IL_00ac:  ldelem.ref
    IL_00ad:  ldarg.0
    IL_00ae:  ldfld      class Game.SubsystemTerrain Game.SubsystemSoundMaterials::m_subsystemTerrain
    IL_00b3:  ldloc.2
    IL_00b4:  callvirt   instance string Game.Block::GetSoundMaterialName(class Game.SubsystemTerrain,
                                                                          int32)
    IL_00b9:  stloc.s    V_4
    IL_00bb:  ldloc.s    V_4
    IL_00bd:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_00c2:  brfalse.s  IL_0117

    IL_00c4:  ldarg.1
    IL_00c5:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00ca:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_00cf:  stloc.1
    IL_00d0:  ldloca.s   V_1
    IL_00d2:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_00d7:  brfalse.s  IL_0117

    IL_00d9:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00de:  ldarg.1
    IL_00df:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00e4:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_00e9:  stloc.1
    IL_00ea:  ldloca.s   V_1
    IL_00ec:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_00f1:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_00f6:  ldelem.ref
    IL_00f7:  ldarg.0
    IL_00f8:  ldfld      class Game.SubsystemTerrain Game.SubsystemSoundMaterials::m_subsystemTerrain
    IL_00fd:  ldarg.1
    IL_00fe:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0103:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_0108:  stloc.1
    IL_0109:  ldloca.s   V_1
    IL_010b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0110:  callvirt   instance string Game.Block::GetSoundMaterialName(class Game.SubsystemTerrain,
                                                                          int32)
    IL_0115:  stloc.s    V_4
    IL_0117:  ldloc.s    V_4
    IL_0119:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_011e:  brtrue.s   IL_0123

    IL_0120:  ldloc.s    V_4
    IL_0122:  ret

    IL_0123:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0128:  ret
  } // end of method SubsystemSoundMaterials::GetFootstepSoundMaterialName

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       71 (0x47)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_000d:  stfld      class Game.SubsystemTerrain Game.SubsystemSoundMaterials::m_subsystemTerrain
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_001f:  stfld      class Game.SubsystemAudio Game.SubsystemSoundMaterials::m_subsystemAudio
    IL_0024:  ldarg.0
    IL_0025:  ldarg.1
    IL_0026:  ldstr      "ImpactSounds"
    IL_002b:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string)
    IL_0030:  stfld      class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.SubsystemSoundMaterials::m_impactsSoundsValuesDictionary
    IL_0035:  ldarg.0
    IL_0036:  ldarg.1
    IL_0037:  ldstr      "FootstepSounds"
    IL_003c:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string)
    IL_0041:  stfld      class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.SubsystemSoundMaterials::m_footstepSoundsValuesDictionary
    IL_0046:  ret
  } // end of method SubsystemSoundMaterials::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.SubsystemSoundMaterials::m_random
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_0011:  ret
  } // end of method SubsystemSoundMaterials::.ctor

} // end of class Game.SubsystemSoundMaterials