.class public auto ansi beforefieldinit Game.ManageContentScreen
       extends Game.Screen
{
  .class auto ansi nested private beforefieldinit ListItem
         extends [System.Runtime]System.Object
  {
    .field public valuetype Game.ExternalContentType Type
    .field public bool IsBuiltIn
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
      // 代码大小       42 (0x2a)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  brtrue.s   IL_0029

      IL_0003:  ldarg.0
      IL_0004:  ldfld      class Game.ManageContentScreen/ListItem Game.ManageContentScreen/'<>c__DisplayClass12_0'::selectedItem
      IL_0009:  ldfld      valuetype Game.ExternalContentType Game.ManageContentScreen/ListItem::Type
      IL_000e:  ldarg.0
      IL_000f:  ldfld      class Game.ManageContentScreen/ListItem Game.ManageContentScreen/'<>c__DisplayClass12_0'::selectedItem
      IL_0014:  ldfld      string Game.ManageContentScreen/ListItem::Name
      IL_0019:  call       void Game.ExternalContentManager::DeleteExternalContent(valuetype Game.ExternalContentType,
                                                                                   string)
      IL_001e:  ldarg.0
      IL_001f:  ldfld      class Game.ManageContentScreen Game.ManageContentScreen/'<>c__DisplayClass12_0'::'<>4__this'
      IL_0024:  call       instance void Game.ManageContentScreen::UpdateList()
      IL_0029:  ret
    } // end of method '<>c__DisplayClass12_0'::'<Update>b__0'

  } // end of class '<>c__DisplayClass12_0'

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.ManageContentScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<object,string> '<>9__12_1'
    .field public static class [System.Runtime]System.Comparison`1<class Game.ManageContentScreen/ListItem> '<>9__13_3'
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
            '<Update>b__12_1'(object item) cil managed
    {
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  unbox.any  Game.ExternalContentType
      IL_0006:  call       string Game.ManageContentScreen::GetFilterDisplayName(valuetype Game.ExternalContentType)
      IL_000b:  ret
    } // end of method '<>c'::'<Update>b__12_1'

    .method assembly hidebysig instance int32 
            '<UpdateList>b__13_3'(class Game.ManageContentScreen/ListItem o1,
                                  class Game.ManageContentScreen/ListItem o2) cil managed
    {
      // 代码大小       110 (0x6e)
      .maxstack  2
      IL_0000:  ldarg.1
      IL_0001:  ldfld      bool Game.ManageContentScreen/ListItem::IsBuiltIn
      IL_0006:  brfalse.s  IL_0012

      IL_0008:  ldarg.2
      IL_0009:  ldfld      bool Game.ManageContentScreen/ListItem::IsBuiltIn
      IL_000e:  brtrue.s   IL_0012

      IL_0010:  ldc.i4.m1
      IL_0011:  ret

      IL_0012:  ldarg.2
      IL_0013:  ldfld      bool Game.ManageContentScreen/ListItem::IsBuiltIn
      IL_0018:  brfalse.s  IL_0024

      IL_001a:  ldarg.1
      IL_001b:  ldfld      bool Game.ManageContentScreen/ListItem::IsBuiltIn
      IL_0020:  brtrue.s   IL_0024

      IL_0022:  ldc.i4.1
      IL_0023:  ret

      IL_0024:  ldarg.1
      IL_0025:  ldfld      string Game.ManageContentScreen/ListItem::Name
      IL_002a:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
      IL_002f:  brfalse.s  IL_0040

      IL_0031:  ldarg.2
      IL_0032:  ldfld      string Game.ManageContentScreen/ListItem::Name
      IL_0037:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
      IL_003c:  brtrue.s   IL_0040

      IL_003e:  ldc.i4.m1
      IL_003f:  ret

      IL_0040:  ldarg.1
      IL_0041:  ldfld      string Game.ManageContentScreen/ListItem::Name
      IL_0046:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
      IL_004b:  brtrue.s   IL_005c

      IL_004d:  ldarg.2
      IL_004e:  ldfld      string Game.ManageContentScreen/ListItem::Name
      IL_0053:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
      IL_0058:  brfalse.s  IL_005c

      IL_005a:  ldc.i4.1
      IL_005b:  ret

      IL_005c:  ldarg.1
      IL_005d:  ldfld      string Game.ManageContentScreen/ListItem::DisplayName
      IL_0062:  ldarg.2
      IL_0063:  ldfld      string Game.ManageContentScreen/ListItem::DisplayName
      IL_0068:  call       int32 [System.Runtime]System.String::Compare(string,
                                                                        string)
      IL_006d:  ret
    } // end of method '<>c'::'<UpdateList>b__13_3'

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
      // 代码大小       23 (0x17)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      class Game.WorldSettings Game.WorldInfo::WorldSettings
      IL_0006:  ldfld      string Game.WorldSettings::BlocksTextureName
      IL_000b:  ldarg.0
      IL_000c:  ldfld      string Game.ManageContentScreen/'<>c__DisplayClass13_0'::name
      IL_0011:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0016:  ret
    } // end of method '<>c__DisplayClass13_0'::'<UpdateList>b__0'

  } // end of class '<>c__DisplayClass13_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass13_1'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public string name
    .field public class [System.Runtime]System.Func`2<class Game.PlayerInfo,bool> '<>9__2'
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
      // 代码大小       43 (0x2b)
      .maxstack  4
      .locals init (class [System.Runtime]System.Func`2<class Game.PlayerInfo,bool> V_0)
      IL_0000:  ldarg.1
      IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.PlayerInfo> Game.WorldInfo::PlayerInfos
      IL_0006:  ldarg.0
      IL_0007:  ldfld      class [System.Runtime]System.Func`2<class Game.PlayerInfo,bool> Game.ManageContentScreen/'<>c__DisplayClass13_1'::'<>9__2'
      IL_000c:  dup
      IL_000d:  brtrue.s   IL_0025

      IL_000f:  pop
      IL_0010:  ldarg.0
      IL_0011:  ldarg.0
      IL_0012:  ldftn      instance bool Game.ManageContentScreen/'<>c__DisplayClass13_1'::'<UpdateList>b__2'(class Game.PlayerInfo)
      IL_0018:  newobj     instance void class [System.Runtime]System.Func`2<class Game.PlayerInfo,bool>::.ctor(object,
                                                                                                                native int)
      IL_001d:  dup
      IL_001e:  stloc.0
      IL_001f:  stfld      class [System.Runtime]System.Func`2<class Game.PlayerInfo,bool> Game.ManageContentScreen/'<>c__DisplayClass13_1'::'<>9__2'
      IL_0024:  ldloc.0
      IL_0025:  call       bool [System.Linq]System.Linq.Enumerable::Any<class Game.PlayerInfo>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                class [System.Runtime]System.Func`2<!!0,bool>)
      IL_002a:  ret
    } // end of method '<>c__DisplayClass13_1'::'<UpdateList>b__1'

    .method assembly hidebysig instance bool 
            '<UpdateList>b__2'(class Game.PlayerInfo pi) cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      string Game.PlayerInfo::CharacterSkinName
      IL_0006:  ldarg.0
      IL_0007:  ldfld      string Game.ManageContentScreen/'<>c__DisplayClass13_1'::name
      IL_000c:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0011:  ret
    } // end of method '<>c__DisplayClass13_1'::'<UpdateList>b__2'

  } // end of class '<>c__DisplayClass13_1'

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
    // 代码大小       186 (0xba)
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
    IL_0028:  ldarg.0
    IL_0029:  ldloc.0
    IL_002a:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_002f:  ldarg.0
    IL_0030:  ldarg.0
    IL_0031:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0036:  ldstr      "ContentList"
    IL_003b:  ldc.i4.1
    IL_003c:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ListPanelWidget>(string,
                                                                                         bool)
    IL_0041:  stfld      class Game.ListPanelWidget Game.ManageContentScreen::m_contentList
    IL_0046:  ldarg.0
    IL_0047:  ldarg.0
    IL_0048:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_004d:  ldstr      "DeleteButton"
    IL_0052:  ldc.i4.1
    IL_0053:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0058:  stfld      class Game.ButtonWidget Game.ManageContentScreen::m_deleteButton
    IL_005d:  ldarg.0
    IL_005e:  ldarg.0
    IL_005f:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0064:  ldstr      "UploadButton"
    IL_0069:  ldc.i4.1
    IL_006a:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_006f:  stfld      class Game.ButtonWidget Game.ManageContentScreen::m_uploadButton
    IL_0074:  ldarg.0
    IL_0075:  ldarg.0
    IL_0076:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_007b:  ldstr      "ChangeFilter"
    IL_0080:  ldc.i4.1
    IL_0081:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0086:  stfld      class Game.ButtonWidget Game.ManageContentScreen::m_changeFilterButton
    IL_008b:  ldarg.0
    IL_008c:  ldarg.0
    IL_008d:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0092:  ldstr      "Filter"
    IL_0097:  ldc.i4.1
    IL_0098:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_009d:  stfld      class Game.LabelWidget Game.ManageContentScreen::m_filterLabel
    IL_00a2:  ldarg.0
    IL_00a3:  ldfld      class Game.ListPanelWidget Game.ManageContentScreen::m_contentList
    IL_00a8:  ldarg.0
    IL_00a9:  ldftn      instance class Game.Widget Game.ManageContentScreen::'<.ctor>b__9_0'(object)
    IL_00af:  newobj     instance void class [System.Runtime]System.Func`2<object,class Game.Widget>::.ctor(object,
                                                                                                            native int)
    IL_00b4:  callvirt   instance void Game.ListPanelWidget::set_ItemWidgetFactory(class [System.Runtime]System.Func`2<object,class Game.Widget>)
    IL_00b9:  ret
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
    // 代码大小       500 (0x1f4)
    .maxstack  7
    .locals init (class Game.ManageContentScreen/'<>c__DisplayClass12_0' V_0,
             string V_1,
             class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ExternalContentType> V_2)
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
    IL_0023:  ldarg.0
    IL_0024:  ldfld      class Game.ButtonWidget Game.ManageContentScreen::m_deleteButton
    IL_0029:  ldloc.0
    IL_002a:  ldfld      class Game.ManageContentScreen/ListItem Game.ManageContentScreen/'<>c__DisplayClass12_0'::selectedItem
    IL_002f:  brfalse.s  IL_0041

    IL_0031:  ldloc.0
    IL_0032:  ldfld      class Game.ManageContentScreen/ListItem Game.ManageContentScreen/'<>c__DisplayClass12_0'::selectedItem
    IL_0037:  ldfld      bool Game.ManageContentScreen/ListItem::IsBuiltIn
    IL_003c:  ldc.i4.0
    IL_003d:  ceq
    IL_003f:  br.s       IL_0042

    IL_0041:  ldc.i4.0
    IL_0042:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0047:  ldarg.0
    IL_0048:  ldfld      class Game.ButtonWidget Game.ManageContentScreen::m_uploadButton
    IL_004d:  ldloc.0
    IL_004e:  ldfld      class Game.ManageContentScreen/ListItem Game.ManageContentScreen/'<>c__DisplayClass12_0'::selectedItem
    IL_0053:  brfalse.s  IL_0065

    IL_0055:  ldloc.0
    IL_0056:  ldfld      class Game.ManageContentScreen/ListItem Game.ManageContentScreen/'<>c__DisplayClass12_0'::selectedItem
    IL_005b:  ldfld      bool Game.ManageContentScreen/ListItem::IsBuiltIn
    IL_0060:  ldc.i4.0
    IL_0061:  ceq
    IL_0063:  br.s       IL_0066

    IL_0065:  ldc.i4.0
    IL_0066:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_006b:  ldarg.0
    IL_006c:  ldfld      class Game.LabelWidget Game.ManageContentScreen::m_filterLabel
    IL_0071:  ldarg.0
    IL_0072:  ldfld      valuetype Game.ExternalContentType Game.ManageContentScreen::m_filter
    IL_0077:  call       string Game.ManageContentScreen::GetFilterDisplayName(valuetype Game.ExternalContentType)
    IL_007c:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0081:  ldarg.0
    IL_0082:  ldfld      class Game.ButtonWidget Game.ManageContentScreen::m_deleteButton
    IL_0087:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_008c:  brfalse    IL_0119

    IL_0091:  ldloc.0
    IL_0092:  ldfld      class Game.ManageContentScreen/ListItem Game.ManageContentScreen/'<>c__DisplayClass12_0'::selectedItem
    IL_0097:  ldfld      int32 Game.ManageContentScreen/ListItem::UseCount
    IL_009c:  ldc.i4.0
    IL_009d:  ble.s      IL_00d3

    IL_009f:  ldstr      "\"{0}\" will be irrecoverably deleted.\n(used by {1} "
    + "world(s), they will revert to using the default)"
    IL_00a4:  ldc.i4.2
    IL_00a5:  newarr     [System.Runtime]System.Object
    IL_00aa:  dup
    IL_00ab:  ldc.i4.0
    IL_00ac:  ldloc.0
    IL_00ad:  ldfld      class Game.ManageContentScreen/ListItem Game.ManageContentScreen/'<>c__DisplayClass12_0'::selectedItem
    IL_00b2:  ldfld      string Game.ManageContentScreen/ListItem::DisplayName
    IL_00b7:  stelem.ref
    IL_00b8:  dup
    IL_00b9:  ldc.i4.1
    IL_00ba:  ldloc.0
    IL_00bb:  ldfld      class Game.ManageContentScreen/ListItem Game.ManageContentScreen/'<>c__DisplayClass12_0'::selectedItem
    IL_00c0:  ldfld      int32 Game.ManageContentScreen/ListItem::UseCount
    IL_00c5:  box        [System.Runtime]System.Int32
    IL_00ca:  stelem.ref
    IL_00cb:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00d0:  stloc.1
    IL_00d1:  br.s       IL_00f2

    IL_00d3:  ldstr      "\"{0}\" will be irrecoverably deleted."
    IL_00d8:  ldc.i4.1
    IL_00d9:  newarr     [System.Runtime]System.Object
    IL_00de:  dup
    IL_00df:  ldc.i4.0
    IL_00e0:  ldloc.0
    IL_00e1:  ldfld      class Game.ManageContentScreen/ListItem Game.ManageContentScreen/'<>c__DisplayClass12_0'::selectedItem
    IL_00e6:  ldfld      string Game.ManageContentScreen/ListItem::DisplayName
    IL_00eb:  stelem.ref
    IL_00ec:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00f1:  stloc.1
    IL_00f2:  ldnull
    IL_00f3:  ldstr      "Are you sure\?"
    IL_00f8:  ldloc.1
    IL_00f9:  ldstr      "Yes"
    IL_00fe:  ldstr      "No"
    IL_0103:  ldloc.0
    IL_0104:  ldftn      instance void Game.ManageContentScreen/'<>c__DisplayClass12_0'::'<Update>b__0'(valuetype Game.MessageDialogButton)
    IL_010a:  newobj     instance void class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>::.ctor(object,
                                                                                                                        native int)
    IL_010f:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_0114:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_0119:  ldarg.0
    IL_011a:  ldfld      class Game.ButtonWidget Game.ManageContentScreen::m_uploadButton
    IL_011f:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0124:  brfalse.s  IL_0141

    IL_0126:  ldloc.0
    IL_0127:  ldfld      class Game.ManageContentScreen/ListItem Game.ManageContentScreen/'<>c__DisplayClass12_0'::selectedItem
    IL_012c:  ldfld      valuetype Game.ExternalContentType Game.ManageContentScreen/ListItem::Type
    IL_0131:  ldloc.0
    IL_0132:  ldfld      class Game.ManageContentScreen/ListItem Game.ManageContentScreen/'<>c__DisplayClass12_0'::selectedItem
    IL_0137:  ldfld      string Game.ManageContentScreen/ListItem::Name
    IL_013c:  call       void Game.ExternalContentManager::ShowUploadUi(valuetype Game.ExternalContentType,
                                                                        string)
    IL_0141:  ldarg.0
    IL_0142:  ldfld      class Game.ButtonWidget Game.ManageContentScreen::m_changeFilterButton
    IL_0147:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_014c:  brfalse.s  IL_01b1

    IL_014e:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ExternalContentType>::.ctor()
    IL_0153:  stloc.2
    IL_0154:  ldloc.2
    IL_0155:  ldc.i4.0
    IL_0156:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ExternalContentType>::Add(!0)
    IL_015b:  ldloc.2
    IL_015c:  ldc.i4.3
    IL_015d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ExternalContentType>::Add(!0)
    IL_0162:  ldloc.2
    IL_0163:  ldc.i4.4
    IL_0164:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ExternalContentType>::Add(!0)
    IL_0169:  ldloc.2
    IL_016a:  ldc.i4.5
    IL_016b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ExternalContentType>::Add(!0)
    IL_0170:  ldnull
    IL_0171:  ldstr      "Select Items Filter"
    IL_0176:  ldloc.2
    IL_0177:  ldc.r4     60.
    IL_017c:  ldsfld     class [System.Runtime]System.Func`2<object,string> Game.ManageContentScreen/'<>c'::'<>9__12_1'
    IL_0181:  dup
    IL_0182:  brtrue.s   IL_019b

    IL_0184:  pop
    IL_0185:  ldsfld     class Game.ManageContentScreen/'<>c' Game.ManageContentScreen/'<>c'::'<>9'
    IL_018a:  ldftn      instance string Game.ManageContentScreen/'<>c'::'<Update>b__12_1'(object)
    IL_0190:  newobj     instance void class [System.Runtime]System.Func`2<object,string>::.ctor(object,
                                                                                                 native int)
    IL_0195:  dup
    IL_0196:  stsfld     class [System.Runtime]System.Func`2<object,string> Game.ManageContentScreen/'<>c'::'<>9__12_1'
    IL_019b:  ldarg.0
    IL_019c:  ldftn      instance void Game.ManageContentScreen::'<Update>b__12_2'(object)
    IL_01a2:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_01a7:  newobj     instance void Game.ListSelectionDialog::.ctor(string,
                                                                       class [System.Runtime]System.Collections.IEnumerable,
                                                                       float32,
                                                                       class [System.Runtime]System.Func`2<object,string>,
                                                                       class [System.Runtime]System.Action`1<object>)
    IL_01ac:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_01b1:  ldarg.0
    IL_01b2:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_01b7:  callvirt   instance bool Game.WidgetInput::get_Back()
    IL_01bc:  brtrue.s   IL_01e3

    IL_01be:  ldarg.0
    IL_01bf:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_01c4:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_01c9:  brtrue.s   IL_01e3

    IL_01cb:  ldarg.0
    IL_01cc:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_01d1:  ldstr      "TopBar.Back"
    IL_01d6:  ldc.i4.1
    IL_01d7:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_01dc:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_01e1:  brfalse.s  IL_01f3

    IL_01e3:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
    IL_01e8:  ldc.i4.0
    IL_01e9:  newarr     [System.Runtime]System.Object
    IL_01ee:  call       void Game.ScreensManager::SwitchScreen(class Game.Screen,
                                                                object[])
    IL_01f3:  ret
  } // end of method ManageContentScreen::Update

  .method private hidebysig instance void 
          UpdateList() cil managed
  {
    // 代码大小       665 (0x299)
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
    IL_001a:  brtrue     IL_00d8

    IL_001f:  call       void Game.BlocksTexturesManager::UpdateBlocksTexturesList()
    IL_0024:  call       valuetype [Engine]Engine.ReadOnlyList`1<string> Game.BlocksTexturesManager::get_BlockTexturesNames()
    IL_0029:  stloc.2
    IL_002a:  ldloca.s   V_2
    IL_002c:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<string>::GetEnumerator()
    IL_0031:  stloc.1
    .try
    {
      IL_0032:  br         IL_00bc

      IL_0037:  newobj     instance void Game.ManageContentScreen/'<>c__DisplayClass13_0'::.ctor()
      IL_003c:  stloc.3
      IL_003d:  ldloc.3
      IL_003e:  ldloca.s   V_1
      IL_0040:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<string>::get_Current()
      IL_0045:  stfld      string Game.ManageContentScreen/'<>c__DisplayClass13_0'::name
      IL_004a:  ldloc.0
      IL_004b:  newobj     instance void Game.ManageContentScreen/ListItem::.ctor()
      IL_0050:  dup
      IL_0051:  ldloc.3
      IL_0052:  ldfld      string Game.ManageContentScreen/'<>c__DisplayClass13_0'::name
      IL_0057:  stfld      string Game.ManageContentScreen/ListItem::Name
      IL_005c:  dup
      IL_005d:  ldloc.3
      IL_005e:  ldfld      string Game.ManageContentScreen/'<>c__DisplayClass13_0'::name
      IL_0063:  call       bool Game.BlocksTexturesManager::IsBuiltIn(string)
      IL_0068:  stfld      bool Game.ManageContentScreen/ListItem::IsBuiltIn
      IL_006d:  dup
      IL_006e:  ldc.i4.3
      IL_006f:  stfld      valuetype Game.ExternalContentType Game.ManageContentScreen/ListItem::Type
      IL_0074:  dup
      IL_0075:  ldloc.3
      IL_0076:  ldfld      string Game.ManageContentScreen/'<>c__DisplayClass13_0'::name
      IL_007b:  call       string Game.BlocksTexturesManager::GetDisplayName(string)
      IL_0080:  stfld      string Game.ManageContentScreen/ListItem::DisplayName
      IL_0085:  dup
      IL_0086:  ldloc.3
      IL_0087:  ldfld      string Game.ManageContentScreen/'<>c__DisplayClass13_0'::name
      IL_008c:  call       valuetype [System.Runtime]System.DateTime Game.BlocksTexturesManager::GetCreationDate(string)
      IL_0091:  stfld      valuetype [System.Runtime]System.DateTime Game.ManageContentScreen/ListItem::CreationTime
      IL_0096:  dup
      IL_0097:  call       valuetype [Engine]Engine.ReadOnlyList`1<class Game.WorldInfo> Game.WorldsManager::get_WorldInfos()
      IL_009c:  box        valuetype [Engine]Engine.ReadOnlyList`1<class Game.WorldInfo>
      IL_00a1:  ldloc.3
      IL_00a2:  ldftn      instance bool Game.ManageContentScreen/'<>c__DisplayClass13_0'::'<UpdateList>b__0'(class Game.WorldInfo)
      IL_00a8:  newobj     instance void class [System.Runtime]System.Func`2<class Game.WorldInfo,bool>::.ctor(object,
                                                                                                               native int)
      IL_00ad:  call       int32 [System.Linq]System.Linq.Enumerable::Count<class Game.WorldInfo>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                  class [System.Runtime]System.Func`2<!!0,bool>)
      IL_00b2:  stfld      int32 Game.ManageContentScreen/ListItem::UseCount
      IL_00b7:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ManageContentScreen/ListItem>::Add(!0)
      IL_00bc:  ldloca.s   V_1
      IL_00be:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<string>::MoveNext()
      IL_00c3:  brtrue     IL_0037

      IL_00c8:  leave.s    IL_00d8

    }  // end .try
    finally
    {
      IL_00ca:  ldloca.s   V_1
      IL_00cc:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<string>
      IL_00d2:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00d7:  endfinally
    }  // end handler
    IL_00d8:  ldarg.0
    IL_00d9:  ldfld      valuetype Game.ExternalContentType Game.ManageContentScreen::m_filter
    IL_00de:  ldc.i4.4
    IL_00df:  beq.s      IL_00ec

    IL_00e1:  ldarg.0
    IL_00e2:  ldfld      valuetype Game.ExternalContentType Game.ManageContentScreen::m_filter
    IL_00e7:  brtrue     IL_01ac

    IL_00ec:  call       void Game.CharacterSkinsManager::UpdateCharacterSkinsList()
    IL_00f1:  call       valuetype [Engine]Engine.ReadOnlyList`1<string> Game.CharacterSkinsManager::get_CharacterSkinsNames()
    IL_00f6:  stloc.2
    IL_00f7:  ldloca.s   V_2
    IL_00f9:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<string>::GetEnumerator()
    IL_00fe:  stloc.1
    .try
    {
      IL_00ff:  br         IL_0190

      IL_0104:  newobj     instance void Game.ManageContentScreen/'<>c__DisplayClass13_1'::.ctor()
      IL_0109:  stloc.s    V_4
      IL_010b:  ldloc.s    V_4
      IL_010d:  ldloca.s   V_1
      IL_010f:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<string>::get_Current()
      IL_0114:  stfld      string Game.ManageContentScreen/'<>c__DisplayClass13_1'::name
      IL_0119:  ldloc.0
      IL_011a:  newobj     instance void Game.ManageContentScreen/ListItem::.ctor()
      IL_011f:  dup
      IL_0120:  ldloc.s    V_4
      IL_0122:  ldfld      string Game.ManageContentScreen/'<>c__DisplayClass13_1'::name
      IL_0127:  stfld      string Game.ManageContentScreen/ListItem::Name
      IL_012c:  dup
      IL_012d:  ldloc.s    V_4
      IL_012f:  ldfld      string Game.ManageContentScreen/'<>c__DisplayClass13_1'::name
      IL_0134:  call       bool Game.CharacterSkinsManager::IsBuiltIn(string)
      IL_0139:  stfld      bool Game.ManageContentScreen/ListItem::IsBuiltIn
      IL_013e:  dup
      IL_013f:  ldc.i4.4
      IL_0140:  stfld      valuetype Game.ExternalContentType Game.ManageContentScreen/ListItem::Type
      IL_0145:  dup
      IL_0146:  ldloc.s    V_4
      IL_0148:  ldfld      string Game.ManageContentScreen/'<>c__DisplayClass13_1'::name
      IL_014d:  call       string Game.CharacterSkinsManager::GetDisplayName(string)
      IL_0152:  stfld      string Game.ManageContentScreen/ListItem::DisplayName
      IL_0157:  dup
      IL_0158:  ldloc.s    V_4
      IL_015a:  ldfld      string Game.ManageContentScreen/'<>c__DisplayClass13_1'::name
      IL_015f:  call       valuetype [System.Runtime]System.DateTime Game.CharacterSkinsManager::GetCreationDate(string)
      IL_0164:  stfld      valuetype [System.Runtime]System.DateTime Game.ManageContentScreen/ListItem::CreationTime
      IL_0169:  dup
      IL_016a:  call       valuetype [Engine]Engine.ReadOnlyList`1<class Game.WorldInfo> Game.WorldsManager::get_WorldInfos()
      IL_016f:  box        valuetype [Engine]Engine.ReadOnlyList`1<class Game.WorldInfo>
      IL_0174:  ldloc.s    V_4
      IL_0176:  ldftn      instance bool Game.ManageContentScreen/'<>c__DisplayClass13_1'::'<UpdateList>b__1'(class Game.WorldInfo)
      IL_017c:  newobj     instance void class [System.Runtime]System.Func`2<class Game.WorldInfo,bool>::.ctor(object,
                                                                                                               native int)
      IL_0181:  call       int32 [System.Linq]System.Linq.Enumerable::Count<class Game.WorldInfo>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                  class [System.Runtime]System.Func`2<!!0,bool>)
      IL_0186:  stfld      int32 Game.ManageContentScreen/ListItem::UseCount
      IL_018b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ManageContentScreen/ListItem>::Add(!0)
      IL_0190:  ldloca.s   V_1
      IL_0192:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<string>::MoveNext()
      IL_0197:  brtrue     IL_0104

      IL_019c:  leave.s    IL_01ac

    }  // end .try
    finally
    {
      IL_019e:  ldloca.s   V_1
      IL_01a0:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<string>
      IL_01a6:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01ab:  endfinally
    }  // end handler
    IL_01ac:  ldarg.0
    IL_01ad:  ldfld      valuetype Game.ExternalContentType Game.ManageContentScreen::m_filter
    IL_01b2:  ldc.i4.5
    IL_01b3:  beq.s      IL_01bd

    IL_01b5:  ldarg.0
    IL_01b6:  ldfld      valuetype Game.ExternalContentType Game.ManageContentScreen::m_filter
    IL_01bb:  brtrue.s   IL_022f

    IL_01bd:  call       void Game.FurniturePacksManager::UpdateFurniturePacksList()
    IL_01c2:  call       valuetype [Engine]Engine.ReadOnlyList`1<string> Game.FurniturePacksManager::get_FurniturePackNames()
    IL_01c7:  stloc.2
    IL_01c8:  ldloca.s   V_2
    IL_01ca:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<string>::GetEnumerator()
    IL_01cf:  stloc.1
    .try
    {
      IL_01d0:  br.s       IL_0216

      IL_01d2:  ldloca.s   V_1
      IL_01d4:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<string>::get_Current()
      IL_01d9:  stloc.s    V_5
      IL_01db:  ldloc.0
      IL_01dc:  newobj     instance void Game.ManageContentScreen/ListItem::.ctor()
      IL_01e1:  dup
      IL_01e2:  ldloc.s    V_5
      IL_01e4:  stfld      string Game.ManageContentScreen/ListItem::Name
      IL_01e9:  dup
      IL_01ea:  ldc.i4.0
      IL_01eb:  stfld      bool Game.ManageContentScreen/ListItem::IsBuiltIn
      IL_01f0:  dup
      IL_01f1:  ldc.i4.5
      IL_01f2:  stfld      valuetype Game.ExternalContentType Game.ManageContentScreen/ListItem::Type
      IL_01f7:  dup
      IL_01f8:  ldloc.s    V_5
      IL_01fa:  call       string Game.FurniturePacksManager::GetDisplayName(string)
      IL_01ff:  stfld      string Game.ManageContentScreen/ListItem::DisplayName
      IL_0204:  dup
      IL_0205:  ldloc.s    V_5
      IL_0207:  call       valuetype [System.Runtime]System.DateTime Game.FurniturePacksManager::GetCreationDate(string)
      IL_020c:  stfld      valuetype [System.Runtime]System.DateTime Game.ManageContentScreen/ListItem::CreationTime
      IL_0211:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ManageContentScreen/ListItem>::Add(!0)
      IL_0216:  ldloca.s   V_1
      IL_0218:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<string>::MoveNext()
      IL_021d:  brtrue.s   IL_01d2

      IL_021f:  leave.s    IL_022f

    }  // end .try
    finally
    {
      IL_0221:  ldloca.s   V_1
      IL_0223:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<string>
      IL_0229:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_022e:  endfinally
    }  // end handler
    IL_022f:  ldloc.0
    IL_0230:  ldsfld     class [System.Runtime]System.Comparison`1<class Game.ManageContentScreen/ListItem> Game.ManageContentScreen/'<>c'::'<>9__13_3'
    IL_0235:  dup
    IL_0236:  brtrue.s   IL_024f

    IL_0238:  pop
    IL_0239:  ldsfld     class Game.ManageContentScreen/'<>c' Game.ManageContentScreen/'<>c'::'<>9'
    IL_023e:  ldftn      instance int32 Game.ManageContentScreen/'<>c'::'<UpdateList>b__13_3'(class Game.ManageContentScreen/ListItem,
                                                                                              class Game.ManageContentScreen/ListItem)
    IL_0244:  newobj     instance void class [System.Runtime]System.Comparison`1<class Game.ManageContentScreen/ListItem>::.ctor(object,
                                                                                                                                 native int)
    IL_0249:  dup
    IL_024a:  stsfld     class [System.Runtime]System.Comparison`1<class Game.ManageContentScreen/ListItem> Game.ManageContentScreen/'<>c'::'<>9__13_3'
    IL_024f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ManageContentScreen/ListItem>::Sort(class [System.Runtime]System.Comparison`1<!0>)
    IL_0254:  ldarg.0
    IL_0255:  ldfld      class Game.ListPanelWidget Game.ManageContentScreen::m_contentList
    IL_025a:  callvirt   instance void Game.ListPanelWidget::ClearItems()
    IL_025f:  ldloc.0
    IL_0260:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.ManageContentScreen/ListItem>::GetEnumerator()
    IL_0265:  stloc.s    V_6
    .try
    {
      IL_0267:  br.s       IL_027f

      IL_0269:  ldloca.s   V_6
      IL_026b:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ManageContentScreen/ListItem>::get_Current()
      IL_0270:  stloc.s    V_7
      IL_0272:  ldarg.0
      IL_0273:  ldfld      class Game.ListPanelWidget Game.ManageContentScreen::m_contentList
      IL_0278:  ldloc.s    V_7
      IL_027a:  callvirt   instance void Game.ListPanelWidget::AddItem(object)
      IL_027f:  ldloca.s   V_6
      IL_0281:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ManageContentScreen/ListItem>::MoveNext()
      IL_0286:  brtrue.s   IL_0269

      IL_0288:  leave.s    IL_0298

    }  // end .try
    finally
    {
      IL_028a:  ldloca.s   V_6
      IL_028c:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ManageContentScreen/ListItem>
      IL_0292:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0297:  endfinally
    }  // end handler
    IL_0298:  ret
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

  .method private hidebysig instance class Game.Widget 
          '<.ctor>b__9_0'(object obj) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       938 (0x3aa)
    .maxstack  7
    .locals init (class Game.ManageContentScreen/ListItem V_0,
             class Game.ContainerWidget V_1,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_2,
             class Game.RectangleWidget V_3,
             class Game.LabelWidget V_4,
             class Game.LabelWidget V_5,
             class [Engine]Engine.Graphics.Texture2D V_6,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_7,
             class Game.PlayerModelWidget V_8,
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
    IL_002d:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0032:  ldstr      "BlocksTextureItem.Icon"
    IL_0037:  ldc.i4.1
    IL_0038:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.RectangleWidget>(string,
                                                                                         bool)
    IL_003d:  stloc.3
    IL_003e:  ldloc.1
    IL_003f:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0044:  ldstr      "BlocksTextureItem.Text"
    IL_0049:  ldc.i4.1
    IL_004a:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_004f:  stloc.s    V_4
    IL_0051:  ldloc.1
    IL_0052:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0057:  ldstr      "BlocksTextureItem.Details"
    IL_005c:  ldc.i4.1
    IL_005d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
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
    IL_00a9:  ldstr      "Blocks Texture | {0}x{1}"
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
    IL_00dd:  ldfld      bool Game.ManageContentScreen/ListItem::IsBuiltIn
    IL_00e2:  brtrue     IL_03a8

    IL_00e7:  ldloc.s    V_5
    IL_00e9:  dup
    IL_00ea:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_00ef:  ldstr      " | {0:dd MMM yyyy HH:mm}"
    IL_00f4:  ldc.i4.1
    IL_00f5:  newarr     [System.Runtime]System.Object
    IL_00fa:  dup
    IL_00fb:  ldc.i4.0
    IL_00fc:  ldloc.0
    IL_00fd:  ldflda     valuetype [System.Runtime]System.DateTime Game.ManageContentScreen/ListItem::CreationTime
    IL_0102:  call       instance valuetype [System.Runtime]System.DateTime [System.Runtime]System.DateTime::ToLocalTime()
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
    IL_0123:  ble        IL_03a8

    IL_0128:  ldloc.s    V_5
    IL_012a:  dup
    IL_012b:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_0130:  ldstr      " | in {0} world(s)"
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
    IL_0158:  br         IL_03a8

    IL_015d:  ldloc.0
    IL_015e:  ldfld      valuetype Game.ExternalContentType Game.ManageContentScreen/ListItem::Type
    IL_0163:  ldc.i4.4
    IL_0164:  bne.un     IL_02a4

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
    IL_0185:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_018a:  ldstr      "CharacterSkinItem.Model"
    IL_018f:  ldc.i4.1
    IL_0190:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.PlayerModelWidget>(string,
                                                                                           bool)
    IL_0195:  stloc.s    V_8
    IL_0197:  ldloc.1
    IL_0198:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_019d:  ldstr      "CharacterSkinItem.Text"
    IL_01a2:  ldc.i4.1
    IL_01a3:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_01a8:  stloc.s    V_9
    IL_01aa:  ldloc.1
    IL_01ab:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_01b0:  ldstr      "CharacterSkinItem.Details"
    IL_01b5:  ldc.i4.1
    IL_01b6:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_01bb:  stloc.s    V_10
    IL_01bd:  ldarg.0
    IL_01be:  ldfld      class Game.CharacterSkinsCache Game.ManageContentScreen::m_characterSkinsCache
    IL_01c3:  ldloc.0
    IL_01c4:  ldfld      string Game.ManageContentScreen/ListItem::Name
    IL_01c9:  callvirt   instance class [Engine]Engine.Graphics.Texture2D Game.CharacterSkinsCache::GetTexture(string)
    IL_01ce:  stloc.s    V_11
    IL_01d0:  ldloc.s    V_8
    IL_01d2:  ldc.i4.0
    IL_01d3:  callvirt   instance void Game.PlayerModelWidget::set_PlayerClass(valuetype Game.PlayerClass)
    IL_01d8:  ldloc.s    V_8
    IL_01da:  ldloc.s    V_11
    IL_01dc:  callvirt   instance void Game.PlayerModelWidget::set_CharacterSkinTexture(class [Engine]Engine.Graphics.Texture2D)
    IL_01e1:  ldloc.s    V_9
    IL_01e3:  ldloc.0
    IL_01e4:  ldfld      string Game.ManageContentScreen/ListItem::DisplayName
    IL_01e9:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_01ee:  ldloc.s    V_10
    IL_01f0:  ldstr      "Character Skin | {0}x{1}"
    IL_01f5:  ldc.i4.2
    IL_01f6:  newarr     [System.Runtime]System.Object
    IL_01fb:  dup
    IL_01fc:  ldc.i4.0
    IL_01fd:  ldloc.s    V_11
    IL_01ff:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_0204:  box        [System.Runtime]System.Int32
    IL_0209:  stelem.ref
    IL_020a:  dup
    IL_020b:  ldc.i4.1
    IL_020c:  ldloc.s    V_11
    IL_020e:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
    IL_0213:  box        [System.Runtime]System.Int32
    IL_0218:  stelem.ref
    IL_0219:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_021e:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0223:  ldloc.0
    IL_0224:  ldfld      bool Game.ManageContentScreen/ListItem::IsBuiltIn
    IL_0229:  brtrue     IL_03a8

    IL_022e:  ldloc.s    V_10
    IL_0230:  dup
    IL_0231:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_0236:  ldstr      " | {0:dd MMM yyyy HH:mm}"
    IL_023b:  ldc.i4.1
    IL_023c:  newarr     [System.Runtime]System.Object
    IL_0241:  dup
    IL_0242:  ldc.i4.0
    IL_0243:  ldloc.0
    IL_0244:  ldflda     valuetype [System.Runtime]System.DateTime Game.ManageContentScreen/ListItem::CreationTime
    IL_0249:  call       instance valuetype [System.Runtime]System.DateTime [System.Runtime]System.DateTime::ToLocalTime()
    IL_024e:  box        [System.Runtime]System.DateTime
    IL_0253:  stelem.ref
    IL_0254:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0259:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_025e:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0263:  ldloc.0
    IL_0264:  ldfld      int32 Game.ManageContentScreen/ListItem::UseCount
    IL_0269:  ldc.i4.0
    IL_026a:  ble        IL_03a8

    IL_026f:  ldloc.s    V_10
    IL_0271:  dup
    IL_0272:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_0277:  ldstr      " | in {0} world(s)"
    IL_027c:  ldc.i4.1
    IL_027d:  newarr     [System.Runtime]System.Object
    IL_0282:  dup
    IL_0283:  ldc.i4.0
    IL_0284:  ldloc.0
    IL_0285:  ldfld      int32 Game.ManageContentScreen/ListItem::UseCount
    IL_028a:  box        [System.Runtime]System.Int32
    IL_028f:  stelem.ref
    IL_0290:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0295:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_029a:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_029f:  br         IL_03a8

    IL_02a4:  ldloc.0
    IL_02a5:  ldfld      valuetype Game.ExternalContentType Game.ManageContentScreen/ListItem::Type
    IL_02aa:  ldc.i4.5
    IL_02ab:  bne.un     IL_039d

    IL_02b0:  ldstr      "Widgets/FurniturePackItem"
    IL_02b5:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_02ba:  stloc.s    V_12
    IL_02bc:  ldarg.0
    IL_02bd:  ldloc.s    V_12
    IL_02bf:  ldnull
    IL_02c0:  call       class Game.Widget Game.WidgetsManager::LoadWidget(object,
                                                                           class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                           class Game.ContainerWidget)
    IL_02c5:  castclass  Game.ContainerWidget
    IL_02ca:  stloc.1
    IL_02cb:  ldloc.1
    IL_02cc:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_02d1:  ldstr      "FurniturePackItem.Text"
    IL_02d6:  ldc.i4.1
    IL_02d7:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_02dc:  stloc.s    V_13
    IL_02de:  ldloc.1
    IL_02df:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_02e4:  ldstr      "FurniturePackItem.Details"
    IL_02e9:  ldc.i4.1
    IL_02ea:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_02ef:  stloc.s    V_14
    IL_02f1:  ldloc.s    V_13
    IL_02f3:  ldloc.0
    IL_02f4:  ldfld      string Game.ManageContentScreen/ListItem::DisplayName
    IL_02f9:  callvirt   instance void Game.LabelWidget::set_Text(string)
    .try
    {
      IL_02fe:  ldnull
      IL_02ff:  ldloc.0
      IL_0300:  ldfld      string Game.ManageContentScreen/ListItem::Name
      IL_0305:  call       class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> Game.FurniturePacksManager::LoadFurniturePack(class Game.SubsystemTerrain,
                                                                                                                                                                 string)
      IL_030a:  stloc.s    V_15
      IL_030c:  ldloc.s    V_14
      IL_030e:  ldstr      "Furniture Pack | {0} designs(s)"
      IL_0313:  ldc.i4.1
      IL_0314:  newarr     [System.Runtime]System.Object
      IL_0319:  dup
      IL_031a:  ldc.i4.0
      IL_031b:  ldloc.s    V_15
      IL_031d:  call       class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>> Game.FurnitureDesign::ListChains(class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.FurnitureDesign>)
      IL_0322:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>>::get_Count()
      IL_0327:  box        [System.Runtime]System.Int32
      IL_032c:  stelem.ref
      IL_032d:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_0332:  callvirt   instance void Game.LabelWidget::set_Text(string)
      IL_0337:  ldloc.0
      IL_0338:  ldfld      string Game.ManageContentScreen/ListItem::Name
      IL_033d:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
      IL_0342:  brtrue.s   IL_0379

      IL_0344:  ldloc.s    V_14
      IL_0346:  dup
      IL_0347:  callvirt   instance string Game.LabelWidget::get_Text()
      IL_034c:  ldstr      " | {0:dd MMM yyyy HH:mm}"
      IL_0351:  ldc.i4.1
      IL_0352:  newarr     [System.Runtime]System.Object
      IL_0357:  dup
      IL_0358:  ldc.i4.0
      IL_0359:  ldloc.0
      IL_035a:  ldflda     valuetype [System.Runtime]System.DateTime Game.ManageContentScreen/ListItem::CreationTime
      IL_035f:  call       instance valuetype [System.Runtime]System.DateTime [System.Runtime]System.DateTime::ToLocalTime()
      IL_0364:  box        [System.Runtime]System.DateTime
      IL_0369:  stelem.ref
      IL_036a:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_036f:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string)
      IL_0374:  callvirt   instance void Game.LabelWidget::set_Text(string)
      IL_0379:  leave.s    IL_03a8

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_037b:  stloc.s    V_16
      IL_037d:  ldloc.s    V_14
      IL_037f:  dup
      IL_0380:  callvirt   instance string Game.LabelWidget::get_Text()
      IL_0385:  ldstr      "Error: "
      IL_038a:  ldloc.s    V_16
      IL_038c:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_0391:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string,
                                                                        string)
      IL_0396:  callvirt   instance void Game.LabelWidget::set_Text(string)
      IL_039b:  leave.s    IL_03a8

    }  // end handler
    IL_039d:  ldstr      "Invalid item type."
    IL_03a2:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_03a7:  throw

    IL_03a8:  ldloc.1
    IL_03a9:  ret
  } // end of method ManageContentScreen::'<.ctor>b__9_0'

  .method private hidebysig instance void 
          '<Update>b__12_2'(object item) cil managed
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
  } // end of method ManageContentScreen::'<Update>b__12_2'

} // end of class Game.ManageContentScreen