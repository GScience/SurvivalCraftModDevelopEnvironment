.class public auto ansi beforefieldinit Game.PlayerData
       extends [System.Runtime]System.Object
       implements [System.Runtime]System.IDisposable
{
  .class auto ansi sealed nested private SpawnMode
         extends [System.Runtime]System.Enum
  {
    .field public specialname rtspecialname int32 value__
    .field public static literal valuetype Game.PlayerData/SpawnMode InitialIntro = int32(0x00000000)
    .field public static literal valuetype Game.PlayerData/SpawnMode InitialNoIntro = int32(0x00000001)
    .field public static literal valuetype Game.PlayerData/SpawnMode Respawn = int32(0x00000002)
  } // end of class SpawnMode

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass15_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public valuetype Game.WidgetInputDevice d
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass15_0'::.ctor

    .method assembly hidebysig instance bool 
            '<.ctor>b__1'(class Game.PlayerData pd) cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance valuetype Game.WidgetInputDevice Game.PlayerData::get_InputDevice()
      IL_0006:  ldarg.0
      IL_0007:  ldfld      valuetype Game.WidgetInputDevice Game.PlayerData/'<>c__DisplayClass15_0'::d
      IL_000c:  and
      IL_000d:  ldc.i4.0
      IL_000e:  ceq
      IL_0010:  ret
    } // end of method '<>c__DisplayClass15_0'::'<.ctor>b__1'

  } // end of class '<>c__DisplayClass15_0'

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.PlayerData/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<class Game.PlayerData,bool> '<>9__15_4'
    .field public static class [System.Runtime]System.Func`2<class Game.PlayerData,string> '<>9__71_1'
    .field public static class [System.Runtime]System.Func`3<int32,float32,bool> '<>9__81_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.PlayerData/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.PlayerData/'<>c' Game.PlayerData/'<>c'::'<>9'
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

    .method assembly hidebysig instance bool 
            '<.ctor>b__15_4'(class Game.PlayerData pd) cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.PlayerData::get_SpawnPosition()
      IL_0006:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
      IL_000b:  call       bool [Engine]Engine.Vector3::op_Inequality(valuetype [Engine]Engine.Vector3,
                                                                      valuetype [Engine]Engine.Vector3)
      IL_0010:  ret
    } // end of method '<>c'::'<.ctor>b__15_4'

    .method assembly hidebysig instance string 
            '<RandomizeCharacterSkin>b__71_1'(class Game.PlayerData pd) cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance string Game.PlayerData::get_CharacterSkinName()
      IL_0006:  ret
    } // end of method '<>c'::'<RandomizeCharacterSkin>b__71_1'

    .method assembly hidebysig instance bool 
            '<ScoreIntroSpawnPosition>b__81_0'(int32 'value',
                                               float32 distance) cil managed
    {
      // 代码大小       10 (0xa)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  call       int32 Game.Terrain::ExtractContents(int32)
      IL_0006:  ldc.i4.0
      IL_0007:  cgt.un
      IL_0009:  ret
    } // end of method '<>c'::'<ScoreIntroSpawnPosition>b__81_0'

  } // end of class '<>c'

  .field private class [EntitySystem]GameEntitySystem.Project m_project
  .field private class Game.SubsystemViews m_subsystemViews
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemSky m_subsystemSky
  .field private class Game.View m_view
  .field private class Game.StateMachine m_stateMachine
  .field private valuetype Game.PlayerClass m_playerClass
  .field private string m_name
  .field private valuetype Game.PlayerData/SpawnMode m_spawnMode
  .field private valuetype [System.Runtime]System.Nullable`1<float64> m_playerDeathTime
  .field private float64 m_terrainWaitStartTime
  .field private class Game.SpawnDialog m_spawnDialog
  .field private float32 m_progress
  .field private int32 '<PlayerIndex>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.SubsystemPlayers '<SubsystemPlayers>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.ComponentPlayer '<ComponentPlayer>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Vector3 '<SpawnPosition>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float64 '<FirstSpawnTime>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float64 '<LastSpawnTime>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private int32 '<SpawnsCount>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<IsDefaultName>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<Level>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private string '<CharacterSkinName>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype Game.WidgetInputDevice '<InputDevice>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [EntitySystem]GameEntitySystem.Project project) cil managed
  {
    // 代码大小       434 (0x1b2)
    .maxstack  5
    .locals init (class [System.Collections]System.Collections.Generic.List`1<valuetype Game.WidgetInputDevice> V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.StateMachine::.ctor()
    IL_0006:  stfld      class Game.StateMachine Game.PlayerData::m_stateMachine
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0011:  ldarg.0
    IL_0012:  ldarg.1
    IL_0013:  stfld      class [EntitySystem]GameEntitySystem.Project Game.PlayerData::m_project
    IL_0018:  ldarg.0
    IL_0019:  ldarg.1
    IL_001a:  ldc.i4.1
    IL_001b:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPlayers>(bool)
    IL_0020:  call       instance void Game.PlayerData::set_SubsystemPlayers(class Game.SubsystemPlayers)
    IL_0025:  ldarg.0
    IL_0026:  ldarg.1
    IL_0027:  ldc.i4.1
    IL_0028:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemViews>(bool)
    IL_002d:  stfld      class Game.SubsystemViews Game.PlayerData::m_subsystemViews
    IL_0032:  ldarg.0
    IL_0033:  ldarg.1
    IL_0034:  ldc.i4.1
    IL_0035:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_003a:  stfld      class Game.SubsystemTerrain Game.PlayerData::m_subsystemTerrain
    IL_003f:  ldarg.0
    IL_0040:  ldarg.1
    IL_0041:  ldc.i4.1
    IL_0042:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_0047:  stfld      class Game.SubsystemGameInfo Game.PlayerData::m_subsystemGameInfo
    IL_004c:  ldarg.0
    IL_004d:  ldarg.1
    IL_004e:  ldc.i4.1
    IL_004f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemSky>(bool)
    IL_0054:  stfld      class Game.SubsystemSky Game.PlayerData::m_subsystemSky
    IL_0059:  ldarg.0
    IL_005a:  ldc.i4.0
    IL_005b:  stfld      valuetype Game.PlayerClass Game.PlayerData::m_playerClass
    IL_0060:  ldarg.0
    IL_0061:  ldc.r4     1.
    IL_0066:  call       instance void Game.PlayerData::set_Level(float32)
    IL_006b:  ldarg.0
    IL_006c:  ldc.r8     -1.
    IL_0075:  call       instance void Game.PlayerData::set_FirstSpawnTime(float64)
    IL_007a:  ldarg.0
    IL_007b:  ldc.r8     -1.
    IL_0084:  call       instance void Game.PlayerData::set_LastSpawnTime(float64)
    IL_0089:  ldarg.0
    IL_008a:  call       instance void Game.PlayerData::RandomizeCharacterSkin()
    IL_008f:  ldarg.0
    IL_0090:  call       instance void Game.PlayerData::ResetName()
    IL_0095:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.WidgetInputDevice>::.ctor()
    IL_009a:  stloc.0
    IL_009b:  ldloc.0
    IL_009c:  ldc.i4.3
    IL_009d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.WidgetInputDevice>::Add(!0)
    IL_00a2:  ldc.i4.0
    IL_00a3:  stloc.1
    IL_00a4:  br.s       IL_00be

    IL_00a6:  ldloc.1
    IL_00a7:  call       bool [Engine]Engine.Input.GamePad::IsConnected(int32)
    IL_00ac:  brfalse.s  IL_00ba

    IL_00ae:  ldloc.0
    IL_00af:  ldc.i4.8
    IL_00b0:  ldloc.1
    IL_00b1:  ldc.i4.s   31
    IL_00b3:  and
    IL_00b4:  shl
    IL_00b5:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.WidgetInputDevice>::Add(!0)
    IL_00ba:  ldloc.1
    IL_00bb:  ldc.i4.1
    IL_00bc:  add
    IL_00bd:  stloc.1
    IL_00be:  ldloc.1
    IL_00bf:  ldc.i4.4
    IL_00c0:  blt.s      IL_00a6

    IL_00c2:  ldarg.0
    IL_00c3:  ldloc.0
    IL_00c4:  ldarg.0
    IL_00c5:  ldftn      instance bool Game.PlayerData::'<.ctor>b__15_0'(valuetype Game.WidgetInputDevice)
    IL_00cb:  newobj     instance void class [System.Runtime]System.Func`2<valuetype Game.WidgetInputDevice,bool>::.ctor(object,
                                                                                                                         native int)
    IL_00d0:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<valuetype Game.WidgetInputDevice>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                          class [System.Runtime]System.Func`2<!!0,bool>)
    IL_00d5:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<valuetype Game.WidgetInputDevice>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_00da:  call       instance void Game.PlayerData::set_InputDevice(valuetype Game.WidgetInputDevice)
    IL_00df:  ldarg.0
    IL_00e0:  ldfld      class Game.StateMachine Game.PlayerData::m_stateMachine
    IL_00e5:  ldstr      "FirstUpdate"
    IL_00ea:  ldnull
    IL_00eb:  ldarg.0
    IL_00ec:  ldftn      instance void Game.PlayerData::'<.ctor>b__15_2'()
    IL_00f2:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00f7:  ldnull
    IL_00f8:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_00fd:  ldarg.0
    IL_00fe:  ldfld      class Game.StateMachine Game.PlayerData::m_stateMachine
    IL_0103:  ldstr      "PrepareSpawn"
    IL_0108:  ldarg.0
    IL_0109:  ldftn      instance void Game.PlayerData::'<.ctor>b__15_3'()
    IL_010f:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0114:  ldarg.0
    IL_0115:  ldftn      instance void Game.PlayerData::'<.ctor>b__15_5'()
    IL_011b:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0120:  ldnull
    IL_0121:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_0126:  ldarg.0
    IL_0127:  ldfld      class Game.StateMachine Game.PlayerData::m_stateMachine
    IL_012c:  ldstr      "WaitForTerrain"
    IL_0131:  ldarg.0
    IL_0132:  ldftn      instance void Game.PlayerData::'<.ctor>b__15_6'()
    IL_0138:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_013d:  ldarg.0
    IL_013e:  ldftn      instance void Game.PlayerData::'<.ctor>b__15_7'()
    IL_0144:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0149:  ldnull
    IL_014a:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_014f:  ldarg.0
    IL_0150:  ldfld      class Game.StateMachine Game.PlayerData::m_stateMachine
    IL_0155:  ldstr      "Playing"
    IL_015a:  ldarg.0
    IL_015b:  ldftn      instance void Game.PlayerData::'<.ctor>b__15_8'()
    IL_0161:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0166:  ldarg.0
    IL_0167:  ldftn      instance void Game.PlayerData::'<.ctor>b__15_9'()
    IL_016d:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0172:  ldnull
    IL_0173:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_0178:  ldarg.0
    IL_0179:  ldfld      class Game.StateMachine Game.PlayerData::m_stateMachine
    IL_017e:  ldstr      "PlayerDead"
    IL_0183:  ldarg.0
    IL_0184:  ldftn      instance void Game.PlayerData::'<.ctor>b__15_10'()
    IL_018a:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_018f:  ldarg.0
    IL_0190:  ldftn      instance void Game.PlayerData::'<.ctor>b__15_11'()
    IL_0196:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_019b:  ldnull
    IL_019c:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_01a1:  ldarg.0
    IL_01a2:  ldfld      class Game.StateMachine Game.PlayerData::m_stateMachine
    IL_01a7:  ldstr      "FirstUpdate"
    IL_01ac:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_01b1:  ret
  } // end of method PlayerData::.ctor

  .method public hidebysig newslot virtual final 
          instance void  Dispose() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.PlayerData::HideSpawnDialog()
    IL_0006:  ret
  } // end of method PlayerData::Dispose

  .method public hidebysig specialname instance int32 
          get_PlayerIndex() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.PlayerData::'<PlayerIndex>k__BackingField'
    IL_0006:  ret
  } // end of method PlayerData::get_PlayerIndex

  .method public hidebysig specialname instance void 
          set_PlayerIndex(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 Game.PlayerData::'<PlayerIndex>k__BackingField'
    IL_0007:  ret
  } // end of method PlayerData::set_PlayerIndex

  .method public hidebysig specialname instance class Game.SubsystemPlayers 
          get_SubsystemPlayers() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemPlayers Game.PlayerData::'<SubsystemPlayers>k__BackingField'
    IL_0006:  ret
  } // end of method PlayerData::get_SubsystemPlayers

  .method private hidebysig specialname instance void 
          set_SubsystemPlayers(class Game.SubsystemPlayers 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.SubsystemPlayers Game.PlayerData::'<SubsystemPlayers>k__BackingField'
    IL_0007:  ret
  } // end of method PlayerData::set_SubsystemPlayers

  .method public hidebysig specialname instance class Game.ComponentPlayer 
          get_ComponentPlayer() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentPlayer Game.PlayerData::'<ComponentPlayer>k__BackingField'
    IL_0006:  ret
  } // end of method PlayerData::get_ComponentPlayer

  .method private hidebysig specialname instance void 
          set_ComponentPlayer(class Game.ComponentPlayer 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ComponentPlayer Game.PlayerData::'<ComponentPlayer>k__BackingField'
    IL_0007:  ret
  } // end of method PlayerData::set_ComponentPlayer

  .method public hidebysig specialname instance class Game.View 
          get_View() cil managed
  {
    // 代码大小       107 (0x6b)
    .maxstack  2
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.View> V_0,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.View> V_1,
             class Game.View V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.View Game.PlayerData::m_view
    IL_0006:  brtrue.s   IL_0064

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.SubsystemViews Game.PlayerData::m_subsystemViews
    IL_000e:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.View> Game.SubsystemViews::get_Views()
    IL_0013:  stloc.1
    IL_0014:  ldloca.s   V_1
    IL_0016:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.View>::GetEnumerator()
    IL_001b:  stloc.0
    .try
    {
      IL_001c:  br.s       IL_0038

      IL_001e:  ldloca.s   V_0
      IL_0020:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.View>::get_Current()
      IL_0025:  stloc.2
      IL_0026:  ldloc.2
      IL_0027:  callvirt   instance class Game.PlayerData Game.View::get_PlayerData()
      IL_002c:  ldarg.0
      IL_002d:  bne.un.s   IL_0038

      IL_002f:  ldarg.0
      IL_0030:  ldloc.2
      IL_0031:  stfld      class Game.View Game.PlayerData::m_view
      IL_0036:  leave.s    IL_0051

      IL_0038:  ldloca.s   V_0
      IL_003a:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.View>::MoveNext()
      IL_003f:  brtrue.s   IL_001e

      IL_0041:  leave.s    IL_0051

    }  // end .try
    finally
    {
      IL_0043:  ldloca.s   V_0
      IL_0045:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.View>
      IL_004b:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0050:  endfinally
    }  // end handler
    IL_0051:  ldarg.0
    IL_0052:  ldfld      class Game.View Game.PlayerData::m_view
    IL_0057:  brtrue.s   IL_0064

    IL_0059:  ldstr      "No view found for player."
    IL_005e:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0063:  throw

    IL_0064:  ldarg.0
    IL_0065:  ldfld      class Game.View Game.PlayerData::m_view
    IL_006a:  ret
  } // end of method PlayerData::get_View

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector3 
          get_SpawnPosition() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.PlayerData::'<SpawnPosition>k__BackingField'
    IL_0006:  ret
  } // end of method PlayerData::get_SpawnPosition

  .method public hidebysig specialname instance void 
          set_SpawnPosition(valuetype [Engine]Engine.Vector3 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector3 Game.PlayerData::'<SpawnPosition>k__BackingField'
    IL_0007:  ret
  } // end of method PlayerData::set_SpawnPosition

  .method public hidebysig specialname instance float64 
          get_FirstSpawnTime() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float64 Game.PlayerData::'<FirstSpawnTime>k__BackingField'
    IL_0006:  ret
  } // end of method PlayerData::get_FirstSpawnTime

  .method private hidebysig specialname instance void 
          set_FirstSpawnTime(float64 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float64 Game.PlayerData::'<FirstSpawnTime>k__BackingField'
    IL_0007:  ret
  } // end of method PlayerData::set_FirstSpawnTime

  .method public hidebysig specialname instance float64 
          get_LastSpawnTime() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float64 Game.PlayerData::'<LastSpawnTime>k__BackingField'
    IL_0006:  ret
  } // end of method PlayerData::get_LastSpawnTime

  .method private hidebysig specialname instance void 
          set_LastSpawnTime(float64 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float64 Game.PlayerData::'<LastSpawnTime>k__BackingField'
    IL_0007:  ret
  } // end of method PlayerData::set_LastSpawnTime

  .method public hidebysig specialname instance int32 
          get_SpawnsCount() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.PlayerData::'<SpawnsCount>k__BackingField'
    IL_0006:  ret
  } // end of method PlayerData::get_SpawnsCount

  .method private hidebysig specialname instance void 
          set_SpawnsCount(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 Game.PlayerData::'<SpawnsCount>k__BackingField'
    IL_0007:  ret
  } // end of method PlayerData::set_SpawnsCount

  .method public hidebysig specialname instance string 
          get_Name() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.PlayerData::m_name
    IL_0006:  ret
  } // end of method PlayerData::get_Name

  .method public hidebysig specialname instance void 
          set_Name(string 'value') cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      string Game.PlayerData::m_name
    IL_0007:  call       bool [System.Runtime]System.String::op_Inequality(string,
                                                                           string)
    IL_000c:  brfalse.s  IL_001c

    IL_000e:  ldarg.0
    IL_000f:  ldarg.1
    IL_0010:  stfld      string Game.PlayerData::m_name
    IL_0015:  ldarg.0
    IL_0016:  ldc.i4.0
    IL_0017:  call       instance void Game.PlayerData::set_IsDefaultName(bool)
    IL_001c:  ret
  } // end of method PlayerData::set_Name

  .method public hidebysig specialname instance bool 
          get_IsDefaultName() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.PlayerData::'<IsDefaultName>k__BackingField'
    IL_0006:  ret
  } // end of method PlayerData::get_IsDefaultName

  .method private hidebysig specialname instance void 
          set_IsDefaultName(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.PlayerData::'<IsDefaultName>k__BackingField'
    IL_0007:  ret
  } // end of method PlayerData::set_IsDefaultName

  .method public hidebysig specialname instance valuetype Game.PlayerClass 
          get_PlayerClass() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype Game.PlayerClass Game.PlayerData::m_playerClass
    IL_0006:  ret
  } // end of method PlayerData::get_PlayerClass

  .method public hidebysig specialname instance void 
          set_PlayerClass(valuetype Game.PlayerClass 'value') cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  2
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemPlayers Game.PlayerData::get_SubsystemPlayers()
    IL_0006:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> Game.SubsystemPlayers::get_PlayersData()
    IL_000b:  stloc.0
    IL_000c:  ldloca.s   V_0
    IL_000e:  ldarg.0
    IL_000f:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData>::Contains(!0)
    IL_0014:  brfalse.s  IL_0021

    IL_0016:  ldstr      "Cannot change player class when player data alread"
    + "y exists."
    IL_001b:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0020:  throw

    IL_0021:  ldarg.0
    IL_0022:  ldarg.1
    IL_0023:  stfld      valuetype Game.PlayerClass Game.PlayerData::m_playerClass
    IL_0028:  ret
  } // end of method PlayerData::set_PlayerClass

  .method public hidebysig specialname instance float32 
          get_Level() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.PlayerData::'<Level>k__BackingField'
    IL_0006:  ret
  } // end of method PlayerData::get_Level

  .method public hidebysig specialname instance void 
          set_Level(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.PlayerData::'<Level>k__BackingField'
    IL_0007:  ret
  } // end of method PlayerData::set_Level

  .method public hidebysig specialname instance string 
          get_CharacterSkinName() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.PlayerData::'<CharacterSkinName>k__BackingField'
    IL_0006:  ret
  } // end of method PlayerData::get_CharacterSkinName

  .method public hidebysig specialname instance void 
          set_CharacterSkinName(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string Game.PlayerData::'<CharacterSkinName>k__BackingField'
    IL_0007:  ret
  } // end of method PlayerData::set_CharacterSkinName

  .method public hidebysig specialname instance valuetype Game.WidgetInputDevice 
          get_InputDevice() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype Game.WidgetInputDevice Game.PlayerData::'<InputDevice>k__BackingField'
    IL_0006:  ret
  } // end of method PlayerData::get_InputDevice

  .method public hidebysig specialname instance void 
          set_InputDevice(valuetype Game.WidgetInputDevice 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype Game.WidgetInputDevice Game.PlayerData::'<InputDevice>k__BackingField'
    IL_0007:  ret
  } // end of method PlayerData::set_InputDevice

  .method public hidebysig specialname instance bool 
          get_IsReadyForPlaying() cil managed
  {
    // 代码大小       47 (0x2f)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.StateMachine Game.PlayerData::m_stateMachine
    IL_0006:  callvirt   instance string Game.StateMachine::get_CurrentState()
    IL_000b:  ldstr      "Playing"
    IL_0010:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_0015:  brtrue.s   IL_002d

    IL_0017:  ldarg.0
    IL_0018:  ldfld      class Game.StateMachine Game.PlayerData::m_stateMachine
    IL_001d:  callvirt   instance string Game.StateMachine::get_CurrentState()
    IL_0022:  ldstr      "PlayerDead"
    IL_0027:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_002c:  ret

    IL_002d:  ldc.i4.1
    IL_002e:  ret
  } // end of method PlayerData::get_IsReadyForPlaying

  .method public hidebysig instance void 
          RandomizeCharacterSkin() cil managed
  {
    // 代码大小       161 (0xa1)
    .maxstack  6
    .locals init (class Game.Random V_0,
             string[] V_1,
             string[] V_2,
             string[] V_3)
    IL_0000:  newobj     instance void Game.Random::.ctor()
    IL_0005:  stloc.0
    IL_0006:  call       void Game.CharacterSkinsManager::UpdateCharacterSkinsList()
    IL_000b:  call       valuetype [Engine]Engine.ReadOnlyList`1<string> Game.CharacterSkinsManager::get_CharacterSkinsNames()
    IL_0010:  box        valuetype [Engine]Engine.ReadOnlyList`1<string>
    IL_0015:  ldarg.0
    IL_0016:  ldftn      instance bool Game.PlayerData::'<RandomizeCharacterSkin>b__71_0'(string)
    IL_001c:  newobj     instance void class [System.Runtime]System.Func`2<string,bool>::.ctor(object,
                                                                                               native int)
    IL_0021:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<string>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0026:  call       !!0[] [System.Linq]System.Linq.Enumerable::ToArray<string>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_002b:  stloc.1
    IL_002c:  ldarg.0
    IL_002d:  call       instance class Game.SubsystemPlayers Game.PlayerData::get_SubsystemPlayers()
    IL_0032:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> Game.SubsystemPlayers::get_PlayersData()
    IL_0037:  box        valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData>
    IL_003c:  ldsfld     class [System.Runtime]System.Func`2<class Game.PlayerData,string> Game.PlayerData/'<>c'::'<>9__71_1'
    IL_0041:  dup
    IL_0042:  brtrue.s   IL_005b

    IL_0044:  pop
    IL_0045:  ldsfld     class Game.PlayerData/'<>c' Game.PlayerData/'<>c'::'<>9'
    IL_004a:  ldftn      instance string Game.PlayerData/'<>c'::'<RandomizeCharacterSkin>b__71_1'(class Game.PlayerData)
    IL_0050:  newobj     instance void class [System.Runtime]System.Func`2<class Game.PlayerData,string>::.ctor(object,
                                                                                                                native int)
    IL_0055:  dup
    IL_0056:  stsfld     class [System.Runtime]System.Func`2<class Game.PlayerData,string> Game.PlayerData/'<>c'::'<>9__71_1'
    IL_005b:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!1> [System.Linq]System.Linq.Enumerable::Select<class Game.PlayerData,string>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                       class [System.Runtime]System.Func`2<!!0,!!1>)
    IL_0060:  call       !!0[] [System.Linq]System.Linq.Enumerable::ToArray<string>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0065:  stloc.2
    IL_0066:  ldloc.1
    IL_0067:  ldloc.2
    IL_0068:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Except<string>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                 class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_006d:  call       !!0[] [System.Linq]System.Linq.Enumerable::ToArray<string>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0072:  stloc.3
    IL_0073:  ldloc.3
    IL_0074:  ldlen
    IL_0075:  brfalse.s  IL_008c

    IL_0077:  ldarg.0
    IL_0078:  ldloc.3
    IL_0079:  ldloc.0
    IL_007a:  ldc.i4.0
    IL_007b:  ldloc.3
    IL_007c:  ldlen
    IL_007d:  conv.i4
    IL_007e:  ldc.i4.1
    IL_007f:  sub
    IL_0080:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0085:  ldelem.ref
    IL_0086:  call       instance void Game.PlayerData::set_CharacterSkinName(string)
    IL_008b:  ret

    IL_008c:  ldarg.0
    IL_008d:  ldloc.1
    IL_008e:  ldloc.0
    IL_008f:  ldc.i4.0
    IL_0090:  ldloc.1
    IL_0091:  ldlen
    IL_0092:  conv.i4
    IL_0093:  ldc.i4.1
    IL_0094:  sub
    IL_0095:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_009a:  ldelem.ref
    IL_009b:  call       instance void Game.PlayerData::set_CharacterSkinName(string)
    IL_00a0:  ret
  } // end of method PlayerData::RandomizeCharacterSkin

  .method public hidebysig instance void 
          ResetName() cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance string Game.PlayerData::get_CharacterSkinName()
    IL_0007:  call       string Game.CharacterSkinsManager::GetDisplayName(string)
    IL_000c:  stfld      string Game.PlayerData::m_name
    IL_0011:  ldarg.0
    IL_0012:  ldc.i4.1
    IL_0013:  call       instance void Game.PlayerData::set_IsDefaultName(bool)
    IL_0018:  ret
  } // end of method PlayerData::ResetName

  .method public hidebysig static bool  VerifyName(string name) cil managed
  {
    // 代码大小       96 (0x60)
    .maxstack  3
    .locals init (string V_0,
             int32 V_1,
             char V_2)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0006:  ldc.i4.s   14
    IL_0008:  bgt.s      IL_0013

    IL_000a:  ldarg.0
    IL_000b:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0010:  ldc.i4.2
    IL_0011:  bge.s      IL_0015

    IL_0013:  ldc.i4.0
    IL_0014:  ret

    IL_0015:  ldarg.0
    IL_0016:  stloc.0
    IL_0017:  ldc.i4.0
    IL_0018:  stloc.1
    IL_0019:  br.s       IL_0036

    IL_001b:  ldloc.0
    IL_001c:  ldloc.1
    IL_001d:  callvirt   instance char [System.Runtime]System.String::get_Chars(int32)
    IL_0022:  stloc.2
    IL_0023:  ldloc.2
    IL_0024:  call       bool [System.Runtime]System.Char::IsLetterOrDigit(char)
    IL_0029:  brtrue.s   IL_0032

    IL_002b:  ldloc.2
    IL_002c:  ldc.i4.s   32
    IL_002e:  beq.s      IL_0032

    IL_0030:  ldc.i4.0
    IL_0031:  ret

    IL_0032:  ldloc.1
    IL_0033:  ldc.i4.1
    IL_0034:  add
    IL_0035:  stloc.1
    IL_0036:  ldloc.1
    IL_0037:  ldloc.0
    IL_0038:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_003d:  blt.s      IL_001b

    IL_003f:  ldarg.0
    IL_0040:  ldc.i4.0
    IL_0041:  callvirt   instance char [System.Runtime]System.String::get_Chars(int32)
    IL_0046:  ldc.i4.s   32
    IL_0048:  beq.s      IL_005c

    IL_004a:  ldarg.0
    IL_004b:  ldarg.0
    IL_004c:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0051:  ldc.i4.1
    IL_0052:  sub
    IL_0053:  callvirt   instance char [System.Runtime]System.String::get_Chars(int32)
    IL_0058:  ldc.i4.s   32
    IL_005a:  bne.un.s   IL_005e

    IL_005c:  ldc.i4.0
    IL_005d:  ret

    IL_005e:  ldc.i4.1
    IL_005f:  ret
  } // end of method PlayerData::VerifyName

  .method public hidebysig instance void 
          Update() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.StateMachine Game.PlayerData::m_stateMachine
    IL_0006:  callvirt   instance void Game.StateMachine::Update()
    IL_000b:  ret
  } // end of method PlayerData::Update

  .method public hidebysig instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       209 (0xd1)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1<string> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "SpawnPosition"
    IL_0007:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_000c:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype [Engine]Engine.Vector3>(string,
                                                                                                                                   !!0)
    IL_0011:  call       instance void Game.PlayerData::set_SpawnPosition(valuetype [Engine]Engine.Vector3)
    IL_0016:  ldarg.0
    IL_0017:  ldarg.1
    IL_0018:  ldstr      "FirstSpawnTime"
    IL_001d:  ldc.r8     0.0
    IL_0026:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float64>(string,
                                                                                                          !!0)
    IL_002b:  call       instance void Game.PlayerData::set_FirstSpawnTime(float64)
    IL_0030:  ldarg.0
    IL_0031:  ldarg.1
    IL_0032:  ldstr      "LastSpawnTime"
    IL_0037:  ldc.r8     0.0
    IL_0040:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float64>(string,
                                                                                                          !!0)
    IL_0045:  call       instance void Game.PlayerData::set_LastSpawnTime(float64)
    IL_004a:  ldarg.0
    IL_004b:  ldarg.1
    IL_004c:  ldstr      "SpawnsCount"
    IL_0051:  ldc.i4.0
    IL_0052:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<int32>(string,
                                                                                                        !!0)
    IL_0057:  call       instance void Game.PlayerData::set_SpawnsCount(int32)
    IL_005c:  ldarg.0
    IL_005d:  ldarg.1
    IL_005e:  ldstr      "Name"
    IL_0063:  ldstr      "Walter"
    IL_0068:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string,
                                                                                                         !!0)
    IL_006d:  call       instance void Game.PlayerData::set_Name(string)
    IL_0072:  ldarg.0
    IL_0073:  ldarg.1
    IL_0074:  ldstr      "PlayerClass"
    IL_0079:  ldc.i4.0
    IL_007a:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype Game.PlayerClass>(string,
                                                                                                                             !!0)
    IL_007f:  call       instance void Game.PlayerData::set_PlayerClass(valuetype Game.PlayerClass)
    IL_0084:  ldarg.0
    IL_0085:  ldarg.1
    IL_0086:  ldstr      "Level"
    IL_008b:  ldc.r4     1.
    IL_0090:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string,
                                                                                                          !!0)
    IL_0095:  call       instance void Game.PlayerData::set_Level(float32)
    IL_009a:  ldarg.0
    IL_009b:  ldarg.1
    IL_009c:  ldstr      "CharacterSkinName"
    IL_00a1:  call       valuetype [Engine]Engine.ReadOnlyList`1<string> Game.CharacterSkinsManager::get_CharacterSkinsNames()
    IL_00a6:  stloc.0
    IL_00a7:  ldloca.s   V_0
    IL_00a9:  ldc.i4.0
    IL_00aa:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<string>::get_Item(int32)
    IL_00af:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string,
                                                                                                         !!0)
    IL_00b4:  call       instance void Game.PlayerData::set_CharacterSkinName(string)
    IL_00b9:  ldarg.0
    IL_00ba:  ldarg.1
    IL_00bb:  ldstr      "InputDevice"
    IL_00c0:  ldarg.0
    IL_00c1:  call       instance valuetype Game.WidgetInputDevice Game.PlayerData::get_InputDevice()
    IL_00c6:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype Game.WidgetInputDevice>(string,
                                                                                                                                   !!0)
    IL_00cb:  call       instance void Game.PlayerData::set_InputDevice(valuetype Game.WidgetInputDevice)
    IL_00d0:  ret
  } // end of method PlayerData::Load

  .method public hidebysig instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       154 (0x9a)
    .maxstack  3
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "SpawnPosition"
    IL_0006:  ldarg.0
    IL_0007:  call       instance valuetype [Engine]Engine.Vector3 Game.PlayerData::get_SpawnPosition()
    IL_000c:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype [Engine]Engine.Vector3>(string,
                                                                                                                                    !!0)
    IL_0011:  ldarg.1
    IL_0012:  ldstr      "FirstSpawnTime"
    IL_0017:  ldarg.0
    IL_0018:  call       instance float64 Game.PlayerData::get_FirstSpawnTime()
    IL_001d:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float64>(string,
                                                                                                           !!0)
    IL_0022:  ldarg.1
    IL_0023:  ldstr      "LastSpawnTime"
    IL_0028:  ldarg.0
    IL_0029:  call       instance float64 Game.PlayerData::get_LastSpawnTime()
    IL_002e:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float64>(string,
                                                                                                           !!0)
    IL_0033:  ldarg.1
    IL_0034:  ldstr      "SpawnsCount"
    IL_0039:  ldarg.0
    IL_003a:  call       instance int32 Game.PlayerData::get_SpawnsCount()
    IL_003f:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<int32>(string,
                                                                                                         !!0)
    IL_0044:  ldarg.1
    IL_0045:  ldstr      "Name"
    IL_004a:  ldarg.0
    IL_004b:  call       instance string Game.PlayerData::get_Name()
    IL_0050:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                          !!0)
    IL_0055:  ldarg.1
    IL_0056:  ldstr      "PlayerClass"
    IL_005b:  ldarg.0
    IL_005c:  call       instance valuetype Game.PlayerClass Game.PlayerData::get_PlayerClass()
    IL_0061:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype Game.PlayerClass>(string,
                                                                                                                              !!0)
    IL_0066:  ldarg.1
    IL_0067:  ldstr      "Level"
    IL_006c:  ldarg.0
    IL_006d:  call       instance float32 Game.PlayerData::get_Level()
    IL_0072:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float32>(string,
                                                                                                           !!0)
    IL_0077:  ldarg.1
    IL_0078:  ldstr      "CharacterSkinName"
    IL_007d:  ldarg.0
    IL_007e:  call       instance string Game.PlayerData::get_CharacterSkinName()
    IL_0083:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                          !!0)
    IL_0088:  ldarg.1
    IL_0089:  ldstr      "InputDevice"
    IL_008e:  ldarg.0
    IL_008f:  call       instance valuetype Game.WidgetInputDevice Game.PlayerData::get_InputDevice()
    IL_0094:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype Game.WidgetInputDevice>(string,
                                                                                                                                    !!0)
    IL_0099:  ret
  } // end of method PlayerData::Save

  .method public hidebysig instance void 
          OnEntityAdded(class [EntitySystem]GameEntitySystem.Entity entity) cil managed
  {
    // 代码大小       143 (0x8f)
    .maxstack  5
    .locals init (class Game.ComponentPlayer V_0)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPlayer>()
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  brfalse    IL_008e

    IL_000d:  ldloc.0
    IL_000e:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_0013:  ldarg.0
    IL_0014:  bne.un.s   IL_008e

    IL_0016:  ldarg.0
    IL_0017:  call       instance class Game.ComponentPlayer Game.PlayerData::get_ComponentPlayer()
    IL_001c:  brfalse.s  IL_0042

    IL_001e:  ldstr      "More than 1 player with PlayerIndex {0} added to w"
    + "orld."
    IL_0023:  ldc.i4.1
    IL_0024:  newarr     [System.Runtime]System.Object
    IL_0029:  dup
    IL_002a:  ldc.i4.0
    IL_002b:  ldarg.0
    IL_002c:  call       instance int32 Game.PlayerData::get_PlayerIndex()
    IL_0031:  box        [System.Runtime]System.Int32
    IL_0036:  stelem.ref
    IL_0037:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_003c:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0041:  throw

    IL_0042:  ldarg.0
    IL_0043:  ldloc.0
    IL_0044:  call       instance void Game.PlayerData::set_ComponentPlayer(class Game.ComponentPlayer)
    IL_0049:  ldarg.0
    IL_004a:  call       instance class Game.View Game.PlayerData::get_View()
    IL_004f:  ldarg.0
    IL_0050:  call       instance class Game.View Game.PlayerData::get_View()
    IL_0055:  ldc.i4.1
    IL_0056:  callvirt   instance !!0 Game.View::FindCamera<class Game.FppCamera>(bool)
    IL_005b:  callvirt   instance void Game.View::set_ActiveCamera(class Game.Camera)
    IL_0060:  ldarg.0
    IL_0061:  call       instance class Game.View Game.PlayerData::get_View()
    IL_0066:  ldloc.0
    IL_0067:  callvirt   instance void Game.View::set_Target(class Game.ComponentCreature)
    IL_006c:  ldarg.0
    IL_006d:  call       instance float64 Game.PlayerData::get_FirstSpawnTime()
    IL_0072:  ldc.r8     0.0
    IL_007b:  bge.un.s   IL_008e

    IL_007d:  ldarg.0
    IL_007e:  ldarg.0
    IL_007f:  ldfld      class Game.SubsystemGameInfo Game.PlayerData::m_subsystemGameInfo
    IL_0084:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_0089:  call       instance void Game.PlayerData::set_FirstSpawnTime(float64)
    IL_008e:  ret
  } // end of method PlayerData::OnEntityAdded

  .method public hidebysig instance void 
          OnEntityRemoved(class [EntitySystem]GameEntitySystem.Entity entity) cil managed
  {
    // 代码大小       42 (0x2a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.ComponentPlayer Game.PlayerData::get_ComponentPlayer()
    IL_0006:  brfalse.s  IL_0029

    IL_0008:  ldarg.1
    IL_0009:  ldarg.0
    IL_000a:  call       instance class Game.ComponentPlayer Game.PlayerData::get_ComponentPlayer()
    IL_000f:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0014:  bne.un.s   IL_0029

    IL_0016:  ldarg.0
    IL_0017:  ldnull
    IL_0018:  call       instance void Game.PlayerData::set_ComponentPlayer(class Game.ComponentPlayer)
    IL_001d:  ldarg.0
    IL_001e:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.PlayerData::m_playerDeathTime
    IL_0023:  initobj    valuetype [System.Runtime]System.Nullable`1<float64>
    IL_0029:  ret
  } // end of method PlayerData::OnEntityRemoved

  .method private hidebysig instance valuetype [Engine]Engine.Vector3 
          FindIntroSpawnPosition(valuetype [Engine]Engine.Vector2 desiredSpawnPosition) cil managed
  {
    // 代码大小       188 (0xbc)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Vector2 V_0,
             float32 V_1,
             float32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             float32 V_7)
    IL_0000:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0005:  stloc.0
    IL_0006:  ldc.r4     -3.4028235e+038
    IL_000b:  stloc.1
    IL_000c:  ldc.i4.s   -30
    IL_000e:  stloc.3
    IL_000f:  br.s       IL_0068

    IL_0011:  ldc.i4.s   -30
    IL_0013:  stloc.s    V_4
    IL_0015:  br.s       IL_005e

    IL_0017:  ldarg.1
    IL_0018:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_001d:  call       int32 Game.Terrain::ToCell(float32)
    IL_0022:  ldloc.3
    IL_0023:  add
    IL_0024:  stloc.s    V_5
    IL_0026:  ldarg.1
    IL_0027:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_002c:  call       int32 Game.Terrain::ToCell(float32)
    IL_0031:  ldloc.s    V_4
    IL_0033:  add
    IL_0034:  stloc.s    V_6
    IL_0036:  ldarg.0
    IL_0037:  ldarg.1
    IL_0038:  ldloc.s    V_5
    IL_003a:  ldloc.s    V_6
    IL_003c:  call       instance float32 Game.PlayerData::ScoreIntroSpawnPosition(valuetype [Engine]Engine.Vector2,
                                                                                   int32,
                                                                                   int32)
    IL_0041:  stloc.s    V_7
    IL_0043:  ldloc.s    V_7
    IL_0045:  ldloc.1
    IL_0046:  ble.un.s   IL_0058

    IL_0048:  ldloc.s    V_7
    IL_004a:  stloc.1
    IL_004b:  ldloca.s   V_0
    IL_004d:  ldloc.s    V_5
    IL_004f:  conv.r4
    IL_0050:  ldloc.s    V_6
    IL_0052:  conv.r4
    IL_0053:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0058:  ldloc.s    V_4
    IL_005a:  ldc.i4.2
    IL_005b:  add
    IL_005c:  stloc.s    V_4
    IL_005e:  ldloc.s    V_4
    IL_0060:  ldc.i4.s   30
    IL_0062:  ble.s      IL_0017

    IL_0064:  ldloc.3
    IL_0065:  ldc.i4.2
    IL_0066:  add
    IL_0067:  stloc.3
    IL_0068:  ldloc.3
    IL_0069:  ldc.i4.s   30
    IL_006b:  ble.s      IL_0011

    IL_006d:  ldarg.0
    IL_006e:  ldfld      class Game.SubsystemTerrain Game.PlayerData::m_subsystemTerrain
    IL_0073:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0078:  ldloc.0
    IL_0079:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_007e:  call       int32 Game.Terrain::ToCell(float32)
    IL_0083:  ldloc.0
    IL_0084:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0089:  call       int32 Game.Terrain::ToCell(float32)
    IL_008e:  callvirt   instance int32 Game.Terrain::CalculateTopmostCellHeight(int32,
                                                                                 int32)
    IL_0093:  ldc.i4.1
    IL_0094:  add
    IL_0095:  conv.r4
    IL_0096:  stloc.2
    IL_0097:  ldloc.0
    IL_0098:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_009d:  ldc.r4     0.5
    IL_00a2:  add
    IL_00a3:  ldloc.2
    IL_00a4:  ldc.r4     9.9999998e-003
    IL_00a9:  add
    IL_00aa:  ldloc.0
    IL_00ab:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00b0:  ldc.r4     0.5
    IL_00b5:  add
    IL_00b6:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00bb:  ret
  } // end of method PlayerData::FindIntroSpawnPosition

  .method private hidebysig instance valuetype [Engine]Engine.Vector3 
          FindNoIntroSpawnPosition(valuetype [Engine]Engine.Vector3 desiredSpawnPosition,
                                   bool respawn) cil managed
  {
    // 代码大小       182 (0xb6)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             float32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             float32 V_8)
    IL_0000:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0005:  stloc.0
    IL_0006:  ldc.r4     -3.4028235e+038
    IL_000b:  stloc.1
    IL_000c:  ldc.i4.s   -8
    IL_000e:  stloc.2
    IL_000f:  br.s       IL_0088

    IL_0011:  ldc.i4.s   -8
    IL_0013:  stloc.3
    IL_0014:  br.s       IL_0080

    IL_0016:  ldc.i4.s   -8
    IL_0018:  stloc.s    V_4
    IL_001a:  br.s       IL_0077

    IL_001c:  ldarg.1
    IL_001d:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0022:  call       int32 Game.Terrain::ToCell(float32)
    IL_0027:  ldloc.2
    IL_0028:  add
    IL_0029:  stloc.s    V_5
    IL_002b:  ldarg.1
    IL_002c:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0031:  call       int32 Game.Terrain::ToCell(float32)
    IL_0036:  ldloc.3
    IL_0037:  add
    IL_0038:  stloc.s    V_6
    IL_003a:  ldarg.1
    IL_003b:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0040:  call       int32 Game.Terrain::ToCell(float32)
    IL_0045:  ldloc.s    V_4
    IL_0047:  add
    IL_0048:  stloc.s    V_7
    IL_004a:  ldarg.0
    IL_004b:  ldarg.1
    IL_004c:  ldloc.s    V_5
    IL_004e:  ldloc.s    V_6
    IL_0050:  ldloc.s    V_7
    IL_0052:  call       instance float32 Game.PlayerData::ScoreNoIntroSpawnPosition(valuetype [Engine]Engine.Vector3,
                                                                                     int32,
                                                                                     int32,
                                                                                     int32)
    IL_0057:  stloc.s    V_8
    IL_0059:  ldloc.s    V_8
    IL_005b:  ldloc.1
    IL_005c:  ble.un.s   IL_0071

    IL_005e:  ldloc.s    V_8
    IL_0060:  stloc.1
    IL_0061:  ldloca.s   V_0
    IL_0063:  ldloc.s    V_5
    IL_0065:  conv.r4
    IL_0066:  ldloc.s    V_6
    IL_0068:  conv.r4
    IL_0069:  ldloc.s    V_7
    IL_006b:  conv.r4
    IL_006c:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0071:  ldloc.s    V_4
    IL_0073:  ldc.i4.1
    IL_0074:  add
    IL_0075:  stloc.s    V_4
    IL_0077:  ldloc.s    V_4
    IL_0079:  ldc.i4.8
    IL_007a:  ble.s      IL_001c

    IL_007c:  ldloc.3
    IL_007d:  ldc.i4.1
    IL_007e:  add
    IL_007f:  stloc.3
    IL_0080:  ldloc.3
    IL_0081:  ldc.i4.8
    IL_0082:  ble.s      IL_0016

    IL_0084:  ldloc.2
    IL_0085:  ldc.i4.1
    IL_0086:  add
    IL_0087:  stloc.2
    IL_0088:  ldloc.2
    IL_0089:  ldc.i4.8
    IL_008a:  ble.s      IL_0011

    IL_008c:  ldloc.0
    IL_008d:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0092:  ldc.r4     0.5
    IL_0097:  add
    IL_0098:  ldloc.0
    IL_0099:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_009e:  ldc.r4     9.9999998e-003
    IL_00a3:  add
    IL_00a4:  ldloc.0
    IL_00a5:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00aa:  ldc.r4     0.5
    IL_00af:  add
    IL_00b0:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00b5:  ret
  } // end of method PlayerData::FindNoIntroSpawnPosition

  .method private hidebysig instance float32 
          ScoreIntroSpawnPosition(valuetype [Engine]Engine.Vector2 desiredSpawnPosition,
                                  int32 x,
                                  int32 z) cil managed
  {
    // 代码大小       449 (0x1c1)
    .maxstack  7
    .locals init (float32 V_0,
             int32 V_1,
             int32 V_2,
             valuetype [Engine]Engine.Vector2 V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             valuetype [Engine]Engine.Vector3 V_8,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_9,
             valuetype Game.CellFace V_10,
             int32 V_11)
    IL_0000:  ldc.r4     -9.9999998e-003
    IL_0005:  ldarg.2
    IL_0006:  conv.r4
    IL_0007:  ldarg.3
    IL_0008:  conv.r4
    IL_0009:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_000e:  ldarg.1
    IL_000f:  call       float32 [Engine]Engine.Vector2::Distance(valuetype [Engine]Engine.Vector2,
                                                                  valuetype [Engine]Engine.Vector2)
    IL_0014:  mul
    IL_0015:  stloc.0
    IL_0016:  ldarg.0
    IL_0017:  ldfld      class Game.SubsystemTerrain Game.PlayerData::m_subsystemTerrain
    IL_001c:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0021:  ldarg.2
    IL_0022:  ldarg.3
    IL_0023:  callvirt   instance int32 Game.Terrain::CalculateTopmostCellHeight(int32,
                                                                                 int32)
    IL_0028:  stloc.1
    IL_0029:  ldloc.1
    IL_002a:  ldc.i4.s   64
    IL_002c:  blt.s      IL_0033

    IL_002e:  ldloc.1
    IL_002f:  ldc.i4.s   85
    IL_0031:  ble.s      IL_003b

    IL_0033:  ldloc.0
    IL_0034:  ldc.r4     5.
    IL_0039:  sub
    IL_003a:  stloc.0
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemTerrain Game.PlayerData::m_subsystemTerrain
    IL_0041:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0046:  ldarg.2
    IL_0047:  ldarg.3
    IL_0048:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_004d:  ldc.i4.8
    IL_004e:  bge.s      IL_0058

    IL_0050:  ldloc.0
    IL_0051:  ldc.r4     5.
    IL_0056:  sub
    IL_0057:  stloc.0
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemTerrain Game.PlayerData::m_subsystemTerrain
    IL_005e:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0063:  ldarg.2
    IL_0064:  ldloc.1
    IL_0065:  ldarg.3
    IL_0066:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_006b:  stloc.2
    IL_006c:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0071:  ldloc.2
    IL_0072:  ldelem.ref
    IL_0073:  ldfld      bool Game.Block::IsTransparent
    IL_0078:  brfalse.s  IL_0082

    IL_007a:  ldloc.0
    IL_007b:  ldc.r4     5.
    IL_0080:  sub
    IL_0081:  stloc.0
    IL_0082:  ldarg.2
    IL_0083:  ldc.i4.1
    IL_0084:  sub
    IL_0085:  stloc.s    V_5
    IL_0087:  br.s       IL_00c4

    IL_0089:  ldarg.3
    IL_008a:  ldc.i4.1
    IL_008b:  sub
    IL_008c:  stloc.s    V_6
    IL_008e:  br.s       IL_00b7

    IL_0090:  ldarg.0
    IL_0091:  ldfld      class Game.SubsystemTerrain Game.PlayerData::m_subsystemTerrain
    IL_0096:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_009b:  ldloc.s    V_5
    IL_009d:  ldloc.1
    IL_009e:  ldc.i4.2
    IL_009f:  add
    IL_00a0:  ldloc.s    V_6
    IL_00a2:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_00a7:  brfalse.s  IL_00b1

    IL_00a9:  ldloc.0
    IL_00aa:  ldc.r4     1.
    IL_00af:  sub
    IL_00b0:  stloc.0
    IL_00b1:  ldloc.s    V_6
    IL_00b3:  ldc.i4.1
    IL_00b4:  add
    IL_00b5:  stloc.s    V_6
    IL_00b7:  ldloc.s    V_6
    IL_00b9:  ldarg.3
    IL_00ba:  ldc.i4.1
    IL_00bb:  add
    IL_00bc:  ble.s      IL_0090

    IL_00be:  ldloc.s    V_5
    IL_00c0:  ldc.i4.1
    IL_00c1:  add
    IL_00c2:  stloc.s    V_5
    IL_00c4:  ldloc.s    V_5
    IL_00c6:  ldarg.2
    IL_00c7:  ldc.i4.1
    IL_00c8:  add
    IL_00c9:  ble.s      IL_0089

    IL_00cb:  ldarg.0
    IL_00cc:  ldfld      class Game.SubsystemTerrain Game.PlayerData::m_subsystemTerrain
    IL_00d1:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_00d6:  ldarg.2
    IL_00d7:  conv.r4
    IL_00d8:  ldarg.3
    IL_00d9:  conv.r4
    IL_00da:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00df:  call       valuetype [Engine]Engine.Vector2 Game.ComponentIntro::FindOceanDirection(class Game.ITerrainContentsGenerator,
                                                                                                  valuetype [Engine]Engine.Vector2)
    IL_00e4:  stloc.3
    IL_00e5:  ldloca.s   V_4
    IL_00e7:  ldarg.2
    IL_00e8:  conv.r4
    IL_00e9:  ldloc.1
    IL_00ea:  conv.r4
    IL_00eb:  ldc.r4     1.5
    IL_00f0:  add
    IL_00f1:  ldarg.3
    IL_00f2:  conv.r4
    IL_00f3:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00f8:  ldc.i4.m1
    IL_00f9:  stloc.s    V_7
    IL_00fb:  br         IL_01b7

    IL_0100:  ldloc.s    V_4
    IL_0102:  ldc.r4     30.
    IL_0107:  ldloc.3
    IL_0108:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_010d:  mul
    IL_010e:  ldc.r4     5.
    IL_0113:  ldloc.s    V_7
    IL_0115:  conv.r4
    IL_0116:  mul
    IL_0117:  ldc.r4     30.
    IL_011c:  ldloc.3
    IL_011d:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0122:  mul
    IL_0123:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0128:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_012d:  stloc.s    V_8
    IL_012f:  ldarg.0
    IL_0130:  ldfld      class Game.SubsystemTerrain Game.PlayerData::m_subsystemTerrain
    IL_0135:  ldloc.s    V_4
    IL_0137:  ldloc.s    V_8
    IL_0139:  ldc.i4.0
    IL_013a:  ldc.i4.1
    IL_013b:  ldsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.PlayerData/'<>c'::'<>9__81_0'
    IL_0140:  dup
    IL_0141:  brtrue.s   IL_015a

    IL_0143:  pop
    IL_0144:  ldsfld     class Game.PlayerData/'<>c' Game.PlayerData/'<>c'::'<>9'
    IL_0149:  ldftn      instance bool Game.PlayerData/'<>c'::'<ScoreIntroSpawnPosition>b__81_0'(int32,
                                                                                                 float32)
    IL_014f:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                      native int)
    IL_0154:  dup
    IL_0155:  stsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.PlayerData/'<>c'::'<>9__81_0'
    IL_015a:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                                                  bool,
                                                                                                                                                  bool,
                                                                                                                                                  class [System.Runtime]System.Func`3<int32,float32,bool>)
    IL_015f:  stloc.s    V_9
    IL_0161:  ldloca.s   V_9
    IL_0163:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_0168:  brfalse.s  IL_01b1

    IL_016a:  ldloca.s   V_9
    IL_016c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_0171:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0176:  stloc.s    V_10
    IL_0178:  ldarg.0
    IL_0179:  ldfld      class Game.SubsystemTerrain Game.PlayerData::m_subsystemTerrain
    IL_017e:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0183:  ldloc.s    V_10
    IL_0185:  ldfld      int32 Game.CellFace::X
    IL_018a:  ldloc.s    V_10
    IL_018c:  ldfld      int32 Game.CellFace::Y
    IL_0191:  ldloc.s    V_10
    IL_0193:  ldfld      int32 Game.CellFace::Z
    IL_0198:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_019d:  stloc.s    V_11
    IL_019f:  ldloc.s    V_11
    IL_01a1:  ldc.i4.s   18
    IL_01a3:  beq.s      IL_01b1

    IL_01a5:  ldloc.s    V_11
    IL_01a7:  brfalse.s  IL_01b1

    IL_01a9:  ldloc.0
    IL_01aa:  ldc.r4     2.
    IL_01af:  sub
    IL_01b0:  stloc.0
    IL_01b1:  ldloc.s    V_7
    IL_01b3:  ldc.i4.1
    IL_01b4:  add
    IL_01b5:  stloc.s    V_7
    IL_01b7:  ldloc.s    V_7
    IL_01b9:  ldc.i4.1
    IL_01ba:  ble        IL_0100

    IL_01bf:  ldloc.0
    IL_01c0:  ret
  } // end of method PlayerData::ScoreIntroSpawnPosition

  .method private hidebysig instance float32 
          ScoreNoIntroSpawnPosition(valuetype [Engine]Engine.Vector3 desiredSpawnPosition,
                                    int32 x,
                                    int32 y,
                                    int32 z) cil managed
  {
    // 代码大小       297 (0x129)
    .maxstack  6
    .locals init (float32 V_0,
             class Game.Block V_1,
             class Game.Block V_2,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.PlayerData> V_3,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> V_4,
             class Game.PlayerData V_5)
    IL_0000:  ldc.r4     -9.9999998e-003
    IL_0005:  ldarg.2
    IL_0006:  conv.r4
    IL_0007:  ldarg.3
    IL_0008:  conv.r4
    IL_0009:  ldarg.s    z
    IL_000b:  conv.r4
    IL_000c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0011:  ldarg.1
    IL_0012:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_0017:  mul
    IL_0018:  stloc.0
    IL_0019:  ldarg.3
    IL_001a:  ldc.i4.1
    IL_001b:  blt.s      IL_0022

    IL_001d:  ldarg.3
    IL_001e:  ldc.i4.s   127
    IL_0020:  blt.s      IL_002a

    IL_0022:  ldloc.0
    IL_0023:  ldc.r4     100.
    IL_0028:  sub
    IL_0029:  stloc.0
    IL_002a:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_002f:  ldarg.0
    IL_0030:  ldfld      class Game.SubsystemTerrain Game.PlayerData::m_subsystemTerrain
    IL_0035:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_003a:  ldarg.2
    IL_003b:  ldarg.3
    IL_003c:  ldc.i4.1
    IL_003d:  sub
    IL_003e:  ldarg.s    z
    IL_0040:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_0045:  ldelem.ref
    IL_0046:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_004b:  ldarg.0
    IL_004c:  ldfld      class Game.SubsystemTerrain Game.PlayerData::m_subsystemTerrain
    IL_0051:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0056:  ldarg.2
    IL_0057:  ldarg.3
    IL_0058:  ldarg.s    z
    IL_005a:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_005f:  ldelem.ref
    IL_0060:  stloc.1
    IL_0061:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0066:  ldarg.0
    IL_0067:  ldfld      class Game.SubsystemTerrain Game.PlayerData::m_subsystemTerrain
    IL_006c:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0071:  ldarg.2
    IL_0072:  ldarg.3
    IL_0073:  ldc.i4.1
    IL_0074:  add
    IL_0075:  ldarg.s    z
    IL_0077:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_007c:  ldelem.ref
    IL_007d:  stloc.2
    IL_007e:  dup
    IL_007f:  ldfld      bool Game.Block::IsTransparent
    IL_0084:  brfalse.s  IL_008e

    IL_0086:  ldloc.0
    IL_0087:  ldc.r4     10.
    IL_008c:  sub
    IL_008d:  stloc.0
    IL_008e:  ldfld      bool Game.Block::IsCollidable
    IL_0093:  brtrue.s   IL_009d

    IL_0095:  ldloc.0
    IL_0096:  ldc.r4     10.
    IL_009b:  sub
    IL_009c:  stloc.0
    IL_009d:  ldloc.1
    IL_009e:  ldfld      bool Game.Block::IsCollidable
    IL_00a3:  brfalse.s  IL_00ad

    IL_00a5:  ldloc.0
    IL_00a6:  ldc.r4     10.
    IL_00ab:  sub
    IL_00ac:  stloc.0
    IL_00ad:  ldloc.2
    IL_00ae:  ldfld      bool Game.Block::IsCollidable
    IL_00b3:  brfalse.s  IL_00bd

    IL_00b5:  ldloc.0
    IL_00b6:  ldc.r4     10.
    IL_00bb:  sub
    IL_00bc:  stloc.0
    IL_00bd:  ldarg.0
    IL_00be:  call       instance class Game.SubsystemPlayers Game.PlayerData::get_SubsystemPlayers()
    IL_00c3:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> Game.SubsystemPlayers::get_PlayersData()
    IL_00c8:  stloc.s    V_4
    IL_00ca:  ldloca.s   V_4
    IL_00cc:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData>::GetEnumerator()
    IL_00d1:  stloc.3
    .try
    {
      IL_00d2:  br.s       IL_010e

      IL_00d4:  ldloca.s   V_3
      IL_00d6:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.PlayerData>::get_Current()
      IL_00db:  stloc.s    V_5
      IL_00dd:  ldloc.s    V_5
      IL_00df:  ldarg.0
      IL_00e0:  beq.s      IL_010e

      IL_00e2:  ldloc.s    V_5
      IL_00e4:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.PlayerData::get_SpawnPosition()
      IL_00e9:  ldarg.2
      IL_00ea:  conv.r4
      IL_00eb:  ldarg.3
      IL_00ec:  conv.r4
      IL_00ed:  ldarg.s    z
      IL_00ef:  conv.r4
      IL_00f0:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_00f5:  call       float32 [Engine]Engine.Vector3::DistanceSquared(valuetype [Engine]Engine.Vector3,
                                                                           valuetype [Engine]Engine.Vector3)
      IL_00fa:  ldc.r4     2.
      IL_00ff:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
      IL_0104:  bge.un.s   IL_010e

      IL_0106:  ldloc.0
      IL_0107:  ldc.r4     1.
      IL_010c:  sub
      IL_010d:  stloc.0
      IL_010e:  ldloca.s   V_3
      IL_0110:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.PlayerData>::MoveNext()
      IL_0115:  brtrue.s   IL_00d4

      IL_0117:  leave.s    IL_0127

    }  // end .try
    finally
    {
      IL_0119:  ldloca.s   V_3
      IL_011b:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.PlayerData>
      IL_0121:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0126:  endfinally
    }  // end handler
    IL_0127:  ldloc.0
    IL_0128:  ret
  } // end of method PlayerData::ScoreNoIntroSpawnPosition

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
    IL_0022:  ldfld      class Game.SubsystemTerrain Game.PlayerData::m_subsystemTerrain
    IL_0027:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_002c:  ldarg.1
    IL_002d:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0032:  ldloc.3
    IL_0033:  ldarg.1
    IL_0034:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0039:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
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
  } // end of method PlayerData::CheckIsPointInWater

  .method private hidebysig instance void 
          SpawnPlayer(valuetype [Engine]Engine.Vector3 position,
                      valuetype Game.PlayerData/SpawnMode spawnMode) cil managed
  {
    // 代码大小       1224 (0x4c8)
    .maxstack  10
    .locals init (class Game.ComponentMount V_0,
             string V_1,
             string V_2,
             string V_3,
             string V_4,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_5,
             valuetype [Engine]Engine.Vector2 V_6,
             string V_7,
             class [EntitySystem]GameEntitySystem.Entity V_8,
             class [EntitySystem]GameEntitySystem.Entity V_9,
             int32 V_10)
    IL_0000:  ldnull
    IL_0001:  stloc.0
    IL_0002:  ldarg.2
    IL_0003:  ldc.i4.2
    IL_0004:  beq        IL_008c

    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  call       valuetype [Engine]Engine.Point3 Game.Terrain::ToCell(valuetype [Engine]Engine.Vector3)
    IL_0010:  call       instance bool Game.PlayerData::CheckIsPointInWater(valuetype [Engine]Engine.Point3)
    IL_0015:  brfalse.s  IL_008c

    IL_0017:  ldarg.0
    IL_0018:  ldfld      class [EntitySystem]GameEntitySystem.Project Game.PlayerData::m_project
    IL_001d:  ldstr      "Boat"
    IL_0022:  ldc.i4.1
    IL_0023:  call       class [EntitySystem]GameEntitySystem.Entity Game.DatabaseManager::CreateEntity(class [EntitySystem]GameEntitySystem.Project,
                                                                                                        string,
                                                                                                        bool)
    IL_0028:  stloc.s    V_9
    IL_002a:  ldloc.s    V_9
    IL_002c:  ldc.i4.1
    IL_002d:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentBody>(bool)
    IL_0032:  ldarg.1
    IL_0033:  callvirt   instance void Game.ComponentFrame::set_Position(valuetype [Engine]Engine.Vector3)
    IL_0038:  ldloc.s    V_9
    IL_003a:  ldc.i4.1
    IL_003b:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentBody>(bool)
    IL_0040:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0045:  ldc.r4     45.
    IL_004a:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_004f:  call       valuetype [Engine]Engine.Quaternion [Engine]Engine.Quaternion::CreateFromAxisAngle(valuetype [Engine]Engine.Vector3,
                                                                                                            float32)
    IL_0054:  callvirt   instance void Game.ComponentFrame::set_Rotation(valuetype [Engine]Engine.Quaternion)
    IL_0059:  ldloc.s    V_9
    IL_005b:  ldc.i4.1
    IL_005c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentMount>(bool)
    IL_0061:  stloc.0
    IL_0062:  ldarg.0
    IL_0063:  ldfld      class [EntitySystem]GameEntitySystem.Project Game.PlayerData::m_project
    IL_0068:  ldloc.s    V_9
    IL_006a:  callvirt   instance void [EntitySystem]GameEntitySystem.Project::AddEntity(class [EntitySystem]GameEntitySystem.Entity)
    IL_006f:  ldarga.s   position
    IL_0071:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_0076:  dup
    IL_0077:  ldind.r4
    IL_0078:  ldloc.s    V_9
    IL_007a:  ldc.i4.1
    IL_007b:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentBody>(bool)
    IL_0080:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_0085:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_008a:  add
    IL_008b:  stind.r4
    IL_008c:  ldstr      ""
    IL_0091:  stloc.1
    IL_0092:  ldstr      ""
    IL_0097:  stloc.2
    IL_0098:  ldstr      ""
    IL_009d:  stloc.3
    IL_009e:  ldstr      ""
    IL_00a3:  stloc.s    V_4
    IL_00a5:  ldarg.2
    IL_00a6:  ldc.i4.2
    IL_00a7:  beq        IL_0377

    IL_00ac:  ldarg.0
    IL_00ad:  call       instance valuetype Game.PlayerClass Game.PlayerData::get_PlayerClass()
    IL_00b2:  ldc.i4.1
    IL_00b3:  bne.un     IL_0214

    IL_00b8:  ldarg.0
    IL_00b9:  call       instance string Game.PlayerData::get_CharacterSkinName()
    IL_00be:  call       bool Game.CharacterSkinsManager::IsBuiltIn(string)
    IL_00c3:  brfalse.s  IL_0111

    IL_00c5:  ldarg.0
    IL_00c6:  call       instance string Game.PlayerData::get_CharacterSkinName()
    IL_00cb:  ldstr      "2"
    IL_00d0:  callvirt   instance bool [System.Runtime]System.String::Contains(string)
    IL_00d5:  brfalse.s  IL_0111

    IL_00d7:  ldstr      ""
    IL_00dc:  stloc.1
    IL_00dd:  ldc.i4.s   37
    IL_00df:  ldc.i4.2
    IL_00e0:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_00e5:  stloc.2
    IL_00e6:  ldc.i4.s   16
    IL_00e8:  ldc.i4.s   14
    IL_00ea:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_00ef:  stloc.3
    IL_00f0:  ldc.i4.s   26
    IL_00f2:  ldc.i4.6
    IL_00f3:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_00f8:  ldstr      ";"
    IL_00fd:  ldc.i4.s   27
    IL_00ff:  ldc.i4.0
    IL_0100:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_0105:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_010a:  stloc.s    V_4
    IL_010c:  br         IL_0377

    IL_0111:  ldarg.0
    IL_0112:  call       instance string Game.PlayerData::get_CharacterSkinName()
    IL_0117:  call       bool Game.CharacterSkinsManager::IsBuiltIn(string)
    IL_011c:  brfalse.s  IL_016c

    IL_011e:  ldarg.0
    IL_011f:  call       instance string Game.PlayerData::get_CharacterSkinName()
    IL_0124:  ldstr      "3"
    IL_0129:  callvirt   instance bool [System.Runtime]System.String::Contains(string)
    IL_012e:  brfalse.s  IL_016c

    IL_0130:  ldc.i4.s   31
    IL_0132:  ldc.i4.0
    IL_0133:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_0138:  stloc.1
    IL_0139:  ldc.i4.s   13
    IL_013b:  ldc.i4.7
    IL_013c:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_0141:  ldstr      ";"
    IL_0146:  ldc.i4.5
    IL_0147:  ldc.i4.0
    IL_0148:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_014d:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_0152:  stloc.2
    IL_0153:  ldc.i4.s   17
    IL_0155:  ldc.i4.s   15
    IL_0157:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_015c:  stloc.3
    IL_015d:  ldc.i4.s   29
    IL_015f:  ldc.i4.0
    IL_0160:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_0165:  stloc.s    V_4
    IL_0167:  br         IL_0377

    IL_016c:  ldarg.0
    IL_016d:  call       instance string Game.PlayerData::get_CharacterSkinName()
    IL_0172:  call       bool Game.CharacterSkinsManager::IsBuiltIn(string)
    IL_0177:  brfalse.s  IL_01c6

    IL_0179:  ldarg.0
    IL_017a:  call       instance string Game.PlayerData::get_CharacterSkinName()
    IL_017f:  ldstr      "4"
    IL_0184:  callvirt   instance bool [System.Runtime]System.String::Contains(string)
    IL_0189:  brfalse.s  IL_01c6

    IL_018b:  ldc.i4.s   30
    IL_018d:  ldc.i4.7
    IL_018e:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_0193:  stloc.1
    IL_0194:  ldc.i4.s   14
    IL_0196:  ldc.i4.6
    IL_0197:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_019c:  stloc.2
    IL_019d:  ldc.i4.s   25
    IL_019f:  ldc.i4.7
    IL_01a0:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_01a5:  stloc.3
    IL_01a6:  ldc.i4.s   26
    IL_01a8:  ldc.i4.6
    IL_01a9:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_01ae:  ldstr      ";"
    IL_01b3:  ldc.i4.8
    IL_01b4:  ldc.i4.0
    IL_01b5:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_01ba:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_01bf:  stloc.s    V_4
    IL_01c1:  br         IL_0377

    IL_01c6:  ldc.i4.s   30
    IL_01c8:  ldc.i4.s   12
    IL_01ca:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_01cf:  stloc.1
    IL_01d0:  ldc.i4.s   37
    IL_01d2:  ldc.i4.3
    IL_01d3:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_01d8:  ldstr      ";"
    IL_01dd:  ldc.i4.1
    IL_01de:  ldc.i4.3
    IL_01df:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_01e4:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_01e9:  stloc.2
    IL_01ea:  ldc.i4.0
    IL_01eb:  ldc.i4.s   12
    IL_01ed:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_01f2:  stloc.3
    IL_01f3:  ldc.i4.s   26
    IL_01f5:  ldc.i4.6
    IL_01f6:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_01fb:  ldstr      ";"
    IL_0200:  ldc.i4.s   29
    IL_0202:  ldc.i4.0
    IL_0203:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_0208:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_020d:  stloc.s    V_4
    IL_020f:  br         IL_0377

    IL_0214:  ldarg.0
    IL_0215:  call       instance string Game.PlayerData::get_CharacterSkinName()
    IL_021a:  call       bool Game.CharacterSkinsManager::IsBuiltIn(string)
    IL_021f:  brfalse.s  IL_027d

    IL_0221:  ldarg.0
    IL_0222:  call       instance string Game.PlayerData::get_CharacterSkinName()
    IL_0227:  ldstr      "2"
    IL_022c:  callvirt   instance bool [System.Runtime]System.String::Contains(string)
    IL_0231:  brfalse.s  IL_027d

    IL_0233:  ldstr      ""
    IL_0238:  stloc.1
    IL_0239:  ldc.i4.s   13
    IL_023b:  ldc.i4.0
    IL_023c:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_0241:  ldstr      ";"
    IL_0246:  ldc.i4.5
    IL_0247:  ldc.i4.0
    IL_0248:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_024d:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_0252:  stloc.2
    IL_0253:  ldc.i4.s   25
    IL_0255:  ldc.i4.8
    IL_0256:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_025b:  stloc.3
    IL_025c:  ldc.i4.s   26
    IL_025e:  ldc.i4.6
    IL_025f:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_0264:  ldstr      ";"
    IL_0269:  ldc.i4.s   29
    IL_026b:  ldc.i4.0
    IL_026c:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_0271:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_0276:  stloc.s    V_4
    IL_0278:  br         IL_0377

    IL_027d:  ldarg.0
    IL_027e:  call       instance string Game.PlayerData::get_CharacterSkinName()
    IL_0283:  call       bool Game.CharacterSkinsManager::IsBuiltIn(string)
    IL_0288:  brfalse.s  IL_02d7

    IL_028a:  ldarg.0
    IL_028b:  call       instance string Game.PlayerData::get_CharacterSkinName()
    IL_0290:  ldstr      "3"
    IL_0295:  callvirt   instance bool [System.Runtime]System.String::Contains(string)
    IL_029a:  brfalse.s  IL_02d7

    IL_029c:  ldc.i4.s   32
    IL_029e:  ldc.i4.0
    IL_029f:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_02a4:  stloc.1
    IL_02a5:  ldc.i4.s   37
    IL_02a7:  ldc.i4.5
    IL_02a8:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_02ad:  stloc.2
    IL_02ae:  ldc.i4.0
    IL_02af:  ldc.i4.s   15
    IL_02b1:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_02b6:  stloc.3
    IL_02b7:  ldc.i4.s   26
    IL_02b9:  ldc.i4.6
    IL_02ba:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_02bf:  ldstr      ";"
    IL_02c4:  ldc.i4.8
    IL_02c5:  ldc.i4.0
    IL_02c6:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_02cb:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_02d0:  stloc.s    V_4
    IL_02d2:  br         IL_0377

    IL_02d7:  ldarg.0
    IL_02d8:  call       instance string Game.PlayerData::get_CharacterSkinName()
    IL_02dd:  call       bool Game.CharacterSkinsManager::IsBuiltIn(string)
    IL_02e2:  brfalse.s  IL_032e

    IL_02e4:  ldarg.0
    IL_02e5:  call       instance string Game.PlayerData::get_CharacterSkinName()
    IL_02ea:  ldstr      "4"
    IL_02ef:  callvirt   instance bool [System.Runtime]System.String::Contains(string)
    IL_02f4:  brfalse.s  IL_032e

    IL_02f6:  ldc.i4.s   31
    IL_02f8:  ldc.i4.0
    IL_02f9:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_02fe:  stloc.1
    IL_02ff:  ldc.i4.s   15
    IL_0301:  ldc.i4.s   14
    IL_0303:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_0308:  stloc.2
    IL_0309:  ldc.i4.0
    IL_030a:  ldc.i4.0
    IL_030b:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_0310:  stloc.3
    IL_0311:  ldc.i4.s   26
    IL_0313:  ldc.i4.6
    IL_0314:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_0319:  ldstr      ";"
    IL_031e:  ldc.i4.8
    IL_031f:  ldc.i4.0
    IL_0320:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_0325:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_032a:  stloc.s    V_4
    IL_032c:  br.s       IL_0377

    IL_032e:  ldc.i4.s   32
    IL_0330:  ldc.i4.0
    IL_0331:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_0336:  stloc.1
    IL_0337:  ldc.i4.s   37
    IL_0339:  ldc.i4.0
    IL_033a:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_033f:  ldstr      ";"
    IL_0344:  ldc.i4.1
    IL_0345:  ldc.i4.s   9
    IL_0347:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_034c:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_0351:  stloc.2
    IL_0352:  ldc.i4.0
    IL_0353:  ldc.i4.s   12
    IL_0355:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_035a:  stloc.3
    IL_035b:  ldc.i4.s   26
    IL_035d:  ldc.i4.6
    IL_035e:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_0363:  ldstr      ";"
    IL_0368:  ldc.i4.s   29
    IL_036a:  ldc.i4.0
    IL_036b:  call       string Game.PlayerData::MakeClothingValue(int32,
                                                                   int32)
    IL_0370:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_0375:  stloc.s    V_4
    IL_0377:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
    IL_037c:  dup
    IL_037d:  ldstr      "Player"
    IL_0382:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
    IL_0387:  dup
    IL_0388:  ldstr      "PlayerIndex"
    IL_038d:  ldarg.0
    IL_038e:  call       instance int32 Game.PlayerData::get_PlayerIndex()
    IL_0393:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::Add<int32>(string,
                                                                                                    !!0)
    IL_0398:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::Add<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                     !!0)
    IL_039d:  dup
    IL_039e:  ldstr      "Intro"
    IL_03a3:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
    IL_03a8:  dup
    IL_03a9:  ldstr      "PlayIntro"
    IL_03ae:  ldarg.2
    IL_03af:  ldc.i4.0
    IL_03b0:  ceq
    IL_03b2:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::Add<bool>(string,
                                                                                                   !!0)
    IL_03b7:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::Add<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                     !!0)
    IL_03bc:  dup
    IL_03bd:  ldstr      "Clothing"
    IL_03c2:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
    IL_03c7:  dup
    IL_03c8:  ldstr      "Clothes"
    IL_03cd:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
    IL_03d2:  dup
    IL_03d3:  ldstr      "Feet"
    IL_03d8:  ldloc.s    V_4
    IL_03da:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::Add<string>(string,
                                                                                                     !!0)
    IL_03df:  dup
    IL_03e0:  ldstr      "Legs"
    IL_03e5:  ldloc.3
    IL_03e6:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::Add<string>(string,
                                                                                                     !!0)
    IL_03eb:  dup
    IL_03ec:  ldstr      "Torso"
    IL_03f1:  ldloc.2
    IL_03f2:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::Add<string>(string,
                                                                                                     !!0)
    IL_03f7:  dup
    IL_03f8:  ldstr      "Head"
    IL_03fd:  ldloc.1
    IL_03fe:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::Add<string>(string,
                                                                                                     !!0)
    IL_0403:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::Add<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                     !!0)
    IL_0408:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::Add<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                     !!0)
    IL_040d:  stloc.s    V_5
    IL_040f:  ldarg.0
    IL_0410:  ldfld      class Game.SubsystemTerrain Game.PlayerData::m_subsystemTerrain
    IL_0415:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_041a:  ldarga.s   position
    IL_041c:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XZ()
    IL_0421:  call       valuetype [Engine]Engine.Vector2 Game.ComponentIntro::FindOceanDirection(class Game.ITerrainContentsGenerator,
                                                                                                  valuetype [Engine]Engine.Vector2)
    IL_0426:  stloc.s    V_6
    IL_0428:  ldarg.0
    IL_0429:  call       instance valuetype Game.PlayerClass Game.PlayerData::get_PlayerClass()
    IL_042e:  brfalse.s  IL_0437

    IL_0430:  ldstr      "FemalePlayer"
    IL_0435:  br.s       IL_043c

    IL_0437:  ldstr      "MalePlayer"
    IL_043c:  stloc.s    V_7
    IL_043e:  ldarg.0
    IL_043f:  ldfld      class [EntitySystem]GameEntitySystem.Project Game.PlayerData::m_project
    IL_0444:  ldloc.s    V_7
    IL_0446:  ldloc.s    V_5
    IL_0448:  ldc.i4.1
    IL_0449:  call       class [EntitySystem]GameEntitySystem.Entity Game.DatabaseManager::CreateEntity(class [EntitySystem]GameEntitySystem.Project,
                                                                                                        string,
                                                                                                        class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                                                                        bool)
    IL_044e:  stloc.s    V_8
    IL_0450:  ldloc.s    V_8
    IL_0452:  ldc.i4.1
    IL_0453:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentBody>(bool)
    IL_0458:  ldarg.1
    IL_0459:  callvirt   instance void Game.ComponentFrame::set_Position(valuetype [Engine]Engine.Vector3)
    IL_045e:  ldloc.s    V_8
    IL_0460:  ldc.i4.1
    IL_0461:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentBody>(bool)
    IL_0466:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_046b:  ldloc.s    V_6
    IL_046d:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::UnitY
    IL_0472:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_UnaryNegation(valuetype [Engine]Engine.Vector2)
    IL_0477:  call       float32 [Engine]Engine.Vector2::Angle(valuetype [Engine]Engine.Vector2,
                                                               valuetype [Engine]Engine.Vector2)
    IL_047c:  call       valuetype [Engine]Engine.Quaternion [Engine]Engine.Quaternion::CreateFromAxisAngle(valuetype [Engine]Engine.Vector3,
                                                                                                            float32)
    IL_0481:  callvirt   instance void Game.ComponentFrame::set_Rotation(valuetype [Engine]Engine.Quaternion)
    IL_0486:  ldarg.0
    IL_0487:  ldfld      class [EntitySystem]GameEntitySystem.Project Game.PlayerData::m_project
    IL_048c:  ldloc.s    V_8
    IL_048e:  callvirt   instance void [EntitySystem]GameEntitySystem.Project::AddEntity(class [EntitySystem]GameEntitySystem.Entity)
    IL_0493:  ldloc.0
    IL_0494:  brfalse.s  IL_04a4

    IL_0496:  ldloc.s    V_8
    IL_0498:  ldc.i4.1
    IL_0499:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentRider>(bool)
    IL_049e:  ldloc.0
    IL_049f:  callvirt   instance void Game.ComponentRider::StartMounting(class Game.ComponentMount)
    IL_04a4:  ldarg.0
    IL_04a5:  ldarg.0
    IL_04a6:  ldfld      class Game.SubsystemGameInfo Game.PlayerData::m_subsystemGameInfo
    IL_04ab:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_04b0:  call       instance void Game.PlayerData::set_LastSpawnTime(float64)
    IL_04b5:  ldarg.0
    IL_04b6:  call       instance int32 Game.PlayerData::get_SpawnsCount()
    IL_04bb:  ldc.i4.1
    IL_04bc:  add
    IL_04bd:  stloc.s    V_10
    IL_04bf:  ldarg.0
    IL_04c0:  ldloc.s    V_10
    IL_04c2:  call       instance void Game.PlayerData::set_SpawnsCount(int32)
    IL_04c7:  ret
  } // end of method PlayerData::SpawnPlayer

  .method public hidebysig instance string 
          GetEntityTemplateName() cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype Game.PlayerClass Game.PlayerData::get_PlayerClass()
    IL_0006:  brfalse.s  IL_000e

    IL_0008:  ldstr      "FemalePlayer"
    IL_000d:  ret

    IL_000e:  ldstr      "MalePlayer"
    IL_0013:  ret
  } // end of method PlayerData::GetEntityTemplateName

  .method private hidebysig instance void 
          UpdateSpawnDialog(string largeMessage,
                            string smallMessage,
                            float32 progress,
                            bool resetProgress) cil managed
  {
    // 代码大小       122 (0x7a)
    .maxstack  3
    IL_0000:  ldarg.s    resetProgress
    IL_0002:  brfalse.s  IL_000f

    IL_0004:  ldarg.0
    IL_0005:  ldc.r4     0.0
    IL_000a:  stfld      float32 Game.PlayerData::m_progress
    IL_000f:  ldarg.0
    IL_0010:  ldarg.3
    IL_0011:  ldarg.0
    IL_0012:  ldfld      float32 Game.PlayerData::m_progress
    IL_0017:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_001c:  stfld      float32 Game.PlayerData::m_progress
    IL_0021:  ldarg.0
    IL_0022:  ldfld      class Game.SpawnDialog Game.PlayerData::m_spawnDialog
    IL_0027:  brtrue.s   IL_004a

    IL_0029:  ldarg.0
    IL_002a:  newobj     instance void Game.SpawnDialog::.ctor()
    IL_002f:  stfld      class Game.SpawnDialog Game.PlayerData::m_spawnDialog
    IL_0034:  ldarg.0
    IL_0035:  call       instance class Game.View Game.PlayerData::get_View()
    IL_003a:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_003f:  ldarg.0
    IL_0040:  ldfld      class Game.SpawnDialog Game.PlayerData::m_spawnDialog
    IL_0045:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_004a:  ldarg.1
    IL_004b:  brfalse.s  IL_0059

    IL_004d:  ldarg.0
    IL_004e:  ldfld      class Game.SpawnDialog Game.PlayerData::m_spawnDialog
    IL_0053:  ldarg.1
    IL_0054:  callvirt   instance void Game.SpawnDialog::set_LargeMessage(string)
    IL_0059:  ldarg.2
    IL_005a:  brfalse.s  IL_0068

    IL_005c:  ldarg.0
    IL_005d:  ldfld      class Game.SpawnDialog Game.PlayerData::m_spawnDialog
    IL_0062:  ldarg.2
    IL_0063:  callvirt   instance void Game.SpawnDialog::set_SmallMessage(string)
    IL_0068:  ldarg.0
    IL_0069:  ldfld      class Game.SpawnDialog Game.PlayerData::m_spawnDialog
    IL_006e:  ldarg.0
    IL_006f:  ldfld      float32 Game.PlayerData::m_progress
    IL_0074:  callvirt   instance void Game.SpawnDialog::set_Progress(float32)
    IL_0079:  ret
  } // end of method PlayerData::UpdateSpawnDialog

  .method private hidebysig instance void 
          HideSpawnDialog() cil managed
  {
    // 代码大小       27 (0x1b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SpawnDialog Game.PlayerData::m_spawnDialog
    IL_0006:  brfalse.s  IL_001a

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.SpawnDialog Game.PlayerData::m_spawnDialog
    IL_000e:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_0013:  ldarg.0
    IL_0014:  ldnull
    IL_0015:  stfld      class Game.SpawnDialog Game.PlayerData::m_spawnDialog
    IL_001a:  ret
  } // end of method PlayerData::HideSpawnDialog

  .method private hidebysig static string 
          MakeClothingValue(int32 index,
                            int32 color) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  4
    .locals init (int32 V_0)
    IL_0000:  ldc.i4     0xcb
    IL_0005:  ldc.i4.0
    IL_0006:  ldc.i4.0
    IL_0007:  ldarg.1
    IL_0008:  call       int32 Game.ClothingBlock::SetClothingColor(int32,
                                                                    int32)
    IL_000d:  ldarg.0
    IL_000e:  call       int32 Game.ClothingBlock::SetClothingIndex(int32,
                                                                    int32)
    IL_0013:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0018:  stloc.0
    IL_0019:  ldloca.s   V_0
    IL_001b:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_0020:  call       instance string [System.Runtime]System.Int32::ToString(class [System.Runtime]System.IFormatProvider)
    IL_0025:  ret
  } // end of method PlayerData::MakeClothingValue

  .method private hidebysig instance bool 
          '<.ctor>b__15_0'(valuetype Game.WidgetInputDevice d) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       47 (0x2f)
    .maxstack  3
    .locals init (class Game.PlayerData/'<>c__DisplayClass15_0' V_0)
    IL_0000:  newobj     instance void Game.PlayerData/'<>c__DisplayClass15_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      valuetype Game.WidgetInputDevice Game.PlayerData/'<>c__DisplayClass15_0'::d
    IL_000d:  ldarg.0
    IL_000e:  call       instance class Game.SubsystemPlayers Game.PlayerData::get_SubsystemPlayers()
    IL_0013:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> Game.SubsystemPlayers::get_PlayersData()
    IL_0018:  box        valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData>
    IL_001d:  ldloc.0
    IL_001e:  ldftn      instance bool Game.PlayerData/'<>c__DisplayClass15_0'::'<.ctor>b__1'(class Game.PlayerData)
    IL_0024:  newobj     instance void class [System.Runtime]System.Func`2<class Game.PlayerData,bool>::.ctor(object,
                                                                                                              native int)
    IL_0029:  call       bool [System.Linq]System.Linq.Enumerable::All<class Game.PlayerData>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                              class [System.Runtime]System.Func`2<!!0,bool>)
    IL_002e:  ret
  } // end of method PlayerData::'<.ctor>b__15_0'

  .method private hidebysig instance void 
          '<.ctor>b__15_2'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       99 (0x63)
    .maxstack  6
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.ComponentPlayer Game.PlayerData::get_ComponentPlayer()
    IL_0006:  brfalse.s  IL_0052

    IL_0008:  ldarg.0
    IL_0009:  ldstr      "Spawning {0} (Level {1})"
    IL_000e:  ldc.i4.2
    IL_000f:  newarr     [System.Runtime]System.Object
    IL_0014:  dup
    IL_0015:  ldc.i4.0
    IL_0016:  ldarg.0
    IL_0017:  call       instance string Game.PlayerData::get_Name()
    IL_001c:  stelem.ref
    IL_001d:  dup
    IL_001e:  ldc.i4.1
    IL_001f:  ldarg.0
    IL_0020:  call       instance float32 Game.PlayerData::get_Level()
    IL_0025:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_002a:  box        [System.Runtime]System.Single
    IL_002f:  stelem.ref
    IL_0030:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0035:  ldnull
    IL_0036:  ldc.r4     0.0
    IL_003b:  ldc.i4.1
    IL_003c:  call       instance void Game.PlayerData::UpdateSpawnDialog(string,
                                                                          string,
                                                                          float32,
                                                                          bool)
    IL_0041:  ldarg.0
    IL_0042:  ldfld      class Game.StateMachine Game.PlayerData::m_stateMachine
    IL_0047:  ldstr      "WaitForTerrain"
    IL_004c:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0051:  ret

    IL_0052:  ldarg.0
    IL_0053:  ldfld      class Game.StateMachine Game.PlayerData::m_stateMachine
    IL_0058:  ldstr      "PrepareSpawn"
    IL_005d:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0062:  ret
  } // end of method PlayerData::'<.ctor>b__15_2'

  .method private hidebysig instance void 
          '<.ctor>b__15_3'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       431 (0x1af)
    .maxstack  6
    .locals init (class Game.PlayerData V_0,
             valuetype [Engine]Engine.Vector3 V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [Engine]Engine.Vector3 Game.PlayerData::get_SpawnPosition()
    IL_0006:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_000b:  call       bool [Engine]Engine.Vector3::op_Equality(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_0010:  brfalse    IL_00ed

    IL_0015:  ldarg.0
    IL_0016:  call       instance class Game.SubsystemPlayers Game.PlayerData::get_SubsystemPlayers()
    IL_001b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemPlayers::get_GlobalSpawnPosition()
    IL_0020:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0025:  call       bool [Engine]Engine.Vector3::op_Equality(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_002a:  brfalse    IL_00d3

    IL_002f:  ldarg.0
    IL_0030:  call       instance class Game.SubsystemPlayers Game.PlayerData::get_SubsystemPlayers()
    IL_0035:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> Game.SubsystemPlayers::get_PlayersData()
    IL_003a:  box        valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData>
    IL_003f:  ldsfld     class [System.Runtime]System.Func`2<class Game.PlayerData,bool> Game.PlayerData/'<>c'::'<>9__15_4'
    IL_0044:  dup
    IL_0045:  brtrue.s   IL_005e

    IL_0047:  pop
    IL_0048:  ldsfld     class Game.PlayerData/'<>c' Game.PlayerData/'<>c'::'<>9'
    IL_004d:  ldftn      instance bool Game.PlayerData/'<>c'::'<.ctor>b__15_4'(class Game.PlayerData)
    IL_0053:  newobj     instance void class [System.Runtime]System.Func`2<class Game.PlayerData,bool>::.ctor(object,
                                                                                                              native int)
    IL_0058:  dup
    IL_0059:  stsfld     class [System.Runtime]System.Func`2<class Game.PlayerData,bool> Game.PlayerData/'<>c'::'<>9__15_4'
    IL_005e:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class Game.PlayerData>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                        class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0063:  stloc.0
    IL_0064:  ldloc.0
    IL_0065:  brfalse.s  IL_00a3

    IL_0067:  ldloc.0
    IL_0068:  callvirt   instance class Game.ComponentPlayer Game.PlayerData::get_ComponentPlayer()
    IL_006d:  brfalse.s  IL_008e

    IL_006f:  ldarg.0
    IL_0070:  ldloc.0
    IL_0071:  callvirt   instance class Game.ComponentPlayer Game.PlayerData::get_ComponentPlayer()
    IL_0076:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_007b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0080:  call       instance void Game.PlayerData::set_SpawnPosition(valuetype [Engine]Engine.Vector3)
    IL_0085:  ldarg.0
    IL_0086:  ldc.i4.1
    IL_0087:  stfld      valuetype Game.PlayerData/SpawnMode Game.PlayerData::m_spawnMode
    IL_008c:  br.s       IL_00c0

    IL_008e:  ldarg.0
    IL_008f:  ldloc.0
    IL_0090:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.PlayerData::get_SpawnPosition()
    IL_0095:  call       instance void Game.PlayerData::set_SpawnPosition(valuetype [Engine]Engine.Vector3)
    IL_009a:  ldarg.0
    IL_009b:  ldc.i4.1
    IL_009c:  stfld      valuetype Game.PlayerData/SpawnMode Game.PlayerData::m_spawnMode
    IL_00a1:  br.s       IL_00c0

    IL_00a3:  ldarg.0
    IL_00a4:  ldarg.0
    IL_00a5:  ldfld      class Game.SubsystemTerrain Game.PlayerData::m_subsystemTerrain
    IL_00aa:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_00af:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ITerrainContentsGenerator::FindCoarseSpawnPosition()
    IL_00b4:  call       instance void Game.PlayerData::set_SpawnPosition(valuetype [Engine]Engine.Vector3)
    IL_00b9:  ldarg.0
    IL_00ba:  ldc.i4.0
    IL_00bb:  stfld      valuetype Game.PlayerData/SpawnMode Game.PlayerData::m_spawnMode
    IL_00c0:  ldarg.0
    IL_00c1:  call       instance class Game.SubsystemPlayers Game.PlayerData::get_SubsystemPlayers()
    IL_00c6:  ldarg.0
    IL_00c7:  call       instance valuetype [Engine]Engine.Vector3 Game.PlayerData::get_SpawnPosition()
    IL_00cc:  callvirt   instance void Game.SubsystemPlayers::set_GlobalSpawnPosition(valuetype [Engine]Engine.Vector3)
    IL_00d1:  br.s       IL_00f4

    IL_00d3:  ldarg.0
    IL_00d4:  ldarg.0
    IL_00d5:  call       instance class Game.SubsystemPlayers Game.PlayerData::get_SubsystemPlayers()
    IL_00da:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemPlayers::get_GlobalSpawnPosition()
    IL_00df:  call       instance void Game.PlayerData::set_SpawnPosition(valuetype [Engine]Engine.Vector3)
    IL_00e4:  ldarg.0
    IL_00e5:  ldc.i4.1
    IL_00e6:  stfld      valuetype Game.PlayerData/SpawnMode Game.PlayerData::m_spawnMode
    IL_00eb:  br.s       IL_00f4

    IL_00ed:  ldarg.0
    IL_00ee:  ldc.i4.2
    IL_00ef:  stfld      valuetype Game.PlayerData/SpawnMode Game.PlayerData::m_spawnMode
    IL_00f4:  ldarg.0
    IL_00f5:  ldfld      valuetype Game.PlayerData/SpawnMode Game.PlayerData::m_spawnMode
    IL_00fa:  ldc.i4.2
    IL_00fb:  bne.un.s   IL_013c

    IL_00fd:  ldarg.0
    IL_00fe:  ldstr      "Respawning {0} (Level {1})"
    IL_0103:  ldc.i4.2
    IL_0104:  newarr     [System.Runtime]System.Object
    IL_0109:  dup
    IL_010a:  ldc.i4.0
    IL_010b:  ldarg.0
    IL_010c:  call       instance string Game.PlayerData::get_Name()
    IL_0111:  stelem.ref
    IL_0112:  dup
    IL_0113:  ldc.i4.1
    IL_0114:  ldarg.0
    IL_0115:  call       instance float32 Game.PlayerData::get_Level()
    IL_011a:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_011f:  box        [System.Runtime]System.Single
    IL_0124:  stelem.ref
    IL_0125:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_012a:  ldstr      "Your items will remain for a short time at the pla"
    + "ce of death."
    IL_012f:  ldc.r4     0.0
    IL_0134:  ldc.i4.1
    IL_0135:  call       instance void Game.PlayerData::UpdateSpawnDialog(string,
                                                                          string,
                                                                          float32,
                                                                          bool)
    IL_013a:  br.s       IL_0175

    IL_013c:  ldarg.0
    IL_013d:  ldstr      "Spawning {0} (Level {1})"
    IL_0142:  ldc.i4.2
    IL_0143:  newarr     [System.Runtime]System.Object
    IL_0148:  dup
    IL_0149:  ldc.i4.0
    IL_014a:  ldarg.0
    IL_014b:  call       instance string Game.PlayerData::get_Name()
    IL_0150:  stelem.ref
    IL_0151:  dup
    IL_0152:  ldc.i4.1
    IL_0153:  ldarg.0
    IL_0154:  call       instance float32 Game.PlayerData::get_Level()
    IL_0159:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_015e:  box        [System.Runtime]System.Single
    IL_0163:  stelem.ref
    IL_0164:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0169:  ldnull
    IL_016a:  ldc.r4     0.0
    IL_016f:  ldc.i4.1
    IL_0170:  call       instance void Game.PlayerData::UpdateSpawnDialog(string,
                                                                          string,
                                                                          float32,
                                                                          bool)
    IL_0175:  ldarg.0
    IL_0176:  ldfld      class Game.SubsystemTerrain Game.PlayerData::m_subsystemTerrain
    IL_017b:  callvirt   instance class Game.TerrainUpdater Game.SubsystemTerrain::get_TerrainUpdater()
    IL_0180:  ldarg.0
    IL_0181:  call       instance int32 Game.PlayerData::get_PlayerIndex()
    IL_0186:  ldarg.0
    IL_0187:  call       instance valuetype [Engine]Engine.Vector3 Game.PlayerData::get_SpawnPosition()
    IL_018c:  stloc.1
    IL_018d:  ldloca.s   V_1
    IL_018f:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XZ()
    IL_0194:  ldc.r4     0.0
    IL_0199:  ldc.r4     64.
    IL_019e:  callvirt   instance void Game.TerrainUpdater::SetUpdateLocation(int32,
                                                                              valuetype [Engine]Engine.Vector2,
                                                                              float32,
                                                                              float32)
    IL_01a3:  ldarg.0
    IL_01a4:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_01a9:  stfld      float64 Game.PlayerData::m_terrainWaitStartTime
    IL_01ae:  ret
  } // end of method PlayerData::'<.ctor>b__15_3'

  .method private hidebysig instance void 
          '<.ctor>b__15_5'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       232 (0xe8)
    .maxstack  5
    .locals init (float32 V_0,
             valuetype Game.PlayerData/SpawnMode V_1,
             valuetype [Engine]Engine.Vector3 V_2)
    IL_0000:  ldc.r8     0.10000000000000001
    IL_0009:  ldc.r8     0.0
    IL_0012:  call       bool [Engine]Engine.Time::PeriodicEvent(float64,
                                                                 float64)
    IL_0017:  brfalse.s  IL_006a

    IL_0019:  ldarg.0
    IL_001a:  ldfld      class Game.SubsystemTerrain Game.PlayerData::m_subsystemTerrain
    IL_001f:  callvirt   instance class Game.TerrainUpdater Game.SubsystemTerrain::get_TerrainUpdater()
    IL_0024:  ldarg.0
    IL_0025:  call       instance int32 Game.PlayerData::get_PlayerIndex()
    IL_002a:  ldc.r4     0.0
    IL_002f:  ldc.r4     64.
    IL_0034:  callvirt   instance float32 Game.TerrainUpdater::GetUpdateProgress(int32,
                                                                                 float32,
                                                                                 float32)
    IL_0039:  stloc.0
    IL_003a:  ldarg.0
    IL_003b:  ldnull
    IL_003c:  ldnull
    IL_003d:  ldc.r4     0.5
    IL_0042:  ldloc.0
    IL_0043:  mul
    IL_0044:  ldc.i4.0
    IL_0045:  call       instance void Game.PlayerData::UpdateSpawnDialog(string,
                                                                          string,
                                                                          float32,
                                                                          bool)
    IL_004a:  ldloc.0
    IL_004b:  ldc.r4     1.
    IL_0050:  bge.un.s   IL_006b

    IL_0052:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_0057:  ldarg.0
    IL_0058:  ldfld      float64 Game.PlayerData::m_terrainWaitStartTime
    IL_005d:  sub
    IL_005e:  ldc.r8     15.
    IL_0067:  bge.un.s   IL_006b

    IL_0069:  ret

    IL_006a:  ret

    IL_006b:  ldarg.0
    IL_006c:  ldfld      valuetype Game.PlayerData/SpawnMode Game.PlayerData::m_spawnMode
    IL_0071:  stloc.1
    IL_0072:  ldloc.1
    IL_0073:  switch     ( 
                          IL_0086,
                          IL_00a2,
                          IL_00b7)
    IL_0084:  br.s       IL_00cc

    IL_0086:  ldarg.0
    IL_0087:  ldarg.0
    IL_0088:  ldarg.0
    IL_0089:  call       instance valuetype [Engine]Engine.Vector3 Game.PlayerData::get_SpawnPosition()
    IL_008e:  stloc.2
    IL_008f:  ldloca.s   V_2
    IL_0091:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XZ()
    IL_0096:  call       instance valuetype [Engine]Engine.Vector3 Game.PlayerData::FindIntroSpawnPosition(valuetype [Engine]Engine.Vector2)
    IL_009b:  call       instance void Game.PlayerData::set_SpawnPosition(valuetype [Engine]Engine.Vector3)
    IL_00a0:  br.s       IL_00d7

    IL_00a2:  ldarg.0
    IL_00a3:  ldarg.0
    IL_00a4:  ldarg.0
    IL_00a5:  call       instance valuetype [Engine]Engine.Vector3 Game.PlayerData::get_SpawnPosition()
    IL_00aa:  ldc.i4.0
    IL_00ab:  call       instance valuetype [Engine]Engine.Vector3 Game.PlayerData::FindNoIntroSpawnPosition(valuetype [Engine]Engine.Vector3,
                                                                                                             bool)
    IL_00b0:  call       instance void Game.PlayerData::set_SpawnPosition(valuetype [Engine]Engine.Vector3)
    IL_00b5:  br.s       IL_00d7

    IL_00b7:  ldarg.0
    IL_00b8:  ldarg.0
    IL_00b9:  ldarg.0
    IL_00ba:  call       instance valuetype [Engine]Engine.Vector3 Game.PlayerData::get_SpawnPosition()
    IL_00bf:  ldc.i4.1
    IL_00c0:  call       instance valuetype [Engine]Engine.Vector3 Game.PlayerData::FindNoIntroSpawnPosition(valuetype [Engine]Engine.Vector3,
                                                                                                             bool)
    IL_00c5:  call       instance void Game.PlayerData::set_SpawnPosition(valuetype [Engine]Engine.Vector3)
    IL_00ca:  br.s       IL_00d7

    IL_00cc:  ldstr      "Invalid spawn mode."
    IL_00d1:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_00d6:  throw

    IL_00d7:  ldarg.0
    IL_00d8:  ldfld      class Game.StateMachine Game.PlayerData::m_stateMachine
    IL_00dd:  ldstr      "WaitForTerrain"
    IL_00e2:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_00e7:  ret
  } // end of method PlayerData::'<.ctor>b__15_5'

  .method private hidebysig instance void 
          '<.ctor>b__15_6'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       110 (0x6e)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Vector2 V_0,
             valuetype [Engine]Engine.Vector3 V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_0006:  stfld      float64 Game.PlayerData::m_terrainWaitStartTime
    IL_000b:  ldarg.0
    IL_000c:  call       instance class Game.ComponentPlayer Game.PlayerData::get_ComponentPlayer()
    IL_0011:  brtrue.s   IL_0023

    IL_0013:  ldarg.0
    IL_0014:  call       instance valuetype [Engine]Engine.Vector3 Game.PlayerData::get_SpawnPosition()
    IL_0019:  stloc.1
    IL_001a:  ldloca.s   V_1
    IL_001c:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XZ()
    IL_0021:  br.s       IL_003b

    IL_0023:  ldarg.0
    IL_0024:  call       instance class Game.ComponentPlayer Game.PlayerData::get_ComponentPlayer()
    IL_0029:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_002e:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0033:  stloc.1
    IL_0034:  ldloca.s   V_1
    IL_0036:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XZ()
    IL_003b:  stloc.0
    IL_003c:  ldarg.0
    IL_003d:  ldfld      class Game.SubsystemTerrain Game.PlayerData::m_subsystemTerrain
    IL_0042:  callvirt   instance class Game.TerrainUpdater Game.SubsystemTerrain::get_TerrainUpdater()
    IL_0047:  ldarg.0
    IL_0048:  call       instance int32 Game.PlayerData::get_PlayerIndex()
    IL_004d:  ldloc.0
    IL_004e:  ldarg.0
    IL_004f:  ldfld      class Game.SubsystemSky Game.PlayerData::m_subsystemSky
    IL_0054:  callvirt   instance float32 Game.SubsystemSky::get_VisibilityRange()
    IL_0059:  ldc.r4     64.
    IL_005e:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0063:  ldc.r4     0.0
    IL_0068:  callvirt   instance void Game.TerrainUpdater::SetUpdateLocation(int32,
                                                                              valuetype [Engine]Engine.Vector2,
                                                                              float32,
                                                                              float32)
    IL_006d:  ret
  } // end of method PlayerData::'<.ctor>b__15_6'

  .method private hidebysig instance void 
          '<.ctor>b__15_7'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       196 (0xc4)
    .maxstack  6
    .locals init (float32 V_0)
    IL_0000:  ldc.r8     0.10000000000000001
    IL_0009:  ldc.r8     0.0
    IL_0012:  call       bool [Engine]Engine.Time::PeriodicEvent(float64,
                                                                 float64)
    IL_0017:  brfalse    IL_00c3

    IL_001c:  ldarg.0
    IL_001d:  ldfld      class Game.SubsystemTerrain Game.PlayerData::m_subsystemTerrain
    IL_0022:  callvirt   instance class Game.TerrainUpdater Game.SubsystemTerrain::get_TerrainUpdater()
    IL_0027:  ldarg.0
    IL_0028:  call       instance int32 Game.PlayerData::get_PlayerIndex()
    IL_002d:  ldarg.0
    IL_002e:  ldfld      class Game.SubsystemSky Game.PlayerData::m_subsystemSky
    IL_0033:  callvirt   instance float32 Game.SubsystemSky::get_VisibilityRange()
    IL_0038:  ldc.r4     64.
    IL_003d:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0042:  ldc.r4     0.0
    IL_0047:  callvirt   instance float32 Game.TerrainUpdater::GetUpdateProgress(int32,
                                                                                 float32,
                                                                                 float32)
    IL_004c:  stloc.0
    IL_004d:  ldarg.0
    IL_004e:  ldnull
    IL_004f:  ldnull
    IL_0050:  ldc.r4     0.5
    IL_0055:  ldc.r4     0.5
    IL_005a:  ldloc.0
    IL_005b:  mul
    IL_005c:  add
    IL_005d:  ldc.i4.0
    IL_005e:  call       instance void Game.PlayerData::UpdateSpawnDialog(string,
                                                                          string,
                                                                          float32,
                                                                          bool)
    IL_0063:  ldloc.0
    IL_0064:  ldc.r4     1.
    IL_0069:  blt.un.s   IL_0082

    IL_006b:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_0070:  ldarg.0
    IL_0071:  ldfld      float64 Game.PlayerData::m_terrainWaitStartTime
    IL_0076:  sub
    IL_0077:  ldc.r8     2.
    IL_0080:  bgt.s      IL_0099

    IL_0082:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_0087:  ldarg.0
    IL_0088:  ldfld      float64 Game.PlayerData::m_terrainWaitStartTime
    IL_008d:  sub
    IL_008e:  ldc.r8     15.
    IL_0097:  blt.un.s   IL_00c3

    IL_0099:  ldarg.0
    IL_009a:  call       instance class Game.ComponentPlayer Game.PlayerData::get_ComponentPlayer()
    IL_009f:  brtrue.s   IL_00b3

    IL_00a1:  ldarg.0
    IL_00a2:  ldarg.0
    IL_00a3:  call       instance valuetype [Engine]Engine.Vector3 Game.PlayerData::get_SpawnPosition()
    IL_00a8:  ldarg.0
    IL_00a9:  ldfld      valuetype Game.PlayerData/SpawnMode Game.PlayerData::m_spawnMode
    IL_00ae:  call       instance void Game.PlayerData::SpawnPlayer(valuetype [Engine]Engine.Vector3,
                                                                    valuetype Game.PlayerData/SpawnMode)
    IL_00b3:  ldarg.0
    IL_00b4:  ldfld      class Game.StateMachine Game.PlayerData::m_stateMachine
    IL_00b9:  ldstr      "Playing"
    IL_00be:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_00c3:  ret
  } // end of method PlayerData::'<.ctor>b__15_7'

  .method private hidebysig instance void 
          '<.ctor>b__15_8'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.PlayerData::HideSpawnDialog()
    IL_0006:  ret
  } // end of method PlayerData::'<.ctor>b__15_8'

  .method private hidebysig instance void 
          '<.ctor>b__15_9'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       95 (0x5f)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.ComponentPlayer Game.PlayerData::get_ComponentPlayer()
    IL_0006:  brtrue.s   IL_0019

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.StateMachine Game.PlayerData::m_stateMachine
    IL_000e:  ldstr      "PrepareSpawn"
    IL_0013:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0018:  ret

    IL_0019:  ldarg.0
    IL_001a:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.PlayerData::m_playerDeathTime
    IL_001f:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_0024:  brfalse.s  IL_0037

    IL_0026:  ldarg.0
    IL_0027:  ldfld      class Game.StateMachine Game.PlayerData::m_stateMachine
    IL_002c:  ldstr      "PlayerDead"
    IL_0031:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0036:  ret

    IL_0037:  ldarg.0
    IL_0038:  call       instance class Game.ComponentPlayer Game.PlayerData::get_ComponentPlayer()
    IL_003d:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0042:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_0047:  ldc.r4     0.0
    IL_004c:  bgt.un.s   IL_005e

    IL_004e:  ldarg.0
    IL_004f:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0054:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_0059:  stfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.PlayerData::m_playerDeathTime
    IL_005e:  ret
  } // end of method PlayerData::'<.ctor>b__15_9'

  .method private hidebysig instance void 
          '<.ctor>b__15_10'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       366 (0x16e)
    .maxstack  7
    .locals init (string V_0,
             string V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.View Game.PlayerData::get_View()
    IL_0006:  ldarg.0
    IL_0007:  call       instance class Game.View Game.PlayerData::get_View()
    IL_000c:  ldc.i4.1
    IL_000d:  callvirt   instance !!0 Game.View::FindCamera<class Game.DeathCamera>(bool)
    IL_0012:  callvirt   instance void Game.View::set_ActiveCamera(class Game.Camera)
    IL_0017:  ldarg.0
    IL_0018:  call       instance class Game.ComponentPlayer Game.PlayerData::get_ComponentPlayer()
    IL_001d:  brfalse    IL_014c

    IL_0022:  ldarg.0
    IL_0023:  call       instance class Game.ComponentPlayer Game.PlayerData::get_ComponentPlayer()
    IL_0028:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_002d:  callvirt   instance string Game.ComponentHealth::get_CauseOfDeath()
    IL_0032:  stloc.0
    IL_0033:  ldloc.0
    IL_0034:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0039:  brfalse.s  IL_0041

    IL_003b:  ldstr      "Unknown"
    IL_0040:  stloc.0
    IL_0041:  ldstr      "Cause of death: {0}"
    IL_0046:  ldc.i4.1
    IL_0047:  newarr     [System.Runtime]System.Object
    IL_004c:  dup
    IL_004d:  ldc.i4.0
    IL_004e:  ldloc.0
    IL_004f:  stelem.ref
    IL_0050:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0055:  stloc.1
    IL_0056:  ldarg.0
    IL_0057:  ldfld      class Game.SubsystemGameInfo Game.PlayerData::m_subsystemGameInfo
    IL_005c:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0061:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_0066:  ldc.i4.3
    IL_0067:  bne.un.s   IL_00bf

    IL_0069:  ldarg.0
    IL_006a:  call       instance class Game.ComponentPlayer Game.PlayerData::get_ComponentPlayer()
    IL_006f:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0074:  ldstr      "YOU HAVE DIED"
    IL_0079:  ldstr      "{0}\n\nCannot respawn in \"{1}\" game mode"
    IL_007e:  ldc.i4.2
    IL_007f:  newarr     [System.Runtime]System.Object
    IL_0084:  dup
    IL_0085:  ldc.i4.0
    IL_0086:  ldloc.1
    IL_0087:  stelem.ref
    IL_0088:  dup
    IL_0089:  ldc.i4.1
    IL_008a:  ldarg.0
    IL_008b:  ldfld      class Game.SubsystemGameInfo Game.PlayerData::m_subsystemGameInfo
    IL_0090:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0095:  ldflda     valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_009a:  constrained. Game.GameMode
    IL_00a0:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_00a5:  stelem.ref
    IL_00a6:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00ab:  ldc.r4     30.
    IL_00b0:  ldc.r4     1.5
    IL_00b5:  callvirt   instance void Game.ComponentGui::DisplayLargeMessage(string,
                                                                              string,
                                                                              float32,
                                                                              float32)
    IL_00ba:  br         IL_014c

    IL_00bf:  ldarg.0
    IL_00c0:  ldfld      class Game.SubsystemGameInfo Game.PlayerData::m_subsystemGameInfo
    IL_00c5:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_00ca:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_00cf:  ldc.i4.4
    IL_00d0:  bne.un.s   IL_0119

    IL_00d2:  ldarg.0
    IL_00d3:  ldfld      class Game.SubsystemGameInfo Game.PlayerData::m_subsystemGameInfo
    IL_00d8:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_00dd:  ldfld      bool Game.WorldSettings::IsAdventureRespawnAllowed
    IL_00e2:  brtrue.s   IL_0119

    IL_00e4:  ldarg.0
    IL_00e5:  call       instance class Game.ComponentPlayer Game.PlayerData::get_ComponentPlayer()
    IL_00ea:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_00ef:  ldstr      "YOU HAVE DIED"
    IL_00f4:  ldstr      "{0}\n\nTap to restart adventure"
    IL_00f9:  ldc.i4.1
    IL_00fa:  newarr     [System.Runtime]System.Object
    IL_00ff:  dup
    IL_0100:  ldc.i4.0
    IL_0101:  ldloc.1
    IL_0102:  stelem.ref
    IL_0103:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0108:  ldc.r4     30.
    IL_010d:  ldc.r4     1.5
    IL_0112:  callvirt   instance void Game.ComponentGui::DisplayLargeMessage(string,
                                                                              string,
                                                                              float32,
                                                                              float32)
    IL_0117:  br.s       IL_014c

    IL_0119:  ldarg.0
    IL_011a:  call       instance class Game.ComponentPlayer Game.PlayerData::get_ComponentPlayer()
    IL_011f:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0124:  ldstr      "YOU HAVE DIED"
    IL_0129:  ldstr      "{0}\n\nTap to respawn"
    IL_012e:  ldc.i4.1
    IL_012f:  newarr     [System.Runtime]System.Object
    IL_0134:  dup
    IL_0135:  ldc.i4.0
    IL_0136:  ldloc.1
    IL_0137:  stelem.ref
    IL_0138:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_013d:  ldc.r4     30.
    IL_0142:  ldc.r4     1.5
    IL_0147:  callvirt   instance void Game.ComponentGui::DisplayLargeMessage(string,
                                                                              string,
                                                                              float32,
                                                                              float32)
    IL_014c:  ldarg.0
    IL_014d:  ldarg.0
    IL_014e:  call       instance float32 Game.PlayerData::get_Level()
    IL_0153:  ldc.r4     2.
    IL_0158:  div
    IL_0159:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_015e:  ldc.r4     1.
    IL_0163:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0168:  call       instance void Game.PlayerData::set_Level(float32)
    IL_016d:  ret
  } // end of method PlayerData::'<.ctor>b__15_10'

  .method private hidebysig instance void 
          '<.ctor>b__15_11'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       254 (0xfe)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.ComponentPlayer Game.PlayerData::get_ComponentPlayer()
    IL_0006:  brtrue.s   IL_0019

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.StateMachine Game.PlayerData::m_stateMachine
    IL_000e:  ldstr      "PrepareSpawn"
    IL_0013:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0018:  ret

    IL_0019:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_001e:  ldarg.0
    IL_001f:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.PlayerData::m_playerDeathTime
    IL_0024:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::get_Value()
    IL_0029:  sub
    IL_002a:  ldc.r8     1.5
    IL_0033:  ble.un     IL_00fd

    IL_0038:  ldarg.0
    IL_0039:  call       instance class Game.ComponentPlayer Game.PlayerData::get_ComponentPlayer()
    IL_003e:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_0043:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_0048:  call       bool Game.DialogsManager::HasDialogs(class Game.ContainerWidget)
    IL_004d:  brtrue     IL_00fd

    IL_0052:  ldarg.0
    IL_0053:  call       instance class Game.ComponentPlayer Game.PlayerData::get_ComponentPlayer()
    IL_0058:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_005d:  callvirt   instance class Game.WidgetInput Game.View::get_Input()
    IL_0062:  callvirt   instance bool Game.WidgetInput::get_Any()
    IL_0067:  brfalse    IL_00fd

    IL_006c:  ldarg.0
    IL_006d:  ldfld      class Game.SubsystemGameInfo Game.PlayerData::m_subsystemGameInfo
    IL_0072:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0077:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_007c:  ldc.i4.3
    IL_007d:  bne.un.s   IL_00a0

    IL_007f:  ldarg.0
    IL_0080:  call       instance class Game.ComponentPlayer Game.PlayerData::get_ComponentPlayer()
    IL_0085:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_008a:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_008f:  ldarg.0
    IL_0090:  call       instance class Game.ComponentPlayer Game.PlayerData::get_ComponentPlayer()
    IL_0095:  newobj     instance void Game.GameMenuDialog::.ctor(class Game.ComponentPlayer)
    IL_009a:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_009f:  ret

    IL_00a0:  ldarg.0
    IL_00a1:  ldfld      class Game.SubsystemGameInfo Game.PlayerData::m_subsystemGameInfo
    IL_00a6:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_00ab:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_00b0:  ldc.i4.4
    IL_00b1:  bne.un.s   IL_00e6

    IL_00b3:  ldarg.0
    IL_00b4:  ldfld      class Game.SubsystemGameInfo Game.PlayerData::m_subsystemGameInfo
    IL_00b9:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_00be:  ldfld      bool Game.WorldSettings::IsAdventureRespawnAllowed
    IL_00c3:  brtrue.s   IL_00e6

    IL_00c5:  ldstr      "GameLoading"
    IL_00ca:  ldc.i4.2
    IL_00cb:  newarr     [System.Runtime]System.Object
    IL_00d0:  dup
    IL_00d1:  ldc.i4.0
    IL_00d2:  call       class Game.WorldInfo Game.GameManager::get_WorldInfo()
    IL_00d7:  stelem.ref
    IL_00d8:  dup
    IL_00d9:  ldc.i4.1
    IL_00da:  ldstr      "AdventureRestart"
    IL_00df:  stelem.ref
    IL_00e0:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_00e5:  ret

    IL_00e6:  ldarg.0
    IL_00e7:  ldfld      class [EntitySystem]GameEntitySystem.Project Game.PlayerData::m_project
    IL_00ec:  ldarg.0
    IL_00ed:  call       instance class Game.ComponentPlayer Game.PlayerData::get_ComponentPlayer()
    IL_00f2:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_00f7:  ldc.i4.1
    IL_00f8:  callvirt   instance void [EntitySystem]GameEntitySystem.Project::RemoveEntity(class [EntitySystem]GameEntitySystem.Entity,
                                                                                            bool)
    IL_00fd:  ret
  } // end of method PlayerData::'<.ctor>b__15_11'

  .method private hidebysig instance bool 
          '<RandomizeCharacterSkin>b__71_0'(string n) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       44 (0x2c)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype Game.PlayerClass> V_0,
             valuetype Game.PlayerClass V_1)
    IL_0000:  ldarg.1
    IL_0001:  call       bool Game.CharacterSkinsManager::IsBuiltIn(string)
    IL_0006:  brfalse.s  IL_002a

    IL_0008:  ldarg.1
    IL_0009:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.PlayerClass> Game.CharacterSkinsManager::GetPlayerClass(string)
    IL_000e:  stloc.0
    IL_000f:  ldarg.0
    IL_0010:  ldfld      valuetype Game.PlayerClass Game.PlayerData::m_playerClass
    IL_0015:  stloc.1
    IL_0016:  ldloca.s   V_0
    IL_0018:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.PlayerClass>::GetValueOrDefault()
    IL_001d:  ldloc.1
    IL_001e:  beq.s      IL_0022

    IL_0020:  ldc.i4.0
    IL_0021:  ret

    IL_0022:  ldloca.s   V_0
    IL_0024:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.PlayerClass>::get_HasValue()
    IL_0029:  ret

    IL_002a:  ldc.i4.0
    IL_002b:  ret
  } // end of method PlayerData::'<RandomizeCharacterSkin>b__71_0'

  .property instance int32 PlayerIndex()
  {
    .get instance int32 Game.PlayerData::get_PlayerIndex()
    .set instance void Game.PlayerData::set_PlayerIndex(int32)
  } // end of property PlayerData::PlayerIndex
  .property instance class Game.SubsystemPlayers
          SubsystemPlayers()
  {
    .get instance class Game.SubsystemPlayers Game.PlayerData::get_SubsystemPlayers()
    .set instance void Game.PlayerData::set_SubsystemPlayers(class Game.SubsystemPlayers)
  } // end of property PlayerData::SubsystemPlayers
  .property instance class Game.ComponentPlayer
          ComponentPlayer()
  {
    .get instance class Game.ComponentPlayer Game.PlayerData::get_ComponentPlayer()
    .set instance void Game.PlayerData::set_ComponentPlayer(class Game.ComponentPlayer)
  } // end of property PlayerData::ComponentPlayer
  .property instance class Game.View View()
  {
    .get instance class Game.View Game.PlayerData::get_View()
  } // end of property PlayerData::View
  .property instance valuetype [Engine]Engine.Vector3
          SpawnPosition()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.PlayerData::get_SpawnPosition()
    .set instance void Game.PlayerData::set_SpawnPosition(valuetype [Engine]Engine.Vector3)
  } // end of property PlayerData::SpawnPosition
  .property instance float64 FirstSpawnTime()
  {
    .get instance float64 Game.PlayerData::get_FirstSpawnTime()
    .set instance void Game.PlayerData::set_FirstSpawnTime(float64)
  } // end of property PlayerData::FirstSpawnTime
  .property instance float64 LastSpawnTime()
  {
    .get instance float64 Game.PlayerData::get_LastSpawnTime()
    .set instance void Game.PlayerData::set_LastSpawnTime(float64)
  } // end of property PlayerData::LastSpawnTime
  .property instance int32 SpawnsCount()
  {
    .get instance int32 Game.PlayerData::get_SpawnsCount()
    .set instance void Game.PlayerData::set_SpawnsCount(int32)
  } // end of property PlayerData::SpawnsCount
  .property instance string Name()
  {
    .get instance string Game.PlayerData::get_Name()
    .set instance void Game.PlayerData::set_Name(string)
  } // end of property PlayerData::Name
  .property instance bool IsDefaultName()
  {
    .get instance bool Game.PlayerData::get_IsDefaultName()
    .set instance void Game.PlayerData::set_IsDefaultName(bool)
  } // end of property PlayerData::IsDefaultName
  .property instance valuetype Game.PlayerClass
          PlayerClass()
  {
    .get instance valuetype Game.PlayerClass Game.PlayerData::get_PlayerClass()
    .set instance void Game.PlayerData::set_PlayerClass(valuetype Game.PlayerClass)
  } // end of property PlayerData::PlayerClass
  .property instance float32 Level()
  {
    .get instance float32 Game.PlayerData::get_Level()
    .set instance void Game.PlayerData::set_Level(float32)
  } // end of property PlayerData::Level
  .property instance string CharacterSkinName()
  {
    .get instance string Game.PlayerData::get_CharacterSkinName()
    .set instance void Game.PlayerData::set_CharacterSkinName(string)
  } // end of property PlayerData::CharacterSkinName
  .property instance valuetype Game.WidgetInputDevice
          InputDevice()
  {
    .get instance valuetype Game.WidgetInputDevice Game.PlayerData::get_InputDevice()
    .set instance void Game.PlayerData::set_InputDevice(valuetype Game.WidgetInputDevice)
  } // end of property PlayerData::InputDevice
  .property instance bool IsReadyForPlaying()
  {
    .get instance bool Game.PlayerData::get_IsReadyForPlaying()
  } // end of property PlayerData::IsReadyForPlaying
} // end of class Game.PlayerData