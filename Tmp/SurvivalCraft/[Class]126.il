.class public abstract auto ansi sealed beforefieldinit Game.AudioManager
       extends [System.Runtime]System.Object
{
  .method public hidebysig specialname static 
          float32  get_MinAudibleVolume() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldc.r4     5.0000001e-002
    IL_0005:  call       float32 Game.SettingsManager::get_SoundsVolume()
    IL_000a:  mul
    IL_000b:  ret
  } // end of method AudioManager::get_MinAudibleVolume

  .method public hidebysig static void  PlaySound(string name,
                                                  float32 volume,
                                                  float32 pitch,
                                                  float32 pan) cil managed
  {
    // 代码大小       60 (0x3c)
    .maxstack  6
    .locals init (float32 V_0)
    IL_0000:  call       float32 Game.SettingsManager::get_SoundsVolume()
    IL_0005:  ldc.r4     0.0
    IL_000a:  ble.un.s   IL_003b

    IL_000c:  ldarg.1
    IL_000d:  call       float32 Game.SettingsManager::get_SoundsVolume()
    IL_0012:  mul
    IL_0013:  stloc.0
    IL_0014:  ldloc.0
    IL_0015:  call       float32 Game.AudioManager::get_MinAudibleVolume()
    IL_001a:  ble.un.s   IL_003b

    .try
    {
      IL_001c:  ldarg.0
      IL_001d:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Audio.SoundBuffer>(string)
      IL_0022:  ldloc.0
      IL_0023:  ldarg.2
      IL_0024:  call       float32 Game.AudioManager::ToEnginePitch(float32)
      IL_0029:  ldarg.3
      IL_002a:  ldc.i4.0
      IL_002b:  ldc.i4.1
      IL_002c:  newobj     instance void [Engine]Engine.Audio.Sound::.ctor(class [Engine]Engine.Audio.SoundBuffer,
                                                                           float32,
                                                                           float32,
                                                                           float32,
                                                                           bool,
                                                                           bool)
      IL_0031:  callvirt   instance void [Engine]Engine.Audio.BaseSound::Play()
      IL_0036:  leave.s    IL_003b

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0038:  pop
      IL_0039:  leave.s    IL_003b

    }  // end handler
    IL_003b:  ret
  } // end of method AudioManager::PlaySound

  .method public hidebysig static float32 
          ToEnginePitch(float32 pitch) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldc.r4     2.
    IL_0005:  ldarg.0
    IL_0006:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_000b:  ret
  } // end of method AudioManager::ToEnginePitch

  .property float32 MinAudibleVolume()
  {
    .get float32 Game.AudioManager::get_MinAudibleVolume()
  } // end of property AudioManager::MinAudibleVolume
} // end of class Game.AudioManager