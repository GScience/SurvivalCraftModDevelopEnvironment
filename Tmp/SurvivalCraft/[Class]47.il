.class public auto ansi beforefieldinit Game.ComponentCreatureSounds
       extends [EntitySystem]GameEntitySystem.Component
{
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.SubsystemSoundMaterials m_subsystemSoundMaterials
  .field private class Game.ComponentCreature m_componentCreature
  .field private class Game.Random m_random
  .field private string m_idleSound
  .field private string m_painSound
  .field private string m_moanSound
  .field private string m_sneezeSound
  .field private string m_coughSound
  .field private string m_pukeSound
  .field private string m_attackSound
  .field private float32 m_idleSoundMinDistance
  .field private float32 m_painSoundMinDistance
  .field private float32 m_moanSoundMinDistance
  .field private float32 m_sneezeSoundMinDistance
  .field private float32 m_coughSoundMinDistance
  .field private float32 m_pukeSoundMinDistance
  .field private float32 m_attackSoundMinDistance
  .field private float64 m_lastSoundTime
  .field private float64 m_lastCoughingSoundTime
  .field private float64 m_lastPukeSoundTime
  .method public hidebysig instance void 
          PlayIdleSound(bool skipIfRecentlyPlayed) cil managed
  {
    // 代码大小       133 (0x85)
    .maxstack  7
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.ComponentCreatureSounds::m_idleSound
    IL_0006:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_000b:  brtrue.s   IL_0084

    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.SubsystemTime Game.ComponentCreatureSounds::m_subsystemTime
    IL_0013:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0018:  ldarg.0
    IL_0019:  ldfld      float64 Game.ComponentCreatureSounds::m_lastSoundTime
    IL_001e:  ldarg.1
    IL_001f:  brtrue.s   IL_0028

    IL_0021:  ldc.r4     1.
    IL_0026:  br.s       IL_002d

    IL_0028:  ldc.r4     12.
    IL_002d:  conv.r8
    IL_002e:  add
    IL_002f:  ble.un.s   IL_0084

    IL_0031:  ldarg.0
    IL_0032:  ldarg.0
    IL_0033:  ldfld      class Game.SubsystemTime Game.ComponentCreatureSounds::m_subsystemTime
    IL_0038:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_003d:  stfld      float64 Game.ComponentCreatureSounds::m_lastSoundTime
    IL_0042:  ldarg.0
    IL_0043:  ldfld      class Game.SubsystemAudio Game.ComponentCreatureSounds::m_subsystemAudio
    IL_0048:  ldarg.0
    IL_0049:  ldfld      string Game.ComponentCreatureSounds::m_idleSound
    IL_004e:  ldc.r4     1.
    IL_0053:  ldarg.0
    IL_0054:  ldfld      class Game.Random Game.ComponentCreatureSounds::m_random
    IL_0059:  ldc.r4     -0.1
    IL_005e:  ldc.r4     0.1
    IL_0063:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0068:  ldarg.0
    IL_0069:  ldfld      class Game.ComponentCreature Game.ComponentCreatureSounds::m_componentCreature
    IL_006e:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0073:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0078:  ldarg.0
    IL_0079:  ldfld      float32 Game.ComponentCreatureSounds::m_idleSoundMinDistance
    IL_007e:  ldc.i4.0
    IL_007f:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            bool)
    IL_0084:  ret
  } // end of method ComponentCreatureSounds::PlayIdleSound

  .method public hidebysig instance void 
          PlayPainSound() cil managed
  {
    // 代码大小       126 (0x7e)
    .maxstack  7
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.ComponentCreatureSounds::m_painSound
    IL_0006:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_000b:  brtrue.s   IL_007d

    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.SubsystemTime Game.ComponentCreatureSounds::m_subsystemTime
    IL_0013:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0018:  ldarg.0
    IL_0019:  ldfld      float64 Game.ComponentCreatureSounds::m_lastSoundTime
    IL_001e:  ldc.r8     1.
    IL_0027:  add
    IL_0028:  ble.un.s   IL_007d

    IL_002a:  ldarg.0
    IL_002b:  ldarg.0
    IL_002c:  ldfld      class Game.SubsystemTime Game.ComponentCreatureSounds::m_subsystemTime
    IL_0031:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0036:  stfld      float64 Game.ComponentCreatureSounds::m_lastSoundTime
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemAudio Game.ComponentCreatureSounds::m_subsystemAudio
    IL_0041:  ldarg.0
    IL_0042:  ldfld      string Game.ComponentCreatureSounds::m_painSound
    IL_0047:  ldc.r4     1.
    IL_004c:  ldarg.0
    IL_004d:  ldfld      class Game.Random Game.ComponentCreatureSounds::m_random
    IL_0052:  ldc.r4     -0.1
    IL_0057:  ldc.r4     0.1
    IL_005c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0061:  ldarg.0
    IL_0062:  ldfld      class Game.ComponentCreature Game.ComponentCreatureSounds::m_componentCreature
    IL_0067:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_006c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0071:  ldarg.0
    IL_0072:  ldfld      float32 Game.ComponentCreatureSounds::m_painSoundMinDistance
    IL_0077:  ldc.i4.0
    IL_0078:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            bool)
    IL_007d:  ret
  } // end of method ComponentCreatureSounds::PlayPainSound

  .method public hidebysig instance void 
          PlayMoanSound() cil managed
  {
    // 代码大小       126 (0x7e)
    .maxstack  7
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.ComponentCreatureSounds::m_moanSound
    IL_0006:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_000b:  brtrue.s   IL_007d

    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.SubsystemTime Game.ComponentCreatureSounds::m_subsystemTime
    IL_0013:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0018:  ldarg.0
    IL_0019:  ldfld      float64 Game.ComponentCreatureSounds::m_lastSoundTime
    IL_001e:  ldc.r8     1.
    IL_0027:  add
    IL_0028:  ble.un.s   IL_007d

    IL_002a:  ldarg.0
    IL_002b:  ldarg.0
    IL_002c:  ldfld      class Game.SubsystemTime Game.ComponentCreatureSounds::m_subsystemTime
    IL_0031:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0036:  stfld      float64 Game.ComponentCreatureSounds::m_lastSoundTime
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemAudio Game.ComponentCreatureSounds::m_subsystemAudio
    IL_0041:  ldarg.0
    IL_0042:  ldfld      string Game.ComponentCreatureSounds::m_moanSound
    IL_0047:  ldc.r4     1.
    IL_004c:  ldarg.0
    IL_004d:  ldfld      class Game.Random Game.ComponentCreatureSounds::m_random
    IL_0052:  ldc.r4     -0.1
    IL_0057:  ldc.r4     0.1
    IL_005c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0061:  ldarg.0
    IL_0062:  ldfld      class Game.ComponentCreature Game.ComponentCreatureSounds::m_componentCreature
    IL_0067:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_006c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0071:  ldarg.0
    IL_0072:  ldfld      float32 Game.ComponentCreatureSounds::m_moanSoundMinDistance
    IL_0077:  ldc.i4.0
    IL_0078:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            bool)
    IL_007d:  ret
  } // end of method ComponentCreatureSounds::PlayMoanSound

  .method public hidebysig instance void 
          PlaySneezeSound() cil managed
  {
    // 代码大小       126 (0x7e)
    .maxstack  7
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.ComponentCreatureSounds::m_sneezeSound
    IL_0006:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_000b:  brtrue.s   IL_007d

    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.SubsystemTime Game.ComponentCreatureSounds::m_subsystemTime
    IL_0013:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0018:  ldarg.0
    IL_0019:  ldfld      float64 Game.ComponentCreatureSounds::m_lastSoundTime
    IL_001e:  ldc.r8     1.
    IL_0027:  add
    IL_0028:  ble.un.s   IL_007d

    IL_002a:  ldarg.0
    IL_002b:  ldarg.0
    IL_002c:  ldfld      class Game.SubsystemTime Game.ComponentCreatureSounds::m_subsystemTime
    IL_0031:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0036:  stfld      float64 Game.ComponentCreatureSounds::m_lastSoundTime
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemAudio Game.ComponentCreatureSounds::m_subsystemAudio
    IL_0041:  ldarg.0
    IL_0042:  ldfld      string Game.ComponentCreatureSounds::m_sneezeSound
    IL_0047:  ldc.r4     1.
    IL_004c:  ldarg.0
    IL_004d:  ldfld      class Game.Random Game.ComponentCreatureSounds::m_random
    IL_0052:  ldc.r4     -0.1
    IL_0057:  ldc.r4     0.1
    IL_005c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0061:  ldarg.0
    IL_0062:  ldfld      class Game.ComponentCreature Game.ComponentCreatureSounds::m_componentCreature
    IL_0067:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_006c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0071:  ldarg.0
    IL_0072:  ldfld      float32 Game.ComponentCreatureSounds::m_sneezeSoundMinDistance
    IL_0077:  ldc.i4.0
    IL_0078:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            bool)
    IL_007d:  ret
  } // end of method ComponentCreatureSounds::PlaySneezeSound

  .method public hidebysig instance void 
          PlayCoughSound() cil managed
  {
    // 代码大小       126 (0x7e)
    .maxstack  7
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.ComponentCreatureSounds::m_coughSound
    IL_0006:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_000b:  brtrue.s   IL_007d

    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.SubsystemTime Game.ComponentCreatureSounds::m_subsystemTime
    IL_0013:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0018:  ldarg.0
    IL_0019:  ldfld      float64 Game.ComponentCreatureSounds::m_lastCoughingSoundTime
    IL_001e:  ldc.r8     1.
    IL_0027:  add
    IL_0028:  ble.un.s   IL_007d

    IL_002a:  ldarg.0
    IL_002b:  ldarg.0
    IL_002c:  ldfld      class Game.SubsystemTime Game.ComponentCreatureSounds::m_subsystemTime
    IL_0031:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0036:  stfld      float64 Game.ComponentCreatureSounds::m_lastCoughingSoundTime
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemAudio Game.ComponentCreatureSounds::m_subsystemAudio
    IL_0041:  ldarg.0
    IL_0042:  ldfld      string Game.ComponentCreatureSounds::m_coughSound
    IL_0047:  ldc.r4     1.
    IL_004c:  ldarg.0
    IL_004d:  ldfld      class Game.Random Game.ComponentCreatureSounds::m_random
    IL_0052:  ldc.r4     -0.1
    IL_0057:  ldc.r4     0.1
    IL_005c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0061:  ldarg.0
    IL_0062:  ldfld      class Game.ComponentCreature Game.ComponentCreatureSounds::m_componentCreature
    IL_0067:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_006c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0071:  ldarg.0
    IL_0072:  ldfld      float32 Game.ComponentCreatureSounds::m_coughSoundMinDistance
    IL_0077:  ldc.i4.0
    IL_0078:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            bool)
    IL_007d:  ret
  } // end of method ComponentCreatureSounds::PlayCoughSound

  .method public hidebysig instance void 
          PlayPukeSound() cil managed
  {
    // 代码大小       126 (0x7e)
    .maxstack  7
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.ComponentCreatureSounds::m_pukeSound
    IL_0006:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_000b:  brtrue.s   IL_007d

    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.SubsystemTime Game.ComponentCreatureSounds::m_subsystemTime
    IL_0013:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0018:  ldarg.0
    IL_0019:  ldfld      float64 Game.ComponentCreatureSounds::m_lastPukeSoundTime
    IL_001e:  ldc.r8     1.
    IL_0027:  add
    IL_0028:  ble.un.s   IL_007d

    IL_002a:  ldarg.0
    IL_002b:  ldarg.0
    IL_002c:  ldfld      class Game.SubsystemTime Game.ComponentCreatureSounds::m_subsystemTime
    IL_0031:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0036:  stfld      float64 Game.ComponentCreatureSounds::m_lastPukeSoundTime
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemAudio Game.ComponentCreatureSounds::m_subsystemAudio
    IL_0041:  ldarg.0
    IL_0042:  ldfld      string Game.ComponentCreatureSounds::m_pukeSound
    IL_0047:  ldc.r4     1.
    IL_004c:  ldarg.0
    IL_004d:  ldfld      class Game.Random Game.ComponentCreatureSounds::m_random
    IL_0052:  ldc.r4     -0.1
    IL_0057:  ldc.r4     0.1
    IL_005c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0061:  ldarg.0
    IL_0062:  ldfld      class Game.ComponentCreature Game.ComponentCreatureSounds::m_componentCreature
    IL_0067:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_006c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0071:  ldarg.0
    IL_0072:  ldfld      float32 Game.ComponentCreatureSounds::m_pukeSoundMinDistance
    IL_0077:  ldc.i4.0
    IL_0078:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            bool)
    IL_007d:  ret
  } // end of method ComponentCreatureSounds::PlayPukeSound

  .method public hidebysig instance void 
          PlayAttackSound() cil managed
  {
    // 代码大小       126 (0x7e)
    .maxstack  7
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.ComponentCreatureSounds::m_attackSound
    IL_0006:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_000b:  brtrue.s   IL_007d

    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.SubsystemTime Game.ComponentCreatureSounds::m_subsystemTime
    IL_0013:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0018:  ldarg.0
    IL_0019:  ldfld      float64 Game.ComponentCreatureSounds::m_lastSoundTime
    IL_001e:  ldc.r8     1.
    IL_0027:  add
    IL_0028:  ble.un.s   IL_007d

    IL_002a:  ldarg.0
    IL_002b:  ldarg.0
    IL_002c:  ldfld      class Game.SubsystemTime Game.ComponentCreatureSounds::m_subsystemTime
    IL_0031:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0036:  stfld      float64 Game.ComponentCreatureSounds::m_lastSoundTime
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemAudio Game.ComponentCreatureSounds::m_subsystemAudio
    IL_0041:  ldarg.0
    IL_0042:  ldfld      string Game.ComponentCreatureSounds::m_attackSound
    IL_0047:  ldc.r4     1.
    IL_004c:  ldarg.0
    IL_004d:  ldfld      class Game.Random Game.ComponentCreatureSounds::m_random
    IL_0052:  ldc.r4     -0.1
    IL_0057:  ldc.r4     0.1
    IL_005c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0061:  ldarg.0
    IL_0062:  ldfld      class Game.ComponentCreature Game.ComponentCreatureSounds::m_componentCreature
    IL_0067:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_006c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0071:  ldarg.0
    IL_0072:  ldfld      float32 Game.ComponentCreatureSounds::m_attackSoundMinDistance
    IL_0077:  ldc.i4.0
    IL_0078:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            bool)
    IL_007d:  ret
  } // end of method ComponentCreatureSounds::PlayAttackSound

  .method public hidebysig instance bool 
          PlayFootstepSound(float32 loudnessMultiplier) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemSoundMaterials Game.ComponentCreatureSounds::m_subsystemSoundMaterials
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.ComponentCreature Game.ComponentCreatureSounds::m_componentCreature
    IL_000c:  ldarg.1
    IL_000d:  callvirt   instance bool Game.SubsystemSoundMaterials::PlayFootstepSound(class Game.ComponentCreature,
                                                                                       float32)
    IL_0012:  ret
  } // end of method ComponentCreatureSounds::PlayFootstepSound

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       311 (0x137)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_000d:  stfld      class Game.SubsystemTime Game.ComponentCreatureSounds::m_subsystemTime
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_001f:  stfld      class Game.SubsystemAudio Game.ComponentCreatureSounds::m_subsystemAudio
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemSoundMaterials>(bool)
    IL_0031:  stfld      class Game.SubsystemSoundMaterials Game.ComponentCreatureSounds::m_subsystemSoundMaterials
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_0043:  stfld      class Game.ComponentCreature Game.ComponentCreatureSounds::m_componentCreature
    IL_0048:  ldarg.0
    IL_0049:  ldarg.1
    IL_004a:  ldstr      "IdleSound"
    IL_004f:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_0054:  stfld      string Game.ComponentCreatureSounds::m_idleSound
    IL_0059:  ldarg.0
    IL_005a:  ldarg.1
    IL_005b:  ldstr      "PainSound"
    IL_0060:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_0065:  stfld      string Game.ComponentCreatureSounds::m_painSound
    IL_006a:  ldarg.0
    IL_006b:  ldarg.1
    IL_006c:  ldstr      "MoanSound"
    IL_0071:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_0076:  stfld      string Game.ComponentCreatureSounds::m_moanSound
    IL_007b:  ldarg.0
    IL_007c:  ldarg.1
    IL_007d:  ldstr      "SneezeSound"
    IL_0082:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_0087:  stfld      string Game.ComponentCreatureSounds::m_sneezeSound
    IL_008c:  ldarg.0
    IL_008d:  ldarg.1
    IL_008e:  ldstr      "CoughSound"
    IL_0093:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_0098:  stfld      string Game.ComponentCreatureSounds::m_coughSound
    IL_009d:  ldarg.0
    IL_009e:  ldarg.1
    IL_009f:  ldstr      "PukeSound"
    IL_00a4:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_00a9:  stfld      string Game.ComponentCreatureSounds::m_pukeSound
    IL_00ae:  ldarg.0
    IL_00af:  ldarg.1
    IL_00b0:  ldstr      "AttackSound"
    IL_00b5:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_00ba:  stfld      string Game.ComponentCreatureSounds::m_attackSound
    IL_00bf:  ldarg.0
    IL_00c0:  ldarg.1
    IL_00c1:  ldstr      "IdleSoundMinDistance"
    IL_00c6:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00cb:  stfld      float32 Game.ComponentCreatureSounds::m_idleSoundMinDistance
    IL_00d0:  ldarg.0
    IL_00d1:  ldarg.1
    IL_00d2:  ldstr      "PainSoundMinDistance"
    IL_00d7:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00dc:  stfld      float32 Game.ComponentCreatureSounds::m_painSoundMinDistance
    IL_00e1:  ldarg.0
    IL_00e2:  ldarg.1
    IL_00e3:  ldstr      "MoanSoundMinDistance"
    IL_00e8:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00ed:  stfld      float32 Game.ComponentCreatureSounds::m_moanSoundMinDistance
    IL_00f2:  ldarg.0
    IL_00f3:  ldarg.1
    IL_00f4:  ldstr      "SneezeSoundMinDistance"
    IL_00f9:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_00fe:  stfld      float32 Game.ComponentCreatureSounds::m_sneezeSoundMinDistance
    IL_0103:  ldarg.0
    IL_0104:  ldarg.1
    IL_0105:  ldstr      "CoughSoundMinDistance"
    IL_010a:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_010f:  stfld      float32 Game.ComponentCreatureSounds::m_coughSoundMinDistance
    IL_0114:  ldarg.0
    IL_0115:  ldarg.1
    IL_0116:  ldstr      "PukeSoundMinDistance"
    IL_011b:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0120:  stfld      float32 Game.ComponentCreatureSounds::m_pukeSoundMinDistance
    IL_0125:  ldarg.0
    IL_0126:  ldarg.1
    IL_0127:  ldstr      "AttackSoundMinDistance"
    IL_012c:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0131:  stfld      float32 Game.ComponentCreatureSounds::m_attackSoundMinDistance
    IL_0136:  ret
  } // end of method ComponentCreatureSounds::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       63 (0x3f)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.ComponentCreatureSounds::m_random
    IL_000b:  ldarg.0
    IL_000c:  ldc.r8     -1000.
    IL_0015:  stfld      float64 Game.ComponentCreatureSounds::m_lastSoundTime
    IL_001a:  ldarg.0
    IL_001b:  ldc.r8     -1000.
    IL_0024:  stfld      float64 Game.ComponentCreatureSounds::m_lastCoughingSoundTime
    IL_0029:  ldarg.0
    IL_002a:  ldc.r8     -1000.
    IL_0033:  stfld      float64 Game.ComponentCreatureSounds::m_lastPukeSoundTime
    IL_0038:  ldarg.0
    IL_0039:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_003e:  ret
  } // end of method ComponentCreatureSounds::.ctor

} // end of class Game.ComponentCreatureSounds