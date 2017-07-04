.class public abstract auto ansi sealed beforefieldinit Game.CharacterSkinsManager
       extends [System.Runtime]System.Object
{
  .field private static class [System.Collections]System.Collections.Generic.List`1<string> m_characterSkinNames
  .field private static class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.PlayerClass,class [Engine]Engine.Graphics.Model> m_playerModels
  .field private static class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.PlayerClass,class [Engine]Engine.Graphics.Model> m_outerClothingModels
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
    IL_0005:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<string>::.ctor(class [System.Runtime]System.Collections.Generic.IList`1<!0>)
    IL_000a:  ret
  } // end of method CharacterSkinsManager::get_CharacterSkinsNames

  .method public hidebysig static bool  IsBuiltIn(string name) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldstr      "$"
    IL_0006:  callvirt   instance bool [System.Runtime]System.String::StartsWith(string)
    IL_000b:  ret
  } // end of method CharacterSkinsManager::IsBuiltIn

  .method public hidebysig static valuetype [System.Runtime]System.Nullable`1<valuetype Game.PlayerClass> 
          GetPlayerClass(string name) cil managed
  {
    // 代码大小       110 (0x6e)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype Game.PlayerClass> V_0)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance string [System.Runtime]System.String::ToLower()
    IL_0006:  starg.s    name
    IL_0008:  ldarg.0
    IL_0009:  ldstr      "female"
    IL_000e:  callvirt   instance bool [System.Runtime]System.String::Contains(string)
    IL_0013:  brtrue.s   IL_002f

    IL_0015:  ldarg.0
    IL_0016:  ldstr      "girl"
    IL_001b:  callvirt   instance bool [System.Runtime]System.String::Contains(string)
    IL_0020:  brtrue.s   IL_002f

    IL_0022:  ldarg.0
    IL_0023:  ldstr      "woman"
    IL_0028:  callvirt   instance bool [System.Runtime]System.String::Contains(string)
    IL_002d:  brfalse.s  IL_0036

    IL_002f:  ldc.i4.1
    IL_0030:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.PlayerClass>::.ctor(!0)
    IL_0035:  ret

    IL_0036:  ldarg.0
    IL_0037:  ldstr      "male"
    IL_003c:  callvirt   instance bool [System.Runtime]System.String::Contains(string)
    IL_0041:  brtrue.s   IL_005d

    IL_0043:  ldarg.0
    IL_0044:  ldstr      "boy"
    IL_0049:  callvirt   instance bool [System.Runtime]System.String::Contains(string)
    IL_004e:  brtrue.s   IL_005d

    IL_0050:  ldarg.0
    IL_0051:  ldstr      "man"
    IL_0056:  callvirt   instance bool [System.Runtime]System.String::Contains(string)
    IL_005b:  brfalse.s  IL_0064

    IL_005d:  ldc.i4.0
    IL_005e:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.PlayerClass>::.ctor(!0)
    IL_0063:  ret

    IL_0064:  ldloca.s   V_0
    IL_0066:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.PlayerClass>
    IL_006c:  ldloc.0
    IL_006d:  ret
  } // end of method CharacterSkinsManager::GetPlayerClass

  .method public hidebysig static string 
          GetFileName(string name) cil managed
  {
    // 代码大小       34 (0x22)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       bool Game.CharacterSkinsManager::IsBuiltIn(string)
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
    // 代码大小       157 (0x9d)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  call       bool Game.CharacterSkinsManager::IsBuiltIn(string)
    IL_0006:  brfalse    IL_0096

    IL_000b:  ldarg.0
    IL_000c:  ldstr      "Female"
    IL_0011:  callvirt   instance bool [System.Runtime]System.String::Contains(string)
    IL_0016:  brfalse.s  IL_0057

    IL_0018:  ldarg.0
    IL_0019:  ldstr      "1"
    IL_001e:  callvirt   instance bool [System.Runtime]System.String::Contains(string)
    IL_0023:  brfalse.s  IL_002b

    IL_0025:  ldstr      "Doris"
    IL_002a:  ret

    IL_002b:  ldarg.0
    IL_002c:  ldstr      "2"
    IL_0031:  callvirt   instance bool [System.Runtime]System.String::Contains(string)
    IL_0036:  brfalse.s  IL_003e

    IL_0038:  ldstr      "Mabel"
    IL_003d:  ret

    IL_003e:  ldarg.0
    IL_003f:  ldstr      "3"
    IL_0044:  callvirt   instance bool [System.Runtime]System.String::Contains(string)
    IL_0049:  brfalse.s  IL_0051

    IL_004b:  ldstr      "Ada"
    IL_0050:  ret

    IL_0051:  ldstr      "Shirley"
    IL_0056:  ret

    IL_0057:  ldarg.0
    IL_0058:  ldstr      "1"
    IL_005d:  callvirt   instance bool [System.Runtime]System.String::Contains(string)
    IL_0062:  brfalse.s  IL_006a

    IL_0064:  ldstr      "Walter"
    IL_0069:  ret

    IL_006a:  ldarg.0
    IL_006b:  ldstr      "2"
    IL_0070:  callvirt   instance bool [System.Runtime]System.String::Contains(string)
    IL_0075:  brfalse.s  IL_007d

    IL_0077:  ldstr      "Basil"
    IL_007c:  ret

    IL_007d:  ldarg.0
    IL_007e:  ldstr      "3"
    IL_0083:  callvirt   instance bool [System.Runtime]System.String::Contains(string)
    IL_0088:  brfalse.s  IL_0090

    IL_008a:  ldstr      "Geoffrey"
    IL_008f:  ret

    IL_0090:  ldstr      "Zachary"
    IL_0095:  ret

    IL_0096:  ldarg.0
    IL_0097:  call       string [Engine]Engine.Storage::GetFileNameWithoutExtension(string)
    IL_009c:  ret
  } // end of method CharacterSkinsManager::GetDisplayName

  .method public hidebysig static valuetype [System.Runtime]System.DateTime 
          GetCreationDate(string name) cil managed
  {
    // 代码大小       44 (0x2c)
    .maxstack  3
    .locals init (string V_0,
             valuetype [System.Runtime]System.DateTime V_1)
    .try
    {
      IL_0000:  ldarg.0
      IL_0001:  call       string Game.CharacterSkinsManager::GetFileName(string)
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
      IL_000d:  brtrue.s   IL_0018

      IL_000f:  ldloc.0
      IL_0010:  call       valuetype [System.Runtime]System.DateTime [Engine]Engine.Storage::GetFileLastWriteTime(string)
      IL_0015:  stloc.1
      IL_0016:  leave.s    IL_002a

      IL_0018:  leave.s    IL_001d

    }  // end .try
    catch [System.Runtime]System.Object 
    {
      IL_001a:  pop
      IL_001b:  leave.s    IL_001d

    }  // end handler
    IL_001d:  ldc.i4     0x7d0
    IL_0022:  ldc.i4.1
    IL_0023:  ldc.i4.1
    IL_0024:  newobj     instance void [System.Runtime]System.DateTime::.ctor(int32,
                                                                              int32,
                                                                              int32)
    IL_0029:  ret

    IL_002a:  ldloc.1
    IL_002b:  ret
  } // end of method CharacterSkinsManager::GetCreationDate

  .method public hidebysig static class [Engine]Engine.Graphics.Texture2D 
          LoadTexture(string name) cil managed
  {
    // 代码大小       152 (0x98)
    .maxstack  5
    .locals init (class [Engine]Engine.Graphics.Texture2D V_0,
             string V_1,
             class [System.IO]System.IO.Stream V_2,
             class [System.Runtime]System.Exception V_3)
    IL_0000:  ldnull
    IL_0001:  stloc.0
    .try
    {
      IL_0002:  ldarg.0
      IL_0003:  call       string Game.CharacterSkinsManager::GetFileName(string)
      IL_0008:  stloc.1
      IL_0009:  ldloc.1
      IL_000a:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
      IL_000f:  brtrue.s   IL_003b

      IL_0011:  ldloc.1
      IL_0012:  ldc.i4.0
      IL_0013:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                              valuetype [Engine]Engine.OpenFileMode)
      IL_0018:  stloc.2
      .try
      {
        IL_0019:  ldloc.2
        IL_001a:  call       void Game.CharacterSkinsManager::ValidateCharacterSkin(class [System.IO]System.IO.Stream)
        IL_001f:  ldloc.2
        IL_0020:  ldc.i4.0
        IL_0021:  conv.i8
        IL_0022:  callvirt   instance void [System.IO]System.IO.Stream::set_Position(int64)
        IL_0027:  ldloc.2
        IL_0028:  ldc.i4.0
        IL_0029:  call       class [Engine]Engine.Graphics.Texture2D [Engine]Engine.Graphics.Texture2D::Load(class [System.IO]System.IO.Stream,
                                                                                                             bool)
        IL_002e:  stloc.0
        IL_002f:  leave.s    IL_0061

      }  // end .try
      finally
      {
        IL_0031:  ldloc.2
        IL_0032:  brfalse.s  IL_003a

        IL_0034:  ldloc.2
        IL_0035:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_003a:  endfinally
      }  // end handler
      IL_003b:  ldstr      "Textures/Creatures/Human"
      IL_0040:  ldarg.0
      IL_0041:  ldc.i4.1
      IL_0042:  callvirt   instance string [System.Runtime]System.String::Substring(int32)
      IL_0047:  ldstr      " "
      IL_004c:  ldstr      ""
      IL_0051:  callvirt   instance string [System.Runtime]System.String::Replace(string,
                                                                                  string)
      IL_0056:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string)
      IL_005b:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
      IL_0060:  stloc.0
      IL_0061:  leave.s    IL_0088

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0063:  stloc.3
      IL_0064:  ldstr      "Could not load character skin \"{0}\". Reason: {1}."
      IL_0069:  ldc.i4.2
      IL_006a:  newarr     [System.Runtime]System.Object
      IL_006f:  dup
      IL_0070:  ldc.i4.0
      IL_0071:  ldarg.0
      IL_0072:  stelem.ref
      IL_0073:  dup
      IL_0074:  ldc.i4.1
      IL_0075:  ldloc.3
      IL_0076:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_007b:  stelem.ref
      IL_007c:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_0081:  call       void [Engine]Engine.Log::Warning(string)
      IL_0086:  leave.s    IL_0088

    }  // end handler
    IL_0088:  ldloc.0
    IL_0089:  brtrue.s   IL_0096

    IL_008b:  ldstr      "Textures/Creatures/HumanMale1"
    IL_0090:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_0095:  stloc.0
    IL_0096:  ldloc.0
    IL_0097:  ret
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
    // 代码大小       70 (0x46)
    .maxstack  5
    .locals init (string V_0,
             class [System.Runtime]System.Exception V_1)
    .try
    {
      IL_0000:  ldarg.0
      IL_0001:  call       string Game.CharacterSkinsManager::GetFileName(string)
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
      IL_000d:  brtrue.s   IL_0026

      IL_000f:  ldloc.0
      IL_0010:  call       void [Engine]Engine.Storage::DeleteFile(string)
      IL_0015:  ldsfld     class [System.Runtime]System.Action`1<string> Game.CharacterSkinsManager::CharacterSkinDeleted
      IL_001a:  dup
      IL_001b:  brtrue.s   IL_0020

      IL_001d:  pop
      IL_001e:  br.s       IL_0026

      IL_0020:  ldarg.0
      IL_0021:  callvirt   instance void class [System.Runtime]System.Action`1<string>::Invoke(!0)
      IL_0026:  leave.s    IL_0045

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0028:  stloc.1
      IL_0029:  ldstr      "Unable to delete character skin \"{0}\""
      IL_002e:  ldc.i4.1
      IL_002f:  newarr     [System.Runtime]System.Object
      IL_0034:  dup
      IL_0035:  ldc.i4.0
      IL_0036:  ldarg.0
      IL_0037:  stelem.ref
      IL_0038:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_003d:  ldloc.1
      IL_003e:  call       void Game.ExceptionManager::ReportExceptionToUser(string,
                                                                             class [System.Runtime]System.Exception)
      IL_0043:  leave.s    IL_0045

    }  // end handler
    IL_0045:  ret
  } // end of method CharacterSkinsManager::DeleteCharacterSkin

  .method public hidebysig static void  UpdateCharacterSkinsList() cil managed
  {
    // 代码大小       210 (0xd2)
    .maxstack  2
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<string> V_0,
             string V_1)
    IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.CharacterSkinsManager::m_characterSkinNames
    IL_0005:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Clear()
    IL_000a:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.CharacterSkinsManager::m_characterSkinNames
    IL_000f:  ldstr      "$Male1"
    IL_0014:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_0019:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.CharacterSkinsManager::m_characterSkinNames
    IL_001e:  ldstr      "$Male2"
    IL_0023:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_0028:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.CharacterSkinsManager::m_characterSkinNames
    IL_002d:  ldstr      "$Male3"
    IL_0032:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_0037:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.CharacterSkinsManager::m_characterSkinNames
    IL_003c:  ldstr      "$Male4"
    IL_0041:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_0046:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.CharacterSkinsManager::m_characterSkinNames
    IL_004b:  ldstr      "$Female1"
    IL_0050:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_0055:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.CharacterSkinsManager::m_characterSkinNames
    IL_005a:  ldstr      "$Female2"
    IL_005f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_0064:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.CharacterSkinsManager::m_characterSkinNames
    IL_0069:  ldstr      "$Female3"
    IL_006e:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_0073:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.CharacterSkinsManager::m_characterSkinNames
    IL_0078:  ldstr      "$Female4"
    IL_007d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_0082:  call       string Game.CharacterSkinsManager::get_CharacterSkinsDirectoryName()
    IL_0087:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<string> [Engine]Engine.Storage::ListFileNames(string)
    IL_008c:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<string>::GetEnumerator()
    IL_0091:  stloc.0
    .try
    {
      IL_0092:  br.s       IL_00bd

      IL_0094:  ldloc.0
      IL_0095:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<string>::get_Current()
      IL_009a:  stloc.1
      IL_009b:  ldloc.1
      IL_009c:  call       string [Engine]Engine.Storage::GetExtension(string)
      IL_00a1:  callvirt   instance string [System.Runtime]System.String::ToLower()
      IL_00a6:  ldstr      ".scskin"
      IL_00ab:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_00b0:  brfalse.s  IL_00bd

      IL_00b2:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.CharacterSkinsManager::m_characterSkinNames
      IL_00b7:  ldloc.1
      IL_00b8:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
      IL_00bd:  ldloc.0
      IL_00be:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_00c3:  brtrue.s   IL_0094

      IL_00c5:  leave.s    IL_00d1

    }  // end .try
    finally
    {
      IL_00c7:  ldloc.0
      IL_00c8:  brfalse.s  IL_00d0

      IL_00ca:  ldloc.0
      IL_00cb:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00d0:  endfinally
    }  // end handler
    IL_00d1:  ret
  } // end of method CharacterSkinsManager::UpdateCharacterSkinsList

  .method public hidebysig static class [Engine]Engine.Graphics.Model 
          GetPlayerModel(valuetype Game.PlayerClass playerClass) cil managed
  {
    // 代码大小       104 (0x68)
    .maxstack  3
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_1)
    IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.PlayerClass,class [Engine]Engine.Graphics.Model> Game.CharacterSkinsManager::m_playerModels
    IL_0005:  ldarg.0
    IL_0006:  ldloca.s   V_0
    IL_0008:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.PlayerClass,class [Engine]Engine.Graphics.Model>::TryGetValue(!0,
                                                                                                                                                                                      !1&)
    IL_000d:  brtrue.s   IL_0066

    IL_000f:  ldarg.0
    IL_0010:  brfalse.s  IL_0018

    IL_0012:  ldarg.0
    IL_0013:  ldc.i4.1
    IL_0014:  beq.s      IL_0026

    IL_0016:  br.s       IL_0034

    IL_0018:  ldstr      "MalePlayer"
    IL_001d:  ldc.i4.1
    IL_001e:  call       class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.DatabaseManager::FindEntityValuesDictionary(string,
                                                                                                                                 bool)
    IL_0023:  stloc.1
    IL_0024:  br.s       IL_003f

    IL_0026:  ldstr      "FemalePlayer"
    IL_002b:  ldc.i4.1
    IL_002c:  call       class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.DatabaseManager::FindEntityValuesDictionary(string,
                                                                                                                                 bool)
    IL_0031:  stloc.1
    IL_0032:  br.s       IL_003f

    IL_0034:  ldstr      "Unknown player class."
    IL_0039:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_003e:  throw

    IL_003f:  ldloc.1
    IL_0040:  ldstr      "HumanModel"
    IL_0045:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string)
    IL_004a:  ldstr      "ModelName"
    IL_004f:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_0054:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_0059:  stloc.0
    IL_005a:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.PlayerClass,class [Engine]Engine.Graphics.Model> Game.CharacterSkinsManager::m_playerModels
    IL_005f:  ldarg.0
    IL_0060:  ldloc.0
    IL_0061:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.PlayerClass,class [Engine]Engine.Graphics.Model>::Add(!0,
                                                                                                                                                                              !1)
    IL_0066:  ldloc.0
    IL_0067:  ret
  } // end of method CharacterSkinsManager::GetPlayerModel

  .method public hidebysig static class [Engine]Engine.Graphics.Model 
          GetOuterClothingModel(valuetype Game.PlayerClass playerClass) cil managed
  {
    // 代码大小       104 (0x68)
    .maxstack  3
    .locals init (class [Engine]Engine.Graphics.Model V_0,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_1)
    IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.PlayerClass,class [Engine]Engine.Graphics.Model> Game.CharacterSkinsManager::m_outerClothingModels
    IL_0005:  ldarg.0
    IL_0006:  ldloca.s   V_0
    IL_0008:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.PlayerClass,class [Engine]Engine.Graphics.Model>::TryGetValue(!0,
                                                                                                                                                                                      !1&)
    IL_000d:  brtrue.s   IL_0066

    IL_000f:  ldarg.0
    IL_0010:  brfalse.s  IL_0018

    IL_0012:  ldarg.0
    IL_0013:  ldc.i4.1
    IL_0014:  beq.s      IL_0026

    IL_0016:  br.s       IL_0034

    IL_0018:  ldstr      "MalePlayer"
    IL_001d:  ldc.i4.1
    IL_001e:  call       class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.DatabaseManager::FindEntityValuesDictionary(string,
                                                                                                                                 bool)
    IL_0023:  stloc.1
    IL_0024:  br.s       IL_003f

    IL_0026:  ldstr      "FemalePlayer"
    IL_002b:  ldc.i4.1
    IL_002c:  call       class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.DatabaseManager::FindEntityValuesDictionary(string,
                                                                                                                                 bool)
    IL_0031:  stloc.1
    IL_0032:  br.s       IL_003f

    IL_0034:  ldstr      "Unknown player class."
    IL_0039:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_003e:  throw

    IL_003f:  ldloc.1
    IL_0040:  ldstr      "OuterClothingModel"
    IL_0045:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string)
    IL_004a:  ldstr      "ModelName"
    IL_004f:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_0054:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_0059:  stloc.0
    IL_005a:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.PlayerClass,class [Engine]Engine.Graphics.Model> Game.CharacterSkinsManager::m_outerClothingModels
    IL_005f:  ldarg.0
    IL_0060:  ldloc.0
    IL_0061:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.PlayerClass,class [Engine]Engine.Graphics.Model>::Add(!0,
                                                                                                                                                                              !1)
    IL_0066:  ldloc.0
    IL_0067:  ret
  } // end of method CharacterSkinsManager::GetOuterClothingModel

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
    // 代码大小       31 (0x1f)
    .maxstack  8
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<string>::.ctor()
    IL_0005:  stsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.CharacterSkinsManager::m_characterSkinNames
    IL_000a:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.PlayerClass,class [Engine]Engine.Graphics.Model>::.ctor()
    IL_000f:  stsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.PlayerClass,class [Engine]Engine.Graphics.Model> Game.CharacterSkinsManager::m_playerModels
    IL_0014:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.PlayerClass,class [Engine]Engine.Graphics.Model>::.ctor()
    IL_0019:  stsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.PlayerClass,class [Engine]Engine.Graphics.Model> Game.CharacterSkinsManager::m_outerClothingModels
    IL_001e:  ret
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