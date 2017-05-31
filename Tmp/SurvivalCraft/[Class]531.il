.class public auto ansi beforefieldinit Game.SubsystemAmbientSounds
       extends [EntitySystem]GameEntitySystem.Subsystem
       implements Game.IUpdateable
{
  .field private class [Engine]Engine.Audio.Sound m_fireSound
  .field private class [Engine]Engine.Audio.Sound m_waterSound
  .field private class [Engine]Engine.Audio.Sound m_magmaSound
  .field private class Game.Random m_random
  .field private class Game.SubsystemAudio '<SubsystemAudio>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<FireSoundVolume>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<WaterSoundVolume>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<MagmaSoundVolume>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance class Game.SubsystemAudio 
          get_SubsystemAudio() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemAudio Game.SubsystemAmbientSounds::'<SubsystemAudio>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemAmbientSounds::get_SubsystemAudio

  .method private hidebysig specialname instance void 
          set_SubsystemAudio(class Game.SubsystemAudio 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.SubsystemAudio Game.SubsystemAmbientSounds::'<SubsystemAudio>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemAmbientSounds::set_SubsystemAudio

  .method public hidebysig specialname instance float32 
          get_FireSoundVolume() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.SubsystemAmbientSounds::'<FireSoundVolume>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemAmbientSounds::get_FireSoundVolume

  .method public hidebysig specialname instance void 
          set_FireSoundVolume(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.SubsystemAmbientSounds::'<FireSoundVolume>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemAmbientSounds::set_FireSoundVolume

  .method public hidebysig specialname instance float32 
          get_WaterSoundVolume() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.SubsystemAmbientSounds::'<WaterSoundVolume>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemAmbientSounds::get_WaterSoundVolume

  .method public hidebysig specialname instance void 
          set_WaterSoundVolume(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.SubsystemAmbientSounds::'<WaterSoundVolume>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemAmbientSounds::set_WaterSoundVolume

  .method public hidebysig specialname instance float32 
          get_MagmaSoundVolume() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.SubsystemAmbientSounds::'<MagmaSoundVolume>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemAmbientSounds::get_MagmaSoundVolume

  .method public hidebysig specialname instance void 
          set_MagmaSoundVolume(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.SubsystemAmbientSounds::'<MagmaSoundVolume>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemAmbientSounds::set_MagmaSoundVolume

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemAmbientSounds::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       435 (0x1b3)
    .maxstack  6
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemAmbientSounds::m_fireSound
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemAmbientSounds::m_fireSound
    IL_000c:  callvirt   instance float32 [Engine]Engine.Audio.BaseSound::get_Volume()
    IL_0011:  call       float32 Game.AudioManager::get_GlobalVolume()
    IL_0016:  ldarg.0
    IL_0017:  call       instance float32 Game.SubsystemAmbientSounds::get_FireSoundVolume()
    IL_001c:  mul
    IL_001d:  ldc.r4     3.
    IL_0022:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_0027:  mul
    IL_0028:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_002d:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0032:  callvirt   instance void [Engine]Engine.Audio.BaseSound::set_Volume(float32)
    IL_0037:  ldarg.0
    IL_0038:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemAmbientSounds::m_fireSound
    IL_003d:  callvirt   instance float32 [Engine]Engine.Audio.BaseSound::get_Volume()
    IL_0042:  ldc.r4     0.5
    IL_0047:  call       float32 Game.AudioManager::get_MinAudibleVolume()
    IL_004c:  mul
    IL_004d:  ble.un.s   IL_005c

    IL_004f:  ldarg.0
    IL_0050:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemAmbientSounds::m_fireSound
    IL_0055:  callvirt   instance void [Engine]Engine.Audio.BaseSound::Play()
    IL_005a:  br.s       IL_0067

    IL_005c:  ldarg.0
    IL_005d:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemAmbientSounds::m_fireSound
    IL_0062:  callvirt   instance void [Engine]Engine.Audio.BaseSound::Pause()
    IL_0067:  ldarg.0
    IL_0068:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemAmbientSounds::m_waterSound
    IL_006d:  ldarg.0
    IL_006e:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemAmbientSounds::m_waterSound
    IL_0073:  callvirt   instance float32 [Engine]Engine.Audio.BaseSound::get_Volume()
    IL_0078:  call       float32 Game.AudioManager::get_GlobalVolume()
    IL_007d:  ldarg.0
    IL_007e:  call       instance float32 Game.SubsystemAmbientSounds::get_WaterSoundVolume()
    IL_0083:  mul
    IL_0084:  ldc.r4     3.
    IL_0089:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_008e:  mul
    IL_008f:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0094:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0099:  callvirt   instance void [Engine]Engine.Audio.BaseSound::set_Volume(float32)
    IL_009e:  ldarg.0
    IL_009f:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemAmbientSounds::m_waterSound
    IL_00a4:  callvirt   instance float32 [Engine]Engine.Audio.BaseSound::get_Volume()
    IL_00a9:  ldc.r4     0.5
    IL_00ae:  call       float32 Game.AudioManager::get_MinAudibleVolume()
    IL_00b3:  mul
    IL_00b4:  ble.un.s   IL_00c3

    IL_00b6:  ldarg.0
    IL_00b7:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemAmbientSounds::m_waterSound
    IL_00bc:  callvirt   instance void [Engine]Engine.Audio.BaseSound::Play()
    IL_00c1:  br.s       IL_00ce

    IL_00c3:  ldarg.0
    IL_00c4:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemAmbientSounds::m_waterSound
    IL_00c9:  callvirt   instance void [Engine]Engine.Audio.BaseSound::Pause()
    IL_00ce:  ldarg.0
    IL_00cf:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemAmbientSounds::m_magmaSound
    IL_00d4:  ldarg.0
    IL_00d5:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemAmbientSounds::m_magmaSound
    IL_00da:  callvirt   instance float32 [Engine]Engine.Audio.BaseSound::get_Volume()
    IL_00df:  call       float32 Game.AudioManager::get_GlobalVolume()
    IL_00e4:  ldarg.0
    IL_00e5:  call       instance float32 Game.SubsystemAmbientSounds::get_MagmaSoundVolume()
    IL_00ea:  mul
    IL_00eb:  ldc.r4     3.
    IL_00f0:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_00f5:  mul
    IL_00f6:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_00fb:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0100:  callvirt   instance void [Engine]Engine.Audio.BaseSound::set_Volume(float32)
    IL_0105:  ldarg.0
    IL_0106:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemAmbientSounds::m_magmaSound
    IL_010b:  callvirt   instance float32 [Engine]Engine.Audio.BaseSound::get_Volume()
    IL_0110:  ldc.r4     0.5
    IL_0115:  call       float32 Game.AudioManager::get_MinAudibleVolume()
    IL_011a:  mul
    IL_011b:  ble.un.s   IL_012a

    IL_011d:  ldarg.0
    IL_011e:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemAmbientSounds::m_magmaSound
    IL_0123:  callvirt   instance void [Engine]Engine.Audio.BaseSound::Play()
    IL_0128:  br.s       IL_0135

    IL_012a:  ldarg.0
    IL_012b:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemAmbientSounds::m_magmaSound
    IL_0130:  callvirt   instance void [Engine]Engine.Audio.BaseSound::Pause()
    IL_0135:  ldarg.0
    IL_0136:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemAmbientSounds::m_magmaSound
    IL_013b:  callvirt   instance valuetype [Engine]Engine.Audio.SoundState [Engine]Engine.Audio.BaseSound::get_State()
    IL_0140:  ldc.i4.1
    IL_0141:  bne.un.s   IL_0191

    IL_0143:  ldarg.0
    IL_0144:  ldfld      class Game.Random Game.SubsystemAmbientSounds::m_random
    IL_0149:  ldc.r4     0.2
    IL_014e:  ldarg.1
    IL_014f:  mul
    IL_0150:  callvirt   instance bool Game.Random::Bool(float32)
    IL_0155:  brfalse.s  IL_0191

    IL_0157:  ldarg.0
    IL_0158:  call       instance class Game.SubsystemAudio Game.SubsystemAmbientSounds::get_SubsystemAudio()
    IL_015d:  ldstr      "Audio/Sizzles"
    IL_0162:  ldarg.0
    IL_0163:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemAmbientSounds::m_magmaSound
    IL_0168:  callvirt   instance float32 [Engine]Engine.Audio.BaseSound::get_Volume()
    IL_016d:  ldarg.0
    IL_016e:  ldfld      class Game.Random Game.SubsystemAmbientSounds::m_random
    IL_0173:  ldc.r4     -0.2
    IL_0178:  ldc.r4     0.2
    IL_017d:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0182:  ldc.r4     0.0
    IL_0187:  ldc.r4     0.0
    IL_018c:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            float32,
                                                                            float32)
    IL_0191:  ldarg.0
    IL_0192:  ldc.r4     0.0
    IL_0197:  call       instance void Game.SubsystemAmbientSounds::set_FireSoundVolume(float32)
    IL_019c:  ldarg.0
    IL_019d:  ldc.r4     0.0
    IL_01a2:  call       instance void Game.SubsystemAmbientSounds::set_WaterSoundVolume(float32)
    IL_01a7:  ldarg.0
    IL_01a8:  ldc.r4     0.0
    IL_01ad:  call       instance void Game.SubsystemAmbientSounds::set_MagmaSoundVolume(float32)
    IL_01b2:  ret
  } // end of method SubsystemAmbientSounds::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       169 (0xa9)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_000d:  call       instance void Game.SubsystemAmbientSounds::set_SubsystemAudio(class Game.SubsystemAudio)
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class Game.SubsystemAudio Game.SubsystemAmbientSounds::get_SubsystemAudio()
    IL_0019:  ldstr      "Audio/Fire"
    IL_001e:  callvirt   instance class [Engine]Engine.Audio.Sound Game.SubsystemAudio::CreateSound(string)
    IL_0023:  stfld      class [Engine]Engine.Audio.Sound Game.SubsystemAmbientSounds::m_fireSound
    IL_0028:  ldarg.0
    IL_0029:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemAmbientSounds::m_fireSound
    IL_002e:  ldc.i4.1
    IL_002f:  callvirt   instance void [Engine]Engine.Audio.BaseSound::set_IsLooped(bool)
    IL_0034:  ldarg.0
    IL_0035:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemAmbientSounds::m_fireSound
    IL_003a:  ldc.r4     0.0
    IL_003f:  callvirt   instance void [Engine]Engine.Audio.BaseSound::set_Volume(float32)
    IL_0044:  ldarg.0
    IL_0045:  ldarg.0
    IL_0046:  call       instance class Game.SubsystemAudio Game.SubsystemAmbientSounds::get_SubsystemAudio()
    IL_004b:  ldstr      "Audio/Water"
    IL_0050:  callvirt   instance class [Engine]Engine.Audio.Sound Game.SubsystemAudio::CreateSound(string)
    IL_0055:  stfld      class [Engine]Engine.Audio.Sound Game.SubsystemAmbientSounds::m_waterSound
    IL_005a:  ldarg.0
    IL_005b:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemAmbientSounds::m_waterSound
    IL_0060:  ldc.i4.1
    IL_0061:  callvirt   instance void [Engine]Engine.Audio.BaseSound::set_IsLooped(bool)
    IL_0066:  ldarg.0
    IL_0067:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemAmbientSounds::m_waterSound
    IL_006c:  ldc.r4     0.0
    IL_0071:  callvirt   instance void [Engine]Engine.Audio.BaseSound::set_Volume(float32)
    IL_0076:  ldarg.0
    IL_0077:  ldarg.0
    IL_0078:  call       instance class Game.SubsystemAudio Game.SubsystemAmbientSounds::get_SubsystemAudio()
    IL_007d:  ldstr      "Audio/Magma"
    IL_0082:  callvirt   instance class [Engine]Engine.Audio.Sound Game.SubsystemAudio::CreateSound(string)
    IL_0087:  stfld      class [Engine]Engine.Audio.Sound Game.SubsystemAmbientSounds::m_magmaSound
    IL_008c:  ldarg.0
    IL_008d:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemAmbientSounds::m_magmaSound
    IL_0092:  ldc.i4.1
    IL_0093:  callvirt   instance void [Engine]Engine.Audio.BaseSound::set_IsLooped(bool)
    IL_0098:  ldarg.0
    IL_0099:  ldfld      class [Engine]Engine.Audio.Sound Game.SubsystemAmbientSounds::m_magmaSound
    IL_009e:  ldc.r4     0.0
    IL_00a3:  callvirt   instance void [Engine]Engine.Audio.BaseSound::set_Volume(float32)
    IL_00a8:  ret
  } // end of method SubsystemAmbientSounds::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.SubsystemAmbientSounds::m_random
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_0011:  ret
  } // end of method SubsystemAmbientSounds::.ctor

  .property instance class Game.SubsystemAudio
          SubsystemAudio()
  {
    .get instance class Game.SubsystemAudio Game.SubsystemAmbientSounds::get_SubsystemAudio()
    .set instance void Game.SubsystemAmbientSounds::set_SubsystemAudio(class Game.SubsystemAudio)
  } // end of property SubsystemAmbientSounds::SubsystemAudio
  .property instance float32 FireSoundVolume()
  {
    .get instance float32 Game.SubsystemAmbientSounds::get_FireSoundVolume()
    .set instance void Game.SubsystemAmbientSounds::set_FireSoundVolume(float32)
  } // end of property SubsystemAmbientSounds::FireSoundVolume
  .property instance float32 WaterSoundVolume()
  {
    .get instance float32 Game.SubsystemAmbientSounds::get_WaterSoundVolume()
    .set instance void Game.SubsystemAmbientSounds::set_WaterSoundVolume(float32)
  } // end of property SubsystemAmbientSounds::WaterSoundVolume
  .property instance float32 MagmaSoundVolume()
  {
    .get instance float32 Game.SubsystemAmbientSounds::get_MagmaSoundVolume()
    .set instance void Game.SubsystemAmbientSounds::set_MagmaSoundVolume(float32)
  } // end of property SubsystemAmbientSounds::MagmaSoundVolume
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemAmbientSounds::get_UpdateOrder()
  } // end of property SubsystemAmbientSounds::UpdateOrder
} // end of class Game.SubsystemAmbientSounds