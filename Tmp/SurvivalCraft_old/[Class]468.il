.class public abstract auto ansi sealed beforefieldinit Game.MusicManager
       extends [System.Runtime]System.Object
{
  .class auto ansi sealed nested public Mix
         extends [System.Runtime]System.Enum
  {
    .field public specialname rtspecialname int32 value__
    .field public static literal valuetype Game.MusicManager/Mix None = int32(0x00000000)
    .field public static literal valuetype Game.MusicManager/Mix Menu = int32(0x00000001)
  } // end of class Mix

  .field private static literal float32 m_fadeSpeed = float32(0.33000001)
  .field private static literal float32 m_fadeWait = float32(2.)
  .field private static class [Engine]Engine.Audio.StreamingSound m_fadeSound
  .field private static class [Engine]Engine.Audio.StreamingSound m_sound
  .field private static float64 m_fadeStartTime
  .field private static valuetype Game.MusicManager/Mix m_currentMix
  .field private static float64 m_nextSongTime
  .field private static class Game.Random m_random
  .method public hidebysig specialname static 
          valuetype Game.MusicManager/Mix 
          get_CurrentMix() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     valuetype Game.MusicManager/Mix Game.MusicManager::m_currentMix
    IL_0005:  ret
  } // end of method MusicManager::get_CurrentMix

  .method public hidebysig specialname static 
          void  set_CurrentMix(valuetype Game.MusicManager/Mix 'value') cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     valuetype Game.MusicManager/Mix Game.MusicManager::m_currentMix
    IL_0006:  beq.s      IL_001c

    IL_0008:  ldarg.0
    IL_0009:  stsfld     valuetype Game.MusicManager/Mix Game.MusicManager::m_currentMix
    IL_000e:  ldc.r8     0.0
    IL_0017:  stsfld     float64 Game.MusicManager::m_nextSongTime
    IL_001c:  ret
  } // end of method MusicManager::set_CurrentMix

  .method public hidebysig static void  Update() cil managed
  {
    // 代码大小       402 (0x192)
    .maxstack  4
    .locals init (float32 V_0,
             int32 V_1)
    IL_0000:  ldsfld     class [Engine]Engine.Audio.StreamingSound Game.MusicManager::m_fadeSound
    IL_0005:  brfalse.s  IL_0058

    IL_0007:  ldsfld     class [Engine]Engine.Audio.StreamingSound Game.MusicManager::m_fadeSound
    IL_000c:  ldsfld     class [Engine]Engine.Audio.StreamingSound Game.MusicManager::m_fadeSound
    IL_0011:  callvirt   instance float32 [Engine]Engine.Audio.BaseSound::get_Volume()
    IL_0016:  ldc.r4     0.33000001
    IL_001b:  call       float32 Game.MusicManager::get_Volume()
    IL_0020:  mul
    IL_0021:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_0026:  mul
    IL_0027:  sub
    IL_0028:  call       float32 Game.MusicManager::get_Volume()
    IL_002d:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0032:  callvirt   instance void [Engine]Engine.Audio.BaseSound::set_Volume(float32)
    IL_0037:  ldsfld     class [Engine]Engine.Audio.StreamingSound Game.MusicManager::m_fadeSound
    IL_003c:  callvirt   instance float32 [Engine]Engine.Audio.BaseSound::get_Volume()
    IL_0041:  ldc.r4     0.0
    IL_0046:  bgt.un.s   IL_0058

    IL_0048:  ldsfld     class [Engine]Engine.Audio.StreamingSound Game.MusicManager::m_fadeSound
    IL_004d:  callvirt   instance void [Engine]Engine.Audio.BaseSound::Dispose()
    IL_0052:  ldnull
    IL_0053:  stsfld     class [Engine]Engine.Audio.StreamingSound Game.MusicManager::m_fadeSound
    IL_0058:  ldsfld     class [Engine]Engine.Audio.StreamingSound Game.MusicManager::m_sound
    IL_005d:  brfalse.s  IL_009b

    IL_005f:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_0064:  ldsfld     float64 Game.MusicManager::m_fadeStartTime
    IL_0069:  blt.un.s   IL_009b

    IL_006b:  ldsfld     class [Engine]Engine.Audio.StreamingSound Game.MusicManager::m_sound
    IL_0070:  ldsfld     class [Engine]Engine.Audio.StreamingSound Game.MusicManager::m_sound
    IL_0075:  callvirt   instance float32 [Engine]Engine.Audio.BaseSound::get_Volume()
    IL_007a:  ldc.r4     0.33000001
    IL_007f:  call       float32 Game.MusicManager::get_Volume()
    IL_0084:  mul
    IL_0085:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_008a:  mul
    IL_008b:  add
    IL_008c:  call       float32 Game.MusicManager::get_Volume()
    IL_0091:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0096:  callvirt   instance void [Engine]Engine.Audio.BaseSound::set_Volume(float32)
    IL_009b:  ldsfld     valuetype Game.MusicManager/Mix Game.MusicManager::m_currentMix
    IL_00a0:  brfalse.s  IL_00ae

    IL_00a2:  call       float32 Game.MusicManager::get_Volume()
    IL_00a7:  ldc.r4     0.0
    IL_00ac:  bne.un.s   IL_00b4

    IL_00ae:  call       void Game.MusicManager::StopMusic()
    IL_00b3:  ret

    IL_00b4:  ldsfld     valuetype Game.MusicManager/Mix Game.MusicManager::m_currentMix
    IL_00b9:  ldc.i4.1
    IL_00ba:  bne.un     IL_0191

    IL_00bf:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_00c4:  ldsfld     float64 Game.MusicManager::m_nextSongTime
    IL_00c9:  bge.s      IL_00d5

    IL_00cb:  call       bool Game.MusicManager::get_IsPlaying()
    IL_00d0:  brtrue     IL_0191

    IL_00d5:  call       bool Game.MusicManager::get_IsPlaying()
    IL_00da:  brtrue.s   IL_00e3

    IL_00dc:  ldc.r4     0.0
    IL_00e1:  br.s       IL_00f7

    IL_00e3:  ldsfld     class Game.Random Game.MusicManager::m_random
    IL_00e8:  ldc.r4     0.0
    IL_00ed:  ldc.r4     0.75
    IL_00f2:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00f7:  stloc.0
    IL_00f8:  ldsfld     class Game.Random Game.MusicManager::m_random
    IL_00fd:  ldc.i4.0
    IL_00fe:  ldc.i4.5
    IL_00ff:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0104:  stloc.1
    IL_0105:  ldloc.1
    IL_0106:  switch     ( 
                          IL_0125,
                          IL_0132,
                          IL_013f,
                          IL_014c,
                          IL_0159,
                          IL_0166)
    IL_0123:  br.s       IL_0171

    IL_0125:  ldstr      "Music/NativeAmericanFluteSpirit"
    IL_012a:  ldloc.0
    IL_012b:  call       void Game.MusicManager::PlayMusic(string,
                                                           float32)
    IL_0130:  br.s       IL_0171

    IL_0132:  ldstr      "Music/AloneForever"
    IL_0137:  ldloc.0
    IL_0138:  call       void Game.MusicManager::PlayMusic(string,
                                                           float32)
    IL_013d:  br.s       IL_0171

    IL_013f:  ldstr      "Music/NativeAmerican"
    IL_0144:  ldloc.0
    IL_0145:  call       void Game.MusicManager::PlayMusic(string,
                                                           float32)
    IL_014a:  br.s       IL_0171

    IL_014c:  ldstr      "Music/NativeAmericanHeart"
    IL_0151:  ldloc.0
    IL_0152:  call       void Game.MusicManager::PlayMusic(string,
                                                           float32)
    IL_0157:  br.s       IL_0171

    IL_0159:  ldstr      "Music/NativeAmericanPeaceFlute"
    IL_015e:  ldloc.0
    IL_015f:  call       void Game.MusicManager::PlayMusic(string,
                                                           float32)
    IL_0164:  br.s       IL_0171

    IL_0166:  ldstr      "Music/NativeIndianChant"
    IL_016b:  ldloc.0
    IL_016c:  call       void Game.MusicManager::PlayMusic(string,
                                                           float32)
    IL_0171:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_0176:  ldsfld     class Game.Random Game.MusicManager::m_random
    IL_017b:  ldc.r4     40.
    IL_0180:  ldc.r4     60.
    IL_0185:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_018a:  conv.r8
    IL_018b:  add
    IL_018c:  stsfld     float64 Game.MusicManager::m_nextSongTime
    IL_0191:  ret
  } // end of method MusicManager::Update

  .method private hidebysig specialname static 
          bool  get_IsPlaying() cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [Engine]Engine.Audio.StreamingSound Game.MusicManager::m_sound
    IL_0005:  brfalse.s  IL_0015

    IL_0007:  ldsfld     class [Engine]Engine.Audio.StreamingSound Game.MusicManager::m_sound
    IL_000c:  callvirt   instance valuetype [Engine]Engine.Audio.SoundState [Engine]Engine.Audio.BaseSound::get_State()
    IL_0011:  ldc.i4.0
    IL_0012:  cgt.un
    IL_0014:  ret

    IL_0015:  ldc.i4.0
    IL_0016:  ret
  } // end of method MusicManager::get_IsPlaying

  .method private hidebysig static void  PlayMusic(string name,
                                                   float32 startPercentage) cil managed
  {
    // 代码大小       177 (0xb1)
    .maxstack  7
    .locals init (float32 V_0,
             class [Engine]Engine.Media.StreamingSource V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0006:  brfalse.s  IL_000e

    IL_0008:  call       void Game.MusicManager::StopMusic()
    IL_000d:  ret

    IL_000e:  nop
    .try
    {
      IL_000f:  call       void Game.MusicManager::StopMusic()
      IL_0014:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
      IL_0019:  ldc.r8     2.
      IL_0022:  add
      IL_0023:  stsfld     float64 Game.MusicManager::m_fadeStartTime
      IL_0028:  ldsfld     class [Engine]Engine.Audio.StreamingSound Game.MusicManager::m_fadeSound
      IL_002d:  brtrue.s   IL_0036

      IL_002f:  call       float32 Game.MusicManager::get_Volume()
      IL_0034:  br.s       IL_003b

      IL_0036:  ldc.r4     0.0
      IL_003b:  stloc.0
      IL_003c:  ldarg.0
      IL_003d:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Media.StreamingSource>(string)
      IL_0042:  callvirt   instance class [Engine]Engine.Media.StreamingSource [Engine]Engine.Media.StreamingSource::Duplicate()
      IL_0047:  stloc.1
      IL_0048:  ldloc.1
      IL_0049:  ldarg.1
      IL_004a:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
      IL_004f:  ldloc.1
      IL_0050:  callvirt   instance int64 [Engine]Engine.Media.StreamingSource::get_BytesCount()
      IL_0055:  ldloc.1
      IL_0056:  callvirt   instance int32 [Engine]Engine.Media.StreamingSource::get_ChannelsCount()
      IL_005b:  conv.i8
      IL_005c:  div
      IL_005d:  ldc.i4.2
      IL_005e:  conv.i8
      IL_005f:  div
      IL_0060:  conv.r4
      IL_0061:  mul
      IL_0062:  conv.i8
      IL_0063:  ldc.i4.s   16
      IL_0065:  conv.i8
      IL_0066:  div
      IL_0067:  ldc.i4.s   16
      IL_0069:  conv.i8
      IL_006a:  mul
      IL_006b:  callvirt   instance void [Engine]Engine.Media.StreamingSource::set_Position(int64)
      IL_0070:  ldloc.1
      IL_0071:  ldloc.0
      IL_0072:  ldc.r4     1.
      IL_0077:  ldc.r4     0.0
      IL_007c:  ldc.i4.0
      IL_007d:  ldc.i4.0
      IL_007e:  ldc.r4     1.
      IL_0083:  newobj     instance void [Engine]Engine.Audio.StreamingSound::.ctor(class [Engine]Engine.Media.StreamingSource,
                                                                                    float32,
                                                                                    float32,
                                                                                    float32,
                                                                                    bool,
                                                                                    bool,
                                                                                    float32)
      IL_0088:  stsfld     class [Engine]Engine.Audio.StreamingSound Game.MusicManager::m_sound
      IL_008d:  ldsfld     class [Engine]Engine.Audio.StreamingSound Game.MusicManager::m_sound
      IL_0092:  callvirt   instance void [Engine]Engine.Audio.BaseSound::Play()
      IL_0097:  leave.s    IL_00b0

    }  // end .try
    catch [System.Runtime]System.Object 
    {
      IL_0099:  pop
      IL_009a:  ldstr      "Error playing music \"{0}\"."
      IL_009f:  ldc.i4.1
      IL_00a0:  newarr     [System.Runtime]System.Object
      IL_00a5:  dup
      IL_00a6:  ldc.i4.0
      IL_00a7:  ldarg.0
      IL_00a8:  stelem.ref
      IL_00a9:  call       void [Engine]Engine.Log::Warning(string,
                                                            object[])
      IL_00ae:  leave.s    IL_00b0

    }  // end handler
    IL_00b0:  ret
  } // end of method MusicManager::PlayMusic

  .method private hidebysig static void  StopMusic() cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  8
    IL_0000:  ldsfld     class [Engine]Engine.Audio.StreamingSound Game.MusicManager::m_sound
    IL_0005:  brfalse.s  IL_0028

    IL_0007:  ldsfld     class [Engine]Engine.Audio.StreamingSound Game.MusicManager::m_fadeSound
    IL_000c:  brfalse.s  IL_0018

    IL_000e:  ldsfld     class [Engine]Engine.Audio.StreamingSound Game.MusicManager::m_fadeSound
    IL_0013:  callvirt   instance void [Engine]Engine.Audio.BaseSound::Dispose()
    IL_0018:  ldsfld     class [Engine]Engine.Audio.StreamingSound Game.MusicManager::m_sound
    IL_001d:  stsfld     class [Engine]Engine.Audio.StreamingSound Game.MusicManager::m_fadeSound
    IL_0022:  ldnull
    IL_0023:  stsfld     class [Engine]Engine.Audio.StreamingSound Game.MusicManager::m_sound
    IL_0028:  ret
  } // end of method MusicManager::StopMusic

  .method private hidebysig specialname static 
          float32  get_Volume() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  call       float32 Game.SettingsManager::get_MusicVolume()
    IL_0005:  ldc.r4     0.60000002
    IL_000a:  mul
    IL_000b:  ret
  } // end of method MusicManager::get_Volume

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  newobj     instance void Game.Random::.ctor()
    IL_0005:  stsfld     class Game.Random Game.MusicManager::m_random
    IL_000a:  ret
  } // end of method MusicManager::.cctor

  .property valuetype Game.MusicManager/Mix
          CurrentMix()
  {
    .get valuetype Game.MusicManager/Mix Game.MusicManager::get_CurrentMix()
    .set void Game.MusicManager::set_CurrentMix(valuetype Game.MusicManager/Mix)
  } // end of property MusicManager::CurrentMix
  .property bool IsPlaying()
  {
    .get bool Game.MusicManager::get_IsPlaying()
  } // end of property MusicManager::IsPlaying
  .property float32 Volume()
  {
    .get float32 Game.MusicManager::get_Volume()
  } // end of property MusicManager::Volume
} // end of class Game.MusicManager