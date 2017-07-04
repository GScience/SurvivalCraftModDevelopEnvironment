.class public auto ansi beforefieldinit Game.SubsystemBlocksTexture
       extends [EntitySystem]GameEntitySystem.Subsystem
{
  .field private class [Engine]Engine.Graphics.Texture2D '<BlocksTexture>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance class [Engine]Engine.Graphics.Texture2D 
          get_BlocksTexture() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.SubsystemBlocksTexture::'<BlocksTexture>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemBlocksTexture::get_BlocksTexture

  .method private hidebysig specialname instance void 
          set_BlocksTexture(class [Engine]Engine.Graphics.Texture2D 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [Engine]Engine.Graphics.Texture2D Game.SubsystemBlocksTexture::'<BlocksTexture>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemBlocksTexture::set_BlocksTexture

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldftn      instance void Game.SubsystemBlocksTexture::Display_DeviceReset()
    IL_0007:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_000c:  call       void [Engine]Engine.Graphics.Display::add_DeviceReset(class [System.Runtime]System.Action)
    IL_0011:  ldarg.0
    IL_0012:  call       instance void Game.SubsystemBlocksTexture::LoadBlocksTexture()
    IL_0017:  ret
  } // end of method SubsystemBlocksTexture::Load

  .method public hidebysig virtual instance void 
          Dispose() cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldftn      instance void Game.SubsystemBlocksTexture::Display_DeviceReset()
    IL_0007:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_000c:  call       void [Engine]Engine.Graphics.Display::remove_DeviceReset(class [System.Runtime]System.Action)
    IL_0011:  ldarg.0
    IL_0012:  call       instance void Game.SubsystemBlocksTexture::DisposeBlocksTexture()
    IL_0017:  ret
  } // end of method SubsystemBlocksTexture::Dispose

  .method private hidebysig instance void 
          LoadBlocksTexture() cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  2
    .locals init (class Game.SubsystemGameInfo V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0006:  ldc.i4.1
    IL_0007:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_000c:  stloc.0
    IL_000d:  ldarg.0
    IL_000e:  ldloc.0
    IL_000f:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0014:  ldfld      string Game.WorldSettings::BlocksTextureName
    IL_0019:  call       class [Engine]Engine.Graphics.Texture2D Game.BlocksTexturesManager::LoadTexture(string)
    IL_001e:  call       instance void Game.SubsystemBlocksTexture::set_BlocksTexture(class [Engine]Engine.Graphics.Texture2D)
    IL_0023:  ret
  } // end of method SubsystemBlocksTexture::LoadBlocksTexture

  .method private hidebysig instance void 
          DisposeBlocksTexture() cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [Engine]Engine.Graphics.Texture2D Game.SubsystemBlocksTexture::get_BlocksTexture()
    IL_0006:  brfalse.s  IL_0027

    IL_0008:  ldarg.0
    IL_0009:  call       instance class [Engine]Engine.Graphics.Texture2D Game.SubsystemBlocksTexture::get_BlocksTexture()
    IL_000e:  call       bool Game.ContentManager::IsContent(object)
    IL_0013:  brtrue.s   IL_0027

    IL_0015:  ldarg.0
    IL_0016:  call       instance class [Engine]Engine.Graphics.Texture2D Game.SubsystemBlocksTexture::get_BlocksTexture()
    IL_001b:  callvirt   instance void [Engine]Engine.Graphics.GraphicsResource::Dispose()
    IL_0020:  ldarg.0
    IL_0021:  ldnull
    IL_0022:  call       instance void Game.SubsystemBlocksTexture::set_BlocksTexture(class [Engine]Engine.Graphics.Texture2D)
    IL_0027:  ret
  } // end of method SubsystemBlocksTexture::DisposeBlocksTexture

  .method private hidebysig instance void 
          Display_DeviceReset() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.SubsystemBlocksTexture::LoadBlocksTexture()
    IL_0006:  ret
  } // end of method SubsystemBlocksTexture::Display_DeviceReset

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_0006:  ret
  } // end of method SubsystemBlocksTexture::.ctor

  .property instance class [Engine]Engine.Graphics.Texture2D
          BlocksTexture()
  {
    .get instance class [Engine]Engine.Graphics.Texture2D Game.SubsystemBlocksTexture::get_BlocksTexture()
    .set instance void Game.SubsystemBlocksTexture::set_BlocksTexture(class [Engine]Engine.Graphics.Texture2D)
  } // end of property SubsystemBlocksTexture::BlocksTexture
} // end of class Game.SubsystemBlocksTexture