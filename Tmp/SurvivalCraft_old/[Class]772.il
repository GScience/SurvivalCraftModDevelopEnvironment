.class public auto ansi beforefieldinit Game.SubsystemPlayers
       extends [EntitySystem]GameEntitySystem.Subsystem
       implements Game.IUpdateable
{
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.PlayerData> m_playersData
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentPlayer> m_componentPlayers
  .field private int32 m_nextPlayerIndex
  .field public static literal int32 MaxPlayers = int32(0x00000004)
  .field private class [System.Runtime]System.Action`1<class Game.PlayerData> PlayerAdded
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [System.Runtime]System.Action`1<class Game.PlayerData> PlayerRemoved
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Vector3 '<GlobalSpawnPosition>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance void 
          add_PlayerAdded(class [System.Runtime]System.Action`1<class Game.PlayerData> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<class Game.PlayerData> V_0,
             class [System.Runtime]System.Action`1<class Game.PlayerData> V_1,
             class [System.Runtime]System.Action`1<class Game.PlayerData> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<class Game.PlayerData> Game.SubsystemPlayers::PlayerAdded
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Combine(class [System.Runtime]System.Delegate,
                                                                                                        class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`1<class Game.PlayerData>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<class Game.PlayerData> Game.SubsystemPlayers::PlayerAdded
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<class Game.PlayerData>>(!!0&,
                                                                                                                                                           !!0,
                                                                                                                                                           !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method SubsystemPlayers::add_PlayerAdded

  .method public hidebysig specialname instance void 
          remove_PlayerAdded(class [System.Runtime]System.Action`1<class Game.PlayerData> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<class Game.PlayerData> V_0,
             class [System.Runtime]System.Action`1<class Game.PlayerData> V_1,
             class [System.Runtime]System.Action`1<class Game.PlayerData> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<class Game.PlayerData> Game.SubsystemPlayers::PlayerAdded
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Remove(class [System.Runtime]System.Delegate,
                                                                                                       class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`1<class Game.PlayerData>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<class Game.PlayerData> Game.SubsystemPlayers::PlayerAdded
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<class Game.PlayerData>>(!!0&,
                                                                                                                                                           !!0,
                                                                                                                                                           !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method SubsystemPlayers::remove_PlayerAdded

  .method public hidebysig specialname instance void 
          add_PlayerRemoved(class [System.Runtime]System.Action`1<class Game.PlayerData> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<class Game.PlayerData> V_0,
             class [System.Runtime]System.Action`1<class Game.PlayerData> V_1,
             class [System.Runtime]System.Action`1<class Game.PlayerData> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<class Game.PlayerData> Game.SubsystemPlayers::PlayerRemoved
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Combine(class [System.Runtime]System.Delegate,
                                                                                                        class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`1<class Game.PlayerData>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<class Game.PlayerData> Game.SubsystemPlayers::PlayerRemoved
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<class Game.PlayerData>>(!!0&,
                                                                                                                                                           !!0,
                                                                                                                                                           !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method SubsystemPlayers::add_PlayerRemoved

  .method public hidebysig specialname instance void 
          remove_PlayerRemoved(class [System.Runtime]System.Action`1<class Game.PlayerData> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<class Game.PlayerData> V_0,
             class [System.Runtime]System.Action`1<class Game.PlayerData> V_1,
             class [System.Runtime]System.Action`1<class Game.PlayerData> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<class Game.PlayerData> Game.SubsystemPlayers::PlayerRemoved
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Remove(class [System.Runtime]System.Delegate,
                                                                                                       class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`1<class Game.PlayerData>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<class Game.PlayerData> Game.SubsystemPlayers::PlayerRemoved
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<class Game.PlayerData>>(!!0&,
                                                                                                                                                           !!0,
                                                                                                                                                           !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method SubsystemPlayers::remove_PlayerRemoved

  .method public hidebysig specialname instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> 
          get_PlayersData() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.PlayerData> Game.SubsystemPlayers::m_playersData
    IL_0006:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData>::.ctor(class [System.Runtime]System.Collections.Generic.IList`1<!0>)
    IL_000b:  ret
  } // end of method SubsystemPlayers::get_PlayersData

  .method public hidebysig specialname instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.ComponentPlayer> 
          get_ComponentPlayers() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentPlayer> Game.SubsystemPlayers::m_componentPlayers
    IL_0006:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<class Game.ComponentPlayer>::.ctor(class [System.Runtime]System.Collections.Generic.IList`1<!0>)
    IL_000b:  ret
  } // end of method SubsystemPlayers::get_ComponentPlayers

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector3 
          get_GlobalSpawnPosition() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.SubsystemPlayers::'<GlobalSpawnPosition>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemPlayers::get_GlobalSpawnPosition

  .method public hidebysig specialname instance void 
          set_GlobalSpawnPosition(valuetype [Engine]Engine.Vector3 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector3 Game.SubsystemPlayers::'<GlobalSpawnPosition>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemPlayers::set_GlobalSpawnPosition

  .method public hidebysig instance bool 
          IsPlayer(class [EntitySystem]GameEntitySystem.Entity entity) cil managed
  {
    // 代码大小       64 (0x40)
    .maxstack  2
    .locals init (valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ComponentPlayer> V_0,
             class Game.ComponentPlayer V_1,
             bool V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentPlayer> Game.SubsystemPlayers::m_componentPlayers
    IL_0006:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentPlayer>::GetEnumerator()
    IL_000b:  stloc.0
    .try
    {
      IL_000c:  br.s       IL_0023

      IL_000e:  ldloca.s   V_0
      IL_0010:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ComponentPlayer>::get_Current()
      IL_0015:  stloc.1
      IL_0016:  ldarg.1
      IL_0017:  ldloc.1
      IL_0018:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
      IL_001d:  bne.un.s   IL_0023

      IL_001f:  ldc.i4.1
      IL_0020:  stloc.2
      IL_0021:  leave.s    IL_003e

      IL_0023:  ldloca.s   V_0
      IL_0025:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ComponentPlayer>::MoveNext()
      IL_002a:  brtrue.s   IL_000e

      IL_002c:  leave.s    IL_003c

    }  // end .try
    finally
    {
      IL_002e:  ldloca.s   V_0
      IL_0030:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ComponentPlayer>
      IL_0036:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_003b:  endfinally
    }  // end handler
    IL_003c:  ldc.i4.0
    IL_003d:  ret

    IL_003e:  ldloc.2
    IL_003f:  ret
  } // end of method SubsystemPlayers::IsPlayer

  .method public hidebysig instance class Game.ComponentPlayer 
          FindNearestPlayer(valuetype [Engine]Engine.Vector3 position) cil managed
  {
    // 代码大小       92 (0x5c)
    .maxstack  2
    .locals init (class Game.ComponentPlayer V_0,
             float32 V_1,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.ComponentPlayer> V_2,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.ComponentPlayer> V_3,
             class Game.ComponentPlayer V_4,
             float32 V_5)
    IL_0000:  ldnull
    IL_0001:  stloc.0
    IL_0002:  ldc.r4     3.4028235e+038
    IL_0007:  stloc.1
    IL_0008:  ldarg.0
    IL_0009:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.ComponentPlayer> Game.SubsystemPlayers::get_ComponentPlayers()
    IL_000e:  stloc.3
    IL_000f:  ldloca.s   V_3
    IL_0011:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.ComponentPlayer>::GetEnumerator()
    IL_0016:  stloc.2
    .try
    {
      IL_0017:  br.s       IL_0041

      IL_0019:  ldloca.s   V_2
      IL_001b:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.ComponentPlayer>::get_Current()
      IL_0020:  stloc.s    V_4
      IL_0022:  ldloc.s    V_4
      IL_0024:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
      IL_0029:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
      IL_002e:  ldarg.1
      IL_002f:  call       float32 [Engine]Engine.Vector3::DistanceSquared(valuetype [Engine]Engine.Vector3,
                                                                           valuetype [Engine]Engine.Vector3)
      IL_0034:  stloc.s    V_5
      IL_0036:  ldloc.s    V_5
      IL_0038:  ldloc.1
      IL_0039:  bge.un.s   IL_0041

      IL_003b:  ldloc.s    V_5
      IL_003d:  stloc.1
      IL_003e:  ldloc.s    V_4
      IL_0040:  stloc.0
      IL_0041:  ldloca.s   V_2
      IL_0043:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.ComponentPlayer>::MoveNext()
      IL_0048:  brtrue.s   IL_0019

      IL_004a:  leave.s    IL_005a

    }  // end .try
    finally
    {
      IL_004c:  ldloca.s   V_2
      IL_004e:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.ComponentPlayer>
      IL_0054:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0059:  endfinally
    }  // end handler
    IL_005a:  ldloc.0
    IL_005b:  ret
  } // end of method SubsystemPlayers::FindNearestPlayer

  .method public hidebysig instance void 
          AddPlayerData(class Game.PlayerData playerData) cil managed
  {
    // 代码大小       103 (0x67)
    .maxstack  4
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.PlayerData> Game.SubsystemPlayers::m_playersData
    IL_0006:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.PlayerData>::get_Count()
    IL_000b:  ldc.i4.4
    IL_000c:  blt.s      IL_0019

    IL_000e:  ldstr      "Too many players."
    IL_0013:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0018:  throw

    IL_0019:  ldarg.0
    IL_001a:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.PlayerData> Game.SubsystemPlayers::m_playersData
    IL_001f:  ldarg.1
    IL_0020:  callvirt   instance bool class [System.Collections]System.Collections.Generic.List`1<class Game.PlayerData>::Contains(!0)
    IL_0025:  brfalse.s  IL_0032

    IL_0027:  ldstr      "Player already added."
    IL_002c:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0031:  throw

    IL_0032:  ldarg.0
    IL_0033:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.PlayerData> Game.SubsystemPlayers::m_playersData
    IL_0038:  ldarg.1
    IL_0039:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.PlayerData>::Add(!0)
    IL_003e:  ldarg.1
    IL_003f:  ldarg.0
    IL_0040:  ldarg.0
    IL_0041:  ldfld      int32 Game.SubsystemPlayers::m_nextPlayerIndex
    IL_0046:  stloc.0
    IL_0047:  ldloc.0
    IL_0048:  ldc.i4.1
    IL_0049:  add
    IL_004a:  stfld      int32 Game.SubsystemPlayers::m_nextPlayerIndex
    IL_004f:  ldloc.0
    IL_0050:  callvirt   instance void Game.PlayerData::set_PlayerIndex(int32)
    IL_0055:  ldarg.0
    IL_0056:  ldfld      class [System.Runtime]System.Action`1<class Game.PlayerData> Game.SubsystemPlayers::PlayerAdded
    IL_005b:  dup
    IL_005c:  brtrue.s   IL_0060

    IL_005e:  pop
    IL_005f:  ret

    IL_0060:  ldarg.1
    IL_0061:  callvirt   instance void class [System.Runtime]System.Action`1<class Game.PlayerData>::Invoke(!0)
    IL_0066:  ret
  } // end of method SubsystemPlayers::AddPlayerData

  .method public hidebysig instance void 
          RemovePlayerData(class Game.PlayerData playerData) cil managed
  {
    // 代码大小       94 (0x5e)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.PlayerData> Game.SubsystemPlayers::m_playersData
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance bool class [System.Collections]System.Collections.Generic.List`1<class Game.PlayerData>::Contains(!0)
    IL_000c:  brtrue.s   IL_0019

    IL_000e:  ldstr      "Player does not exist."
    IL_0013:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0018:  throw

    IL_0019:  ldarg.0
    IL_001a:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.PlayerData> Game.SubsystemPlayers::m_playersData
    IL_001f:  ldarg.1
    IL_0020:  callvirt   instance bool class [System.Collections]System.Collections.Generic.List`1<class Game.PlayerData>::Remove(!0)
    IL_0025:  pop
    IL_0026:  ldarg.1
    IL_0027:  callvirt   instance class Game.ComponentPlayer Game.PlayerData::get_ComponentPlayer()
    IL_002c:  brfalse.s  IL_0045

    IL_002e:  ldarg.0
    IL_002f:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0034:  ldarg.1
    IL_0035:  callvirt   instance class Game.ComponentPlayer Game.PlayerData::get_ComponentPlayer()
    IL_003a:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_003f:  ldc.i4.1
    IL_0040:  callvirt   instance void [EntitySystem]GameEntitySystem.Project::RemoveEntity(class [EntitySystem]GameEntitySystem.Entity,
                                                                                            bool)
    IL_0045:  ldarg.0
    IL_0046:  ldfld      class [System.Runtime]System.Action`1<class Game.PlayerData> Game.SubsystemPlayers::PlayerRemoved
    IL_004b:  dup
    IL_004c:  brtrue.s   IL_0051

    IL_004e:  pop
    IL_004f:  br.s       IL_0057

    IL_0051:  ldarg.1
    IL_0052:  callvirt   instance void class [System.Runtime]System.Action`1<class Game.PlayerData>::Invoke(!0)
    IL_0057:  ldarg.1
    IL_0058:  callvirt   instance void Game.PlayerData::Dispose()
    IL_005d:  ret
  } // end of method SubsystemPlayers::RemovePlayerData

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       3 (0x3)
    .maxstack  8
    IL_0000:  ldc.i4.s   -100
    IL_0002:  ret
  } // end of method SubsystemPlayers::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       99 (0x63)
    .maxstack  5
    .locals init (valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.PlayerData> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.PlayerData> Game.SubsystemPlayers::m_playersData
    IL_0006:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.PlayerData>::get_Count()
    IL_000b:  brtrue.s   IL_002f

    IL_000d:  ldstr      "Player"
    IL_0012:  ldc.i4.2
    IL_0013:  newarr     [System.Runtime]System.Object
    IL_0018:  dup
    IL_0019:  ldc.i4.0
    IL_001a:  ldc.i4.0
    IL_001b:  box        Game.PlayerScreen/Mode
    IL_0020:  stelem.ref
    IL_0021:  dup
    IL_0022:  ldc.i4.1
    IL_0023:  ldarg.0
    IL_0024:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0029:  stelem.ref
    IL_002a:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_002f:  ldarg.0
    IL_0030:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.PlayerData> Game.SubsystemPlayers::m_playersData
    IL_0035:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.PlayerData>::GetEnumerator()
    IL_003a:  stloc.0
    .try
    {
      IL_003b:  br.s       IL_0049

      IL_003d:  ldloca.s   V_0
      IL_003f:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.PlayerData>::get_Current()
      IL_0044:  callvirt   instance void Game.PlayerData::Update()
      IL_0049:  ldloca.s   V_0
      IL_004b:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.PlayerData>::MoveNext()
      IL_0050:  brtrue.s   IL_003d

      IL_0052:  leave.s    IL_0062

    }  // end .try
    finally
    {
      IL_0054:  ldloca.s   V_0
      IL_0056:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.PlayerData>
      IL_005c:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0061:  endfinally
    }  // end handler
    IL_0062:  ret
  } // end of method SubsystemPlayers::Update

  .method public hidebysig virtual instance void 
          Dispose() cil managed
  {
    // 代码大小       52 (0x34)
    .maxstack  1
    .locals init (valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.PlayerData> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.PlayerData> Game.SubsystemPlayers::m_playersData
    IL_0006:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.PlayerData>::GetEnumerator()
    IL_000b:  stloc.0
    .try
    {
      IL_000c:  br.s       IL_001a

      IL_000e:  ldloca.s   V_0
      IL_0010:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.PlayerData>::get_Current()
      IL_0015:  callvirt   instance void Game.PlayerData::Dispose()
      IL_001a:  ldloca.s   V_0
      IL_001c:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.PlayerData>::MoveNext()
      IL_0021:  brtrue.s   IL_000e

      IL_0023:  leave.s    IL_0033

    }  // end .try
    finally
    {
      IL_0025:  ldloca.s   V_0
      IL_0027:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.PlayerData>
      IL_002d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0032:  endfinally
    }  // end handler
    IL_0033:  ret
  } // end of method SubsystemPlayers::Dispose

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       164 (0xa4)
    .maxstack  3
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>> V_0,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object> V_1,
             class Game.PlayerData V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_000d:  stfld      class Game.SubsystemTime Game.SubsystemPlayers::m_subsystemTime
    IL_0012:  ldarg.0
    IL_0013:  ldarg.1
    IL_0014:  ldstr      "NextPlayerIndex"
    IL_0019:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<int32>(string)
    IL_001e:  stfld      int32 Game.SubsystemPlayers::m_nextPlayerIndex
    IL_0023:  ldarg.0
    IL_0024:  ldarg.1
    IL_0025:  ldstr      "GlobalSpawnPosition"
    IL_002a:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype [Engine]Engine.Vector3>(string)
    IL_002f:  call       instance void Game.SubsystemPlayers::set_GlobalSpawnPosition(valuetype [Engine]Engine.Vector3)
    IL_0034:  ldarg.1
    IL_0035:  ldstr      "Players"
    IL_003a:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string)
    IL_003f:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>> [EntitySystem]TemplatesDatabase.ValuesDictionary::GetEnumerator()
    IL_0044:  stloc.0
    .try
    {
      IL_0045:  br.s       IL_008f

      IL_0047:  ldloc.0
      IL_0048:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>>::get_Current()
      IL_004d:  stloc.1
      IL_004e:  ldarg.0
      IL_004f:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
      IL_0054:  newobj     instance void Game.PlayerData::.ctor(class [EntitySystem]GameEntitySystem.Project)
      IL_0059:  stloc.2
      IL_005a:  ldloc.2
      IL_005b:  ldloca.s   V_1
      IL_005d:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>::get_Value()
      IL_0062:  castclass  [EntitySystem]TemplatesDatabase.ValuesDictionary
      IL_0067:  callvirt   instance void Game.PlayerData::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
      IL_006c:  ldloc.2
      IL_006d:  ldloca.s   V_1
      IL_006f:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>::get_Key()
      IL_0074:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
      IL_0079:  call       int32 [System.Runtime]System.Int32::Parse(string,
                                                                     class [System.Runtime]System.IFormatProvider)
      IL_007e:  callvirt   instance void Game.PlayerData::set_PlayerIndex(int32)
      IL_0083:  ldarg.0
      IL_0084:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.PlayerData> Game.SubsystemPlayers::m_playersData
      IL_0089:  ldloc.2
      IL_008a:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.PlayerData>::Add(!0)
      IL_008f:  ldloc.0
      IL_0090:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0095:  brtrue.s   IL_0047

      IL_0097:  leave.s    IL_00a3

    }  // end .try
    finally
    {
      IL_0099:  ldloc.0
      IL_009a:  brfalse.s  IL_00a2

      IL_009c:  ldloc.0
      IL_009d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00a2:  endfinally
    }  // end handler
    IL_00a3:  ret
  } // end of method SubsystemPlayers::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       140 (0x8c)
    .maxstack  3
    .locals init (class [EntitySystem]TemplatesDatabase.ValuesDictionary V_0,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.PlayerData> V_1,
             class Game.PlayerData V_2,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_3,
             int32 V_4)
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "NextPlayerIndex"
    IL_0006:  ldarg.0
    IL_0007:  ldfld      int32 Game.SubsystemPlayers::m_nextPlayerIndex
    IL_000c:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<int32>(string,
                                                                                                         !!0)
    IL_0011:  ldarg.1
    IL_0012:  ldstr      "GlobalSpawnPosition"
    IL_0017:  ldarg.0
    IL_0018:  call       instance valuetype [Engine]Engine.Vector3 Game.SubsystemPlayers::get_GlobalSpawnPosition()
    IL_001d:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype [Engine]Engine.Vector3>(string,
                                                                                                                                    !!0)
    IL_0022:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
    IL_0027:  stloc.0
    IL_0028:  ldarg.1
    IL_0029:  ldstr      "Players"
    IL_002e:  ldloc.0
    IL_002f:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                          !!0)
    IL_0034:  ldarg.0
    IL_0035:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.PlayerData> Game.SubsystemPlayers::m_playersData
    IL_003a:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.PlayerData>::GetEnumerator()
    IL_003f:  stloc.1
    .try
    {
      IL_0040:  br.s       IL_0072

      IL_0042:  ldloca.s   V_1
      IL_0044:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.PlayerData>::get_Current()
      IL_0049:  stloc.2
      IL_004a:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
      IL_004f:  stloc.3
      IL_0050:  ldloc.0
      IL_0051:  ldloc.2
      IL_0052:  callvirt   instance int32 Game.PlayerData::get_PlayerIndex()
      IL_0057:  stloc.s    V_4
      IL_0059:  ldloca.s   V_4
      IL_005b:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
      IL_0060:  call       instance string [System.Runtime]System.Int32::ToString(class [System.Runtime]System.IFormatProvider)
      IL_0065:  ldloc.3
      IL_0066:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                            !!0)
      IL_006b:  ldloc.2
      IL_006c:  ldloc.3
      IL_006d:  callvirt   instance void Game.PlayerData::Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
      IL_0072:  ldloca.s   V_1
      IL_0074:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.PlayerData>::MoveNext()
      IL_0079:  brtrue.s   IL_0042

      IL_007b:  leave.s    IL_008b

    }  // end .try
    finally
    {
      IL_007d:  ldloca.s   V_1
      IL_007f:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.PlayerData>
      IL_0085:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_008a:  endfinally
    }  // end handler
    IL_008b:  ret
  } // end of method SubsystemPlayers::Save

  .method family hidebysig virtual instance void 
          OnEntityAdded(class [EntitySystem]GameEntitySystem.Entity entity) cil managed
  {
    // 代码大小       59 (0x3b)
    .maxstack  2
    .locals init (valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.PlayerData> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.PlayerData> Game.SubsystemPlayers::m_playersData
    IL_0006:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.PlayerData>::GetEnumerator()
    IL_000b:  stloc.0
    .try
    {
      IL_000c:  br.s       IL_001b

      IL_000e:  ldloca.s   V_0
      IL_0010:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.PlayerData>::get_Current()
      IL_0015:  ldarg.1
      IL_0016:  callvirt   instance void Game.PlayerData::OnEntityAdded(class [EntitySystem]GameEntitySystem.Entity)
      IL_001b:  ldloca.s   V_0
      IL_001d:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.PlayerData>::MoveNext()
      IL_0022:  brtrue.s   IL_000e

      IL_0024:  leave.s    IL_0034

    }  // end .try
    finally
    {
      IL_0026:  ldloca.s   V_0
      IL_0028:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.PlayerData>
      IL_002e:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0033:  endfinally
    }  // end handler
    IL_0034:  ldarg.0
    IL_0035:  call       instance void Game.SubsystemPlayers::UpdateComponentPlayers()
    IL_003a:  ret
  } // end of method SubsystemPlayers::OnEntityAdded

  .method family hidebysig virtual instance void 
          OnEntityRemoved(class [EntitySystem]GameEntitySystem.Entity entity) cil managed
  {
    // 代码大小       59 (0x3b)
    .maxstack  2
    .locals init (valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.PlayerData> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.PlayerData> Game.SubsystemPlayers::m_playersData
    IL_0006:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.PlayerData>::GetEnumerator()
    IL_000b:  stloc.0
    .try
    {
      IL_000c:  br.s       IL_001b

      IL_000e:  ldloca.s   V_0
      IL_0010:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.PlayerData>::get_Current()
      IL_0015:  ldarg.1
      IL_0016:  callvirt   instance void Game.PlayerData::OnEntityRemoved(class [EntitySystem]GameEntitySystem.Entity)
      IL_001b:  ldloca.s   V_0
      IL_001d:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.PlayerData>::MoveNext()
      IL_0022:  brtrue.s   IL_000e

      IL_0024:  leave.s    IL_0034

    }  // end .try
    finally
    {
      IL_0026:  ldloca.s   V_0
      IL_0028:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.PlayerData>
      IL_002e:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0033:  endfinally
    }  // end handler
    IL_0034:  ldarg.0
    IL_0035:  call       instance void Game.SubsystemPlayers::UpdateComponentPlayers()
    IL_003a:  ret
  } // end of method SubsystemPlayers::OnEntityRemoved

  .method private hidebysig instance void 
          UpdateComponentPlayers() cil managed
  {
    // 代码大小       84 (0x54)
    .maxstack  2
    .locals init (valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.PlayerData> V_0,
             class Game.PlayerData V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentPlayer> Game.SubsystemPlayers::m_componentPlayers
    IL_0006:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentPlayer>::Clear()
    IL_000b:  ldarg.0
    IL_000c:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.PlayerData> Game.SubsystemPlayers::m_playersData
    IL_0011:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.PlayerData>::GetEnumerator()
    IL_0016:  stloc.0
    .try
    {
      IL_0017:  br.s       IL_003a

      IL_0019:  ldloca.s   V_0
      IL_001b:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.PlayerData>::get_Current()
      IL_0020:  stloc.1
      IL_0021:  ldloc.1
      IL_0022:  callvirt   instance class Game.ComponentPlayer Game.PlayerData::get_ComponentPlayer()
      IL_0027:  brfalse.s  IL_003a

      IL_0029:  ldarg.0
      IL_002a:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentPlayer> Game.SubsystemPlayers::m_componentPlayers
      IL_002f:  ldloc.1
      IL_0030:  callvirt   instance class Game.ComponentPlayer Game.PlayerData::get_ComponentPlayer()
      IL_0035:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentPlayer>::Add(!0)
      IL_003a:  ldloca.s   V_0
      IL_003c:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.PlayerData>::MoveNext()
      IL_0041:  brtrue.s   IL_0019

      IL_0043:  leave.s    IL_0053

    }  // end .try
    finally
    {
      IL_0045:  ldloca.s   V_0
      IL_0047:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.PlayerData>
      IL_004d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0052:  endfinally
    }  // end handler
    IL_0053:  ret
  } // end of method SubsystemPlayers::UpdateComponentPlayers

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.PlayerData>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.PlayerData> Game.SubsystemPlayers::m_playersData
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentPlayer>::.ctor()
    IL_0011:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentPlayer> Game.SubsystemPlayers::m_componentPlayers
    IL_0016:  ldarg.0
    IL_0017:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_001c:  ret
  } // end of method SubsystemPlayers::.ctor

  .event class [System.Runtime]System.Action`1<class Game.PlayerData> PlayerAdded
  {
    .addon instance void Game.SubsystemPlayers::add_PlayerAdded(class [System.Runtime]System.Action`1<class Game.PlayerData>)
    .removeon instance void Game.SubsystemPlayers::remove_PlayerAdded(class [System.Runtime]System.Action`1<class Game.PlayerData>)
  } // end of event SubsystemPlayers::PlayerAdded
  .event class [System.Runtime]System.Action`1<class Game.PlayerData> PlayerRemoved
  {
    .addon instance void Game.SubsystemPlayers::add_PlayerRemoved(class [System.Runtime]System.Action`1<class Game.PlayerData>)
    .removeon instance void Game.SubsystemPlayers::remove_PlayerRemoved(class [System.Runtime]System.Action`1<class Game.PlayerData>)
  } // end of event SubsystemPlayers::PlayerRemoved
  .property instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData>
          PlayersData()
  {
    .get instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> Game.SubsystemPlayers::get_PlayersData()
  } // end of property SubsystemPlayers::PlayersData
  .property instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.ComponentPlayer>
          ComponentPlayers()
  {
    .get instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.ComponentPlayer> Game.SubsystemPlayers::get_ComponentPlayers()
  } // end of property SubsystemPlayers::ComponentPlayers
  .property instance valuetype [Engine]Engine.Vector3
          GlobalSpawnPosition()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.SubsystemPlayers::get_GlobalSpawnPosition()
    .set instance void Game.SubsystemPlayers::set_GlobalSpawnPosition(valuetype [Engine]Engine.Vector3)
  } // end of property SubsystemPlayers::GlobalSpawnPosition
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemPlayers::get_UpdateOrder()
  } // end of property SubsystemPlayers::UpdateOrder
} // end of class Game.SubsystemPlayers