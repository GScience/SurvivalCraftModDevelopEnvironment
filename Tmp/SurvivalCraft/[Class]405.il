.class public abstract auto ansi sealed beforefieldinit Game.CharacterSkinsManager
       extends [System.Runtime]System.Object
{
  .field private static class [System.Collections]System.Collections.Generic.List`1<string> m_characterSkinNames
  .field private static class [System.Runtime]System.Action`1<string> CharacterSkinDeleted
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig static void  Initialize() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  call       string Game.CharacterSkinsManager::get_CharacterSkinsDirectoryName()
    IL_0005:  call       void [Engine]Engine.Storage::CreateDirectory(string)
    IL_000a:  ret
  } // end of method CharacterSkinsManager::Initialize

  .method public hidebysig specialname static 
          void  add_CharacterSkinDeleted(class [System.Runtime]System.Action`1<string> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       39 (0x27)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<string> V_0,
             class [System.Runtime]System.Action`1<string> V_1,
             class [System.Runtime]System.Action`1<string> V_2)
    IL_0000:  ldsfld     class [System.Runtime]System.Action`1<string> Game.CharacterSkinsManager::CharacterSkinDeleted
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  stloc.1
    IL_0008:  ldloc.1
    IL_0009:  ldarg.0
    IL_000a:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Combine(class [System.Runtime]System.Delegate,
                                                                                                        class [System.Runtime]System.Delegate)
    IL_000f:  castclass  class [System.Runtime]System.Action`1<string>
    IL_0014:  stloc.2
    IL_0015:  ldsflda    class [System.Runtime]System.Action`1<string> Game.CharacterSkinsManager::CharacterSkinDeleted
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
  } // end of method CharacterSkinsManager::add_CharacterSkinDeleted

  .method public hidebysig specialname static 
          void  remove_CharacterSkinDeleted(class [System.Runtime]System.Action`1<string> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       39 (0x27)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<string> V_0,
             class [System.Runtime]System.Action`1<string> V_1,
             class [System.Runtime]System.Action`1<string> V_2)
    IL_0000:  ldsfld     class [System.Runtime]System.Action`1<string> Game.CharacterSkinsManager::CharacterSkinDeleted
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  stloc.1
    IL_0008:  ldloc.1
    IL_0009:  ldarg.0
    IL_000a:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Remove(class [System.Runtime]System.Delegate,
                                                                                                       class [System.Runtime]System.Delegate)
    IL_000f:  castclass  class [System.Runtime]System.Action`1<string>
    IL_0014:  stloc.2
    IL_0015:  ldsflda    class [System.Runtime]System.Action`1<string> Game.CharacterSkinsManager::CharacterSkinDeleted
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
  } // end of method CharacterSkinsManager::remove_CharacterSkinDeleted

  .method public hidebysig specialname static 
          valuetype [Engine]Engine.ReadOnlyList`1<string> 
          get_CharacterSkinsNames() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.CharacterSkinsManager::m_characterSkinNames
    IL_0005:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<string>::.ctor(class [System.Collections]System.Collections.Generic.List`1<!0>)
    IL_000a:  ret
  } // end of method CharacterSkinsManager::get_CharacterSkinsNames

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
    IL_0012:  call       string Game.CharacterSkinsManager::get_CharacterSkinsDirectoryName()
    IL_0017:  stelem.ref
    IL_0018:  dup
    IL_0019:  ldc.i4.1
    IL_001a:  ldarg.0
    IL_001b:  stelem.ref
    IL_001c:  call       string [Engine]Engine.Storage::CombinePaths(string[])
    IL_0021:  ret
  } // end of method CharacterSkinsManager::GetFileName

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
  } // end of method CharacterSkinsManager::GetDisplayName

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
      IL_0009:  call       string Game.CharacterSkinsManager::GetFileName(string)
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
  } // end of method CharacterSkinsManager::GetCreationDate

  .method public hidebysig static class [Engine]Engine.Graphics.Texture2D 
          LoadTexture(string name) cil managed
  {
    // 代码大小       112 (0x70)
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
      IL_000b:  call       string Game.CharacterSkinsManager::GetFileName(string)
      IL_0010:  ldc.i4.0
      IL_0011:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                              valuetype [Engine]Engine.OpenFileMode)
      IL_0016:  stloc.1
      .try
      {
        IL_0017:  ldloc.1
        IL_0018:  call       void Game.CharacterSkinsManager::ValidateCharacterSkin(class [System.IO]System.IO.Stream)
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
      IL_003c:  ldstr      "Could not load character skin \"{0}\". Reason: {1}."
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
    IL_0061:  brtrue.s   IL_006e

    IL_0063:  ldstr      "Textures/Creatures/Human"
    IL_0068:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_006d:  stloc.0
    IL_006e:  ldloc.0
    IL_006f:  ret
  } // end of method CharacterSkinsManager::LoadTexture

  .method public hidebysig static string 
          ImportCharacterSkin(string name,
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
    IL_0012:  ldstr      ".scskin"
    IL_0017:  call       bool [System.Runtime]System.String::op_Inequality(string,
                                                                           string)
    IL_001c:  brfalse.s  IL_002b

    IL_001e:  ldarg.0
    IL_001f:  ldstr      ".scskin"
    IL_0024:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0029:  starg.s    name
    IL_002b:  ldarg.1
    IL_002c:  call       void Game.CharacterSkinsManager::ValidateCharacterSkin(class [System.IO]System.IO.Stream)
    IL_0031:  ldarg.1
    IL_0032:  ldc.i4.0
    IL_0033:  conv.i8
    IL_0034:  callvirt   instance void [System.IO]System.IO.Stream::set_Position(int64)
    IL_0039:  ldarg.0
    IL_003a:  call       string Game.CharacterSkinsManager::GetFileName(string)
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
  } // end of method CharacterSkinsManager::ImportCharacterSkin

  .method public hidebysig static void  DeleteCharacterSkin(string name) cil managed
  {
    // 代码大小       68 (0x44)
    .maxstack  5
    .locals init (class [System.Runtime]System.Exception V_0)
    .try
    {
      IL_0000:  ldarg.0
      IL_0001:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
      IL_0006:  brtrue.s   IL_0024

      IL_0008:  ldarg.0
      IL_0009:  call       string Game.CharacterSkinsManager::GetFileName(string)
      IL_000e:  call       void [Engine]Engine.Storage::DeleteFile(string)
      IL_0013:  ldsfld     class [System.Runtime]System.Action`1<string> Game.CharacterSkinsManager::CharacterSkinDeleted
      IL_0018:  dup
      IL_0019:  brtrue.s   IL_001e

      IL_001b:  pop
      IL_001c:  br.s       IL_0024

      IL_001e:  ldarg.0
      IL_001f:  callvirt   instance void class [System.Runtime]System.Action`1<string>::Invoke(!0)
      IL_0024:  leave.s    IL_0043

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0026:  stloc.0
      IL_0027:  ldstr      "Unable to delete character skin \"{0}\""
      IL_002c:  ldc.i4.1
      IL_002d:  newarr     [System.Runtime]System.Object
      IL_0032:  dup
      IL_0033:  ldc.i4.0
      IL_0034:  ldarg.0
      IL_0035:  stelem.ref
      IL_0036:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_003b:  ldloc.0
      IL_003c:  call       void Game.ExceptionManager::ReportExceptionToUser(string,
                                                                             class [System.Runtime]System.Exception)
      IL_0041:  leave.s    IL_0043

    }  // end handler
    IL_0043:  ret
  } // end of method CharacterSkinsManager::DeleteCharacterSkin

  .method public hidebysig static void  UpdateCharacterSkinsList() cil managed
  {
    // 代码大小       105 (0x69)
    .maxstack  2
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<string> V_0,
             string V_1)
    IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.CharacterSkinsManager::m_characterSkinNames
    IL_0005:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Clear()
    IL_000a:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.CharacterSkinsManager::m_characterSkinNames
    IL_000f:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0014:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_0019:  call       string Game.CharacterSkinsManager::get_CharacterSkinsDirectoryName()
    IL_001e:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<string> [Engine]Engine.Storage::ListFileNames(string)
    IL_0023:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<string>::GetEnumerator()
    IL_0028:  stloc.0
    .try
    {
      IL_0029:  br.s       IL_0054

      IL_002b:  ldloc.0
      IL_002c:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<string>::get_Current()
      IL_0031:  stloc.1
      IL_0032:  ldloc.1
      IL_0033:  call       string [Engine]Engine.Storage::GetExtension(string)
      IL_0038:  callvirt   instance string [System.Runtime]System.String::ToLower()
      IL_003d:  ldstr      ".scskin"
      IL_0042:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0047:  brfalse.s  IL_0054

      IL_0049:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.CharacterSkinsManager::m_characterSkinNames
      IL_004e:  ldloc.1
      IL_004f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
      IL_0054:  ldloc.0
      IL_0055:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_005a:  brtrue.s   IL_002b

      IL_005c:  leave.s    IL_0068

    }  // end .try
    finally
    {
      IL_005e:  ldloc.0
      IL_005f:  brfalse.s  IL_0067

      IL_0061:  ldloc.0
      IL_0062:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0067:  endfinally
    }  // end handler
    IL_0068:  ret
  } // end of method CharacterSkinsManager::UpdateCharacterSkinsList

  .method private hidebysig specialname static 
          string  get_CharacterSkinsDirectoryName() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldstr      "data:/CharacterSkins"
    IL_0005:  ret
  } // end of method CharacterSkinsManager::get_CharacterSkinsDirectoryName

  .method private hidebysig static void  ValidateCharacterSkin(class [System.IO]System.IO.Stream 'stream') cil managed
  {
    // 代码大小       162 (0xa2)
    .maxstack  5
    .locals init (class [Engine]Engine.Media.Image V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       class [Engine]Engine.Media.Image [Engine]Engine.Media.Image::Load(class [System.IO]System.IO.Stream)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldfld      int32 [Engine]Engine.Media.Image::Width
    IL_000d:  ldc.i4     0x100
    IL_0012:  bgt.s      IL_0021

    IL_0014:  ldloc.0
    IL_0015:  ldfld      int32 [Engine]Engine.Media.Image::Height
    IL_001a:  ldc.i4     0x100
    IL_001f:  ble.s      IL_0053

    IL_0021:  ldstr      "Character skin is larger than 256x256 pixels (size"
    + "={0}x{1})"
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

    IL_006f:  ldstr      "Character skin does not have power-of-two size (si"
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
  } // end of method CharacterSkinsManager::ValidateCharacterSkin

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<string>::.ctor()
    IL_0005:  stsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.CharacterSkinsManager::m_characterSkinNames
    IL_000a:  ret
  } // end of method CharacterSkinsManager::.cctor

  .event class [System.Runtime]System.Action`1<string> CharacterSkinDeleted
  {
    .addon void Game.CharacterSkinsManager::add_CharacterSkinDeleted(class [System.Runtime]System.Action`1<string>)
    .removeon void Game.CharacterSkinsManager::remove_CharacterSkinDeleted(class [System.Runtime]System.Action`1<string>)
  } // end of event CharacterSkinsManager::CharacterSkinDeleted
  .property valuetype [Engine]Engine.ReadOnlyList`1<string>
          CharacterSkinsNames()
  {
    .get valuetype [Engine]Engine.ReadOnlyList`1<string> Game.CharacterSkinsManager::get_CharacterSkinsNames()
  } // end of property CharacterSkinsManager::CharacterSkinsNames
  .property string CharacterSkinsDirectoryName()
  {
    .get string Game.CharacterSkinsManager::get_CharacterSkinsDirectoryName()
  } // end of property CharacterSkinsManager::CharacterSkinsDirectoryName
} // end of class Game.CharacterSkinsManager