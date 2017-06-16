.class public abstract auto ansi sealed beforefieldinit Game.ExternalContentManager
       extends [System.Runtime]System.Object
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass12_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [System.Runtime]System.Action`1<string> success
    .field public class [System.IO]System.IO.Stream 'stream'
    .field public valuetype Game.ExternalContentType 'type'
    .field public string name
    .field public bool deleteAfterImport
    .field public class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass12_0'::.ctor

    .method assembly hidebysig instance void 
            '<ImportExternalContent>b__0'() cil managed
    {
      // 代码大小       58 (0x3a)
      .maxstack  5
      .locals init (class [System.Runtime]System.Exception V_0)
      .try
      {
        IL_0000:  ldarg.0
        IL_0001:  ldfld      class [System.Runtime]System.Action`1<string> Game.ExternalContentManager/'<>c__DisplayClass12_0'::success
        IL_0006:  ldarg.0
        IL_0007:  ldfld      class [System.IO]System.IO.Stream Game.ExternalContentManager/'<>c__DisplayClass12_0'::'stream'
        IL_000c:  ldarg.0
        IL_000d:  ldfld      valuetype Game.ExternalContentType Game.ExternalContentManager/'<>c__DisplayClass12_0'::'type'
        IL_0012:  ldarg.0
        IL_0013:  ldfld      string Game.ExternalContentManager/'<>c__DisplayClass12_0'::name
        IL_0018:  ldarg.0
        IL_0019:  ldfld      bool Game.ExternalContentManager/'<>c__DisplayClass12_0'::deleteAfterImport
        IL_001e:  call       string Game.ExternalContentManager::ImportExternalContentSync(class [System.IO]System.IO.Stream,
                                                                                           valuetype Game.ExternalContentType,
                                                                                           string,
                                                                                           bool)
        IL_0023:  callvirt   instance void class [System.Runtime]System.Action`1<string>::Invoke(!0)
        IL_0028:  leave.s    IL_0039

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_002a:  stloc.0
        IL_002b:  ldarg.0
        IL_002c:  ldfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.ExternalContentManager/'<>c__DisplayClass12_0'::failure
        IL_0031:  ldloc.0
        IL_0032:  callvirt   instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::Invoke(!0)
        IL_0037:  leave.s    IL_0039

      }  // end handler
      IL_0039:  ret
    } // end of method '<>c__DisplayClass12_0'::'<ImportExternalContent>b__0'

  } // end of class '<>c__DisplayClass12_0'

  .field private static class [System.Collections]System.Collections.Generic.List`1<class Game.IExternalContentProvider> m_providers
  .method public hidebysig static void  Initialize() cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  8
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.IExternalContentProvider>::.ctor()
    IL_0005:  stsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.IExternalContentProvider> Game.ExternalContentManager::m_providers
    IL_000a:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.IExternalContentProvider> Game.ExternalContentManager::m_providers
    IL_000f:  newobj     instance void Game.DropboxExternalContentProvider::.ctor()
    IL_0014:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.IExternalContentProvider>::Add(!0)
    IL_0019:  ret
  } // end of method ExternalContentManager::Initialize

  .method public hidebysig specialname static 
          class Game.IExternalContentProvider 
          get_DefaultProvider() cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  2
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1<class Game.IExternalContentProvider> V_0)
    IL_0000:  call       valuetype [Engine]Engine.ReadOnlyList`1<class Game.IExternalContentProvider> Game.ExternalContentManager::get_Providers()
    IL_0005:  stloc.0
    IL_0006:  ldloca.s   V_0
    IL_0008:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class Game.IExternalContentProvider>::get_Count()
    IL_000d:  ldc.i4.0
    IL_000e:  bgt.s      IL_0012

    IL_0010:  ldnull
    IL_0011:  ret

    IL_0012:  call       valuetype [Engine]Engine.ReadOnlyList`1<class Game.IExternalContentProvider> Game.ExternalContentManager::get_Providers()
    IL_0017:  stloc.0
    IL_0018:  ldloca.s   V_0
    IL_001a:  ldc.i4.0
    IL_001b:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class Game.IExternalContentProvider>::get_Item(int32)
    IL_0020:  ret
  } // end of method ExternalContentManager::get_DefaultProvider

  .method public hidebysig specialname static 
          valuetype [Engine]Engine.ReadOnlyList`1<class Game.IExternalContentProvider> 
          get_Providers() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.IExternalContentProvider> Game.ExternalContentManager::m_providers
    IL_0005:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<class Game.IExternalContentProvider>::.ctor(class [System.Collections]System.Collections.Generic.List`1<!0>)
    IL_000a:  ret
  } // end of method ExternalContentManager::get_Providers

  .method public hidebysig static valuetype Game.ExternalContentType 
          ExtensionToType(string extension) cil managed
  {
    // 代码大小       83 (0x53)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance string [System.Runtime]System.String::ToLower()
    IL_0006:  starg.s    extension
    IL_0008:  ldarg.0
    IL_0009:  ldstr      ".scworld"
    IL_000e:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_0013:  brfalse.s  IL_0017

    IL_0015:  ldc.i4.2
    IL_0016:  ret

    IL_0017:  ldarg.0
    IL_0018:  ldstr      ".png"
    IL_001d:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_0022:  brtrue.s   IL_0031

    IL_0024:  ldarg.0
    IL_0025:  ldstr      ".scbtex"
    IL_002a:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_002f:  brfalse.s  IL_0033

    IL_0031:  ldc.i4.3
    IL_0032:  ret

    IL_0033:  ldarg.0
    IL_0034:  ldstr      ".scskin"
    IL_0039:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_003e:  brfalse.s  IL_0042

    IL_0040:  ldc.i4.4
    IL_0041:  ret

    IL_0042:  ldarg.0
    IL_0043:  ldstr      ".scfpack"
    IL_0048:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_004d:  brfalse.s  IL_0051

    IL_004f:  ldc.i4.5
    IL_0050:  ret

    IL_0051:  ldc.i4.0
    IL_0052:  ret
  } // end of method ExternalContentManager::ExtensionToType

  .method public hidebysig static class Game.Subtexture 
          GetEntryTypeIcon(valuetype Game.ExternalContentType 'type') cil managed
  {
    // 代码大小       96 (0x60)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  sub
    IL_0003:  switch     ( 
                          IL_001e,
                          IL_0029,
                          IL_0034,
                          IL_003f,
                          IL_004a)
    IL_001c:  br.s       IL_0055

    IL_001e:  ldstr      "Textures/Atlas/FolderIcon"
    IL_0023:  call       !!0 Game.ContentManager::Get<class Game.Subtexture>(string)
    IL_0028:  ret

    IL_0029:  ldstr      "Textures/Atlas/WorldIcon"
    IL_002e:  call       !!0 Game.ContentManager::Get<class Game.Subtexture>(string)
    IL_0033:  ret

    IL_0034:  ldstr      "Textures/Atlas/TexturePackIcon"
    IL_0039:  call       !!0 Game.ContentManager::Get<class Game.Subtexture>(string)
    IL_003e:  ret

    IL_003f:  ldstr      "Textures/Atlas/CharacterSkinIcon"
    IL_0044:  call       !!0 Game.ContentManager::Get<class Game.Subtexture>(string)
    IL_0049:  ret

    IL_004a:  ldstr      "Textures/Atlas/FurnitureIcon"
    IL_004f:  call       !!0 Game.ContentManager::Get<class Game.Subtexture>(string)
    IL_0054:  ret

    IL_0055:  ldstr      "Textures/Atlas/QuestionMarkIcon"
    IL_005a:  call       !!0 Game.ContentManager::Get<class Game.Subtexture>(string)
    IL_005f:  ret
  } // end of method ExternalContentManager::GetEntryTypeIcon

  .method public hidebysig static string 
          GetEntryTypeDescription(valuetype Game.ExternalContentType 'type') cil managed
  {
    // 代码大小       66 (0x42)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  sub
    IL_0003:  switch     ( 
                          IL_001e,
                          IL_0024,
                          IL_002a,
                          IL_0030,
                          IL_0036)
    IL_001c:  br.s       IL_003c

    IL_001e:  ldstr      "Directory"
    IL_0023:  ret

    IL_0024:  ldstr      "World"
    IL_0029:  ret

    IL_002a:  ldstr      "Blocks Texture"
    IL_002f:  ret

    IL_0030:  ldstr      "Character Skin"
    IL_0035:  ret

    IL_0036:  ldstr      "Furniture Pack"
    IL_003b:  ret

    IL_003c:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0041:  ret
  } // end of method ExternalContentManager::GetEntryTypeDescription

  .method public hidebysig static bool  IsEntryTypeDownloadSupported(valuetype Game.ExternalContentType 'type') cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.2
    IL_0002:  sub
    IL_0003:  switch     ( 
                          IL_001a,
                          IL_001c,
                          IL_001e,
                          IL_0020)
    IL_0018:  br.s       IL_0022

    IL_001a:  ldc.i4.1
    IL_001b:  ret

    IL_001c:  ldc.i4.1
    IL_001d:  ret

    IL_001e:  ldc.i4.1
    IL_001f:  ret

    IL_0020:  ldc.i4.1
    IL_0021:  ret

    IL_0022:  ldc.i4.0
    IL_0023:  ret
  } // end of method ExternalContentManager::IsEntryTypeDownloadSupported

  .method public hidebysig static bool  DoesEntryTypeRequireName(valuetype Game.ExternalContentType 'type') cil managed
  {
    // 代码大小       30 (0x1e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.3
    IL_0002:  sub
    IL_0003:  switch     ( 
                          IL_0016,
                          IL_0018,
                          IL_001a)
    IL_0014:  br.s       IL_001c

    IL_0016:  ldc.i4.1
    IL_0017:  ret

    IL_0018:  ldc.i4.1
    IL_0019:  ret

    IL_001a:  ldc.i4.1
    IL_001b:  ret

    IL_001c:  ldc.i4.0
    IL_001d:  ret
  } // end of method ExternalContentManager::DoesEntryTypeRequireName

  .method public hidebysig static class [System.Runtime]System.Exception 
          VerifyExternalContentName(string name) cil managed
  {
    // 代码大小       170 (0xaa)
    .maxstack  3
    .locals init (string V_0,
             int32 V_1,
             char V_2)
    IL_0000:  ldarg.0
    IL_0001:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0006:  brfalse.s  IL_0013

    IL_0008:  ldstr      "Name empty."
    IL_000d:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0012:  ret

    IL_0013:  ldarg.0
    IL_0014:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0019:  ldc.i4.s   50
    IL_001b:  ble.s      IL_0028

    IL_001d:  ldstr      "Name too long. Maximum 50 characters allowed."
    IL_0022:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0027:  ret

    IL_0028:  ldarg.0
    IL_0029:  ldc.i4.0
    IL_002a:  callvirt   instance char [System.Runtime]System.String::get_Chars(int32)
    IL_002f:  ldc.i4.s   32
    IL_0031:  beq.s      IL_0045

    IL_0033:  ldarg.0
    IL_0034:  ldarg.0
    IL_0035:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_003a:  ldc.i4.1
    IL_003b:  sub
    IL_003c:  callvirt   instance char [System.Runtime]System.String::get_Chars(int32)
    IL_0041:  ldc.i4.s   32
    IL_0043:  bne.un.s   IL_0050

    IL_0045:  ldstr      "Name cannot start or end with a space."
    IL_004a:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_004f:  ret

    IL_0050:  ldarg.0
    IL_0051:  stloc.0
    IL_0052:  ldc.i4.0
    IL_0053:  stloc.1
    IL_0054:  br.s       IL_009f

    IL_0056:  ldloc.0
    IL_0057:  ldloc.1
    IL_0058:  callvirt   instance char [System.Runtime]System.String::get_Chars(int32)
    IL_005d:  stloc.2
    IL_005e:  ldloc.2
    IL_005f:  ldc.i4.s   65
    IL_0061:  blt.s      IL_0068

    IL_0063:  ldloc.2
    IL_0064:  ldc.i4.s   90
    IL_0066:  ble.s      IL_009b

    IL_0068:  ldloc.2
    IL_0069:  ldc.i4.s   97
    IL_006b:  blt.s      IL_0072

    IL_006d:  ldloc.2
    IL_006e:  ldc.i4.s   122
    IL_0070:  ble.s      IL_009b

    IL_0072:  ldloc.2
    IL_0073:  ldc.i4.s   48
    IL_0075:  blt.s      IL_007c

    IL_0077:  ldloc.2
    IL_0078:  ldc.i4.s   57
    IL_007a:  ble.s      IL_009b

    IL_007c:  ldloc.2
    IL_007d:  ldc.i4.s   45
    IL_007f:  beq.s      IL_009b

    IL_0081:  ldloc.2
    IL_0082:  ldc.i4.s   46
    IL_0084:  beq.s      IL_009b

    IL_0086:  ldloc.2
    IL_0087:  ldc.i4.s   95
    IL_0089:  beq.s      IL_009b

    IL_008b:  ldloc.2
    IL_008c:  ldc.i4.s   32
    IL_008e:  beq.s      IL_009b

    IL_0090:  ldstr      "Name contains invalid characters. Only latin lette"
    + "rs, digits, dashes, dots, underscores and spaces are allowed."
    IL_0095:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_009a:  ret

    IL_009b:  ldloc.1
    IL_009c:  ldc.i4.1
    IL_009d:  add
    IL_009e:  stloc.1
    IL_009f:  ldloc.1
    IL_00a0:  ldloc.0
    IL_00a1:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_00a6:  blt.s      IL_0056

    IL_00a8:  ldnull
    IL_00a9:  ret
  } // end of method ExternalContentManager::VerifyExternalContentName

  .method public hidebysig static void  ImportExternalContent(class [System.IO]System.IO.Stream 'stream',
                                                              valuetype Game.ExternalContentType 'type',
                                                              string name,
                                                              bool deleteAfterImport,
                                                              class [System.Runtime]System.Action`1<string> success,
                                                              class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure) cil managed
  {
    // 代码大小       67 (0x43)
    .maxstack  3
    IL_0000:  newobj     instance void Game.ExternalContentManager/'<>c__DisplayClass12_0'::.ctor()
    IL_0005:  dup
    IL_0006:  ldarg.s    success
    IL_0008:  stfld      class [System.Runtime]System.Action`1<string> Game.ExternalContentManager/'<>c__DisplayClass12_0'::success
    IL_000d:  dup
    IL_000e:  ldarg.0
    IL_000f:  stfld      class [System.IO]System.IO.Stream Game.ExternalContentManager/'<>c__DisplayClass12_0'::'stream'
    IL_0014:  dup
    IL_0015:  ldarg.1
    IL_0016:  stfld      valuetype Game.ExternalContentType Game.ExternalContentManager/'<>c__DisplayClass12_0'::'type'
    IL_001b:  dup
    IL_001c:  ldarg.2
    IL_001d:  stfld      string Game.ExternalContentManager/'<>c__DisplayClass12_0'::name
    IL_0022:  dup
    IL_0023:  ldarg.3
    IL_0024:  stfld      bool Game.ExternalContentManager/'<>c__DisplayClass12_0'::deleteAfterImport
    IL_0029:  dup
    IL_002a:  ldarg.s    failure
    IL_002c:  stfld      class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.ExternalContentManager/'<>c__DisplayClass12_0'::failure
    IL_0031:  ldftn      instance void Game.ExternalContentManager/'<>c__DisplayClass12_0'::'<ImportExternalContent>b__0'()
    IL_0037:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_003c:  call       class [System.Threading.Tasks]System.Threading.Tasks.Task [System.Threading.Tasks]System.Threading.Tasks.Task::Run(class [System.Runtime]System.Action)
    IL_0041:  pop
    IL_0042:  ret
  } // end of method ExternalContentManager::ImportExternalContent

  .method public hidebysig static string 
          ImportExternalContentSync(class [System.IO]System.IO.Stream 'stream',
                                    valuetype Game.ExternalContentType 'type',
                                    string name,
                                    bool deleteAfterImport) cil managed
  {
    // 代码大小       108 (0x6c)
    .maxstack  2
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.2
    IL_0002:  bne.un.s   IL_0017

    IL_0004:  ldarg.0
    IL_0005:  call       string Game.WorldsManager::ImportWorld(class [System.IO]System.IO.Stream)
    IL_000a:  starg.s    name
    IL_000c:  ldarg.3
    IL_000d:  brfalse.s  IL_006a

    IL_000f:  ldarg.2
    IL_0010:  call       void Game.WorldsManager::DeleteWorld(string)
    IL_0015:  br.s       IL_006a

    IL_0017:  ldarg.1
    IL_0018:  ldc.i4.3
    IL_0019:  bne.un.s   IL_002f

    IL_001b:  ldarg.2
    IL_001c:  ldarg.0
    IL_001d:  call       string Game.BlocksTexturesManager::ImportBlocksTexture(string,
                                                                                class [System.IO]System.IO.Stream)
    IL_0022:  starg.s    name
    IL_0024:  ldarg.3
    IL_0025:  brfalse.s  IL_006a

    IL_0027:  ldarg.2
    IL_0028:  call       void Game.BlocksTexturesManager::DeleteBlocksTexture(string)
    IL_002d:  br.s       IL_006a

    IL_002f:  ldarg.1
    IL_0030:  ldc.i4.4
    IL_0031:  bne.un.s   IL_0047

    IL_0033:  ldarg.2
    IL_0034:  ldarg.0
    IL_0035:  call       string Game.CharacterSkinsManager::ImportCharacterSkin(string,
                                                                                class [System.IO]System.IO.Stream)
    IL_003a:  starg.s    name
    IL_003c:  ldarg.3
    IL_003d:  brfalse.s  IL_006a

    IL_003f:  ldarg.2
    IL_0040:  call       void Game.CharacterSkinsManager::DeleteCharacterSkin(string)
    IL_0045:  br.s       IL_006a

    IL_0047:  ldarg.1
    IL_0048:  ldc.i4.5
    IL_0049:  bne.un.s   IL_005f

    IL_004b:  ldarg.2
    IL_004c:  ldarg.0
    IL_004d:  call       string Game.FurniturePacksManager::ImportFurniturePack(string,
                                                                                class [System.IO]System.IO.Stream)
    IL_0052:  starg.s    name
    IL_0054:  ldarg.3
    IL_0055:  brfalse.s  IL_006a

    IL_0057:  ldarg.2
    IL_0058:  call       void Game.FurniturePacksManager::DeleteFurniturePack(string)
    IL_005d:  br.s       IL_006a

    IL_005f:  ldstr      "Unsupported content type."
    IL_0064:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0069:  throw

    IL_006a:  ldarg.2
    IL_006b:  ret
  } // end of method ExternalContentManager::ImportExternalContentSync

  .property class Game.IExternalContentProvider
          DefaultProvider()
  {
    .get class Game.IExternalContentProvider Game.ExternalContentManager::get_DefaultProvider()
  } // end of property ExternalContentManager::DefaultProvider
  .property valuetype [Engine]Engine.ReadOnlyList`1<class Game.IExternalContentProvider>
          Providers()
  {
    .get valuetype [Engine]Engine.ReadOnlyList`1<class Game.IExternalContentProvider> Game.ExternalContentManager::get_Providers()
  } // end of property ExternalContentManager::Providers
} // end of class Game.ExternalContentManager