.class public auto ansi beforefieldinit Game.RateCommunityContentDialog
       extends Game.Dialog
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass9_0'
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
    } // end of method '<>c__DisplayClass9_0'::.ctor

    .method assembly hidebysig instance void 
            '<Update>b__0'() cil managed
    {
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CancellableBusyDialog Game.RateCommunityContentDialog/'<>c__DisplayClass9_0'::busyDialog
      IL_0006:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
      IL_000b:  ret
    } // end of method '<>c__DisplayClass9_0'::'<Update>b__0'

    .method assembly hidebysig instance void 
            '<Update>b__1'(class [System.Runtime]System.Exception '<obj>') cil managed
    {
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CancellableBusyDialog Game.RateCommunityContentDialog/'<>c__DisplayClass9_0'::busyDialog
      IL_0006:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
      IL_000b:  ret
    } // end of method '<>c__DisplayClass9_0'::'<Update>b__1'

  } // end of class '<>c__DisplayClass9_0'

  .field private string m_address
  .field private string m_displayName
  .field private string m_userId
  .field private class Game.LabelWidget m_nameLabel
  .field private class Game.StarRatingWidget m_starRating
  .field private class Game.ButtonWidget m_rateButton
  .field private class Game.LinkWidget m_reportLink
  .field private class Game.ButtonWidget m_cancelButton
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string address,
                               string displayName,
                               string userId) cil managed
  {
    // 代码大小       186 (0xba)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Dialog::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      string Game.RateCommunityContentDialog::m_address
    IL_000d:  ldarg.0
    IL_000e:  ldarg.2
    IL_000f:  stfld      string Game.RateCommunityContentDialog::m_displayName
    IL_0014:  ldarg.0
    IL_0015:  ldarg.3
    IL_0016:  stfld      string Game.RateCommunityContentDialog::m_userId
    IL_001b:  ldstr      "Dialogs/RateCommunityContentDialog"
    IL_0020:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0025:  stloc.0
    IL_0026:  ldarg.0
    IL_0027:  ldarg.0
    IL_0028:  ldloc.0
    IL_0029:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_002e:  ldarg.0
    IL_002f:  ldarg.0
    IL_0030:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0035:  ldstr      "RateCommunityContentDialog.Name"
    IL_003a:  ldc.i4.1
    IL_003b:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0040:  stfld      class Game.LabelWidget Game.RateCommunityContentDialog::m_nameLabel
    IL_0045:  ldarg.0
    IL_0046:  ldarg.0
    IL_0047:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_004c:  ldstr      "RateCommunityContentDialog.StarRating"
    IL_0051:  ldc.i4.1
    IL_0052:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.StarRatingWidget>(string,
                                                                                          bool)
    IL_0057:  stfld      class Game.StarRatingWidget Game.RateCommunityContentDialog::m_starRating
    IL_005c:  ldarg.0
    IL_005d:  ldarg.0
    IL_005e:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0063:  ldstr      "RateCommunityContentDialog.Rate"
    IL_0068:  ldc.i4.1
    IL_0069:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_006e:  stfld      class Game.ButtonWidget Game.RateCommunityContentDialog::m_rateButton
    IL_0073:  ldarg.0
    IL_0074:  ldarg.0
    IL_0075:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_007a:  ldstr      "RateCommunityContentDialog.Report"
    IL_007f:  ldc.i4.1
    IL_0080:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LinkWidget>(string,
                                                                                    bool)
    IL_0085:  stfld      class Game.LinkWidget Game.RateCommunityContentDialog::m_reportLink
    IL_008a:  ldarg.0
    IL_008b:  ldarg.0
    IL_008c:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0091:  ldstr      "RateCommunityContentDialog.Cancel"
    IL_0096:  ldc.i4.1
    IL_0097:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_009c:  stfld      class Game.ButtonWidget Game.RateCommunityContentDialog::m_cancelButton
    IL_00a1:  ldarg.0
    IL_00a2:  ldfld      class Game.LabelWidget Game.RateCommunityContentDialog::m_nameLabel
    IL_00a7:  ldarg.2
    IL_00a8:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00ad:  ldarg.0
    IL_00ae:  ldfld      class Game.ButtonWidget Game.RateCommunityContentDialog::m_rateButton
    IL_00b3:  ldc.i4.0
    IL_00b4:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_00b9:  ret
  } // end of method RateCommunityContentDialog::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       252 (0xfc)
    .maxstack  7
    .locals init (class Game.RateCommunityContentDialog/'<>c__DisplayClass9_0' V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ButtonWidget Game.RateCommunityContentDialog::m_rateButton
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.StarRatingWidget Game.RateCommunityContentDialog::m_starRating
    IL_000c:  callvirt   instance float32 Game.StarRatingWidget::get_Rating()
    IL_0011:  ldc.r4     0.0
    IL_0016:  ceq
    IL_0018:  ldc.i4.0
    IL_0019:  ceq
    IL_001b:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0020:  ldarg.0
    IL_0021:  ldfld      class Game.ButtonWidget Game.RateCommunityContentDialog::m_rateButton
    IL_0026:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_002b:  brfalse.s  IL_009b

    IL_002d:  newobj     instance void Game.RateCommunityContentDialog/'<>c__DisplayClass9_0'::.ctor()
    IL_0032:  stloc.0
    IL_0033:  ldarg.0
    IL_0034:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_0039:  ldloc.0
    IL_003a:  ldstr      "Sending Rating"
    IL_003f:  ldc.i4.0
    IL_0040:  newobj     instance void Game.CancellableBusyDialog::.ctor(string,
                                                                         bool)
    IL_0045:  stfld      class Game.CancellableBusyDialog Game.RateCommunityContentDialog/'<>c__DisplayClass9_0'::busyDialog
    IL_004a:  ldarg.0
    IL_004b:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_0050:  ldloc.0
    IL_0051:  ldfld      class Game.CancellableBusyDialog Game.RateCommunityContentDialog/'<>c__DisplayClass9_0'::busyDialog
    IL_0056:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_005b:  ldarg.0
    IL_005c:  ldfld      string Game.RateCommunityContentDialog::m_address
    IL_0061:  ldarg.0
    IL_0062:  ldfld      string Game.RateCommunityContentDialog::m_userId
    IL_0067:  ldarg.0
    IL_0068:  ldfld      class Game.StarRatingWidget Game.RateCommunityContentDialog::m_starRating
    IL_006d:  callvirt   instance float32 Game.StarRatingWidget::get_Rating()
    IL_0072:  conv.i4
    IL_0073:  ldloc.0
    IL_0074:  ldfld      class Game.CancellableBusyDialog Game.RateCommunityContentDialog/'<>c__DisplayClass9_0'::busyDialog
    IL_0079:  callvirt   instance class Game.CancellableProgress Game.CancellableBusyDialog::get_Progress()
    IL_007e:  ldloc.0
    IL_007f:  ldftn      instance void Game.RateCommunityContentDialog/'<>c__DisplayClass9_0'::'<Update>b__0'()
    IL_0085:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_008a:  ldloc.0
    IL_008b:  ldftn      instance void Game.RateCommunityContentDialog/'<>c__DisplayClass9_0'::'<Update>b__1'(class [System.Runtime]System.Exception)
    IL_0091:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                            native int)
    IL_0096:  call       void Game.CommunityContentManager::Rate(string,
                                                                 string,
                                                                 int32,
                                                                 class Game.CancellableProgress,
                                                                 class [System.Runtime]System.Action,
                                                                 class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
    IL_009b:  ldarg.0
    IL_009c:  ldfld      class Game.LinkWidget Game.RateCommunityContentDialog::m_reportLink
    IL_00a1:  callvirt   instance bool Game.LinkWidget::get_IsClicked()
    IL_00a6:  brfalse.s  IL_00db

    IL_00a8:  call       class Game.UserInfo Game.UserManager::get_ActiveUser()
    IL_00ad:  brfalse.s  IL_00db

    IL_00af:  ldarg.0
    IL_00b0:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_00b5:  ldarg.0
    IL_00b6:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_00bb:  ldarg.0
    IL_00bc:  ldfld      string Game.RateCommunityContentDialog::m_address
    IL_00c1:  ldarg.0
    IL_00c2:  ldfld      string Game.RateCommunityContentDialog::m_displayName
    IL_00c7:  call       class Game.UserInfo Game.UserManager::get_ActiveUser()
    IL_00cc:  ldfld      string Game.UserInfo::UniqueId
    IL_00d1:  newobj     instance void Game.ReportCommunityContentDialog::.ctor(string,
                                                                                string,
                                                                                string)
    IL_00d6:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_00db:  ldarg.0
    IL_00dc:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_00e1:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_00e6:  brtrue.s   IL_00f5

    IL_00e8:  ldarg.0
    IL_00e9:  ldfld      class Game.ButtonWidget Game.RateCommunityContentDialog::m_cancelButton
    IL_00ee:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00f3:  brfalse.s  IL_00fb

    IL_00f5:  ldarg.0
    IL_00f6:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_00fb:  ret
  } // end of method RateCommunityContentDialog::Update

} // end of class Game.RateCommunityContentDialog