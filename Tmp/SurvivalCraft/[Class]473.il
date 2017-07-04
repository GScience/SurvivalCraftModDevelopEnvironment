.class public auto ansi beforefieldinit Game.CancellableProgress
       extends Game.Progress
{
  .field private class [System.Runtime]System.Action Cancelled
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public initonly valuetype [System.Threading.Tasks]System.Threading.CancellationToken CancellationToken
  .field private initonly class [System.Threading.Tasks]System.Threading.CancellationTokenSource CancellationTokenSource
  .method public hidebysig specialname instance void 
          add_Cancelled(class [System.Runtime]System.Action 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action V_0,
             class [System.Runtime]System.Action V_1,
             class [System.Runtime]System.Action V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action Game.CancellableProgress::Cancelled
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Combine(class [System.Runtime]System.Delegate,
                                                                                                        class [System.Runtime]System.Delegate)
    IL_0010:  castclass  [System.Runtime]System.Action
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action Game.CancellableProgress::Cancelled
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action>(!!0&,
                                                                                                                                  !!0,
                                                                                                                                  !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method CancellableProgress::add_Cancelled

  .method public hidebysig specialname instance void 
          remove_Cancelled(class [System.Runtime]System.Action 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action V_0,
             class [System.Runtime]System.Action V_1,
             class [System.Runtime]System.Action V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action Game.CancellableProgress::Cancelled
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Remove(class [System.Runtime]System.Delegate,
                                                                                                       class [System.Runtime]System.Delegate)
    IL_0010:  castclass  [System.Runtime]System.Action
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action Game.CancellableProgress::Cancelled
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action>(!!0&,
                                                                                                                                  !!0,
                                                                                                                                  !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method CancellableProgress::remove_Cancelled

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       35 (0x23)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void [System.Threading.Tasks]System.Threading.CancellationTokenSource::.ctor()
    IL_0006:  stfld      class [System.Threading.Tasks]System.Threading.CancellationTokenSource Game.CancellableProgress::CancellationTokenSource
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.Progress::.ctor()
    IL_0011:  ldarg.0
    IL_0012:  ldarg.0
    IL_0013:  ldfld      class [System.Threading.Tasks]System.Threading.CancellationTokenSource Game.CancellableProgress::CancellationTokenSource
    IL_0018:  callvirt   instance valuetype [System.Threading.Tasks]System.Threading.CancellationToken [System.Threading.Tasks]System.Threading.CancellationTokenSource::get_Token()
    IL_001d:  stfld      valuetype [System.Threading.Tasks]System.Threading.CancellationToken Game.CancellableProgress::CancellationToken
    IL_0022:  ret
  } // end of method CancellableProgress::.ctor

  .method public hidebysig instance void 
          Cancel() cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Threading.Tasks]System.Threading.CancellationTokenSource Game.CancellableProgress::CancellationTokenSource
    IL_0006:  callvirt   instance void [System.Threading.Tasks]System.Threading.CancellationTokenSource::Cancel()
    IL_000b:  ldarg.0
    IL_000c:  ldfld      class [System.Runtime]System.Action Game.CancellableProgress::Cancelled
    IL_0011:  dup
    IL_0012:  brtrue.s   IL_0016

    IL_0014:  pop
    IL_0015:  ret

    IL_0016:  callvirt   instance void [System.Runtime]System.Action::Invoke()
    IL_001b:  ret
  } // end of method CancellableProgress::Cancel

  .event [System.Runtime]System.Action Cancelled
  {
    .addon instance void Game.CancellableProgress::add_Cancelled(class [System.Runtime]System.Action)
    .removeon instance void Game.CancellableProgress::remove_Cancelled(class [System.Runtime]System.Action)
  } // end of event CancellableProgress::Cancelled
} // end of class Game.CancellableProgress