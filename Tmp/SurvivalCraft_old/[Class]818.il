.class public auto ansi beforefieldinit Game.RandomJumpCamera
       extends Game.BasePerspectiveCamera
{
  .field private static literal float32 frequencyFactor = float32(0.5)
  .field private class Game.Random m_random
  .field private float32 m_frequency
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.View view) cil managed
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
    IL_0018:  call       instance void Game.BasePerspectiveCamera::.ctor(class Game.View)
    IL_001d:  ret
  } // end of method RandomJumpCamera::.ctor

  .method public hidebysig specialname virtual 
          instance bool  get_UsesMovementControls() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method RandomJumpCamera::get_UsesMovementControls

  .method public hidebysig specialname virtual 
          instance bool  get_IsEntityControlEnabled() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method RandomJumpCamera::get_IsEntityControlEnabled

  .method public hidebysig virtual instance void 
          Activate(class Game.Camera previousCamera) cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewDirection()
    IL_000d:  ldarg.1
    IL_000e:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewUp()
    IL_0013:  call       instance void Game.BasePerspectiveCamera::SetupPerspectiveCamera(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3)
    IL_0018:  ret
  } // end of method RandomJumpCamera::Activate

  .method public hidebysig virtual instance void 
          Update(float32 dt) cil managed
  {
    // 代码大小       414 (0x19e)
    .maxstack  5
    .locals init (class Game.SubsystemPlayers V_0,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             valuetype [Engine]Engine.Vector3 V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Random Game.RandomJumpCamera::m_random
    IL_0006:  ldc.r4     0.0
    IL_000b:  ldc.r4     1.
    IL_0010:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0015:  ldc.r4     0.1
    IL_001a:  ldarg.1
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
    IL_005a:  ldarg.1
    IL_005b:  mul
    IL_005c:  bge.un     IL_011c

    IL_0061:  ldarg.0
    IL_0062:  call       instance class Game.View Game.Camera::get_View()
    IL_0067:  callvirt   instance class Game.SubsystemViews Game.View::get_SubsystemViews()
    IL_006c:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0071:  ldc.i4.1
    IL_0072:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPlayers>(bool)
    IL_0077:  stloc.0
    IL_0078:  ldloc.0
    IL_0079:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> Game.SubsystemPlayers::get_PlayersData()
    IL_007e:  stloc.1
    IL_007f:  ldloca.s   V_1
    IL_0081:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData>::get_Count()
    IL_0086:  ldc.i4.0
    IL_0087:  ble        IL_011c

    IL_008c:  ldloc.0
    IL_008d:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> Game.SubsystemPlayers::get_PlayersData()
    IL_0092:  stloc.1
    IL_0093:  ldloca.s   V_1
    IL_0095:  ldc.i4.0
    IL_0096:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData>::get_Item(int32)
    IL_009b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.PlayerData::get_SpawnPosition()
    IL_00a0:  stloc.2
    IL_00a1:  ldloca.s   V_2
    IL_00a3:  ldflda     float32 [Engine]Engine.Vector3::X
    IL_00a8:  dup
    IL_00a9:  ldind.r4
    IL_00aa:  ldarg.0
    IL_00ab:  ldfld      class Game.Random Game.RandomJumpCamera::m_random
    IL_00b0:  ldc.r4     -150.
    IL_00b5:  ldc.r4     150.
    IL_00ba:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00bf:  add
    IL_00c0:  stind.r4
    IL_00c1:  ldloca.s   V_2
    IL_00c3:  ldarg.0
    IL_00c4:  ldfld      class Game.Random Game.RandomJumpCamera::m_random
    IL_00c9:  ldc.r4     70.
    IL_00ce:  ldc.r4     120.
    IL_00d3:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00d8:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_00dd:  ldloca.s   V_2
    IL_00df:  ldflda     float32 [Engine]Engine.Vector3::Z
    IL_00e4:  dup
    IL_00e5:  ldind.r4
    IL_00e6:  ldarg.0
    IL_00e7:  ldfld      class Game.Random Game.RandomJumpCamera::m_random
    IL_00ec:  ldc.r4     -150.
    IL_00f1:  ldc.r4     150.
    IL_00f6:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00fb:  add
    IL_00fc:  stind.r4
    IL_00fd:  ldarg.0
    IL_00fe:  ldfld      class Game.Random Game.RandomJumpCamera::m_random
    IL_0103:  ldc.r4     1.
    IL_0108:  ldc.i4.0
    IL_0109:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Random::Vector3(float32,
                                                                                        bool)
    IL_010e:  stloc.3
    IL_010f:  ldarg.0
    IL_0110:  ldloc.2
    IL_0111:  ldloc.3
    IL_0112:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0117:  call       instance void Game.BasePerspectiveCamera::SetupPerspectiveCamera(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3)
    IL_011c:  ldarg.0
    IL_011d:  ldfld      class Game.Random Game.RandomJumpCamera::m_random
    IL_0122:  ldc.r4     0.0
    IL_0127:  ldc.r4     1.
    IL_012c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0131:  ldc.r4     0.5
    IL_0136:  ldarg.0
    IL_0137:  ldfld      float32 Game.RandomJumpCamera::m_frequency
    IL_013c:  mul
    IL_013d:  ldarg.1
    IL_013e:  mul
    IL_013f:  bge.un.s   IL_0172

    IL_0141:  ldarg.0
    IL_0142:  call       instance class Game.View Game.Camera::get_View()
    IL_0147:  callvirt   instance class Game.SubsystemViews Game.View::get_SubsystemViews()
    IL_014c:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0151:  ldc.i4.1
    IL_0152:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTimeOfDay>(bool)
    IL_0157:  ldarg.0
    IL_0158:  ldfld      class Game.Random Game.RandomJumpCamera::m_random
    IL_015d:  ldc.r4     0.0
    IL_0162:  ldc.r4     1.
    IL_0167:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_016c:  conv.r8
    IL_016d:  callvirt   instance void Game.SubsystemTimeOfDay::set_TimeOfDayOffset(float64)
    IL_0172:  ldarg.0
    IL_0173:  ldfld      class Game.Random Game.RandomJumpCamera::m_random
    IL_0178:  ldc.r4     0.0
    IL_017d:  ldc.r4     1.
    IL_0182:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0187:  ldc.r4     1.
    IL_018c:  ldarg.1
    IL_018d:  mul
    IL_018e:  ldc.r4     0.5
    IL_0193:  mul
    IL_0194:  bge.un.s   IL_019d

    IL_0196:  ldc.i4.0
    IL_0197:  ldc.i4.0
    IL_0198:  call       void Game.GameManager::SaveProject(bool,
                                                            bool)
    IL_019d:  ret
  } // end of method RandomJumpCamera::Update

  .property instance bool UsesMovementControls()
  {
    .get instance bool Game.RandomJumpCamera::get_UsesMovementControls()
  } // end of property RandomJumpCamera::UsesMovementControls
  .property instance bool IsEntityControlEnabled()
  {
    .get instance bool Game.RandomJumpCamera::get_IsEntityControlEnabled()
  } // end of property RandomJumpCamera::IsEntityControlEnabled
} // end of class Game.RandomJumpCamera