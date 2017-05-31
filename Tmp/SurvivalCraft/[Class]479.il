.class public auto ansi beforefieldinit Game.VersionConverter126To127
       extends Game.VersionConverter
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass5_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class Game.BusyDialog dialog
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass5_0'::.ctor

    .method assembly hidebysig instance void 
            '<MigrateDataFromIsolatedStorageWithDialog>b__0'() cil managed
    {
      // 代码大小       216 (0xd8)
      .maxstack  6
      .locals init (string V_0,
               string V_1,
               int32 V_2,
               class [System.Runtime]System.Exception V_3)
      IL_0000:  ldsfld     string [System.Runtime]System.String::Empty
      IL_0005:  stloc.0
      IL_0006:  ldsfld     string [System.Runtime]System.String::Empty
      IL_000b:  stloc.1
      .try
      {
        IL_000c:  ldstr      "data:/.config/.isolated-storage"
        IL_0011:  ldstr      "data:"
        IL_0016:  call       int32 Game.VersionConverter126To127::MigrateFolder(string,
                                                                                string)
        IL_001b:  stloc.2
        IL_001c:  ldstr      "Migration Successful"
        IL_0021:  stloc.0
        IL_0022:  ldstr      "{0} file(s) were migrated from 1.26 to 1.27."
        IL_0027:  ldc.i4.1
        IL_0028:  newarr     [System.Runtime]System.Object
        IL_002d:  dup
        IL_002e:  ldc.i4.0
        IL_002f:  ldloc.2
        IL_0030:  box        [System.Runtime]System.Int32
        IL_0035:  stelem.ref
        IL_0036:  call       string [System.Runtime]System.String::Format(string,
                                                                          object[])
        IL_003b:  stloc.1
        IL_003c:  ldstr      "[Migration to 1.27]"
        IL_0041:  ldc.i4.1
        IL_0042:  newarr     Game.AnalyticsParameter
        IL_0047:  dup
        IL_0048:  ldc.i4.0
        IL_0049:  ldstr      "Details"
        IL_004e:  ldloc.1
        IL_004f:  newobj     instance void Game.AnalyticsParameter::.ctor(string,
                                                                          string)
        IL_0054:  stelem     Game.AnalyticsParameter
        IL_0059:  call       void Game.AnalyticsManager::LogEvent(string,
                                                                  valuetype Game.AnalyticsParameter[])
        IL_005e:  leave.s    IL_0094

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_0060:  stloc.3
        IL_0061:  ldstr      "Migration Failed"
        IL_0066:  stloc.0
        IL_0067:  ldloc.3
        IL_0068:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
        IL_006d:  stloc.1
        IL_006e:  ldstr      "Migration to 1.27 failed, reason: {0}"
        IL_0073:  ldc.i4.1
        IL_0074:  newarr     [System.Runtime]System.Object
        IL_0079:  dup
        IL_007a:  ldc.i4.0
        IL_007b:  ldloc.3
        IL_007c:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
        IL_0081:  stelem.ref
        IL_0082:  call       void [Engine]Engine.Log::Error(string,
                                                            object[])
        IL_0087:  ldstr      "Migration to 1.27 failed"
        IL_008c:  ldloc.3
        IL_008d:  call       void Game.AnalyticsManager::LogError(string,
                                                                  class [System.Runtime]System.Exception)
        IL_0092:  leave.s    IL_0094

      }  // end handler
      IL_0094:  ldarg.0
      IL_0095:  ldfld      class Game.BusyDialog Game.VersionConverter126To127/'<>c__DisplayClass5_0'::dialog
      IL_009a:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
      IL_009f:  ldloc.0
      IL_00a0:  ldloc.1
      IL_00a1:  ldstr      "OK"
      IL_00a6:  ldnull
      IL_00a7:  ldnull
      IL_00a8:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_00ad:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
      IL_00b2:  ldsfld     class [System.Runtime]System.Action Game.VersionConverter126To127/'<>c'::'<>9__5_1'
      IL_00b7:  dup
      IL_00b8:  brtrue.s   IL_00d1

      IL_00ba:  pop
      IL_00bb:  ldsfld     class Game.VersionConverter126To127/'<>c' Game.VersionConverter126To127/'<>c'::'<>9'
      IL_00c0:  ldftn      instance void Game.VersionConverter126To127/'<>c'::'<MigrateDataFromIsolatedStorageWithDialog>b__5_1'()
      IL_00c6:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                              native int)
      IL_00cb:  dup
      IL_00cc:  stsfld     class [System.Runtime]System.Action Game.VersionConverter126To127/'<>c'::'<>9__5_1'
      IL_00d1:  ldc.i4.0
      IL_00d2:  call       void [Engine]Engine.Dispatcher::Dispatch(class [System.Runtime]System.Action,
                                                                    bool)
      IL_00d7:  ret
    } // end of method '<>c__DisplayClass5_0'::'<MigrateDataFromIsolatedStorageWithDialog>b__0'

  } // end of class '<>c__DisplayClass5_0'

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.VersionConverter126To127/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action '<>9__5_1'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.VersionConverter126To127/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.VersionConverter126To127/'<>c' Game.VersionConverter126To127/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance void 
            '<MigrateDataFromIsolatedStorageWithDialog>b__5_1'() cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  call       void Game.SettingsManager::LoadSettings()
      IL_0005:  ret
    } // end of method '<>c'::'<MigrateDataFromIsolatedStorageWithDialog>b__5_1'

  } // end of class '<>c'

  .method public hidebysig specialname virtual 
          instance string  get_SourceVersion() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldstr      "1.26"
    IL_0005:  ret
  } // end of method VersionConverter126To127::get_SourceVersion

  .method public hidebysig specialname virtual 
          instance string  get_TargetVersion() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldstr      "1.27"
    IL_0005:  ret
  } // end of method VersionConverter126To127::get_TargetVersion

  .method public hidebysig virtual instance void 
          ConvertWorld(string directoryName) cil managed
  {
    // 代码大小       107 (0x6b)
    .maxstack  4
    .locals init (string V_0,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_1,
             class [System.IO]System.IO.Stream V_2,
             class [System.IO]System.IO.Stream V_3)
    IL_0000:  ldc.i4.2
    IL_0001:  newarr     [System.Runtime]System.String
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldarg.1
    IL_0009:  stelem.ref
    IL_000a:  dup
    IL_000b:  ldc.i4.1
    IL_000c:  ldstr      "Project.xml"
    IL_0011:  stelem.ref
    IL_0012:  call       string [Engine]Engine.Storage::CombinePaths(string[])
    IL_0017:  stloc.0
    IL_0018:  ldloc.0
    IL_0019:  ldc.i4.0
    IL_001a:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                            valuetype [Engine]Engine.OpenFileMode)
    IL_001f:  stloc.2
    .try
    {
      IL_0020:  ldloc.2
      IL_0021:  ldnull
      IL_0022:  ldc.i4.1
      IL_0023:  call       class [System.Xml.XDocument]System.Xml.Linq.XElement [EntitySystem]XmlUtilities.XmlUtils::LoadXmlFromStream(class [System.IO]System.IO.Stream,
                                                                                                                                       class [System.Text.Encoding]System.Text.Encoding,
                                                                                                                                       bool)
      IL_0028:  stloc.1
      IL_0029:  leave.s    IL_0035

    }  // end .try
    finally
    {
      IL_002b:  ldloc.2
      IL_002c:  brfalse.s  IL_0034

      IL_002e:  ldloc.2
      IL_002f:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0034:  endfinally
    }  // end handler
    IL_0035:  ldloc.1
    IL_0036:  ldstr      "Version"
    IL_003b:  ldarg.0
    IL_003c:  callvirt   instance string Game.VersionConverter::get_TargetVersion()
    IL_0041:  call       void [EntitySystem]XmlUtilities.XmlUtils::SetAttributeValue(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                     string,
                                                                                     object)
    IL_0046:  ldarg.0
    IL_0047:  ldloc.1
    IL_0048:  call       instance void Game.VersionConverter126To127::ConvertTypesToEngine(class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_004d:  ldloc.0
    IL_004e:  ldc.i4.2
    IL_004f:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                            valuetype [Engine]Engine.OpenFileMode)
    IL_0054:  stloc.3
    .try
    {
      IL_0055:  ldloc.1
      IL_0056:  ldloc.3
      IL_0057:  ldnull
      IL_0058:  ldc.i4.1
      IL_0059:  call       void [EntitySystem]XmlUtilities.XmlUtils::SaveXmlToStream(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                     class [System.IO]System.IO.Stream,
                                                                                     class [System.Text.Encoding]System.Text.Encoding,
                                                                                     bool)
      IL_005e:  leave.s    IL_006a

    }  // end .try
    finally
    {
      IL_0060:  ldloc.3
      IL_0061:  brfalse.s  IL_0069

      IL_0063:  ldloc.3
      IL_0064:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0069:  endfinally
    }  // end handler
    IL_006a:  ret
  } // end of method VersionConverter126To127::ConvertWorld

  .method public hidebysig static void  MigrateDataFromIsolatedStorageWithDialog() cil managed
  {
    // 代码大小       118 (0x76)
    .maxstack  5
    .locals init (class [System.Runtime]System.Exception V_0)
    .try
    {
      IL_0000:  ldstr      "data:/.config/.isolated-storage"
      IL_0005:  call       bool [Engine]Engine.Storage::DirectoryExists(string)
      IL_000a:  brfalse.s  IL_004c

      IL_000c:  newobj     instance void Game.VersionConverter126To127/'<>c__DisplayClass5_0'::.ctor()
      IL_0011:  ldstr      "1.26 data found, starting migration to 1.27."
      IL_0016:  call       void [Engine]Engine.Log::Information(string)
      IL_001b:  dup
      IL_001c:  ldstr      "Please wait"
      IL_0021:  ldstr      "Migrating 1.26 data to 1.27 format..."
      IL_0026:  newobj     instance void Game.BusyDialog::.ctor(string,
                                                                string)
      IL_002b:  stfld      class Game.BusyDialog Game.VersionConverter126To127/'<>c__DisplayClass5_0'::dialog
      IL_0030:  dup
      IL_0031:  ldfld      class Game.BusyDialog Game.VersionConverter126To127/'<>c__DisplayClass5_0'::dialog
      IL_0036:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
      IL_003b:  ldftn      instance void Game.VersionConverter126To127/'<>c__DisplayClass5_0'::'<MigrateDataFromIsolatedStorageWithDialog>b__0'()
      IL_0041:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                              native int)
      IL_0046:  call       class [System.Threading.Tasks]System.Threading.Tasks.Task [System.Threading.Tasks]System.Threading.Tasks.Task::Run(class [System.Runtime]System.Action)
      IL_004b:  pop
      IL_004c:  leave.s    IL_0075

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_004e:  stloc.0
      IL_004f:  ldstr      "Failed to migrate data. Reason: {0}"
      IL_0054:  ldc.i4.1
      IL_0055:  newarr     [System.Runtime]System.Object
      IL_005a:  dup
      IL_005b:  ldc.i4.0
      IL_005c:  ldloc.0
      IL_005d:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_0062:  stelem.ref
      IL_0063:  call       void [Engine]Engine.Log::Error(string,
                                                          object[])
      IL_0068:  ldstr      "Migration to 1.27 failed"
      IL_006d:  ldloc.0
      IL_006e:  call       void Game.AnalyticsManager::LogError(string,
                                                                class [System.Runtime]System.Exception)
      IL_0073:  leave.s    IL_0075

    }  // end handler
    IL_0075:  ret
  } // end of method VersionConverter126To127::MigrateDataFromIsolatedStorageWithDialog

  .method private hidebysig instance void 
          ConvertTypesToEngine(class [System.Xml.XDocument]System.Xml.Linq.XElement node) cil managed
  {
    // 代码大小       334 (0x14e)
    .maxstack  2
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> V_0,
             class [System.Xml.XDocument]System.Xml.Linq.XAttribute V_1)
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "Value"
    IL_0006:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
    IL_000b:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XElement::DescendantsAndSelf(class [System.Xml.XDocument]System.Xml.Linq.XName)
    IL_0010:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
    IL_0015:  stloc.0
    .try
    {
      IL_0016:  br         IL_0136

      IL_001b:  ldloc.0
      IL_001c:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
      IL_0021:  ldstr      "Type"
      IL_0026:  call       class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XName::op_Implicit(string)
      IL_002b:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XAttribute [System.Xml.XDocument]System.Xml.Linq.XElement::Attribute(class [System.Xml.XDocument]System.Xml.Linq.XName)
      IL_0030:  stloc.1
      IL_0031:  ldloc.1
      IL_0032:  brfalse    IL_0136

      IL_0037:  ldloc.1
      IL_0038:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_Value()
      IL_003d:  ldstr      "Microsoft.Xna.Framework.Vector2"
      IL_0042:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0047:  brfalse.s  IL_0059

      IL_0049:  ldloc.1
      IL_004a:  ldstr      "Engine.Vector2"
      IL_004f:  callvirt   instance void [System.Xml.XDocument]System.Xml.Linq.XAttribute::set_Value(string)
      IL_0054:  br         IL_0136

      IL_0059:  ldloc.1
      IL_005a:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_Value()
      IL_005f:  ldstr      "Microsoft.Xna.Framework.Vector3"
      IL_0064:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0069:  brfalse.s  IL_007b

      IL_006b:  ldloc.1
      IL_006c:  ldstr      "Engine.Vector3"
      IL_0071:  callvirt   instance void [System.Xml.XDocument]System.Xml.Linq.XAttribute::set_Value(string)
      IL_0076:  br         IL_0136

      IL_007b:  ldloc.1
      IL_007c:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_Value()
      IL_0081:  ldstr      "Microsoft.Xna.Framework.Vector4"
      IL_0086:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_008b:  brfalse.s  IL_009d

      IL_008d:  ldloc.1
      IL_008e:  ldstr      "Engine.Vector4"
      IL_0093:  callvirt   instance void [System.Xml.XDocument]System.Xml.Linq.XAttribute::set_Value(string)
      IL_0098:  br         IL_0136

      IL_009d:  ldloc.1
      IL_009e:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_Value()
      IL_00a3:  ldstr      "Microsoft.Xna.Framework.Quaternion"
      IL_00a8:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_00ad:  brfalse.s  IL_00bc

      IL_00af:  ldloc.1
      IL_00b0:  ldstr      "Engine.Quaternion"
      IL_00b5:  callvirt   instance void [System.Xml.XDocument]System.Xml.Linq.XAttribute::set_Value(string)
      IL_00ba:  br.s       IL_0136

      IL_00bc:  ldloc.1
      IL_00bd:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_Value()
      IL_00c2:  ldstr      "Microsoft.Xna.Framework.Matrix"
      IL_00c7:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_00cc:  brfalse.s  IL_00db

      IL_00ce:  ldloc.1
      IL_00cf:  ldstr      "Engine.Matrix"
      IL_00d4:  callvirt   instance void [System.Xml.XDocument]System.Xml.Linq.XAttribute::set_Value(string)
      IL_00d9:  br.s       IL_0136

      IL_00db:  ldloc.1
      IL_00dc:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_Value()
      IL_00e1:  ldstr      "Microsoft.Xna.Framework.Point"
      IL_00e6:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_00eb:  brfalse.s  IL_00fa

      IL_00ed:  ldloc.1
      IL_00ee:  ldstr      "Engine.Point2"
      IL_00f3:  callvirt   instance void [System.Xml.XDocument]System.Xml.Linq.XAttribute::set_Value(string)
      IL_00f8:  br.s       IL_0136

      IL_00fa:  ldloc.1
      IL_00fb:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_Value()
      IL_0100:  ldstr      "Microsoft.Xna.Framework.Color"
      IL_0105:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_010a:  brfalse.s  IL_0119

      IL_010c:  ldloc.1
      IL_010d:  ldstr      "Engine.Color"
      IL_0112:  callvirt   instance void [System.Xml.XDocument]System.Xml.Linq.XAttribute::set_Value(string)
      IL_0117:  br.s       IL_0136

      IL_0119:  ldloc.1
      IL_011a:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_Value()
      IL_011f:  ldstr      "Game.Point3"
      IL_0124:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0129:  brfalse.s  IL_0136

      IL_012b:  ldloc.1
      IL_012c:  ldstr      "Engine.Point3"
      IL_0131:  callvirt   instance void [System.Xml.XDocument]System.Xml.Linq.XAttribute::set_Value(string)
      IL_0136:  ldloc.0
      IL_0137:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_013c:  brtrue     IL_001b

      IL_0141:  leave.s    IL_014d

    }  // end .try
    finally
    {
      IL_0143:  ldloc.0
      IL_0144:  brfalse.s  IL_014c

      IL_0146:  ldloc.0
      IL_0147:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_014c:  endfinally
    }  // end handler
    IL_014d:  ret
  } // end of method VersionConverter126To127::ConvertTypesToEngine

  .method private hidebysig static int32 
          MigrateFolder(string sourceFolderName,
                        string targetFolderName) cil managed
  {
    // 代码大小       193 (0xc1)
    .maxstack  6
    .locals init (int32 V_0,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<string> V_1,
             string V_2,
             string V_3)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldarg.1
    IL_0003:  call       void [Engine]Engine.Storage::CreateDirectory(string)
    IL_0008:  ldarg.0
    IL_0009:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<string> [Engine]Engine.Storage::ListDirectoryNames(string)
    IL_000e:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<string>::GetEnumerator()
    IL_0013:  stloc.1
    .try
    {
      IL_0014:  br.s       IL_004b

      IL_0016:  ldloc.1
      IL_0017:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<string>::get_Current()
      IL_001c:  stloc.2
      IL_001d:  ldloc.0
      IL_001e:  ldc.i4.2
      IL_001f:  newarr     [System.Runtime]System.String
      IL_0024:  dup
      IL_0025:  ldc.i4.0
      IL_0026:  ldarg.0
      IL_0027:  stelem.ref
      IL_0028:  dup
      IL_0029:  ldc.i4.1
      IL_002a:  ldloc.2
      IL_002b:  stelem.ref
      IL_002c:  call       string [Engine]Engine.Storage::CombinePaths(string[])
      IL_0031:  ldc.i4.2
      IL_0032:  newarr     [System.Runtime]System.String
      IL_0037:  dup
      IL_0038:  ldc.i4.0
      IL_0039:  ldarg.1
      IL_003a:  stelem.ref
      IL_003b:  dup
      IL_003c:  ldc.i4.1
      IL_003d:  ldloc.2
      IL_003e:  stelem.ref
      IL_003f:  call       string [Engine]Engine.Storage::CombinePaths(string[])
      IL_0044:  call       int32 Game.VersionConverter126To127::MigrateFolder(string,
                                                                              string)
      IL_0049:  add
      IL_004a:  stloc.0
      IL_004b:  ldloc.1
      IL_004c:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0051:  brtrue.s   IL_0016

      IL_0053:  leave.s    IL_005f

    }  // end .try
    finally
    {
      IL_0055:  ldloc.1
      IL_0056:  brfalse.s  IL_005e

      IL_0058:  ldloc.1
      IL_0059:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_005e:  endfinally
    }  // end handler
    IL_005f:  ldarg.0
    IL_0060:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<string> [Engine]Engine.Storage::ListFileNames(string)
    IL_0065:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<string>::GetEnumerator()
    IL_006a:  stloc.1
    .try
    {
      IL_006b:  br.s       IL_0091

      IL_006d:  ldloc.1
      IL_006e:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<string>::get_Current()
      IL_0073:  stloc.3
      IL_0074:  ldc.i4.2
      IL_0075:  newarr     [System.Runtime]System.String
      IL_007a:  dup
      IL_007b:  ldc.i4.0
      IL_007c:  ldarg.0
      IL_007d:  stelem.ref
      IL_007e:  dup
      IL_007f:  ldc.i4.1
      IL_0080:  ldloc.3
      IL_0081:  stelem.ref
      IL_0082:  call       string [Engine]Engine.Storage::CombinePaths(string[])
      IL_0087:  ldarg.1
      IL_0088:  call       void Game.VersionConverter126To127::MigrateFile(string,
                                                                           string)
      IL_008d:  ldloc.0
      IL_008e:  ldc.i4.1
      IL_008f:  add
      IL_0090:  stloc.0
      IL_0091:  ldloc.1
      IL_0092:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0097:  brtrue.s   IL_006d

      IL_0099:  leave.s    IL_00a5

    }  // end .try
    finally
    {
      IL_009b:  ldloc.1
      IL_009c:  brfalse.s  IL_00a4

      IL_009e:  ldloc.1
      IL_009f:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00a4:  endfinally
    }  // end handler
    IL_00a5:  ldarg.0
    IL_00a6:  call       void [Engine]Engine.Storage::DeleteDirectory(string)
    IL_00ab:  ldstr      "Migrated {0}"
    IL_00b0:  ldc.i4.1
    IL_00b1:  newarr     [System.Runtime]System.Object
    IL_00b6:  dup
    IL_00b7:  ldc.i4.0
    IL_00b8:  ldarg.0
    IL_00b9:  stelem.ref
    IL_00ba:  call       void [Engine]Engine.Log::Information(string,
                                                              object[])
    IL_00bf:  ldloc.0
    IL_00c0:  ret
  } // end of method VersionConverter126To127::MigrateFolder

  .method private hidebysig static void  MigrateFile(string sourceFileName,
                                                     string targetFolderName) cil managed
  {
    // 代码大小       57 (0x39)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.2
    IL_0002:  newarr     [System.Runtime]System.String
    IL_0007:  dup
    IL_0008:  ldc.i4.0
    IL_0009:  ldarg.1
    IL_000a:  stelem.ref
    IL_000b:  dup
    IL_000c:  ldc.i4.1
    IL_000d:  ldarg.0
    IL_000e:  call       string [Engine]Engine.Storage::GetFileName(string)
    IL_0013:  stelem.ref
    IL_0014:  call       string [Engine]Engine.Storage::CombinePaths(string[])
    IL_0019:  call       void [Engine]Engine.Storage::CopyFile(string,
                                                               string)
    IL_001e:  ldarg.0
    IL_001f:  call       void [Engine]Engine.Storage::DeleteFile(string)
    IL_0024:  ldstr      "Migrated {0}"
    IL_0029:  ldc.i4.1
    IL_002a:  newarr     [System.Runtime]System.Object
    IL_002f:  dup
    IL_0030:  ldc.i4.0
    IL_0031:  ldarg.0
    IL_0032:  stelem.ref
    IL_0033:  call       void [Engine]Engine.Log::Information(string,
                                                              object[])
    IL_0038:  ret
  } // end of method VersionConverter126To127::MigrateFile

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.VersionConverter::.ctor()
    IL_0006:  ret
  } // end of method VersionConverter126To127::.ctor

  .property instance string SourceVersion()
  {
    .get instance string Game.VersionConverter126To127::get_SourceVersion()
  } // end of property VersionConverter126To127::SourceVersion
  .property instance string TargetVersion()
  {
    .get instance string Game.VersionConverter126To127::get_TargetVersion()
  } // end of property VersionConverter126To127::TargetVersion
} // end of class Game.VersionConverter126To127