.class public auto ansi beforefieldinit Game.StateMachine
       extends [System.Runtime]System.Object
{
  .class auto ansi nested private beforefieldinit State
         extends [System.Runtime]System.Object
  {
    .field public string Name
    .field public class [System.Runtime]System.Action Enter
    .field public class [System.Runtime]System.Action Update
    .field public class [System.Runtime]System.Action Leave
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method State::.ctor

  } // end of class State

  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.StateMachine/State> m_states
  .field private class Game.StateMachine/State m_currentState
  .field private class Game.StateMachine/State m_previousState
  .method public hidebysig specialname instance string 
          get_PreviousState() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.StateMachine/State Game.StateMachine::m_previousState
    IL_0006:  brtrue.s   IL_000a

    IL_0008:  ldnull
    IL_0009:  ret

    IL_000a:  ldarg.0
    IL_000b:  ldfld      class Game.StateMachine/State Game.StateMachine::m_previousState
    IL_0010:  ldfld      string Game.StateMachine/State::Name
    IL_0015:  ret
  } // end of method StateMachine::get_PreviousState

  .method public hidebysig specialname instance string 
          get_CurrentState() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.StateMachine/State Game.StateMachine::m_currentState
    IL_0006:  brtrue.s   IL_000a

    IL_0008:  ldnull
    IL_0009:  ret

    IL_000a:  ldarg.0
    IL_000b:  ldfld      class Game.StateMachine/State Game.StateMachine::m_currentState
    IL_0010:  ldfld      string Game.StateMachine/State::Name
    IL_0015:  ret
  } // end of method StateMachine::get_CurrentState

  .method public hidebysig instance void 
          AddState(string name,
                   class [System.Runtime]System.Action enter,
                   class [System.Runtime]System.Action update,
                   class [System.Runtime]System.Action 'leave') cil managed
  {
    // 代码大小       66 (0x42)
    .maxstack  5
    IL_0000:  ldarg.1
    IL_0001:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0006:  brfalse.s  IL_0013

    IL_0008:  ldstr      "State name must not be empty or null."
    IL_000d:  newobj     instance void [System.Runtime]System.Exception::.ctor(string)
    IL_0012:  throw

    IL_0013:  ldarg.0
    IL_0014:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.StateMachine/State> Game.StateMachine::m_states
    IL_0019:  ldarg.1
    IL_001a:  newobj     instance void Game.StateMachine/State::.ctor()
    IL_001f:  dup
    IL_0020:  ldarg.1
    IL_0021:  stfld      string Game.StateMachine/State::Name
    IL_0026:  dup
    IL_0027:  ldarg.2
    IL_0028:  stfld      class [System.Runtime]System.Action Game.StateMachine/State::Enter
    IL_002d:  dup
    IL_002e:  ldarg.3
    IL_002f:  stfld      class [System.Runtime]System.Action Game.StateMachine/State::Update
    IL_0034:  dup
    IL_0035:  ldarg.s    'leave'
    IL_0037:  stfld      class [System.Runtime]System.Action Game.StateMachine/State::Leave
    IL_003c:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.StateMachine/State>::Add(!0,
                                                                                                                                                    !1)
    IL_0041:  ret
  } // end of method StateMachine::AddState

  .method public hidebysig instance void 
          TransitionTo(string stateName) cil managed
  {
    // 代码大小       111 (0x6f)
    .maxstack  2
    .locals init (class Game.StateMachine/State V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance class Game.StateMachine/State Game.StateMachine::FindState(string)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  ldarg.0
    IL_000a:  ldfld      class Game.StateMachine/State Game.StateMachine::m_currentState
    IL_000f:  beq.s      IL_006e

    IL_0011:  ldarg.0
    IL_0012:  ldfld      class Game.StateMachine/State Game.StateMachine::m_currentState
    IL_0017:  brfalse.s  IL_0036

    IL_0019:  ldarg.0
    IL_001a:  ldfld      class Game.StateMachine/State Game.StateMachine::m_currentState
    IL_001f:  ldfld      class [System.Runtime]System.Action Game.StateMachine/State::Leave
    IL_0024:  brfalse.s  IL_0036

    IL_0026:  ldarg.0
    IL_0027:  ldfld      class Game.StateMachine/State Game.StateMachine::m_currentState
    IL_002c:  ldfld      class [System.Runtime]System.Action Game.StateMachine/State::Leave
    IL_0031:  callvirt   instance void [System.Runtime]System.Action::Invoke()
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  ldfld      class Game.StateMachine/State Game.StateMachine::m_currentState
    IL_003d:  stfld      class Game.StateMachine/State Game.StateMachine::m_previousState
    IL_0042:  ldarg.0
    IL_0043:  ldloc.0
    IL_0044:  stfld      class Game.StateMachine/State Game.StateMachine::m_currentState
    IL_0049:  ldarg.0
    IL_004a:  ldfld      class Game.StateMachine/State Game.StateMachine::m_currentState
    IL_004f:  brfalse.s  IL_006e

    IL_0051:  ldarg.0
    IL_0052:  ldfld      class Game.StateMachine/State Game.StateMachine::m_currentState
    IL_0057:  ldfld      class [System.Runtime]System.Action Game.StateMachine/State::Enter
    IL_005c:  brfalse.s  IL_006e

    IL_005e:  ldarg.0
    IL_005f:  ldfld      class Game.StateMachine/State Game.StateMachine::m_currentState
    IL_0064:  ldfld      class [System.Runtime]System.Action Game.StateMachine/State::Enter
    IL_0069:  callvirt   instance void [System.Runtime]System.Action::Invoke()
    IL_006e:  ret
  } // end of method StateMachine::TransitionTo

  .method public hidebysig instance void 
          Update() cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.StateMachine/State Game.StateMachine::m_currentState
    IL_0006:  brfalse.s  IL_0025

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.StateMachine/State Game.StateMachine::m_currentState
    IL_000e:  ldfld      class [System.Runtime]System.Action Game.StateMachine/State::Update
    IL_0013:  brfalse.s  IL_0025

    IL_0015:  ldarg.0
    IL_0016:  ldfld      class Game.StateMachine/State Game.StateMachine::m_currentState
    IL_001b:  ldfld      class [System.Runtime]System.Action Game.StateMachine/State::Update
    IL_0020:  callvirt   instance void [System.Runtime]System.Action::Invoke()
    IL_0025:  ret
  } // end of method StateMachine::Update

  .method private hidebysig instance class Game.StateMachine/State 
          FindState(string name) cil managed
  {
    // 代码大小       54 (0x36)
    .maxstack  5
    .locals init (class Game.StateMachine/State V_0)
    IL_0000:  ldarg.1
    IL_0001:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0006:  brtrue.s   IL_0034

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.StateMachine/State> Game.StateMachine::m_states
    IL_000e:  ldarg.1
    IL_000f:  ldloca.s   V_0
    IL_0011:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.StateMachine/State>::TryGetValue(!0,
                                                                                                                                                            !1&)
    IL_0016:  brtrue.s   IL_0032

    IL_0018:  ldstr      "State \"{0}\" not found."
    IL_001d:  ldc.i4.1
    IL_001e:  newarr     [System.Runtime]System.Object
    IL_0023:  dup
    IL_0024:  ldc.i4.0
    IL_0025:  ldarg.1
    IL_0026:  stelem.ref
    IL_0027:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_002c:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0031:  throw

    IL_0032:  ldloc.0
    IL_0033:  ret

    IL_0034:  ldnull
    IL_0035:  ret
  } // end of method StateMachine::FindState

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.StateMachine/State>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.StateMachine/State> Game.StateMachine::m_states
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0011:  ret
  } // end of method StateMachine::.ctor

  .property instance string PreviousState()
  {
    .get instance string Game.StateMachine::get_PreviousState()
  } // end of property StateMachine::PreviousState
  .property instance string CurrentState()
  {
    .get instance string Game.StateMachine::get_CurrentState()
  } // end of property StateMachine::CurrentState
} // end of class Game.StateMachine