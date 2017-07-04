.class public auto ansi beforefieldinit Game.ExternalContentScreen
       extends Game.Screen
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass14_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class Game.CancellableBusyDialog busyDialog
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass14_0'::.ctor

    .method assembly hidebysig instance void 
            '<Update>b__1'(string link) cil managed
    {
      // 代码大小       24 (0x18)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CancellableBusyDialog Game.ExternalContentScreen/'<>c__DisplayClass14_0'::busyDialog
      IL_0006:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
      IL_000b:  ldnull
      IL_000c:  ldarg.1
      IL_000d:  newobj     instance void Game.ExternalContentLinkDialog::.ctor(string)
      IL_0012:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                                class Game.Dialog)
      IL_0017:  ret
    } // end of method '<>c__DisplayClass14_0'::'<Update>b__1'

    .method assembly hidebysig instance void 
            '<Update>b__2'(class [System.Runtime]System.Exception 'error') cil managed
    {
      // 代码大小       41 (0x29)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CancellableBusyDialog Game.ExternalContentScreen/'<>c__DisplayClass14_0'::busyDialog
      IL_0006:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
      IL_000b:  ldnull
      IL_000c:  ldstr      "Error"
      IL_0011:  ldarg.1
      IL_0012:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_0017:  ldstr      "OK"
      IL_001c:  ldnull
      IL_001d:  ldnull
      IL_001e:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_0023:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                                class Game.Dialog)
      IL_0028:  ret
    } // end of method '<>c__DisplayClass14_0'::'<Update>b__2'

  } // end of class '<>c__DisplayClass14_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass16_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class Game.CancellableBusyDialog busyDialog
    .field public class Game.ExternalContentScreen '<>4__this'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass16_0'::.ctor

    .method assembly hidebysig instance void 
            '<UpdateList>b__0'(class Game.ExternalContentEntry entry) cil managed
    {
      // 代码大小       180 (0xb4)
      .maxstack  4
      .locals init (valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ExternalContentEntry> V_0,
               class Game.ExternalContentEntry V_1)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CancellableBusyDialog Game.ExternalContentScreen/'<>c__DisplayClass16_0'::busyDialog
      IL_0006:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
      IL_000b:  ldarg.1
      IL_000c:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ExternalContentEntry> Game.ExternalContentEntry::ChildEntries
      IL_0011:  ldsfld     class [System.Runtime]System.Func`2<class Game.ExternalContentEntry,bool> Game.ExternalContentScreen/'<>c'::'<>9__16_1'
      IL_0016:  dup
      IL_0017:  brtrue.s   IL_0030

      IL_0019:  pop
      IL_001a:  ldsfld     class Game.ExternalContentScreen/'<>c' Game.ExternalContentScreen/'<>c'::'<>9'
      IL_001f:  ldftn      instance bool Game.ExternalContentScreen/'<>c'::'<UpdateList>b__16_1'(class Game.ExternalContentEntry)
      IL_0025:  newobj     instance void class [System.Runtime]System.Func`2<class Game.ExternalContentEntry,bool>::.ctor(object,
                                                                                                                          native int)
      IL_002a:  dup
      IL_002b:  stsfld     class [System.Runtime]System.Func`2<class Game.ExternalContentEntry,bool> Game.ExternalContentScreen/'<>c'::'<>9__16_1'
      IL_0030:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class Game.ExternalContentEntry>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                           class [System.Runtime]System.Func`2<!!0,bool>)
      IL_0035:  ldc.i4     0x3e8
      IL_003a:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Take<class Game.ExternalContentEntry>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                          int32)
      IL_003f:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ExternalContentEntry>::.ctor(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
      IL_0044:  ldarg.0
      IL_0045:  ldfld      class Game.ExternalContentScreen Game.ExternalContentScreen/'<>c__DisplayClass16_0'::'<>4__this'
      IL_004a:  ldfld      class Game.ListPanelWidget Game.ExternalContentScreen::m_directoryList
      IL_004f:  callvirt   instance void Game.ListPanelWidget::ClearItems()
      IL_0054:  dup
      IL_0055:  ldsfld     class [System.Runtime]System.Comparison`1<class Game.ExternalContentEntry> Game.ExternalContentScreen/'<>c'::'<>9__16_2'
      IL_005a:  dup
      IL_005b:  brtrue.s   IL_0074

      IL_005d:  pop
      IL_005e:  ldsfld     class Game.ExternalContentScreen/'<>c' Game.ExternalContentScreen/'<>c'::'<>9'
      IL_0063:  ldftn      instance int32 Game.ExternalContentScreen/'<>c'::'<UpdateList>b__16_2'(class Game.ExternalContentEntry,
                                                                                                  class Game.ExternalContentEntry)
      IL_0069:  newobj     instance void class [System.Runtime]System.Comparison`1<class Game.ExternalContentEntry>::.ctor(object,
                                                                                                                           native int)
      IL_006e:  dup
      IL_006f:  stsfld     class [System.Runtime]System.Comparison`1<class Game.ExternalContentEntry> Game.ExternalContentScreen/'<>c'::'<>9__16_2'
      IL_0074:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ExternalContentEntry>::Sort(class [System.Runtime]System.Comparison`1<!0>)
      IL_0079:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.ExternalContentEntry>::GetEnumerator()
      IL_007e:  stloc.0
      .try
      {
        IL_007f:  br.s       IL_009a

        IL_0081:  ldloca.s   V_0
        IL_0083:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ExternalContentEntry>::get_Current()
        IL_0088:  stloc.1
        IL_0089:  ldarg.0
        IL_008a:  ldfld      class Game.ExternalContentScreen Game.ExternalContentScreen/'<>c__DisplayClass16_0'::'<>4__this'
        IL_008f:  ldfld      class Game.ListPanelWidget Game.ExternalContentScreen::m_directoryList
        IL_0094:  ldloc.1
        IL_0095:  callvirt   instance void Game.ListPanelWidget::AddItem(object)
        IL_009a:  ldloca.s   V_0
        IL_009c:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ExternalContentEntry>::MoveNext()
        IL_00a1:  brtrue.s   IL_0081

        IL_00a3:  leave.s    IL_00b3

      }  // end .try
      finally
      {
        IL_00a5:  ldloca.s   V_0
        IL_00a7:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ExternalContentEntry>
        IL_00ad:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_00b2:  endfinally
      }  // end handler
      IL_00b3:  ret
    } // end of method '<>c__DisplayClass16_0'::'<UpdateList>b__0'

    .method assembly hidebysig instance void 
            '<UpdateList>b__3'(class [System.Runtime]System.Exception 'error') cil managed
    {
      // 代码大小       41 (0x29)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CancellableBusyDialog Game.ExternalContentScreen/'<>c__DisplayClass16_0'::busyDialog
      IL_0006:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
      IL_000b:  ldnull
      IL_000c:  ldstr      "Error"
      IL_0011:  ldarg.1
      IL_0012:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_0017:  ldstr      "OK"
      IL_001c:  ldnull
      IL_001d:  ldnull
      IL_001e:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_0023:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                                class Game.Dialog)
      IL_0028:  ret
    } // end of method '<>c__DisplayClass16_0'::'<UpdateList>b__3'

  } // end of class '<>c__DisplayClass16_0'

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.ExternalContentScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<class Game.ExternalContentEntry,bool> '<>9__16_1'
    .field public static class [System.Runtime]System.Comparison`1<class Game.ExternalContentEntry> '<>9__16_2'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.ExternalContentScreen/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.ExternalContentScreen/'<>c' Game.ExternalContentScreen/'<>c'::'<>9'
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

    .method assembly hidebysig instance bool 
            '<UpdateList>b__16_1'(class Game.ExternalContentEntry e) cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  call       bool Game.ExternalContentScreen::EntryFilter(class Game.ExternalContentEntry)
      IL_0006:  ret
    } // end of method '<>c'::'<UpdateList>b__16_1'

    .method assembly hidebysig instance int32 
            '<UpdateList>b__16_2'(class Game.ExternalContentEntry e1,
                                  class Game.ExternalContentEntry e2) cil managed
    {
      // 代码大小       58 (0x3a)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      valuetype Game.ExternalContentType Game.ExternalContentEntry::Type
      IL_0006:  ldc.i4.1
      IL_0007:  bne.un.s   IL_0014

      IL_0009:  ldarg.2
      IL_000a:  ldfld      valuetype Game.ExternalContentType Game.ExternalContentEntry::Type
      IL_000f:  ldc.i4.1
      IL_0010:  beq.s      IL_0014

      IL_0012:  ldc.i4.m1
      IL_0013:  ret

      IL_0014:  ldarg.1
      IL_0015:  ldfld      valuetype Game.ExternalContentType Game.ExternalContentEntry::Type
      IL_001a:  ldc.i4.1
      IL_001b:  beq.s      IL_0028

      IL_001d:  ldarg.2
      IL_001e:  ldfld      valuetype Game.ExternalContentType Game.ExternalContentEntry::Type
      IL_0023:  ldc.i4.1
      IL_0024:  bne.un.s   IL_0028

      IL_0026:  ldc.i4.1
      IL_0027:  ret

      IL_0028:  ldarg.1
      IL_0029:  ldfld      string Game.ExternalContentEntry::Path
      IL_002e:  ldarg.2
      IL_002f:  ldfld      string Game.ExternalContentEntry::Path
      IL_0034:  call       int32 [System.Runtime]System.String::Compare(string,
                                                                        string)
      IL_0039:  ret
    } // end of method '<>c'::'<UpdateList>b__16_2'

  } // end of class '<>c'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass17_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class Game.CancellableBusyDialog busyDialog
    .field public class Game.ExternalContentEntry entry
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass17_0'::.ctor

    .method assembly hidebysig instance void 
            '<DownloadEntry>b__0'(class [System.IO]System.IO.Stream 'stream') cil managed
    {
      // 代码大小       99 (0x63)
      .maxstack  6
      .locals init (class Game.ExternalContentScreen/'<>c__DisplayClass17_1' V_0)
      IL_0000:  newobj     instance void Game.ExternalContentScreen/'<>c__DisplayClass17_1'::.ctor()
      IL_0005:  stloc.0
      IL_0006:  ldloc.0
      IL_0007:  ldarg.0
      IL_0008:  stfld      class Game.ExternalContentScreen/'<>c__DisplayClass17_0' Game.ExternalContentScreen/'<>c__DisplayClass17_1'::'CS$<>8__locals1'
      IL_000d:  ldloc.0
      IL_000e:  ldarg.1
      IL_000f:  stfld      class [System.IO]System.IO.Stream Game.ExternalContentScreen/'<>c__DisplayClass17_1'::'stream'
      IL_0014:  ldarg.0
      IL_0015:  ldfld      class Game.CancellableBusyDialog Game.ExternalContentScreen/'<>c__DisplayClass17_0'::busyDialog
      IL_001a:  ldstr      "Importing"
      IL_001f:  callvirt   instance void Game.CancellableBusyDialog::set_LargeMessage(string)
      IL_0024:  ldloc.0
      IL_0025:  ldfld      class [System.IO]System.IO.Stream Game.ExternalContentScreen/'<>c__DisplayClass17_1'::'stream'
      IL_002a:  ldarg.0
      IL_002b:  ldfld      class Game.ExternalContentEntry Game.ExternalContentScreen/'<>c__DisplayClass17_0'::entry
      IL_0030:  ldfld      valuetype Game.ExternalContentType Game.ExternalContentEntry::Type
      IL_0035:  ldarg.0
      IL_0036:  ldfld      class Game.ExternalContentEntry Game.ExternalContentScreen/'<>c__DisplayClass17_0'::entry
      IL_003b:  ldfld      string Game.ExternalContentEntry::Path
      IL_0040:  call       string [Engine]Engine.Storage::GetFileName(string)
      IL_0045:  ldloc.0
      IL_0046:  ldftn      instance void Game.ExternalContentScreen/'<>c__DisplayClass17_1'::'<DownloadEntry>b__1'(string)
      IL_004c:  newobj     instance void class [System.Runtime]System.Action`1<string>::.ctor(object,
                                                                                              native int)
      IL_0051:  ldloc.0
      IL_0052:  ldftn      instance void Game.ExternalContentScreen/'<>c__DisplayClass17_1'::'<DownloadEntry>b__2'(class [System.Runtime]System.Exception)
      IL_0058:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                              native int)
      IL_005d:  call       void Game.ExternalContentManager::ImportExternalContent(class [System.IO]System.IO.Stream,
                                                                                   valuetype Game.ExternalContentType,
                                                                                   string,
                                                                                   class [System.Runtime]System.Action`1<string>,
                                                                                   class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
      IL_0062:  ret
    } // end of method '<>c__DisplayClass17_0'::'<DownloadEntry>b__0'

    .method assembly hidebysig instance void 
            '<DownloadEntry>b__3'(class [System.Runtime]System.Exception 'error') cil managed
    {
      // 代码大小       41 (0x29)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CancellableBusyDialog Game.ExternalContentScreen/'<>c__DisplayClass17_0'::busyDialog
      IL_0006:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
      IL_000b:  ldnull
      IL_000c:  ldstr      "Error"
      IL_0011:  ldarg.1
      IL_0012:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_0017:  ldstr      "OK"
      IL_001c:  ldnull
      IL_001d:  ldnull
      IL_001e:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_0023:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                                class Game.Dialog)
      IL_0028:  ret
    } // end of method '<>c__DisplayClass17_0'::'<DownloadEntry>b__3'

  } // end of class '<>c__DisplayClass17_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass17_1'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [System.IO]System.IO.Stream 'stream'
    .field public class Game.ExternalContentScreen/'<>c__DisplayClass17_0' 'CS$<>8__locals1'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass17_1'::.ctor

    .method assembly hidebysig instance void 
            '<DownloadEntry>b__1'(string downloadedName) cil managed
    {
      // 代码大小       28 (0x1c)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.IO]System.IO.Stream Game.ExternalContentScreen/'<>c__DisplayClass17_1'::'stream'
      IL_0006:  callvirt   instance void [System.IO]System.IO.Stream::Dispose()
      IL_000b:  ldarg.0
      IL_000c:  ldfld      class Game.ExternalContentScreen/'<>c__DisplayClass17_0' Game.ExternalContentScreen/'<>c__DisplayClass17_1'::'CS$<>8__locals1'
      IL_0011:  ldfld      class Game.CancellableBusyDialog Game.ExternalContentScreen/'<>c__DisplayClass17_0'::busyDialog
      IL_0016:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
      IL_001b:  ret
    } // end of method '<>c__DisplayClass17_1'::'<DownloadEntry>b__1'

    .method assembly hidebysig instance void 
            '<DownloadEntry>b__2'(class [System.Runtime]System.Exception 'error') cil managed
    {
      // 代码大小       57 (0x39)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.IO]System.IO.Stream Game.ExternalContentScreen/'<>c__DisplayClass17_1'::'stream'
      IL_0006:  callvirt   instance void [System.IO]System.IO.Stream::Dispose()
      IL_000b:  ldarg.0
      IL_000c:  ldfld      class Game.ExternalContentScreen/'<>c__DisplayClass17_0' Game.ExternalContentScreen/'<>c__DisplayClass17_1'::'CS$<>8__locals1'
      IL_0011:  ldfld      class Game.CancellableBusyDialog Game.ExternalContentScreen/'<>c__DisplayClass17_0'::busyDialog
      IL_0016:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
      IL_001b:  ldnull
      IL_001c:  ldstr      "Error"
      IL_0021:  ldarg.1
      IL_0022:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_0027:  ldstr      "OK"
      IL_002c:  ldnull
      IL_002d:  ldnull
      IL_002e:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_0033:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                                class Game.Dialog)
      IL_0038:  ret
    } // end of method '<>c__DisplayClass17_1'::'<DownloadEntry>b__2'

  } // end of class '<>c__DisplayClass17_1'

  .field private class Game.LabelWidget m_directoryLabel
  .field private class Game.ListPanelWidget m_directoryList
  .field private class Game.LabelWidget m_providerNameLabel
  .field private class Game.ButtonWidget m_changeProviderButton
  .field private class Game.ButtonWidget m_loginLogoutButton
  .field private class Game.ButtonWidget m_upDirectoryButton
  .field private class Game.ButtonWidget m_actionButton
  .field private class Game.ButtonWidget m_copyLinkButton
  .field private string m_path
  .field private bool m_listDirty
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<string,bool> m_downloadedFiles
  .field private class Game.IExternalContentProvider m_externalContentProvider
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       278 (0x116)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,bool>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,bool> Game.ExternalContentScreen::m_downloadedFiles
    IL_000b:  ldarg.0
    IL_000c:  call       class Game.IExternalContentProvider Game.ExternalContentManager::get_DefaultProvider()
    IL_0011:  stfld      class Game.IExternalContentProvider Game.ExternalContentScreen::m_externalContentProvider
    IL_0016:  ldarg.0
    IL_0017:  call       instance void Game.Screen::.ctor()
    IL_001c:  ldstr      "Screens/ExternalContentScreen"
    IL_0021:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0026:  stloc.0
    IL_0027:  ldarg.0
    IL_0028:  ldarg.0
    IL_0029:  ldloc.0
    IL_002a:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_002f:  ldarg.0
    IL_0030:  ldarg.0
    IL_0031:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0036:  ldstr      "TopBar.Label"
    IL_003b:  ldc.i4.1
    IL_003c:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0041:  stfld      class Game.LabelWidget Game.ExternalContentScreen::m_directoryLabel
    IL_0046:  ldarg.0
    IL_0047:  ldarg.0
    IL_0048:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_004d:  ldstr      "DirectoryList"
    IL_0052:  ldc.i4.1
    IL_0053:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ListPanelWidget>(string,
                                                                                         bool)
    IL_0058:  stfld      class Game.ListPanelWidget Game.ExternalContentScreen::m_directoryList
    IL_005d:  ldarg.0
    IL_005e:  ldarg.0
    IL_005f:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0064:  ldstr      "ProviderName"
    IL_0069:  ldc.i4.1
    IL_006a:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_006f:  stfld      class Game.LabelWidget Game.ExternalContentScreen::m_providerNameLabel
    IL_0074:  ldarg.0
    IL_0075:  ldarg.0
    IL_0076:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_007b:  ldstr      "ChangeProvider"
    IL_0080:  ldc.i4.1
    IL_0081:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0086:  stfld      class Game.ButtonWidget Game.ExternalContentScreen::m_changeProviderButton
    IL_008b:  ldarg.0
    IL_008c:  ldarg.0
    IL_008d:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0092:  ldstr      "LoginLogout"
    IL_0097:  ldc.i4.1
    IL_0098:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_009d:  stfld      class Game.ButtonWidget Game.ExternalContentScreen::m_loginLogoutButton
    IL_00a2:  ldarg.0
    IL_00a3:  ldarg.0
    IL_00a4:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00a9:  ldstr      "UpDirectory"
    IL_00ae:  ldc.i4.1
    IL_00af:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_00b4:  stfld      class Game.ButtonWidget Game.ExternalContentScreen::m_upDirectoryButton
    IL_00b9:  ldarg.0
    IL_00ba:  ldarg.0
    IL_00bb:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00c0:  ldstr      "Action"
    IL_00c5:  ldc.i4.1
    IL_00c6:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_00cb:  stfld      class Game.ButtonWidget Game.ExternalContentScreen::m_actionButton
    IL_00d0:  ldarg.0
    IL_00d1:  ldarg.0
    IL_00d2:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00d7:  ldstr      "CopyLink"
    IL_00dc:  ldc.i4.1
    IL_00dd:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_00e2:  stfld      class Game.ButtonWidget Game.ExternalContentScreen::m_copyLinkButton
    IL_00e7:  ldarg.0
    IL_00e8:  ldfld      class Game.ListPanelWidget Game.ExternalContentScreen::m_directoryList
    IL_00ed:  ldarg.0
    IL_00ee:  ldftn      instance class Game.Widget Game.ExternalContentScreen::'<.ctor>b__12_0'(object)
    IL_00f4:  newobj     instance void class [System.Runtime]System.Func`2<object,class Game.Widget>::.ctor(object,
                                                                                                            native int)
    IL_00f9:  callvirt   instance void Game.ListPanelWidget::set_ItemWidgetFactory(class [System.Runtime]System.Func`2<object,class Game.Widget>)
    IL_00fe:  ldarg.0
    IL_00ff:  ldfld      class Game.ListPanelWidget Game.ExternalContentScreen::m_directoryList
    IL_0104:  ldarg.0
    IL_0105:  ldftn      instance void Game.ExternalContentScreen::'<.ctor>b__12_1'(class Game.ListPanelWidget,
                                                                                    object)
    IL_010b:  newobj     instance void class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object>::.ctor(object,
                                                                                                                       native int)
    IL_0110:  callvirt   instance void Game.ListPanelWidget::add_ItemClicked(class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object>)
    IL_0115:  ret
  } // end of method ExternalContentScreen::.ctor

  .method public hidebysig virtual instance void 
          Enter(object[] parameters) cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ListPanelWidget Game.ExternalContentScreen::m_directoryList
    IL_0006:  callvirt   instance void Game.ListPanelWidget::ClearItems()
    IL_000b:  ldarg.0
    IL_000c:  ldnull
    IL_000d:  call       instance void Game.ExternalContentScreen::SetPath(string)
    IL_0012:  ldarg.0
    IL_0013:  ldc.i4.1
    IL_0014:  stfld      bool Game.ExternalContentScreen::m_listDirty
    IL_0019:  ret
  } // end of method ExternalContentScreen::Enter

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       883 (0x373)
    .maxstack  6
    .locals init (class Game.ExternalContentEntry V_0,
             valuetype [System.Runtime]System.Nullable`1<int32> V_1,
             valuetype [Engine]Engine.ReadOnlyList`1<object> V_2,
             string V_3,
             class Game.ExternalContentScreen/'<>c__DisplayClass14_0' V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ExternalContentScreen::m_listDirty
    IL_0006:  brfalse.s  IL_0015

    IL_0008:  ldarg.0
    IL_0009:  ldc.i4.0
    IL_000a:  stfld      bool Game.ExternalContentScreen::m_listDirty
    IL_000f:  ldarg.0
    IL_0010:  call       instance void Game.ExternalContentScreen::UpdateList()
    IL_0015:  ldnull
    IL_0016:  stloc.0
    IL_0017:  ldarg.0
    IL_0018:  ldfld      class Game.ListPanelWidget Game.ExternalContentScreen::m_directoryList
    IL_001d:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ListPanelWidget::get_SelectedIndex()
    IL_0022:  stloc.1
    IL_0023:  ldloca.s   V_1
    IL_0025:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_002a:  brfalse.s  IL_0058

    IL_002c:  ldarg.0
    IL_002d:  ldfld      class Game.ListPanelWidget Game.ExternalContentScreen::m_directoryList
    IL_0032:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<object> Game.ListPanelWidget::get_Items()
    IL_0037:  stloc.2
    IL_0038:  ldloca.s   V_2
    IL_003a:  ldarg.0
    IL_003b:  ldfld      class Game.ListPanelWidget Game.ExternalContentScreen::m_directoryList
    IL_0040:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ListPanelWidget::get_SelectedIndex()
    IL_0045:  stloc.1
    IL_0046:  ldloca.s   V_1
    IL_0048:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_004d:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<object>::get_Item(int32)
    IL_0052:  isinst     Game.ExternalContentEntry
    IL_0057:  stloc.0
    IL_0058:  ldloc.0
    IL_0059:  brfalse    IL_00fd

    IL_005e:  ldarg.0
    IL_005f:  ldfld      class Game.ButtonWidget Game.ExternalContentScreen::m_actionButton
    IL_0064:  ldc.i4.1
    IL_0065:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_006a:  ldloc.0
    IL_006b:  ldfld      valuetype Game.ExternalContentType Game.ExternalContentEntry::Type
    IL_0070:  ldc.i4.1
    IL_0071:  bne.un.s   IL_009d

    IL_0073:  ldarg.0
    IL_0074:  ldfld      class Game.ButtonWidget Game.ExternalContentScreen::m_actionButton
    IL_0079:  ldstr      "Enter"
    IL_007e:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_0083:  ldarg.0
    IL_0084:  ldfld      class Game.ButtonWidget Game.ExternalContentScreen::m_actionButton
    IL_0089:  ldc.i4.1
    IL_008a:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_008f:  ldarg.0
    IL_0090:  ldfld      class Game.ButtonWidget Game.ExternalContentScreen::m_copyLinkButton
    IL_0095:  ldc.i4.0
    IL_0096:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_009b:  br.s       IL_0115

    IL_009d:  ldarg.0
    IL_009e:  ldfld      class Game.ButtonWidget Game.ExternalContentScreen::m_actionButton
    IL_00a3:  ldstr      "Download"
    IL_00a8:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_00ad:  ldloc.0
    IL_00ae:  ldfld      string Game.ExternalContentEntry::Path
    IL_00b3:  call       string [Engine]Engine.Storage::GetExtension(string)
    IL_00b8:  callvirt   instance string [System.Runtime]System.String::ToLower()
    IL_00bd:  call       valuetype Game.ExternalContentType Game.ExternalContentManager::ExtensionToType(string)
    IL_00c2:  call       bool Game.ExternalContentManager::IsEntryTypeDownloadSupported(valuetype Game.ExternalContentType)
    IL_00c7:  brfalse.s  IL_00e3

    IL_00c9:  ldarg.0
    IL_00ca:  ldfld      class Game.ButtonWidget Game.ExternalContentScreen::m_actionButton
    IL_00cf:  ldc.i4.1
    IL_00d0:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_00d5:  ldarg.0
    IL_00d6:  ldfld      class Game.ButtonWidget Game.ExternalContentScreen::m_copyLinkButton
    IL_00db:  ldc.i4.1
    IL_00dc:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_00e1:  br.s       IL_0115

    IL_00e3:  ldarg.0
    IL_00e4:  ldfld      class Game.ButtonWidget Game.ExternalContentScreen::m_actionButton
    IL_00e9:  ldc.i4.0
    IL_00ea:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_00ef:  ldarg.0
    IL_00f0:  ldfld      class Game.ButtonWidget Game.ExternalContentScreen::m_copyLinkButton
    IL_00f5:  ldc.i4.0
    IL_00f6:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_00fb:  br.s       IL_0115

    IL_00fd:  ldarg.0
    IL_00fe:  ldfld      class Game.ButtonWidget Game.ExternalContentScreen::m_actionButton
    IL_0103:  ldc.i4.0
    IL_0104:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0109:  ldarg.0
    IL_010a:  ldfld      class Game.ButtonWidget Game.ExternalContentScreen::m_copyLinkButton
    IL_010f:  ldc.i4.0
    IL_0110:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0115:  ldarg.0
    IL_0116:  ldfld      class Game.LabelWidget Game.ExternalContentScreen::m_directoryLabel
    IL_011b:  ldarg.0
    IL_011c:  ldfld      class Game.IExternalContentProvider Game.ExternalContentScreen::m_externalContentProvider
    IL_0121:  callvirt   instance bool Game.IExternalContentProvider::get_IsLoggedIn()
    IL_0126:  brtrue.s   IL_012f

    IL_0128:  ldstr      "Not logged in"
    IL_012d:  br.s       IL_013f

    IL_012f:  ldstr      "Contents Of "
    IL_0134:  ldarg.0
    IL_0135:  ldfld      string Game.ExternalContentScreen::m_path
    IL_013a:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_013f:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0144:  ldarg.0
    IL_0145:  ldfld      class Game.LabelWidget Game.ExternalContentScreen::m_providerNameLabel
    IL_014a:  ldarg.0
    IL_014b:  ldfld      class Game.IExternalContentProvider Game.ExternalContentScreen::m_externalContentProvider
    IL_0150:  callvirt   instance string Game.IExternalContentProvider::get_DisplayName()
    IL_0155:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_015a:  ldarg.0
    IL_015b:  ldfld      class Game.ButtonWidget Game.ExternalContentScreen::m_upDirectoryButton
    IL_0160:  ldarg.0
    IL_0161:  ldfld      class Game.IExternalContentProvider Game.ExternalContentScreen::m_externalContentProvider
    IL_0166:  callvirt   instance bool Game.IExternalContentProvider::get_IsLoggedIn()
    IL_016b:  brfalse.s  IL_017f

    IL_016d:  ldarg.0
    IL_016e:  ldfld      string Game.ExternalContentScreen::m_path
    IL_0173:  ldstr      "/"
    IL_0178:  call       bool [System.Runtime]System.String::op_Inequality(string,
                                                                           string)
    IL_017d:  br.s       IL_0180

    IL_017f:  ldc.i4.0
    IL_0180:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0185:  ldarg.0
    IL_0186:  ldfld      class Game.ButtonWidget Game.ExternalContentScreen::m_loginLogoutButton
    IL_018b:  ldarg.0
    IL_018c:  ldfld      class Game.IExternalContentProvider Game.ExternalContentScreen::m_externalContentProvider
    IL_0191:  callvirt   instance bool Game.IExternalContentProvider::get_IsLoggedIn()
    IL_0196:  brtrue.s   IL_019f

    IL_0198:  ldstr      "Login"
    IL_019d:  br.s       IL_01a4

    IL_019f:  ldstr      "Logout"
    IL_01a4:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_01a9:  ldarg.0
    IL_01aa:  ldfld      class Game.ButtonWidget Game.ExternalContentScreen::m_loginLogoutButton
    IL_01af:  ldarg.0
    IL_01b0:  ldfld      class Game.IExternalContentProvider Game.ExternalContentScreen::m_externalContentProvider
    IL_01b5:  callvirt   instance bool Game.IExternalContentProvider::get_RequiresLogin()
    IL_01ba:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_01bf:  ldarg.0
    IL_01c0:  ldfld      class Game.ButtonWidget Game.ExternalContentScreen::m_copyLinkButton
    IL_01c5:  ldarg.0
    IL_01c6:  ldfld      class Game.IExternalContentProvider Game.ExternalContentScreen::m_externalContentProvider
    IL_01cb:  callvirt   instance bool Game.IExternalContentProvider::get_SupportsLinks()
    IL_01d0:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_01d5:  ldarg.0
    IL_01d6:  ldfld      class Game.ButtonWidget Game.ExternalContentScreen::m_copyLinkButton
    IL_01db:  ldloc.0
    IL_01dc:  brfalse.s  IL_01eb

    IL_01de:  ldloc.0
    IL_01df:  ldfld      valuetype Game.ExternalContentType Game.ExternalContentEntry::Type
    IL_01e4:  call       bool Game.ExternalContentManager::IsEntryTypeDownloadSupported(valuetype Game.ExternalContentType)
    IL_01e9:  br.s       IL_01ec

    IL_01eb:  ldc.i4.0
    IL_01ec:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_01f1:  ldarg.0
    IL_01f2:  ldfld      class Game.ButtonWidget Game.ExternalContentScreen::m_changeProviderButton
    IL_01f7:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_01fc:  brfalse.s  IL_021b

    IL_01fe:  ldnull
    IL_01ff:  ldstr      "Select Content Source"
    IL_0204:  ldc.i4.1
    IL_0205:  ldarg.0
    IL_0206:  ldftn      instance void Game.ExternalContentScreen::'<Update>b__14_0'(class Game.IExternalContentProvider)
    IL_020c:  newobj     instance void class [System.Runtime]System.Action`1<class Game.IExternalContentProvider>::.ctor(object,
                                                                                                                         native int)
    IL_0211:  newobj     instance void Game.SelectExternalContentProviderDialog::.ctor(string,
                                                                                       bool,
                                                                                       class [System.Runtime]System.Action`1<class Game.IExternalContentProvider>)
    IL_0216:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_021b:  ldarg.0
    IL_021c:  ldfld      class Game.ButtonWidget Game.ExternalContentScreen::m_upDirectoryButton
    IL_0221:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0226:  brfalse.s  IL_023b

    IL_0228:  ldarg.0
    IL_0229:  ldfld      string Game.ExternalContentScreen::m_path
    IL_022e:  call       string [Engine]Engine.Storage::GetDirectoryName(string)
    IL_0233:  stloc.3
    IL_0234:  ldarg.0
    IL_0235:  ldloc.3
    IL_0236:  call       instance void Game.ExternalContentScreen::SetPath(string)
    IL_023b:  ldarg.0
    IL_023c:  ldfld      class Game.ButtonWidget Game.ExternalContentScreen::m_actionButton
    IL_0241:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0246:  brfalse.s  IL_0269

    IL_0248:  ldloc.0
    IL_0249:  brfalse.s  IL_0269

    IL_024b:  ldloc.0
    IL_024c:  ldfld      valuetype Game.ExternalContentType Game.ExternalContentEntry::Type
    IL_0251:  ldc.i4.1
    IL_0252:  bne.un.s   IL_0262

    IL_0254:  ldarg.0
    IL_0255:  ldloc.0
    IL_0256:  ldfld      string Game.ExternalContentEntry::Path
    IL_025b:  call       instance void Game.ExternalContentScreen::SetPath(string)
    IL_0260:  br.s       IL_0269

    IL_0262:  ldarg.0
    IL_0263:  ldloc.0
    IL_0264:  call       instance void Game.ExternalContentScreen::DownloadEntry(class Game.ExternalContentEntry)
    IL_0269:  ldarg.0
    IL_026a:  ldfld      class Game.ButtonWidget Game.ExternalContentScreen::m_copyLinkButton
    IL_026f:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0274:  brfalse.s  IL_02e3

    IL_0276:  ldloc.0
    IL_0277:  brfalse.s  IL_02e3

    IL_0279:  ldloc.0
    IL_027a:  ldfld      valuetype Game.ExternalContentType Game.ExternalContentEntry::Type
    IL_027f:  call       bool Game.ExternalContentManager::IsEntryTypeDownloadSupported(valuetype Game.ExternalContentType)
    IL_0284:  brfalse.s  IL_02e3

    IL_0286:  newobj     instance void Game.ExternalContentScreen/'<>c__DisplayClass14_0'::.ctor()
    IL_028b:  stloc.s    V_4
    IL_028d:  ldloc.s    V_4
    IL_028f:  ldstr      "Creating Link"
    IL_0294:  ldc.i4.0
    IL_0295:  newobj     instance void Game.CancellableBusyDialog::.ctor(string,
                                                                         bool)
    IL_029a:  stfld      class Game.CancellableBusyDialog Game.ExternalContentScreen/'<>c__DisplayClass14_0'::busyDialog
    IL_029f:  ldnull
    IL_02a0:  ldloc.s    V_4
    IL_02a2:  ldfld      class Game.CancellableBusyDialog Game.ExternalContentScreen/'<>c__DisplayClass14_0'::busyDialog
    IL_02a7:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_02ac:  ldarg.0
    IL_02ad:  ldfld      class Game.IExternalContentProvider Game.ExternalContentScreen::m_externalContentProvider
    IL_02b2:  ldloc.0
    IL_02b3:  ldfld      string Game.ExternalContentEntry::Path
    IL_02b8:  ldloc.s    V_4
    IL_02ba:  ldfld      class Game.CancellableBusyDialog Game.ExternalContentScreen/'<>c__DisplayClass14_0'::busyDialog
    IL_02bf:  callvirt   instance class Game.CancellableProgress Game.CancellableBusyDialog::get_Progress()
    IL_02c4:  ldloc.s    V_4
    IL_02c6:  ldftn      instance void Game.ExternalContentScreen/'<>c__DisplayClass14_0'::'<Update>b__1'(string)
    IL_02cc:  newobj     instance void class [System.Runtime]System.Action`1<string>::.ctor(object,
                                                                                            native int)
    IL_02d1:  ldloc.s    V_4
    IL_02d3:  ldftn      instance void Game.ExternalContentScreen/'<>c__DisplayClass14_0'::'<Update>b__2'(class [System.Runtime]System.Exception)
    IL_02d9:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                            native int)
    IL_02de:  callvirt   instance void Game.IExternalContentProvider::Link(string,
                                                                           class Game.CancellableProgress,
                                                                           class [System.Runtime]System.Action`1<string>,
                                                                           class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
    IL_02e3:  ldarg.0
    IL_02e4:  ldfld      class Game.ButtonWidget Game.ExternalContentScreen::m_loginLogoutButton
    IL_02e9:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_02ee:  brfalse.s  IL_0330

    IL_02f0:  ldarg.0
    IL_02f1:  ldfld      class Game.IExternalContentProvider Game.ExternalContentScreen::m_externalContentProvider
    IL_02f6:  callvirt   instance bool Game.IExternalContentProvider::get_IsLoggedIn()
    IL_02fb:  brfalse.s  IL_0318

    IL_02fd:  ldarg.0
    IL_02fe:  ldfld      class Game.IExternalContentProvider Game.ExternalContentScreen::m_externalContentProvider
    IL_0303:  callvirt   instance void Game.IExternalContentProvider::Logout()
    IL_0308:  ldarg.0
    IL_0309:  ldnull
    IL_030a:  call       instance void Game.ExternalContentScreen::SetPath(string)
    IL_030f:  ldarg.0
    IL_0310:  ldc.i4.1
    IL_0311:  stfld      bool Game.ExternalContentScreen::m_listDirty
    IL_0316:  br.s       IL_0330

    IL_0318:  ldarg.0
    IL_0319:  ldfld      class Game.IExternalContentProvider Game.ExternalContentScreen::m_externalContentProvider
    IL_031e:  ldc.i4.0
    IL_031f:  ldarg.0
    IL_0320:  ldftn      instance void Game.ExternalContentScreen::'<Update>b__14_3'()
    IL_0326:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_032b:  call       void Game.ExternalContentManager::ShowLoginUiIfNeeded(class Game.IExternalContentProvider,
                                                                               bool,
                                                                               class [System.Runtime]System.Action)
    IL_0330:  ldarg.0
    IL_0331:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0336:  callvirt   instance bool Game.WidgetInput::get_Back()
    IL_033b:  brtrue.s   IL_0362

    IL_033d:  ldarg.0
    IL_033e:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0343:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_0348:  brtrue.s   IL_0362

    IL_034a:  ldarg.0
    IL_034b:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0350:  ldstr      "TopBar.Back"
    IL_0355:  ldc.i4.1
    IL_0356:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_035b:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0360:  brfalse.s  IL_0372

    IL_0362:  ldstr      "Content"
    IL_0367:  ldc.i4.0
    IL_0368:  newarr     [System.Runtime]System.Object
    IL_036d:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_0372:  ret
  } // end of method ExternalContentScreen::Update

  .method private hidebysig instance void 
          SetPath(string path) cil managed
  {
    // 代码大小       62 (0x3e)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0006:  brfalse.s  IL_000f

    IL_0008:  ldstr      "/"
    IL_000d:  starg.s    path
    IL_000f:  ldarg.1
    IL_0010:  ldstr      "\\"
    IL_0015:  ldstr      "/"
    IL_001a:  callvirt   instance string [System.Runtime]System.String::Replace(string,
                                                                                string)
    IL_001f:  starg.s    path
    IL_0021:  ldarg.1
    IL_0022:  ldarg.0
    IL_0023:  ldfld      string Game.ExternalContentScreen::m_path
    IL_0028:  call       bool [System.Runtime]System.String::op_Inequality(string,
                                                                           string)
    IL_002d:  brfalse.s  IL_003d

    IL_002f:  ldarg.0
    IL_0030:  ldarg.1
    IL_0031:  stfld      string Game.ExternalContentScreen::m_path
    IL_0036:  ldarg.0
    IL_0037:  ldc.i4.1
    IL_0038:  stfld      bool Game.ExternalContentScreen::m_listDirty
    IL_003d:  ret
  } // end of method ExternalContentScreen::SetPath

  .method private hidebysig instance void 
          UpdateList() cil managed
  {
    // 代码大小       127 (0x7f)
    .maxstack  6
    .locals init (class Game.ExternalContentScreen/'<>c__DisplayClass16_0' V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ListPanelWidget Game.ExternalContentScreen::m_directoryList
    IL_0006:  callvirt   instance void Game.ListPanelWidget::ClearItems()
    IL_000b:  ldarg.0
    IL_000c:  ldfld      class Game.IExternalContentProvider Game.ExternalContentScreen::m_externalContentProvider
    IL_0011:  brfalse.s  IL_007e

    IL_0013:  ldarg.0
    IL_0014:  ldfld      class Game.IExternalContentProvider Game.ExternalContentScreen::m_externalContentProvider
    IL_0019:  callvirt   instance bool Game.IExternalContentProvider::get_IsLoggedIn()
    IL_001e:  brfalse.s  IL_007e

    IL_0020:  newobj     instance void Game.ExternalContentScreen/'<>c__DisplayClass16_0'::.ctor()
    IL_0025:  stloc.0
    IL_0026:  ldloc.0
    IL_0027:  ldarg.0
    IL_0028:  stfld      class Game.ExternalContentScreen Game.ExternalContentScreen/'<>c__DisplayClass16_0'::'<>4__this'
    IL_002d:  ldloc.0
    IL_002e:  ldstr      "Retrieving Directory"
    IL_0033:  ldc.i4.0
    IL_0034:  newobj     instance void Game.CancellableBusyDialog::.ctor(string,
                                                                         bool)
    IL_0039:  stfld      class Game.CancellableBusyDialog Game.ExternalContentScreen/'<>c__DisplayClass16_0'::busyDialog
    IL_003e:  ldnull
    IL_003f:  ldloc.0
    IL_0040:  ldfld      class Game.CancellableBusyDialog Game.ExternalContentScreen/'<>c__DisplayClass16_0'::busyDialog
    IL_0045:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_004a:  ldarg.0
    IL_004b:  ldfld      class Game.IExternalContentProvider Game.ExternalContentScreen::m_externalContentProvider
    IL_0050:  ldarg.0
    IL_0051:  ldfld      string Game.ExternalContentScreen::m_path
    IL_0056:  ldloc.0
    IL_0057:  ldfld      class Game.CancellableBusyDialog Game.ExternalContentScreen/'<>c__DisplayClass16_0'::busyDialog
    IL_005c:  callvirt   instance class Game.CancellableProgress Game.CancellableBusyDialog::get_Progress()
    IL_0061:  ldloc.0
    IL_0062:  ldftn      instance void Game.ExternalContentScreen/'<>c__DisplayClass16_0'::'<UpdateList>b__0'(class Game.ExternalContentEntry)
    IL_0068:  newobj     instance void class [System.Runtime]System.Action`1<class Game.ExternalContentEntry>::.ctor(object,
                                                                                                                     native int)
    IL_006d:  ldloc.0
    IL_006e:  ldftn      instance void Game.ExternalContentScreen/'<>c__DisplayClass16_0'::'<UpdateList>b__3'(class [System.Runtime]System.Exception)
    IL_0074:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                            native int)
    IL_0079:  callvirt   instance void Game.IExternalContentProvider::List(string,
                                                                           class Game.CancellableProgress,
                                                                           class [System.Runtime]System.Action`1<class Game.ExternalContentEntry>,
                                                                           class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
    IL_007e:  ret
  } // end of method ExternalContentScreen::UpdateList

  .method private hidebysig instance void 
          DownloadEntry(class Game.ExternalContentEntry entry) cil managed
  {
    // 代码大小       100 (0x64)
    .maxstack  6
    .locals init (class Game.ExternalContentScreen/'<>c__DisplayClass17_0' V_0)
    IL_0000:  newobj     instance void Game.ExternalContentScreen/'<>c__DisplayClass17_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      class Game.ExternalContentEntry Game.ExternalContentScreen/'<>c__DisplayClass17_0'::entry
    IL_000d:  ldloc.0
    IL_000e:  ldstr      "Downloading"
    IL_0013:  ldc.i4.0
    IL_0014:  newobj     instance void Game.CancellableBusyDialog::.ctor(string,
                                                                         bool)
    IL_0019:  stfld      class Game.CancellableBusyDialog Game.ExternalContentScreen/'<>c__DisplayClass17_0'::busyDialog
    IL_001e:  ldnull
    IL_001f:  ldloc.0
    IL_0020:  ldfld      class Game.CancellableBusyDialog Game.ExternalContentScreen/'<>c__DisplayClass17_0'::busyDialog
    IL_0025:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_002a:  ldarg.0
    IL_002b:  ldfld      class Game.IExternalContentProvider Game.ExternalContentScreen::m_externalContentProvider
    IL_0030:  ldloc.0
    IL_0031:  ldfld      class Game.ExternalContentEntry Game.ExternalContentScreen/'<>c__DisplayClass17_0'::entry
    IL_0036:  ldfld      string Game.ExternalContentEntry::Path
    IL_003b:  ldloc.0
    IL_003c:  ldfld      class Game.CancellableBusyDialog Game.ExternalContentScreen/'<>c__DisplayClass17_0'::busyDialog
    IL_0041:  callvirt   instance class Game.CancellableProgress Game.CancellableBusyDialog::get_Progress()
    IL_0046:  ldloc.0
    IL_0047:  ldftn      instance void Game.ExternalContentScreen/'<>c__DisplayClass17_0'::'<DownloadEntry>b__0'(class [System.IO]System.IO.Stream)
    IL_004d:  newobj     instance void class [System.Runtime]System.Action`1<class [System.IO]System.IO.Stream>::.ctor(object,
                                                                                                                       native int)
    IL_0052:  ldloc.0
    IL_0053:  ldftn      instance void Game.ExternalContentScreen/'<>c__DisplayClass17_0'::'<DownloadEntry>b__3'(class [System.Runtime]System.Exception)
    IL_0059:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                            native int)
    IL_005e:  callvirt   instance void Game.IExternalContentProvider::Download(string,
                                                                               class Game.CancellableProgress,
                                                                               class [System.Runtime]System.Action`1<class [System.IO]System.IO.Stream>,
                                                                               class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
    IL_0063:  ret
  } // end of method ExternalContentScreen::DownloadEntry

  .method private hidebysig static bool  EntryFilter(class Game.ExternalContentEntry entry) cil managed
  {
    // 代码大小       10 (0xa)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype Game.ExternalContentType Game.ExternalContentEntry::Type
    IL_0006:  ldc.i4.0
    IL_0007:  cgt.un
    IL_0009:  ret
  } // end of method ExternalContentScreen::EntryFilter

  .method private hidebysig instance class Game.Widget 
          '<.ctor>b__12_0'(object item) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       246 (0xf6)
    .maxstack  5
    .locals init (class Game.ExternalContentEntry V_0,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_1,
             class Game.ContainerWidget V_2,
             string V_3,
             string V_4,
             string V_5)
    IL_0000:  ldarg.1
    IL_0001:  castclass  Game.ExternalContentEntry
    IL_0006:  stloc.0
    IL_0007:  ldstr      "Widgets/ExternalContentItem"
    IL_000c:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0011:  stloc.1
    IL_0012:  ldarg.0
    IL_0013:  ldloc.1
    IL_0014:  ldnull
    IL_0015:  call       class Game.Widget Game.WidgetsManager::LoadWidget(object,
                                                                           class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                           class Game.ContainerWidget)
    IL_001a:  castclass  Game.ContainerWidget
    IL_001f:  stloc.2
    IL_0020:  ldloc.0
    IL_0021:  ldfld      string Game.ExternalContentEntry::Path
    IL_0026:  call       string [Engine]Engine.Storage::GetFileName(string)
    IL_002b:  stloc.3
    IL_002c:  ldarg.0
    IL_002d:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,bool> Game.ExternalContentScreen::m_downloadedFiles
    IL_0032:  ldloc.0
    IL_0033:  ldfld      string Game.ExternalContentEntry::Path
    IL_0038:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<string,bool>::ContainsKey(!0)
    IL_003d:  brtrue.s   IL_0046

    IL_003f:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0044:  br.s       IL_004b

    IL_0046:  ldstr      " | (downloaded)"
    IL_004b:  stloc.s    V_4
    IL_004d:  ldloc.0
    IL_004e:  ldfld      valuetype Game.ExternalContentType Game.ExternalContentEntry::Type
    IL_0053:  ldc.i4.1
    IL_0054:  bne.un.s   IL_0063

    IL_0056:  ldloc.0
    IL_0057:  ldfld      valuetype Game.ExternalContentType Game.ExternalContentEntry::Type
    IL_005c:  call       string Game.ExternalContentManager::GetEntryTypeDescription(valuetype Game.ExternalContentType)
    IL_0061:  br.s       IL_00a2

    IL_0063:  ldstr      "{0} | {1} | {2:dd-MMM-yyyy HH:mm}{3}"
    IL_0068:  ldc.i4.4
    IL_0069:  newarr     [System.Runtime]System.Object
    IL_006e:  dup
    IL_006f:  ldc.i4.0
    IL_0070:  ldloc.0
    IL_0071:  ldfld      valuetype Game.ExternalContentType Game.ExternalContentEntry::Type
    IL_0076:  call       string Game.ExternalContentManager::GetEntryTypeDescription(valuetype Game.ExternalContentType)
    IL_007b:  stelem.ref
    IL_007c:  dup
    IL_007d:  ldc.i4.1
    IL_007e:  ldloc.0
    IL_007f:  ldfld      int64 Game.ExternalContentEntry::Size
    IL_0084:  call       string Game.DataSizeFormatter::Format(int64)
    IL_0089:  stelem.ref
    IL_008a:  dup
    IL_008b:  ldc.i4.2
    IL_008c:  ldloc.0
    IL_008d:  ldfld      valuetype [System.Runtime]System.DateTime Game.ExternalContentEntry::Time
    IL_0092:  box        [System.Runtime]System.DateTime
    IL_0097:  stelem.ref
    IL_0098:  dup
    IL_0099:  ldc.i4.3
    IL_009a:  ldloc.s    V_4
    IL_009c:  stelem.ref
    IL_009d:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00a2:  stloc.s    V_5
    IL_00a4:  ldloc.2
    IL_00a5:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00aa:  ldstr      "ExternalContentItem.Icon"
    IL_00af:  ldc.i4.1
    IL_00b0:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.RectangleWidget>(string,
                                                                                         bool)
    IL_00b5:  ldloc.0
    IL_00b6:  ldfld      valuetype Game.ExternalContentType Game.ExternalContentEntry::Type
    IL_00bb:  call       class Game.Subtexture Game.ExternalContentManager::GetEntryTypeIcon(valuetype Game.ExternalContentType)
    IL_00c0:  callvirt   instance void Game.RectangleWidget::set_Subtexture(class Game.Subtexture)
    IL_00c5:  ldloc.2
    IL_00c6:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00cb:  ldstr      "ExternalContentItem.Text"
    IL_00d0:  ldc.i4.1
    IL_00d1:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_00d6:  ldloc.3
    IL_00d7:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00dc:  ldloc.2
    IL_00dd:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00e2:  ldstr      "ExternalContentItem.Details"
    IL_00e7:  ldc.i4.1
    IL_00e8:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_00ed:  ldloc.s    V_5
    IL_00ef:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00f4:  ldloc.2
    IL_00f5:  ret
  } // end of method ExternalContentScreen::'<.ctor>b__12_0'

  .method private hidebysig instance void 
          '<.ctor>b__12_1'(class Game.ListPanelWidget sender,
                           object item) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       46 (0x2e)
    .maxstack  2
    .locals init (class Game.ExternalContentEntry V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ListPanelWidget Game.ExternalContentScreen::m_directoryList
    IL_0006:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_000b:  ldarg.2
    IL_000c:  bne.un.s   IL_002d

    IL_000e:  ldarg.2
    IL_000f:  isinst     Game.ExternalContentEntry
    IL_0014:  stloc.0
    IL_0015:  ldloc.0
    IL_0016:  brfalse.s  IL_002d

    IL_0018:  ldloc.0
    IL_0019:  ldfld      valuetype Game.ExternalContentType Game.ExternalContentEntry::Type
    IL_001e:  ldc.i4.1
    IL_001f:  bne.un.s   IL_002d

    IL_0021:  ldarg.0
    IL_0022:  ldloc.0
    IL_0023:  ldfld      string Game.ExternalContentEntry::Path
    IL_0028:  call       instance void Game.ExternalContentScreen::SetPath(string)
    IL_002d:  ret
  } // end of method ExternalContentScreen::'<.ctor>b__12_1'

  .method private hidebysig instance void 
          '<Update>b__14_0'(class Game.IExternalContentProvider provider) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.IExternalContentProvider Game.ExternalContentScreen::m_externalContentProvider
    IL_0007:  ldarg.0
    IL_0008:  ldc.i4.1
    IL_0009:  stfld      bool Game.ExternalContentScreen::m_listDirty
    IL_000e:  ldarg.0
    IL_000f:  ldnull
    IL_0010:  call       instance void Game.ExternalContentScreen::SetPath(string)
    IL_0015:  ret
  } // end of method ExternalContentScreen::'<Update>b__14_0'

  .method private hidebysig instance void 
          '<Update>b__14_3'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldnull
    IL_0002:  call       instance void Game.ExternalContentScreen::SetPath(string)
    IL_0007:  ldarg.0
    IL_0008:  ldc.i4.1
    IL_0009:  stfld      bool Game.ExternalContentScreen::m_listDirty
    IL_000e:  ret
  } // end of method ExternalContentScreen::'<Update>b__14_3'

} // end of class Game.ExternalContentScreen