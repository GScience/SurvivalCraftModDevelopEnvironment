.class public auto ansi beforefieldinit Game.RandomJumpCamera
       extends Game.Camera
{
  .field private static literal float32 frequencyFactor = float32(0.5)
  .field private class Game.Random m_random
  .field private float32 m_frequency
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemCamera subsystemCamera) cil managed
  {
    // 代码大小       30 (0x1e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.RandomJumpCamera::m_random
    IL_000b:  ldarg.0
    IL_000c:  ldc.r4     0.5
    IL_0011:  stfld      float32 Game.RandomJumpCamera::m_frequency
    IL_0016:  ldarg.0
    IL_0017:  ldarg.1
    IL_0018:  call       instance void Game.Camera::.ctor(class Game.SubsystemCamera)
    IL_001d:  ret
  } // end of method RandomJumpCamera::.ctor

  .method public hidebysig virtual instance void 
          UpdateViewParameters(class Game.SubsystemDrawing subsystemDrawing,
                               class Game.SubsystemAudio subsystemAudio,
                               float32 dt) cil managed
  {
    // 代码大小       416 (0x1a0)
    .maxstack  5
    .locals init (class Game.SubsystemPlayer V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             valuetype [Engine]Engine.Vector3 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Random Game.RandomJumpCamera::m_random
    IL_0006:  ldc.r4     0.0
    IL_000b:  ldc.r4     1.
    IL_0010:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0015:  ldc.r4     0.1
    IL_001a:  ldarg.3
    IL_001b:  mul
    IL_001c:  bge.un.s   IL_003f

    IL_001e:  ldarg.0
    IL_001f:  ldarg.0
    IL_0020:  ldfld      class Game.Random Game.RandomJumpCamera::m_random
    IL_0025:  ldc.r4     0.33000001
    IL_002a:  ldc.r4     5.
    IL_002f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0034:  ldc.r4     0.5
    IL_0039:  mul
    IL_003a:  stfld      float32 Game.RandomJumpCamera::m_frequency
    IL_003f:  ldarg.0
    IL_0040:  ldfld      class Game.Random Game.RandomJumpCamera::m_random
    IL_0045:  ldc.r4     0.0
    IL_004a:  ldc.r4     1.
    IL_004f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0054:  ldarg.0
    IL_0055:  ldfld      float32 Game.RandomJumpCamera::m_frequency
    IL_005a:  ldarg.3
    IL_005b:  mul
    IL_005c:  bge.un     IL_0123

    IL_0061:  ldarg.0
    IL_0062:  call       instance class Game.SubsystemCamera Game.Camera::get_SubsystemCamera()
    IL_0067:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_006c:  ldc.i4.1
    IL_006d:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPlayer>(bool)
    IL_0072:  stloc.0
    IL_0073:  ldloc.0
    IL_0074:  callvirt   instance bool Game.SubsystemPlayer::get_IsReadyForPlaying()
    IL_0079:  brfalse    IL_0123

    IL_007e:  ldloc.0
    IL_007f:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemPlayer::get_ProposedSpawnPosition()
    IL_0084:  stloc.1
    IL_0085:  ldloca.s   V_1
    IL_0087:  ldflda     float32 [Engine]Engine.Vector3::X
    IL_008c:  dup
    IL_008d:  ldind.r4
    IL_008e:  ldarg.0
    IL_008f:  ldfld      class Game.Random Game.RandomJumpCamera::m_random
    IL_0094:  ldc.r4     -150.
    IL_0099:  ldc.r4     150.
    IL_009e:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00a3:  add
    IL_00a4:  stind.r4
    IL_00a5:  ldloca.s   V_1
    IL_00a7:  ldarg.0
    IL_00a8:  ldfld      class Game.Random Game.RandomJumpCamera::m_random
    IL_00ad:  ldc.r4     70.
    IL_00b2:  ldc.r4     120.
    IL_00b7:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00bc:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_00c1:  ldloca.s   V_1
    IL_00c3:  ldflda     float32 [Engine]Engine.Vector3::Z
    IL_00c8:  dup
    IL_00c9:  ldind.r4
    IL_00ca:  ldarg.0
    IL_00cb:  ldfld      class Game.Random Game.RandomJumpCamera::m_random
    IL_00d0:  ldc.r4     -150.
    IL_00d5:  ldc.r4     150.
    IL_00da:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00df:  add
    IL_00e0:  stind.r4
    IL_00e1:  ldarg.0
    IL_00e2:  ldfld      class Game.Random Game.RandomJumpCamera::m_random
    IL_00e7:  ldc.r4     1.
    IL_00ec:  ldc.i4.0
    IL_00ed:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Random::Vector3(float32,
                                                                                        bool)
    IL_00f2:  stloc.2
    IL_00f3:  ldarg.1
    IL_00f4:  ldloc.1
    IL_00f5:  callvirt   instance void Game.SubsystemDrawing::set_ViewPosition(valuetype [Engine]Engine.Vector3)
    IL_00fa:  ldarg.1
    IL_00fb:  ldloc.2
    IL_00fc:  callvirt   instance void Game.SubsystemDrawing::set_ViewDirection(valuetype [Engine]Engine.Vector3)
    IL_0101:  ldarg.2
    IL_0102:  ldarg.1
    IL_0103:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_0108:  callvirt   instance void Game.SubsystemAudio::set_ListenerPosition(valuetype [Engine]Engine.Vector3)
    IL_010d:  ldarg.2
    IL_010e:  ldarg.1
    IL_010f:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewDirection()
    IL_0114:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0119:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_011e:  callvirt   instance void Game.SubsystemAudio::set_ListenerRight(valuetype [Engine]Engine.Vector3)
    IL_0123:  ldarg.0
    IL_0124:  ldfld      class Game.Random Game.RandomJumpCamera::m_random
    IL_0129:  ldc.r4     0.0
    IL_012e:  ldc.r4     1.
    IL_0133:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0138:  ldc.r4     0.5
    IL_013d:  ldarg.0
    IL_013e:  ldfld      float32 Game.RandomJumpCamera::m_frequency
    IL_0143:  mul
    IL_0144:  ldarg.3
    IL_0145:  mul
    IL_0146:  bge.un.s   IL_0174

    IL_0148:  ldarg.0
    IL_0149:  call       instance class Game.SubsystemCamera Game.Camera::get_SubsystemCamera()
    IL_014e:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0153:  ldc.i4.1
    IL_0154:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTimeOfDay>(bool)
    IL_0159:  ldarg.0
    IL_015a:  ldfld      class Game.Random Game.RandomJumpCamera::m_random
    IL_015f:  ldc.r4     0.0
    IL_0164:  ldc.r4     1.
    IL_0169:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_016e:  conv.r8
    IL_016f:  callvirt   instance void Game.SubsystemTimeOfDay::set_TimeOfDayOffset(float64)
    IL_0174:  ldarg.0
    IL_0175:  ldfld      class Game.Random Game.RandomJumpCamera::m_random
    IL_017a:  ldc.r4     0.0
    IL_017f:  ldc.r4     1.
    IL_0184:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0189:  ldc.r4     1.
    IL_018e:  ldarg.3
    IL_018f:  mul
    IL_0190:  ldc.r4     0.5
    IL_0195:  mul
    IL_0196:  bge.un.s   IL_019f

    IL_0198:  ldc.i4.0
    IL_0199:  ldc.i4.0
    IL_019a:  call       void Game.GameManager::SaveProject(bool,
                                                            bool)
    IL_019f:  ret
  } // end of method RandomJumpCamera::UpdateViewParameters

} // end of class Game.RandomJumpCamera