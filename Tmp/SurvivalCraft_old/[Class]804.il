.class public auto ansi beforefieldinit Game.SubsystemTime
       extends [EntitySystem]GameEntitySystem.Subsystem
{
  .class sequential ansi sealed nested private beforefieldinit DelayedExecutionRequest
         extends [System.Runtime]System.ValueType
  {
    .field public float64 GameTime
    .field public class [System.Runtime]System.Action Action
  } // end of class DelayedExecutionRequest

  .field public static literal float32 MaxGameTimeDelta = float32(0.1)
  .field private float64 m_gameTime
  .field private float32 m_gameTimeDelta
  .field private float32 m_prevGameTimeDelta
  .field private float32 m_gameTimeFactor
  .field private class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemTime/DelayedExecutionRequest> m_delayedExecutionsRequests
  .field private class Game.SubsystemPlayers m_subsystemPlayers
  .field private class Game.SubsystemUpdate m_subsystemUpdate
  .field private valuetype [System.Runtime]System.Nullable`1<float32> '<FixedTimeStep>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance float64 
          get_GameTime() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float64 Game.SubsystemTime::m_gameTime
    IL_0006:  ret
  } // end of method SubsystemTime::get_GameTime

  .method public hidebysig specialname instance float32 
          get_GameTimeDelta() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.SubsystemTime::m_gameTimeDelta
    IL_0006:  ret
  } // end of method SubsystemTime::get_GameTimeDelta

  .method public hidebysig specialname instance float32 
          get_PreviousGameTimeDelta() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.SubsystemTime::m_prevGameTimeDelta
    IL_0006:  ret
  } // end of method SubsystemTime::get_PreviousGameTimeDelta

  .method public hidebysig specialname instance float32 
          get_GameTimeFactor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.SubsystemTime::m_gameTimeFactor
    IL_0006:  ret
  } // end of method SubsystemTime::get_GameTimeFactor

  .method private hidebysig specialname instance void 
          set_GameTimeFactor(float32 'value') cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldc.r4     0.0
    IL_0007:  ldc.r4     256.
    IL_000c:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0011:  stfld      float32 Game.SubsystemTime::m_gameTimeFactor
    IL_0016:  ret
  } // end of method SubsystemTime::set_GameTimeFactor

  .method public hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<float32> 
          get_FixedTimeStep() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemTime::'<FixedTimeStep>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemTime::get_FixedTimeStep

  .method private hidebysig specialname instance void 
          set_FixedTimeStep(valuetype [System.Runtime]System.Nullable`1<float32> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemTime::'<FixedTimeStep>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemTime::set_FixedTimeStep

  .method public hidebysig instance void 
          NextFrame() cil managed
  {
    // 代码大小       527 (0x20f)
    .maxstack  3
    .locals init (int32 V_0,
             int32 V_1,
             bool V_2,
             valuetype [System.Runtime]System.Nullable`1<float32> V_3,
             int32 V_4,
             valuetype Game.SubsystemTime/DelayedExecutionRequest V_5,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.ComponentPlayer> V_6,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.ComponentPlayer> V_7,
             class Game.ComponentPlayer V_8)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      float32 Game.SubsystemTime::m_gameTimeDelta
    IL_0007:  stfld      float32 Game.SubsystemTime::m_prevGameTimeDelta
    IL_000c:  ldarg.0
    IL_000d:  call       instance valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemTime::get_FixedTimeStep()
    IL_0012:  stloc.3
    IL_0013:  ldloca.s   V_3
    IL_0015:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_001a:  brtrue.s   IL_003a

    IL_001c:  ldarg.0
    IL_001d:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_0022:  ldarg.0
    IL_0023:  ldfld      float32 Game.SubsystemTime::m_gameTimeFactor
    IL_0028:  mul
    IL_0029:  ldc.r4     0.1
    IL_002e:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0033:  stfld      float32 Game.SubsystemTime::m_gameTimeDelta
    IL_0038:  br.s       IL_005f

    IL_003a:  ldarg.0
    IL_003b:  ldarg.0
    IL_003c:  call       instance valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemTime::get_FixedTimeStep()
    IL_0041:  stloc.3
    IL_0042:  ldloca.s   V_3
    IL_0044:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0049:  ldarg.0
    IL_004a:  ldfld      float32 Game.SubsystemTime::m_gameTimeFactor
    IL_004f:  mul
    IL_0050:  ldc.r4     0.1
    IL_0055:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_005a:  stfld      float32 Game.SubsystemTime::m_gameTimeDelta
    IL_005f:  ldarg.0
    IL_0060:  ldarg.0
    IL_0061:  ldfld      float64 Game.SubsystemTime::m_gameTime
    IL_0066:  ldarg.0
    IL_0067:  ldfld      float32 Game.SubsystemTime::m_gameTimeDelta
    IL_006c:  conv.r8
    IL_006d:  add
    IL_006e:  stfld      float64 Game.SubsystemTime::m_gameTime
    IL_0073:  ldc.i4.0
    IL_0074:  stloc.s    V_4
    IL_0076:  br.s       IL_00c9

    IL_0078:  ldarg.0
    IL_0079:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemTime/DelayedExecutionRequest> Game.SubsystemTime::m_delayedExecutionsRequests
    IL_007e:  ldloc.s    V_4
    IL_0080:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemTime/DelayedExecutionRequest>::get_Item(int32)
    IL_0085:  stloc.s    V_5
    IL_0087:  ldloc.s    V_5
    IL_0089:  ldfld      float64 Game.SubsystemTime/DelayedExecutionRequest::GameTime
    IL_008e:  ldc.r8     0.0
    IL_0097:  blt.un.s   IL_00c3

    IL_0099:  ldarg.0
    IL_009a:  call       instance float64 Game.SubsystemTime::get_GameTime()
    IL_009f:  ldloc.s    V_5
    IL_00a1:  ldfld      float64 Game.SubsystemTime/DelayedExecutionRequest::GameTime
    IL_00a6:  blt.un.s   IL_00c3

    IL_00a8:  ldarg.0
    IL_00a9:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemTime/DelayedExecutionRequest> Game.SubsystemTime::m_delayedExecutionsRequests
    IL_00ae:  ldloc.s    V_4
    IL_00b0:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemTime/DelayedExecutionRequest>::RemoveAt(int32)
    IL_00b5:  ldloc.s    V_5
    IL_00b7:  ldfld      class [System.Runtime]System.Action Game.SubsystemTime/DelayedExecutionRequest::Action
    IL_00bc:  callvirt   instance void [System.Runtime]System.Action::Invoke()
    IL_00c1:  br.s       IL_00c9

    IL_00c3:  ldloc.s    V_4
    IL_00c5:  ldc.i4.1
    IL_00c6:  add
    IL_00c7:  stloc.s    V_4
    IL_00c9:  ldloc.s    V_4
    IL_00cb:  ldarg.0
    IL_00cc:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemTime/DelayedExecutionRequest> Game.SubsystemTime::m_delayedExecutionsRequests
    IL_00d1:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemTime/DelayedExecutionRequest>::get_Count()
    IL_00d6:  blt.s      IL_0078

    IL_00d8:  ldc.i4.0
    IL_00d9:  stloc.0
    IL_00da:  ldc.i4.0
    IL_00db:  stloc.1
    IL_00dc:  ldarg.0
    IL_00dd:  ldfld      class Game.SubsystemPlayers Game.SubsystemTime::m_subsystemPlayers
    IL_00e2:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.ComponentPlayer> Game.SubsystemPlayers::get_ComponentPlayers()
    IL_00e7:  stloc.s    V_7
    IL_00e9:  ldloca.s   V_7
    IL_00eb:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.ComponentPlayer>::GetEnumerator()
    IL_00f0:  stloc.s    V_6
    .try
    {
      IL_00f2:  br.s       IL_012d

      IL_00f4:  ldloca.s   V_6
      IL_00f6:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.ComponentPlayer>::get_Current()
      IL_00fb:  stloc.s    V_8
      IL_00fd:  ldloc.s    V_8
      IL_00ff:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
      IL_0104:  callvirt   instance float32 Game.ComponentHealth::get_Health()
      IL_0109:  ldc.r4     0.0
      IL_010e:  bne.un.s   IL_0116

      IL_0110:  ldloc.1
      IL_0111:  ldc.i4.1
      IL_0112:  add
      IL_0113:  stloc.1
      IL_0114:  br.s       IL_012d

      IL_0116:  ldloc.s    V_8
      IL_0118:  callvirt   instance class Game.ComponentSleep Game.ComponentPlayer::get_ComponentSleep()
      IL_011d:  callvirt   instance float32 Game.ComponentSleep::get_SleepFactor()
      IL_0122:  ldc.r4     1.
      IL_0127:  bne.un.s   IL_012d

      IL_0129:  ldloc.0
      IL_012a:  ldc.i4.1
      IL_012b:  add
      IL_012c:  stloc.0
      IL_012d:  ldloca.s   V_6
      IL_012f:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.ComponentPlayer>::MoveNext()
      IL_0134:  brtrue.s   IL_00f4

      IL_0136:  leave.s    IL_0146

    }  // end .try
    finally
    {
      IL_0138:  ldloca.s   V_6
      IL_013a:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.ComponentPlayer>
      IL_0140:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0145:  endfinally
    }  // end handler
    IL_0146:  ldloc.0
    IL_0147:  ldloc.1
    IL_0148:  add
    IL_0149:  ldarg.0
    IL_014a:  ldfld      class Game.SubsystemPlayers Game.SubsystemTime::m_subsystemPlayers
    IL_014f:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.ComponentPlayer> Game.SubsystemPlayers::get_ComponentPlayers()
    IL_0154:  stloc.s    V_7
    IL_0156:  ldloca.s   V_7
    IL_0158:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class Game.ComponentPlayer>::get_Count()
    IL_015d:  bne.un.s   IL_0182

    IL_015f:  ldloc.0
    IL_0160:  ldc.i4.1
    IL_0161:  blt.s      IL_0182

    IL_0163:  ldarg.0
    IL_0164:  ldc.r4     6.666667e-002
    IL_0169:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_016e:  call       instance void Game.SubsystemTime::set_FixedTimeStep(valuetype [System.Runtime]System.Nullable`1<float32>)
    IL_0173:  ldarg.0
    IL_0174:  ldfld      class Game.SubsystemUpdate Game.SubsystemTime::m_subsystemUpdate
    IL_0179:  ldc.i4.s   20
    IL_017b:  callvirt   instance void Game.SubsystemUpdate::set_UpdatesPerFrame(int32)
    IL_0180:  br.s       IL_019d

    IL_0182:  ldarg.0
    IL_0183:  ldloca.s   V_3
    IL_0185:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
    IL_018b:  ldloc.3
    IL_018c:  call       instance void Game.SubsystemTime::set_FixedTimeStep(valuetype [System.Runtime]System.Nullable`1<float32>)
    IL_0191:  ldarg.0
    IL_0192:  ldfld      class Game.SubsystemUpdate Game.SubsystemTime::m_subsystemUpdate
    IL_0197:  ldc.i4.1
    IL_0198:  callvirt   instance void Game.SubsystemUpdate::set_UpdatesPerFrame(int32)
    IL_019d:  ldc.i4.1
    IL_019e:  stloc.2
    IL_019f:  ldarg.0
    IL_01a0:  ldfld      class Game.SubsystemPlayers Game.SubsystemTime::m_subsystemPlayers
    IL_01a5:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.ComponentPlayer> Game.SubsystemPlayers::get_ComponentPlayers()
    IL_01aa:  stloc.s    V_7
    IL_01ac:  ldloca.s   V_7
    IL_01ae:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.ComponentPlayer>::GetEnumerator()
    IL_01b3:  stloc.s    V_6
    .try
    {
      IL_01b5:  br.s       IL_01ce

      IL_01b7:  ldloca.s   V_6
      IL_01b9:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.ComponentPlayer>::get_Current()
      IL_01be:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
      IL_01c3:  callvirt   instance bool Game.ComponentGui::IsGameMenuDialogVisible()
      IL_01c8:  brtrue.s   IL_01ce

      IL_01ca:  ldc.i4.0
      IL_01cb:  stloc.2
      IL_01cc:  leave.s    IL_01e7

      IL_01ce:  ldloca.s   V_6
      IL_01d0:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.ComponentPlayer>::MoveNext()
      IL_01d5:  brtrue.s   IL_01b7

      IL_01d7:  leave.s    IL_01e7

    }  // end .try
    finally
    {
      IL_01d9:  ldloca.s   V_6
      IL_01db:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.ComponentPlayer>
      IL_01e1:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01e6:  endfinally
    }  // end handler
    IL_01e7:  ldloc.2
    IL_01e8:  brfalse.s  IL_01f6

    IL_01ea:  ldarg.0
    IL_01eb:  ldc.r4     0.0
    IL_01f0:  call       instance void Game.SubsystemTime::set_GameTimeFactor(float32)
    IL_01f5:  ret

    IL_01f6:  ldarg.0
    IL_01f7:  call       instance float32 Game.SubsystemTime::get_GameTimeFactor()
    IL_01fc:  ldc.r4     0.0
    IL_0201:  bne.un.s   IL_020e

    IL_0203:  ldarg.0
    IL_0204:  ldc.r4     1.
    IL_0209:  call       instance void Game.SubsystemTime::set_GameTimeFactor(float32)
    IL_020e:  ret
  } // end of method SubsystemTime::NextFrame

  .method public hidebysig instance void 
          QueueGameTimeDelayedExecution(float64 gameTime,
                                        class [System.Runtime]System.Action action) cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  3
    .locals init (valuetype Game.SubsystemTime/DelayedExecutionRequest V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemTime/DelayedExecutionRequest> Game.SubsystemTime::m_delayedExecutionsRequests
    IL_0006:  ldloca.s   V_0
    IL_0008:  initobj    Game.SubsystemTime/DelayedExecutionRequest
    IL_000e:  ldloca.s   V_0
    IL_0010:  ldarg.1
    IL_0011:  stfld      float64 Game.SubsystemTime/DelayedExecutionRequest::GameTime
    IL_0016:  ldloca.s   V_0
    IL_0018:  ldarg.2
    IL_0019:  stfld      class [System.Runtime]System.Action Game.SubsystemTime/DelayedExecutionRequest::Action
    IL_001e:  ldloc.0
    IL_001f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemTime/DelayedExecutionRequest>::Add(!0)
    IL_0024:  ret
  } // end of method SubsystemTime::QueueGameTimeDelayedExecution

  .method public hidebysig instance bool 
          PeriodicGameTimeEvent(float64 period,
                                float64 offset) cil managed
  {
    // 代码大小       39 (0x27)
    .maxstack  2
    .locals init (float64 V_0,
             float64 V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       instance float64 Game.SubsystemTime::get_GameTime()
    IL_0006:  ldarg.2
    IL_0007:  sub
    IL_0008:  stloc.0
    IL_0009:  ldloc.0
    IL_000a:  ldarg.1
    IL_000b:  div
    IL_000c:  call       float64 [Engine]Engine.MathUtils::Floor(float64)
    IL_0011:  ldarg.1
    IL_0012:  mul
    IL_0013:  stloc.1
    IL_0014:  ldloc.0
    IL_0015:  ldloc.1
    IL_0016:  blt.un.s   IL_0025

    IL_0018:  ldloc.0
    IL_0019:  ldarg.0
    IL_001a:  call       instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_001f:  conv.r8
    IL_0020:  sub
    IL_0021:  ldloc.1
    IL_0022:  clt
    IL_0024:  ret

    IL_0025:  ldc.i4.0
    IL_0026:  ret
  } // end of method SubsystemTime::PeriodicGameTimeEvent

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPlayers>(bool)
    IL_000d:  stfld      class Game.SubsystemPlayers Game.SubsystemTime::m_subsystemPlayers
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemUpdate>(bool)
    IL_001f:  stfld      class Game.SubsystemUpdate Game.SubsystemTime::m_subsystemUpdate
    IL_0024:  ret
  } // end of method SubsystemTime::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     1.
    IL_0006:  stfld      float32 Game.SubsystemTime::m_gameTimeFactor
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemTime/DelayedExecutionRequest>::.ctor()
    IL_0011:  stfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemTime/DelayedExecutionRequest> Game.SubsystemTime::m_delayedExecutionsRequests
    IL_0016:  ldarg.0
    IL_0017:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_001c:  ret
  } // end of method SubsystemTime::.ctor

  .property instance float64 GameTime()
  {
    .get instance float64 Game.SubsystemTime::get_GameTime()
  } // end of property SubsystemTime::GameTime
  .property instance float32 GameTimeDelta()
  {
    .get instance float32 Game.SubsystemTime::get_GameTimeDelta()
  } // end of property SubsystemTime::GameTimeDelta
  .property instance float32 PreviousGameTimeDelta()
  {
    .get instance float32 Game.SubsystemTime::get_PreviousGameTimeDelta()
  } // end of property SubsystemTime::PreviousGameTimeDelta
  .property instance float32 GameTimeFactor()
  {
    .get instance float32 Game.SubsystemTime::get_GameTimeFactor()
    .set instance void Game.SubsystemTime::set_GameTimeFactor(float32)
  } // end of property SubsystemTime::GameTimeFactor
  .property instance valuetype [System.Runtime]System.Nullable`1<float32>
          FixedTimeStep()
  {
    .get instance valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemTime::get_FixedTimeStep()
    .set instance void Game.SubsystemTime::set_FixedTimeStep(valuetype [System.Runtime]System.Nullable`1<float32>)
  } // end of property SubsystemTime::FixedTimeStep
} // end of class Game.SubsystemTime