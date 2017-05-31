.class public auto ansi beforefieldinit Game.SubsystemPlayer
       extends [EntitySystem]GameEntitySystem.Subsystem
       implements Game.IUpdateable
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.SubsystemPlayer/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action '<>9__33_12'
    .field public static class [System.Runtime]System.Action '<>9__33_13'
    .field public static class [System.Runtime]System.Func`3<int32,float32,bool> '<>9__41_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.SubsystemPlayer/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.SubsystemPlayer/'<>c' Game.SubsystemPlayer/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance void 
            '<Load>b__33_12'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldstr      "GameMenu"
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Load>b__33_12'

    .method assembly hidebysig instance void 
            '<Load>b__33_13'() cil managed
    {
      // 代码大小       33 (0x21)
      .maxstack  8
      IL_0000:  ldstr      "GameLoading"
      IL_0005:  ldc.i4.2
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  dup
      IL_000c:  ldc.i4.0
      IL_000d:  call       class Game.WorldInfo Game.GameManager::get_WorldInfo()
      IL_0012:  stelem.ref
      IL_0013:  dup
      IL_0014:  ldc.i4.1
      IL_0015:  ldstr      "AdventureRestart"
      IL_001a:  stelem.ref
      IL_001b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0020:  ret
    } // end of method '<>c'::'<Load>b__33_13'

    .method assembly hidebysig instance bool 
            '<CheckIntroSpawnPositionWithChunkContents>b__41_0'(int32 'value',
                                                                float32 distance) cil managed
    {
      // 代码大小       10 (0xa)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_0006:  ldc.i4.0
      IL_0007:  cgt.un
      IL_0009:  ret
    } // end of method '<>c'::'<CheckIntroSpawnPositionWithChunkContents>b__41_0'

  } // end of class '<>c'

  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemEntityFactory m_subsystemEntityFactory
  .field private class Game.SubsystemGui m_subsystemGui
  .field private class Game.SubsystemCamera m_subsystemCamera
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemSky m_subsystemSky
  .field private class Game.StateMachine m_stateMachine
  .field private bool m_introSpawn
  .field private valuetype [System.Runtime]System.Nullable`1<float64> m_playerDeathTime
  .field private bool m_isTerrainReady
  .field private class Game.ComponentPlayer '<ComponentPlayer>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Vector3 '<ProposedSpawnPosition>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float64 '<LastSpawnTime>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private int32 '<SpawnsCount>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance class Game.ComponentPlayer 
          get_ComponentPlayer() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentPlayer Game.SubsystemPlayer::'<ComponentPlayer>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemPlayer::get_ComponentPlayer

  .method private hidebysig specialname instance void 
          set_ComponentPlayer(class Game.ComponentPlayer 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ComponentPlayer Game.SubsystemPlayer::'<ComponentPlayer>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemPlayer::set_ComponentPlayer

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector3 
          get_ProposedSpawnPosition() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.SubsystemPlayer::'<ProposedSpawnPosition>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemPlayer::get_ProposedSpawnPosition

  .method public hidebysig specialname instance void 
          set_ProposedSpawnPosition(valuetype [Engine]Engine.Vector3 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector3 Game.SubsystemPlayer::'<ProposedSpawnPosition>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemPlayer::set_ProposedSpawnPosition

  .method public hidebysig specialname instance float64 
          get_LastSpawnTime() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float64 Game.SubsystemPlayer::'<LastSpawnTime>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemPlayer::get_LastSpawnTime

  .method private hidebysig specialname instance void 
          set_LastSpawnTime(float64 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float64 Game.SubsystemPlayer::'<LastSpawnTime>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemPlayer::set_LastSpawnTime

  .method public hidebysig specialname instance int32 
          get_SpawnsCount() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.SubsystemPlayer::'<SpawnsCount>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemPlayer::get_SpawnsCount

  .method private hidebysig specialname instance void 
          set_SpawnsCount(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 Game.SubsystemPlayer::'<SpawnsCount>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemPlayer::set_SpawnsCount

  .method public hidebysig instance bool 
          IsPlayer(class [EntitySystem]GameEntitySystem.Entity entity) cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_0006:  brfalse.s  IL_0017

    IL_0008:  ldarg.0
    IL_0009:  call       instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_000e:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0013:  ldarg.1
    IL_0014:  ceq
    IL_0016:  ret

    IL_0017:  ldc.i4.0
    IL_0018:  ret
  } // end of method SubsystemPlayer::IsPlayer

  .method public hidebysig specialname instance bool 
          get_IsReadyForPlaying() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.StateMachine Game.SubsystemPlayer::m_stateMachine
    IL_0006:  callvirt   instance string Game.StateMachine::get_CurrentState()
    IL_000b:  ldstr      "Playing"
    IL_0010:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_0015:  ret
  } // end of method SubsystemPlayer::get_IsReadyForPlaying

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemPlayer::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.StateMachine Game.SubsystemPlayer::m_stateMachine
    IL_0006:  callvirt   instance void Game.StateMachine::Update()
    IL_000b:  ret
  } // end of method SubsystemPlayer::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       459 (0x1cb)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_000d:  stfld      class Game.SubsystemTime Game.SubsystemPlayer::m_subsystemTime
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemEntityFactory>(bool)
    IL_001f:  stfld      class Game.SubsystemEntityFactory Game.SubsystemPlayer::m_subsystemEntityFactory
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGui>(bool)
    IL_0031:  stfld      class Game.SubsystemGui Game.SubsystemPlayer::m_subsystemGui
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemCamera>(bool)
    IL_0043:  stfld      class Game.SubsystemCamera Game.SubsystemPlayer::m_subsystemCamera
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0055:  stfld      class Game.SubsystemTerrain Game.SubsystemPlayer::m_subsystemTerrain
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_0067:  stfld      class Game.SubsystemGameInfo Game.SubsystemPlayer::m_subsystemGameInfo
    IL_006c:  ldarg.0
    IL_006d:  ldarg.0
    IL_006e:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0073:  ldc.i4.1
    IL_0074:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemSky>(bool)
    IL_0079:  stfld      class Game.SubsystemSky Game.SubsystemPlayer::m_subsystemSky
    IL_007e:  ldarg.0
    IL_007f:  ldarg.1
    IL_0080:  ldstr      "SpawnPosition"
    IL_0085:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype [Engine]Engine.Vector3>(string)
    IL_008a:  call       instance void Game.SubsystemPlayer::set_ProposedSpawnPosition(valuetype [Engine]Engine.Vector3)
    IL_008f:  ldarg.0
    IL_0090:  ldarg.1
    IL_0091:  ldstr      "LastSpawnTime"
    IL_0096:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float64>(string)
    IL_009b:  call       instance void Game.SubsystemPlayer::set_LastSpawnTime(float64)
    IL_00a0:  ldarg.0
    IL_00a1:  ldarg.1
    IL_00a2:  ldstr      "SpawnsCount"
    IL_00a7:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<int32>(string)
    IL_00ac:  call       instance void Game.SubsystemPlayer::set_SpawnsCount(int32)
    IL_00b1:  ldarg.0
    IL_00b2:  ldfld      class Game.StateMachine Game.SubsystemPlayer::m_stateMachine
    IL_00b7:  ldstr      "FirstUpdate"
    IL_00bc:  ldarg.0
    IL_00bd:  ldftn      instance void Game.SubsystemPlayer::'<Load>b__33_0'()
    IL_00c3:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00c8:  ldarg.0
    IL_00c9:  ldftn      instance void Game.SubsystemPlayer::'<Load>b__33_1'()
    IL_00cf:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00d4:  ldnull
    IL_00d5:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_00da:  ldarg.0
    IL_00db:  ldfld      class Game.StateMachine Game.SubsystemPlayer::m_stateMachine
    IL_00e0:  ldstr      "Spawn"
    IL_00e5:  ldarg.0
    IL_00e6:  ldftn      instance void Game.SubsystemPlayer::'<Load>b__33_2'()
    IL_00ec:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00f1:  ldarg.0
    IL_00f2:  ldftn      instance void Game.SubsystemPlayer::'<Load>b__33_4'()
    IL_00f8:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00fd:  ldnull
    IL_00fe:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_0103:  ldarg.0
    IL_0104:  ldfld      class Game.StateMachine Game.SubsystemPlayer::m_stateMachine
    IL_0109:  ldstr      "WaitForTerrain"
    IL_010e:  ldarg.0
    IL_010f:  ldftn      instance void Game.SubsystemPlayer::'<Load>b__33_5'()
    IL_0115:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_011a:  ldarg.0
    IL_011b:  ldftn      instance void Game.SubsystemPlayer::'<Load>b__33_7'()
    IL_0121:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0126:  ldnull
    IL_0127:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_012c:  ldarg.0
    IL_012d:  ldfld      class Game.StateMachine Game.SubsystemPlayer::m_stateMachine
    IL_0132:  ldstr      "Playing"
    IL_0137:  ldarg.0
    IL_0138:  ldftn      instance void Game.SubsystemPlayer::'<Load>b__33_8'()
    IL_013e:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0143:  ldarg.0
    IL_0144:  ldftn      instance void Game.SubsystemPlayer::'<Load>b__33_9'()
    IL_014a:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_014f:  ldnull
    IL_0150:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_0155:  ldarg.0
    IL_0156:  ldfld      class Game.StateMachine Game.SubsystemPlayer::m_stateMachine
    IL_015b:  ldstr      "PlayerDead"
    IL_0160:  ldarg.0
    IL_0161:  ldftn      instance void Game.SubsystemPlayer::'<Load>b__33_10'()
    IL_0167:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_016c:  ldarg.0
    IL_016d:  ldftn      instance void Game.SubsystemPlayer::'<Load>b__33_11'()
    IL_0173:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0178:  ldnull
    IL_0179:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_017e:  ldarg.0
    IL_017f:  ldfld      class Game.StateMachine Game.SubsystemPlayer::m_stateMachine
    IL_0184:  ldstr      "FirstUpdate"
    IL_0189:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_018e:  ldarg.0
    IL_018f:  call       instance valuetype [Engine]Engine.Vector3 Game.SubsystemPlayer::get_ProposedSpawnPosition()
    IL_0194:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0199:  call       bool [Engine]Engine.Vector3::op_Equality(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_019e:  brfalse.s  IL_01b3

    IL_01a0:  ldarg.0
    IL_01a1:  ldarg.0
    IL_01a2:  call       instance valuetype [Engine]Engine.Vector3 Game.SubsystemPlayer::FindCoarseIntroSpawnPosition()
    IL_01a7:  call       instance void Game.SubsystemPlayer::set_ProposedSpawnPosition(valuetype [Engine]Engine.Vector3)
    IL_01ac:  ldarg.0
    IL_01ad:  ldc.i4.1
    IL_01ae:  stfld      bool Game.SubsystemPlayer::m_introSpawn
    IL_01b3:  ldarg.0
    IL_01b4:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_01b9:  ldc.i4.1
    IL_01ba:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemDrawing>(bool)
    IL_01bf:  ldarg.0
    IL_01c0:  call       instance valuetype [Engine]Engine.Vector3 Game.SubsystemPlayer::get_ProposedSpawnPosition()
    IL_01c5:  callvirt   instance void Game.SubsystemDrawing::set_ViewPosition(valuetype [Engine]Engine.Vector3)
    IL_01ca:  ret
  } // end of method SubsystemPlayer::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       52 (0x34)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "SpawnPosition"
    IL_0006:  ldarg.0
    IL_0007:  call       instance valuetype [Engine]Engine.Vector3 Game.SubsystemPlayer::get_ProposedSpawnPosition()
    IL_000c:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype [Engine]Engine.Vector3>(string,
                                                                                                                                    !!0)
    IL_0011:  ldarg.1
    IL_0012:  ldstr      "LastSpawnTime"
    IL_0017:  ldarg.0
    IL_0018:  call       instance float64 Game.SubsystemPlayer::get_LastSpawnTime()
    IL_001d:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float64>(string,
                                                                                                           !!0)
    IL_0022:  ldarg.1
    IL_0023:  ldstr      "SpawnsCount"
    IL_0028:  ldarg.0
    IL_0029:  call       instance int32 Game.SubsystemPlayer::get_SpawnsCount()
    IL_002e:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<int32>(string,
                                                                                                         !!0)
    IL_0033:  ret
  } // end of method SubsystemPlayer::Save

  .method family hidebysig virtual instance void 
          OnEntityAdded(class [EntitySystem]GameEntitySystem.Entity entity) cil managed
  {
    // 代码大小       88 (0x58)
    .maxstack  3
    .locals init (class Game.ComponentPlayer V_0)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPlayer>()
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  brfalse.s  IL_0057

    IL_000a:  ldarg.0
    IL_000b:  call       instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_0010:  brfalse.s  IL_001d

    IL_0012:  ldstr      "More than 1 player added to world."
    IL_0017:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_001c:  throw

    IL_001d:  ldarg.0
    IL_001e:  ldloc.0
    IL_001f:  call       instance void Game.SubsystemPlayer::set_ComponentPlayer(class Game.ComponentPlayer)
    IL_0024:  ldarg.0
    IL_0025:  ldfld      class Game.SubsystemCamera Game.SubsystemPlayer::m_subsystemCamera
    IL_002a:  ldarg.0
    IL_002b:  ldfld      class Game.SubsystemCamera Game.SubsystemPlayer::m_subsystemCamera
    IL_0030:  ldc.i4.1
    IL_0031:  callvirt   instance !!0 Game.SubsystemCamera::FindCamera<class Game.FppCamera>(bool)
    IL_0036:  callvirt   instance void Game.SubsystemCamera::set_ActiveCamera(class Game.Camera)
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemCamera Game.SubsystemPlayer::m_subsystemCamera
    IL_0041:  ldarg.0
    IL_0042:  call       instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_0047:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_004c:  ldc.i4.1
    IL_004d:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentBody>(bool)
    IL_0052:  callvirt   instance void Game.SubsystemCamera::set_Target(class Game.ComponentBody)
    IL_0057:  ret
  } // end of method SubsystemPlayer::OnEntityAdded

  .method family hidebysig virtual instance void 
          OnEntityRemoved(class [EntitySystem]GameEntitySystem.Entity entity) cil managed
  {
    // 代码大小       58 (0x3a)
    .maxstack  2
    .locals init (class Game.ComponentPlayer V_0)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPlayer>()
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  brfalse.s  IL_0039

    IL_000a:  ldarg.0
    IL_000b:  call       instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_0010:  ldloc.0
    IL_0011:  bne.un.s   IL_0039

    IL_0013:  ldarg.0
    IL_0014:  call       instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_0019:  brtrue.s   IL_0026

    IL_001b:  ldstr      "Nonexistent player removed from world."
    IL_0020:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0025:  throw

    IL_0026:  ldarg.0
    IL_0027:  ldnull
    IL_0028:  call       instance void Game.SubsystemPlayer::set_ComponentPlayer(class Game.ComponentPlayer)
    IL_002d:  ldarg.0
    IL_002e:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.SubsystemPlayer::m_playerDeathTime
    IL_0033:  initobj    valuetype [System.Runtime]System.Nullable`1<float64>
    IL_0039:  ret
  } // end of method SubsystemPlayer::OnEntityRemoved

  .method private hidebysig instance valuetype [Engine]Engine.Vector3 
          FindCoarseIntroSpawnPosition() cil managed
  {
    // 代码大小       152 (0x98)
    .maxstack  4
    .locals init (class Game.Random V_0,
             class Game.ITerrainContentsGenerator V_1,
             float32 V_2,
             float32 V_3,
             int32 V_4)
    IL_0000:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0005:  pop
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.SubsystemGameInfo Game.SubsystemPlayer::m_subsystemGameInfo
    IL_000c:  callvirt   instance int32 Game.SubsystemGameInfo::get_WorldSeed()
    IL_0011:  newobj     instance void Game.Random::.ctor(int32)
    IL_0016:  stloc.0
    IL_0017:  ldarg.0
    IL_0018:  ldfld      class Game.SubsystemTerrain Game.SubsystemPlayer::m_subsystemTerrain
    IL_001d:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_0022:  stloc.1
    IL_0023:  ldc.r4     0.0
    IL_0028:  stloc.2
    IL_0029:  ldc.r4     0.0
    IL_002e:  stloc.3
    IL_002f:  ldc.i4.0
    IL_0030:  stloc.s    V_4
    IL_0032:  br.s       IL_007c

    IL_0034:  ldloc.1
    IL_0035:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.ITerrainContentsGenerator::get_OceanCorner()
    IL_003a:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_003f:  ldloc.0
    IL_0040:  ldc.r4     1000.
    IL_0045:  ldc.r4     4000.
    IL_004a:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_004f:  add
    IL_0050:  stloc.3
    IL_0051:  ldloc.1
    IL_0052:  ldloc.3
    IL_0053:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreX(float32)
    IL_0058:  ldloc.0
    IL_0059:  ldc.r4     4.
    IL_005e:  ldc.r4     8.
    IL_0063:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0068:  add
    IL_0069:  stloc.2
    IL_006a:  ldarg.0
    IL_006b:  ldloc.2
    IL_006c:  conv.i4
    IL_006d:  ldloc.3
    IL_006e:  conv.i4
    IL_006f:  call       instance bool Game.SubsystemPlayer::CheckIntroSpawnPositionWithoutChunkContents(int32,
                                                                                                         int32)
    IL_0074:  brtrue.s   IL_0085

    IL_0076:  ldloc.s    V_4
    IL_0078:  ldc.i4.1
    IL_0079:  add
    IL_007a:  stloc.s    V_4
    IL_007c:  ldloc.s    V_4
    IL_007e:  ldc.i4     0x7d0
    IL_0083:  blt.s      IL_0034

    IL_0085:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_008a:  pop
    IL_008b:  ldloc.2
    IL_008c:  ldc.r4     128.
    IL_0091:  ldloc.3
    IL_0092:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0097:  ret
  } // end of method SubsystemPlayer::FindCoarseIntroSpawnPosition

  .method private hidebysig instance valuetype [Engine]Engine.Vector3 
          FindIntroSpawnPosition(valuetype [Engine]Engine.Vector3 spawnPosition) cil managed
  {
    // 代码大小       243 (0xf3)
    .maxstack  4
    .locals init (class Game.Random V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             int32 V_2,
             bool V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemGameInfo Game.SubsystemPlayer::m_subsystemGameInfo
    IL_0006:  callvirt   instance int32 Game.SubsystemGameInfo::get_WorldSeed()
    IL_000b:  newobj     instance void Game.Random::.ctor(int32)
    IL_0010:  stloc.0
    IL_0011:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0016:  pop
    IL_0017:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_001c:  stloc.1
    IL_001d:  ldc.i4.0
    IL_001e:  stloc.2
    IL_001f:  ldc.i4.0
    IL_0020:  stloc.3
    IL_0021:  ldc.i4.0
    IL_0022:  stloc.s    V_4
    IL_0024:  br         IL_00ae

    IL_0029:  ldloc.s    V_4
    IL_002b:  ldloc.s    V_4
    IL_002d:  mul
    IL_002e:  ldc.i4.2
    IL_002f:  div
    IL_0030:  ldc.i4.s   10
    IL_0032:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0037:  stloc.s    V_5
    IL_0039:  ldc.i4.0
    IL_003a:  stloc.s    V_6
    IL_003c:  br.s       IL_00a2

    IL_003e:  ldloc.2
    IL_003f:  ldc.i4.1
    IL_0040:  add
    IL_0041:  stloc.2
    IL_0042:  ldarg.1
    IL_0043:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0048:  conv.i4
    IL_0049:  ldloc.0
    IL_004a:  ldloc.s    V_4
    IL_004c:  neg
    IL_004d:  ldloc.s    V_4
    IL_004f:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0054:  add
    IL_0055:  stloc.s    V_7
    IL_0057:  ldarg.1
    IL_0058:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_005d:  conv.i4
    IL_005e:  ldloc.0
    IL_005f:  ldloc.s    V_4
    IL_0061:  neg
    IL_0062:  ldloc.s    V_4
    IL_0064:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0069:  add
    IL_006a:  stloc.s    V_8
    IL_006c:  ldarg.0
    IL_006d:  ldloc.s    V_7
    IL_006f:  ldloc.s    V_8
    IL_0071:  call       instance bool Game.SubsystemPlayer::CheckIntroSpawnPositionWithChunkContents(int32,
                                                                                                      int32)
    IL_0076:  brfalse.s  IL_009c

    IL_0078:  ldc.i4.1
    IL_0079:  stloc.3
    IL_007a:  ldloca.s   V_1
    IL_007c:  ldloc.s    V_7
    IL_007e:  conv.r4
    IL_007f:  ldc.r4     0.5
    IL_0084:  add
    IL_0085:  stfld      float32 [Engine]Engine.Vector3::X
    IL_008a:  ldloca.s   V_1
    IL_008c:  ldloc.s    V_8
    IL_008e:  conv.r4
    IL_008f:  ldc.r4     0.5
    IL_0094:  add
    IL_0095:  stfld      float32 [Engine]Engine.Vector3::Z
    IL_009a:  br.s       IL_00a8

    IL_009c:  ldloc.s    V_6
    IL_009e:  ldc.i4.1
    IL_009f:  add
    IL_00a0:  stloc.s    V_6
    IL_00a2:  ldloc.s    V_6
    IL_00a4:  ldloc.s    V_5
    IL_00a6:  blt.s      IL_003e

    IL_00a8:  ldloc.s    V_4
    IL_00aa:  ldc.i4.2
    IL_00ab:  add
    IL_00ac:  stloc.s    V_4
    IL_00ae:  ldloc.3
    IL_00af:  brtrue.s   IL_00ba

    IL_00b1:  ldloc.s    V_4
    IL_00b3:  ldc.i4.s   40
    IL_00b5:  ble        IL_0029

    IL_00ba:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_00bf:  pop
    IL_00c0:  ldloc.3
    IL_00c1:  brtrue.s   IL_00c5

    IL_00c3:  ldarg.1
    IL_00c4:  stloc.1
    IL_00c5:  ldloca.s   V_1
    IL_00c7:  ldarg.0
    IL_00c8:  ldfld      class Game.SubsystemTerrain Game.SubsystemPlayer::m_subsystemTerrain
    IL_00cd:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00d2:  ldloc.1
    IL_00d3:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00d8:  conv.i4
    IL_00d9:  ldloc.1
    IL_00da:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00df:  conv.i4
    IL_00e0:  callvirt   instance int32 Game.TerrainData::CalculateTopmostCellHeight(int32,
                                                                                     int32)
    IL_00e5:  conv.r4
    IL_00e6:  ldc.r4     1.01
    IL_00eb:  add
    IL_00ec:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_00f1:  ldloc.1
    IL_00f2:  ret
  } // end of method SubsystemPlayer::FindIntroSpawnPosition

  .method private hidebysig instance valuetype [Engine]Engine.Vector3 
          FindRespawnPosition(valuetype [Engine]Engine.Vector3 spawnPosition) cil managed
  {
    // 代码大小       247 (0xf7)
    .maxstack  4
    .locals init (class Game.Random V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             int32 V_2,
             bool V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemGameInfo Game.SubsystemPlayer::m_subsystemGameInfo
    IL_0006:  callvirt   instance int32 Game.SubsystemGameInfo::get_WorldSeed()
    IL_000b:  newobj     instance void Game.Random::.ctor(int32)
    IL_0010:  stloc.0
    IL_0011:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0016:  pop
    IL_0017:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_001c:  stloc.1
    IL_001d:  ldc.i4.0
    IL_001e:  stloc.2
    IL_001f:  ldc.i4.0
    IL_0020:  stloc.3
    IL_0021:  ldc.i4.0
    IL_0022:  stloc.s    V_4
    IL_0024:  br         IL_00d8

    IL_0029:  ldloc.s    V_4
    IL_002b:  ldloc.s    V_4
    IL_002d:  mul
    IL_002e:  ldloc.s    V_4
    IL_0030:  mul
    IL_0031:  ldc.i4.2
    IL_0032:  div
    IL_0033:  ldc.i4.s   10
    IL_0035:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_003a:  stloc.s    V_5
    IL_003c:  ldc.i4.0
    IL_003d:  stloc.s    V_6
    IL_003f:  br         IL_00c9

    IL_0044:  ldloc.2
    IL_0045:  ldc.i4.1
    IL_0046:  add
    IL_0047:  stloc.2
    IL_0048:  ldarg.1
    IL_0049:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_004e:  conv.i4
    IL_004f:  ldloc.0
    IL_0050:  ldloc.s    V_4
    IL_0052:  neg
    IL_0053:  ldloc.s    V_4
    IL_0055:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_005a:  add
    IL_005b:  stloc.s    V_7
    IL_005d:  ldarg.1
    IL_005e:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0063:  conv.i4
    IL_0064:  ldloc.0
    IL_0065:  ldloc.s    V_4
    IL_0067:  neg
    IL_0068:  ldloc.s    V_4
    IL_006a:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_006f:  add
    IL_0070:  stloc.s    V_8
    IL_0072:  ldarg.1
    IL_0073:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0078:  conv.i4
    IL_0079:  ldloc.0
    IL_007a:  ldloc.s    V_4
    IL_007c:  neg
    IL_007d:  ldloc.s    V_4
    IL_007f:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0084:  add
    IL_0085:  stloc.s    V_9
    IL_0087:  ldarg.0
    IL_0088:  ldloc.s    V_7
    IL_008a:  ldloc.s    V_8
    IL_008c:  ldloc.s    V_9
    IL_008e:  call       instance bool Game.SubsystemPlayer::CheckRespawnPosition(int32,
                                                                                  int32,
                                                                                  int32)
    IL_0093:  brfalse.s  IL_00c3

    IL_0095:  ldc.i4.1
    IL_0096:  stloc.3
    IL_0097:  ldloca.s   V_1
    IL_0099:  ldloc.s    V_7
    IL_009b:  conv.r4
    IL_009c:  ldc.r4     0.5
    IL_00a1:  add
    IL_00a2:  stfld      float32 [Engine]Engine.Vector3::X
    IL_00a7:  ldloca.s   V_1
    IL_00a9:  ldloc.s    V_8
    IL_00ab:  conv.r4
    IL_00ac:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_00b1:  ldloca.s   V_1
    IL_00b3:  ldloc.s    V_9
    IL_00b5:  conv.r4
    IL_00b6:  ldc.r4     0.5
    IL_00bb:  add
    IL_00bc:  stfld      float32 [Engine]Engine.Vector3::Z
    IL_00c1:  br.s       IL_00d2

    IL_00c3:  ldloc.s    V_6
    IL_00c5:  ldc.i4.1
    IL_00c6:  add
    IL_00c7:  stloc.s    V_6
    IL_00c9:  ldloc.s    V_6
    IL_00cb:  ldloc.s    V_5
    IL_00cd:  blt        IL_0044

    IL_00d2:  ldloc.s    V_4
    IL_00d4:  ldc.i4.2
    IL_00d5:  add
    IL_00d6:  stloc.s    V_4
    IL_00d8:  ldloc.3
    IL_00d9:  brtrue.s   IL_00e4

    IL_00db:  ldloc.s    V_4
    IL_00dd:  ldc.i4.s   10
    IL_00df:  ble        IL_0029

    IL_00e4:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_00e9:  pop
    IL_00ea:  ldloc.3
    IL_00eb:  brtrue.s   IL_00f5

    IL_00ed:  ldarg.0
    IL_00ee:  ldarg.1
    IL_00ef:  call       instance valuetype [Engine]Engine.Vector3 Game.SubsystemPlayer::FindIntroSpawnPosition(valuetype [Engine]Engine.Vector3)
    IL_00f4:  stloc.1
    IL_00f5:  ldloc.1
    IL_00f6:  ret
  } // end of method SubsystemPlayer::FindRespawnPosition

  .method private hidebysig instance bool 
          CheckIntroSpawnPositionWithoutChunkContents(int32 x,
                                                      int32 z) cil managed
  {
    // 代码大小       235 (0xeb)
    .maxstack  5
    .locals init (class Game.ITerrainContentsGenerator V_0,
             float32 V_1,
             float32 V_2,
             int32 V_3,
             int32 V_4,
             float32 V_5,
             float32 V_6,
             float32 V_7,
             float32 V_8,
             float32 V_9,
             float32 V_10,
             float32 V_11)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemPlayer::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldarg.1
    IL_000e:  conv.r4
    IL_000f:  ldarg.2
    IL_0010:  conv.r4
    IL_0011:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_0016:  stloc.1
    IL_0017:  ldloc.0
    IL_0018:  ldarg.1
    IL_0019:  conv.r4
    IL_001a:  ldarg.2
    IL_001b:  conv.r4
    IL_001c:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateMountainRangeFactor(float32,
                                                                                                       float32)
    IL_0021:  stloc.2
    IL_0022:  ldloc.0
    IL_0023:  ldarg.1
    IL_0024:  conv.r4
    IL_0025:  ldarg.2
    IL_0026:  conv.r4
    IL_0027:  callvirt   instance int32 Game.ITerrainContentsGenerator::CalculateHumidity(float32,
                                                                                          float32)
    IL_002c:  stloc.3
    IL_002d:  ldloc.0
    IL_002e:  ldarg.1
    IL_002f:  conv.r4
    IL_0030:  ldarg.2
    IL_0031:  conv.r4
    IL_0032:  callvirt   instance int32 Game.ITerrainContentsGenerator::CalculateTemperature(float32,
                                                                                             float32)
    IL_0037:  stloc.s    V_4
    IL_0039:  ldloc.1
    IL_003a:  ldc.r4     0.0
    IL_003f:  blt.s      IL_005b

    IL_0041:  ldloc.1
    IL_0042:  ldc.r4     20.
    IL_0047:  bgt.s      IL_005b

    IL_0049:  ldloc.2
    IL_004a:  ldc.r4     0.66000003
    IL_004f:  bgt.s      IL_005b

    IL_0051:  ldloc.3
    IL_0052:  ldc.i4.8
    IL_0053:  blt.s      IL_005b

    IL_0055:  ldloc.s    V_4
    IL_0057:  ldc.i4.s   10
    IL_0059:  bge.s      IL_005d

    IL_005b:  ldc.i4.0
    IL_005c:  ret

    IL_005d:  ldloc.0
    IL_005e:  ldarg.1
    IL_005f:  conv.r4
    IL_0060:  ldarg.2
    IL_0061:  conv.r4
    IL_0062:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateHeight(float32,
                                                                                          float32)
    IL_0067:  stloc.s    V_5
    IL_0069:  ldloc.0
    IL_006a:  ldarg.1
    IL_006b:  ldc.i4.5
    IL_006c:  sub
    IL_006d:  conv.r4
    IL_006e:  ldarg.2
    IL_006f:  ldc.i4.5
    IL_0070:  sub
    IL_0071:  conv.r4
    IL_0072:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateHeight(float32,
                                                                                          float32)
    IL_0077:  stloc.s    V_6
    IL_0079:  ldloc.0
    IL_007a:  ldarg.1
    IL_007b:  ldc.i4.5
    IL_007c:  sub
    IL_007d:  conv.r4
    IL_007e:  ldarg.2
    IL_007f:  ldc.i4.5
    IL_0080:  add
    IL_0081:  conv.r4
    IL_0082:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateHeight(float32,
                                                                                          float32)
    IL_0087:  stloc.s    V_7
    IL_0089:  ldloc.0
    IL_008a:  ldarg.1
    IL_008b:  ldc.i4.5
    IL_008c:  add
    IL_008d:  conv.r4
    IL_008e:  ldarg.2
    IL_008f:  ldc.i4.5
    IL_0090:  sub
    IL_0091:  conv.r4
    IL_0092:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateHeight(float32,
                                                                                          float32)
    IL_0097:  stloc.s    V_8
    IL_0099:  ldloc.0
    IL_009a:  ldarg.1
    IL_009b:  ldc.i4.5
    IL_009c:  add
    IL_009d:  conv.r4
    IL_009e:  ldarg.2
    IL_009f:  ldc.i4.5
    IL_00a0:  add
    IL_00a1:  conv.r4
    IL_00a2:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateHeight(float32,
                                                                                          float32)
    IL_00a7:  stloc.s    V_9
    IL_00a9:  ldloc.s    V_5
    IL_00ab:  ldloc.s    V_6
    IL_00ad:  ldloc.s    V_7
    IL_00af:  ldloc.s    V_8
    IL_00b1:  ldloc.s    V_9
    IL_00b3:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_00b8:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_00bd:  stloc.s    V_10
    IL_00bf:  ldloc.s    V_5
    IL_00c1:  ldloc.s    V_6
    IL_00c3:  ldloc.s    V_7
    IL_00c5:  ldloc.s    V_8
    IL_00c7:  ldloc.s    V_9
    IL_00c9:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_00ce:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_00d3:  stloc.s    V_11
    IL_00d5:  ldloc.s    V_10
    IL_00d7:  ldc.r4     64.
    IL_00dc:  blt.s      IL_00e7

    IL_00de:  ldloc.s    V_11
    IL_00e0:  ldc.r4     75.
    IL_00e5:  ble.un.s   IL_00e9

    IL_00e7:  ldc.i4.0
    IL_00e8:  ret

    IL_00e9:  ldc.i4.1
    IL_00ea:  ret
  } // end of method SubsystemPlayer::CheckIntroSpawnPositionWithoutChunkContents

  .method private hidebysig instance bool 
          CheckIntroSpawnPositionWithChunkContents(int32 x,
                                                   int32 z) cil managed
  {
    // 代码大小       412 (0x19c)
    .maxstack  7
    .locals init (int32 V_0,
             int32 V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             valuetype [Engine]Engine.Vector3 V_7,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_8,
             valuetype Game.CellFace V_9,
             int32 V_10)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemPlayer::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  ldarg.1
    IL_000c:  ldarg.2
    IL_000d:  callvirt   instance int32 Game.TerrainData::CalculateTopmostCellHeight(int32,
                                                                                     int32)
    IL_0012:  stloc.0
    IL_0013:  ldloc.0
    IL_0014:  ldc.i4.s   64
    IL_0016:  blt.s      IL_001d

    IL_0018:  ldloc.0
    IL_0019:  ldc.i4.s   85
    IL_001b:  ble.s      IL_001f

    IL_001d:  ldc.i4.0
    IL_001e:  ret

    IL_001f:  ldarg.0
    IL_0020:  ldfld      class Game.SubsystemTerrain Game.SubsystemPlayer::m_subsystemTerrain
    IL_0025:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_002a:  ldarg.1
    IL_002b:  ldarg.2
    IL_002c:  callvirt   instance bool Game.TerrainData::IsShaftValid(int32,
                                                                      int32)
    IL_0031:  brfalse.s  IL_004a

    IL_0033:  ldarg.0
    IL_0034:  ldfld      class Game.SubsystemTerrain Game.SubsystemPlayer::m_subsystemTerrain
    IL_0039:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_003e:  ldarg.1
    IL_003f:  ldarg.2
    IL_0040:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_0045:  ldc.i4.8
    IL_0046:  bge.s      IL_004a

    IL_0048:  ldc.i4.0
    IL_0049:  ret

    IL_004a:  ldarg.0
    IL_004b:  ldfld      class Game.SubsystemTerrain Game.SubsystemPlayer::m_subsystemTerrain
    IL_0050:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0055:  ldarg.1
    IL_0056:  ldloc.0
    IL_0057:  ldarg.2
    IL_0058:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_005d:  stloc.1
    IL_005e:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0063:  ldloc.1
    IL_0064:  ldelem.ref
    IL_0065:  ldfld      bool Game.Block::IsTransparent
    IL_006a:  brfalse.s  IL_006e

    IL_006c:  ldc.i4.0
    IL_006d:  ret

    IL_006e:  ldarg.1
    IL_006f:  ldc.i4.1
    IL_0070:  sub
    IL_0071:  stloc.3
    IL_0072:  br.s       IL_00a6

    IL_0074:  ldarg.2
    IL_0075:  ldc.i4.1
    IL_0076:  sub
    IL_0077:  stloc.s    V_4
    IL_0079:  br.s       IL_009b

    IL_007b:  ldarg.0
    IL_007c:  ldfld      class Game.SubsystemTerrain Game.SubsystemPlayer::m_subsystemTerrain
    IL_0081:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0086:  ldloc.3
    IL_0087:  ldloc.0
    IL_0088:  ldc.i4.2
    IL_0089:  add
    IL_008a:  ldloc.s    V_4
    IL_008c:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_0091:  brfalse.s  IL_0095

    IL_0093:  ldc.i4.0
    IL_0094:  ret

    IL_0095:  ldloc.s    V_4
    IL_0097:  ldc.i4.1
    IL_0098:  add
    IL_0099:  stloc.s    V_4
    IL_009b:  ldloc.s    V_4
    IL_009d:  ldarg.2
    IL_009e:  ldc.i4.1
    IL_009f:  add
    IL_00a0:  ble.s      IL_007b

    IL_00a2:  ldloc.3
    IL_00a3:  ldc.i4.1
    IL_00a4:  add
    IL_00a5:  stloc.3
    IL_00a6:  ldloc.3
    IL_00a7:  ldarg.1
    IL_00a8:  ldc.i4.1
    IL_00a9:  add
    IL_00aa:  ble.s      IL_0074

    IL_00ac:  ldloca.s   V_2
    IL_00ae:  ldarg.1
    IL_00af:  conv.r4
    IL_00b0:  ldloc.0
    IL_00b1:  conv.r4
    IL_00b2:  ldc.r4     1.5
    IL_00b7:  add
    IL_00b8:  ldarg.2
    IL_00b9:  conv.r4
    IL_00ba:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00bf:  ldc.i4.s   -2
    IL_00c1:  stloc.s    V_5
    IL_00c3:  br         IL_0192

    IL_00c8:  ldc.i4.m1
    IL_00c9:  stloc.s    V_6
    IL_00cb:  br         IL_0184

    IL_00d0:  ldloc.2
    IL_00d1:  ldc.r4     30.
    IL_00d6:  ldc.r4     -1.
    IL_00db:  ldc.r4     0.2
    IL_00e0:  ldloc.s    V_6
    IL_00e2:  conv.r4
    IL_00e3:  mul
    IL_00e4:  ldc.r4     0.2
    IL_00e9:  ldloc.s    V_5
    IL_00eb:  conv.r4
    IL_00ec:  mul
    IL_00ed:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00f2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_00f7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00fc:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0101:  stloc.s    V_7
    IL_0103:  ldarg.0
    IL_0104:  ldfld      class Game.SubsystemTerrain Game.SubsystemPlayer::m_subsystemTerrain
    IL_0109:  ldloc.2
    IL_010a:  ldloc.s    V_7
    IL_010c:  ldc.i4.0
    IL_010d:  ldc.i4.1
    IL_010e:  ldsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.SubsystemPlayer/'<>c'::'<>9__41_0'
    IL_0113:  dup
    IL_0114:  brtrue.s   IL_012d

    IL_0116:  pop
    IL_0117:  ldsfld     class Game.SubsystemPlayer/'<>c' Game.SubsystemPlayer/'<>c'::'<>9'
    IL_011c:  ldftn      instance bool Game.SubsystemPlayer/'<>c'::'<CheckIntroSpawnPositionWithChunkContents>b__41_0'(int32,
                                                                                                                       float32)
    IL_0122:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                      native int)
    IL_0127:  dup
    IL_0128:  stsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.SubsystemPlayer/'<>c'::'<>9__41_0'
    IL_012d:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                                                  bool,
                                                                                                                                                  bool,
                                                                                                                                                  class [System.Runtime]System.Func`3<int32,float32,bool>)
    IL_0132:  stloc.s    V_8
    IL_0134:  ldloca.s   V_8
    IL_0136:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_013b:  brfalse.s  IL_017e

    IL_013d:  ldloca.s   V_8
    IL_013f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0144:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0149:  stloc.s    V_9
    IL_014b:  ldarg.0
    IL_014c:  ldfld      class Game.SubsystemTerrain Game.SubsystemPlayer::m_subsystemTerrain
    IL_0151:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0156:  ldloc.s    V_9
    IL_0158:  ldfld      int32 Game.CellFace::X
    IL_015d:  ldloc.s    V_9
    IL_015f:  ldfld      int32 Game.CellFace::Y
    IL_0164:  ldloc.s    V_9
    IL_0166:  ldfld      int32 Game.CellFace::Z
    IL_016b:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_0170:  stloc.s    V_10
    IL_0172:  ldloc.s    V_10
    IL_0174:  ldc.i4.s   18
    IL_0176:  beq.s      IL_017e

    IL_0178:  ldloc.s    V_10
    IL_017a:  brfalse.s  IL_017e

    IL_017c:  ldc.i4.0
    IL_017d:  ret

    IL_017e:  ldloc.s    V_6
    IL_0180:  ldc.i4.1
    IL_0181:  add
    IL_0182:  stloc.s    V_6
    IL_0184:  ldloc.s    V_6
    IL_0186:  ldc.i4.1
    IL_0187:  ble        IL_00d0

    IL_018c:  ldloc.s    V_5
    IL_018e:  ldc.i4.1
    IL_018f:  add
    IL_0190:  stloc.s    V_5
    IL_0192:  ldloc.s    V_5
    IL_0194:  ldc.i4.2
    IL_0195:  ble        IL_00c8

    IL_019a:  ldc.i4.1
    IL_019b:  ret
  } // end of method SubsystemPlayer::CheckIntroSpawnPositionWithChunkContents

  .method private hidebysig instance bool 
          CheckRespawnPosition(int32 x,
                               int32 y,
                               int32 z) cil managed
  {
    // 代码大小       129 (0x81)
    .maxstack  5
    .locals init (class Game.Block V_0,
             class Game.Block V_1,
             class Game.Block V_2)
    IL_0000:  ldarg.2
    IL_0001:  ldc.i4.1
    IL_0002:  blt.s      IL_0009

    IL_0004:  ldarg.2
    IL_0005:  ldc.i4.s   127
    IL_0007:  blt.s      IL_000b

    IL_0009:  ldc.i4.0
    IL_000a:  ret

    IL_000b:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.SubsystemTerrain Game.SubsystemPlayer::m_subsystemTerrain
    IL_0016:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_001b:  ldarg.1
    IL_001c:  ldarg.2
    IL_001d:  ldc.i4.1
    IL_001e:  sub
    IL_001f:  ldarg.3
    IL_0020:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_0025:  ldelem.ref
    IL_0026:  stloc.0
    IL_0027:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_002c:  ldarg.0
    IL_002d:  ldfld      class Game.SubsystemTerrain Game.SubsystemPlayer::m_subsystemTerrain
    IL_0032:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0037:  ldarg.1
    IL_0038:  ldarg.2
    IL_0039:  ldarg.3
    IL_003a:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_003f:  ldelem.ref
    IL_0040:  stloc.1
    IL_0041:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0046:  ldarg.0
    IL_0047:  ldfld      class Game.SubsystemTerrain Game.SubsystemPlayer::m_subsystemTerrain
    IL_004c:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0051:  ldarg.1
    IL_0052:  ldarg.2
    IL_0053:  ldc.i4.1
    IL_0054:  add
    IL_0055:  ldarg.3
    IL_0056:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_005b:  ldelem.ref
    IL_005c:  stloc.2
    IL_005d:  ldloc.0
    IL_005e:  ldfld      bool Game.Block::IsTransparent
    IL_0063:  brtrue.s   IL_007d

    IL_0065:  ldloc.0
    IL_0066:  ldfld      bool Game.Block::IsCollidable
    IL_006b:  brfalse.s  IL_007d

    IL_006d:  ldloc.1
    IL_006e:  ldfld      bool Game.Block::IsCollidable
    IL_0073:  brtrue.s   IL_007d

    IL_0075:  ldloc.2
    IL_0076:  ldfld      bool Game.Block::IsCollidable
    IL_007b:  brfalse.s  IL_007f

    IL_007d:  ldc.i4.0
    IL_007e:  ret

    IL_007f:  ldc.i4.1
    IL_0080:  ret
  } // end of method SubsystemPlayer::CheckRespawnPosition

  .method private hidebysig instance bool 
          CheckIsPointInWater(valuetype [Engine]Engine.Point3 p) cil managed
  {
    // 代码大小       134 (0x86)
    .maxstack  4
    .locals init (bool V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             class Game.Block V_5)
    IL_0000:  ldc.i4.1
    IL_0001:  stloc.0
    IL_0002:  ldarg.1
    IL_0003:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0008:  ldc.i4.1
    IL_0009:  sub
    IL_000a:  stloc.1
    IL_000b:  br.s       IL_0079

    IL_000d:  ldarg.1
    IL_000e:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0013:  ldc.i4.1
    IL_0014:  sub
    IL_0015:  stloc.2
    IL_0016:  br.s       IL_006a

    IL_0018:  ldarg.1
    IL_0019:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_001e:  stloc.3
    IL_001f:  br.s       IL_0062

    IL_0021:  ldarg.0
    IL_0022:  ldfld      class Game.SubsystemTerrain Game.SubsystemPlayer::m_subsystemTerrain
    IL_0027:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_002c:  ldarg.1
    IL_002d:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0032:  ldloc.3
    IL_0033:  ldarg.1
    IL_0034:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0039:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_003e:  stloc.s    V_4
    IL_0040:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0045:  ldloc.s    V_4
    IL_0047:  ldelem.ref
    IL_0048:  stloc.s    V_5
    IL_004a:  ldloc.s    V_5
    IL_004c:  ldfld      bool Game.Block::IsCollidable
    IL_0051:  brfalse.s  IL_0055

    IL_0053:  ldc.i4.0
    IL_0054:  ret

    IL_0055:  ldloc.s    V_5
    IL_0057:  isinst     Game.WaterBlock
    IL_005c:  brtrue.s   IL_0066

    IL_005e:  ldloc.3
    IL_005f:  ldc.i4.1
    IL_0060:  sub
    IL_0061:  stloc.3
    IL_0062:  ldloc.3
    IL_0063:  ldc.i4.0
    IL_0064:  bgt.s      IL_0021

    IL_0066:  ldloc.2
    IL_0067:  ldc.i4.1
    IL_0068:  add
    IL_0069:  stloc.2
    IL_006a:  ldloc.2
    IL_006b:  ldarg.1
    IL_006c:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0071:  ldc.i4.1
    IL_0072:  add
    IL_0073:  blt.s      IL_0018

    IL_0075:  ldloc.1
    IL_0076:  ldc.i4.1
    IL_0077:  add
    IL_0078:  stloc.1
    IL_0079:  ldloc.1
    IL_007a:  ldarg.1
    IL_007b:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0080:  ldc.i4.1
    IL_0081:  add
    IL_0082:  blt.s      IL_000d

    IL_0084:  ldloc.0
    IL_0085:  ret
  } // end of method SubsystemPlayer::CheckIsPointInWater

  .method private hidebysig instance void 
          SpawnPlayer(valuetype [Engine]Engine.Vector3 position,
                      bool respawn) cil managed
  {
    // 代码大小       292 (0x124)
    .maxstack  4
    .locals init (class Game.ComponentMount V_0,
             string V_1,
             class [EntitySystem]GameEntitySystem.Entity V_2,
             class [EntitySystem]GameEntitySystem.Entity V_3,
             int32 V_4)
    IL_0000:  ldnull
    IL_0001:  stloc.0
    IL_0002:  ldarg.2
    IL_0003:  brtrue     IL_0099

    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_000f:  conv.i4
    IL_0010:  ldarg.1
    IL_0011:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0016:  conv.i4
    IL_0017:  ldarg.1
    IL_0018:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_001d:  conv.i4
    IL_001e:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0023:  call       instance bool Game.SubsystemPlayer::CheckIsPointInWater(valuetype [Engine]Engine.Point3)
    IL_0028:  brfalse.s  IL_0099

    IL_002a:  ldarg.0
    IL_002b:  ldfld      class Game.SubsystemEntityFactory Game.SubsystemPlayer::m_subsystemEntityFactory
    IL_0030:  ldstr      "Boat"
    IL_0035:  ldc.i4.1
    IL_0036:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity Game.SubsystemEntityFactory::CreateEntity(string,
                                                                                                                        bool)
    IL_003b:  stloc.3
    IL_003c:  ldloc.3
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentBody>(bool)
    IL_0043:  ldarg.1
    IL_0044:  callvirt   instance void Game.ComponentFrame::set_Position(valuetype [Engine]Engine.Vector3)
    IL_0049:  ldloc.3
    IL_004a:  ldc.i4.1
    IL_004b:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentBody>(bool)
    IL_0050:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0055:  ldc.r4     45.
    IL_005a:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_005f:  call       valuetype [Engine]Engine.Quaternion [Engine]Engine.Quaternion::CreateFromAxisAngle(valuetype [Engine]Engine.Vector3,
                                                                                                            float32)
    IL_0064:  callvirt   instance void Game.ComponentFrame::set_Rotation(valuetype [Engine]Engine.Quaternion)
    IL_0069:  ldloc.3
    IL_006a:  ldc.i4.1
    IL_006b:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentMount>(bool)
    IL_0070:  stloc.0
    IL_0071:  ldarg.0
    IL_0072:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0077:  ldloc.3
    IL_0078:  callvirt   instance void [EntitySystem]GameEntitySystem.Project::AddEntity(class [EntitySystem]GameEntitySystem.Entity)
    IL_007d:  ldarga.s   position
    IL_007f:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_0084:  dup
    IL_0085:  ldind.r4
    IL_0086:  ldloc.3
    IL_0087:  ldc.i4.1
    IL_0088:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentBody>(bool)
    IL_008d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_0092:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0097:  add
    IL_0098:  stind.r4
    IL_0099:  ldarg.2
    IL_009a:  brtrue.s   IL_00a3

    IL_009c:  ldstr      "Player"
    IL_00a1:  br.s       IL_00a8

    IL_00a3:  ldstr      "PlayerRespawn"
    IL_00a8:  stloc.1
    IL_00a9:  ldarg.0
    IL_00aa:  ldfld      class Game.SubsystemEntityFactory Game.SubsystemPlayer::m_subsystemEntityFactory
    IL_00af:  ldloc.1
    IL_00b0:  ldc.i4.1
    IL_00b1:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity Game.SubsystemEntityFactory::CreateEntity(string,
                                                                                                                        bool)
    IL_00b6:  stloc.2
    IL_00b7:  ldloc.2
    IL_00b8:  ldc.i4.1
    IL_00b9:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentBody>(bool)
    IL_00be:  ldarg.1
    IL_00bf:  callvirt   instance void Game.ComponentFrame::set_Position(valuetype [Engine]Engine.Vector3)
    IL_00c4:  ldloc.2
    IL_00c5:  ldc.i4.1
    IL_00c6:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentBody>(bool)
    IL_00cb:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_00d0:  ldc.r4     90.
    IL_00d5:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_00da:  call       valuetype [Engine]Engine.Quaternion [Engine]Engine.Quaternion::CreateFromAxisAngle(valuetype [Engine]Engine.Vector3,
                                                                                                            float32)
    IL_00df:  callvirt   instance void Game.ComponentFrame::set_Rotation(valuetype [Engine]Engine.Quaternion)
    IL_00e4:  ldarg.0
    IL_00e5:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_00ea:  ldloc.2
    IL_00eb:  callvirt   instance void [EntitySystem]GameEntitySystem.Project::AddEntity(class [EntitySystem]GameEntitySystem.Entity)
    IL_00f0:  ldloc.0
    IL_00f1:  brfalse.s  IL_0100

    IL_00f3:  ldloc.2
    IL_00f4:  ldc.i4.1
    IL_00f5:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentRider>(bool)
    IL_00fa:  ldloc.0
    IL_00fb:  callvirt   instance void Game.ComponentRider::StartMounting(class Game.ComponentMount)
    IL_0100:  ldarg.0
    IL_0101:  ldarg.0
    IL_0102:  ldfld      class Game.SubsystemGameInfo Game.SubsystemPlayer::m_subsystemGameInfo
    IL_0107:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_010c:  call       instance void Game.SubsystemPlayer::set_LastSpawnTime(float64)
    IL_0111:  ldarg.0
    IL_0112:  call       instance int32 Game.SubsystemPlayer::get_SpawnsCount()
    IL_0117:  ldc.i4.1
    IL_0118:  add
    IL_0119:  stloc.s    V_4
    IL_011b:  ldarg.0
    IL_011c:  ldloc.s    V_4
    IL_011e:  call       instance void Game.SubsystemPlayer::set_SpawnsCount(int32)
    IL_0123:  ret
  } // end of method SubsystemPlayer::SpawnPlayer

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.StateMachine::.ctor()
    IL_0006:  stfld      class Game.StateMachine Game.SubsystemPlayer::m_stateMachine
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_0011:  ret
  } // end of method SubsystemPlayer::.ctor

  .method private hidebysig instance void 
          '<Load>b__33_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTime Game.SubsystemPlayer::m_subsystemTime
    IL_0006:  ldc.r4     0.0
    IL_000b:  callvirt   instance void Game.SubsystemTime::set_GameTimeFactor(float32)
    IL_0010:  ret
  } // end of method SubsystemPlayer::'<Load>b__33_0'

  .method private hidebysig instance void 
          '<Load>b__33_1'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       42 (0x2a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_0006:  brtrue.s   IL_0019

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.StateMachine Game.SubsystemPlayer::m_stateMachine
    IL_000e:  ldstr      "Spawn"
    IL_0013:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0018:  ret

    IL_0019:  ldarg.0
    IL_001a:  ldfld      class Game.StateMachine Game.SubsystemPlayer::m_stateMachine
    IL_001f:  ldstr      "WaitForTerrain"
    IL_0024:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0029:  ret
  } // end of method SubsystemPlayer::'<Load>b__33_1'

  .method private hidebysig instance void 
          '<Load>b__33_2'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       79 (0x4f)
    .maxstack  7
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTime Game.SubsystemPlayer::m_subsystemTime
    IL_0006:  ldc.r4     0.0
    IL_000b:  callvirt   instance void Game.SubsystemTime::set_GameTimeFactor(float32)
    IL_0010:  ldarg.0
    IL_0011:  ldc.i4.0
    IL_0012:  stfld      bool Game.SubsystemPlayer::m_isTerrainReady
    IL_0017:  ldarg.0
    IL_0018:  ldfld      class Game.SubsystemTerrain Game.SubsystemPlayer::m_subsystemTerrain
    IL_001d:  callvirt   instance class Game.TerrainUpdater Game.SubsystemTerrain::get_TerrainUpdater()
    IL_0022:  ldarg.0
    IL_0023:  call       instance valuetype [Engine]Engine.Vector3 Game.SubsystemPlayer::get_ProposedSpawnPosition()
    IL_0028:  ldc.r4     64.
    IL_002d:  ldc.r4     0.0
    IL_0032:  ldarg.0
    IL_0033:  ldfld      class Game.SubsystemSky Game.SubsystemPlayer::m_subsystemSky
    IL_0038:  callvirt   instance int32 Game.SubsystemSky::get_LightValue()
    IL_003d:  ldarg.0
    IL_003e:  ldftn      instance void Game.SubsystemPlayer::'<Load>b__33_3'()
    IL_0044:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0049:  callvirt   instance void Game.TerrainUpdater::SetTerrainUpdateParameters(valuetype [Engine]Engine.Vector3,
                                                                                       float32,
                                                                                       float32,
                                                                                       int32,
                                                                                       class [System.Runtime]System.Action)
    IL_004e:  ret
  } // end of method SubsystemPlayer::'<Load>b__33_2'

  .method private hidebysig instance void 
          '<Load>b__33_3'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  stfld      bool Game.SubsystemPlayer::m_isTerrainReady
    IL_0007:  ret
  } // end of method SubsystemPlayer::'<Load>b__33_3'

  .method private hidebysig instance void 
          '<Load>b__33_4'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       114 (0x72)
    .maxstack  3
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Vector3 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.SubsystemPlayer::m_isTerrainReady
    IL_0006:  brtrue.s   IL_0009

    IL_0008:  ret

    IL_0009:  ldarg.0
    IL_000a:  ldfld      bool Game.SubsystemPlayer::m_introSpawn
    IL_000f:  brfalse.s  IL_0045

    IL_0011:  ldarg.0
    IL_0012:  ldc.i4.0
    IL_0013:  stfld      bool Game.SubsystemPlayer::m_introSpawn
    IL_0018:  ldarg.0
    IL_0019:  ldarg.0
    IL_001a:  call       instance valuetype [Engine]Engine.Vector3 Game.SubsystemPlayer::get_ProposedSpawnPosition()
    IL_001f:  call       instance valuetype [Engine]Engine.Vector3 Game.SubsystemPlayer::FindIntroSpawnPosition(valuetype [Engine]Engine.Vector3)
    IL_0024:  stloc.0
    IL_0025:  ldarg.0
    IL_0026:  ldloc.0
    IL_0027:  call       instance void Game.SubsystemPlayer::set_ProposedSpawnPosition(valuetype [Engine]Engine.Vector3)
    IL_002c:  ldarg.0
    IL_002d:  ldloc.0
    IL_002e:  ldc.i4.0
    IL_002f:  call       instance void Game.SubsystemPlayer::SpawnPlayer(valuetype [Engine]Engine.Vector3,
                                                                         bool)
    IL_0034:  ldarg.0
    IL_0035:  ldfld      class Game.StateMachine Game.SubsystemPlayer::m_stateMachine
    IL_003a:  ldstr      "WaitForTerrain"
    IL_003f:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0044:  ret

    IL_0045:  ldarg.0
    IL_0046:  ldarg.0
    IL_0047:  call       instance valuetype [Engine]Engine.Vector3 Game.SubsystemPlayer::get_ProposedSpawnPosition()
    IL_004c:  call       instance valuetype [Engine]Engine.Vector3 Game.SubsystemPlayer::FindRespawnPosition(valuetype [Engine]Engine.Vector3)
    IL_0051:  stloc.1
    IL_0052:  ldarg.0
    IL_0053:  ldloc.1
    IL_0054:  call       instance void Game.SubsystemPlayer::set_ProposedSpawnPosition(valuetype [Engine]Engine.Vector3)
    IL_0059:  ldarg.0
    IL_005a:  ldloc.1
    IL_005b:  ldc.i4.1
    IL_005c:  call       instance void Game.SubsystemPlayer::SpawnPlayer(valuetype [Engine]Engine.Vector3,
                                                                         bool)
    IL_0061:  ldarg.0
    IL_0062:  ldfld      class Game.StateMachine Game.SubsystemPlayer::m_stateMachine
    IL_0067:  ldstr      "WaitForTerrain"
    IL_006c:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0071:  ret
  } // end of method SubsystemPlayer::'<Load>b__33_4'

  .method private hidebysig instance void 
          '<Load>b__33_5'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       117 (0x75)
    .maxstack  7
    .locals init (float32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTime Game.SubsystemPlayer::m_subsystemTime
    IL_0006:  ldc.r4     0.0
    IL_000b:  callvirt   instance void Game.SubsystemTime::set_GameTimeFactor(float32)
    IL_0010:  ldarg.0
    IL_0011:  call       instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_0016:  brfalse.s  IL_0074

    IL_0018:  ldarg.0
    IL_0019:  ldc.i4.0
    IL_001a:  stfld      bool Game.SubsystemPlayer::m_isTerrainReady
    IL_001f:  ldc.r4     64.
    IL_0024:  ldc.r4     0.5
    IL_0029:  ldarg.0
    IL_002a:  ldfld      class Game.SubsystemSky Game.SubsystemPlayer::m_subsystemSky
    IL_002f:  callvirt   instance float32 Game.SubsystemSky::get_VisibilityRange()
    IL_0034:  mul
    IL_0035:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.SubsystemPlayer::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.TerrainUpdater Game.SubsystemTerrain::get_TerrainUpdater()
    IL_0046:  ldarg.0
    IL_0047:  call       instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_004c:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0051:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0056:  ldloc.0
    IL_0057:  ldloc.0
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemSky Game.SubsystemPlayer::m_subsystemSky
    IL_005e:  callvirt   instance int32 Game.SubsystemSky::get_LightValue()
    IL_0063:  ldarg.0
    IL_0064:  ldftn      instance void Game.SubsystemPlayer::'<Load>b__33_6'()
    IL_006a:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_006f:  callvirt   instance void Game.TerrainUpdater::SetTerrainUpdateParameters(valuetype [Engine]Engine.Vector3,
                                                                                       float32,
                                                                                       float32,
                                                                                       int32,
                                                                                       class [System.Runtime]System.Action)
    IL_0074:  ret
  } // end of method SubsystemPlayer::'<Load>b__33_5'

  .method private hidebysig instance void 
          '<Load>b__33_6'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  stfld      bool Game.SubsystemPlayer::m_isTerrainReady
    IL_0007:  ret
  } // end of method SubsystemPlayer::'<Load>b__33_6'

  .method private hidebysig instance void 
          '<Load>b__33_7'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       50 (0x32)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_0006:  brtrue.s   IL_0019

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.StateMachine Game.SubsystemPlayer::m_stateMachine
    IL_000e:  ldstr      "Spawn"
    IL_0013:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0018:  ret

    IL_0019:  ldarg.0
    IL_001a:  ldfld      bool Game.SubsystemPlayer::m_isTerrainReady
    IL_001f:  brfalse.s  IL_0031

    IL_0021:  ldarg.0
    IL_0022:  ldfld      class Game.StateMachine Game.SubsystemPlayer::m_stateMachine
    IL_0027:  ldstr      "Playing"
    IL_002c:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0031:  ret
  } // end of method SubsystemPlayer::'<Load>b__33_7'

  .method private hidebysig instance void 
          '<Load>b__33_8'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTime Game.SubsystemPlayer::m_subsystemTime
    IL_0006:  ldc.r4     1.
    IL_000b:  callvirt   instance void Game.SubsystemTime::set_GameTimeFactor(float32)
    IL_0010:  ret
  } // end of method SubsystemPlayer::'<Load>b__33_8'

  .method private hidebysig instance void 
          '<Load>b__33_9'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       101 (0x65)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_0006:  brtrue.s   IL_0019

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.StateMachine Game.SubsystemPlayer::m_stateMachine
    IL_000e:  ldstr      "Spawn"
    IL_0013:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0018:  ret

    IL_0019:  ldarg.0
    IL_001a:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.SubsystemPlayer::m_playerDeathTime
    IL_001f:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_0024:  brfalse.s  IL_0037

    IL_0026:  ldarg.0
    IL_0027:  ldfld      class Game.StateMachine Game.SubsystemPlayer::m_stateMachine
    IL_002c:  ldstr      "PlayerDead"
    IL_0031:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0036:  ret

    IL_0037:  ldarg.0
    IL_0038:  call       instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_003d:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0042:  ldc.i4.1
    IL_0043:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentHealth>(bool)
    IL_0048:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_004d:  ldc.r4     0.0
    IL_0052:  bgt.un.s   IL_0064

    IL_0054:  ldarg.0
    IL_0055:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_005a:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_005f:  stfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.SubsystemPlayer::m_playerDeathTime
    IL_0064:  ret
  } // end of method SubsystemPlayer::'<Load>b__33_9'

  .method private hidebysig instance void 
          '<Load>b__33_10'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       317 (0x13d)
    .maxstack  7
    .locals init (string V_0,
             string V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_0006:  brtrue.s   IL_000f

    IL_0008:  ldsfld     string [System.Runtime]System.String::Empty
    IL_000d:  br.s       IL_001f

    IL_000f:  ldarg.0
    IL_0010:  call       instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_0015:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_001a:  callvirt   instance string Game.ComponentHealth::get_CauseOfDeath()
    IL_001f:  stloc.0
    IL_0020:  ldloc.0
    IL_0021:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0026:  brfalse.s  IL_002e

    IL_0028:  ldstr      "Unknown"
    IL_002d:  stloc.0
    IL_002e:  ldstr      "Cause of death: {0}"
    IL_0033:  ldc.i4.1
    IL_0034:  newarr     [System.Runtime]System.Object
    IL_0039:  dup
    IL_003a:  ldc.i4.0
    IL_003b:  ldloc.0
    IL_003c:  stelem.ref
    IL_003d:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0042:  stloc.1
    IL_0043:  ldarg.0
    IL_0044:  ldfld      class Game.SubsystemCamera Game.SubsystemPlayer::m_subsystemCamera
    IL_0049:  ldarg.0
    IL_004a:  ldfld      class Game.SubsystemCamera Game.SubsystemPlayer::m_subsystemCamera
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 Game.SubsystemCamera::FindCamera<class Game.DeathCamera>(bool)
    IL_0055:  callvirt   instance void Game.SubsystemCamera::set_ActiveCamera(class Game.Camera)
    IL_005a:  ldarg.0
    IL_005b:  ldfld      class Game.SubsystemGameInfo Game.SubsystemPlayer::m_subsystemGameInfo
    IL_0060:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_0065:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_006a:  ldc.i4.3
    IL_006b:  bne.un.s   IL_00ba

    IL_006d:  ldarg.0
    IL_006e:  ldfld      class Game.SubsystemGui Game.SubsystemPlayer::m_subsystemGui
    IL_0073:  ldstr      "You have died."
    IL_0078:  ldstr      "{0}\n\nCannot respawn in \"{1}\" game mode"
    IL_007d:  ldc.i4.2
    IL_007e:  newarr     [System.Runtime]System.Object
    IL_0083:  dup
    IL_0084:  ldc.i4.0
    IL_0085:  ldloc.1
    IL_0086:  stelem.ref
    IL_0087:  dup
    IL_0088:  ldc.i4.1
    IL_0089:  ldarg.0
    IL_008a:  ldfld      class Game.SubsystemGameInfo Game.SubsystemPlayer::m_subsystemGameInfo
    IL_008f:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_0094:  ldflda     valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_0099:  constrained. Game.GameMode
    IL_009f:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_00a4:  stelem.ref
    IL_00a5:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00aa:  ldc.r4     30.
    IL_00af:  ldc.r4     1.5
    IL_00b4:  callvirt   instance void Game.SubsystemGui::DisplayLargeMessage(string,
                                                                              string,
                                                                              float32,
                                                                              float32)
    IL_00b9:  ret

    IL_00ba:  ldarg.0
    IL_00bb:  ldfld      class Game.SubsystemGameInfo Game.SubsystemPlayer::m_subsystemGameInfo
    IL_00c0:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_00c5:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_00ca:  ldc.i4.4
    IL_00cb:  bne.un.s   IL_010e

    IL_00cd:  ldarg.0
    IL_00ce:  ldfld      class Game.SubsystemGameInfo Game.SubsystemPlayer::m_subsystemGameInfo
    IL_00d3:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_00d8:  ldfld      bool Game.WorldInfo::IsAdventureRespawnAllowed
    IL_00dd:  brtrue.s   IL_010e

    IL_00df:  ldarg.0
    IL_00e0:  ldfld      class Game.SubsystemGui Game.SubsystemPlayer::m_subsystemGui
    IL_00e5:  ldstr      "You have died."
    IL_00ea:  ldstr      "{0}\n\nTap to restart adventure"
    IL_00ef:  ldc.i4.1
    IL_00f0:  newarr     [System.Runtime]System.Object
    IL_00f5:  dup
    IL_00f6:  ldc.i4.0
    IL_00f7:  ldloc.1
    IL_00f8:  stelem.ref
    IL_00f9:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00fe:  ldc.r4     30.
    IL_0103:  ldc.r4     1.5
    IL_0108:  callvirt   instance void Game.SubsystemGui::DisplayLargeMessage(string,
                                                                              string,
                                                                              float32,
                                                                              float32)
    IL_010d:  ret

    IL_010e:  ldarg.0
    IL_010f:  ldfld      class Game.SubsystemGui Game.SubsystemPlayer::m_subsystemGui
    IL_0114:  ldstr      "You have died."
    IL_0119:  ldstr      "{0}\n\nTap to respawn"
    IL_011e:  ldc.i4.1
    IL_011f:  newarr     [System.Runtime]System.Object
    IL_0124:  dup
    IL_0125:  ldc.i4.0
    IL_0126:  ldloc.1
    IL_0127:  stelem.ref
    IL_0128:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_012d:  ldc.r4     30.
    IL_0132:  ldc.r4     1.5
    IL_0137:  callvirt   instance void Game.SubsystemGui::DisplayLargeMessage(string,
                                                                              string,
                                                                              float32,
                                                                              float32)
    IL_013c:  ret
  } // end of method SubsystemPlayer::'<Load>b__33_10'

  .method private hidebysig instance void 
          '<Load>b__33_11'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       227 (0xe3)
    .maxstack  2
    .locals init (valuetype Game.InputState V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_0006:  brtrue.s   IL_0019

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.StateMachine Game.SubsystemPlayer::m_stateMachine
    IL_000e:  ldstr      "Spawn"
    IL_0013:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0018:  ret

    IL_0019:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_001e:  ldarg.0
    IL_001f:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.SubsystemPlayer::m_playerDeathTime
    IL_0024:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::get_Value()
    IL_0029:  sub
    IL_002a:  ldc.r8     1.5
    IL_0033:  ble.un     IL_00e2

    IL_0038:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_003d:  stloc.0
    IL_003e:  ldloca.s   V_0
    IL_0040:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Tap
    IL_0045:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_004a:  brfalse    IL_00e2

    IL_004f:  ldarg.0
    IL_0050:  ldfld      class Game.SubsystemGameInfo Game.SubsystemPlayer::m_subsystemGameInfo
    IL_0055:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_005a:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_005f:  ldc.i4.3
    IL_0060:  bne.un.s   IL_0087

    IL_0062:  ldsfld     class [System.Runtime]System.Action Game.SubsystemPlayer/'<>c'::'<>9__33_12'
    IL_0067:  dup
    IL_0068:  brtrue.s   IL_0081

    IL_006a:  pop
    IL_006b:  ldsfld     class Game.SubsystemPlayer/'<>c' Game.SubsystemPlayer/'<>c'::'<>9'
    IL_0070:  ldftn      instance void Game.SubsystemPlayer/'<>c'::'<Load>b__33_12'()
    IL_0076:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_007b:  dup
    IL_007c:  stsfld     class [System.Runtime]System.Action Game.SubsystemPlayer/'<>c'::'<>9__33_12'
    IL_0081:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_0086:  ret

    IL_0087:  ldarg.0
    IL_0088:  ldfld      class Game.SubsystemGameInfo Game.SubsystemPlayer::m_subsystemGameInfo
    IL_008d:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_0092:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_0097:  ldc.i4.4
    IL_0098:  bne.un.s   IL_00d1

    IL_009a:  ldarg.0
    IL_009b:  ldfld      class Game.SubsystemGameInfo Game.SubsystemPlayer::m_subsystemGameInfo
    IL_00a0:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_00a5:  ldfld      bool Game.WorldInfo::IsAdventureRespawnAllowed
    IL_00aa:  brtrue.s   IL_00d1

    IL_00ac:  ldsfld     class [System.Runtime]System.Action Game.SubsystemPlayer/'<>c'::'<>9__33_13'
    IL_00b1:  dup
    IL_00b2:  brtrue.s   IL_00cb

    IL_00b4:  pop
    IL_00b5:  ldsfld     class Game.SubsystemPlayer/'<>c' Game.SubsystemPlayer/'<>c'::'<>9'
    IL_00ba:  ldftn      instance void Game.SubsystemPlayer/'<>c'::'<Load>b__33_13'()
    IL_00c0:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00c5:  dup
    IL_00c6:  stsfld     class [System.Runtime]System.Action Game.SubsystemPlayer/'<>c'::'<>9__33_13'
    IL_00cb:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_00d0:  ret

    IL_00d1:  ldarg.0
    IL_00d2:  ldftn      instance void Game.SubsystemPlayer::'<Load>b__33_14'()
    IL_00d8:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00dd:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_00e2:  ret
  } // end of method SubsystemPlayer::'<Load>b__33_11'

  .method private hidebysig instance void 
          '<Load>b__33_14'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       39 (0x27)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0006:  ldarg.0
    IL_0007:  call       instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_000c:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0011:  callvirt   instance void [EntitySystem]GameEntitySystem.Project::RemoveEntity(class [EntitySystem]GameEntitySystem.Entity)
    IL_0016:  ldstr      "Respawning"
    IL_001b:  ldc.i4.0
    IL_001c:  newarr     [System.Runtime]System.Object
    IL_0021:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_0026:  ret
  } // end of method SubsystemPlayer::'<Load>b__33_14'

  .property instance class Game.ComponentPlayer
          ComponentPlayer()
  {
    .get instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    .set instance void Game.SubsystemPlayer::set_ComponentPlayer(class Game.ComponentPlayer)
  } // end of property SubsystemPlayer::ComponentPlayer
  .property instance valuetype [Engine]Engine.Vector3
          ProposedSpawnPosition()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.SubsystemPlayer::get_ProposedSpawnPosition()
    .set instance void Game.SubsystemPlayer::set_ProposedSpawnPosition(valuetype [Engine]Engine.Vector3)
  } // end of property SubsystemPlayer::ProposedSpawnPosition
  .property instance float64 LastSpawnTime()
  {
    .get instance float64 Game.SubsystemPlayer::get_LastSpawnTime()
    .set instance void Game.SubsystemPlayer::set_LastSpawnTime(float64)
  } // end of property SubsystemPlayer::LastSpawnTime
  .property instance int32 SpawnsCount()
  {
    .get instance int32 Game.SubsystemPlayer::get_SpawnsCount()
    .set instance void Game.SubsystemPlayer::set_SpawnsCount(int32)
  } // end of property SubsystemPlayer::SpawnsCount
  .property instance bool IsReadyForPlaying()
  {
    .get instance bool Game.SubsystemPlayer::get_IsReadyForPlaying()
  } // end of property SubsystemPlayer::IsReadyForPlaying
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemPlayer::get_UpdateOrder()
  } // end of property SubsystemPlayer::UpdateOrder
} // end of class Game.SubsystemPlayer