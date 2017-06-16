.class public abstract auto ansi sealed beforefieldinit Game.BlocksTexturesManager
       extends [System.Runtime]System.Object
{
  .field private static class [System.Collections]System.Collections.Generic.List`1<string> m_blockTextureNames
  .field private static class [System.Runtime]System.Action`1<string> BlocksTextureDeleted
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static class [Engine]Engine.Graphics.Texture2D '<DefaultBlocksTexture>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname static 
          void  add_BlocksTextureDeleted(class [System.Runtime]System.Action`1<string> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       39 (0x27)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<string> V_0,
             class [System.Runtime]System.Action`1<string> V_1,
             class [System.Runtime]System.Action`1<string> V_2)
    IL_0000:  ldsfld     class [System.Runtime]System.Action`1<string> Game.BlocksTexturesManager::BlocksTextureDeleted
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  stloc.1
    IL_0008:  ldloc.1
    IL_0009:  ldarg.0
    IL_000a:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Combine(class [System.Runtime]System.Delegate,
                                                                                                        class [System.Runtime]System.Delegate)
    IL_000f:  castclass  class [System.Runtime]System.Action`1<string>
    IL_0014:  stloc.2
    IL_0015:  ldsflda    class [System.Runtime]System.Action`1<string> Game.BlocksTexturesManager::BlocksTextureDeleted
    IL_001a:  ldloc.2
    IL_001b:  ldloc.1
    IL_001c:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<string>>(!!0&,
                                                                                                                                            !!0,
                                                                                                                                            !!0)
    IL_0021:  stloc.0
    IL_0022:  ldloc.0
    IL_0023:  ldloc.1
    IL_0024:  bne.un.s   IL_0006

    IL_0026:  ret
  } // end of method BlocksTexturesManager::add_BlocksTextureDeleted

  .method public hidebysig specialname static 
          void  remove_BlocksTextureDeleted(class [System.Runtime]System.Action`1<string> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       39 (0x27)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<string> V_0,
             class [System.Runtime]System.Action`1<string> V_1,
             class [System.Runtime]System.Action`1<string> V_2)
    IL_0000:  ldsfld     class [System.Runtime]System.Action`1<string> Game.BlocksTexturesManager::BlocksTextureDeleted
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  stloc.1
    IL_0008:  ldloc.1
    IL_0009:  ldarg.0
    IL_000a:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Remove(class [System.Runtime]System.Delegate,
                                                                                                       class [System.Runtime]System.Delegate)
    IL_000f:  castclass  class [System.Runtime]System.Action`1<string>
    IL_0014:  stloc.2
    IL_0015:  ldsflda    class [System.Runtime]System.Action`1<string> Game.BlocksTexturesManager::BlocksTextureDeleted
    IL_001a:  ldloc.2
    IL_001b:  ldloc.1
    IL_001c:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<string>>(!!0&,
                                                                                                                                            !!0,
                                                                                                                                            !!0)
    IL_0021:  stloc.0
    IL_0022:  ldloc.0
    IL_0023:  ldloc.1
    IL_0024:  bne.un.s   IL_0006

    IL_0026:  ret
  } // end of method BlocksTexturesManager::remove_BlocksTextureDeleted

  .method public hidebysig specialname static 
          class [Engine]Engine.Graphics.Texture2D 
          get_DefaultBlocksTexture() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     class [Engine]Engine.Graphics.Texture2D Game.BlocksTexturesManager::'<DefaultBlocksTexture>k__BackingField'
    IL_0005:  ret
  } // end of method BlocksTexturesManager::get_DefaultBlocksTexture

  .method private hidebysig specialname static 
          void  set_DefaultBlocksTexture(class [Engine]Engine.Graphics.Texture2D 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     class [Engine]Engine.Graphics.Texture2D Game.BlocksTexturesManager::'<DefaultBlocksTexture>k__BackingField'
    IL_0006:  ret
  } // end of method BlocksTexturesManager::set_DefaultBlocksTexture

  .method public hidebysig static void  Initialize() cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  8
    IL_0000:  call       string Game.BlocksTexturesManager::get_BlockTexturesDirectoryName()
    IL_0005:  call       void [Engine]Engine.Storage::CreateDirectory(string)
    IL_000a:  ldstr      "Textures/Blocks"
    IL_000f:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_0014:  call       void Game.BlocksTexturesManager::set_DefaultBlocksTexture(class [Engine]Engine.Graphics.Texture2D)
    IL_0019:  ret
  } // end of method BlocksTexturesManager::Initialize

  .method public hidebysig specialname static 
          valuetype [Engine]Engine.ReadOnlyList`1<string> 
          get_BlockTexturesNames() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksTexturesManager::m_blockTextureNames
    IL_0005:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<string>::.ctor(class [System.Collections]System.Collections.Generic.List`1<!0>)
    IL_000a:  ret
  } // end of method BlocksTexturesManager::get_BlockTexturesNames

  .method public hidebysig static string 
          GetFileName(string name) cil managed
  {
    // 代码大小       34 (0x22)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0006:  brfalse.s  IL_000a

    IL_0008:  ldnull
    IL_0009:  ret

    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [System.Runtime]System.String
    IL_0010:  dup
    IL_0011:  ldc.i4.0
    IL_0012:  call       string Game.BlocksTexturesManager::get_BlockTexturesDirectoryName()
    IL_0017:  stelem.ref
    IL_0018:  dup
    IL_0019:  ldc.i4.1
    IL_001a:  ldarg.0
    IL_001b:  stelem.ref
    IL_001c:  call       string [Engine]Engine.Storage::CombinePaths(string[])
    IL_0021:  ret
  } // end of method BlocksTexturesManager::GetFileName

  .method public hidebysig static string 
          GetDisplayName(string name) cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0006:  brfalse.s  IL_000e

    IL_0008:  ldstr      "Default"
    IL_000d:  ret

    IL_000e:  ldarg.0
    IL_000f:  call       string [Engine]Engine.Storage::GetFileNameWithoutExtension(string)
    IL_0014:  ret
  } // end of method BlocksTexturesManager::GetDisplayName

  .method public hidebysig static valuetype [System.Runtime]System.DateTime 
          GetCreationDate(string name) cil managed
  {
    // 代码大小       42 (0x2a)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.DateTime V_0)
    .try
    {
      IL_0000:  ldarg.0
      IL_0001:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
      IL_0006:  brtrue.s   IL_0016

      IL_0008:  ldarg.0
      IL_0009:  call       string Game.BlocksTexturesManager::GetFileName(string)
      IL_000e:  call       valuetype [System.Runtime]System.DateTime [Engine]Engine.Storage::GetFileLastWriteTime(string)
      IL_0013:  stloc.0
      IL_0014:  leave.s    IL_0028

      IL_0016:  leave.s    IL_001b

    }  // end .try
    catch [System.Runtime]System.Object 
    {
      IL_0018:  pop
      IL_0019:  leave.s    IL_001b

    }  // end handler
    IL_001b:  ldc.i4     0x7d0
    IL_0020:  ldc.i4.1
    IL_0021:  ldc.i4.1
    IL_0022:  newobj     instance void [System.Runtime]System.DateTime::.ctor(int32,
                                                                              int32,
                                                                              int32)
    IL_0027:  ret

    IL_0028:  ldloc.0
    IL_0029:  ret
  } // end of method BlocksTexturesManager::GetCreationDate

  .method public hidebysig static class [Engine]Engine.Graphics.Texture2D 
          LoadTexture(string name) cil managed
  {
    // 代码大小       107 (0x6b)
    .maxstack  5
    .locals init (class [Engine]Engine.Graphics.Texture2D V_0,
             class [System.IO]System.IO.Stream V_1,
             class [System.Runtime]System.Exception V_2)
    IL_0000:  ldnull
    IL_0001:  stloc.0
    IL_0002:  ldarg.0
    IL_0003:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0008:  brtrue.s   IL_0060

    .try
    {
      IL_000a:  ldarg.0
      IL_000b:  call       string Game.BlocksTexturesManager::GetFileName(string)
      IL_0010:  ldc.i4.0
      IL_0011:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                              valuetype [Engine]Engine.OpenFileMode)
      IL_0016:  stloc.1
      .try
      {
        IL_0017:  ldloc.1
        IL_0018:  call       void Game.BlocksTexturesManager::ValidateBlocksTexture(class [System.IO]System.IO.Stream)
        IL_001d:  ldloc.1
        IL_001e:  ldc.i4.0
        IL_001f:  conv.i8
        IL_0020:  callvirt   instance void [System.IO]System.IO.Stream::set_Position(int64)
        IL_0025:  ldloc.1
        IL_0026:  ldc.i4.0
        IL_0027:  call       class [Engine]Engine.Graphics.Texture2D [Engine]Engine.Graphics.Texture2D::Load(class [System.IO]System.IO.Stream,
                                                                                                             bool)
        IL_002c:  stloc.0
        IL_002d:  leave.s    IL_0039

      }  // end .try
      finally
      {
        IL_002f:  ldloc.1
        IL_0030:  brfalse.s  IL_0038

        IL_0032:  ldloc.1
        IL_0033:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_0038:  endfinally
      }  // end handler
      IL_0039:  leave.s    IL_0060

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_003b:  stloc.2
      IL_003c:  ldstr      "Could not load blocks texture \"{0}\". Reason: {1}."
      IL_0041:  ldc.i4.2
      IL_0042:  newarr     [System.Runtime]System.Object
      IL_0047:  dup
      IL_0048:  ldc.i4.0
      IL_0049:  ldarg.0
      IL_004a:  stelem.ref
      IL_004b:  dup
      IL_004c:  ldc.i4.1
      IL_004d:  ldloc.2
      IL_004e:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_0053:  stelem.ref
      IL_0054:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_0059:  call       void [Engine]Engine.Log::Warning(string)
      IL_005e:  leave.s    IL_0060

    }  // end handler
    IL_0060:  ldloc.0
    IL_0061:  brtrue.s   IL_0069

    IL_0063:  call       class [Engine]Engine.Graphics.Texture2D Game.BlocksTexturesManager::get_DefaultBlocksTexture()
    IL_0068:  stloc.0
    IL_0069:  ldloc.0
    IL_006a:  ret
  } // end of method BlocksTexturesManager::LoadTexture

  .method public hidebysig static string 
          ImportBlocksTexture(string name,
                              class [System.IO]System.IO.Stream 'stream') cil managed
  {
    // 代码大小       91 (0x5b)
    .maxstack  2
    .locals init (class [System.Runtime]System.Exception V_0,
             class [System.IO]System.IO.Stream V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       class [System.Runtime]System.Exception Game.ExternalContentManager::VerifyExternalContentName(string)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  brfalse.s  IL_000c

    IL_000a:  ldloc.0
    IL_000b:  throw

    IL_000c:  ldarg.0
    IL_000d:  call       string [Engine]Engine.Storage::GetExtension(string)
    IL_0012:  ldstr      ".scbtex"
    IL_0017:  call       bool [System.Runtime]System.String::op_Inequality(string,
                                                                           string)
    IL_001c:  brfalse.s  IL_002b

    IL_001e:  ldarg.0
    IL_001f:  ldstr      ".scbtex"
    IL_0024:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0029:  starg.s    name
    IL_002b:  ldarg.1
    IL_002c:  call       void Game.BlocksTexturesManager::ValidateBlocksTexture(class [System.IO]System.IO.Stream)
    IL_0031:  ldarg.1
    IL_0032:  ldc.i4.0
    IL_0033:  conv.i8
    IL_0034:  callvirt   instance void [System.IO]System.IO.Stream::set_Position(int64)
    IL_0039:  ldarg.0
    IL_003a:  call       string Game.BlocksTexturesManager::GetFileName(string)
    IL_003f:  ldc.i4.2
    IL_0040:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                            valuetype [Engine]Engine.OpenFileMode)
    IL_0045:  stloc.1
    .try
    {
      IL_0046:  ldarg.1
      IL_0047:  ldloc.1
      IL_0048:  callvirt   instance void [System.IO]System.IO.Stream::CopyTo(class [System.IO]System.IO.Stream)
      IL_004d:  leave.s    IL_0059

    }  // end .try
    finally
    {
      IL_004f:  ldloc.1
      IL_0050:  brfalse.s  IL_0058

      IL_0052:  ldloc.1
      IL_0053:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0058:  endfinally
    }  // end handler
    IL_0059:  ldarg.0
    IL_005a:  ret
  } // end of method BlocksTexturesManager::ImportBlocksTexture

  .method public hidebysig static void  DeleteBlocksTexture(string name) cil managed
  {
    // 代码大小       59 (0x3b)
    .maxstack  5
    .locals init (class [System.Runtime]System.Exception V_0)
    .try
    {
      IL_0000:  ldarg.0
      IL_0001:  call       string Game.BlocksTexturesManager::GetFileName(string)
      IL_0006:  call       void [Engine]Engine.Storage::DeleteFile(string)
      IL_000b:  leave.s    IL_002a

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_000d:  stloc.0
      IL_000e:  ldstr      "Unable to delete blocks texture \"{0}\""
      IL_0013:  ldc.i4.1
      IL_0014:  newarr     [System.Runtime]System.Object
      IL_0019:  dup
      IL_001a:  ldc.i4.0
      IL_001b:  ldarg.0
      IL_001c:  stelem.ref
      IL_001d:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_0022:  ldloc.0
      IL_0023:  call       void Game.ExceptionManager::ReportExceptionToUser(string,
                                                                             class [System.Runtime]System.Exception)
      IL_0028:  leave.s    IL_002a

    }  // end handler
    IL_002a:  ldsfld     class [System.Runtime]System.Action`1<string> Game.BlocksTexturesManager::BlocksTextureDeleted
    IL_002f:  dup
    IL_0030:  brtrue.s   IL_0034

    IL_0032:  pop
    IL_0033:  ret

    IL_0034:  ldarg.0
    IL_0035:  callvirt   instance void class [System.Runtime]System.Action`1<string>::Invoke(!0)
    IL_003a:  ret
  } // end of method BlocksTexturesManager::DeleteBlocksTexture

  .method public hidebysig static void  UpdateBlocksTexturesList() cil managed
  {
    // 代码大小       82 (0x52)
    .maxstack  2
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<string> V_0,
             string V_1)
    IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksTexturesManager::m_blockTextureNames
    IL_0005:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Clear()
    IL_000a:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksTexturesManager::m_blockTextureNames
    IL_000f:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0014:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_0019:  call       string Game.BlocksTexturesManager::get_BlockTexturesDirectoryName()
    IL_001e:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<string> [Engine]Engine.Storage::ListFileNames(string)
    IL_0023:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<string>::GetEnumerator()
    IL_0028:  stloc.0
    .try
    {
      IL_0029:  br.s       IL_003d

      IL_002b:  ldloc.0
      IL_002c:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<string>::get_Current()
      IL_0031:  stloc.1
      IL_0032:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksTexturesManager::m_blockTextureNames
      IL_0037:  ldloc.1
      IL_0038:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
      IL_003d:  ldloc.0
      IL_003e:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0043:  brtrue.s   IL_002b

      IL_0045:  leave.s    IL_0051

    }  // end .try
    finally
    {
      IL_0047:  ldloc.0
      IL_0048:  brfalse.s  IL_0050

      IL_004a:  ldloc.0
      IL_004b:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0050:  endfinally
    }  // end handler
    IL_0051:  ret
  } // end of method BlocksTexturesManager::UpdateBlocksTexturesList

  .method private hidebysig specialname static 
          string  get_BlockTexturesDirectoryName() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldstr      "data:/TexturePacks"
    IL_0005:  ret
  } // end of method BlocksTexturesManager::get_BlockTexturesDirectoryName

  .method private hidebysig static void  ValidateBlocksTexture(class [System.IO]System.IO.Stream 'stream') cil managed
  {
    // 代码大小       162 (0xa2)
    .maxstack  5
    .locals init (class [Engine]Engine.Media.Image V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       class [Engine]Engine.Media.Image [Engine]Engine.Media.Image::Load(class [System.IO]System.IO.Stream)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldfld      int32 [Engine]Engine.Media.Image::Width
    IL_000d:  ldc.i4     0x400
    IL_0012:  bgt.s      IL_0021

    IL_0014:  ldloc.0
    IL_0015:  ldfld      int32 [Engine]Engine.Media.Image::Height
    IL_001a:  ldc.i4     0x400
    IL_001f:  ble.s      IL_0053

    IL_0021:  ldstr      "Blocks texture is larger than 1024x1024 pixels (si"
    + "ze={0}x{1})"
    IL_0026:  ldc.i4.2
    IL_0027:  newarr     [System.Runtime]System.Object
    IL_002c:  dup
    IL_002d:  ldc.i4.0
    IL_002e:  ldloc.0
    IL_002f:  ldfld      int32 [Engine]Engine.Media.Image::Width
    IL_0034:  box        [System.Runtime]System.Int32
    IL_0039:  stelem.ref
    IL_003a:  dup
    IL_003b:  ldc.i4.1
    IL_003c:  ldloc.0
    IL_003d:  ldfld      int32 [Engine]Engine.Media.Image::Height
    IL_0042:  box        [System.Runtime]System.Int32
    IL_0047:  stelem.ref
    IL_0048:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_004d:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0052:  throw

    IL_0053:  ldloc.0
    IL_0054:  ldfld      int32 [Engine]Engine.Media.Image::Width
    IL_0059:  conv.i8
    IL_005a:  call       bool [Engine]Engine.MathUtils::IsPowerOf2(int64)
    IL_005f:  brfalse.s  IL_006f

    IL_0061:  ldloc.0
    IL_0062:  ldfld      int32 [Engine]Engine.Media.Image::Height
    IL_0067:  conv.i8
    IL_0068:  call       bool [Engine]Engine.MathUtils::IsPowerOf2(int64)
    IL_006d:  brtrue.s   IL_00a1

    IL_006f:  ldstr      "Blocks texture does not have power-of-two size (si"
    + "ze={0}x{1})"
    IL_0074:  ldc.i4.2
    IL_0075:  newarr     [System.Runtime]System.Object
    IL_007a:  dup
    IL_007b:  ldc.i4.0
    IL_007c:  ldloc.0
    IL_007d:  ldfld      int32 [Engine]Engine.Media.Image::Width
    IL_0082:  box        [System.Runtime]System.Int32
    IL_0087:  stelem.ref
    IL_0088:  dup
    IL_0089:  ldc.i4.1
    IL_008a:  ldloc.0
    IL_008b:  ldfld      int32 [Engine]Engine.Media.Image::Height
    IL_0090:  box        [System.Runtime]System.Int32
    IL_0095:  stelem.ref
    IL_0096:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_009b:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_00a0:  throw

    IL_00a1:  ret
  } // end of method BlocksTexturesManager::ValidateBlocksTexture

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<string>::.ctor()
    IL_0005:  stsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksTexturesManager::m_blockTextureNames
    IL_000a:  ret
  } // end of method BlocksTexturesManager::.cctor

  .event class [System.Runtime]System.Action`1<string> BlocksTextureDeleted
  {
    .addon void Game.BlocksTexturesManager::add_BlocksTextureDeleted(class [System.Runtime]System.Action`1<string>)
    .removeon void Game.BlocksTexturesManager::remove_BlocksTextureDeleted(class [System.Runtime]System.Action`1<string>)
  } // end of event BlocksTexturesManager::BlocksTextureDeleted
  .property class [Engine]Engine.Graphics.Texture2D
          DefaultBlocksTexture()
  {
    .get class [Engine]Engine.Graphics.Texture2D Game.BlocksTexturesManager::get_DefaultBlocksTexture()
    .set void Game.BlocksTexturesManager::set_DefaultBlocksTexture(class [Engine]Engine.Graphics.Texture2D)
  } // end of property BlocksTexturesManager::DefaultBlocksTexture
  .property valuetype [Engine]Engine.ReadOnlyList`1<string>
          BlockTexturesNames()
  {
    .get valuetype [Engine]Engine.ReadOnlyList`1<string> Game.BlocksTexturesManager::get_BlockTexturesNames()
  } // end of property BlocksTexturesManager::BlockTexturesNames
  .property string BlockTexturesDirectoryName()
  {
    .get string Game.BlocksTexturesManager::get_BlockTexturesDirectoryName()
  } // end of property BlocksTexturesManager::BlockTexturesDirectoryName
} // end of class Game.BlocksTexturesManager