.class public auto ansi beforefieldinit Game.SubsystemMainLoop
       extends [EntitySystem]GameEntitySystem.Subsystem
{
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemInput m_subsystemInput
  .field private class Game.SubsystemUpdate m_subsystemUpdate
  .field private class Game.SubsystemDrawing m_subsystemDrawing
  .field private int32 '<UpdatesPerFrame>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance int32 
          get_UpdatesPerFrame() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.SubsystemMainLoop::'<UpdatesPerFrame>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemMainLoop::get_UpdatesPerFrame

  .method public hidebysig specialname instance void 
          set_UpdatesPerFrame(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 Game.SubsystemMainLoop::'<UpdatesPerFrame>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemMainLoop::set_UpdatesPerFrame

  .method public hidebysig instance void 
          Update(bool updateInput) cil managed
  {
    // 代码大小       54 (0x36)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br.s       IL_002c

    IL_0004:  ldarg.0
    IL_0005:  ldfld      class Game.SubsystemTime Game.SubsystemMainLoop::m_subsystemTime
    IL_000a:  callvirt   instance void Game.SubsystemTime::NextFrame()
    IL_000f:  ldarg.1
    IL_0010:  brfalse.s  IL_001d

    IL_0012:  ldarg.0
    IL_0013:  ldfld      class Game.SubsystemInput Game.SubsystemMainLoop::m_subsystemInput
    IL_0018:  callvirt   instance void Game.SubsystemInput::UpdateInput()
    IL_001d:  ldarg.0
    IL_001e:  ldfld      class Game.SubsystemUpdate Game.SubsystemMainLoop::m_subsystemUpdate
    IL_0023:  callvirt   instance void Game.SubsystemUpdate::Update()
    IL_0028:  ldloc.0
    IL_0029:  ldc.i4.1
    IL_002a:  add
    IL_002b:  stloc.0
    IL_002c:  ldloc.0
    IL_002d:  ldarg.0
    IL_002e:  call       instance int32 Game.SubsystemMainLoop::get_UpdatesPerFrame()
    IL_0033:  blt.s      IL_0004

    IL_0035:  ret
  } // end of method SubsystemMainLoop::Update

  .method public hidebysig instance void 
          Draw() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemDrawing Game.SubsystemMainLoop::m_subsystemDrawing
    IL_0006:  callvirt   instance void Game.SubsystemDrawing::Draw()
    IL_000b:  ret
  } // end of method SubsystemMainLoop::Draw

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       80 (0x50)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_000d:  stfld      class Game.SubsystemTime Game.SubsystemMainLoop::m_subsystemTime
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemInput>(bool)
    IL_001f:  stfld      class Game.SubsystemInput Game.SubsystemMainLoop::m_subsystemInput
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemUpdate>(bool)
    IL_0031:  stfld      class Game.SubsystemUpdate Game.SubsystemMainLoop::m_subsystemUpdate
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemDrawing>(bool)
    IL_0043:  stfld      class Game.SubsystemDrawing Game.SubsystemMainLoop::m_subsystemDrawing
    IL_0048:  ldarg.0
    IL_0049:  ldc.i4.1
    IL_004a:  call       instance void Game.SubsystemMainLoop::set_UpdatesPerFrame(int32)
    IL_004f:  ret
  } // end of method SubsystemMainLoop::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_0006:  ret
  } // end of method SubsystemMainLoop::.ctor

  .property instance int32 UpdatesPerFrame()
  {
    .get instance int32 Game.SubsystemMainLoop::get_UpdatesPerFrame()
    .set instance void Game.SubsystemMainLoop::set_UpdatesPerFrame(int32)
  } // end of property SubsystemMainLoop::UpdatesPerFrame
} // end of class Game.SubsystemMainLoop