.class public auto ansi beforefieldinit Game.CommunityContentScreen
       extends Game.Screen
{
  .class auto ansi sealed nested private Order
         extends [System.Runtime]System.Enum
  {
    .field public specialname rtspecialname int32 value__
    .field public static literal valuetype Game.CommunityContentScreen/Order ByRank = int32(0x00000000)
    .field public static literal valuetype Game.CommunityContentScreen/Order ByTime = int32(0x00000001)
  } // end of class Order

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.CommunityContentScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<object,string> '<>9__16_0'
    .field public static class [System.Runtime]System.Func`2<valuetype Game.ExternalContentType,bool> '<>9__16_2'
    .field public static class [System.Runtime]System.Func`2<object,string> '<>9__16_3'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.CommunityContentScreen/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.CommunityContentScreen/'<>c' Game.CommunityContentScreen/'<>c'::'<>9'
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
            '<Update>b__16_0'(object item) cil managed
    {
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  unbox.any  Game.CommunityContentScreen/Order
      IL_0006:  call       string Game.CommunityContentScreen::GetOrderDisplayName(valuetype Game.CommunityContentScreen/Order)
      IL_000b:  ret
    } // end of method '<>c'::'<Update>b__16_0'

    .method assembly hidebysig instance bool 
            '<Update>b__16_2'(valuetype Game.ExternalContentType t) cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  call       bool Game.ExternalContentManager::IsEntryTypeDownloadSupported(valuetype Game.ExternalContentType)
      IL_0006:  ret
    } // end of method '<>c'::'<Update>b__16_2'

    .method assembly hidebysig instance string 
            '<Update>b__16_3'(object item) cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  call       string Game.CommunityContentScreen::GetFilterDisplayName(object)
      IL_0006:  ret
    } // end of method '<>c'::'<Update>b__16_3'

  } // end of class '<>c'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass17_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class Game.CancellableBusyDialog busyDialog
    .field public string cacheKey
    .field public class Game.CommunityContentScreen '<>4__this'
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
            '<PopulateList>b__0'(class [System.Collections]System.Collections.Generic.List`1<class Game.CommunityContentEntry> list,
                                 string nextCursor) cil managed
    {
      // 代码大小       307 (0x133)
      .maxstack  3
      .locals init (valuetype [Engine]Engine.ReadOnlyList`1<object> V_0,
               valuetype [Engine]Engine.ReadOnlyList`1<object> V_1,
               valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.CommunityContentEntry> V_2,
               class Game.CommunityContentEntry V_3)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CancellableBusyDialog Game.CommunityContentScreen/'<>c__DisplayClass17_0'::busyDialog
      IL_0006:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
      IL_000b:  ldarg.0
      IL_000c:  ldfld      class Game.CommunityContentScreen Game.CommunityContentScreen/'<>c__DisplayClass17_0'::'<>4__this'
      IL_0011:  call       float64 [Engine]Engine.Time::get_RealTime()
      IL_0016:  ldc.r8     300.
      IL_001f:  add
      IL_0020:  stfld      float64 Game.CommunityContentScreen::m_contentExpiryTime
      IL_0025:  br.s       IL_0051

      IL_0027:  ldarg.0
      IL_0028:  ldfld      class Game.CommunityContentScreen Game.CommunityContentScreen/'<>c__DisplayClass17_0'::'<>4__this'
      IL_002d:  ldfld      class Game.ListPanelWidget Game.CommunityContentScreen::m_listPanel
      IL_0032:  ldarg.0
      IL_0033:  ldfld      class Game.CommunityContentScreen Game.CommunityContentScreen/'<>c__DisplayClass17_0'::'<>4__this'
      IL_0038:  ldfld      class Game.ListPanelWidget Game.CommunityContentScreen::m_listPanel
      IL_003d:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<object> Game.ListPanelWidget::get_Items()
      IL_0042:  stloc.0
      IL_0043:  ldloca.s   V_0
      IL_0045:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<object>::get_Count()
      IL_004a:  ldc.i4.1
      IL_004b:  sub
      IL_004c:  callvirt   instance void Game.ListPanelWidget::RemoveItemAt(int32)
      IL_0051:  ldarg.0
      IL_0052:  ldfld      class Game.CommunityContentScreen Game.CommunityContentScreen/'<>c__DisplayClass17_0'::'<>4__this'
      IL_0057:  ldfld      class Game.ListPanelWidget Game.CommunityContentScreen::m_listPanel
      IL_005c:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<object> Game.ListPanelWidget::get_Items()
      IL_0061:  stloc.0
      IL_0062:  ldloca.s   V_0
      IL_0064:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<object>::get_Count()
      IL_0069:  ldc.i4.0
      IL_006a:  ble.s      IL_00a5

      IL_006c:  ldarg.0
      IL_006d:  ldfld      class Game.CommunityContentScreen Game.CommunityContentScreen/'<>c__DisplayClass17_0'::'<>4__this'
      IL_0072:  ldfld      class Game.ListPanelWidget Game.CommunityContentScreen::m_listPanel
      IL_0077:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<object> Game.ListPanelWidget::get_Items()
      IL_007c:  stloc.0
      IL_007d:  ldloca.s   V_0
      IL_007f:  ldarg.0
      IL_0080:  ldfld      class Game.CommunityContentScreen Game.CommunityContentScreen/'<>c__DisplayClass17_0'::'<>4__this'
      IL_0085:  ldfld      class Game.ListPanelWidget Game.CommunityContentScreen::m_listPanel
      IL_008a:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<object> Game.ListPanelWidget::get_Items()
      IL_008f:  stloc.1
      IL_0090:  ldloca.s   V_1
      IL_0092:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<object>::get_Count()
      IL_0097:  ldc.i4.1
      IL_0098:  sub
      IL_0099:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<object>::get_Item(int32)
      IL_009e:  isinst     Game.CommunityContentEntry
      IL_00a3:  brfalse.s  IL_0027

      IL_00a5:  ldarg.1
      IL_00a6:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.CommunityContentEntry>::GetEnumerator()
      IL_00ab:  stloc.2
      .try
      {
        IL_00ac:  br.s       IL_00c7

        IL_00ae:  ldloca.s   V_2
        IL_00b0:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.CommunityContentEntry>::get_Current()
        IL_00b5:  stloc.3
        IL_00b6:  ldarg.0
        IL_00b7:  ldfld      class Game.CommunityContentScreen Game.CommunityContentScreen/'<>c__DisplayClass17_0'::'<>4__this'
        IL_00bc:  ldfld      class Game.ListPanelWidget Game.CommunityContentScreen::m_listPanel
        IL_00c1:  ldloc.3
        IL_00c2:  callvirt   instance void Game.ListPanelWidget::AddItem(object)
        IL_00c7:  ldloca.s   V_2
        IL_00c9:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.CommunityContentEntry>::MoveNext()
        IL_00ce:  brtrue.s   IL_00ae

        IL_00d0:  leave.s    IL_00e0

      }  // end .try
      finally
      {
        IL_00d2:  ldloca.s   V_2
        IL_00d4:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.CommunityContentEntry>
        IL_00da:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_00df:  endfinally
      }  // end handler
      IL_00e0:  ldarg.1
      IL_00e1:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.CommunityContentEntry>::get_Count()
      IL_00e6:  ldc.i4.0
      IL_00e7:  ble.s      IL_0102

      IL_00e9:  ldarg.2
      IL_00ea:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
      IL_00ef:  brtrue.s   IL_0102

      IL_00f1:  ldarg.0
      IL_00f2:  ldfld      class Game.CommunityContentScreen Game.CommunityContentScreen/'<>c__DisplayClass17_0'::'<>4__this'
      IL_00f7:  ldfld      class Game.ListPanelWidget Game.CommunityContentScreen::m_listPanel
      IL_00fc:  ldarg.2
      IL_00fd:  callvirt   instance void Game.ListPanelWidget::AddItem(object)
      IL_0102:  ldarg.0
      IL_0103:  ldfld      class Game.CommunityContentScreen Game.CommunityContentScreen/'<>c__DisplayClass17_0'::'<>4__this'
      IL_0108:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [System.Runtime]System.Collections.Generic.IEnumerable`1<object>> Game.CommunityContentScreen::m_itemsCache
      IL_010d:  ldarg.0
      IL_010e:  ldfld      string Game.CommunityContentScreen/'<>c__DisplayClass17_0'::cacheKey
      IL_0113:  ldarg.0
      IL_0114:  ldfld      class Game.CommunityContentScreen Game.CommunityContentScreen/'<>c__DisplayClass17_0'::'<>4__this'
      IL_0119:  ldfld      class Game.ListPanelWidget Game.CommunityContentScreen::m_listPanel
      IL_011e:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<object> Game.ListPanelWidget::get_Items()
      IL_0123:  box        valuetype [Engine]Engine.ReadOnlyList`1<object>
      IL_0128:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<object>::.ctor(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
      IL_012d:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [System.Runtime]System.Collections.Generic.IEnumerable`1<object>>::set_Item(!0,
                                                                                                                                                                                                    !1)
      IL_0132:  ret
    } // end of method '<>c__DisplayClass17_0'::'<PopulateList>b__0'

    .method assembly hidebysig instance void 
            '<PopulateList>b__1'(class [System.Runtime]System.Exception 'error') cil managed
    {
      // 代码大小       41 (0x29)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CancellableBusyDialog Game.CommunityContentScreen/'<>c__DisplayClass17_0'::busyDialog
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
    } // end of method '<>c__DisplayClass17_0'::'<PopulateList>b__1'

  } // end of class '<>c__DisplayClass17_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass18_0'
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
    } // end of method '<>c__DisplayClass18_0'::.ctor

    .method assembly hidebysig instance void 
            '<DownloadEntry>b__0'() cil managed
    {
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CancellableBusyDialog Game.CommunityContentScreen/'<>c__DisplayClass18_0'::busyDialog
      IL_0006:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
      IL_000b:  ret
    } // end of method '<>c__DisplayClass18_0'::'<DownloadEntry>b__0'

    .method assembly hidebysig instance void 
            '<DownloadEntry>b__1'(class [System.Runtime]System.Exception 'error') cil managed
    {
      // 代码大小       41 (0x29)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CancellableBusyDialog Game.CommunityContentScreen/'<>c__DisplayClass18_0'::busyDialog
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
    } // end of method '<>c__DisplayClass18_0'::'<DownloadEntry>b__1'

  } // end of class '<>c__DisplayClass18_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass19_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class Game.CommunityContentEntry entry
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass19_0'::.ctor

    .method assembly hidebysig instance void 
            '<DeleteEntry>b__0'(valuetype Game.MessageDialogButton button) cil managed
    {
      // 代码大小       125 (0x7d)
      .maxstack  6
      .locals init (class Game.CommunityContentScreen/'<>c__DisplayClass19_1' V_0)
      IL_0000:  ldarg.1
      IL_0001:  brtrue.s   IL_007c

      IL_0003:  newobj     instance void Game.CommunityContentScreen/'<>c__DisplayClass19_1'::.ctor()
      IL_0008:  stloc.0
      IL_0009:  ldloc.0
      IL_000a:  ldstr      "Deleting {0}"
      IL_000f:  ldc.i4.1
      IL_0010:  newarr     [System.Runtime]System.Object
      IL_0015:  dup
      IL_0016:  ldc.i4.0
      IL_0017:  ldarg.0
      IL_0018:  ldfld      class Game.CommunityContentEntry Game.CommunityContentScreen/'<>c__DisplayClass19_0'::entry
      IL_001d:  ldfld      string Game.CommunityContentEntry::Name
      IL_0022:  stelem.ref
      IL_0023:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_0028:  ldc.i4.0
      IL_0029:  newobj     instance void Game.CancellableBusyDialog::.ctor(string,
                                                                           bool)
      IL_002e:  stfld      class Game.CancellableBusyDialog Game.CommunityContentScreen/'<>c__DisplayClass19_1'::busyDialog
      IL_0033:  ldnull
      IL_0034:  ldloc.0
      IL_0035:  ldfld      class Game.CancellableBusyDialog Game.CommunityContentScreen/'<>c__DisplayClass19_1'::busyDialog
      IL_003a:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                                class Game.Dialog)
      IL_003f:  ldarg.0
      IL_0040:  ldfld      class Game.CommunityContentEntry Game.CommunityContentScreen/'<>c__DisplayClass19_0'::entry
      IL_0045:  ldfld      string Game.CommunityContentEntry::Address
      IL_004a:  call       class Game.UserInfo Game.UserManager::get_ActiveUser()
      IL_004f:  ldfld      string Game.UserInfo::UniqueId
      IL_0054:  ldloc.0
      IL_0055:  ldfld      class Game.CancellableBusyDialog Game.CommunityContentScreen/'<>c__DisplayClass19_1'::busyDialog
      IL_005a:  callvirt   instance class Game.CancellableProgress Game.CancellableBusyDialog::get_Progress()
      IL_005f:  ldloc.0
      IL_0060:  ldftn      instance void Game.CommunityContentScreen/'<>c__DisplayClass19_1'::'<DeleteEntry>b__1'()
      IL_0066:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                              native int)
      IL_006b:  ldloc.0
      IL_006c:  ldftn      instance void Game.CommunityContentScreen/'<>c__DisplayClass19_1'::'<DeleteEntry>b__2'(class [System.Runtime]System.Exception)
      IL_0072:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                              native int)
      IL_0077:  call       void Game.CommunityContentManager::Delete(string,
                                                                     string,
                                                                     class Game.CancellableProgress,
                                                                     class [System.Runtime]System.Action,
                                                                     class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
      IL_007c:  ret
    } // end of method '<>c__DisplayClass19_0'::'<DeleteEntry>b__0'

  } // end of class '<>c__DisplayClass19_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass19_1'
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
    } // end of method '<>c__DisplayClass19_1'::.ctor

    .method assembly hidebysig instance void 
            '<DeleteEntry>b__1'() cil managed
    {
      // 代码大小       40 (0x28)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CancellableBusyDialog Game.CommunityContentScreen/'<>c__DisplayClass19_1'::busyDialog
      IL_0006:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
      IL_000b:  ldnull
      IL_000c:  ldstr      "Link Deleted"
      IL_0011:  ldstr      "It will stop appearing in the listings in a few mi"
      + "nutes."
      IL_0016:  ldstr      "OK"
      IL_001b:  ldnull
      IL_001c:  ldnull
      IL_001d:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_0022:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                                class Game.Dialog)
      IL_0027:  ret
    } // end of method '<>c__DisplayClass19_1'::'<DeleteEntry>b__1'

    .method assembly hidebysig instance void 
            '<DeleteEntry>b__2'(class [System.Runtime]System.Exception 'error') cil managed
    {
      // 代码大小       41 (0x29)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CancellableBusyDialog Game.CommunityContentScreen/'<>c__DisplayClass19_1'::busyDialog
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
    } // end of method '<>c__DisplayClass19_1'::'<DeleteEntry>b__2'

  } // end of class '<>c__DisplayClass19_1'

  .field private class Game.ListPanelWidget m_listPanel
  .field private class Game.LinkWidget m_moreLink
  .field private class Game.LabelWidget m_orderLabel
  .field private class Game.ButtonWidget m_changeOrderButton
  .field private class Game.LabelWidget m_filterLabel
  .field private class Game.ButtonWidget m_changeFilterButton
  .field private class Game.ButtonWidget m_downloadButton
  .field private class Game.ButtonWidget m_deleteButton
  .field private class Game.ButtonWidget m_moreOptionsButton
  .field private object m_filter
  .field private valuetype Game.CommunityContentScreen/Order m_order
  .field private float64 m_contentExpiryTime
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [System.Runtime]System.Collections.Generic.IEnumerable`1<object>> m_itemsCache
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       267 (0x10b)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [System.Runtime]System.Collections.Generic.IEnumerable`1<object>>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [System.Runtime]System.Collections.Generic.IEnumerable`1<object>> Game.CommunityContentScreen::m_itemsCache
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.Screen::.ctor()
    IL_0011:  ldstr      "Screens/CommunityContentScreen"
    IL_0016:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_001b:  stloc.0
    IL_001c:  ldarg.0
    IL_001d:  ldarg.0
    IL_001e:  ldloc.0
    IL_001f:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_002b:  ldstr      "List"
    IL_0030:  ldc.i4.1
    IL_0031:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ListPanelWidget>(string,
                                                                                         bool)
    IL_0036:  stfld      class Game.ListPanelWidget Game.CommunityContentScreen::m_listPanel
    IL_003b:  ldarg.0
    IL_003c:  ldarg.0
    IL_003d:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0042:  ldstr      "Order"
    IL_0047:  ldc.i4.1
    IL_0048:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_004d:  stfld      class Game.LabelWidget Game.CommunityContentScreen::m_orderLabel
    IL_0052:  ldarg.0
    IL_0053:  ldarg.0
    IL_0054:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0059:  ldstr      "ChangeOrder"
    IL_005e:  ldc.i4.1
    IL_005f:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0064:  stfld      class Game.ButtonWidget Game.CommunityContentScreen::m_changeOrderButton
    IL_0069:  ldarg.0
    IL_006a:  ldarg.0
    IL_006b:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0070:  ldstr      "Filter"
    IL_0075:  ldc.i4.1
    IL_0076:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_007b:  stfld      class Game.LabelWidget Game.CommunityContentScreen::m_filterLabel
    IL_0080:  ldarg.0
    IL_0081:  ldarg.0
    IL_0082:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0087:  ldstr      "ChangeFilter"
    IL_008c:  ldc.i4.1
    IL_008d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0092:  stfld      class Game.ButtonWidget Game.CommunityContentScreen::m_changeFilterButton
    IL_0097:  ldarg.0
    IL_0098:  ldarg.0
    IL_0099:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_009e:  ldstr      "Download"
    IL_00a3:  ldc.i4.1
    IL_00a4:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_00a9:  stfld      class Game.ButtonWidget Game.CommunityContentScreen::m_downloadButton
    IL_00ae:  ldarg.0
    IL_00af:  ldarg.0
    IL_00b0:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00b5:  ldstr      "Delete"
    IL_00ba:  ldc.i4.1
    IL_00bb:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_00c0:  stfld      class Game.ButtonWidget Game.CommunityContentScreen::m_deleteButton
    IL_00c5:  ldarg.0
    IL_00c6:  ldarg.0
    IL_00c7:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00cc:  ldstr      "MoreOptions"
    IL_00d1:  ldc.i4.1
    IL_00d2:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_00d7:  stfld      class Game.ButtonWidget Game.CommunityContentScreen::m_moreOptionsButton
    IL_00dc:  ldarg.0
    IL_00dd:  ldfld      class Game.ListPanelWidget Game.CommunityContentScreen::m_listPanel
    IL_00e2:  ldarg.0
    IL_00e3:  ldftn      instance class Game.Widget Game.CommunityContentScreen::'<.ctor>b__14_0'(object)
    IL_00e9:  newobj     instance void class [System.Runtime]System.Func`2<object,class Game.Widget>::.ctor(object,
                                                                                                            native int)
    IL_00ee:  callvirt   instance void Game.ListPanelWidget::set_ItemWidgetFactory(class [System.Runtime]System.Func`2<object,class Game.Widget>)
    IL_00f3:  ldarg.0
    IL_00f4:  ldfld      class Game.ListPanelWidget Game.CommunityContentScreen::m_listPanel
    IL_00f9:  ldarg.0
    IL_00fa:  ldftn      instance void Game.CommunityContentScreen::'<.ctor>b__14_1'(class Game.ListPanelWidget)
    IL_0100:  newobj     instance void class [System.Runtime]System.Action`1<class Game.ListPanelWidget>::.ctor(object,
                                                                                                                native int)
    IL_0105:  callvirt   instance void Game.ListPanelWidget::add_SelectionChanged(class [System.Runtime]System.Action`1<class Game.ListPanelWidget>)
    IL_010a:  ret
  } // end of method CommunityContentScreen::.ctor

  .method public hidebysig virtual instance void 
          Enter(object[] parameters) cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0006:  stfld      object Game.CommunityContentScreen::m_filter
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.0
    IL_000d:  stfld      valuetype Game.CommunityContentScreen/Order Game.CommunityContentScreen::m_order
    IL_0012:  ldarg.0
    IL_0013:  ldnull
    IL_0014:  call       instance void Game.CommunityContentScreen::PopulateList(string)
    IL_0019:  ret
  } // end of method CommunityContentScreen::Enter

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       720 (0x2d0)
    .maxstack  7
    .locals init (class Game.CommunityContentEntry V_0,
             class [System.Collections]System.Collections.Generic.List`1<valuetype Game.CommunityContentScreen/Order> V_1,
             class [System.Collections]System.Collections.Generic.List`1<object> V_2,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype Game.ExternalContentType> V_3,
             valuetype Game.ExternalContentType V_4,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ListPanelWidget Game.CommunityContentScreen::m_listPanel
    IL_0006:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_000b:  isinst     Game.CommunityContentEntry
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  ldfld      class Game.ButtonWidget Game.CommunityContentScreen::m_downloadButton
    IL_0017:  ldloc.0
    IL_0018:  ldnull
    IL_0019:  cgt.un
    IL_001b:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0020:  ldarg.0
    IL_0021:  ldfld      class Game.ButtonWidget Game.CommunityContentScreen::m_deleteButton
    IL_0026:  call       class Game.UserInfo Game.UserManager::get_ActiveUser()
    IL_002b:  brfalse.s  IL_0047

    IL_002d:  ldloc.0
    IL_002e:  brfalse.s  IL_0047

    IL_0030:  ldloc.0
    IL_0031:  ldfld      string Game.CommunityContentEntry::UserId
    IL_0036:  call       class Game.UserInfo Game.UserManager::get_ActiveUser()
    IL_003b:  ldfld      string Game.UserInfo::UniqueId
    IL_0040:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_0045:  br.s       IL_0048

    IL_0047:  ldc.i4.0
    IL_0048:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_004d:  ldarg.0
    IL_004e:  ldfld      class Game.LabelWidget Game.CommunityContentScreen::m_orderLabel
    IL_0053:  ldarg.0
    IL_0054:  ldfld      valuetype Game.CommunityContentScreen/Order Game.CommunityContentScreen::m_order
    IL_0059:  call       string Game.CommunityContentScreen::GetOrderDisplayName(valuetype Game.CommunityContentScreen/Order)
    IL_005e:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0063:  ldarg.0
    IL_0064:  ldfld      class Game.LabelWidget Game.CommunityContentScreen::m_filterLabel
    IL_0069:  ldarg.0
    IL_006a:  ldfld      object Game.CommunityContentScreen::m_filter
    IL_006f:  call       string Game.CommunityContentScreen::GetFilterDisplayName(object)
    IL_0074:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0079:  ldarg.0
    IL_007a:  ldfld      class Game.ButtonWidget Game.CommunityContentScreen::m_changeOrderButton
    IL_007f:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0084:  brfalse.s  IL_00e1

    IL_0086:  ldtoken    Game.CommunityContentScreen/Order
    IL_008b:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0090:  call       class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.EnumUtils::GetEnumValues(class [System.Runtime]System.Type)
    IL_0095:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Cast<valuetype Game.CommunityContentScreen/Order>(class [System.Runtime]System.Collections.IEnumerable)
    IL_009a:  call       class [System.Collections]System.Collections.Generic.List`1<!!0> [System.Linq]System.Linq.Enumerable::ToList<valuetype Game.CommunityContentScreen/Order>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_009f:  stloc.1
    IL_00a0:  ldnull
    IL_00a1:  ldstr      "Select Sort Order"
    IL_00a6:  ldloc.1
    IL_00a7:  ldc.r4     60.
    IL_00ac:  ldsfld     class [System.Runtime]System.Func`2<object,string> Game.CommunityContentScreen/'<>c'::'<>9__16_0'
    IL_00b1:  dup
    IL_00b2:  brtrue.s   IL_00cb

    IL_00b4:  pop
    IL_00b5:  ldsfld     class Game.CommunityContentScreen/'<>c' Game.CommunityContentScreen/'<>c'::'<>9'
    IL_00ba:  ldftn      instance string Game.CommunityContentScreen/'<>c'::'<Update>b__16_0'(object)
    IL_00c0:  newobj     instance void class [System.Runtime]System.Func`2<object,string>::.ctor(object,
                                                                                                 native int)
    IL_00c5:  dup
    IL_00c6:  stsfld     class [System.Runtime]System.Func`2<object,string> Game.CommunityContentScreen/'<>c'::'<>9__16_0'
    IL_00cb:  ldarg.0
    IL_00cc:  ldftn      instance void Game.CommunityContentScreen::'<Update>b__16_1'(object)
    IL_00d2:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_00d7:  newobj     instance void Game.ListSelectionDialog::.ctor(string,
                                                                       class [System.Runtime]System.Collections.IEnumerable,
                                                                       float32,
                                                                       class [System.Runtime]System.Func`2<object,string>,
                                                                       class [System.Runtime]System.Action`1<object>)
    IL_00dc:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_00e1:  ldarg.0
    IL_00e2:  ldfld      class Game.ButtonWidget Game.CommunityContentScreen::m_changeFilterButton
    IL_00e7:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00ec:  brfalse    IL_01c3

    IL_00f1:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<object>::.ctor()
    IL_00f6:  stloc.2
    IL_00f7:  ldloc.2
    IL_00f8:  ldsfld     string [System.Runtime]System.String::Empty
    IL_00fd:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<object>::Add(!0)
    IL_0102:  ldtoken    Game.ExternalContentType
    IL_0107:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_010c:  call       class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.EnumUtils::GetEnumValues(class [System.Runtime]System.Type)
    IL_0111:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Cast<valuetype Game.ExternalContentType>(class [System.Runtime]System.Collections.IEnumerable)
    IL_0116:  ldsfld     class [System.Runtime]System.Func`2<valuetype Game.ExternalContentType,bool> Game.CommunityContentScreen/'<>c'::'<>9__16_2'
    IL_011b:  dup
    IL_011c:  brtrue.s   IL_0135

    IL_011e:  pop
    IL_011f:  ldsfld     class Game.CommunityContentScreen/'<>c' Game.CommunityContentScreen/'<>c'::'<>9'
    IL_0124:  ldftn      instance bool Game.CommunityContentScreen/'<>c'::'<Update>b__16_2'(valuetype Game.ExternalContentType)
    IL_012a:  newobj     instance void class [System.Runtime]System.Func`2<valuetype Game.ExternalContentType,bool>::.ctor(object,
                                                                                                                           native int)
    IL_012f:  dup
    IL_0130:  stsfld     class [System.Runtime]System.Func`2<valuetype Game.ExternalContentType,bool> Game.CommunityContentScreen/'<>c'::'<>9__16_2'
    IL_0135:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<valuetype Game.ExternalContentType>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                            class [System.Runtime]System.Func`2<!!0,bool>)
    IL_013a:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype Game.ExternalContentType>::GetEnumerator()
    IL_013f:  stloc.3
    .try
    {
      IL_0140:  br.s       IL_0157

      IL_0142:  ldloc.3
      IL_0143:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype Game.ExternalContentType>::get_Current()
      IL_0148:  stloc.s    V_4
      IL_014a:  ldloc.2
      IL_014b:  ldloc.s    V_4
      IL_014d:  box        Game.ExternalContentType
      IL_0152:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<object>::Add(!0)
      IL_0157:  ldloc.3
      IL_0158:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_015d:  brtrue.s   IL_0142

      IL_015f:  leave.s    IL_016b

    }  // end .try
    finally
    {
      IL_0161:  ldloc.3
      IL_0162:  brfalse.s  IL_016a

      IL_0164:  ldloc.3
      IL_0165:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_016a:  endfinally
    }  // end handler
    IL_016b:  call       class Game.UserInfo Game.UserManager::get_ActiveUser()
    IL_0170:  brfalse.s  IL_0182

    IL_0172:  ldloc.2
    IL_0173:  call       class Game.UserInfo Game.UserManager::get_ActiveUser()
    IL_0178:  ldfld      string Game.UserInfo::UniqueId
    IL_017d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<object>::Add(!0)
    IL_0182:  ldnull
    IL_0183:  ldstr      "Select Items Filter"
    IL_0188:  ldloc.2
    IL_0189:  ldc.r4     60.
    IL_018e:  ldsfld     class [System.Runtime]System.Func`2<object,string> Game.CommunityContentScreen/'<>c'::'<>9__16_3'
    IL_0193:  dup
    IL_0194:  brtrue.s   IL_01ad

    IL_0196:  pop
    IL_0197:  ldsfld     class Game.CommunityContentScreen/'<>c' Game.CommunityContentScreen/'<>c'::'<>9'
    IL_019c:  ldftn      instance string Game.CommunityContentScreen/'<>c'::'<Update>b__16_3'(object)
    IL_01a2:  newobj     instance void class [System.Runtime]System.Func`2<object,string>::.ctor(object,
                                                                                                 native int)
    IL_01a7:  dup
    IL_01a8:  stsfld     class [System.Runtime]System.Func`2<object,string> Game.CommunityContentScreen/'<>c'::'<>9__16_3'
    IL_01ad:  ldarg.0
    IL_01ae:  ldftn      instance void Game.CommunityContentScreen::'<Update>b__16_4'(object)
    IL_01b4:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_01b9:  newobj     instance void Game.ListSelectionDialog::.ctor(string,
                                                                       class [System.Runtime]System.Collections.IEnumerable,
                                                                       float32,
                                                                       class [System.Runtime]System.Func`2<object,string>,
                                                                       class [System.Runtime]System.Action`1<object>)
    IL_01be:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_01c3:  ldarg.0
    IL_01c4:  ldfld      class Game.ButtonWidget Game.CommunityContentScreen::m_downloadButton
    IL_01c9:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_01ce:  brfalse.s  IL_01da

    IL_01d0:  ldloc.0
    IL_01d1:  brfalse.s  IL_01da

    IL_01d3:  ldarg.0
    IL_01d4:  ldloc.0
    IL_01d5:  call       instance void Game.CommunityContentScreen::DownloadEntry(class Game.CommunityContentEntry)
    IL_01da:  ldarg.0
    IL_01db:  ldfld      class Game.ButtonWidget Game.CommunityContentScreen::m_deleteButton
    IL_01e0:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_01e5:  brfalse.s  IL_01f1

    IL_01e7:  ldloc.0
    IL_01e8:  brfalse.s  IL_01f1

    IL_01ea:  ldarg.0
    IL_01eb:  ldloc.0
    IL_01ec:  call       instance void Game.CommunityContentScreen::DeleteEntry(class Game.CommunityContentEntry)
    IL_01f1:  ldarg.0
    IL_01f2:  ldfld      class Game.ButtonWidget Game.CommunityContentScreen::m_moreOptionsButton
    IL_01f7:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_01fc:  brfalse.s  IL_0209

    IL_01fe:  ldnull
    IL_01ff:  newobj     instance void Game.MoreCommunityLinkDialog::.ctor()
    IL_0204:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_0209:  ldarg.0
    IL_020a:  ldfld      class Game.LinkWidget Game.CommunityContentScreen::m_moreLink
    IL_020f:  brfalse.s  IL_0234

    IL_0211:  ldarg.0
    IL_0212:  ldfld      class Game.LinkWidget Game.CommunityContentScreen::m_moreLink
    IL_0217:  callvirt   instance bool Game.LinkWidget::get_IsClicked()
    IL_021c:  brfalse.s  IL_0234

    IL_021e:  ldarg.0
    IL_021f:  ldarg.0
    IL_0220:  ldfld      class Game.LinkWidget Game.CommunityContentScreen::m_moreLink
    IL_0225:  callvirt   instance object Game.Widget::get_Tag()
    IL_022a:  castclass  [System.Runtime]System.String
    IL_022f:  call       instance void Game.CommunityContentScreen::PopulateList(string)
    IL_0234:  ldarg.0
    IL_0235:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_023a:  callvirt   instance bool Game.WidgetInput::get_Back()
    IL_023f:  brtrue.s   IL_0259

    IL_0241:  ldarg.0
    IL_0242:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0247:  ldstr      "TopBar.Back"
    IL_024c:  ldc.i4.1
    IL_024d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.BevelledButtonWidget>(string,
                                                                                              bool)
    IL_0252:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0257:  brfalse.s  IL_0269

    IL_0259:  ldstr      "Content"
    IL_025e:  ldc.i4.0
    IL_025f:  newarr     [System.Runtime]System.Object
    IL_0264:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_0269:  ldarg.0
    IL_026a:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_026f:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Hold()
    IL_0274:  stloc.s    V_5
    IL_0276:  ldloca.s   V_5
    IL_0278:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_027d:  brfalse.s  IL_02cf

    IL_027f:  ldarg.0
    IL_0280:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0285:  callvirt   instance float32 Game.WidgetInput::get_HoldTime()
    IL_028a:  ldc.r4     2.
    IL_028f:  ble.un.s   IL_02cf

    IL_0291:  ldarg.0
    IL_0292:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0297:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Hold()
    IL_029c:  stloc.s    V_5
    IL_029e:  ldloca.s   V_5
    IL_02a0:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_02a5:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_02aa:  ldc.r4     20.
    IL_02af:  bge.un.s   IL_02cf

    IL_02b1:  ldarg.0
    IL_02b2:  ldc.r8     0.0
    IL_02bb:  stfld      float64 Game.CommunityContentScreen::m_contentExpiryTime
    IL_02c0:  ldc.i4     0xfa
    IL_02c5:  call       class [System.Threading.Tasks]System.Threading.Tasks.Task [System.Threading.Tasks]System.Threading.Tasks.Task::Delay(int32)
    IL_02ca:  callvirt   instance void [System.Threading.Tasks]System.Threading.Tasks.Task::Wait()
    IL_02cf:  ret
  } // end of method CommunityContentScreen::Update

  .method private hidebysig instance void 
          PopulateList(string cursor) cil managed
  {
    // 代码大小       417 (0x1a1)
    .maxstack  9
    .locals init (class Game.CommunityContentScreen/'<>c__DisplayClass17_0' V_0,
             string V_1,
             string V_2,
             string V_3,
             string V_4,
             class [System.Runtime]System.Collections.Generic.IEnumerable`1<object> V_5,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<object> V_6,
             object V_7)
    IL_0000:  newobj     instance void Game.CommunityContentScreen/'<>c__DisplayClass17_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class Game.CommunityContentScreen Game.CommunityContentScreen/'<>c__DisplayClass17_0'::'<>4__this'
    IL_000d:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0012:  stloc.1
    IL_0013:  call       valuetype Game.CommunityContentMode Game.SettingsManager::get_CommunityContentMode()
    IL_0018:  ldc.i4.1
    IL_0019:  bne.un.s   IL_0021

    IL_001b:  ldstr      "1"
    IL_0020:  stloc.1
    IL_0021:  call       valuetype Game.CommunityContentMode Game.SettingsManager::get_CommunityContentMode()
    IL_0026:  ldc.i4.2
    IL_0027:  bne.un.s   IL_002f

    IL_0029:  ldstr      "0"
    IL_002e:  stloc.1
    IL_002f:  ldarg.0
    IL_0030:  ldfld      object Game.CommunityContentScreen::m_filter
    IL_0035:  isinst     [System.Runtime]System.String
    IL_003a:  brtrue.s   IL_0043

    IL_003c:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0041:  br.s       IL_004e

    IL_0043:  ldarg.0
    IL_0044:  ldfld      object Game.CommunityContentScreen::m_filter
    IL_0049:  castclass  [System.Runtime]System.String
    IL_004e:  stloc.2
    IL_004f:  ldarg.0
    IL_0050:  ldfld      object Game.CommunityContentScreen::m_filter
    IL_0055:  isinst     Game.ExternalContentType
    IL_005a:  brtrue.s   IL_0063

    IL_005c:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0061:  br.s       IL_006e

    IL_0063:  ldarg.0
    IL_0064:  ldfld      object Game.CommunityContentScreen::m_filter
    IL_0069:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_006e:  stloc.3
    IL_006f:  ldarg.0
    IL_0070:  ldflda     valuetype Game.CommunityContentScreen/Order Game.CommunityContentScreen::m_order
    IL_0075:  constrained. Game.CommunityContentScreen/Order
    IL_007b:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0080:  stloc.s    V_4
    IL_0082:  ldloc.0
    IL_0083:  ldc.i4.7
    IL_0084:  newarr     [System.Runtime]System.String
    IL_0089:  dup
    IL_008a:  ldc.i4.0
    IL_008b:  ldloc.2
    IL_008c:  stelem.ref
    IL_008d:  dup
    IL_008e:  ldc.i4.1
    IL_008f:  ldstr      "\n"
    IL_0094:  stelem.ref
    IL_0095:  dup
    IL_0096:  ldc.i4.2
    IL_0097:  ldloc.3
    IL_0098:  stelem.ref
    IL_0099:  dup
    IL_009a:  ldc.i4.3
    IL_009b:  ldstr      "\n"
    IL_00a0:  stelem.ref
    IL_00a1:  dup
    IL_00a2:  ldc.i4.4
    IL_00a3:  ldloc.s    V_4
    IL_00a5:  stelem.ref
    IL_00a6:  dup
    IL_00a7:  ldc.i4.5
    IL_00a8:  ldstr      "\n"
    IL_00ad:  stelem.ref
    IL_00ae:  dup
    IL_00af:  ldc.i4.6
    IL_00b0:  ldloc.1
    IL_00b1:  stelem.ref
    IL_00b2:  call       string [System.Runtime]System.String::Concat(string[])
    IL_00b7:  stfld      string Game.CommunityContentScreen/'<>c__DisplayClass17_0'::cacheKey
    IL_00bc:  ldarg.0
    IL_00bd:  ldnull
    IL_00be:  stfld      class Game.LinkWidget Game.CommunityContentScreen::m_moreLink
    IL_00c3:  ldarg.1
    IL_00c4:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_00c9:  brfalse    IL_0155

    IL_00ce:  ldarg.0
    IL_00cf:  ldfld      class Game.ListPanelWidget Game.CommunityContentScreen::m_listPanel
    IL_00d4:  callvirt   instance void Game.ListPanelWidget::ClearItems()
    IL_00d9:  ldarg.0
    IL_00da:  ldfld      class Game.ListPanelWidget Game.CommunityContentScreen::m_listPanel
    IL_00df:  ldc.r4     0.0
    IL_00e4:  callvirt   instance void Game.ScrollPanelWidget::set_ScrollPosition(float32)
    IL_00e9:  ldarg.0
    IL_00ea:  ldfld      float64 Game.CommunityContentScreen::m_contentExpiryTime
    IL_00ef:  ldc.r8     0.0
    IL_00f8:  beq.s      IL_0155

    IL_00fa:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_00ff:  ldarg.0
    IL_0100:  ldfld      float64 Game.CommunityContentScreen::m_contentExpiryTime
    IL_0105:  bge.un.s   IL_0155

    IL_0107:  ldarg.0
    IL_0108:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [System.Runtime]System.Collections.Generic.IEnumerable`1<object>> Game.CommunityContentScreen::m_itemsCache
    IL_010d:  ldloc.0
    IL_010e:  ldfld      string Game.CommunityContentScreen/'<>c__DisplayClass17_0'::cacheKey
    IL_0113:  ldloca.s   V_5
    IL_0115:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [System.Runtime]System.Collections.Generic.IEnumerable`1<object>>::TryGetValue(!0,
                                                                                                                                                                                                     !1&)
    IL_011a:  brfalse.s  IL_0155

    IL_011c:  ldloc.s    V_5
    IL_011e:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<object>::GetEnumerator()
    IL_0123:  stloc.s    V_6
    .try
    {
      IL_0125:  br.s       IL_013d

      IL_0127:  ldloc.s    V_6
      IL_0129:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<object>::get_Current()
      IL_012e:  stloc.s    V_7
      IL_0130:  ldarg.0
      IL_0131:  ldfld      class Game.ListPanelWidget Game.CommunityContentScreen::m_listPanel
      IL_0136:  ldloc.s    V_7
      IL_0138:  callvirt   instance void Game.ListPanelWidget::AddItem(object)
      IL_013d:  ldloc.s    V_6
      IL_013f:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0144:  brtrue.s   IL_0127

      IL_0146:  leave.s    IL_0154

    }  // end .try
    finally
    {
      IL_0148:  ldloc.s    V_6
      IL_014a:  brfalse.s  IL_0153

      IL_014c:  ldloc.s    V_6
      IL_014e:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0153:  endfinally
    }  // end handler
    IL_0154:  ret

    IL_0155:  ldloc.0
    IL_0156:  ldstr      "Retrieving Content"
    IL_015b:  ldc.i4.0
    IL_015c:  newobj     instance void Game.CancellableBusyDialog::.ctor(string,
                                                                         bool)
    IL_0161:  stfld      class Game.CancellableBusyDialog Game.CommunityContentScreen/'<>c__DisplayClass17_0'::busyDialog
    IL_0166:  ldnull
    IL_0167:  ldloc.0
    IL_0168:  ldfld      class Game.CancellableBusyDialog Game.CommunityContentScreen/'<>c__DisplayClass17_0'::busyDialog
    IL_016d:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_0172:  ldarg.1
    IL_0173:  ldloc.2
    IL_0174:  ldloc.3
    IL_0175:  ldloc.1
    IL_0176:  ldloc.s    V_4
    IL_0178:  ldloc.0
    IL_0179:  ldfld      class Game.CancellableBusyDialog Game.CommunityContentScreen/'<>c__DisplayClass17_0'::busyDialog
    IL_017e:  callvirt   instance class Game.CancellableProgress Game.CancellableBusyDialog::get_Progress()
    IL_0183:  ldloc.0
    IL_0184:  ldftn      instance void Game.CommunityContentScreen/'<>c__DisplayClass17_0'::'<PopulateList>b__0'(class [System.Collections]System.Collections.Generic.List`1<class Game.CommunityContentEntry>,
                                                                                                                 string)
    IL_018a:  newobj     instance void class [System.Runtime]System.Action`2<class [System.Collections]System.Collections.Generic.List`1<class Game.CommunityContentEntry>,string>::.ctor(object,
                                                                                                                                                                                          native int)
    IL_018f:  ldloc.0
    IL_0190:  ldftn      instance void Game.CommunityContentScreen/'<>c__DisplayClass17_0'::'<PopulateList>b__1'(class [System.Runtime]System.Exception)
    IL_0196:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                            native int)
    IL_019b:  call       void Game.CommunityContentManager::List(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 class Game.CancellableProgress,
                                                                 class [System.Runtime]System.Action`2<class [System.Collections]System.Collections.Generic.List`1<class Game.CommunityContentEntry>,string>,
                                                                 class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
    IL_01a0:  ret
  } // end of method CommunityContentScreen::PopulateList

  .method private hidebysig instance void 
          DownloadEntry(class Game.CommunityContentEntry entry) cil managed
  {
    // 代码大小       140 (0x8c)
    .maxstack  8
    .locals init (class Game.CommunityContentScreen/'<>c__DisplayClass18_0' V_0,
             string V_1)
    IL_0000:  newobj     instance void Game.CommunityContentScreen/'<>c__DisplayClass18_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  call       class Game.UserInfo Game.UserManager::get_ActiveUser()
    IL_000b:  brtrue.s   IL_0014

    IL_000d:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0012:  br.s       IL_001e

    IL_0014:  call       class Game.UserInfo Game.UserManager::get_ActiveUser()
    IL_0019:  ldfld      string Game.UserInfo::UniqueId
    IL_001e:  stloc.1
    IL_001f:  ldloc.0
    IL_0020:  ldstr      "Downloading {0}"
    IL_0025:  ldc.i4.1
    IL_0026:  newarr     [System.Runtime]System.Object
    IL_002b:  dup
    IL_002c:  ldc.i4.0
    IL_002d:  ldarg.1
    IL_002e:  ldfld      string Game.CommunityContentEntry::Name
    IL_0033:  stelem.ref
    IL_0034:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0039:  ldc.i4.0
    IL_003a:  newobj     instance void Game.CancellableBusyDialog::.ctor(string,
                                                                         bool)
    IL_003f:  stfld      class Game.CancellableBusyDialog Game.CommunityContentScreen/'<>c__DisplayClass18_0'::busyDialog
    IL_0044:  ldnull
    IL_0045:  ldloc.0
    IL_0046:  ldfld      class Game.CancellableBusyDialog Game.CommunityContentScreen/'<>c__DisplayClass18_0'::busyDialog
    IL_004b:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_0050:  ldarg.1
    IL_0051:  ldfld      string Game.CommunityContentEntry::Address
    IL_0056:  ldarg.1
    IL_0057:  ldfld      string Game.CommunityContentEntry::Name
    IL_005c:  ldarg.1
    IL_005d:  ldfld      valuetype Game.ExternalContentType Game.CommunityContentEntry::Type
    IL_0062:  ldloc.1
    IL_0063:  ldloc.0
    IL_0064:  ldfld      class Game.CancellableBusyDialog Game.CommunityContentScreen/'<>c__DisplayClass18_0'::busyDialog
    IL_0069:  callvirt   instance class Game.CancellableProgress Game.CancellableBusyDialog::get_Progress()
    IL_006e:  ldloc.0
    IL_006f:  ldftn      instance void Game.CommunityContentScreen/'<>c__DisplayClass18_0'::'<DownloadEntry>b__0'()
    IL_0075:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_007a:  ldloc.0
    IL_007b:  ldftn      instance void Game.CommunityContentScreen/'<>c__DisplayClass18_0'::'<DownloadEntry>b__1'(class [System.Runtime]System.Exception)
    IL_0081:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                            native int)
    IL_0086:  call       void Game.CommunityContentManager::Download(string,
                                                                     string,
                                                                     valuetype Game.ExternalContentType,
                                                                     string,
                                                                     class Game.CancellableProgress,
                                                                     class [System.Runtime]System.Action,
                                                                     class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
    IL_008b:  ret
  } // end of method CommunityContentScreen::DownloadEntry

  .method private hidebysig instance void 
          DeleteEntry(class Game.CommunityContentEntry entry) cil managed
  {
    // 代码大小       64 (0x40)
    .maxstack  7
    .locals init (class Game.CommunityContentScreen/'<>c__DisplayClass19_0' V_0)
    IL_0000:  newobj     instance void Game.CommunityContentScreen/'<>c__DisplayClass19_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      class Game.CommunityContentEntry Game.CommunityContentScreen/'<>c__DisplayClass19_0'::entry
    IL_000d:  call       class Game.UserInfo Game.UserManager::get_ActiveUser()
    IL_0012:  brfalse.s  IL_003f

    IL_0014:  ldnull
    IL_0015:  ldstr      "Are you sure\?"
    IL_001a:  ldstr      "The link will be deleted from the server."
    IL_001f:  ldstr      "Yes"
    IL_0024:  ldstr      "No"
    IL_0029:  ldloc.0
    IL_002a:  ldftn      instance void Game.CommunityContentScreen/'<>c__DisplayClass19_0'::'<DeleteEntry>b__0'(valuetype Game.MessageDialogButton)
    IL_0030:  newobj     instance void class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>::.ctor(object,
                                                                                                                        native int)
    IL_0035:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_003a:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_003f:  ret
  } // end of method CommunityContentScreen::DeleteEntry

  .method private hidebysig static string 
          GetFilterDisplayName(object 'filter') cil managed
  {
    // 代码大小       64 (0x40)
    .maxstack  1
    IL_0000:  ldarg.0
    IL_0001:  isinst     [System.Runtime]System.String
    IL_0006:  brfalse.s  IL_0021

    IL_0008:  ldarg.0
    IL_0009:  castclass  [System.Runtime]System.String
    IL_000e:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0013:  brtrue.s   IL_001b

    IL_0015:  ldstr      "Your Items Only"
    IL_001a:  ret

    IL_001b:  ldstr      "All Items"
    IL_0020:  ret

    IL_0021:  ldarg.0
    IL_0022:  isinst     Game.ExternalContentType
    IL_0027:  brfalse.s  IL_0035

    IL_0029:  ldarg.0
    IL_002a:  unbox.any  Game.ExternalContentType
    IL_002f:  call       string Game.ExternalContentManager::GetEntryTypeDescription(valuetype Game.ExternalContentType)
    IL_0034:  ret

    IL_0035:  ldstr      "Invalid filter."
    IL_003a:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_003f:  throw
  } // end of method CommunityContentScreen::GetFilterDisplayName

  .method private hidebysig static string 
          GetOrderDisplayName(valuetype Game.CommunityContentScreen/Order order) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  brfalse.s  IL_0009

    IL_0003:  ldarg.0
    IL_0004:  ldc.i4.1
    IL_0005:  beq.s      IL_000f

    IL_0007:  br.s       IL_0015

    IL_0009:  ldstr      "Top Ranked"
    IL_000e:  ret

    IL_000f:  ldstr      "Recently Added"
    IL_0014:  ret

    IL_0015:  ldstr      "Invalid order."
    IL_001a:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_001f:  throw
  } // end of method CommunityContentScreen::GetOrderDisplayName

  .method private hidebysig instance class Game.Widget 
          '<.ctor>b__14_0'(object item) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       328 (0x148)
    .maxstack  6
    .locals init (class Game.CommunityContentEntry V_0,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_1,
             class Game.ContainerWidget V_2,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_3,
             class Game.ContainerWidget V_4)
    IL_0000:  ldarg.1
    IL_0001:  isinst     Game.CommunityContentEntry
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  brfalse    IL_0102

    IL_000d:  ldstr      "Widgets/CommunityContentItem"
    IL_0012:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0017:  stloc.1
    IL_0018:  ldarg.0
    IL_0019:  ldloc.1
    IL_001a:  ldnull
    IL_001b:  call       class Game.Widget Game.WidgetsManager::LoadWidget(object,
                                                                           class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                           class Game.ContainerWidget)
    IL_0020:  castclass  Game.ContainerWidget
    IL_0025:  stloc.2
    IL_0026:  ldloc.2
    IL_0027:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_002c:  ldstr      "CommunityContentItem.Icon"
    IL_0031:  ldc.i4.1
    IL_0032:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.RectangleWidget>(string,
                                                                                         bool)
    IL_0037:  ldloc.0
    IL_0038:  ldfld      valuetype Game.ExternalContentType Game.CommunityContentEntry::Type
    IL_003d:  call       class Game.Subtexture Game.ExternalContentManager::GetEntryTypeIcon(valuetype Game.ExternalContentType)
    IL_0042:  callvirt   instance void Game.RectangleWidget::set_Subtexture(class Game.Subtexture)
    IL_0047:  ldloc.2
    IL_0048:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_004d:  ldstr      "CommunityContentItem.Text"
    IL_0052:  ldc.i4.1
    IL_0053:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0058:  ldloc.0
    IL_0059:  ldfld      string Game.CommunityContentEntry::Name
    IL_005e:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0063:  ldloc.2
    IL_0064:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0069:  ldstr      "CommunityContentItem.Details"
    IL_006e:  ldc.i4.1
    IL_006f:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0074:  ldstr      "{0} {1}"
    IL_0079:  ldc.i4.2
    IL_007a:  newarr     [System.Runtime]System.Object
    IL_007f:  dup
    IL_0080:  ldc.i4.0
    IL_0081:  ldloc.0
    IL_0082:  ldfld      valuetype Game.ExternalContentType Game.CommunityContentEntry::Type
    IL_0087:  call       string Game.ExternalContentManager::GetEntryTypeDescription(valuetype Game.ExternalContentType)
    IL_008c:  stelem.ref
    IL_008d:  dup
    IL_008e:  ldc.i4.1
    IL_008f:  ldloc.0
    IL_0090:  ldfld      int64 Game.CommunityContentEntry::Size
    IL_0095:  call       string Game.DataSizeFormatter::Format(int64)
    IL_009a:  stelem.ref
    IL_009b:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00a0:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00a5:  ldloc.2
    IL_00a6:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00ab:  ldstr      "CommunityContentItem.Rating"
    IL_00b0:  ldc.i4.1
    IL_00b1:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.StarRatingWidget>(string,
                                                                                          bool)
    IL_00b6:  ldloc.0
    IL_00b7:  ldfld      float32 Game.CommunityContentEntry::RatingsAverage
    IL_00bc:  callvirt   instance void Game.StarRatingWidget::set_Rating(float32)
    IL_00c1:  ldloc.2
    IL_00c2:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00c7:  ldstr      "CommunityContentItem.Rating"
    IL_00cc:  ldc.i4.1
    IL_00cd:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.StarRatingWidget>(string,
                                                                                          bool)
    IL_00d2:  ldloc.0
    IL_00d3:  ldfld      float32 Game.CommunityContentEntry::RatingsAverage
    IL_00d8:  ldc.r4     0.0
    IL_00dd:  cgt
    IL_00df:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_00e4:  ldloc.2
    IL_00e5:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00ea:  ldstr      "CommunityContentItem.ExtraText"
    IL_00ef:  ldc.i4.1
    IL_00f0:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_00f5:  ldloc.0
    IL_00f6:  ldfld      string Game.CommunityContentEntry::ExtraText
    IL_00fb:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0100:  ldloc.2
    IL_0101:  ret

    IL_0102:  ldstr      "Widgets/CommunityContentItemMore"
    IL_0107:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_010c:  stloc.3
    IL_010d:  ldarg.0
    IL_010e:  ldloc.3
    IL_010f:  ldnull
    IL_0110:  call       class Game.Widget Game.WidgetsManager::LoadWidget(object,
                                                                           class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                           class Game.ContainerWidget)
    IL_0115:  castclass  Game.ContainerWidget
    IL_011a:  stloc.s    V_4
    IL_011c:  ldarg.0
    IL_011d:  ldloc.s    V_4
    IL_011f:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0124:  ldstr      "CommunityContentItemMore.Link"
    IL_0129:  ldc.i4.1
    IL_012a:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LinkWidget>(string,
                                                                                    bool)
    IL_012f:  stfld      class Game.LinkWidget Game.CommunityContentScreen::m_moreLink
    IL_0134:  ldarg.0
    IL_0135:  ldfld      class Game.LinkWidget Game.CommunityContentScreen::m_moreLink
    IL_013a:  ldarg.1
    IL_013b:  isinst     [System.Runtime]System.String
    IL_0140:  callvirt   instance void Game.Widget::set_Tag(object)
    IL_0145:  ldloc.s    V_4
    IL_0147:  ret
  } // end of method CommunityContentScreen::'<.ctor>b__14_0'

  .method private hidebysig instance void 
          '<.ctor>b__14_1'(class Game.ListPanelWidget sender) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       44 (0x2c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ListPanelWidget Game.CommunityContentScreen::m_listPanel
    IL_0006:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_000b:  brfalse.s  IL_002b

    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.ListPanelWidget Game.CommunityContentScreen::m_listPanel
    IL_0013:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_0018:  isinst     Game.CommunityContentEntry
    IL_001d:  brtrue.s   IL_002b

    IL_001f:  ldarg.0
    IL_0020:  ldfld      class Game.ListPanelWidget Game.CommunityContentScreen::m_listPanel
    IL_0025:  ldnull
    IL_0026:  callvirt   instance void Game.ListPanelWidget::set_SelectedItem(object)
    IL_002b:  ret
  } // end of method CommunityContentScreen::'<.ctor>b__14_1'

  .method private hidebysig instance void 
          '<Update>b__16_1'(object item) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  unbox.any  Game.CommunityContentScreen/Order
    IL_0007:  stfld      valuetype Game.CommunityContentScreen/Order Game.CommunityContentScreen::m_order
    IL_000c:  ldarg.0
    IL_000d:  ldnull
    IL_000e:  call       instance void Game.CommunityContentScreen::PopulateList(string)
    IL_0013:  ret
  } // end of method CommunityContentScreen::'<Update>b__16_1'

  .method private hidebysig instance void 
          '<Update>b__16_4'(object item) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      object Game.CommunityContentScreen::m_filter
    IL_0007:  ldarg.0
    IL_0008:  ldnull
    IL_0009:  call       instance void Game.CommunityContentScreen::PopulateList(string)
    IL_000e:  ret
  } // end of method CommunityContentScreen::'<Update>b__16_4'

} // end of class Game.CommunityContentScreen