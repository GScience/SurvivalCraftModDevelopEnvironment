.class public auto ansi beforefieldinit Game.ManageContentScreen
       extends Game.Screen
{
  .class auto ansi nested private beforefieldinit ListItem
         extends [System.Runtime]System.Object
  {
    .field public valuetype Game.ExternalContentType Type
    .field public string Name
    .field public string DisplayName
    .field public valuetype [System.Runtime]System.DateTime CreationTime
    .field public int32 UseCount
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method ListItem::.ctor

  } // end of class ListItem

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass12_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class Game.ManageContentScreen/ListItem selectedItem
    .field public class Game.ManageContentScreen '<>4__this'
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
            '<Update>b__0'(valuetype Game.MessageDialogButton button) cil managed
    {
      // 代码大小       105 (0x69)
      .maxstack  2
      IL_0000:  ldarg.1
      IL_0001:  brtrue.s   IL_0068

      IL_0003:  ldarg.0
      IL_0004:  ldfld      class Game.ManageContentScreen/ListItem Game.ManageContentScreen/'<>c__DisplayClass12_0'::selectedItem
      IL_0009:  ldfld      valuetype Game.ExternalContentType Game.ManageContentScreen/ListItem::Type
      IL_000e:  ldc.i4.3
      IL_000f:  bne.un.s   IL_0021

      IL_0011:  ldarg.0
      IL_0012:  ldfld      class Game.ManageContentScreen/ListItem Game.ManageContentScreen/'<>c__DisplayClass12_0'::selectedItem
      IL_0017:  ldfld      string Game.ManageContentScreen/ListItem::Name
      IL_001c:  call       void Game.BlocksTexturesManager::DeleteBlocksTexture(string)
      IL_0021:  ldarg.0
      IL_0022:  ldfld      class Game.ManageContentScreen/ListItem Game.ManageContentScreen/'<>c__DisplayClass12_0'::selectedItem
      IL_0027:  ldfld      valuetype Game.ExternalContentType Game.ManageContentScreen/ListItem::Type
      IL_002c:  ldc.i4.4
      IL_002d:  bne.un.s   IL_003f

      IL_002f:  ldarg.0
      IL_0030:  ldfld      class Game.ManageContentScreen/ListItem Game.ManageContentScreen/'<>c__DisplayClass12_0'::selectedItem
      IL_0035:  ldfld      string Game.ManageContentScreen/ListItem::Name
      IL_003a:  call       void Game.CharacterSkinsManager::DeleteCharacterSkin(string)
      IL_003f:  ldarg.0
      IL_0040:  ldfld      class Game.ManageContentScreen/ListItem Game.ManageContentScreen/'<>c__DisplayClass12_0'::selectedItem
      IL_0045:  ldfld      valuetype Game.ExternalContentType Game.ManageContentScreen/ListItem::Type
      IL_004a:  ldc.i4.5
      IL_004b:  bne.un.s   IL_005d

      IL_004d:  ldarg.0
      IL_004e:  ldfld      class Game.ManageContentScreen/ListItem Game.ManageContentScreen/'<>c__DisplayClass12_0'::selectedItem
      IL_0053:  ldfld      string Game.ManageContentScreen/ListItem::Name
      IL_0058:  call       void Game.FurniturePacksManager::DeleteFurniturePack(string)
      IL_005d:  ldarg.0
      IL_005e:  ldfld      class Game.ManageContentScreen Game.ManageContentScreen/'<>c__DisplayClass12_0'::'<>4__this'
      IL_0063:  call       instance void Game.ManageContentScreen::UpdateList()
      IL_0068:  ret
    } // end of method '<>c__DisplayClass12_0'::'<Update>b__0'

    .method assembly hidebysig instance void 
            '<Update>b__1'(class Game.IExternalContentProvider provider) cil managed
    {
      // 代码大小       19 (0x13)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.ManageContentScreen Game.ManageContentScreen/'<>c__DisplayClass12_0'::'<>4__this'
      IL_0006:  ldarg.0
      IL_0007:  ldfld      class Game.ManageContentScreen/ListItem Game.ManageContentScreen/'<>c__DisplayClass12_0'::selectedItem
      IL_000c:  ldarg.1
      IL_000d:  call       instance void Game.ManageContentScreen::UploadItem(class Game.ManageContentScreen/ListItem,
                                                                              class Game.IExternalContentProvider)
      IL_0012:  ret
    } // end of method '<>c__DisplayClass12_0'::'<Update>b__1'

  } // end of class '<>c__DisplayClass12_0'

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.ManageContentScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<object,string> '<>9__12_2'
    .field public static class [System.Runtime]System.Action '<>9__12_4'
    .field public static class [System.Runtime]System.Comparison`1<class Game.ManageContentScreen/ListItem> '<>9__13_2'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.ManageContentScreen/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.ManageContentScreen/'<>c' Game.ManageContentScreen/'<>c'::'<>9'
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

    .method assembly hidebysig instance string 
            '<Update>b__12_2'(object item) cil managed
    {
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  unbox.any  Game.ExternalContentType
      IL_0006:  call       string Game.ManageContentScreen::GetFilterDisplayName(valuetype Game.ExternalContentType)
      IL_000b:  ret
    } // end of method '<>c'::'<Update>b__12_2'

    .method assembly hidebysig instance void 
            '<Update>b__12_4'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(class Game.Screen,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__12_4'

    .method assembly hidebysig instance int32 
            '<UpdateList>b__13_2'(class Game.ManageContentScreen/ListItem o1,
                                  class Game.ManageContentScreen/ListItem o2) cil managed
    {
      // 代码大小       74 (0x4a)
      .maxstack  2
      IL_0000:  ldarg.1
      IL_0001:  ldfld      string Game.ManageContentScreen/ListItem::Name
      IL_0006:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
      IL_000b:  brfalse.s  IL_001c

      IL_000d:  ldarg.2
      IL_000e:  ldfld      string Game.ManageContentScreen/ListItem::Name
      IL_0013:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
      IL_0018:  brtrue.s   IL_001c

      IL_001a:  ldc.i4.m1
      IL_001b:  ret

      IL_001c:  ldarg.1
      IL_001d:  ldfld      string Game.ManageContentScreen/ListItem::Name
      IL_0022:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
      IL_0027:  brtrue.s   IL_0038

      IL_0029:  ldarg.2
      IL_002a:  ldfld      string Game.ManageContentScreen/ListItem::Name
      IL_002f:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
      IL_0034:  brfalse.s  IL_0038

      IL_0036:  ldc.i4.1
      IL_0037:  ret

      IL_0038:  ldarg.1
      IL_0039:  ldfld      string Game.ManageContentScreen/ListItem::DisplayName
      IL_003e:  ldarg.2
      IL_003f:  ldfld      string Game.ManageContentScreen/ListItem::DisplayName
      IL_0044:  call       int32 [System.Runtime]System.String::Compare(string,
                                                                        string)
      IL_0049:  ret
    } // end of method '<>c'::'<UpdateList>b__13_2'

  } // end of class '<>c'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass13_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public string name
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass13_0'::.ctor

    .method assembly hidebysig instance bool 
            '<UpdateList>b__0'(class Game.WorldInfo wi) cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      string Game.WorldInfo::BlocksTextureName
      IL_0006:  ldarg.0
      IL_0007:  ldfld      string Game.ManageContentScreen/'<>c__DisplayClass13_0'::name
      IL_000c:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0011:  ret
    } // end of method '<>c__DisplayClass13_0'::'<UpdateList>b__0'

  } // end of class '<>c__DisplayClass13_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass13_1'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public string name
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass13_1'::.ctor

    .method assembly hidebysig instance bool 
            '<UpdateList>b__1'(class Game.WorldInfo wi) cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      string Game.WorldInfo::CharacterSkinName
      IL_0006:  ldarg.0
      IL_0007:  ldfld      string Game.ManageContentScreen/'<>c__DisplayClass13_1'::name
      IL_000c:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0011:  ret
    } // end of method '<>c__DisplayClass13_1'::'<UpdateList>b__1'

  } // end of class '<>c__DisplayClass13_1'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass15_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class Game.CancellableBusyDialog busyDialog
    .field public class [System.IO]System.IO.Stream 'stream'
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
            '<UploadItem>b__0'() cil managed
    {
      // 代码大小       23 (0x17)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CancellableBusyDialog Game.ManageContentScreen/'<>c__DisplayClass15_0'::busyDialog
      IL_0006:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
      IL_000b:  ldarg.0
      IL_000c:  ldflda     class [System.IO]System.IO.Stream Game.ManageContentScreen/'<>c__DisplayClass15_0'::'stream'
      IL_0011:  call       void [Engine]Engine.Utilities::Dispose<class [System.IO]System.IO.Stream>(!!0&)
      IL_0016:  ret
    } // end of method '<>c__DisplayClass15_0'::'<UploadItem>b__0'

    .method assembly hidebysig instance void 
            '<UploadItem>b__1'(class [System.Runtime]System.Exception 'error') cil managed
    {
      // 代码大小       51 (0x33)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CancellableBusyDialog Game.ManageContentScreen/'<>c__DisplayClass15_0'::busyDialog
      IL_0006:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
      IL_000b:  ldstr      "Error"
      IL_0010:  ldarg.1
      IL_0011:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_0016:  ldstr      "OK"
      IL_001b:  ldnull
      IL_001c:  ldnull
      IL_001d:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_0022:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
      IL_0027:  ldarg.0
      IL_0028:  ldflda     class [System.IO]System.IO.Stream Game.ManageContentScreen/'<>c__DisplayClass15_0'::'stream'
      IL_002d:  call       void [Engine]Engine.Utilities::Dispose<class [System.IO]System.IO.Stream>(!!0&)
      IL_0032:  ret
    } // end of method '<>c__DisplayClass15_0'::'<UploadItem>b__1'

  } // end of class '<>c__DisplayClass15_0'

  .field private class Game.ListPanelWidget m_contentList
  .field private class Game.ButtonWidget m_deleteButton
  .field private class Game.ButtonWidget m_uploadButton
  .field private class Game.LabelWidget m_filterLabel
  .field private class Game.ButtonWidget m_changeFilterButton
  .field private class Game.BlocksTexturesCache m_blocksTexturesCache
  .field private class Game.CharacterSkinsCache m_characterSkinsCache
  .field private valuetype Game.ExternalContentType m_filter
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       216 (0xd8)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.BlocksTexturesCache::.ctor()
    IL_0006:  stfld      class Game.BlocksTexturesCache Game.ManageContentScreen::m_blocksTexturesCache
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.CharacterSkinsCache::.ctor()
    IL_0011:  stfld      class Game.CharacterSkinsCache Game.ManageContentScreen::m_characterSkinsCache
    IL_0016:  ldarg.0
    IL_0017:  call       instance void Game.Screen::.ctor()
    IL_001c:  ldstr      "Screens/ManageContentScreen"
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
    IL_0040:  ldstr      "ContentList"
    IL_0045:  ldc.i4.1
    IL_0046:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ListPanelWidget>(string,
                                                                                              bool)
    IL_004b:  stfld      class Game.ListPanelWidget Game.ManageContentScreen::m_contentList
    IL_0050:  ldarg.0
    IL_0051:  ldarg.0
    IL_0052:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0057:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_005c:  ldstr      "DeleteButton"
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0067:  stfld      class Game.ButtonWidget Game.ManageContentScreen::m_deleteButton
    IL_006c:  ldarg.0
    IL_006d:  ldarg.0
    IL_006e:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0073:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0078:  ldstr      "UploadButton"
    IL_007d:  ldc.i4.1
    IL_007e:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0083:  stfld      class Game.ButtonWidget Game.ManageContentScreen::m_uploadButton
    IL_0088:  ldarg.0
    IL_0089:  ldarg.0
    IL_008a:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_008f:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0094:  ldstr      "ChangeFilter"
    IL_0099:  ldc.i4.1
    IL_009a:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_009f:  stfld      class Game.ButtonWidget Game.ManageContentScreen::m_changeFilterButton
    IL_00a4:  ldarg.0
    IL_00a5:  ldarg.0
    IL_00a6:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_00ab:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00b0:  ldstr      "Filter"
    IL_00b5:  ldc.i4.1
    IL_00b6:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_00bb:  stfld      class Game.LabelWidget Game.ManageContentScreen::m_filterLabel
    IL_00c0:  ldarg.0
    IL_00c1:  ldfld      class Game.ListPanelWidget Game.ManageContentScreen::m_contentList
    IL_00c6:  ldarg.0
    IL_00c7:  ldftn      instance class Game.Widget Game.ManageContentScreen::'<.ctor>b__9_0'(object)
    IL_00cd:  newobj     instance void class [System.Runtime]System.Func`2<object,class Game.Widget>::.ctor(object,
                                                                                                            native int)
    IL_00d2:  callvirt   instance void Game.ListPanelWidget::set_ItemWidgetFactory(class [System.Runtime]System.Func`2<object,class Game.Widget>)
    IL_00d7:  ret
  } // end of method ManageContentScreen::.ctor

  .method public hidebysig virtual instance void 
          Enter(object[] parameters) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.ManageContentScreen::UpdateList()
    IL_0006:  ret
  } // end of method ManageContentScreen::Enter

  .method public hidebysig virtual instance void 
          Leave() cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.BlocksTexturesCache Game.ManageContentScreen::m_blocksTexturesCache
    IL_0006:  callvirt   instance void Game.BlocksTexturesCache::Clear()
    IL_000b:  ldarg.0
    IL_000c:  ldfld      class Game.CharacterSkinsCache Game.ManageContentScreen::m_characterSkinsCache
    IL_0011:  callvirt   instance void Game.CharacterSkinsCache::Clear()
    IL_0016:  ret
  } // end of method ManageContentScreen::Leave

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       496 (0x1f0)
    .maxstack  6
    .locals init (class Game.ManageContentScreen/'<>c__DisplayClass12_0' V_0,
             bool V_1,
             string V_2,
             class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ExternalContentType> V_3)
    IL_0000:  newobj     instance void Game.ManageContentScreen/'<>c__DisplayClass12_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class Game.ManageContentScreen Game.ManageContentScreen/'<>c__DisplayClass12_0'::'<>4__this'
    IL_000d:  ldloc.0
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Game.ListPanelWidget Game.ManageContentScreen::m_contentList
    IL_0014:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_0019:  castclass  Game.ManageContentScreen/ListItem
    IL_001e:  stfld      class Game.ManageContentScreen/ListItem Game.ManageContentScreen/'<>c__DisplayClass12_0'::selectedItem
    IL_0023:  ldloc.0
    IL_0024:  ldfld      class Game.ManageContentScreen/ListItem Game.ManageContentScreen/'<>c__DisplayClass12_0'::selectedItem
    IL_0029:  brfalse.s  IL_0040

    IL_002b:  ldloc.0
    IL_002c:  ldfld      class Game.ManageContentScreen/ListItem Game.ManageContentScreen/'<>c__DisplayClass12_0'::selectedItem
    IL_0031:  ldfld      string Game.ManageContentScreen/ListItem::Name
    IL_0036:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_003b:  ldc.i4.0
    IL_003c:  ceq
    IL_003e:  br.s       IL_0041

    IL_0040:  ldc.i4.0
    IL_0041:  stloc.1
    IL_0042:  ldarg.0
    IL_0043:  ldfld      class Game.ButtonWidget Game.ManageContentScreen::m_deleteButton
    IL_0048:  ldloc.1
    IL_0049:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_004e:  ldarg.0
    IL_004f:  ldfld      class Game.ButtonWidget Game.ManageContentScreen::m_uploadButton
    IL_0054:  ldloc.1
    IL_0055:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_005a:  ldarg.0
    IL_005b:  ldfld      class Game.LabelWidget Game.ManageContentScreen::m_filterLabel
    IL_0060:  ldarg.0
    IL_0061:  ldfld      valuetype Game.ExternalContentType Game.ManageContentScreen::m_filter
    IL_0066:  call       string Game.ManageContentScreen::GetFilterDisplayName(valuetype Game.ExternalContentType)
    IL_006b:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0070:  ldarg.0
    IL_0071:  ldfld      class Game.ButtonWidget Game.ManageContentScreen::m_deleteButton
    IL_0076:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_007b:  ldloc.1
    IL_007c:  and
    IL_007d:  brfalse    IL_0109

    IL_0082:  ldloc.0
    IL_0083:  ldfld      class Game.ManageContentScreen/ListItem Game.ManageContentScreen/'<>c__DisplayClass12_0'::selectedItem
    IL_0088:  ldfld      int32 Game.ManageContentScreen/ListItem::UseCount
    IL_008d:  ldc.i4.0
    IL_008e:  ble.s      IL_00c4

    IL_0090:  ldstr      "\"{0}\" will be irrecoverably deleted.\n(used by {1} "
    + "world(s), they will revert to using the default)"
    IL_0095:  ldc.i4.2
    IL_0096:  newarr     [System.Runtime]System.Object
    IL_009b:  dup
    IL_009c:  ldc.i4.0
    IL_009d:  ldloc.0
    IL_009e:  ldfld      class Game.ManageContentScreen/ListItem Game.ManageContentScreen/'<>c__DisplayClass12_0'::selectedItem
    IL_00a3:  ldfld      string Game.ManageContentScreen/ListItem::DisplayName
    IL_00a8:  stelem.ref
    IL_00a9:  dup
    IL_00aa:  ldc.i4.1
    IL_00ab:  ldloc.0
    IL_00ac:  ldfld      class Game.ManageContentScreen/ListItem Game.ManageContentScreen/'<>c__DisplayClass12_0'::selectedItem
    IL_00b1:  ldfld      int32 Game.ManageContentScreen/ListItem::UseCount
    IL_00b6:  box        [System.Runtime]System.Int32
    IL_00bb:  stelem.ref
    IL_00bc:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00c1:  stloc.2
    IL_00c2:  br.s       IL_00e3

    IL_00c4:  ldstr      "\"{0}\" will be irrecoverably deleted."
    IL_00c9:  ldc.i4.1
    IL_00ca:  newarr     [System.Runtime]System.Object
    IL_00cf:  dup
    IL_00d0:  ldc.i4.0
    IL_00d1:  ldloc.0
    IL_00d2:  ldfld      class Game.ManageContentScreen/ListItem Game.ManageContentScreen/'<>c__DisplayClass12_0'::selectedItem
    IL_00d7:  ldfld      string Game.ManageContentScreen/ListItem::DisplayName
    IL_00dc:  stelem.ref
    IL_00dd:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00e2:  stloc.2
    IL_00e3:  ldstr      "Are you sure\?"
    IL_00e8:  ldloc.2
    IL_00e9:  ldstr      "Yes"
    IL_00ee:  ldstr      "No"
    IL_00f3:  ldloc.0
    IL_00f4:  ldftn      instance void Game.ManageContentScreen/'<>c__DisplayClass12_0'::'<Update>b__0'(valuetype Game.MessageDialogButton)
    IL_00fa:  newobj     instance void class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>::.ctor(object,
                                                                                                                        native int)
    IL_00ff:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_0104:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_0109:  ldarg.0
    IL_010a:  ldfld      class Game.ButtonWidget Game.ManageContentScreen::m_uploadButton
    IL_010f:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0114:  ldloc.1
    IL_0115:  and
    IL_0116:  brfalse.s  IL_0133

    IL_0118:  ldstr      "Select Upload Destination"
    IL_011d:  ldloc.0
    IL_011e:  ldftn      instance void Game.ManageContentScreen/'<>c__DisplayClass12_0'::'<Update>b__1'(class Game.IExternalContentProvider)
    IL_0124:  newobj     instance void class [System.Runtime]System.Action`1<class Game.IExternalContentProvider>::.ctor(object,
                                                                                                                         native int)
    IL_0129:  newobj     instance void Game.SelectExternalContentProviderDialog::.ctor(string,
                                                                                       class [System.Runtime]System.Action`1<class Game.IExternalContentProvider>)
    IL_012e:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_0133:  ldarg.0
    IL_0134:  ldfld      class Game.ButtonWidget Game.ManageContentScreen::m_changeFilterButton
    IL_0139:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_013e:  brfalse.s  IL_01a2

    IL_0140:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ExternalContentType>::.ctor()
    IL_0145:  stloc.3
    IL_0146:  ldloc.3
    IL_0147:  ldc.i4.0
    IL_0148:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ExternalContentType>::Add(!0)
    IL_014d:  ldloc.3
    IL_014e:  ldc.i4.3
    IL_014f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ExternalContentType>::Add(!0)
    IL_0154:  ldloc.3
    IL_0155:  ldc.i4.4
    IL_0156:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ExternalContentType>::Add(!0)
    IL_015b:  ldloc.3
    IL_015c:  ldc.i4.5
    IL_015d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ExternalContentType>::Add(!0)
    IL_0162:  ldstr      "Select Items Filter"
    IL_0167:  ldloc.3
    IL_0168:  ldc.r4     60.
    IL_016d:  ldsfld     class [System.Runtime]System.Func`2<object,string> Game.ManageContentScreen/'<>c'::'<>9__12_2'
    IL_0172:  dup
    IL_0173:  brtrue.s   IL_018c

    IL_0175:  pop
    IL_0176:  ldsfld     class Game.ManageContentScreen/'<>c' Game.ManageContentScreen/'<>c'::'<>9'
    IL_017b:  ldftn      instance string Game.ManageContentScreen/'<>c'::'<Update>b__12_2'(object)
    IL_0181:  newobj     instance void class [System.Runtime]System.Func`2<object,string>::.ctor(object,
                                                                                                 native int)
    IL_0186:  dup
    IL_0187:  stsfld     class [System.Runtime]System.Func`2<object,string> Game.ManageContentScreen/'<>c'::'<>9__12_2'
    IL_018c:  ldarg.0
    IL_018d:  ldftn      instance void Game.ManageContentScreen::'<Update>b__12_3'(object)
    IL_0193:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_0198:  newobj     instance void Game.ListSelectionDialog::.ctor(string,
                                                                       class [System.Runtime]System.Collections.IEnumerable,
                                                                       float32,
                                                                       class [System.Runtime]System.Func`2<object,string>,
                                                                       class [System.Runtime]System.Action`1<object>)
    IL_019d:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_01a2:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_01a7:  ldfld      bool Game.InputState::Back
    IL_01ac:  brtrue.s   IL_01cb

    IL_01ae:  ldarg.0
    IL_01af:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_01b4:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_01b9:  ldstr      "TopBar.Back"
    IL_01be:  ldc.i4.1
    IL_01bf:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_01c4:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_01c9:  brfalse.s  IL_01ef

    IL_01cb:  ldsfld     class [System.Runtime]System.Action Game.ManageContentScreen/'<>c'::'<>9__12_4'
    IL_01d0:  dup
    IL_01d1:  brtrue.s   IL_01ea

    IL_01d3:  pop
    IL_01d4:  ldsfld     class Game.ManageContentScreen/'<>c' Game.ManageContentScreen/'<>c'::'<>9'
    IL_01d9:  ldftn      instance void Game.ManageContentScreen/'<>c'::'<Update>b__12_4'()
    IL_01df:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01e4:  dup
    IL_01e5:  stsfld     class [System.Runtime]System.Action Game.ManageContentScreen/'<>c'::'<>9__12_4'
    IL_01ea:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_01ef:  ret
  } // end of method ManageContentScreen::Update

  .method private hidebysig instance void 
          UpdateList() cil managed
  {
    // 代码大小       614 (0x266)
    .maxstack  6
    .locals init (class [System.Collections]System.Collections.Generic.List`1<class Game.ManageContentScreen/ListItem> V_0,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<string> V_1,
             valuetype [Engine]Engine.ReadOnlyList`1<string> V_2,
             class Game.ManageContentScreen/'<>c__DisplayClass13_0' V_3,
             class Game.ManageContentScreen/'<>c__DisplayClass13_1' V_4,
             string V_5,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ManageContentScreen/ListItem> V_6,
             class Game.ManageContentScreen/ListItem V_7)
    IL_0000:  call       void Game.WorldsManager::UpdateWorldsList()
    IL_0005:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ManageContentScreen/ListItem>::.ctor()
    IL_000a:  stloc.0
    IL_000b:  ldarg.0
    IL_000c:  ldfld      valuetype Game.ExternalContentType Game.ManageContentScreen::m_filter
    IL_0011:  ldc.i4.3
    IL_0012:  beq.s      IL_001f

    IL_0014:  ldarg.0
    IL_0015:  ldfld      valuetype Game.ExternalContentType Game.ManageContentScreen::m_filter
    IL_001a:  brtrue     IL_00c1

    IL_001f:  call       void Game.BlocksTexturesManager::UpdateBlocksTexturesList()
    IL_0024:  call       valuetype [Engine]Engine.ReadOnlyList`1<string> Game.BlocksTexturesManager::get_BlockTexturesNames()
    IL_0029:  stloc.2
    IL_002a:  ldloca.s   V_2
    IL_002c:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<string>::GetEnumerator()
    IL_0031:  stloc.1
    .try
    {
      IL_0032:  br.s       IL_00a8

      IL_0034:  newobj     instance void Game.ManageContentScreen/'<>c__DisplayClass13_0'::.ctor()
      IL_0039:  stloc.3
      IL_003a:  ldloc.3
      IL_003b:  ldloca.s   V_1
      IL_003d:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<string>::get_Current()
      IL_0042:  stfld      string Game.ManageContentScreen/'<>c__DisplayClass13_0'::name
      IL_0047:  ldloc.0
      IL_0048:  newobj     instance void Game.ManageContentScreen/ListItem::.ctor()
      IL_004d:  dup
      IL_004e:  ldloc.3
      IL_004f:  ldfld      string Game.ManageContentScreen/'<>c__DisplayClass13_0'::name
      IL_0054:  stfld      string Game.ManageContentScreen/ListItem::Name
      IL_0059:  dup
      IL_005a:  ldc.i4.3
      IL_005b:  stfld      valuetype Game.ExternalContentType Game.ManageContentScreen/ListItem::Type
      IL_0060:  dup
      IL_0061:  ldloc.3
      IL_0062:  ldfld      string Game.ManageContentScreen/'<>c__DisplayClass13_0'::name
      IL_0067:  call       string Game.BlocksTexturesManager::GetDisplayName(string)
      IL_006c:  stfld      string Game.ManageContentScreen/ListItem::DisplayName
      IL_0071:  dup
      IL_0072:  ldloc.3
      IL_0073:  ldfld      string Game.ManageContentScreen/'<>c__DisplayClass13_0'::name
      IL_0078:  call       valuetype [System.Runtime]System.DateTime Game.BlocksTexturesManager::GetCreationDate(string)
      IL_007d:  stfld      valuetype [System.Runtime]System.DateTime Game.ManageContentScreen/ListItem::CreationTime
      IL_0082:  dup
      IL_0083:  call       valuetype [Engine]Engine.ReadOnlyList`1<class Game.WorldInfo> Game.WorldsManager::get_WorldInfos()
      IL_0088:  box        valuetype [Engine]Engine.ReadOnlyList`1<class Game.WorldInfo>
      IL_008d:  ldloc.3
      IL_008e:  ldftn      instance bool Game.ManageContentScreen/'<>c__DisplayClass13_0'::'<UpdateList>b__0'(class Game.WorldInfo)
      IL_0094:  newobj     instance void class [System.Runtime]System.Func`2<class Game.WorldInfo,bool>::.ctor(object,
                                                                                                               native int)
      IL_0099:  call       int32 [System.Linq]System.Linq.Enumerable::Count<class Game.WorldInfo>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                  class [System.Runtime]System.Func`2<!!0,bool>)
      IL_009e:  stfld      int32 Game.ManageContentScreen/ListItem::UseCount
      IL_00a3:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ManageContentScreen/ListItem>::Add(!0)
      IL_00a8:  ldloca.s   V_1
      IL_00aa:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<string>::MoveNext()
      IL_00af:  brtrue.s   IL_0034

      IL_00b1:  leave.s    IL_00c1

    }  // end .try
    finally
    {
      IL_00b3:  ldloca.s   V_1
      IL_00b5:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<string>
      IL_00bb:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00c0:  endfinally
    }  // end handler
    IL_00c1:  ldarg.0
    IL_00c2:  ldfld      valuetype Game.ExternalContentType Game.ManageContentScreen::m_filter
    IL_00c7:  ldc.i4.4
    IL_00c8:  beq.s      IL_00d5

    IL_00ca:  ldarg.0
    IL_00cb:  ldfld      valuetype Game.ExternalContentType Game.ManageContentScreen::m_filter
    IL_00d0:  brtrue     IL_0180

    IL_00d5:  call       void Game.CharacterSkinsManager::UpdateCharacterSkinsList()
    IL_00da:  call       valuetype [Engine]Engine.ReadOnlyList`1<string> Game.CharacterSkinsManager::get_CharacterSkinsNames()
    IL_00df:  stloc.2
    IL_00e0:  ldloca.s   V_2
    IL_00e2:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<string>::GetEnumerator()
    IL_00e7:  stloc.1
    .try
    {
      IL_00e8:  br.s       IL_0164

      IL_00ea:  newobj     instance void Game.ManageContentScreen/'<>c__DisplayClass13_1'::.ctor()
      IL_00ef:  stloc.s    V_4
      IL_00f1:  ldloc.s    V_4
      IL_00f3:  ldloca.s   V_1
      IL_00f5:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<string>::get_Current()
      IL_00fa:  stfld      string Game.ManageContentScreen/'<>c__DisplayClass13_1'::name
      IL_00ff:  ldloc.0
      IL_0100:  newobj     instance void Game.ManageContentScreen/ListItem::.ctor()
      IL_0105:  dup
      IL_0106:  ldloc.s    V_4
      IL_0108:  ldfld      string Game.ManageContentScreen/'<>c__DisplayClass13_1'::name
      IL_010d:  stfld      string Game.ManageContentScreen/ListItem::Name
      IL_0112:  dup
      IL_0113:  ldc.i4.4
      IL_0114:  stfld      valuetype Game.ExternalContentType Game.ManageContentScreen/ListItem::Type
      IL_0119:  dup
      IL_011a:  ldloc.s    V_4
      IL_011c:  ldfld      string Game.ManageContentScreen/'<>c__DisplayClass13_1'::name
      IL_0121:  call       string Game.CharacterSkinsManager::GetDisplayName(string)
      IL_0126:  stfld      string Game.ManageContentScreen/ListItem::DisplayName
      IL_012b:  dup
      IL_012c:  ldloc.s    V_4
      IL_012e:  ldfld      string Game.ManageContentScreen/'<>c__DisplayClass13_1'::name
      IL_0133:  call       valuetype [System.Runtime]System.DateTime Game.CharacterSkinsManager::GetCreationDate(string)
      IL_0138:  stfld      valuetype [System.Runtime]System.DateTime Game.ManageContentScreen/ListItem::CreationTime
      IL_013d:  dup
      IL_013e:  call       valuetype [Engine]Engine.ReadOnlyList`1<class Game.WorldInfo> Game.WorldsManager::get_WorldInfos()
      IL_0143:  box        valuetype [Engine]Engine.ReadOnlyList`1<class Game.WorldInfo>
      IL_0148:  ldloc.s    V_4
      IL_014a:  ldftn      instance bool Game.ManageContentScreen/'<>c__DisplayClass13_1'::'<UpdateList>b__1'(class Game.WorldInfo)
      IL_0150:  newobj     instance void class [System.Runtime]System.Func`2<class Game.WorldInfo,bool>::.ctor(object,
                                                                                                               native int)
      IL_0155:  call       int32 [System.Linq]System.Linq.Enumerable::Count<class Game.WorldInfo>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                  class [System.Runtime]System.Func`2<!!0,bool>)
      IL_015a:  stfld      int32 Game.ManageContentScreen/ListItem::UseCount
      IL_015f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ManageContentScreen/ListItem>::Add(!0)
      IL_0164:  ldloca.s   V_1
      IL_0166:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<string>::MoveNext()
      IL_016b:  brtrue     IL_00ea

      IL_0170:  leave.s    IL_0180

    }  // end .try
    finally
    {
      IL_0172:  ldloca.s   V_1
      IL_0174:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<string>
      IL_017a:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_017f:  endfinally
    }  // end handler
    IL_0180:  ldarg.0
    IL_0181:  ldfld      valuetype Game.ExternalContentType Game.ManageContentScreen::m_filter
    IL_0186:  ldc.i4.5
    IL_0187:  beq.s      IL_0191

    IL_0189:  ldarg.0
    IL_018a:  ldfld      valuetype Game.ExternalContentType Game.ManageContentScreen::m_filter
    IL_018f:  brtrue.s   IL_01fc

    IL_0191:  call       void Game.FurniturePacksManager::UpdateFurniturePacksList()
    IL_0196:  call       valuetype [Engine]Engine.ReadOnlyList`1<string> Game.FurniturePacksManager::get_FurniturePackNames()
    IL_019b:  stloc.2
    IL_019c:  ldloca.s   V_2
    IL_019e:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<string>::GetEnumerator()
    IL_01a3:  stloc.1
    .try
    {
      IL_01a4:  br.s       IL_01e3

      IL_01a6:  ldloca.s   V_1
      IL_01a8:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<string>::get_Current()
      IL_01ad:  stloc.s    V_5
      IL_01af:  ldloc.0
      IL_01b0:  newobj     instance void Game.ManageContentScreen/ListItem::.ctor()
      IL_01b5:  dup
      IL_01b6:  ldloc.s    V_5
      IL_01b8:  stfld      string Game.ManageContentScreen/ListItem::Name
      IL_01bd:  dup
      IL_01be:  ldc.i4.5
      IL_01bf:  stfld      valuetype Game.ExternalContentType Game.ManageContentScreen/ListItem::Type
      IL_01c4:  dup
      IL_01c5:  ldloc.s    V_5
      IL_01c7:  call       string Game.FurniturePacksManager::GetDisplayName(string)
      IL_01cc:  stfld      string Game.ManageContentScreen/ListItem::DisplayName
      IL_01d1:  dup
      IL_01d2:  ldloc.s    V_5
      IL_01d4:  call       valuetype [System.Runtime]System.DateTime Game.FurniturePacksManager::GetCreationDate(string)
      IL_01d9:  stfld      valuetype [System.Runtime]System.DateTime Game.ManageContentScreen/ListItem::CreationTime
      IL_01de:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ManageContentScreen/ListItem>::Add(!0)
      IL_01e3:  ldloca.s   V_1
      IL_01e5:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<string>::MoveNext()
      IL_01ea:  brtrue.s   IL_01a6

      IL_01ec:  leave.s    IL_01fc

    }  // end .try
    finally
    {
      IL_01ee:  ldloca.s   V_1
      IL_01f0:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<string>
      IL_01f6:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01fb:  endfinally
    }  // end handler
    IL_01fc:  ldloc.0
    IL_01fd:  ldsfld     class [System.Runtime]System.Comparison`1<class Game.ManageContentScreen/ListItem> Game.ManageContentScreen/'<>c'::'<>9__13_2'
    IL_0202:  dup
    IL_0203:  brtrue.s   IL_021c

    IL_0205:  pop
    IL_0206:  ldsfld     class Game.ManageContentScreen/'<>c' Game.ManageContentScreen/'<>c'::'<>9'
    IL_020b:  ldftn      instance int32 Game.ManageContentScreen/'<>c'::'<UpdateList>b__13_2'(class Game.ManageContentScreen/ListItem,
                                                                                              class Game.ManageContentScreen/ListItem)
    IL_0211:  newobj     instance void class [System.Runtime]System.Comparison`1<class Game.ManageContentScreen/ListItem>::.ctor(object,
                                                                                                                                 native int)
    IL_0216:  dup
    IL_0217:  stsfld     class [System.Runtime]System.Comparison`1<class Game.ManageContentScreen/ListItem> Game.ManageContentScreen/'<>c'::'<>9__13_2'
    IL_021c:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ManageContentScreen/ListItem>::Sort(class [System.Runtime]System.Comparison`1<!0>)
    IL_0221:  ldarg.0
    IL_0222:  ldfld      class Game.ListPanelWidget Game.ManageContentScreen::m_contentList
    IL_0227:  callvirt   instance void Game.ListPanelWidget::ClearItems()
    IL_022c:  ldloc.0
    IL_022d:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.ManageContentScreen/ListItem>::GetEnumerator()
    IL_0232:  stloc.s    V_6
    .try
    {
      IL_0234:  br.s       IL_024c

      IL_0236:  ldloca.s   V_6
      IL_0238:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ManageContentScreen/ListItem>::get_Current()
      IL_023d:  stloc.s    V_7
      IL_023f:  ldarg.0
      IL_0240:  ldfld      class Game.ListPanelWidget Game.ManageContentScreen::m_contentList
      IL_0245:  ldloc.s    V_7
      IL_0247:  callvirt   instance void Game.ListPanelWidget::AddItem(object)
      IL_024c:  ldloca.s   V_6
      IL_024e:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ManageContentScreen/ListItem>::MoveNext()
      IL_0253:  brtrue.s   IL_0236

      IL_0255:  leave.s    IL_0265

    }  // end .try
    finally
    {
      IL_0257:  ldloca.s   V_6
      IL_0259:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ManageContentScreen/ListItem>
      IL_025f:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0264:  endfinally
    }  // end handler
    IL_0265:  ret
  } // end of method ManageContentScreen::UpdateList

  .method private hidebysig static string 
          GetFilterDisplayName(valuetype Game.ExternalContentType 'filter') cil managed
  {
    // 代码大小       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  brtrue.s   IL_0009

    IL_0003:  ldstr      "All Items"
    IL_0008:  ret

    IL_0009:  ldarg.0
    IL_000a:  call       string Game.ExternalContentManager::GetEntryTypeDescription(valuetype Game.ExternalContentType)
    IL_000f:  ret
  } // end of method ManageContentScreen::GetFilterDisplayName

  .method private hidebysig instance void 
          UploadItem(class Game.ManageContentScreen/ListItem item,
                     class Game.IExternalContentProvider provider) cil managed
  {
    // 代码大小       245 (0xf5)
    .maxstack  7
    .locals init (class Game.ManageContentScreen/'<>c__DisplayClass15_0' V_0,
             string V_1,
             string V_2,
             class [System.Runtime]System.Exception V_3)
    IL_0000:  newobj     instance void Game.ManageContentScreen/'<>c__DisplayClass15_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldnull
    IL_0008:  stfld      class [System.IO]System.IO.Stream Game.ManageContentScreen/'<>c__DisplayClass15_0'::'stream'
    IL_000d:  ldloc.0
    IL_000e:  ldstr      "Uploading item"
    IL_0013:  ldc.i4.0
    IL_0014:  newobj     instance void Game.CancellableBusyDialog::.ctor(string,
                                                                         bool)
    IL_0019:  stfld      class Game.CancellableBusyDialog Game.ManageContentScreen/'<>c__DisplayClass15_0'::busyDialog
    IL_001e:  ldloc.0
    IL_001f:  ldfld      class Game.CancellableBusyDialog Game.ManageContentScreen/'<>c__DisplayClass15_0'::busyDialog
    IL_0024:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    .try
    {
      IL_0029:  ldarg.1
      IL_002a:  ldfld      valuetype Game.ExternalContentType Game.ManageContentScreen/ListItem::Type
      IL_002f:  ldc.i4.3
      IL_0030:  bne.un.s   IL_0040

      IL_0032:  ldarg.1
      IL_0033:  ldfld      string Game.ManageContentScreen/ListItem::Name
      IL_0038:  call       string Game.BlocksTexturesManager::GetFileName(string)
      IL_003d:  stloc.1
      IL_003e:  br.s       IL_0079

      IL_0040:  ldarg.1
      IL_0041:  ldfld      valuetype Game.ExternalContentType Game.ManageContentScreen/ListItem::Type
      IL_0046:  ldc.i4.4
      IL_0047:  bne.un.s   IL_0057

      IL_0049:  ldarg.1
      IL_004a:  ldfld      string Game.ManageContentScreen/ListItem::Name
      IL_004f:  call       string Game.CharacterSkinsManager::GetFileName(string)
      IL_0054:  stloc.1
      IL_0055:  br.s       IL_0079

      IL_0057:  ldarg.1
      IL_0058:  ldfld      valuetype Game.ExternalContentType Game.ManageContentScreen/ListItem::Type
      IL_005d:  ldc.i4.5
      IL_005e:  bne.un.s   IL_006e

      IL_0060:  ldarg.1
      IL_0061:  ldfld      string Game.ManageContentScreen/ListItem::Name
      IL_0066:  call       string Game.FurniturePacksManager::GetFileName(string)
      IL_006b:  stloc.1
      IL_006c:  br.s       IL_0079

      IL_006e:  ldstr      "Unsupported content type."
      IL_0073:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
      IL_0078:  throw

      IL_0079:  ldloc.0
      IL_007a:  ldloc.1
      IL_007b:  ldc.i4.0
      IL_007c:  call       class [System.IO]System.IO.Stream [Engine]Engine.Storage::OpenFile(string,
                                                                                              valuetype [Engine]Engine.OpenFileMode)
      IL_0081:  stfld      class [System.IO]System.IO.Stream Game.ManageContentScreen/'<>c__DisplayClass15_0'::'stream'
      IL_0086:  ldloc.1
      IL_0087:  call       string [Engine]Engine.Storage::GetFileName(string)
      IL_008c:  stloc.2
      IL_008d:  ldarg.2
      IL_008e:  ldloc.2
      IL_008f:  ldloc.0
      IL_0090:  ldfld      class [System.IO]System.IO.Stream Game.ManageContentScreen/'<>c__DisplayClass15_0'::'stream'
      IL_0095:  ldloc.0
      IL_0096:  ldfld      class Game.CancellableBusyDialog Game.ManageContentScreen/'<>c__DisplayClass15_0'::busyDialog
      IL_009b:  callvirt   instance class Game.CancellableProgress Game.CancellableBusyDialog::get_Progress()
      IL_00a0:  ldloc.0
      IL_00a1:  ldftn      instance void Game.ManageContentScreen/'<>c__DisplayClass15_0'::'<UploadItem>b__0'()
      IL_00a7:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                              native int)
      IL_00ac:  ldloc.0
      IL_00ad:  ldftn      instance void Game.ManageContentScreen/'<>c__DisplayClass15_0'::'<UploadItem>b__1'(class [System.Runtime]System.Exception)
      IL_00b3:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                              native int)
      IL_00b8:  callvirt   instance void Game.IExternalContentProvider::Upload(string,
                                                                               class [System.IO]System.IO.Stream,
                                                                               class Game.CancellableProgress,
                                                                               class [System.Runtime]System.Action,
                                                                               class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
      IL_00bd:  leave.s    IL_00f4

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_00bf:  stloc.3
      IL_00c0:  ldloc.0
      IL_00c1:  ldfld      class Game.CancellableBusyDialog Game.ManageContentScreen/'<>c__DisplayClass15_0'::busyDialog
      IL_00c6:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
      IL_00cb:  ldstr      "Error"
      IL_00d0:  ldloc.3
      IL_00d1:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_00d6:  ldstr      "OK"
      IL_00db:  ldnull
      IL_00dc:  ldnull
      IL_00dd:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_00e2:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
      IL_00e7:  ldloc.0
      IL_00e8:  ldflda     class [System.IO]System.IO.Stream Game.ManageContentScreen/'<>c__DisplayClass15_0'::'stream'
      IL_00ed:  call       void [Engine]Engine.Utilities::Dispose<class [System.IO]System.IO.Stream>(!!0&)
      IL_00f2:  leave.s    IL_00f4

    }  // end handler
    IL_00f4:  ret
  } // end of method ManageContentScreen::UploadItem

  .method private hidebysig instance class Game.Widget 
          '<.ctor>b__9_0'(object obj) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       924 (0x39c)
    .maxstack  7
    .locals init (class Game.ManageContentScreen/ListItem V_0,
             class Game.ContainerWidget V_1,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_2,
             class Game.RectangleWidget V_3,
             class Game.LabelWidget V_4,
             class Game.LabelWidget V_5,
             class [Engine]Engine.Graphics.Texture2D V_6,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_7,
             class Game.ModelWidget V_8,
             class Game.LabelWidget V_9,
             class Game.LabelWidget V_10,
             class [Engine]Engine.Graphics.Texture2D V_11,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_12,
             class Game.LabelWidget V_13,
             class Game.LabelWidget V_14,
             class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> V_15,
             class [System.Runtime]System.Exception V_16)
    IL_0000:  ldarg.1
    IL_0001:  castclass  Game.ManageContentScreen/ListItem
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldfld      valuetype Game.ExternalContentType Game.ManageContentScreen/ListItem::Type
    IL_000d:  ldc.i4.3
    IL_000e:  bne.un     IL_015d

    IL_0013:  ldstr      "Widgets/BlocksTextureItem"
    IL_0018:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_001d:  stloc.2
    IL_001e:  ldarg.0
    IL_001f:  ldloc.2
    IL_0020:  ldnull
    IL_0021:  call       class Game.Widget Game.WidgetsManager::LoadWidget(object,
                                                                           class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                           class Game.ContainerWidget)
    IL_0026:  castclass  Game.ContainerWidget
    IL_002b:  stloc.1
    IL_002c:  ldloc.1
    IL_002d:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0032:  ldstr      "BlocksTextureItem.Icon"
    IL_0037:  ldc.i4.1
    IL_0038:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.RectangleWidget>(string,
                                                                                              bool)
    IL_003d:  stloc.3
    IL_003e:  ldloc.1
    IL_003f:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0044:  ldstr      "BlocksTextureItem.Text"
    IL_0049:  ldc.i4.1
    IL_004a:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_004f:  stloc.s    V_4
    IL_0051:  ldloc.1
    IL_0052:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0057:  ldstr      "BlocksTextureItem.Details"
    IL_005c:  ldc.i4.1
    IL_005d:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_0062:  stloc.s    V_5
    IL_0064:  ldarg.0
    IL_0065:  ldfld      class Game.BlocksTexturesCache Game.ManageContentScreen::m_blocksTexturesCache
    IL_006a:  ldloc.0
    IL_006b:  ldfld      string Game.ManageContentScreen/ListItem::Name
    IL_0070:  callvirt   instance class [Engine]Engine.Graphics.Texture2D Game.BlocksTexturesCache::GetTexture(string)
    IL_0075:  stloc.s    V_6
    IL_0077:  ldloc.0
    IL_0078:  ldfld      string Game.ManageContentScreen/ListItem::Name
    IL_007d:  call       valuetype [System.Runtime]System.DateTime Game.BlocksTexturesManager::GetCreationDate(string)
    IL_0082:  pop
    IL_0083:  ldloc.3
    IL_0084:  ldloc.s    V_6
    IL_0086:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_008b:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::One
    IL_0090:  newobj     instance void Game.Subtexture::.ctor(class [Engine]Engine.Graphics.Texture2D,
                                                              valuetype [Engine]Engine.Vector2,
                                                              valuetype [Engine]Engine.Vector2)
    IL_0095:  callvirt   instance void Game.RectangleWidget::set_Subtexture(class Game.Subtexture)
    IL_009a:  ldloc.s    V_4
    IL_009c:  ldloc.0
    IL_009d:  ldfld      string Game.ManageContentScreen/ListItem::DisplayName
    IL_00a2:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00a7:  ldloc.s    V_5
    IL_00a9:  ldstr      "Blocks Texture, {0}x{1}"
    IL_00ae:  ldc.i4.2
    IL_00af:  newarr     [System.Runtime]System.Object
    IL_00b4:  dup
    IL_00b5:  ldc.i4.0
    IL_00b6:  ldloc.s    V_6
    IL_00b8:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_00bd:  box        [System.Runtime]System.Int32
    IL_00c2:  stelem.ref
    IL_00c3:  dup
    IL_00c4:  ldc.i4.1
    IL_00c5:  ldloc.s    V_6
    IL_00c7:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
    IL_00cc:  box        [System.Runtime]System.Int32
    IL_00d1:  stelem.ref
    IL_00d2:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00d7:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00dc:  ldloc.0
    IL_00dd:  ldfld      string Game.ManageContentScreen/ListItem::Name
    IL_00e2:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_00e7:  brtrue     IL_039a

    IL_00ec:  ldloc.s    V_5
    IL_00ee:  dup
    IL_00ef:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_00f4:  ldstr      ", {0:dd MMM yyyy HH:mm}"
    IL_00f9:  ldc.i4.1
    IL_00fa:  newarr     [System.Runtime]System.Object
    IL_00ff:  dup
    IL_0100:  ldc.i4.0
    IL_0101:  ldloc.0
    IL_0102:  ldfld      valuetype [System.Runtime]System.DateTime Game.ManageContentScreen/ListItem::CreationTime
    IL_0107:  box        [System.Runtime]System.DateTime
    IL_010c:  stelem.ref
    IL_010d:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0112:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0117:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_011c:  ldloc.0
    IL_011d:  ldfld      int32 Game.ManageContentScreen/ListItem::UseCount
    IL_0122:  ldc.i4.0
    IL_0123:  ble        IL_039a

    IL_0128:  ldloc.s    V_5
    IL_012a:  dup
    IL_012b:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_0130:  ldstr      ", used by {0} world(s)"
    IL_0135:  ldc.i4.1
    IL_0136:  newarr     [System.Runtime]System.Object
    IL_013b:  dup
    IL_013c:  ldc.i4.0
    IL_013d:  ldloc.0
    IL_013e:  ldfld      int32 Game.ManageContentScreen/ListItem::UseCount
    IL_0143:  box        [System.Runtime]System.Int32
    IL_0148:  stelem.ref
    IL_0149:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_014e:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0153:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0158:  br         IL_039a

    IL_015d:  ldloc.0
    IL_015e:  ldfld      valuetype Game.ExternalContentType Game.ManageContentScreen/ListItem::Type
    IL_0163:  ldc.i4.4
    IL_0164:  bne.un     IL_029c

    IL_0169:  ldstr      "Widgets/CharacterSkinItem"
    IL_016e:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0173:  stloc.s    V_7
    IL_0175:  ldarg.0
    IL_0176:  ldloc.s    V_7
    IL_0178:  ldnull
    IL_0179:  call       class Game.Widget Game.WidgetsManager::LoadWidget(object,
                                                                           class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                           class Game.ContainerWidget)
    IL_017e:  castclass  Game.ContainerWidget
    IL_0183:  stloc.1
    IL_0184:  ldloc.1
    IL_0185:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_018a:  ldstr      "CharacterSkinItem.Model"
    IL_018f:  ldc.i4.1
    IL_0190:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ModelWidget>(string,
                                                                                          bool)
    IL_0195:  stloc.s    V_8
    IL_0197:  ldloc.1
    IL_0198:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_019d:  ldstr      "CharacterSkinItem.Text"
    IL_01a2:  ldc.i4.1
    IL_01a3:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_01a8:  stloc.s    V_9
    IL_01aa:  ldloc.1
    IL_01ab:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_01b0:  ldstr      "CharacterSkinItem.Details"
    IL_01b5:  ldc.i4.1
    IL_01b6:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_01bb:  stloc.s    V_10
    IL_01bd:  ldarg.0
    IL_01be:  ldfld      class Game.CharacterSkinsCache Game.ManageContentScreen::m_characterSkinsCache
    IL_01c3:  ldloc.0
    IL_01c4:  ldfld      string Game.ManageContentScreen/ListItem::Name
    IL_01c9:  callvirt   instance class [Engine]Engine.Graphics.Texture2D Game.CharacterSkinsCache::GetTexture(string)
    IL_01ce:  stloc.s    V_11
    IL_01d0:  ldloc.s    V_8
    IL_01d2:  ldloc.s    V_11
    IL_01d4:  callvirt   instance void Game.ModelWidget::set_TextureOverride(class [Engine]Engine.Graphics.Texture2D)
    IL_01d9:  ldloc.s    V_9
    IL_01db:  ldloc.0
    IL_01dc:  ldfld      string Game.ManageContentScreen/ListItem::DisplayName
    IL_01e1:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_01e6:  ldloc.s    V_10
    IL_01e8:  ldstr      "Character Skin, {0}x{1}"
    IL_01ed:  ldc.i4.2
    IL_01ee:  newarr     [System.Runtime]System.Object
    IL_01f3:  dup
    IL_01f4:  ldc.i4.0
    IL_01f5:  ldloc.s    V_11
    IL_01f7:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_01fc:  box        [System.Runtime]System.Int32
    IL_0201:  stelem.ref
    IL_0202:  dup
    IL_0203:  ldc.i4.1
    IL_0204:  ldloc.s    V_11
    IL_0206:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
    IL_020b:  box        [System.Runtime]System.Int32
    IL_0210:  stelem.ref
    IL_0211:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0216:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_021b:  ldloc.0
    IL_021c:  ldfld      string Game.ManageContentScreen/ListItem::Name
    IL_0221:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0226:  brtrue     IL_039a

    IL_022b:  ldloc.s    V_10
    IL_022d:  dup
    IL_022e:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_0233:  ldstr      ", {0:dd MMM yyyy HH:mm}"
    IL_0238:  ldc.i4.1
    IL_0239:  newarr     [System.Runtime]System.Object
    IL_023e:  dup
    IL_023f:  ldc.i4.0
    IL_0240:  ldloc.0
    IL_0241:  ldfld      valuetype [System.Runtime]System.DateTime Game.ManageContentScreen/ListItem::CreationTime
    IL_0246:  box        [System.Runtime]System.DateTime
    IL_024b:  stelem.ref
    IL_024c:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0251:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0256:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_025b:  ldloc.0
    IL_025c:  ldfld      int32 Game.ManageContentScreen/ListItem::UseCount
    IL_0261:  ldc.i4.0
    IL_0262:  ble        IL_039a

    IL_0267:  ldloc.s    V_10
    IL_0269:  dup
    IL_026a:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_026f:  ldstr      ", used by {0} world(s)"
    IL_0274:  ldc.i4.1
    IL_0275:  newarr     [System.Runtime]System.Object
    IL_027a:  dup
    IL_027b:  ldc.i4.0
    IL_027c:  ldloc.0
    IL_027d:  ldfld      int32 Game.ManageContentScreen/ListItem::UseCount
    IL_0282:  box        [System.Runtime]System.Int32
    IL_0287:  stelem.ref
    IL_0288:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_028d:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0292:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0297:  br         IL_039a

    IL_029c:  ldloc.0
    IL_029d:  ldfld      valuetype Game.ExternalContentType Game.ManageContentScreen/ListItem::Type
    IL_02a2:  ldc.i4.5
    IL_02a3:  bne.un     IL_038f

    IL_02a8:  ldstr      "Widgets/FurniturePackItem"
    IL_02ad:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_02b2:  stloc.s    V_12
    IL_02b4:  ldarg.0
    IL_02b5:  ldloc.s    V_12
    IL_02b7:  ldnull
    IL_02b8:  call       class Game.Widget Game.WidgetsManager::LoadWidget(object,
                                                                           class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                           class Game.ContainerWidget)
    IL_02bd:  castclass  Game.ContainerWidget
    IL_02c2:  stloc.1
    IL_02c3:  ldloc.1
    IL_02c4:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_02c9:  ldstr      "FurniturePackItem.Text"
    IL_02ce:  ldc.i4.1
    IL_02cf:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_02d4:  stloc.s    V_13
    IL_02d6:  ldloc.1
    IL_02d7:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_02dc:  ldstr      "FurniturePackItem.Details"
    IL_02e1:  ldc.i4.1
    IL_02e2:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_02e7:  stloc.s    V_14
    IL_02e9:  ldloc.s    V_13
    IL_02eb:  ldloc.0
    IL_02ec:  ldfld      string Game.ManageContentScreen/ListItem::DisplayName
    IL_02f1:  callvirt   instance void Game.LabelWidget::set_Text(string)
    .try
    {
      IL_02f6:  ldloc.0
      IL_02f7:  ldfld      string Game.ManageContentScreen/ListItem::Name
      IL_02fc:  call       class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> Game.FurniturePacksManager::LoadFurniturePack(string)
      IL_0301:  stloc.s    V_15
      IL_0303:  ldloc.s    V_14
      IL_0305:  ldstr      "Furniture Pack, {0} designs(s)"
      IL_030a:  ldc.i4.1
      IL_030b:  newarr     [System.Runtime]System.Object
      IL_0310:  dup
      IL_0311:  ldc.i4.0
      IL_0312:  ldloc.s    V_15
      IL_0314:  call       class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>> Game.FurnitureDesign::ListChains(class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.FurnitureDesign>)
      IL_0319:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>>::get_Count()
      IL_031e:  box        [System.Runtime]System.Int32
      IL_0323:  stelem.ref
      IL_0324:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_0329:  callvirt   instance void Game.LabelWidget::set_Text(string)
      IL_032e:  ldloc.0
      IL_032f:  ldfld      string Game.ManageContentScreen/ListItem::Name
      IL_0334:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
      IL_0339:  brtrue.s   IL_036b

      IL_033b:  ldloc.s    V_14
      IL_033d:  dup
      IL_033e:  callvirt   instance string Game.LabelWidget::get_Text()
      IL_0343:  ldstr      ", {0:dd MMM yyyy HH:mm}"
      IL_0348:  ldc.i4.1
      IL_0349:  newarr     [System.Runtime]System.Object
      IL_034e:  dup
      IL_034f:  ldc.i4.0
      IL_0350:  ldloc.0
      IL_0351:  ldfld      valuetype [System.Runtime]System.DateTime Game.ManageContentScreen/ListItem::CreationTime
      IL_0356:  box        [System.Runtime]System.DateTime
      IL_035b:  stelem.ref
      IL_035c:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_0361:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string)
      IL_0366:  callvirt   instance void Game.LabelWidget::set_Text(string)
      IL_036b:  leave.s    IL_039a

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_036d:  stloc.s    V_16
      IL_036f:  ldloc.s    V_14
      IL_0371:  dup
      IL_0372:  callvirt   instance string Game.LabelWidget::get_Text()
      IL_0377:  ldstr      "Error: "
      IL_037c:  ldloc.s    V_16
      IL_037e:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_0383:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string,
                                                                        string)
      IL_0388:  callvirt   instance void Game.LabelWidget::set_Text(string)
      IL_038d:  leave.s    IL_039a

    }  // end handler
    IL_038f:  ldstr      "Invalid item type."
    IL_0394:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0399:  throw

    IL_039a:  ldloc.1
    IL_039b:  ret
  } // end of method ManageContentScreen::'<.ctor>b__9_0'

  .method private hidebysig instance void 
          '<Update>b__12_3'(object item) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       33 (0x21)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  unbox.any  Game.ExternalContentType
    IL_0006:  ldarg.0
    IL_0007:  ldfld      valuetype Game.ExternalContentType Game.ManageContentScreen::m_filter
    IL_000c:  beq.s      IL_0020

    IL_000e:  ldarg.0
    IL_000f:  ldarg.1
    IL_0010:  unbox.any  Game.ExternalContentType
    IL_0015:  stfld      valuetype Game.ExternalContentType Game.ManageContentScreen::m_filter
    IL_001a:  ldarg.0
    IL_001b:  call       instance void Game.ManageContentScreen::UpdateList()
    IL_0020:  ret
  } // end of method ManageContentScreen::'<Update>b__12_3'

} // end of class Game.ManageContentScreen