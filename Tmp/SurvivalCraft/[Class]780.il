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
    IL_0001:  call       int32 Game.Terrain::ExtractContents(int32)
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
    // 代码大小       309 (0x135)
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
    IL_005e:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0063:  ldc.i4.s   59
    IL_0065:  bne.un.s   IL_006d

    IL_0067:  ldstr      "WoodenLadder"
    IL_006c:  ret

    IL_006d:  ldstr      "MetalLadder"
    IL_0072:  ret

    IL_0073:  ldarg.0
    IL_0074:  ldfld      class Game.SubsystemTerrain Game.SubsystemSoundMaterials::m_subsystemTerrain
    IL_0079:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_007e:  ldloc.0
    IL_007f:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0084:  call       int32 Game.Terrain::ToCell(float32)
    IL_0089:  ldloc.0
    IL_008a:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_008f:  ldc.r4     0.1
    IL_0094:  add
    IL_0095:  call       int32 Game.Terrain::ToCell(float32)
    IL_009a:  ldloc.0
    IL_009b:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00a0:  call       int32 Game.Terrain::ToCell(float32)
    IL_00a5:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_00aa:  stloc.2
    IL_00ab:  ldloc.2
    IL_00ac:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_00b1:  stloc.3
    IL_00b2:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00b7:  ldloc.3
    IL_00b8:  ldelem.ref
    IL_00b9:  ldarg.0
    IL_00ba:  ldfld      class Game.SubsystemTerrain Game.SubsystemSoundMaterials::m_subsystemTerrain
    IL_00bf:  ldloc.2
    IL_00c0:  callvirt   instance string Game.Block::GetSoundMaterialName(class Game.SubsystemTerrain,
                                                                          int32)
    IL_00c5:  stloc.s    V_4
    IL_00c7:  ldloc.s    V_4
    IL_00c9:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_00ce:  brfalse.s  IL_0123

    IL_00d0:  ldarg.1
    IL_00d1:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00d6:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_00db:  stloc.1
    IL_00dc:  ldloca.s   V_1
    IL_00de:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_00e3:  brfalse.s  IL_0123

    IL_00e5:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00ea:  ldarg.1
    IL_00eb:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00f0:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_00f5:  stloc.1
    IL_00f6:  ldloca.s   V_1
    IL_00f8:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_00fd:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0102:  ldelem.ref
    IL_0103:  ldarg.0
    IL_0104:  ldfld      class Game.SubsystemTerrain Game.SubsystemSoundMaterials::m_subsystemTerrain
    IL_0109:  ldarg.1
    IL_010a:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_010f:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_0114:  stloc.1
    IL_0115:  ldloca.s   V_1
    IL_0117:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_011c:  callvirt   instance string Game.Block::GetSoundMaterialName(class Game.SubsystemTerrain,
                                                                          int32)
    IL_0121:  stloc.s    V_4
    IL_0123:  ldloc.s    V_4
    IL_0125:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_012a:  brtrue.s   IL_012f

    IL_012c:  ldloc.s    V_4
    IL_012e:  ret

    IL_012f:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0134:  ret
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