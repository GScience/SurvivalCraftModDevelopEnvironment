.class public auto ansi beforefieldinit Game.SubsystemAudio
       extends [EntitySystem]GameEntitySystem.Subsystem
       implements Game.IUpdateable
{
  .class auto ansi nested private beforefieldinit Congestion
         extends [System.Runtime]System.Object
  {
    .field public float64 LastUpdateTime
    .field public float64 LastPlayedTime
    .field public float32 LastPlayedVolume
    .field public float32 Value
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method Congestion::.ctor

  } // end of class Congestion

  .class sequential ansi sealed nested private beforefieldinit SoundInfo
         extends [System.Runtime]System.ValueType
  {
    .field public float64 Time
    .field public string Name
    .field public float32 Volume
    .field public float32 Pitch
    .field public float32 Pan
  } // end of class SoundInfo

  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemViews m_subsystemViews
  .field private class Game.Random m_random
  .field private class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3> m_listenerPositions
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.SubsystemAudio/Congestion> m_congestions
  .field private float64 m_nextSoundTime
  .field private class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemAudio/SoundInfo> m_queuedSounds
  .field private class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Audio.Sound> m_sounds
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<class [Engine]Engine.Audio.Sound,bool> m_mutedSounds
  .method public hidebysig specialname instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Vector3> 
          get_ListenerPositions() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3> Game.SubsystemAudio::m_listenerPositions
    IL_0006:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Vector3>::.ctor(class [System.Runtime]System.Collections.Generic.IList`1<!0>)
    IL_000b:  ret
  } // end of method SubsystemAudio::get_ListenerPositions

  .method public hidebysig instance float32 
          CalculateListenerDistanceSquared(valuetype [Engine]Engine.Vector3 p) cil managed
  {
    // 代码大小       55 (0x37)
    .maxstack  2
    .locals init (float32 V_0,
             int32 V_1,
             float32 V_2)
    IL_0000:  ldc.r4     3.4028235e+038
    IL_0005:  stloc.0
    IL_0006:  ldc.i4.0
    IL_0007:  stloc.1
    IL_0008:  br.s       IL_0027

    IL_000a:  ldarg.0
    IL_000b:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3> Game.SubsystemAudio::m_listenerPositions
    IL_0010:  ldloc.1
    IL_0011:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::get_Item(int32)
    IL_0016:  ldarg.1
    IL_0017:  call       float32 [Engine]Engine.Vector3::DistanceSquared(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_001c:  stloc.2
    IL_001d:  ldloc.2
    IL_001e:  ldloc.0
    IL_001f:  bge.un.s   IL_0023

    IL_0021:  ldloc.2
    IL_0022:  stloc.0
    IL_0023:  ldloc.1
    IL_0024:  ldc.i4.1
    IL_0025:  add
    IL_0026:  stloc.1
    IL_0027:  ldloc.1
    IL_0028:  ldarg.0
    IL_0029:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3> Game.SubsystemAudio::m_listenerPositions
    IL_002e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::get_Count()
    IL_0033:  blt.s      IL_000a

    IL_0035:  ldloc.0
    IL_0036:  ret
  } // end of method SubsystemAudio::CalculateListenerDistanceSquared

  .method public hidebysig instance float32 
          CalculateListenerDistance(valuetype [Engine]Engine.Vector3 p) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance float32 Game.SubsystemAudio::CalculateListenerDistanceSquared(valuetype [Engine]Engine.Vector3)
    IL_0007:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_000c:  ret
  } // end of method SubsystemAudio::CalculateListenerDistance

  .method public hidebysig instance void 
          Mute() cil managed
  {
    // 代码大小       76 (0x4c)
    .maxstack  3
    .locals init (valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Engine]Engine.Audio.Sound> V_0,
             class [Engine]Engine.Audio.Sound V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Audio.Sound> Game.SubsystemAudio::m_sounds
    IL_0006:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Audio.Sound>::GetEnumerator()
    IL_000b:  stloc.0
    .try
    {
      IL_000c:  br.s       IL_0032

      IL_000e:  ldloca.s   V_0
      IL_0010:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Engine]Engine.Audio.Sound>::get_Current()
      IL_0015:  stloc.1
      IL_0016:  ldloc.1
      IL_0017:  callvirt   instance valuetype [Engine]Engine.Audio.SoundState [Engine]Engine.Audio.BaseSound::get_State()
      IL_001c:  ldc.i4.1
      IL_001d:  bne.un.s   IL_0032

      IL_001f:  ldarg.0
      IL_0020:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class [Engine]Engine.Audio.Sound,bool> Game.SubsystemAudio::m_mutedSounds
      IL_0025:  ldloc.1
      IL_0026:  ldc.i4.1
      IL_0027:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class [Engine]Engine.Audio.Sound,bool>::set_Item(!0,
                                                                                                                                                            !1)
      IL_002c:  ldloc.1
      IL_002d:  callvirt   instance void [Engine]Engine.Audio.BaseSound::Pause()
      IL_0032:  ldloca.s   V_0
      IL_0034:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Engine]Engine.Audio.Sound>::MoveNext()
      IL_0039:  brtrue.s   IL_000e

      IL_003b:  leave.s    IL_004b

    }  // end .try
    finally
    {
      IL_003d:  ldloca.s   V_0
      IL_003f:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Engine]Engine.Audio.Sound>
      IL_0045:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_004a:  endfinally
    }  // end handler
    IL_004b:  ret
  } // end of method SubsystemAudio::Mute

  .method public hidebysig instance void 
          Unmute() cil managed
  {
    // 代码大小       68 (0x44)
    .maxstack  1
    .locals init (valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class [Engine]Engine.Audio.Sound,bool> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class [Engine]Engine.Audio.Sound,bool> Game.SubsystemAudio::m_mutedSounds
    IL_0006:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<class [Engine]Engine.Audio.Sound,bool>::get_Keys()
    IL_000b:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class [Engine]Engine.Audio.Sound,bool>::GetEnumerator()
    IL_0010:  stloc.0
    .try
    {
      IL_0011:  br.s       IL_001f

      IL_0013:  ldloca.s   V_0
      IL_0015:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class [Engine]Engine.Audio.Sound,bool>::get_Current()
      IL_001a:  callvirt   instance void [Engine]Engine.Audio.BaseSound::Play()
      IL_001f:  ldloca.s   V_0
      IL_0021:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class [Engine]Engine.Audio.Sound,bool>::MoveNext()
      IL_0026:  brtrue.s   IL_0013

      IL_0028:  leave.s    IL_0038

    }  // end .try
    finally
    {
      IL_002a:  ldloca.s   V_0
      IL_002c:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class [Engine]Engine.Audio.Sound,bool>
      IL_0032:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0037:  endfinally
    }  // end handler
    IL_0038:  ldarg.0
    IL_0039:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class [Engine]Engine.Audio.Sound,bool> Game.SubsystemAudio::m_mutedSounds
    IL_003e:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class [Engine]Engine.Audio.Sound,bool>::Clear()
    IL_0043:  ret
  } // end of method SubsystemAudio::Unmute

  .method public hidebysig instance void 
          PlaySound(string name,
                    float32 volume,
                    float32 pitch,
                    float32 pan,
                    float32 delay) cil managed
  {
    // 代码大小       96 (0x60)
    .maxstack  3
    .locals init (float64 V_0,
             valuetype Game.SubsystemAudio/SoundInfo V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTime Game.SubsystemAudio::m_subsystemTime
    IL_0006:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_000b:  ldarg.s    delay
    IL_000d:  conv.r8
    IL_000e:  add
    IL_000f:  stloc.0
    IL_0010:  ldarg.0
    IL_0011:  ldarg.0
    IL_0012:  ldfld      float64 Game.SubsystemAudio::m_nextSoundTime
    IL_0017:  ldloc.0
    IL_0018:  call       float64 [Engine]Engine.MathUtils::Min(float64,
                                                               float64)
    IL_001d:  stfld      float64 Game.SubsystemAudio::m_nextSoundTime
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemAudio/SoundInfo> Game.SubsystemAudio::m_queuedSounds
    IL_0028:  ldloca.s   V_1
    IL_002a:  initobj    Game.SubsystemAudio/SoundInfo
    IL_0030:  ldloca.s   V_1
    IL_0032:  ldloc.0
    IL_0033:  stfld      float64 Game.SubsystemAudio/SoundInfo::Time
    IL_0038:  ldloca.s   V_1
    IL_003a:  ldarg.1
    IL_003b:  stfld      string Game.SubsystemAudio/SoundInfo::Name
    IL_0040:  ldloca.s   V_1
    IL_0042:  ldarg.2
    IL_0043:  stfld      float32 Game.SubsystemAudio/SoundInfo::Volume
    IL_0048:  ldloca.s   V_1
    IL_004a:  ldarg.3
    IL_004b:  stfld      float32 Game.SubsystemAudio/SoundInfo::Pitch
    IL_0050:  ldloca.s   V_1
    IL_0052:  ldarg.s    pan
    IL_0054:  stfld      float32 Game.SubsystemAudio/SoundInfo::Pan
    IL_0059:  ldloc.1
    IL_005a:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemAudio/SoundInfo>::Add(!0)
    IL_005f:  ret
  } // end of method SubsystemAudio::PlaySound

  .method public hidebysig instance void 
          PlaySound(string name,
                    float32 volume,
                    float32 pitch,
                    valuetype [Engine]Engine.Vector3 position,
                    float32 minDistance,
                    float32 delay) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  6
    .locals init (float32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldarg.s    position
    IL_0004:  call       instance float32 Game.SubsystemAudio::CalculateListenerDistance(valuetype [Engine]Engine.Vector3)
    IL_0009:  ldarg.s    minDistance
    IL_000b:  ldc.r4     2.
    IL_0010:  call       instance float32 Game.SubsystemAudio::CalculateVolume(float32,
                                                                               float32,
                                                                               float32)
    IL_0015:  stloc.0
    IL_0016:  ldarg.0
    IL_0017:  ldarg.1
    IL_0018:  ldarg.2
    IL_0019:  ldloc.0
    IL_001a:  mul
    IL_001b:  ldarg.3
    IL_001c:  ldc.r4     0.0
    IL_0021:  ldarg.s    delay
    IL_0023:  call       instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      float32,
                                                                      float32)
    IL_0028:  ret
  } // end of method SubsystemAudio::PlaySound

  .method public hidebysig instance void 
          PlaySound(string name,
                    float32 volume,
                    float32 pitch,
                    valuetype [Engine]Engine.Vector3 position,
                    float32 minDistance,
                    bool autoDelay) cil managed
  {
    // 代码大小       58 (0x3a)
    .maxstack  7
    .locals init (float32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldarg.s    position
    IL_0004:  call       instance float32 Game.SubsystemAudio::CalculateListenerDistance(valuetype [Engine]Engine.Vector3)
    IL_0009:  ldarg.s    minDistance
    IL_000b:  ldc.r4     2.
    IL_0010:  call       instance float32 Game.SubsystemAudio::CalculateVolume(float32,
                                                                               float32,
                                                                               float32)
    IL_0015:  stloc.0
    IL_0016:  ldarg.0
    IL_0017:  ldarg.1
    IL_0018:  ldarg.2
    IL_0019:  ldloc.0
    IL_001a:  mul
    IL_001b:  ldarg.3
    IL_001c:  ldc.r4     0.0
    IL_0021:  ldarg.s    autoDelay
    IL_0023:  brtrue.s   IL_002c

    IL_0025:  ldc.r4     0.0
    IL_002a:  br.s       IL_0034

    IL_002c:  ldarg.0
    IL_002d:  ldarg.s    position
    IL_002f:  call       instance float32 Game.SubsystemAudio::CalculateDelay(valuetype [Engine]Engine.Vector3)
    IL_0034:  call       instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      float32,
                                                                      float32)
    IL_0039:  ret
  } // end of method SubsystemAudio::PlaySound

  .method public hidebysig instance void 
          PlayRandomSound(string directory,
                          float32 volume,
                          float32 pitch,
                          float32 pan,
                          float32 delay) cil managed
  {
    // 代码大小       86 (0x56)
    .maxstack  6
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Content.ContentInfo> V_0,
             int32 V_1)
    IL_0000:  ldarg.1
    IL_0001:  call       valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Content.ContentInfo> Game.ContentManager::List(string)
    IL_0006:  stloc.0
    IL_0007:  ldloca.s   V_0
    IL_0009:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Content.ContentInfo>::get_Count()
    IL_000e:  ldc.i4.0
    IL_000f:  ble.s      IL_0041

    IL_0011:  ldarg.0
    IL_0012:  ldfld      class Game.Random Game.SubsystemAudio::m_random
    IL_0017:  ldc.i4.0
    IL_0018:  ldloca.s   V_0
    IL_001a:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Content.ContentInfo>::get_Count()
    IL_001f:  ldc.i4.1
    IL_0020:  sub
    IL_0021:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0026:  stloc.1
    IL_0027:  ldarg.0
    IL_0028:  ldloca.s   V_0
    IL_002a:  ldloc.1
    IL_002b:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Content.ContentInfo>::get_Item(int32)
    IL_0030:  ldfld      string [Engine]Engine.Content.ContentInfo::Name
    IL_0035:  ldarg.2
    IL_0036:  ldarg.3
    IL_0037:  ldarg.s    pan
    IL_0039:  ldarg.s    delay
    IL_003b:  call       instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      float32,
                                                                      float32)
    IL_0040:  ret

    IL_0041:  ldstr      "Sounds directory \"{0}\" not found or empty."
    IL_0046:  ldc.i4.1
    IL_0047:  newarr     [System.Runtime]System.Object
    IL_004c:  dup
    IL_004d:  ldc.i4.0
    IL_004e:  ldarg.1
    IL_004f:  stelem.ref
    IL_0050:  call       void [Engine]Engine.Log::Warning(string,
                                                          object[])
    IL_0055:  ret
  } // end of method SubsystemAudio::PlayRandomSound

  .method public hidebysig instance void 
          PlayRandomSound(string directory,
                          float32 volume,
                          float32 pitch,
                          valuetype [Engine]Engine.Vector3 position,
                          float32 minDistance,
                          float32 delay) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  6
    .locals init (float32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldarg.s    position
    IL_0004:  call       instance float32 Game.SubsystemAudio::CalculateListenerDistance(valuetype [Engine]Engine.Vector3)
    IL_0009:  ldarg.s    minDistance
    IL_000b:  ldc.r4     2.
    IL_0010:  call       instance float32 Game.SubsystemAudio::CalculateVolume(float32,
                                                                               float32,
                                                                               float32)
    IL_0015:  stloc.0
    IL_0016:  ldarg.0
    IL_0017:  ldarg.1
    IL_0018:  ldarg.2
    IL_0019:  ldloc.0
    IL_001a:  mul
    IL_001b:  ldarg.3
    IL_001c:  ldc.r4     0.0
    IL_0021:  ldarg.s    delay
    IL_0023:  call       instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            float32,
                                                                            float32)
    IL_0028:  ret
  } // end of method SubsystemAudio::PlayRandomSound

  .method public hidebysig instance void 
          PlayRandomSound(string directory,
                          float32 volume,
                          float32 pitch,
                          valuetype [Engine]Engine.Vector3 position,
                          float32 minDistance,
                          bool autoDelay) cil managed
  {
    // 代码大小       58 (0x3a)
    .maxstack  7
    .locals init (float32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldarg.s    position
    IL_0004:  call       instance float32 Game.SubsystemAudio::CalculateListenerDistance(valuetype [Engine]Engine.Vector3)
    IL_0009:  ldarg.s    minDistance
    IL_000b:  ldc.r4     2.
    IL_0010:  call       instance float32 Game.SubsystemAudio::CalculateVolume(float32,
                                                                               float32,
                                                                               float32)
    IL_0015:  stloc.0
    IL_0016:  ldarg.0
    IL_0017:  ldarg.1
    IL_0018:  ldarg.2
    IL_0019:  ldloc.0
    IL_001a:  mul
    IL_001b:  ldarg.3
    IL_001c:  ldc.r4     0.0
    IL_0021:  ldarg.s    autoDelay
    IL_0023:  brtrue.s   IL_002c

    IL_0025:  ldc.r4     0.0
    IL_002a:  br.s       IL_0034

    IL_002c:  ldarg.0
    IL_002d:  ldarg.s    position
    IL_002f:  call       instance float32 Game.SubsystemAudio::CalculateDelay(valuetype [Engine]Engine.Vector3)
    IL_0034:  call       instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            float32,
                                                                            float32)
    IL_0039:  ret
  } // end of method SubsystemAudio::PlayRandomSound

  .method public hidebysig instance class [Engine]Engine.Audio.Sound 
          CreateSound(string name) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  6
    .locals init (class [Engine]Engine.Audio.Sound V_0)
    IL_0000:  ldarg.1
    IL_0001:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Audio.SoundBuffer>(string)
    IL_0006:  ldc.r4     1.
    IL_000b:  ldc.r4     1.
    IL_0010:  ldc.r4     0.0
    IL_0015:  ldc.i4.0
    IL_0016:  ldc.i4.0
    IL_0017:  newobj     instance void [Engine]Engine.Audio.Sound::.ctor(class [Engine]Engine.Audio.SoundBuffer,
                                                                         float32,
                                                                         float32,
                                                                         float32,
                                                                         bool,
                                                                         bool)
    IL_001c:  stloc.0
    IL_001d:  ldarg.0
    IL_001e:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Audio.Sound> Game.SubsystemAudio::m_sounds
    IL_0023:  ldloc.0
    IL_0024:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Audio.Sound>::Add(!0)
    IL_0029:  ldloc.0
    IL_002a:  ret
  } // end of method SubsystemAudio::CreateSound

  .method public hidebysig instance float32 
          CalculateVolume(float32 distance,
                          float32 minDistance,
                          [opt] float32 rolloffFactor) cil managed
  {
    .param [3] = float32(2.)
    // 代码大小       30 (0x1e)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.2
    IL_0002:  ble.un.s   IL_0018

    IL_0004:  ldarg.2
    IL_0005:  ldarg.2
    IL_0006:  ldarg.3
    IL_0007:  ldarg.1
    IL_0008:  ldarg.2
    IL_0009:  sub
    IL_000a:  mul
    IL_000b:  ldc.r4     0.0
    IL_0010:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0015:  add
    IL_0016:  div
    IL_0017:  ret

    IL_0018:  ldc.r4     1.
    IL_001d:  ret
  } // end of method SubsystemAudio::CalculateVolume

  .method public hidebysig instance float32 
          CalculateDelay(valuetype [Engine]Engine.Vector3 position) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  call       instance float32 Game.SubsystemAudio::CalculateListenerDistance(valuetype [Engine]Engine.Vector3)
    IL_0008:  call       instance float32 Game.SubsystemAudio::CalculateDelay(float32)
    IL_000d:  ret
  } // end of method SubsystemAudio::CalculateDelay

  .method public hidebysig instance float32 
          CalculateDelay(float32 distance) cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldc.r4     100.
    IL_0006:  div
    IL_0007:  ldc.r4     5.
    IL_000c:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0011:  ret
  } // end of method SubsystemAudio::CalculateDelay

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemAudio::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       344 (0x158)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.View> V_0,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.View> V_1,
             class Game.View V_2,
             int32 V_3,
             valuetype Game.SubsystemAudio/SoundInfo V_4,
             valuetype [System.Runtime]System.Nullable`1<float32> V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3> Game.SubsystemAudio::m_listenerPositions
    IL_0006:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::Clear()
    IL_000b:  ldarg.0
    IL_000c:  ldfld      class Game.SubsystemViews Game.SubsystemAudio::m_subsystemViews
    IL_0011:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.View> Game.SubsystemViews::get_Views()
    IL_0016:  stloc.1
    IL_0017:  ldloca.s   V_1
    IL_0019:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.View>::GetEnumerator()
    IL_001e:  stloc.0
    .try
    {
      IL_001f:  br.s       IL_003f

      IL_0021:  ldloca.s   V_0
      IL_0023:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.View>::get_Current()
      IL_0028:  stloc.2
      IL_0029:  ldarg.0
      IL_002a:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3> Game.SubsystemAudio::m_listenerPositions
      IL_002f:  ldloc.2
      IL_0030:  callvirt   instance class Game.Camera Game.View::get_ActiveCamera()
      IL_0035:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
      IL_003a:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::Add(!0)
      IL_003f:  ldloca.s   V_0
      IL_0041:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.View>::MoveNext()
      IL_0046:  brtrue.s   IL_0021

      IL_0048:  leave.s    IL_0058

    }  // end .try
    finally
    {
      IL_004a:  ldloca.s   V_0
      IL_004c:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.View>
      IL_0052:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0057:  endfinally
    }  // end handler
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemTime Game.SubsystemAudio::m_subsystemTime
    IL_005e:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0063:  ldarg.0
    IL_0064:  ldfld      float64 Game.SubsystemAudio::m_nextSoundTime
    IL_0069:  blt.un     IL_0157

    IL_006e:  ldarg.0
    IL_006f:  ldc.r8     1.7976931348623157e+308
    IL_0078:  stfld      float64 Game.SubsystemAudio::m_nextSoundTime
    IL_007d:  ldc.i4.0
    IL_007e:  stloc.3
    IL_007f:  br         IL_0146

    IL_0084:  ldarg.0
    IL_0085:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemAudio/SoundInfo> Game.SubsystemAudio::m_queuedSounds
    IL_008a:  ldloc.3
    IL_008b:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemAudio/SoundInfo>::get_Item(int32)
    IL_0090:  stloc.s    V_4
    IL_0092:  ldarg.0
    IL_0093:  ldfld      class Game.SubsystemTime Game.SubsystemAudio::m_subsystemTime
    IL_0098:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_009d:  ldloc.s    V_4
    IL_009f:  ldfld      float64 Game.SubsystemAudio/SoundInfo::Time
    IL_00a4:  blt.un     IL_012a

    IL_00a9:  ldarg.0
    IL_00aa:  ldfld      class Game.SubsystemTime Game.SubsystemAudio::m_subsystemTime
    IL_00af:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeFactor()
    IL_00b4:  ldc.r4     1.
    IL_00b9:  bne.un.s   IL_011c

    IL_00bb:  ldarg.0
    IL_00bc:  ldfld      class Game.SubsystemTime Game.SubsystemAudio::m_subsystemTime
    IL_00c1:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemTime::get_FixedTimeStep()
    IL_00c6:  stloc.s    V_5
    IL_00c8:  ldloca.s   V_5
    IL_00ca:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_00cf:  brtrue.s   IL_011c

    IL_00d1:  ldloc.s    V_4
    IL_00d3:  ldfld      float32 Game.SubsystemAudio/SoundInfo::Volume
    IL_00d8:  call       float32 Game.SettingsManager::get_SoundsVolume()
    IL_00dd:  mul
    IL_00de:  call       float32 Game.AudioManager::get_MinAudibleVolume()
    IL_00e3:  ble.un.s   IL_011c

    IL_00e5:  ldarg.0
    IL_00e6:  ldloc.s    V_4
    IL_00e8:  ldfld      string Game.SubsystemAudio/SoundInfo::Name
    IL_00ed:  ldloc.s    V_4
    IL_00ef:  ldfld      float32 Game.SubsystemAudio/SoundInfo::Volume
    IL_00f4:  call       instance bool Game.SubsystemAudio::UpdateCongestion(string,
                                                                             float32)
    IL_00f9:  brfalse.s  IL_011c

    IL_00fb:  ldloc.s    V_4
    IL_00fd:  ldfld      string Game.SubsystemAudio/SoundInfo::Name
    IL_0102:  ldloc.s    V_4
    IL_0104:  ldfld      float32 Game.SubsystemAudio/SoundInfo::Volume
    IL_0109:  ldloc.s    V_4
    IL_010b:  ldfld      float32 Game.SubsystemAudio/SoundInfo::Pitch
    IL_0110:  ldloc.s    V_4
    IL_0112:  ldfld      float32 Game.SubsystemAudio/SoundInfo::Pan
    IL_0117:  call       void Game.AudioManager::PlaySound(string,
                                                           float32,
                                                           float32,
                                                           float32)
    IL_011c:  ldarg.0
    IL_011d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemAudio/SoundInfo> Game.SubsystemAudio::m_queuedSounds
    IL_0122:  ldloc.3
    IL_0123:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemAudio/SoundInfo>::RemoveAt(int32)
    IL_0128:  br.s       IL_0146

    IL_012a:  ldarg.0
    IL_012b:  ldarg.0
    IL_012c:  ldfld      float64 Game.SubsystemAudio::m_nextSoundTime
    IL_0131:  ldloc.s    V_4
    IL_0133:  ldfld      float64 Game.SubsystemAudio/SoundInfo::Time
    IL_0138:  call       float64 [Engine]Engine.MathUtils::Min(float64,
                                                               float64)
    IL_013d:  stfld      float64 Game.SubsystemAudio::m_nextSoundTime
    IL_0142:  ldloc.3
    IL_0143:  ldc.i4.1
    IL_0144:  add
    IL_0145:  stloc.3
    IL_0146:  ldloc.3
    IL_0147:  ldarg.0
    IL_0148:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemAudio/SoundInfo> Game.SubsystemAudio::m_queuedSounds
    IL_014d:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemAudio/SoundInfo>::get_Count()
    IL_0152:  blt        IL_0084

    IL_0157:  ret
  } // end of method SubsystemAudio::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_000d:  stfld      class Game.SubsystemTime Game.SubsystemAudio::m_subsystemTime
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemViews>(bool)
    IL_001f:  stfld      class Game.SubsystemViews Game.SubsystemAudio::m_subsystemViews
    IL_0024:  ret
  } // end of method SubsystemAudio::Load

  .method public hidebysig virtual instance void 
          Dispose() cil managed
  {
    // 代码大小       52 (0x34)
    .maxstack  1
    .locals init (valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Engine]Engine.Audio.Sound> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Audio.Sound> Game.SubsystemAudio::m_sounds
    IL_0006:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Audio.Sound>::GetEnumerator()
    IL_000b:  stloc.0
    .try
    {
      IL_000c:  br.s       IL_001a

      IL_000e:  ldloca.s   V_0
      IL_0010:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Engine]Engine.Audio.Sound>::get_Current()
      IL_0015:  callvirt   instance void [Engine]Engine.Audio.BaseSound::Dispose()
      IL_001a:  ldloca.s   V_0
      IL_001c:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Engine]Engine.Audio.Sound>::MoveNext()
      IL_0021:  brtrue.s   IL_000e

      IL_0023:  leave.s    IL_0033

    }  // end .try
    finally
    {
      IL_0025:  ldloca.s   V_0
      IL_0027:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Engine]Engine.Audio.Sound>
      IL_002d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0032:  endfinally
    }  // end handler
    IL_0033:  ret
  } // end of method SubsystemAudio::Dispose

  .method private hidebysig instance bool 
          UpdateCongestion(string name,
                           float32 volume) cil managed
  {
    // 代码大小       202 (0xca)
    .maxstack  4
    .locals init (class Game.SubsystemAudio/Congestion V_0,
             float64 V_1,
             float64 V_2,
             float64 V_3,
             float32 V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.SubsystemAudio/Congestion> Game.SubsystemAudio::m_congestions
    IL_0006:  ldarg.1
    IL_0007:  ldloca.s   V_0
    IL_0009:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.SubsystemAudio/Congestion>::TryGetValue(!0,
                                                                                                                                                                   !1&)
    IL_000e:  brtrue.s   IL_0023

    IL_0010:  newobj     instance void Game.SubsystemAudio/Congestion::.ctor()
    IL_0015:  stloc.0
    IL_0016:  ldarg.0
    IL_0017:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.SubsystemAudio/Congestion> Game.SubsystemAudio::m_congestions
    IL_001c:  ldarg.1
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.SubsystemAudio/Congestion>::Add(!0,
                                                                                                                                                           !1)
    IL_0023:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0028:  stloc.1
    IL_0029:  ldloc.0
    IL_002a:  ldfld      float64 Game.SubsystemAudio/Congestion::LastUpdateTime
    IL_002f:  stloc.2
    IL_0030:  ldloc.0
    IL_0031:  ldfld      float64 Game.SubsystemAudio/Congestion::LastPlayedTime
    IL_0036:  stloc.3
    IL_0037:  ldloc.2
    IL_0038:  ldc.r8     0.0
    IL_0041:  bgt.s      IL_004a

    IL_0043:  ldc.r4     0.0
    IL_0048:  br.s       IL_004e

    IL_004a:  ldloc.1
    IL_004b:  ldloc.2
    IL_004c:  sub
    IL_004d:  conv.r4
    IL_004e:  stloc.s    V_4
    IL_0050:  ldloc.0
    IL_0051:  ldloc.0
    IL_0052:  ldfld      float32 Game.SubsystemAudio/Congestion::Value
    IL_0057:  ldc.r4     6.
    IL_005c:  ldloc.s    V_4
    IL_005e:  mul
    IL_005f:  sub
    IL_0060:  ldc.r4     0.0
    IL_0065:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_006a:  stfld      float32 Game.SubsystemAudio/Congestion::Value
    IL_006f:  ldloc.0
    IL_0070:  ldloc.1
    IL_0071:  stfld      float64 Game.SubsystemAudio/Congestion::LastUpdateTime
    IL_0076:  ldloc.0
    IL_0077:  ldfld      float32 Game.SubsystemAudio/Congestion::Value
    IL_007c:  ldc.r4     3.
    IL_0081:  bgt.un.s   IL_00c8

    IL_0083:  ldloc.3
    IL_0084:  ldc.r8     0.0
    IL_008d:  beq.s      IL_00a6

    IL_008f:  ldarg.2
    IL_0090:  ldloc.0
    IL_0091:  ldfld      float32 Game.SubsystemAudio/Congestion::LastPlayedVolume
    IL_0096:  bgt.s      IL_00a6

    IL_0098:  ldloc.1
    IL_0099:  ldloc.3
    IL_009a:  sub
    IL_009b:  ldc.r8     5.000000074505806e-002
    IL_00a4:  blt.un.s   IL_00c8

    IL_00a6:  ldloc.0
    IL_00a7:  ldloc.1
    IL_00a8:  stfld      float64 Game.SubsystemAudio/Congestion::LastPlayedTime
    IL_00ad:  ldloc.0
    IL_00ae:  ldarg.2
    IL_00af:  stfld      float32 Game.SubsystemAudio/Congestion::LastPlayedVolume
    IL_00b4:  ldloc.0
    IL_00b5:  dup
    IL_00b6:  ldfld      float32 Game.SubsystemAudio/Congestion::Value
    IL_00bb:  ldc.r4     1.
    IL_00c0:  add
    IL_00c1:  stfld      float32 Game.SubsystemAudio/Congestion::Value
    IL_00c6:  ldc.i4.1
    IL_00c7:  ret

    IL_00c8:  ldc.i4.0
    IL_00c9:  ret
  } // end of method SubsystemAudio::UpdateCongestion

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       73 (0x49)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.SubsystemAudio::m_random
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3>::.ctor()
    IL_0011:  stfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Vector3> Game.SubsystemAudio::m_listenerPositions
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.SubsystemAudio/Congestion>::.ctor()
    IL_001c:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.SubsystemAudio/Congestion> Game.SubsystemAudio::m_congestions
    IL_0021:  ldarg.0
    IL_0022:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemAudio/SoundInfo>::.ctor()
    IL_0027:  stfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemAudio/SoundInfo> Game.SubsystemAudio::m_queuedSounds
    IL_002c:  ldarg.0
    IL_002d:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Audio.Sound>::.ctor()
    IL_0032:  stfld      class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Audio.Sound> Game.SubsystemAudio::m_sounds
    IL_0037:  ldarg.0
    IL_0038:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class [Engine]Engine.Audio.Sound,bool>::.ctor()
    IL_003d:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class [Engine]Engine.Audio.Sound,bool> Game.SubsystemAudio::m_mutedSounds
    IL_0042:  ldarg.0
    IL_0043:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_0048:  ret
  } // end of method SubsystemAudio::.ctor

  .property instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Vector3>
          ListenerPositions()
  {
    .get instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Vector3> Game.SubsystemAudio::get_ListenerPositions()
  } // end of property SubsystemAudio::ListenerPositions
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemAudio::get_UpdateOrder()
  } // end of property SubsystemAudio::UpdateOrder
} // end of class Game.SubsystemAudio