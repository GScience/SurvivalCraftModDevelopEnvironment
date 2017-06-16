.class public auto ansi beforefieldinit Game.ModifyWorldScreen
       extends Game.Screen
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass14_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class Game.MessageDialog dialog
    .field public class Game.ModifyWorldScreen '<>4__this'
    .field public class [System.Runtime]System.Action '<>9__2'
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
            '<Update>b__1'(valuetype Game.MessageDialogButton button) cil managed
    {
      // 代码大小       73 (0x49)
      .maxstack  3
      .locals init (class [System.Runtime]System.Action V_0)
      IL_0000:  ldarg.1
      IL_0001:  brtrue.s   IL_003d

      IL_0003:  ldarg.0
      IL_0004:  ldfld      class Game.ModifyWorldScreen Game.ModifyWorldScreen/'<>c__DisplayClass14_0'::'<>4__this'
      IL_0009:  ldfld      class Game.WorldInfo Game.ModifyWorldScreen::m_worldInfo
      IL_000e:  ldfld      string Game.WorldInfo::DirectoryName
      IL_0013:  call       void Game.WorldsManager::DeleteWorld(string)
      IL_0018:  ldarg.0
      IL_0019:  ldfld      class [System.Runtime]System.Action Game.ModifyWorldScreen/'<>c__DisplayClass14_0'::'<>9__2'
      IL_001e:  dup
      IL_001f:  brtrue.s   IL_0037

      IL_0021:  pop
      IL_0022:  ldarg.0
      IL_0023:  ldarg.0
      IL_0024:  ldftn      instance void Game.ModifyWorldScreen/'<>c__DisplayClass14_0'::'<Update>b__2'()
      IL_002a:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                              native int)
      IL_002f:  dup
      IL_0030:  stloc.0
      IL_0031:  stfld      class [System.Runtime]System.Action Game.ModifyWorldScreen/'<>c__DisplayClass14_0'::'<>9__2'
      IL_0036:  ldloc.0
      IL_0037:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
      IL_003c:  ret

      IL_003d:  ldarg.0
      IL_003e:  ldfld      class Game.MessageDialog Game.ModifyWorldScreen/'<>c__DisplayClass14_0'::dialog
      IL_0043:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
      IL_0048:  ret
    } // end of method '<>c__DisplayClass14_0'::'<Update>b__1'

    .method assembly hidebysig instance void 
            '<Update>b__2'() cil managed
    {
      // 代码大小       28 (0x1c)
      .maxstack  8
      IL_0000:  ldstr      "Singleplayer"
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0010:  ldarg.0
      IL_0011:  ldfld      class Game.MessageDialog Game.ModifyWorldScreen/'<>c__DisplayClass14_0'::dialog
      IL_0016:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
      IL_001b:  ret
    } // end of method '<>c__DisplayClass14_0'::'<Update>b__2'

  } // end of class '<>c__DisplayClass14_0'

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.ModifyWorldScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action '<>9__14_4'
    .field public static class [System.Runtime]System.Action '<>9__14_6'
    .field public static class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton> '<>9__14_5'
    .field public static class [System.Runtime]System.Action '<>9__14_7'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.ModifyWorldScreen/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.ModifyWorldScreen/'<>c' Game.ModifyWorldScreen/'<>c'::'<>9'
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
            '<Update>b__14_4'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldstr      "Singleplayer"
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__14_4'

    .method assembly hidebysig instance void 
            '<Update>b__14_5'(valuetype Game.MessageDialogButton button) cil managed
    {
      // 代码大小       40 (0x28)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  brtrue.s   IL_0027

      IL_0003:  ldsfld     class [System.Runtime]System.Action Game.ModifyWorldScreen/'<>c'::'<>9__14_6'
      IL_0008:  dup
      IL_0009:  brtrue.s   IL_0022

      IL_000b:  pop
      IL_000c:  ldsfld     class Game.ModifyWorldScreen/'<>c' Game.ModifyWorldScreen/'<>c'::'<>9'
      IL_0011:  ldftn      instance void Game.ModifyWorldScreen/'<>c'::'<Update>b__14_6'()
      IL_0017:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                              native int)
      IL_001c:  dup
      IL_001d:  stsfld     class [System.Runtime]System.Action Game.ModifyWorldScreen/'<>c'::'<>9__14_6'
      IL_0022:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
      IL_0027:  ret
    } // end of method '<>c'::'<Update>b__14_5'

    .method assembly hidebysig instance void 
            '<Update>b__14_6'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldstr      "Singleplayer"
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__14_6'

    .method assembly hidebysig instance void 
            '<Update>b__14_7'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldstr      "Singleplayer"
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__14_7'

  } // end of class '<>c'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass15_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class Game.CancellableBusyDialog busyDialog
    .field public class Game.IExternalContentProvider provider
    .field public string fileName
    .field public class Game.ModifyWorldScreen '<>4__this'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass15_0'::.ctor

    .method assembly hidebysig instance void 
            '<UploadWorld>b__0'() cil managed
    {
      // 代码大小       174 (0xae)
      .maxstack  5
      .locals init (class Game.ModifyWorldScreen/'<>c__DisplayClass15_1' V_0,
               class [System.Runtime]System.Exception V_1)
      IL_0000:  newobj     instance void Game.ModifyWorldScreen/'<>c__DisplayClass15_1'::.ctor()
      IL_0005:  stloc.0
      IL_0006:  ldloc.0
      IL_0007:  ldarg.0
      IL_0008:  stfld      class Game.ModifyWorldScreen/'<>c__DisplayClass15_0' Game.ModifyWorldScreen/'<>c__DisplayClass15_1'::'CS$<>8__locals1'
      IL_000d:  ldloc.0
      IL_000e:  ldstr      "data:/WorldUpload.tmp"
      IL_0013:  stfld      string Game.ModifyWorldScreen/'<>c__DisplayClass15_1'::tmpFileName
      IL_0018:  ldloc.0
      IL_0019:  ldnull
      IL_001a:  stfld      class [System.IO]System.IO.Stream Game.ModifyWorldScreen/'<>c__DisplayClass15_1'::tmpStream
      .try
      {
        IL_001f:  ldloc.0
        IL_0020:  ldloc.0
        IL_0021:  ldfld      string Game.ModifyWorldScreen/'<>c__DisplayClass15_1'::tmpFileName
        IL_0026:  ldc.i4.2
        IL_0027:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                                valuetype [Engine]Engine.OpenFileMode)
        IL_002c:  stfld      class [System.IO]System.IO.Stream Game.ModifyWorldScreen/'<>c__DisplayClass15_1'::tmpStream
        IL_0031:  ldarg.0
        IL_0032:  ldfld      class Game.ModifyWorldScreen Game.ModifyWorldScreen/'<>c__DisplayClass15_0'::'<>4__this'
        IL_0037:  ldfld      class Game.WorldInfo Game.ModifyWorldScreen::m_worldInfo
        IL_003c:  ldfld      string Game.WorldInfo::DirectoryName
        IL_0041:  ldloc.0
        IL_0042:  ldfld      class [System.IO]System.IO.Stream Game.ModifyWorldScreen/'<>c__DisplayClass15_1'::tmpStream
        IL_0047:  call       void Game.WorldsManager::ExportWorld(string,
                                                                  class [System.IO]System.IO.Stream)
        IL_004c:  ldloc.0
        IL_004d:  ldfld      class [System.IO]System.IO.Stream Game.ModifyWorldScreen/'<>c__DisplayClass15_1'::tmpStream
        IL_0052:  ldc.i4.0
        IL_0053:  conv.i8
        IL_0054:  callvirt   instance void [System.IO]System.IO.Stream::set_Position(int64)
        IL_0059:  ldloc.0
        IL_005a:  ldftn      instance void Game.ModifyWorldScreen/'<>c__DisplayClass15_1'::'<UploadWorld>b__1'()
        IL_0060:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                                native int)
        IL_0065:  ldc.i4.0
        IL_0066:  call       void [Engine]Engine.Dispatcher::Dispatch(class [System.Runtime]System.Action,
                                                                      bool)
        IL_006b:  leave.s    IL_00ad

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_006d:  stloc.1
        IL_006e:  ldarg.0
        IL_006f:  ldfld      class Game.CancellableBusyDialog Game.ModifyWorldScreen/'<>c__DisplayClass15_0'::busyDialog
        IL_0074:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
        IL_0079:  ldstr      "Error"
        IL_007e:  ldloc.1
        IL_007f:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
        IL_0084:  ldstr      "OK"
        IL_0089:  ldnull
        IL_008a:  ldnull
        IL_008b:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                     string,
                                                                     string,
                                                                     string,
                                                                     class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
        IL_0090:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
        IL_0095:  ldloc.0
        IL_0096:  ldflda     class [System.IO]System.IO.Stream Game.ModifyWorldScreen/'<>c__DisplayClass15_1'::tmpStream
        IL_009b:  call       void [Engine]Engine.Utilities::Dispose<class [System.IO]System.IO.Stream>(!!0&)
        IL_00a0:  ldloc.0
        IL_00a1:  ldfld      string Game.ModifyWorldScreen/'<>c__DisplayClass15_1'::tmpFileName
        IL_00a6:  call       void [Engine]Engine.Storage::DeleteFile(string)
        IL_00ab:  leave.s    IL_00ad

      }  // end handler
      IL_00ad:  ret
    } // end of method '<>c__DisplayClass15_0'::'<UploadWorld>b__0'

  } // end of class '<>c__DisplayClass15_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass15_1'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [System.IO]System.IO.Stream tmpStream
    .field public string tmpFileName
    .field public class Game.ModifyWorldScreen/'<>c__DisplayClass15_0' 'CS$<>8__locals1'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass15_1'::.ctor

    .method assembly hidebysig instance void 
            '<UploadWorld>b__1'() cil managed
    {
      // 代码大小       95 (0x5f)
      .maxstack  7
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.ModifyWorldScreen/'<>c__DisplayClass15_0' Game.ModifyWorldScreen/'<>c__DisplayClass15_1'::'CS$<>8__locals1'
      IL_0006:  ldfld      class Game.CancellableBusyDialog Game.ModifyWorldScreen/'<>c__DisplayClass15_0'::busyDialog
      IL_000b:  ldstr      "Uploading World"
      IL_0010:  callvirt   instance void Game.CancellableBusyDialog::set_LargeMessage(string)
      IL_0015:  ldarg.0
      IL_0016:  ldfld      class Game.ModifyWorldScreen/'<>c__DisplayClass15_0' Game.ModifyWorldScreen/'<>c__DisplayClass15_1'::'CS$<>8__locals1'
      IL_001b:  ldfld      class Game.IExternalContentProvider Game.ModifyWorldScreen/'<>c__DisplayClass15_0'::provider
      IL_0020:  ldarg.0
      IL_0021:  ldfld      class Game.ModifyWorldScreen/'<>c__DisplayClass15_0' Game.ModifyWorldScreen/'<>c__DisplayClass15_1'::'CS$<>8__locals1'
      IL_0026:  ldfld      string Game.ModifyWorldScreen/'<>c__DisplayClass15_0'::fileName
      IL_002b:  ldarg.0
      IL_002c:  ldfld      class [System.IO]System.IO.Stream Game.ModifyWorldScreen/'<>c__DisplayClass15_1'::tmpStream
      IL_0031:  ldarg.0
      IL_0032:  ldfld      class Game.ModifyWorldScreen/'<>c__DisplayClass15_0' Game.ModifyWorldScreen/'<>c__DisplayClass15_1'::'CS$<>8__locals1'
      IL_0037:  ldfld      class Game.CancellableBusyDialog Game.ModifyWorldScreen/'<>c__DisplayClass15_0'::busyDialog
      IL_003c:  callvirt   instance class Game.CancellableProgress Game.CancellableBusyDialog::get_Progress()
      IL_0041:  ldarg.0
      IL_0042:  ldftn      instance void Game.ModifyWorldScreen/'<>c__DisplayClass15_1'::'<UploadWorld>b__2'()
      IL_0048:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                              native int)
      IL_004d:  ldarg.0
      IL_004e:  ldftn      instance void Game.ModifyWorldScreen/'<>c__DisplayClass15_1'::'<UploadWorld>b__3'(class [System.Runtime]System.Exception)
      IL_0054:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                              native int)
      IL_0059:  callvirt   instance void Game.IExternalContentProvider::Upload(string,
                                                                               class [System.IO]System.IO.Stream,
                                                                               class Game.CancellableProgress,
                                                                               class [System.Runtime]System.Action,
                                                                               class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
      IL_005e:  ret
    } // end of method '<>c__DisplayClass15_1'::'<UploadWorld>b__1'

    .method assembly hidebysig instance void 
            '<UploadWorld>b__2'() cil managed
    {
      // 代码大小       39 (0x27)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.ModifyWorldScreen/'<>c__DisplayClass15_0' Game.ModifyWorldScreen/'<>c__DisplayClass15_1'::'CS$<>8__locals1'
      IL_0006:  ldfld      class Game.CancellableBusyDialog Game.ModifyWorldScreen/'<>c__DisplayClass15_0'::busyDialog
      IL_000b:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
      IL_0010:  ldarg.0
      IL_0011:  ldflda     class [System.IO]System.IO.Stream Game.ModifyWorldScreen/'<>c__DisplayClass15_1'::tmpStream
      IL_0016:  call       void [Engine]Engine.Utilities::Dispose<class [System.IO]System.IO.Stream>(!!0&)
      IL_001b:  ldarg.0
      IL_001c:  ldfld      string Game.ModifyWorldScreen/'<>c__DisplayClass15_1'::tmpFileName
      IL_0021:  call       void [Engine]Engine.Storage::DeleteFile(string)
      IL_0026:  ret
    } // end of method '<>c__DisplayClass15_1'::'<UploadWorld>b__2'

    .method assembly hidebysig instance void 
            '<UploadWorld>b__3'(class [System.Runtime]System.Exception 'error') cil managed
    {
      // 代码大小       67 (0x43)
      .maxstack  5
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.ModifyWorldScreen/'<>c__DisplayClass15_0' Game.ModifyWorldScreen/'<>c__DisplayClass15_1'::'CS$<>8__locals1'
      IL_0006:  ldfld      class Game.CancellableBusyDialog Game.ModifyWorldScreen/'<>c__DisplayClass15_0'::busyDialog
      IL_000b:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
      IL_0010:  ldstr      "Error"
      IL_0015:  ldarg.1
      IL_0016:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_001b:  ldstr      "OK"
      IL_0020:  ldnull
      IL_0021:  ldnull
      IL_0022:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_0027:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
      IL_002c:  ldarg.0
      IL_002d:  ldflda     class [System.IO]System.IO.Stream Game.ModifyWorldScreen/'<>c__DisplayClass15_1'::tmpStream
      IL_0032:  call       void [Engine]Engine.Utilities::Dispose<class [System.IO]System.IO.Stream>(!!0&)
      IL_0037:  ldarg.0
      IL_0038:  ldfld      string Game.ModifyWorldScreen/'<>c__DisplayClass15_1'::tmpFileName
      IL_003d:  call       void [Engine]Engine.Storage::DeleteFile(string)
      IL_0042:  ret
    } // end of method '<>c__DisplayClass15_1'::'<UploadWorld>b__3'

  } // end of class '<>c__DisplayClass15_1'

  .field private class Game.TextBoxWidget m_nameTextBox
  .field private class Game.LabelWidget m_seedLabel
  .field private class Game.ButtonWidget m_gameModeButton
  .field private class Game.ButtonWidget m_worldOptionsButton
  .field private class Game.LabelWidget m_errorLabel
  .field private class Game.LabelWidget m_descriptionLabel
  .field private class Game.ButtonWidget m_applyButton
  .field private class Game.ButtonWidget m_deleteButton
  .field private class Game.ButtonWidget m_uploadButton
  .field private class Game.WorldInfo m_worldInfo
  .field private class [EntitySystem]TemplatesDatabase.ValuesDictionary m_currentWorldInfoData
  .field private class [EntitySystem]TemplatesDatabase.ValuesDictionary m_originalWorldInfoData
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       328 (0x148)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
    IL_0006:  stfld      class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.ModifyWorldScreen::m_currentWorldInfoData
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
    IL_0011:  stfld      class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.ModifyWorldScreen::m_originalWorldInfoData
    IL_0016:  ldarg.0
    IL_0017:  call       instance void Game.Screen::.ctor()
    IL_001c:  ldstr      "Screens/ModifyWorldScreen"
    IL_0021:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0026:  stloc.0
    IL_0027:  ldarg.0
    IL_0028:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_002d:  ldarg.0
    IL_002e:  ldloc.0
    IL_002f:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0034:  ldarg.0
    IL_0035:  ldarg.0
    IL_0036:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_003b:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0040:  ldstr      "Name"
    IL_0045:  ldc.i4.1
    IL_0046:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.TextBoxWidget>(string,
                                                                                            bool)
    IL_004b:  stfld      class Game.TextBoxWidget Game.ModifyWorldScreen::m_nameTextBox
    IL_0050:  ldarg.0
    IL_0051:  ldarg.0
    IL_0052:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0057:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_005c:  ldstr      "Seed"
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_0067:  stfld      class Game.LabelWidget Game.ModifyWorldScreen::m_seedLabel
    IL_006c:  ldarg.0
    IL_006d:  ldarg.0
    IL_006e:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0073:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0078:  ldstr      "GameMode"
    IL_007d:  ldc.i4.1
    IL_007e:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0083:  stfld      class Game.ButtonWidget Game.ModifyWorldScreen::m_gameModeButton
    IL_0088:  ldarg.0
    IL_0089:  ldarg.0
    IL_008a:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_008f:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0094:  ldstr      "WorldOptions"
    IL_0099:  ldc.i4.1
    IL_009a:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_009f:  stfld      class Game.ButtonWidget Game.ModifyWorldScreen::m_worldOptionsButton
    IL_00a4:  ldarg.0
    IL_00a5:  ldarg.0
    IL_00a6:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_00ab:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00b0:  ldstr      "Error"
    IL_00b5:  ldc.i4.1
    IL_00b6:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_00bb:  stfld      class Game.LabelWidget Game.ModifyWorldScreen::m_errorLabel
    IL_00c0:  ldarg.0
    IL_00c1:  ldarg.0
    IL_00c2:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_00c7:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00cc:  ldstr      "Description"
    IL_00d1:  ldc.i4.1
    IL_00d2:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_00d7:  stfld      class Game.LabelWidget Game.ModifyWorldScreen::m_descriptionLabel
    IL_00dc:  ldarg.0
    IL_00dd:  ldarg.0
    IL_00de:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_00e3:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00e8:  ldstr      "Apply"
    IL_00ed:  ldc.i4.1
    IL_00ee:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00f3:  stfld      class Game.ButtonWidget Game.ModifyWorldScreen::m_applyButton
    IL_00f8:  ldarg.0
    IL_00f9:  ldarg.0
    IL_00fa:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_00ff:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0104:  ldstr      "Delete"
    IL_0109:  ldc.i4.1
    IL_010a:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_010f:  stfld      class Game.ButtonWidget Game.ModifyWorldScreen::m_deleteButton
    IL_0114:  ldarg.0
    IL_0115:  ldarg.0
    IL_0116:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_011b:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0120:  ldstr      "Upload"
    IL_0125:  ldc.i4.1
    IL_0126:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_012b:  stfld      class Game.ButtonWidget Game.ModifyWorldScreen::m_uploadButton
    IL_0130:  ldarg.0
    IL_0131:  ldfld      class Game.TextBoxWidget Game.ModifyWorldScreen::m_nameTextBox
    IL_0136:  ldarg.0
    IL_0137:  ldftn      instance void Game.ModifyWorldScreen::'<.ctor>b__12_0'(class Game.TextBoxWidget)
    IL_013d:  newobj     instance void class [System.Runtime]System.Action`1<class Game.TextBoxWidget>::.ctor(object,
                                                                                                              native int)
    IL_0142:  callvirt   instance void Game.TextBoxWidget::add_TextChanged(class [System.Runtime]System.Action`1<class Game.TextBoxWidget>)
    IL_0147:  ret
  } // end of method ModifyWorldScreen::.ctor

  .method public hidebysig virtual instance void 
          Enter(object[] parameters) cil managed
  {
    // 代码大小       66 (0x42)
    .maxstack  3
    IL_0000:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
    IL_0005:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
    IL_000a:  ldtoken    Game.WorldOptionsScreen
    IL_000f:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0014:  beq.s      IL_0041

    IL_0016:  ldarg.0
    IL_0017:  ldarg.1
    IL_0018:  ldc.i4.0
    IL_0019:  ldelem.ref
    IL_001a:  castclass  Game.WorldInfo
    IL_001f:  stfld      class Game.WorldInfo Game.ModifyWorldScreen::m_worldInfo
    IL_0024:  ldarg.0
    IL_0025:  ldfld      class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.ModifyWorldScreen::m_originalWorldInfoData
    IL_002a:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::Clear()
    IL_002f:  ldarg.0
    IL_0030:  ldfld      class Game.WorldInfo Game.ModifyWorldScreen::m_worldInfo
    IL_0035:  ldarg.0
    IL_0036:  ldfld      class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.ModifyWorldScreen::m_originalWorldInfoData
    IL_003b:  ldc.i4.1
    IL_003c:  callvirt   instance void Game.WorldInfo::Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                            bool)
    IL_0041:  ret
  } // end of method ModifyWorldScreen::Enter

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       916 (0x394)
    .maxstack  7
    .locals init (bool V_0,
             bool V_1,
             class [System.Runtime]System.Collections.Generic.IList`1<int32> V_2,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>> V_3,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object> V_4,
             class Game.ModifyWorldScreen/'<>c__DisplayClass14_0' V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ButtonWidget Game.ModifyWorldScreen::m_gameModeButton
    IL_0006:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_000b:  brfalse    IL_0090

    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.WorldInfo Game.ModifyWorldScreen::m_worldInfo
    IL_0016:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_001b:  ldc.i4.3
    IL_001c:  beq.s      IL_0090

    IL_001e:  ldtoken    Game.GameMode
    IL_0023:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0028:  call       class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.EnumUtils::GetEnumValues(class [System.Runtime]System.Type)
    IL_002d:  stloc.2
    IL_002e:  ldarg.0
    IL_002f:  ldfld      class Game.WorldInfo Game.ModifyWorldScreen::m_worldInfo
    IL_0034:  ldloc.2
    IL_0035:  ldarg.0
    IL_0036:  ldfld      class Game.WorldInfo Game.ModifyWorldScreen::m_worldInfo
    IL_003b:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_0040:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.IList`1<int32>::IndexOf(!0)
    IL_0045:  ldc.i4.1
    IL_0046:  add
    IL_0047:  ldloc.2
    IL_0048:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.ICollection`1<int32>::get_Count()
    IL_004d:  rem
    IL_004e:  stfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_0053:  ldarg.0
    IL_0054:  ldfld      class Game.WorldInfo Game.ModifyWorldScreen::m_worldInfo
    IL_0059:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_005e:  ldc.i4.3
    IL_005f:  beq.s      IL_002e

    IL_0061:  ldarg.0
    IL_0062:  ldfld      class Game.LabelWidget Game.ModifyWorldScreen::m_descriptionLabel
    IL_0067:  ldstr      "GameMode."
    IL_006c:  ldarg.0
    IL_006d:  ldfld      class Game.WorldInfo Game.ModifyWorldScreen::m_worldInfo
    IL_0072:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_0077:  box        Game.GameMode
    IL_007c:  ldstr      ".Description"
    IL_0081:  call       string [System.Runtime]System.String::Concat(object,
                                                                      object,
                                                                      object)
    IL_0086:  call       string Game.StringsManager::GetString(string)
    IL_008b:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0090:  ldc.i4.0
    IL_0091:  stloc.0
    IL_0092:  ldarg.0
    IL_0093:  ldfld      class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.ModifyWorldScreen::m_currentWorldInfoData
    IL_0098:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::Clear()
    IL_009d:  ldarg.0
    IL_009e:  ldfld      class Game.WorldInfo Game.ModifyWorldScreen::m_worldInfo
    IL_00a3:  ldarg.0
    IL_00a4:  ldfld      class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.ModifyWorldScreen::m_currentWorldInfoData
    IL_00a9:  ldc.i4.1
    IL_00aa:  callvirt   instance void Game.WorldInfo::Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                            bool)
    IL_00af:  ldarg.0
    IL_00b0:  ldfld      class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.ModifyWorldScreen::m_currentWorldInfoData
    IL_00b5:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>> [EntitySystem]TemplatesDatabase.ValuesDictionary::get_Items()
    IL_00ba:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>>::GetEnumerator()
    IL_00bf:  stloc.3
    .try
    {
      IL_00c0:  br.s       IL_00ef

      IL_00c2:  ldloc.3
      IL_00c3:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>>::get_Current()
      IL_00c8:  stloc.s    V_4
      IL_00ca:  ldarg.0
      IL_00cb:  ldfld      class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.ModifyWorldScreen::m_originalWorldInfoData
      IL_00d0:  ldloca.s   V_4
      IL_00d2:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>::get_Key()
      IL_00d7:  ldnull
      IL_00d8:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<object>(string,
                                                                                                           !!0)
      IL_00dd:  ldloca.s   V_4
      IL_00df:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>::get_Value()
      IL_00e4:  call       bool [System.Runtime]System.Object::Equals(object,
                                                                      object)
      IL_00e9:  brtrue.s   IL_00ef

      IL_00eb:  ldc.i4.1
      IL_00ec:  stloc.0
      IL_00ed:  leave.s    IL_0103

      IL_00ef:  ldloc.3
      IL_00f0:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_00f5:  brtrue.s   IL_00c2

      IL_00f7:  leave.s    IL_0103

    }  // end .try
    finally
    {
      IL_00f9:  ldloc.3
      IL_00fa:  brfalse.s  IL_0102

      IL_00fc:  ldloc.3
      IL_00fd:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0102:  endfinally
    }  // end handler
    IL_0103:  ldarg.0
    IL_0104:  ldfld      class Game.WorldInfo Game.ModifyWorldScreen::m_worldInfo
    IL_0109:  ldfld      string Game.WorldInfo::Name
    IL_010e:  call       bool Game.WorldsManager::ValidateWorldName(string)
    IL_0113:  stloc.1
    IL_0114:  ldarg.0
    IL_0115:  ldfld      class Game.TextBoxWidget Game.ModifyWorldScreen::m_nameTextBox
    IL_011a:  ldarg.0
    IL_011b:  ldfld      class Game.WorldInfo Game.ModifyWorldScreen::m_worldInfo
    IL_0120:  ldfld      string Game.WorldInfo::Name
    IL_0125:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
    IL_012a:  ldarg.0
    IL_012b:  ldfld      class Game.LabelWidget Game.ModifyWorldScreen::m_seedLabel
    IL_0130:  ldarg.0
    IL_0131:  ldfld      class Game.WorldInfo Game.ModifyWorldScreen::m_worldInfo
    IL_0136:  ldfld      string Game.WorldInfo::Seed
    IL_013b:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0140:  ldarg.0
    IL_0141:  ldfld      class Game.ButtonWidget Game.ModifyWorldScreen::m_gameModeButton
    IL_0146:  ldarg.0
    IL_0147:  ldfld      class Game.WorldInfo Game.ModifyWorldScreen::m_worldInfo
    IL_014c:  ldflda     valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_0151:  constrained. Game.GameMode
    IL_0157:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_015c:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_0161:  ldarg.0
    IL_0162:  ldfld      class Game.ButtonWidget Game.ModifyWorldScreen::m_gameModeButton
    IL_0167:  ldarg.0
    IL_0168:  ldfld      class Game.WorldInfo Game.ModifyWorldScreen::m_worldInfo
    IL_016d:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_0172:  ldc.i4.3
    IL_0173:  ceq
    IL_0175:  ldc.i4.0
    IL_0176:  ceq
    IL_0178:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_017d:  ldarg.0
    IL_017e:  ldfld      class Game.LabelWidget Game.ModifyWorldScreen::m_errorLabel
    IL_0183:  ldloc.1
    IL_0184:  ldc.i4.0
    IL_0185:  ceq
    IL_0187:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_018c:  ldarg.0
    IL_018d:  ldfld      class Game.LabelWidget Game.ModifyWorldScreen::m_descriptionLabel
    IL_0192:  ldloc.1
    IL_0193:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0198:  ldarg.0
    IL_0199:  ldfld      class Game.ButtonWidget Game.ModifyWorldScreen::m_uploadButton
    IL_019e:  ldloc.1
    IL_019f:  brfalse.s  IL_01a7

    IL_01a1:  ldloc.0
    IL_01a2:  ldc.i4.0
    IL_01a3:  ceq
    IL_01a5:  br.s       IL_01a8

    IL_01a7:  ldc.i4.0
    IL_01a8:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_01ad:  ldarg.0
    IL_01ae:  ldfld      class Game.ButtonWidget Game.ModifyWorldScreen::m_applyButton
    IL_01b3:  ldloc.1
    IL_01b4:  ldloc.0
    IL_01b5:  and
    IL_01b6:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_01bb:  ldarg.0
    IL_01bc:  ldfld      class Game.LabelWidget Game.ModifyWorldScreen::m_descriptionLabel
    IL_01c1:  ldstr      "GameMode."
    IL_01c6:  ldarg.0
    IL_01c7:  ldfld      class Game.WorldInfo Game.ModifyWorldScreen::m_worldInfo
    IL_01cc:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_01d1:  box        Game.GameMode
    IL_01d6:  ldstr      ".Description"
    IL_01db:  call       string [System.Runtime]System.String::Concat(object,
                                                                      object,
                                                                      object)
    IL_01e0:  call       string Game.StringsManager::GetString(string)
    IL_01e5:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_01ea:  ldarg.0
    IL_01eb:  ldfld      class Game.ButtonWidget Game.ModifyWorldScreen::m_worldOptionsButton
    IL_01f0:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_01f5:  brfalse.s  IL_0208

    IL_01f7:  ldarg.0
    IL_01f8:  ldftn      instance void Game.ModifyWorldScreen::'<Update>b__14_0'()
    IL_01fe:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0203:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_0208:  ldarg.0
    IL_0209:  ldfld      class Game.ButtonWidget Game.ModifyWorldScreen::m_deleteButton
    IL_020e:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0213:  brfalse.s  IL_0272

    IL_0215:  newobj     instance void Game.ModifyWorldScreen/'<>c__DisplayClass14_0'::.ctor()
    IL_021a:  stloc.s    V_5
    IL_021c:  ldloc.s    V_5
    IL_021e:  ldarg.0
    IL_021f:  stfld      class Game.ModifyWorldScreen Game.ModifyWorldScreen/'<>c__DisplayClass14_0'::'<>4__this'
    IL_0224:  ldloc.s    V_5
    IL_0226:  ldnull
    IL_0227:  stfld      class Game.MessageDialog Game.ModifyWorldScreen/'<>c__DisplayClass14_0'::dialog
    IL_022c:  ldloc.s    V_5
    IL_022e:  ldstr      "Are you sure\?"
    IL_0233:  ldstr      "The world will be irrecoverably deleted."
    IL_0238:  ldstr      "Yes"
    IL_023d:  ldstr      "No"
    IL_0242:  ldloc.s    V_5
    IL_0244:  ldftn      instance void Game.ModifyWorldScreen/'<>c__DisplayClass14_0'::'<Update>b__1'(valuetype Game.MessageDialogButton)
    IL_024a:  newobj     instance void class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>::.ctor(object,
                                                                                                                        native int)
    IL_024f:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_0254:  stfld      class Game.MessageDialog Game.ModifyWorldScreen/'<>c__DisplayClass14_0'::dialog
    IL_0259:  ldloc.s    V_5
    IL_025b:  ldfld      class Game.MessageDialog Game.ModifyWorldScreen/'<>c__DisplayClass14_0'::dialog
    IL_0260:  ldc.i4.0
    IL_0261:  callvirt   instance void Game.MessageDialog::set_AutoHide(bool)
    IL_0266:  ldloc.s    V_5
    IL_0268:  ldfld      class Game.MessageDialog Game.ModifyWorldScreen/'<>c__DisplayClass14_0'::dialog
    IL_026d:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_0272:  ldarg.0
    IL_0273:  ldfld      class Game.ButtonWidget Game.ModifyWorldScreen::m_uploadButton
    IL_0278:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_027d:  ldloc.1
    IL_027e:  and
    IL_027f:  brfalse.s  IL_029f

    IL_0281:  ldloc.0
    IL_0282:  brtrue.s   IL_029f

    IL_0284:  ldstr      "Select Upload Destination"
    IL_0289:  ldarg.0
    IL_028a:  ldftn      instance void Game.ModifyWorldScreen::'<Update>b__14_3'(class Game.IExternalContentProvider)
    IL_0290:  newobj     instance void class [System.Runtime]System.Action`1<class Game.IExternalContentProvider>::.ctor(object,
                                                                                                                         native int)
    IL_0295:  newobj     instance void Game.SelectExternalContentProviderDialog::.ctor(string,
                                                                                       class [System.Runtime]System.Action`1<class Game.IExternalContentProvider>)
    IL_029a:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_029f:  ldarg.0
    IL_02a0:  ldfld      class Game.ButtonWidget Game.ModifyWorldScreen::m_applyButton
    IL_02a5:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_02aa:  ldloc.1
    IL_02ab:  and
    IL_02ac:  ldloc.0
    IL_02ad:  and
    IL_02ae:  brfalse.s  IL_0305

    IL_02b0:  ldarg.0
    IL_02b1:  ldfld      class Game.WorldInfo Game.ModifyWorldScreen::m_worldInfo
    IL_02b6:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_02bb:  brfalse.s  IL_02d6

    IL_02bd:  ldarg.0
    IL_02be:  ldfld      class Game.WorldInfo Game.ModifyWorldScreen::m_worldInfo
    IL_02c3:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_02c8:  ldc.i4.4
    IL_02c9:  beq.s      IL_02d6

    IL_02cb:  ldarg.0
    IL_02cc:  ldfld      class Game.WorldInfo Game.ModifyWorldScreen::m_worldInfo
    IL_02d1:  callvirt   instance void Game.WorldInfo::ResetOptionsForNonCreativeMode()
    IL_02d6:  ldarg.0
    IL_02d7:  ldfld      class Game.WorldInfo Game.ModifyWorldScreen::m_worldInfo
    IL_02dc:  call       void Game.WorldsManager::ChangeWorld(class Game.WorldInfo)
    IL_02e1:  ldsfld     class [System.Runtime]System.Action Game.ModifyWorldScreen/'<>c'::'<>9__14_4'
    IL_02e6:  dup
    IL_02e7:  brtrue.s   IL_0300

    IL_02e9:  pop
    IL_02ea:  ldsfld     class Game.ModifyWorldScreen/'<>c' Game.ModifyWorldScreen/'<>c'::'<>9'
    IL_02ef:  ldftn      instance void Game.ModifyWorldScreen/'<>c'::'<Update>b__14_4'()
    IL_02f5:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_02fa:  dup
    IL_02fb:  stsfld     class [System.Runtime]System.Action Game.ModifyWorldScreen/'<>c'::'<>9__14_4'
    IL_0300:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_0305:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_030a:  ldfld      bool Game.InputState::Back
    IL_030f:  brtrue.s   IL_032e

    IL_0311:  ldarg.0
    IL_0312:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0317:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_031c:  ldstr      "TopBar.Back"
    IL_0321:  ldc.i4.1
    IL_0322:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0327:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_032c:  brfalse.s  IL_0393

    IL_032e:  ldloc.0
    IL_032f:  brfalse.s  IL_036f

    IL_0331:  ldstr      "Abandon changes\?"
    IL_0336:  ldstr      "You changed some of the world properties, but they"
    + " were not applied yet."
    IL_033b:  ldstr      "Yes"
    IL_0340:  ldstr      "No"
    IL_0345:  ldsfld     class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton> Game.ModifyWorldScreen/'<>c'::'<>9__14_5'
    IL_034a:  dup
    IL_034b:  brtrue.s   IL_0364

    IL_034d:  pop
    IL_034e:  ldsfld     class Game.ModifyWorldScreen/'<>c' Game.ModifyWorldScreen/'<>c'::'<>9'
    IL_0353:  ldftn      instance void Game.ModifyWorldScreen/'<>c'::'<Update>b__14_5'(valuetype Game.MessageDialogButton)
    IL_0359:  newobj     instance void class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>::.ctor(object,
                                                                                                                        native int)
    IL_035e:  dup
    IL_035f:  stsfld     class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton> Game.ModifyWorldScreen/'<>c'::'<>9__14_5'
    IL_0364:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_0369:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_036e:  ret

    IL_036f:  ldsfld     class [System.Runtime]System.Action Game.ModifyWorldScreen/'<>c'::'<>9__14_7'
    IL_0374:  dup
    IL_0375:  brtrue.s   IL_038e

    IL_0377:  pop
    IL_0378:  ldsfld     class Game.ModifyWorldScreen/'<>c' Game.ModifyWorldScreen/'<>c'::'<>9'
    IL_037d:  ldftn      instance void Game.ModifyWorldScreen/'<>c'::'<Update>b__14_7'()
    IL_0383:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0388:  dup
    IL_0389:  stsfld     class [System.Runtime]System.Action Game.ModifyWorldScreen/'<>c'::'<>9__14_7'
    IL_038e:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_0393:  ret
  } // end of method ModifyWorldScreen::Update

  .method private hidebysig instance void 
          UploadWorld(class Game.IExternalContentProvider provider) cil managed
  {
    // 代码大小       103 (0x67)
    .maxstack  6
    .locals init (class Game.ModifyWorldScreen/'<>c__DisplayClass15_0' V_0)
    IL_0000:  newobj     instance void Game.ModifyWorldScreen/'<>c__DisplayClass15_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class Game.ModifyWorldScreen Game.ModifyWorldScreen/'<>c__DisplayClass15_0'::'<>4__this'
    IL_000d:  ldloc.0
    IL_000e:  ldarg.1
    IL_000f:  stfld      class Game.IExternalContentProvider Game.ModifyWorldScreen/'<>c__DisplayClass15_0'::provider
    IL_0014:  ldloc.0
    IL_0015:  ldstr      "{0}.scworld"
    IL_001a:  ldc.i4.1
    IL_001b:  newarr     [System.Runtime]System.Object
    IL_0020:  dup
    IL_0021:  ldc.i4.0
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class Game.WorldInfo Game.ModifyWorldScreen::m_worldInfo
    IL_0028:  ldfld      string Game.WorldInfo::Name
    IL_002d:  stelem.ref
    IL_002e:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0033:  stfld      string Game.ModifyWorldScreen/'<>c__DisplayClass15_0'::fileName
    IL_0038:  ldloc.0
    IL_0039:  ldstr      "Compressing World"
    IL_003e:  ldc.i4.0
    IL_003f:  newobj     instance void Game.CancellableBusyDialog::.ctor(string,
                                                                         bool)
    IL_0044:  stfld      class Game.CancellableBusyDialog Game.ModifyWorldScreen/'<>c__DisplayClass15_0'::busyDialog
    IL_0049:  ldloc.0
    IL_004a:  ldfld      class Game.CancellableBusyDialog Game.ModifyWorldScreen/'<>c__DisplayClass15_0'::busyDialog
    IL_004f:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_0054:  ldloc.0
    IL_0055:  ldftn      instance void Game.ModifyWorldScreen/'<>c__DisplayClass15_0'::'<UploadWorld>b__0'()
    IL_005b:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0060:  call       class [System.Threading.Tasks]System.Threading.Tasks.Task [System.Threading.Tasks]System.Threading.Tasks.Task::Run(class [System.Runtime]System.Action)
    IL_0065:  pop
    IL_0066:  ret
  } // end of method ModifyWorldScreen::UploadWorld

  .method private hidebysig instance void 
          '<.ctor>b__12_0'(class Game.TextBoxWidget '<obj>') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.WorldInfo Game.ModifyWorldScreen::m_worldInfo
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.TextBoxWidget Game.ModifyWorldScreen::m_nameTextBox
    IL_000c:  callvirt   instance string Game.TextBoxWidget::get_Text()
    IL_0011:  stfld      string Game.WorldInfo::Name
    IL_0016:  ret
  } // end of method ModifyWorldScreen::'<.ctor>b__12_0'

  .method private hidebysig instance void 
          '<Update>b__14_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       35 (0x23)
    .maxstack  8
    IL_0000:  ldstr      "WorldOptions"
    IL_0005:  ldc.i4.2
    IL_0006:  newarr     [System.Runtime]System.Object
    IL_000b:  dup
    IL_000c:  ldc.i4.0
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.WorldInfo Game.ModifyWorldScreen::m_worldInfo
    IL_0013:  stelem.ref
    IL_0014:  dup
    IL_0015:  ldc.i4.1
    IL_0016:  ldc.i4.1
    IL_0017:  box        [System.Runtime]System.Boolean
    IL_001c:  stelem.ref
    IL_001d:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_0022:  ret
  } // end of method ModifyWorldScreen::'<Update>b__14_0'

  .method private hidebysig instance void 
          '<Update>b__14_3'(class Game.IExternalContentProvider provider) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  5
    .locals init (class [System.Runtime]System.Exception V_0)
    .try
    {
      IL_0000:  ldarg.0
      IL_0001:  ldarg.1
      IL_0002:  call       instance void Game.ModifyWorldScreen::UploadWorld(class Game.IExternalContentProvider)
      IL_0007:  leave.s    IL_0028

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0009:  stloc.0
      IL_000a:  ldstr      "Error"
      IL_000f:  ldloc.0
      IL_0010:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_0015:  ldstr      "OK"
      IL_001a:  ldnull
      IL_001b:  ldnull
      IL_001c:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_0021:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
      IL_0026:  leave.s    IL_0028

    }  // end handler
    IL_0028:  ret
  } // end of method ModifyWorldScreen::'<Update>b__14_3'

} // end of class Game.ModifyWorldScreen