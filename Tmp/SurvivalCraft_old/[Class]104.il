.class public auto ansi beforefieldinit Game.ReportCommunityContentDialog
       extends Game.Dialog
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass7_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class Game.Random random
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass7_0'::.ctor

    .method assembly hidebysig instance int32 
            '<.ctor>b__0'(int32 max) cil managed
    {
      // 代码大小       16 (0x10)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.Random Game.ReportCommunityContentDialog/'<>c__DisplayClass7_0'::random
      IL_0006:  ldc.i4.0
      IL_0007:  ldarg.1
      IL_0008:  ldc.i4.1
      IL_0009:  sub
      IL_000a:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                  int32)
      IL_000f:  ret
    } // end of method '<>c__DisplayClass7_0'::'<.ctor>b__0'

  } // end of class '<>c__DisplayClass7_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass8_0'
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
    } // end of method '<>c__DisplayClass8_0'::.ctor

    .method assembly hidebysig instance void 
            '<Update>b__2'() cil managed
    {
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CancellableBusyDialog Game.ReportCommunityContentDialog/'<>c__DisplayClass8_0'::busyDialog
      IL_0006:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
      IL_000b:  ret
    } // end of method '<>c__DisplayClass8_0'::'<Update>b__2'

    .method assembly hidebysig instance void 
            '<Update>b__3'(class [System.Runtime]System.Exception '<obj>') cil managed
    {
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.CancellableBusyDialog Game.ReportCommunityContentDialog/'<>c__DisplayClass8_0'::busyDialog
      IL_0006:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
      IL_000b:  ret
    } // end of method '<>c__DisplayClass8_0'::'<Update>b__3'

  } // end of class '<>c__DisplayClass8_0'

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.ReportCommunityContentDialog/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<class Game.CheckboxWidget,bool> '<>9__8_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.ReportCommunityContentDialog/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.ReportCommunityContentDialog/'<>c' Game.ReportCommunityContentDialog/'<>c'::'<>9'
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
            '<Update>b__8_0'(class Game.CheckboxWidget w) cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance bool Game.CheckboxWidget::get_IsChecked()
      IL_0006:  ret
    } // end of method '<>c'::'<Update>b__8_0'

  } // end of class '<>c'

  .field private string m_address
  .field private string m_userId
  .field private class Game.LabelWidget m_nameLabel
  .field private class Game.ContainerWidget m_container
  .field private class Game.ButtonWidget m_reportButton
  .field private class Game.ButtonWidget m_cancelButton
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget> m_reasonWidgetsList
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string address,
                               string displayName,
                               string userId) cil managed
  {
    // 代码大小       644 (0x284)
    .maxstack  4
    .locals init (class Game.ReportCommunityContentDialog/'<>c__DisplayClass7_0' V_0,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_1,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.CheckboxWidget> V_2,
             class Game.Widget V_3)
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget> Game.ReportCommunityContentDialog::m_reasonWidgetsList
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.Dialog::.ctor()
    IL_0011:  newobj     instance void Game.ReportCommunityContentDialog/'<>c__DisplayClass7_0'::.ctor()
    IL_0016:  stloc.0
    IL_0017:  ldarg.0
    IL_0018:  ldarg.1
    IL_0019:  stfld      string Game.ReportCommunityContentDialog::m_address
    IL_001e:  ldarg.0
    IL_001f:  ldarg.3
    IL_0020:  stfld      string Game.ReportCommunityContentDialog::m_userId
    IL_0025:  ldstr      "Dialogs/ReportCommunityContentDialog"
    IL_002a:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_002f:  stloc.1
    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  ldloc.1
    IL_0033:  ldnull
    IL_0034:  call       class Game.Widget Game.WidgetsManager::LoadWidget(object,
                                                                           class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                           class Game.ContainerWidget)
    IL_0039:  castclass  Game.ContainerWidget
    IL_003e:  call       instance void Game.Dialog::set_DialogWidget(class Game.ContainerWidget)
    IL_0043:  ldarg.0
    IL_0044:  ldarg.0
    IL_0045:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_004a:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_004f:  ldstr      "ReportCommunityContentDialog.Name"
    IL_0054:  ldc.i4.1
    IL_0055:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_005a:  stfld      class Game.LabelWidget Game.ReportCommunityContentDialog::m_nameLabel
    IL_005f:  ldarg.0
    IL_0060:  ldarg.0
    IL_0061:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_0066:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_006b:  ldstr      "ReportCommunityContentDialog.Container"
    IL_0070:  ldc.i4.1
    IL_0071:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ContainerWidget>(string,
                                                                                              bool)
    IL_0076:  stfld      class Game.ContainerWidget Game.ReportCommunityContentDialog::m_container
    IL_007b:  ldarg.0
    IL_007c:  ldarg.0
    IL_007d:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_0082:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0087:  ldstr      "ReportCommunityContentDialog.Report"
    IL_008c:  ldc.i4.1
    IL_008d:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0092:  stfld      class Game.ButtonWidget Game.ReportCommunityContentDialog::m_reportButton
    IL_0097:  ldarg.0
    IL_0098:  ldarg.0
    IL_0099:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_009e:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00a3:  ldstr      "ReportCommunityContentDialog.Cancel"
    IL_00a8:  ldc.i4.1
    IL_00a9:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00ae:  stfld      class Game.ButtonWidget Game.ReportCommunityContentDialog::m_cancelButton
    IL_00b3:  ldarg.0
    IL_00b4:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget> Game.ReportCommunityContentDialog::m_reasonWidgetsList
    IL_00b9:  newobj     instance void Game.CheckboxWidget::.ctor()
    IL_00be:  dup
    IL_00bf:  ldstr      "Cruelty"
    IL_00c4:  callvirt   instance void Game.CheckboxWidget::set_Text(string)
    IL_00c9:  dup
    IL_00ca:  ldstr      "cruelty"
    IL_00cf:  callvirt   instance void Game.Widget::set_Tag(object)
    IL_00d4:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget>::Add(!0)
    IL_00d9:  ldarg.0
    IL_00da:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget> Game.ReportCommunityContentDialog::m_reasonWidgetsList
    IL_00df:  newobj     instance void Game.CheckboxWidget::.ctor()
    IL_00e4:  dup
    IL_00e5:  ldstr      "Dating"
    IL_00ea:  callvirt   instance void Game.CheckboxWidget::set_Text(string)
    IL_00ef:  dup
    IL_00f0:  ldstr      "dating"
    IL_00f5:  callvirt   instance void Game.Widget::set_Tag(object)
    IL_00fa:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget>::Add(!0)
    IL_00ff:  ldarg.0
    IL_0100:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget> Game.ReportCommunityContentDialog::m_reasonWidgetsList
    IL_0105:  newobj     instance void Game.CheckboxWidget::.ctor()
    IL_010a:  dup
    IL_010b:  ldstr      "Drugs / Alcohol"
    IL_0110:  callvirt   instance void Game.CheckboxWidget::set_Text(string)
    IL_0115:  dup
    IL_0116:  ldstr      "drugs"
    IL_011b:  callvirt   instance void Game.Widget::set_Tag(object)
    IL_0120:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget>::Add(!0)
    IL_0125:  ldarg.0
    IL_0126:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget> Game.ReportCommunityContentDialog::m_reasonWidgetsList
    IL_012b:  newobj     instance void Game.CheckboxWidget::.ctor()
    IL_0130:  dup
    IL_0131:  ldstr      "Hate Speech"
    IL_0136:  callvirt   instance void Game.CheckboxWidget::set_Text(string)
    IL_013b:  dup
    IL_013c:  ldstr      "hate"
    IL_0141:  callvirt   instance void Game.Widget::set_Tag(object)
    IL_0146:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget>::Add(!0)
    IL_014b:  ldarg.0
    IL_014c:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget> Game.ReportCommunityContentDialog::m_reasonWidgetsList
    IL_0151:  newobj     instance void Game.CheckboxWidget::.ctor()
    IL_0156:  dup
    IL_0157:  ldstr      "Plagiarism"
    IL_015c:  callvirt   instance void Game.CheckboxWidget::set_Text(string)
    IL_0161:  dup
    IL_0162:  ldstr      "plagiarism"
    IL_0167:  callvirt   instance void Game.Widget::set_Tag(object)
    IL_016c:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget>::Add(!0)
    IL_0171:  ldarg.0
    IL_0172:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget> Game.ReportCommunityContentDialog::m_reasonWidgetsList
    IL_0177:  newobj     instance void Game.CheckboxWidget::.ctor()
    IL_017c:  dup
    IL_017d:  ldstr      "Racism"
    IL_0182:  callvirt   instance void Game.CheckboxWidget::set_Text(string)
    IL_0187:  dup
    IL_0188:  ldstr      "racism"
    IL_018d:  callvirt   instance void Game.Widget::set_Tag(object)
    IL_0192:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget>::Add(!0)
    IL_0197:  ldarg.0
    IL_0198:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget> Game.ReportCommunityContentDialog::m_reasonWidgetsList
    IL_019d:  newobj     instance void Game.CheckboxWidget::.ctor()
    IL_01a2:  dup
    IL_01a3:  ldstr      "Sex / Nudity"
    IL_01a8:  callvirt   instance void Game.CheckboxWidget::set_Text(string)
    IL_01ad:  dup
    IL_01ae:  ldstr      "sex"
    IL_01b3:  callvirt   instance void Game.Widget::set_Tag(object)
    IL_01b8:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget>::Add(!0)
    IL_01bd:  ldarg.0
    IL_01be:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget> Game.ReportCommunityContentDialog::m_reasonWidgetsList
    IL_01c3:  newobj     instance void Game.CheckboxWidget::.ctor()
    IL_01c8:  dup
    IL_01c9:  ldstr      "Excessive Swearing"
    IL_01ce:  callvirt   instance void Game.CheckboxWidget::set_Text(string)
    IL_01d3:  dup
    IL_01d4:  ldstr      "swearing"
    IL_01d9:  callvirt   instance void Game.Widget::set_Tag(object)
    IL_01de:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget>::Add(!0)
    IL_01e3:  ldloc.0
    IL_01e4:  newobj     instance void Game.Random::.ctor()
    IL_01e9:  stfld      class Game.Random Game.ReportCommunityContentDialog/'<>c__DisplayClass7_0'::random
    IL_01ee:  ldarg.0
    IL_01ef:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget> Game.ReportCommunityContentDialog::m_reasonWidgetsList
    IL_01f4:  ldloc.0
    IL_01f5:  ldftn      instance int32 Game.ReportCommunityContentDialog/'<>c__DisplayClass7_0'::'<.ctor>b__0'(int32)
    IL_01fb:  newobj     instance void class [System.Runtime]System.Func`2<int32,int32>::.ctor(object,
                                                                                               native int)
    IL_0200:  call       void Game.CollectionUtils::RandomShuffle<class Game.CheckboxWidget>(class [System.Runtime]System.Collections.Generic.IList`1<!!0>,
                                                                                             class [System.Runtime]System.Func`2<int32,int32>)
    IL_0205:  ldarg.0
    IL_0206:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget> Game.ReportCommunityContentDialog::m_reasonWidgetsList
    IL_020b:  newobj     instance void Game.CheckboxWidget::.ctor()
    IL_0210:  dup
    IL_0211:  ldstr      "Other"
    IL_0216:  callvirt   instance void Game.CheckboxWidget::set_Text(string)
    IL_021b:  dup
    IL_021c:  ldstr      "other"
    IL_0221:  callvirt   instance void Game.Widget::set_Tag(object)
    IL_0226:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget>::Add(!0)
    IL_022b:  ldarg.0
    IL_022c:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget> Game.ReportCommunityContentDialog::m_reasonWidgetsList
    IL_0231:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget>::GetEnumerator()
    IL_0236:  stloc.2
    .try
    {
      IL_0237:  br.s       IL_0252

      IL_0239:  ldloca.s   V_2
      IL_023b:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.CheckboxWidget>::get_Current()
      IL_0240:  stloc.3
      IL_0241:  ldarg.0
      IL_0242:  ldfld      class Game.ContainerWidget Game.ReportCommunityContentDialog::m_container
      IL_0247:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
      IL_024c:  ldloc.3
      IL_024d:  callvirt   instance void Game.WidgetsContainer::Add(class Game.Widget)
      IL_0252:  ldloca.s   V_2
      IL_0254:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.CheckboxWidget>::MoveNext()
      IL_0259:  brtrue.s   IL_0239

      IL_025b:  leave.s    IL_026b

    }  // end .try
    finally
    {
      IL_025d:  ldloca.s   V_2
      IL_025f:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.CheckboxWidget>
      IL_0265:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_026a:  endfinally
    }  // end handler
    IL_026b:  ldarg.0
    IL_026c:  ldfld      class Game.LabelWidget Game.ReportCommunityContentDialog::m_nameLabel
    IL_0271:  ldarg.2
    IL_0272:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0277:  ldarg.0
    IL_0278:  ldfld      class Game.ButtonWidget Game.ReportCommunityContentDialog::m_reportButton
    IL_027d:  ldc.i4.0
    IL_027e:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0283:  ret
  } // end of method ReportCommunityContentDialog::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       161 (0xa1)
    .maxstack  6
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ButtonWidget Game.ReportCommunityContentDialog::m_reportButton
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget> Game.ReportCommunityContentDialog::m_reasonWidgetsList
    IL_000c:  ldsfld     class [System.Runtime]System.Func`2<class Game.CheckboxWidget,bool> Game.ReportCommunityContentDialog/'<>c'::'<>9__8_0'
    IL_0011:  dup
    IL_0012:  brtrue.s   IL_002b

    IL_0014:  pop
    IL_0015:  ldsfld     class Game.ReportCommunityContentDialog/'<>c' Game.ReportCommunityContentDialog/'<>c'::'<>9'
    IL_001a:  ldftn      instance bool Game.ReportCommunityContentDialog/'<>c'::'<Update>b__8_0'(class Game.CheckboxWidget)
    IL_0020:  newobj     instance void class [System.Runtime]System.Func`2<class Game.CheckboxWidget,bool>::.ctor(object,
                                                                                                                  native int)
    IL_0025:  dup
    IL_0026:  stsfld     class [System.Runtime]System.Func`2<class Game.CheckboxWidget,bool> Game.ReportCommunityContentDialog/'<>c'::'<>9__8_0'
    IL_002b:  call       int32 [System.Linq]System.Linq.Enumerable::Count<class Game.CheckboxWidget>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                     class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0030:  ldc.i4.1
    IL_0031:  ceq
    IL_0033:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0038:  ldarg.0
    IL_0039:  ldfld      class Game.ButtonWidget Game.ReportCommunityContentDialog::m_reportButton
    IL_003e:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0043:  brfalse.s  IL_0075

    IL_0045:  ldarg.0
    IL_0046:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_004b:  ldstr      "Are you sure\?"
    IL_0050:  ldstr      "Reporting offensive content is a serious matter. P"
    + "lease make sure you checked the right boxes. Do not report content whic"
    + "h is not offensive."
    IL_0055:  ldstr      "Proceed"
    IL_005a:  ldstr      "Cancel"
    IL_005f:  ldarg.0
    IL_0060:  ldftn      instance void Game.ReportCommunityContentDialog::'<Update>b__8_1'(valuetype Game.MessageDialogButton)
    IL_0066:  newobj     instance void class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>::.ctor(object,
                                                                                                                        native int)
    IL_006b:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_0070:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_0075:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_007a:  ldfld      bool Game.InputState::Back
    IL_007f:  brtrue.s   IL_009a

    IL_0081:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0086:  ldfld      bool Game.InputState::B
    IL_008b:  brtrue.s   IL_009a

    IL_008d:  ldarg.0
    IL_008e:  ldfld      class Game.ButtonWidget Game.ReportCommunityContentDialog::m_cancelButton
    IL_0093:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0098:  brfalse.s  IL_00a0

    IL_009a:  ldarg.0
    IL_009b:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_00a0:  ret
  } // end of method ReportCommunityContentDialog::Update

  .method private hidebysig instance void 
          '<Update>b__8_1'(valuetype Game.MessageDialogButton b) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       169 (0xa9)
    .maxstack  7
    .locals init (class Game.ReportCommunityContentDialog/'<>c__DisplayClass8_0' V_0,
             string V_1,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.CheckboxWidget> V_2,
             class Game.CheckboxWidget V_3)
    IL_0000:  ldarg.1
    IL_0001:  brtrue     IL_00a8

    IL_0006:  newobj     instance void Game.ReportCommunityContentDialog/'<>c__DisplayClass8_0'::.ctor()
    IL_000b:  stloc.0
    IL_000c:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0011:  stloc.1
    IL_0012:  ldarg.0
    IL_0013:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget> Game.ReportCommunityContentDialog::m_reasonWidgetsList
    IL_0018:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget>::GetEnumerator()
    IL_001d:  stloc.2
    .try
    {
      IL_001e:  br.s       IL_003e

      IL_0020:  ldloca.s   V_2
      IL_0022:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.CheckboxWidget>::get_Current()
      IL_0027:  stloc.3
      IL_0028:  ldloc.3
      IL_0029:  callvirt   instance bool Game.CheckboxWidget::get_IsChecked()
      IL_002e:  brfalse.s  IL_003e

      IL_0030:  ldloc.3
      IL_0031:  callvirt   instance object Game.Widget::get_Tag()
      IL_0036:  castclass  [System.Runtime]System.String
      IL_003b:  stloc.1
      IL_003c:  leave.s    IL_0057

      IL_003e:  ldloca.s   V_2
      IL_0040:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.CheckboxWidget>::MoveNext()
      IL_0045:  brtrue.s   IL_0020

      IL_0047:  leave.s    IL_0057

    }  // end .try
    finally
    {
      IL_0049:  ldloca.s   V_2
      IL_004b:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.CheckboxWidget>
      IL_0051:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0056:  endfinally
    }  // end handler
    IL_0057:  ldloc.0
    IL_0058:  ldstr      "Sending Report"
    IL_005d:  ldc.i4.0
    IL_005e:  newobj     instance void Game.CancellableBusyDialog::.ctor(string,
                                                                         bool)
    IL_0063:  stfld      class Game.CancellableBusyDialog Game.ReportCommunityContentDialog/'<>c__DisplayClass8_0'::busyDialog
    IL_0068:  ldloc.0
    IL_0069:  ldfld      class Game.CancellableBusyDialog Game.ReportCommunityContentDialog/'<>c__DisplayClass8_0'::busyDialog
    IL_006e:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_0073:  ldarg.0
    IL_0074:  ldfld      string Game.ReportCommunityContentDialog::m_address
    IL_0079:  ldarg.0
    IL_007a:  ldfld      string Game.ReportCommunityContentDialog::m_userId
    IL_007f:  ldloc.1
    IL_0080:  ldloc.0
    IL_0081:  ldfld      class Game.CancellableBusyDialog Game.ReportCommunityContentDialog/'<>c__DisplayClass8_0'::busyDialog
    IL_0086:  callvirt   instance class Game.CancellableProgress Game.CancellableBusyDialog::get_Progress()
    IL_008b:  ldloc.0
    IL_008c:  ldftn      instance void Game.ReportCommunityContentDialog/'<>c__DisplayClass8_0'::'<Update>b__2'()
    IL_0092:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0097:  ldloc.0
    IL_0098:  ldftn      instance void Game.ReportCommunityContentDialog/'<>c__DisplayClass8_0'::'<Update>b__3'(class [System.Runtime]System.Exception)
    IL_009e:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                            native int)
    IL_00a3:  call       void Game.CommunityContentManager::Report(string,
                                                                   string,
                                                                   string,
                                                                   class Game.CancellableProgress,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
    IL_00a8:  ret
  } // end of method ReportCommunityContentDialog::'<Update>b__8_1'

} // end of class Game.ReportCommunityContentDialog