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
    // 代码大小       222 (0xde)
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
    IL_0029:  ldnull
    IL_002a:  call       class Game.Widget Game.WidgetsManager::LoadWidget(object,
                                                                           class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                           class Game.ContainerWidget)
    IL_002f:  castclass  Game.ContainerWidget
    IL_0034:  call       instance void Game.Dialog::set_DialogWidget(class Game.ContainerWidget)
    IL_0039:  ldarg.0
    IL_003a:  ldarg.0
    IL_003b:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_0040:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0045:  ldstr      "RateCommunityContentDialog.Name"
    IL_004a:  ldc.i4.1
    IL_004b:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_0050:  stfld      class Game.LabelWidget Game.RateCommunityContentDialog::m_nameLabel
    IL_0055:  ldarg.0
    IL_0056:  ldarg.0
    IL_0057:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_005c:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0061:  ldstr      "RateCommunityContentDialog.StarRating"
    IL_0066:  ldc.i4.1
    IL_0067:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.StarRatingWidget>(string,
                                                                                               bool)
    IL_006c:  stfld      class Game.StarRatingWidget Game.RateCommunityContentDialog::m_starRating
    IL_0071:  ldarg.0
    IL_0072:  ldarg.0
    IL_0073:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_0078:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_007d:  ldstr      "RateCommunityContentDialog.Rate"
    IL_0082:  ldc.i4.1
    IL_0083:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0088:  stfld      class Game.ButtonWidget Game.RateCommunityContentDialog::m_rateButton
    IL_008d:  ldarg.0
    IL_008e:  ldarg.0
    IL_008f:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_0094:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0099:  ldstr      "RateCommunityContentDialog.Report"
    IL_009e:  ldc.i4.1
    IL_009f:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LinkWidget>(string,
                                                                                         bool)
    IL_00a4:  stfld      class Game.LinkWidget Game.RateCommunityContentDialog::m_reportLink
    IL_00a9:  ldarg.0
    IL_00aa:  ldarg.0
    IL_00ab:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_00b0:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00b5:  ldstr      "RateCommunityContentDialog.Cancel"
    IL_00ba:  ldc.i4.1
    IL_00bb:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00c0:  stfld      class Game.ButtonWidget Game.RateCommunityContentDialog::m_cancelButton
    IL_00c5:  ldarg.0
    IL_00c6:  ldfld      class Game.LabelWidget Game.RateCommunityContentDialog::m_nameLabel
    IL_00cb:  ldarg.2
    IL_00cc:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00d1:  ldarg.0
    IL_00d2:  ldfld      class Game.ButtonWidget Game.RateCommunityContentDialog::m_rateButton
    IL_00d7:  ldc.i4.0
    IL_00d8:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_00dd:  ret
  } // end of method RateCommunityContentDialog::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       251 (0xfb)
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
    IL_002b:  brfalse.s  IL_0095

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
    IL_004a:  ldloc.0
    IL_004b:  ldfld      class Game.CancellableBusyDialog Game.RateCommunityContentDialog/'<>c__DisplayClass9_0'::busyDialog
    IL_0050:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_0055:  ldarg.0
    IL_0056:  ldfld      string Game.RateCommunityContentDialog::m_address
    IL_005b:  ldarg.0
    IL_005c:  ldfld      string Game.RateCommunityContentDialog::m_userId
    IL_0061:  ldarg.0
    IL_0062:  ldfld      class Game.StarRatingWidget Game.RateCommunityContentDialog::m_starRating
    IL_0067:  callvirt   instance float32 Game.StarRatingWidget::get_Rating()
    IL_006c:  conv.i4
    IL_006d:  ldloc.0
    IL_006e:  ldfld      class Game.CancellableBusyDialog Game.RateCommunityContentDialog/'<>c__DisplayClass9_0'::busyDialog
    IL_0073:  callvirt   instance class Game.CancellableProgress Game.CancellableBusyDialog::get_Progress()
    IL_0078:  ldloc.0
    IL_0079:  ldftn      instance void Game.RateCommunityContentDialog/'<>c__DisplayClass9_0'::'<Update>b__0'()
    IL_007f:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0084:  ldloc.0
    IL_0085:  ldftn      instance void Game.RateCommunityContentDialog/'<>c__DisplayClass9_0'::'<Update>b__1'(class [System.Runtime]System.Exception)
    IL_008b:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                            native int)
    IL_0090:  call       void Game.CommunityContentManager::Rate(string,
                                                                 string,
                                                                 int32,
                                                                 class Game.CancellableProgress,
                                                                 class [System.Runtime]System.Action,
                                                                 class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
    IL_0095:  ldarg.0
    IL_0096:  ldfld      class Game.LinkWidget Game.RateCommunityContentDialog::m_reportLink
    IL_009b:  callvirt   instance bool Game.LinkWidget::get_IsClicked()
    IL_00a0:  brfalse.s  IL_00cf

    IL_00a2:  call       class Game.UserInfo Game.UserManager::get_ActiveUser()
    IL_00a7:  brfalse.s  IL_00cf

    IL_00a9:  ldarg.0
    IL_00aa:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_00af:  ldarg.0
    IL_00b0:  ldfld      string Game.RateCommunityContentDialog::m_address
    IL_00b5:  ldarg.0
    IL_00b6:  ldfld      string Game.RateCommunityContentDialog::m_displayName
    IL_00bb:  call       class Game.UserInfo Game.UserManager::get_ActiveUser()
    IL_00c0:  ldfld      string Game.UserInfo::UniqueId
    IL_00c5:  newobj     instance void Game.ReportCommunityContentDialog::.ctor(string,
                                                                                string,
                                                                                string)
    IL_00ca:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_00cf:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_00d4:  ldfld      bool Game.InputState::Back
    IL_00d9:  brtrue.s   IL_00f4

    IL_00db:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_00e0:  ldfld      bool Game.InputState::B
    IL_00e5:  brtrue.s   IL_00f4

    IL_00e7:  ldarg.0
    IL_00e8:  ldfld      class Game.ButtonWidget Game.RateCommunityContentDialog::m_cancelButton
    IL_00ed:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00f2:  brfalse.s  IL_00fa

    IL_00f4:  ldarg.0
    IL_00f5:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_00fa:  ret
  } // end of method RateCommunityContentDialog::Update

} // end of class Game.RateCommunityContentDialog