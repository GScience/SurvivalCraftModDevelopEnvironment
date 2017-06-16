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
    .field public static class [System.Runtime]System.Action '<>9__16_5'
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

    .method assembly hidebysig instance void 
            '<Update>b__16_5'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldstr      "Content"
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__16_5'

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
      // 代码大小       40 (0x28)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CancellableBusyDialog Game.CommunityContentScreen/'<>c__DisplayClass17_0'::busyDialog
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
      IL_0027:  ret
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
      // 代码大小       40 (0x28)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CancellableBusyDialog Game.CommunityContentScreen/'<>c__DisplayClass18_0'::busyDialog
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
      IL_0027:  ret
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
      // 代码大小       124 (0x7c)
      .maxstack  6
      .locals init (class Game.CommunityContentScreen/'<>c__DisplayClass19_1' V_0)
      IL_0000:  ldarg.1
      IL_0001:  brtrue.s   IL_007b

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
      IL_0033:  ldloc.0
      IL_0034:  ldfld      class Game.CancellableBusyDialog Game.CommunityContentScreen/'<>c__DisplayClass19_1'::busyDialog
      IL_0039:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
      IL_003e:  ldarg.0
      IL_003f:  ldfld      class Game.CommunityContentEntry Game.CommunityContentScreen/'<>c__DisplayClass19_0'::entry
      IL_0044:  ldfld      string Game.CommunityContentEntry::Address
      IL_0049:  call       class Game.UserInfo Game.UserManager::get_ActiveUser()
      IL_004e:  ldfld      string Game.UserInfo::UniqueId
      IL_0053:  ldloc.0
      IL_0054:  ldfld      class Game.CancellableBusyDialog Game.CommunityContentScreen/'<>c__DisplayClass19_1'::busyDialog
      IL_0059:  callvirt   instance class Game.CancellableProgress Game.CancellableBusyDialog::get_Progress()
      IL_005e:  ldloc.0
      IL_005f:  ldftn      instance void Game.CommunityContentScreen/'<>c__DisplayClass19_1'::'<DeleteEntry>b__1'()
      IL_0065:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                              native int)
      IL_006a:  ldloc.0
      IL_006b:  ldftn      instance void Game.CommunityContentScreen/'<>c__DisplayClass19_1'::'<DeleteEntry>b__2'(class [System.Runtime]System.Exception)
      IL_0071:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                              native int)
      IL_0076:  call       void Game.CommunityContentManager::Delete(string,
                                                                     string,
                                                                     class Game.CancellableProgress,
                                                                     class [System.Runtime]System.Action,
                                                                     class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
      IL_007b:  ret
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
      // 代码大小       39 (0x27)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CancellableBusyDialog Game.CommunityContentScreen/'<>c__DisplayClass19_1'::busyDialog
      IL_0006:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
      IL_000b:  ldstr      "Link Deleted"
      IL_0010:  ldstr      "It will stop appearing in the listings in a few mi"
      + "nutes."
      IL_0015:  ldstr      "OK"
      IL_001a:  ldnull
      IL_001b:  ldnull
      IL_001c:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_0021:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
      IL_0026:  ret
    } // end of method '<>c__DisplayClass19_1'::'<DeleteEntry>b__1'

    .method assembly hidebysig instance void 
            '<DeleteEntry>b__2'(class [System.Runtime]System.Exception 'error') cil managed
    {
      // 代码大小       40 (0x28)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CancellableBusyDialog Game.CommunityContentScreen/'<>c__DisplayClass19_1'::busyDialog
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
      IL_0027:  ret
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
    // 代码大小       312 (0x138)
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
    IL_001d:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0022:  ldarg.0
    IL_0023:  ldloc.0
    IL_0024:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0029:  ldarg.0
    IL_002a:  ldarg.0
    IL_002b:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0030:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0035:  ldstr      "List"
    IL_003a:  ldc.i4.1
    IL_003b:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ListPanelWidget>(string,
                                                                                              bool)
    IL_0040:  stfld      class Game.ListPanelWidget Game.CommunityContentScreen::m_listPanel
    IL_0045:  ldarg.0
    IL_0046:  ldarg.0
    IL_0047:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_004c:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0051:  ldstr      "Order"
    IL_0056:  ldc.i4.1
    IL_0057:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_005c:  stfld      class Game.LabelWidget Game.CommunityContentScreen::m_orderLabel
    IL_0061:  ldarg.0
    IL_0062:  ldarg.0
    IL_0063:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0068:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_006d:  ldstr      "ChangeOrder"
    IL_0072:  ldc.i4.1
    IL_0073:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0078:  stfld      class Game.ButtonWidget Game.CommunityContentScreen::m_changeOrderButton
    IL_007d:  ldarg.0
    IL_007e:  ldarg.0
    IL_007f:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0084:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0089:  ldstr      "Filter"
    IL_008e:  ldc.i4.1
    IL_008f:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_0094:  stfld      class Game.LabelWidget Game.CommunityContentScreen::m_filterLabel
    IL_0099:  ldarg.0
    IL_009a:  ldarg.0
    IL_009b:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_00a0:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00a5:  ldstr      "ChangeFilter"
    IL_00aa:  ldc.i4.1
    IL_00ab:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00b0:  stfld      class Game.ButtonWidget Game.CommunityContentScreen::m_changeFilterButton
    IL_00b5:  ldarg.0
    IL_00b6:  ldarg.0
    IL_00b7:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_00bc:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00c1:  ldstr      "Download"
    IL_00c6:  ldc.i4.1
    IL_00c7:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00cc:  stfld      class Game.ButtonWidget Game.CommunityContentScreen::m_downloadButton
    IL_00d1:  ldarg.0
    IL_00d2:  ldarg.0
    IL_00d3:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_00d8:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00dd:  ldstr      "Delete"
    IL_00e2:  ldc.i4.1
    IL_00e3:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00e8:  stfld      class Game.ButtonWidget Game.CommunityContentScreen::m_deleteButton
    IL_00ed:  ldarg.0
    IL_00ee:  ldarg.0
    IL_00ef:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_00f4:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00f9:  ldstr      "MoreOptions"
    IL_00fe:  ldc.i4.1
    IL_00ff:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0104:  stfld      class Game.ButtonWidget Game.CommunityContentScreen::m_moreOptionsButton
    IL_0109:  ldarg.0
    IL_010a:  ldfld      class Game.ListPanelWidget Game.CommunityContentScreen::m_listPanel
    IL_010f:  ldarg.0
    IL_0110:  ldftn      instance class Game.Widget Game.CommunityContentScreen::'<.ctor>b__14_0'(object)
    IL_0116:  newobj     instance void class [System.Runtime]System.Func`2<object,class Game.Widget>::.ctor(object,
                                                                                                            native int)
    IL_011b:  callvirt   instance void Game.ListPanelWidget::set_ItemWidgetFactory(class [System.Runtime]System.Func`2<object,class Game.Widget>)
    IL_0120:  ldarg.0
    IL_0121:  ldfld      class Game.ListPanelWidget Game.CommunityContentScreen::m_listPanel
    IL_0126:  ldarg.0
    IL_0127:  ldftn      instance void Game.CommunityContentScreen::'<.ctor>b__14_1'(class Game.ListPanelWidget)
    IL_012d:  newobj     instance void class [System.Runtime]System.Action`1<class Game.ListPanelWidget>::.ctor(object,
                                                                                                                native int)
    IL_0132:  callvirt   instance void Game.ListPanelWidget::add_SelectionChanged(class [System.Runtime]System.Action`1<class Game.ListPanelWidget>)
    IL_0137:  ret
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
    // 代码大小       768 (0x300)
    .maxstack  6
    .locals init (class Game.CommunityContentEntry V_0,
             class [System.Collections]System.Collections.Generic.List`1<valuetype Game.CommunityContentScreen/Order> V_1,
             class [System.Collections]System.Collections.Generic.List`1<object> V_2,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype Game.ExternalContentType> V_3,
             valuetype Game.ExternalContentType V_4,
             valuetype Game.InputState V_5)
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
    IL_0084:  brfalse.s  IL_00e0

    IL_0086:  ldtoken    Game.CommunityContentScreen/Order
    IL_008b:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0090:  call       class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.EnumUtils::GetEnumValues(class [System.Runtime]System.Type)
    IL_0095:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Cast<valuetype Game.CommunityContentScreen/Order>(class [System.Runtime]System.Collections.IEnumerable)
    IL_009a:  call       class [System.Collections]System.Collections.Generic.List`1<!!0> [System.Linq]System.Linq.Enumerable::ToList<valuetype Game.CommunityContentScreen/Order>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_009f:  stloc.1
    IL_00a0:  ldstr      "Select Sort Order"
    IL_00a5:  ldloc.1
    IL_00a6:  ldc.r4     60.
    IL_00ab:  ldsfld     class [System.Runtime]System.Func`2<object,string> Game.CommunityContentScreen/'<>c'::'<>9__16_0'
    IL_00b0:  dup
    IL_00b1:  brtrue.s   IL_00ca

    IL_00b3:  pop
    IL_00b4:  ldsfld     class Game.CommunityContentScreen/'<>c' Game.CommunityContentScreen/'<>c'::'<>9'
    IL_00b9:  ldftn      instance string Game.CommunityContentScreen/'<>c'::'<Update>b__16_0'(object)
    IL_00bf:  newobj     instance void class [System.Runtime]System.Func`2<object,string>::.ctor(object,
                                                                                                 native int)
    IL_00c4:  dup
    IL_00c5:  stsfld     class [System.Runtime]System.Func`2<object,string> Game.CommunityContentScreen/'<>c'::'<>9__16_0'
    IL_00ca:  ldarg.0
    IL_00cb:  ldftn      instance void Game.CommunityContentScreen::'<Update>b__16_1'(object)
    IL_00d1:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_00d6:  newobj     instance void Game.ListSelectionDialog::.ctor(string,
                                                                       class [System.Runtime]System.Collections.IEnumerable,
                                                                       float32,
                                                                       class [System.Runtime]System.Func`2<object,string>,
                                                                       class [System.Runtime]System.Action`1<object>)
    IL_00db:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_00e0:  ldarg.0
    IL_00e1:  ldfld      class Game.ButtonWidget Game.CommunityContentScreen::m_changeFilterButton
    IL_00e6:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00eb:  brfalse    IL_01c1

    IL_00f0:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<object>::.ctor()
    IL_00f5:  stloc.2
    IL_00f6:  ldloc.2
    IL_00f7:  ldsfld     string [System.Runtime]System.String::Empty
    IL_00fc:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<object>::Add(!0)
    IL_0101:  ldtoken    Game.ExternalContentType
    IL_0106:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_010b:  call       class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.EnumUtils::GetEnumValues(class [System.Runtime]System.Type)
    IL_0110:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Cast<valuetype Game.ExternalContentType>(class [System.Runtime]System.Collections.IEnumerable)
    IL_0115:  ldsfld     class [System.Runtime]System.Func`2<valuetype Game.ExternalContentType,bool> Game.CommunityContentScreen/'<>c'::'<>9__16_2'
    IL_011a:  dup
    IL_011b:  brtrue.s   IL_0134

    IL_011d:  pop
    IL_011e:  ldsfld     class Game.CommunityContentScreen/'<>c' Game.CommunityContentScreen/'<>c'::'<>9'
    IL_0123:  ldftn      instance bool Game.CommunityContentScreen/'<>c'::'<Update>b__16_2'(valuetype Game.ExternalContentType)
    IL_0129:  newobj     instance void class [System.Runtime]System.Func`2<valuetype Game.ExternalContentType,bool>::.ctor(object,
                                                                                                                           native int)
    IL_012e:  dup
    IL_012f:  stsfld     class [System.Runtime]System.Func`2<valuetype Game.ExternalContentType,bool> Game.CommunityContentScreen/'<>c'::'<>9__16_2'
    IL_0134:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<valuetype Game.ExternalContentType>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                            class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0139:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype Game.ExternalContentType>::GetEnumerator()
    IL_013e:  stloc.3
    .try
    {
      IL_013f:  br.s       IL_0156

      IL_0141:  ldloc.3
      IL_0142:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype Game.ExternalContentType>::get_Current()
      IL_0147:  stloc.s    V_4
      IL_0149:  ldloc.2
      IL_014a:  ldloc.s    V_4
      IL_014c:  box        Game.ExternalContentType
      IL_0151:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<object>::Add(!0)
      IL_0156:  ldloc.3
      IL_0157:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_015c:  brtrue.s   IL_0141

      IL_015e:  leave.s    IL_016a

    }  // end .try
    finally
    {
      IL_0160:  ldloc.3
      IL_0161:  brfalse.s  IL_0169

      IL_0163:  ldloc.3
      IL_0164:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0169:  endfinally
    }  // end handler
    IL_016a:  call       class Game.UserInfo Game.UserManager::get_ActiveUser()
    IL_016f:  brfalse.s  IL_0181

    IL_0171:  ldloc.2
    IL_0172:  call       class Game.UserInfo Game.UserManager::get_ActiveUser()
    IL_0177:  ldfld      string Game.UserInfo::UniqueId
    IL_017c:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<object>::Add(!0)
    IL_0181:  ldstr      "Select Items Filter"
    IL_0186:  ldloc.2
    IL_0187:  ldc.r4     60.
    IL_018c:  ldsfld     class [System.Runtime]System.Func`2<object,string> Game.CommunityContentScreen/'<>c'::'<>9__16_3'
    IL_0191:  dup
    IL_0192:  brtrue.s   IL_01ab

    IL_0194:  pop
    IL_0195:  ldsfld     class Game.CommunityContentScreen/'<>c' Game.CommunityContentScreen/'<>c'::'<>9'
    IL_019a:  ldftn      instance string Game.CommunityContentScreen/'<>c'::'<Update>b__16_3'(object)
    IL_01a0:  newobj     instance void class [System.Runtime]System.Func`2<object,string>::.ctor(object,
                                                                                                 native int)
    IL_01a5:  dup
    IL_01a6:  stsfld     class [System.Runtime]System.Func`2<object,string> Game.CommunityContentScreen/'<>c'::'<>9__16_3'
    IL_01ab:  ldarg.0
    IL_01ac:  ldftn      instance void Game.CommunityContentScreen::'<Update>b__16_4'(object)
    IL_01b2:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_01b7:  newobj     instance void Game.ListSelectionDialog::.ctor(string,
                                                                       class [System.Runtime]System.Collections.IEnumerable,
                                                                       float32,
                                                                       class [System.Runtime]System.Func`2<object,string>,
                                                                       class [System.Runtime]System.Action`1<object>)
    IL_01bc:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_01c1:  ldarg.0
    IL_01c2:  ldfld      class Game.ButtonWidget Game.CommunityContentScreen::m_downloadButton
    IL_01c7:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_01cc:  brfalse.s  IL_01d8

    IL_01ce:  ldloc.0
    IL_01cf:  brfalse.s  IL_01d8

    IL_01d1:  ldarg.0
    IL_01d2:  ldloc.0
    IL_01d3:  call       instance void Game.CommunityContentScreen::DownloadEntry(class Game.CommunityContentEntry)
    IL_01d8:  ldarg.0
    IL_01d9:  ldfld      class Game.ButtonWidget Game.CommunityContentScreen::m_deleteButton
    IL_01de:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_01e3:  brfalse.s  IL_01ef

    IL_01e5:  ldloc.0
    IL_01e6:  brfalse.s  IL_01ef

    IL_01e8:  ldarg.0
    IL_01e9:  ldloc.0
    IL_01ea:  call       instance void Game.CommunityContentScreen::DeleteEntry(class Game.CommunityContentEntry)
    IL_01ef:  ldarg.0
    IL_01f0:  ldfld      class Game.ButtonWidget Game.CommunityContentScreen::m_moreOptionsButton
    IL_01f5:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_01fa:  brfalse.s  IL_0206

    IL_01fc:  newobj     instance void Game.MoreCommunityLinkDialog::.ctor()
    IL_0201:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_0206:  ldarg.0
    IL_0207:  ldfld      class Game.LinkWidget Game.CommunityContentScreen::m_moreLink
    IL_020c:  brfalse.s  IL_0231

    IL_020e:  ldarg.0
    IL_020f:  ldfld      class Game.LinkWidget Game.CommunityContentScreen::m_moreLink
    IL_0214:  callvirt   instance bool Game.LinkWidget::get_IsClicked()
    IL_0219:  brfalse.s  IL_0231

    IL_021b:  ldarg.0
    IL_021c:  ldarg.0
    IL_021d:  ldfld      class Game.LinkWidget Game.CommunityContentScreen::m_moreLink
    IL_0222:  callvirt   instance object Game.Widget::get_Tag()
    IL_0227:  castclass  [System.Runtime]System.String
    IL_022c:  call       instance void Game.CommunityContentScreen::PopulateList(string)
    IL_0231:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0236:  ldfld      bool Game.InputState::Back
    IL_023b:  brtrue.s   IL_025a

    IL_023d:  ldarg.0
    IL_023e:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0243:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0248:  ldstr      "TopBar.Back"
    IL_024d:  ldc.i4.1
    IL_024e:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.BevelledButtonWidget>(string,
                                                                                                   bool)
    IL_0253:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0258:  brfalse.s  IL_027e

    IL_025a:  ldsfld     class [System.Runtime]System.Action Game.CommunityContentScreen/'<>c'::'<>9__16_5'
    IL_025f:  dup
    IL_0260:  brtrue.s   IL_0279

    IL_0262:  pop
    IL_0263:  ldsfld     class Game.CommunityContentScreen/'<>c' Game.CommunityContentScreen/'<>c'::'<>9'
    IL_0268:  ldftn      instance void Game.CommunityContentScreen/'<>c'::'<Update>b__16_5'()
    IL_026e:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0273:  dup
    IL_0274:  stsfld     class [System.Runtime]System.Action Game.CommunityContentScreen/'<>c'::'<>9__16_5'
    IL_0279:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_027e:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0283:  stloc.s    V_5
    IL_0285:  ldloca.s   V_5
    IL_0287:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Hold
    IL_028c:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0291:  brfalse.s  IL_02ff

    IL_0293:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0298:  stloc.s    V_5
    IL_029a:  ldloca.s   V_5
    IL_029c:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.InputState::HoldTime
    IL_02a1:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_02a6:  brfalse.s  IL_02ff

    IL_02a8:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_02ad:  stloc.s    V_5
    IL_02af:  ldloca.s   V_5
    IL_02b1:  ldflda     valuetype [System.Runtime]System.Nullable`1<float32> Game.InputState::HoldTime
    IL_02b6:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_02bb:  ldc.r4     2.
    IL_02c0:  ble.un.s   IL_02ff

    IL_02c2:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_02c7:  stloc.s    V_5
    IL_02c9:  ldloca.s   V_5
    IL_02cb:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Hold
    IL_02d0:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_02d5:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_02da:  ldc.r4     20.
    IL_02df:  bge.un.s   IL_02ff

    IL_02e1:  ldarg.0
    IL_02e2:  ldc.r8     0.0
    IL_02eb:  stfld      float64 Game.CommunityContentScreen::m_contentExpiryTime
    IL_02f0:  ldc.i4     0xfa
    IL_02f5:  call       class [System.Threading.Tasks]System.Threading.Tasks.Task [System.Threading.Tasks]System.Threading.Tasks.Task::Delay(int32)
    IL_02fa:  callvirt   instance void [System.Threading.Tasks]System.Threading.Tasks.Task::Wait()
    IL_02ff:  ret
  } // end of method CommunityContentScreen::Update

  .method private hidebysig instance void 
          PopulateList(string cursor) cil managed
  {
    // 代码大小       416 (0x1a0)
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
    IL_0166:  ldloc.0
    IL_0167:  ldfld      class Game.CancellableBusyDialog Game.CommunityContentScreen/'<>c__DisplayClass17_0'::busyDialog
    IL_016c:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_0171:  ldarg.1
    IL_0172:  ldloc.2
    IL_0173:  ldloc.3
    IL_0174:  ldloc.1
    IL_0175:  ldloc.s    V_4
    IL_0177:  ldloc.0
    IL_0178:  ldfld      class Game.CancellableBusyDialog Game.CommunityContentScreen/'<>c__DisplayClass17_0'::busyDialog
    IL_017d:  callvirt   instance class Game.CancellableProgress Game.CancellableBusyDialog::get_Progress()
    IL_0182:  ldloc.0
    IL_0183:  ldftn      instance void Game.CommunityContentScreen/'<>c__DisplayClass17_0'::'<PopulateList>b__0'(class [System.Collections]System.Collections.Generic.List`1<class Game.CommunityContentEntry>,
                                                                                                                 string)
    IL_0189:  newobj     instance void class [System.Runtime]System.Action`2<class [System.Collections]System.Collections.Generic.List`1<class Game.CommunityContentEntry>,string>::.ctor(object,
                                                                                                                                                                                          native int)
    IL_018e:  ldloc.0
    IL_018f:  ldftn      instance void Game.CommunityContentScreen/'<>c__DisplayClass17_0'::'<PopulateList>b__1'(class [System.Runtime]System.Exception)
    IL_0195:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                            native int)
    IL_019a:  call       void Game.CommunityContentManager::List(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 class Game.CancellableProgress,
                                                                 class [System.Runtime]System.Action`2<class [System.Collections]System.Collections.Generic.List`1<class Game.CommunityContentEntry>,string>,
                                                                 class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
    IL_019f:  ret
  } // end of method CommunityContentScreen::PopulateList

  .method private hidebysig instance void 
          DownloadEntry(class Game.CommunityContentEntry entry) cil managed
  {
    // 代码大小       139 (0x8b)
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
    IL_0044:  ldloc.0
    IL_0045:  ldfld      class Game.CancellableBusyDialog Game.CommunityContentScreen/'<>c__DisplayClass18_0'::busyDialog
    IL_004a:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_004f:  ldarg.1
    IL_0050:  ldfld      string Game.CommunityContentEntry::Address
    IL_0055:  ldarg.1
    IL_0056:  ldfld      string Game.CommunityContentEntry::Name
    IL_005b:  ldarg.1
    IL_005c:  ldfld      valuetype Game.ExternalContentType Game.CommunityContentEntry::Type
    IL_0061:  ldloc.1
    IL_0062:  ldloc.0
    IL_0063:  ldfld      class Game.CancellableBusyDialog Game.CommunityContentScreen/'<>c__DisplayClass18_0'::busyDialog
    IL_0068:  callvirt   instance class Game.CancellableProgress Game.CancellableBusyDialog::get_Progress()
    IL_006d:  ldloc.0
    IL_006e:  ldftn      instance void Game.CommunityContentScreen/'<>c__DisplayClass18_0'::'<DownloadEntry>b__0'()
    IL_0074:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0079:  ldloc.0
    IL_007a:  ldftn      instance void Game.CommunityContentScreen/'<>c__DisplayClass18_0'::'<DownloadEntry>b__1'(class [System.Runtime]System.Exception)
    IL_0080:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                            native int)
    IL_0085:  call       void Game.CommunityContentManager::Download(string,
                                                                     string,
                                                                     valuetype Game.ExternalContentType,
                                                                     string,
                                                                     class Game.CancellableProgress,
                                                                     class [System.Runtime]System.Action,
                                                                     class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
    IL_008a:  ret
  } // end of method CommunityContentScreen::DownloadEntry

  .method private hidebysig instance void 
          DeleteEntry(class Game.CommunityContentEntry entry) cil managed
  {
    // 代码大小       63 (0x3f)
    .maxstack  6
    .locals init (class Game.CommunityContentScreen/'<>c__DisplayClass19_0' V_0)
    IL_0000:  newobj     instance void Game.CommunityContentScreen/'<>c__DisplayClass19_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      class Game.CommunityContentEntry Game.CommunityContentScreen/'<>c__DisplayClass19_0'::entry
    IL_000d:  call       class Game.UserInfo Game.UserManager::get_ActiveUser()
    IL_0012:  brfalse.s  IL_003e

    IL_0014:  ldstr      "Are you sure\?"
    IL_0019:  ldstr      "The link will be deleted from the server."
    IL_001e:  ldstr      "Yes"
    IL_0023:  ldstr      "No"
    IL_0028:  ldloc.0
    IL_0029:  ldftn      instance void Game.CommunityContentScreen/'<>c__DisplayClass19_0'::'<DeleteEntry>b__0'(valuetype Game.MessageDialogButton)
    IL_002f:  newobj     instance void class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>::.ctor(object,
                                                                                                                        native int)
    IL_0034:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_0039:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_003e:  ret
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
    IL_0027:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_002c:  ldstr      "CommunityContentItem.Icon"
    IL_0031:  ldc.i4.1
    IL_0032:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.RectangleWidget>(string,
                                                                                              bool)
    IL_0037:  ldloc.0
    IL_0038:  ldfld      valuetype Game.ExternalContentType Game.CommunityContentEntry::Type
    IL_003d:  call       class Game.Subtexture Game.ExternalContentManager::GetEntryTypeIcon(valuetype Game.ExternalContentType)
    IL_0042:  callvirt   instance void Game.RectangleWidget::set_Subtexture(class Game.Subtexture)
    IL_0047:  ldloc.2
    IL_0048:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_004d:  ldstr      "CommunityContentItem.Text"
    IL_0052:  ldc.i4.1
    IL_0053:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_0058:  ldloc.0
    IL_0059:  ldfld      string Game.CommunityContentEntry::Name
    IL_005e:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0063:  ldloc.2
    IL_0064:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0069:  ldstr      "CommunityContentItem.Details"
    IL_006e:  ldc.i4.1
    IL_006f:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
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
    IL_00a6:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00ab:  ldstr      "CommunityContentItem.Rating"
    IL_00b0:  ldc.i4.1
    IL_00b1:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.StarRatingWidget>(string,
                                                                                               bool)
    IL_00b6:  ldloc.0
    IL_00b7:  ldfld      float32 Game.CommunityContentEntry::RatingsAverage
    IL_00bc:  callvirt   instance void Game.StarRatingWidget::set_Rating(float32)
    IL_00c1:  ldloc.2
    IL_00c2:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00c7:  ldstr      "CommunityContentItem.Rating"
    IL_00cc:  ldc.i4.1
    IL_00cd:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.StarRatingWidget>(string,
                                                                                               bool)
    IL_00d2:  ldloc.0
    IL_00d3:  ldfld      float32 Game.CommunityContentEntry::RatingsAverage
    IL_00d8:  ldc.r4     0.0
    IL_00dd:  cgt
    IL_00df:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_00e4:  ldloc.2
    IL_00e5:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00ea:  ldstr      "CommunityContentItem.ExtraText"
    IL_00ef:  ldc.i4.1
    IL_00f0:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
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
    IL_011f:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0124:  ldstr      "CommunityContentItemMore.Link"
    IL_0129:  ldc.i4.1
    IL_012a:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LinkWidget>(string,
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