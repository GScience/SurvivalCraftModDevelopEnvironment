.class public abstract auto ansi sealed Game.FurniturePacksManager
       extends [System.Runtime]System.Object
{
  .field private static class [System.Collections]System.Collections.Generic.List`1<string> m_furniturePackNames
  .field private static class [System.Runtime]System.Action`1<string> FurniturePackDeleted
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<string>::.ctor()
    IL_0005:  stsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.FurniturePacksManager::m_furniturePackNames
    IL_000a:  ret
  } // end of method FurniturePacksManager::.cctor

  .method public hidebysig static void  Initialize() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  call       string Game.FurniturePacksManager::get_FurniturePacksDirectoryName()
    IL_0005:  call       void [Engine]Engine.Storage::CreateDirectory(string)
    IL_000a:  ret
  } // end of method FurniturePacksManager::Initialize

  .method public hidebysig specialname static 
          void  add_FurniturePackDeleted(class [System.Runtime]System.Action`1<string> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       39 (0x27)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<string> V_0,
             class [System.Runtime]System.Action`1<string> V_1,
             class [System.Runtime]System.Action`1<string> V_2)
    IL_0000:  ldsfld     class [System.Runtime]System.Action`1<string> Game.FurniturePacksManager::FurniturePackDeleted
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  stloc.1
    IL_0008:  ldloc.1
    IL_0009:  ldarg.0
    IL_000a:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Combine(class [System.Runtime]System.Delegate,
                                                                                                        class [System.Runtime]System.Delegate)
    IL_000f:  castclass  class [System.Runtime]System.Action`1<string>
    IL_0014:  stloc.2
    IL_0015:  ldsflda    class [System.Runtime]System.Action`1<string> Game.FurniturePacksManager::FurniturePackDeleted
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
  } // end of method FurniturePacksManager::add_FurniturePackDeleted

  .method public hidebysig specialname static 
          void  remove_FurniturePackDeleted(class [System.Runtime]System.Action`1<string> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       39 (0x27)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<string> V_0,
             class [System.Runtime]System.Action`1<string> V_1,
             class [System.Runtime]System.Action`1<string> V_2)
    IL_0000:  ldsfld     class [System.Runtime]System.Action`1<string> Game.FurniturePacksManager::FurniturePackDeleted
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  stloc.1
    IL_0008:  ldloc.1
    IL_0009:  ldarg.0
    IL_000a:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Remove(class [System.Runtime]System.Delegate,
                                                                                                       class [System.Runtime]System.Delegate)
    IL_000f:  castclass  class [System.Runtime]System.Action`1<string>
    IL_0014:  stloc.2
    IL_0015:  ldsflda    class [System.Runtime]System.Action`1<string> Game.FurniturePacksManager::FurniturePackDeleted
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
  } // end of method FurniturePacksManager::remove_FurniturePackDeleted

  .method public hidebysig specialname static 
          valuetype [Engine]Engine.ReadOnlyList`1<string> 
          get_FurniturePackNames() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.FurniturePacksManager::m_furniturePackNames
    IL_0005:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<string>::.ctor(class [System.Collections]System.Collections.Generic.List`1<!0>)
    IL_000a:  ret
  } // end of method FurniturePacksManager::get_FurniturePackNames

  .method public hidebysig static string 
          GetFileName(string name) cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldc.i4.2
    IL_0001:  newarr     [System.Runtime]System.String
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  call       string Game.FurniturePacksManager::get_FurniturePacksDirectoryName()
    IL_000d:  stelem.ref
    IL_000e:  dup
    IL_000f:  ldc.i4.1
    IL_0010:  ldarg.0
    IL_0011:  stelem.ref
    IL_0012:  call       string [Engine]Engine.Storage::CombinePaths(string[])
    IL_0017:  ret
  } // end of method FurniturePacksManager::GetFileName

  .method public hidebysig static string 
          GetDisplayName(string name) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       string [Engine]Engine.Storage::GetFileNameWithoutExtension(string)
    IL_0006:  ret
  } // end of method FurniturePacksManager::GetDisplayName

  .method public hidebysig static valuetype [System.Runtime]System.DateTime 
          GetCreationDate(string name) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.DateTime V_0)
    .try
    {
      IL_0000:  ldarg.0
      IL_0001:  call       string Game.FurniturePacksManager::GetFileName(string)
      IL_0006:  call       valuetype [System.Runtime]System.DateTime [Engine]Engine.Storage::GetFileLastWriteTime(string)
      IL_000b:  stloc.0
      IL_000c:  leave.s    IL_001e

    }  // end .try
    catch [System.Runtime]System.Object 
    {
      IL_000e:  pop
      IL_000f:  ldc.i4     0x7d0
      IL_0014:  ldc.i4.1
      IL_0015:  ldc.i4.1
      IL_0016:  newobj     instance void [System.Runtime]System.DateTime::.ctor(int32,
                                                                                int32,
                                                                                int32)
      IL_001b:  stloc.0
      IL_001c:  leave.s    IL_001e

    }  // end handler
    IL_001e:  ldloc.0
    IL_001f:  ret
  } // end of method FurniturePacksManager::GetCreationDate

  .method public hidebysig static string 
          ImportFurniturePack(string name,
                              class [System.IO]System.IO.Stream 'stream') cil managed
  {
    // 代码大小       158 (0x9e)
    .maxstack  5
    .locals init (string V_0,
             string V_1,
             int32 V_2,
             class [System.IO]System.IO.Stream V_3)
    IL_0000:  call       bool Game.MarketplaceManager::get_IsTrialMode()
    IL_0005:  brfalse.s  IL_0012

    IL_0007:  ldstr      "Cannot import furniture packs in trial mode."
    IL_000c:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0011:  throw

    IL_0012:  ldarg.1
    IL_0013:  call       void Game.FurniturePacksManager::ValidateFurniturePack(class [System.IO]System.IO.Stream)
    IL_0018:  ldarg.1
    IL_0019:  ldc.i4.0
    IL_001a:  conv.i8
    IL_001b:  callvirt   instance void [System.IO]System.IO.Stream::set_Position(int64)
    IL_0020:  ldarg.0
    IL_0021:  call       string [Engine]Engine.Storage::GetFileNameWithoutExtension(string)
    IL_0026:  stloc.0
    IL_0027:  ldloc.0
    IL_0028:  ldstr      ".scfpack"
    IL_002d:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0032:  starg.s    name
    IL_0034:  ldarg.0
    IL_0035:  call       string Game.FurniturePacksManager::GetFileName(string)
    IL_003a:  stloc.1
    IL_003b:  ldc.i4.0
    IL_003c:  stloc.2
    IL_003d:  br.s       IL_0079

    IL_003f:  ldloc.2
    IL_0040:  ldc.i4.1
    IL_0041:  add
    IL_0042:  stloc.2
    IL_0043:  ldloc.2
    IL_0044:  ldc.i4.s   9
    IL_0046:  ble.s      IL_0053

    IL_0048:  ldstr      "Duplicate name. Delete existing content with confl"
    + "icting names."
    IL_004d:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0052:  throw

    IL_0053:  ldstr      "{0} ({1}).scfpack"
    IL_0058:  ldc.i4.2
    IL_0059:  newarr     [System.Runtime]System.Object
    IL_005e:  dup
    IL_005f:  ldc.i4.0
    IL_0060:  ldloc.0
    IL_0061:  stelem.ref
    IL_0062:  dup
    IL_0063:  ldc.i4.1
    IL_0064:  ldloc.2
    IL_0065:  box        [System.Runtime]System.Int32
    IL_006a:  stelem.ref
    IL_006b:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0070:  starg.s    name
    IL_0072:  ldarg.0
    IL_0073:  call       string Game.FurniturePacksManager::GetFileName(string)
    IL_0078:  stloc.1
    IL_0079:  ldloc.1
    IL_007a:  call       bool [Engine]Engine.Storage::FileExists(string)
    IL_007f:  brtrue.s   IL_003f

    IL_0081:  ldloc.1
    IL_0082:  ldc.i4.2
    IL_0083:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                            valuetype [Engine]Engine.OpenFileMode)
    IL_0088:  stloc.3
    .try
    {
      IL_0089:  ldarg.1
      IL_008a:  ldloc.3
      IL_008b:  callvirt   instance void [System.IO]System.IO.Stream::CopyTo(class [System.IO]System.IO.Stream)
      IL_0090:  leave.s    IL_009c

    }  // end .try
    finally
    {
      IL_0092:  ldloc.3
      IL_0093:  brfalse.s  IL_009b

      IL_0095:  ldloc.3
      IL_0096:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_009b:  endfinally
    }  // end handler
    IL_009c:  ldarg.0
    IL_009d:  ret
  } // end of method FurniturePacksManager::ImportFurniturePack

  .method public hidebysig static void  ExportFurniturePack(string name,
                                                            class [System.IO]System.IO.Stream 'stream') cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  2
    .locals init (class [System.IO]System.IO.Stream V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       string Game.FurniturePacksManager::GetFileName(string)
    IL_0006:  ldc.i4.0
    IL_0007:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                            valuetype [Engine]Engine.OpenFileMode)
    IL_000c:  stloc.0
    .try
    {
      IL_000d:  ldloc.0
      IL_000e:  ldarg.1
      IL_000f:  callvirt   instance void [System.IO]System.IO.Stream::CopyTo(class [System.IO]System.IO.Stream)
      IL_0014:  leave.s    IL_0020

    }  // end .try
    finally
    {
      IL_0016:  ldloc.0
      IL_0017:  brfalse.s  IL_001f

      IL_0019:  ldloc.0
      IL_001a:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_001f:  endfinally
    }  // end handler
    IL_0020:  ret
  } // end of method FurniturePacksManager::ExportFurniturePack

  .method public hidebysig static string 
          CreateFurniturePack(string name,
                              class [System.Runtime]System.Collections.Generic.ICollection`1<class Game.FurnitureDesign> designs) cil managed
  {
    // 代码大小       109 (0x6d)
    .maxstack  3
    .locals init (class [System.IO]System.IO.MemoryStream V_0,
             class Game.ZipArchive V_1,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_2,
             class [System.IO]System.IO.MemoryStream V_3)
    IL_0000:  newobj     instance void [System.IO]System.IO.MemoryStream::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldc.i4.1
    IL_0008:  call       class Game.ZipArchive Game.ZipArchive::Create(class [System.IO]System.IO.Stream,
                                                                       bool)
    IL_000d:  stloc.1
    .try
    {
      IL_000e:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
      IL_0013:  dup
      IL_0014:  ldarg.1
      IL_0015:  call       void Game.SubsystemFurnitureBlockBehavior::SaveFurnitureDesigns(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                                                           class [System.Runtime]System.Collections.Generic.ICollection`1<class Game.FurnitureDesign>)
      IL_001a:  ldstr      "FurnitureDesigns"
      IL_001f:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
      IL_0024:  newobj     instance void [System.Xml.XDocument]System.Xml.Linq.XElement::.ctor(class [System.Xml.XDocument]System.Xml.Linq.XName)
      IL_0029:  stloc.2
      IL_002a:  ldloc.2
      IL_002b:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::Save(class [System.Xml.XDocument]System.Xml.Linq.XElement)
      IL_0030:  newobj     instance void [System.IO]System.IO.MemoryStream::.ctor()
      IL_0035:  stloc.3
      IL_0036:  ldloc.2
      IL_0037:  ldloc.3
      IL_0038:  callvirt   instance void [System.Xml.XDocument]System.Xml.Linq.XElement::Save(class [System.IO]System.IO.Stream)
      IL_003d:  ldloc.3
      IL_003e:  ldc.i4.0
      IL_003f:  conv.i8
      IL_0040:  callvirt   instance void [System.IO]System.IO.Stream::set_Position(int64)
      IL_0045:  ldloc.1
      IL_0046:  ldstr      "FurnitureDesigns.xml"
      IL_004b:  ldloc.3
      IL_004c:  callvirt   instance void Game.ZipArchive::AddStream(string,
                                                                    class [System.IO]System.IO.Stream)
      IL_0051:  leave.s    IL_005d

    }  // end .try
    finally
    {
      IL_0053:  ldloc.1
      IL_0054:  brfalse.s  IL_005c

      IL_0056:  ldloc.1
      IL_0057:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_005c:  endfinally
    }  // end handler
    IL_005d:  ldloc.0
    IL_005e:  ldc.i4.0
    IL_005f:  conv.i8
    IL_0060:  callvirt   instance void [System.IO]System.IO.Stream::set_Position(int64)
    IL_0065:  ldarg.0
    IL_0066:  ldloc.0
    IL_0067:  call       string Game.FurniturePacksManager::ImportFurniturePack(string,
                                                                                class [System.IO]System.IO.Stream)
    IL_006c:  ret
  } // end of method FurniturePacksManager::CreateFurniturePack

  .method public hidebysig static void  DeleteFurniturePack(string name) cil managed
  {
    // 代码大小       60 (0x3c)
    .maxstack  5
    .locals init (class [System.Runtime]System.Exception V_0)
    .try
    {
      IL_0000:  ldarg.0
      IL_0001:  call       string Game.FurniturePacksManager::GetFileName(string)
      IL_0006:  call       void [Engine]Engine.Storage::DeleteFile(string)
      IL_000b:  ldsfld     class [System.Runtime]System.Action`1<string> Game.FurniturePacksManager::FurniturePackDeleted
      IL_0010:  dup
      IL_0011:  brtrue.s   IL_0016

      IL_0013:  pop
      IL_0014:  br.s       IL_001c

      IL_0016:  ldarg.0
      IL_0017:  callvirt   instance void class [System.Runtime]System.Action`1<string>::Invoke(!0)
      IL_001c:  leave.s    IL_003b

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_001e:  stloc.0
      IL_001f:  ldstr      "Unable to delete furniture pack \"{0}\""
      IL_0024:  ldc.i4.1
      IL_0025:  newarr     [System.Runtime]System.Object
      IL_002a:  dup
      IL_002b:  ldc.i4.0
      IL_002c:  ldarg.0
      IL_002d:  stelem.ref
      IL_002e:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_0033:  ldloc.0
      IL_0034:  call       void Game.ExceptionManager::ReportExceptionToUser(string,
                                                                             class [System.Runtime]System.Exception)
      IL_0039:  leave.s    IL_003b

    }  // end handler
    IL_003b:  ret
  } // end of method FurniturePacksManager::DeleteFurniturePack

  .method public hidebysig static void  UpdateFurniturePacksList() cil managed
  {
    // 代码大小       90 (0x5a)
    .maxstack  2
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<string> V_0,
             string V_1)
    IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.FurniturePacksManager::m_furniturePackNames
    IL_0005:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Clear()
    IL_000a:  call       string Game.FurniturePacksManager::get_FurniturePacksDirectoryName()
    IL_000f:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<string> [Engine]Engine.Storage::ListFileNames(string)
    IL_0014:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<string>::GetEnumerator()
    IL_0019:  stloc.0
    .try
    {
      IL_001a:  br.s       IL_0045

      IL_001c:  ldloc.0
      IL_001d:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<string>::get_Current()
      IL_0022:  stloc.1
      IL_0023:  ldloc.1
      IL_0024:  call       string [Engine]Engine.Storage::GetExtension(string)
      IL_0029:  callvirt   instance string [System.Runtime]System.String::ToLower()
      IL_002e:  ldstr      ".scfpack"
      IL_0033:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0038:  brfalse.s  IL_0045

      IL_003a:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.FurniturePacksManager::m_furniturePackNames
      IL_003f:  ldloc.1
      IL_0040:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
      IL_0045:  ldloc.0
      IL_0046:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_004b:  brtrue.s   IL_001c

      IL_004d:  leave.s    IL_0059

    }  // end .try
    finally
    {
      IL_004f:  ldloc.0
      IL_0050:  brfalse.s  IL_0058

      IL_0052:  ldloc.0
      IL_0053:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0058:  endfinally
    }  // end handler
    IL_0059:  ret
  } // end of method FurniturePacksManager::UpdateFurniturePacksList

  .method public hidebysig static class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> 
          LoadFurniturePack(string name) cil managed
  {
    // 代码大小       34 (0x22)
    .maxstack  2
    .locals init (class [System.IO]System.IO.Stream V_0,
             class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       string Game.FurniturePacksManager::GetFileName(string)
    IL_0006:  ldc.i4.0
    IL_0007:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                            valuetype [Engine]Engine.OpenFileMode)
    IL_000c:  stloc.0
    .try
    {
      IL_000d:  ldloc.0
      IL_000e:  call       class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> Game.FurniturePacksManager::LoadFurniturePack(class [System.IO]System.IO.Stream)
      IL_0013:  stloc.1
      IL_0014:  leave.s    IL_0020

    }  // end .try
    finally
    {
      IL_0016:  ldloc.0
      IL_0017:  brfalse.s  IL_001f

      IL_0019:  ldloc.0
      IL_001a:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_001f:  endfinally
    }  // end handler
    IL_0020:  ldloc.1
    IL_0021:  ret
  } // end of method FurniturePacksManager::LoadFurniturePack

  .method private hidebysig specialname static 
          string  get_FurniturePacksDirectoryName() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldstr      "data:/FurniturePacks"
    IL_0005:  ret
  } // end of method FurniturePacksManager::get_FurniturePacksDirectoryName

  .method private hidebysig static void  ValidateFurniturePack(class [System.IO]System.IO.Stream 'stream') cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> Game.FurniturePacksManager::LoadFurniturePack(class [System.IO]System.IO.Stream)
    IL_0006:  pop
    IL_0007:  ret
  } // end of method FurniturePacksManager::ValidateFurniturePack

  .method private hidebysig static class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> 
          LoadFurniturePack(class [System.IO]System.IO.Stream 'stream') cil managed
  {
    // 代码大小       128 (0x80)
    .maxstack  3
    .locals init (class Game.ZipArchive V_0,
             class [System.Collections]System.Collections.Generic.List`1<class Game.ZipArchiveEntry> V_1,
             class [System.IO]System.IO.MemoryStream V_2,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_3,
             class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  call       class Game.ZipArchive Game.ZipArchive::Open(class [System.IO]System.IO.Stream,
                                                                     bool)
    IL_0007:  stloc.0
    .try
    {
      IL_0008:  ldloc.0
      IL_0009:  callvirt   instance class [System.Collections]System.Collections.Generic.List`1<class Game.ZipArchiveEntry> Game.ZipArchive::ReadCentralDir()
      IL_000e:  stloc.1
      IL_000f:  ldloc.1
      IL_0010:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.ZipArchiveEntry>::get_Count()
      IL_0015:  ldc.i4.1
      IL_0016:  bne.un.s   IL_0030

      IL_0018:  ldloc.1
      IL_0019:  ldc.i4.0
      IL_001a:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.ZipArchiveEntry>::get_Item(int32)
      IL_001f:  ldfld      string Game.ZipArchiveEntry::FilenameInZip
      IL_0024:  ldstr      "FurnitureDesigns.xml"
      IL_0029:  call       bool [System.Runtime]System.String::op_Inequality(string,
                                                                             string)
      IL_002e:  brfalse.s  IL_003b

      IL_0030:  ldstr      "Invalid furniture pack."
      IL_0035:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
      IL_003a:  throw

      IL_003b:  newobj     instance void [System.IO]System.IO.MemoryStream::.ctor()
      IL_0040:  stloc.2
      IL_0041:  ldloc.0
      IL_0042:  ldloc.1
      IL_0043:  ldc.i4.0
      IL_0044:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.ZipArchiveEntry>::get_Item(int32)
      IL_0049:  ldloc.2
      IL_004a:  callvirt   instance void Game.ZipArchive::ExtractFile(class Game.ZipArchiveEntry,
                                                                      class [System.IO]System.IO.Stream)
      IL_004f:  ldloc.2
      IL_0050:  ldc.i4.0
      IL_0051:  conv.i8
      IL_0052:  callvirt   instance void [System.IO]System.IO.Stream::set_Position(int64)
      IL_0057:  ldloc.2
      IL_0058:  call       class [System.Xml.XDocument]System.Xml.Linq.XElement [System.Xml.XDocument]System.Xml.Linq.XElement::Load(class [System.IO]System.IO.Stream)
      IL_005d:  stloc.3
      IL_005e:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
      IL_0063:  dup
      IL_0064:  ldloc.3
      IL_0065:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::ApplyOverrides(class [System.Xml.XDocument]System.Xml.Linq.XElement)
      IL_006a:  call       class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> Game.SubsystemFurnitureBlockBehavior::LoadFurnitureDesigns(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
      IL_006f:  stloc.s    V_4
      IL_0071:  leave.s    IL_007d

    }  // end .try
    finally
    {
      IL_0073:  ldloc.0
      IL_0074:  brfalse.s  IL_007c

      IL_0076:  ldloc.0
      IL_0077:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_007c:  endfinally
    }  // end handler
    IL_007d:  ldloc.s    V_4
    IL_007f:  ret
  } // end of method FurniturePacksManager::LoadFurniturePack

  .event class [System.Runtime]System.Action`1<string> FurniturePackDeleted
  {
    .addon void Game.FurniturePacksManager::add_FurniturePackDeleted(class [System.Runtime]System.Action`1<string>)
    .removeon void Game.FurniturePacksManager::remove_FurniturePackDeleted(class [System.Runtime]System.Action`1<string>)
  } // end of event FurniturePacksManager::FurniturePackDeleted
  .property valuetype [Engine]Engine.ReadOnlyList`1<string>
          FurniturePackNames()
  {
    .get valuetype [Engine]Engine.ReadOnlyList`1<string> Game.FurniturePacksManager::get_FurniturePackNames()
  } // end of property FurniturePacksManager::FurniturePackNames
  .property string FurniturePacksDirectoryName()
  {
    .get string Game.FurniturePacksManager::get_FurniturePacksDirectoryName()
  } // end of property FurniturePacksManager::FurniturePacksDirectoryName
} // end of class Game.FurniturePacksManager