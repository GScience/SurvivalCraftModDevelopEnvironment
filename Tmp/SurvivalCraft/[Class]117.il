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
    // 代码大小       613 (0x265)
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
    IL_0033:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0038:  ldarg.0
    IL_0039:  ldarg.0
    IL_003a:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_003f:  ldstr      "ReportCommunityContentDialog.Name"
    IL_0044:  ldc.i4.1
    IL_0045:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_004a:  stfld      class Game.LabelWidget Game.ReportCommunityContentDialog::m_nameLabel
    IL_004f:  ldarg.0
    IL_0050:  ldarg.0
    IL_0051:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0056:  ldstr      "ReportCommunityContentDialog.Container"
    IL_005b:  ldc.i4.1
    IL_005c:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ContainerWidget>(string,
                                                                                         bool)
    IL_0061:  stfld      class Game.ContainerWidget Game.ReportCommunityContentDialog::m_container
    IL_0066:  ldarg.0
    IL_0067:  ldarg.0
    IL_0068:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_006d:  ldstr      "ReportCommunityContentDialog.Report"
    IL_0072:  ldc.i4.1
    IL_0073:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0078:  stfld      class Game.ButtonWidget Game.ReportCommunityContentDialog::m_reportButton
    IL_007d:  ldarg.0
    IL_007e:  ldarg.0
    IL_007f:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0084:  ldstr      "ReportCommunityContentDialog.Cancel"
    IL_0089:  ldc.i4.1
    IL_008a:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_008f:  stfld      class Game.ButtonWidget Game.ReportCommunityContentDialog::m_cancelButton
    IL_0094:  ldarg.0
    IL_0095:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget> Game.ReportCommunityContentDialog::m_reasonWidgetsList
    IL_009a:  newobj     instance void Game.CheckboxWidget::.ctor()
    IL_009f:  dup
    IL_00a0:  ldstr      "Cruelty"
    IL_00a5:  callvirt   instance void Game.CheckboxWidget::set_Text(string)
    IL_00aa:  dup
    IL_00ab:  ldstr      "cruelty"
    IL_00b0:  callvirt   instance void Game.Widget::set_Tag(object)
    IL_00b5:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget>::Add(!0)
    IL_00ba:  ldarg.0
    IL_00bb:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget> Game.ReportCommunityContentDialog::m_reasonWidgetsList
    IL_00c0:  newobj     instance void Game.CheckboxWidget::.ctor()
    IL_00c5:  dup
    IL_00c6:  ldstr      "Dating"
    IL_00cb:  callvirt   instance void Game.CheckboxWidget::set_Text(string)
    IL_00d0:  dup
    IL_00d1:  ldstr      "dating"
    IL_00d6:  callvirt   instance void Game.Widget::set_Tag(object)
    IL_00db:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget>::Add(!0)
    IL_00e0:  ldarg.0
    IL_00e1:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget> Game.ReportCommunityContentDialog::m_reasonWidgetsList
    IL_00e6:  newobj     instance void Game.CheckboxWidget::.ctor()
    IL_00eb:  dup
    IL_00ec:  ldstr      "Drugs / Alcohol"
    IL_00f1:  callvirt   instance void Game.CheckboxWidget::set_Text(string)
    IL_00f6:  dup
    IL_00f7:  ldstr      "drugs"
    IL_00fc:  callvirt   instance void Game.Widget::set_Tag(object)
    IL_0101:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget>::Add(!0)
    IL_0106:  ldarg.0
    IL_0107:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget> Game.ReportCommunityContentDialog::m_reasonWidgetsList
    IL_010c:  newobj     instance void Game.CheckboxWidget::.ctor()
    IL_0111:  dup
    IL_0112:  ldstr      "Hate Speech"
    IL_0117:  callvirt   instance void Game.CheckboxWidget::set_Text(string)
    IL_011c:  dup
    IL_011d:  ldstr      "hate"
    IL_0122:  callvirt   instance void Game.Widget::set_Tag(object)
    IL_0127:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget>::Add(!0)
    IL_012c:  ldarg.0
    IL_012d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget> Game.ReportCommunityContentDialog::m_reasonWidgetsList
    IL_0132:  newobj     instance void Game.CheckboxWidget::.ctor()
    IL_0137:  dup
    IL_0138:  ldstr      "Plagiarism"
    IL_013d:  callvirt   instance void Game.CheckboxWidget::set_Text(string)
    IL_0142:  dup
    IL_0143:  ldstr      "plagiarism"
    IL_0148:  callvirt   instance void Game.Widget::set_Tag(object)
    IL_014d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget>::Add(!0)
    IL_0152:  ldarg.0
    IL_0153:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget> Game.ReportCommunityContentDialog::m_reasonWidgetsList
    IL_0158:  newobj     instance void Game.CheckboxWidget::.ctor()
    IL_015d:  dup
    IL_015e:  ldstr      "Racism"
    IL_0163:  callvirt   instance void Game.CheckboxWidget::set_Text(string)
    IL_0168:  dup
    IL_0169:  ldstr      "racism"
    IL_016e:  callvirt   instance void Game.Widget::set_Tag(object)
    IL_0173:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget>::Add(!0)
    IL_0178:  ldarg.0
    IL_0179:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget> Game.ReportCommunityContentDialog::m_reasonWidgetsList
    IL_017e:  newobj     instance void Game.CheckboxWidget::.ctor()
    IL_0183:  dup
    IL_0184:  ldstr      "Sex / Nudity"
    IL_0189:  callvirt   instance void Game.CheckboxWidget::set_Text(string)
    IL_018e:  dup
    IL_018f:  ldstr      "sex"
    IL_0194:  callvirt   instance void Game.Widget::set_Tag(object)
    IL_0199:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget>::Add(!0)
    IL_019e:  ldarg.0
    IL_019f:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget> Game.ReportCommunityContentDialog::m_reasonWidgetsList
    IL_01a4:  newobj     instance void Game.CheckboxWidget::.ctor()
    IL_01a9:  dup
    IL_01aa:  ldstr      "Excessive Swearing"
    IL_01af:  callvirt   instance void Game.CheckboxWidget::set_Text(string)
    IL_01b4:  dup
    IL_01b5:  ldstr      "swearing"
    IL_01ba:  callvirt   instance void Game.Widget::set_Tag(object)
    IL_01bf:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget>::Add(!0)
    IL_01c4:  ldloc.0
    IL_01c5:  newobj     instance void Game.Random::.ctor()
    IL_01ca:  stfld      class Game.Random Game.ReportCommunityContentDialog/'<>c__DisplayClass7_0'::random
    IL_01cf:  ldarg.0
    IL_01d0:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget> Game.ReportCommunityContentDialog::m_reasonWidgetsList
    IL_01d5:  ldloc.0
    IL_01d6:  ldftn      instance int32 Game.ReportCommunityContentDialog/'<>c__DisplayClass7_0'::'<.ctor>b__0'(int32)
    IL_01dc:  newobj     instance void class [System.Runtime]System.Func`2<int32,int32>::.ctor(object,
                                                                                               native int)
    IL_01e1:  call       void Game.CollectionUtils::RandomShuffle<class Game.CheckboxWidget>(class [System.Runtime]System.Collections.Generic.IList`1<!!0>,
                                                                                             class [System.Runtime]System.Func`2<int32,int32>)
    IL_01e6:  ldarg.0
    IL_01e7:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget> Game.ReportCommunityContentDialog::m_reasonWidgetsList
    IL_01ec:  newobj     instance void Game.CheckboxWidget::.ctor()
    IL_01f1:  dup
    IL_01f2:  ldstr      "Other"
    IL_01f7:  callvirt   instance void Game.CheckboxWidget::set_Text(string)
    IL_01fc:  dup
    IL_01fd:  ldstr      "other"
    IL_0202:  callvirt   instance void Game.Widget::set_Tag(object)
    IL_0207:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget>::Add(!0)
    IL_020c:  ldarg.0
    IL_020d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget> Game.ReportCommunityContentDialog::m_reasonWidgetsList
    IL_0212:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.CheckboxWidget>::GetEnumerator()
    IL_0217:  stloc.2
    .try
    {
      IL_0218:  br.s       IL_0233

      IL_021a:  ldloca.s   V_2
      IL_021c:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.CheckboxWidget>::get_Current()
      IL_0221:  stloc.3
      IL_0222:  ldarg.0
      IL_0223:  ldfld      class Game.ContainerWidget Game.ReportCommunityContentDialog::m_container
      IL_0228:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
      IL_022d:  ldloc.3
      IL_022e:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
      IL_0233:  ldloca.s   V_2
      IL_0235:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.CheckboxWidget>::MoveNext()
      IL_023a:  brtrue.s   IL_021a

      IL_023c:  leave.s    IL_024c

    }  // end .try
    finally
    {
      IL_023e:  ldloca.s   V_2
      IL_0240:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.CheckboxWidget>
      IL_0246:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_024b:  endfinally
    }  // end handler
    IL_024c:  ldarg.0
    IL_024d:  ldfld      class Game.LabelWidget Game.ReportCommunityContentDialog::m_nameLabel
    IL_0252:  ldarg.2
    IL_0253:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0258:  ldarg.0
    IL_0259:  ldfld      class Game.ButtonWidget Game.ReportCommunityContentDialog::m_reportButton
    IL_025e:  ldc.i4.0
    IL_025f:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0264:  ret
  } // end of method ReportCommunityContentDialog::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       156 (0x9c)
    .maxstack  7
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
    IL_0043:  brfalse.s  IL_007b

    IL_0045:  ldarg.0
    IL_0046:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_004b:  ldarg.0
    IL_004c:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_0051:  ldstr      "Are you sure\?"
    IL_0056:  ldstr      "Reporting offensive content is a serious matter. P"
    + "lease make sure you checked the right box. Do not report content which "
    + "is not offensive."
    IL_005b:  ldstr      "Proceed"
    IL_0060:  ldstr      "Cancel"
    IL_0065:  ldarg.0
    IL_0066:  ldftn      instance void Game.ReportCommunityContentDialog::'<Update>b__8_1'(valuetype Game.MessageDialogButton)
    IL_006c:  newobj     instance void class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>::.ctor(object,
                                                                                                                        native int)
    IL_0071:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_0076:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_007b:  ldarg.0
    IL_007c:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0081:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_0086:  brtrue.s   IL_0095

    IL_0088:  ldarg.0
    IL_0089:  ldfld      class Game.ButtonWidget Game.ReportCommunityContentDialog::m_cancelButton
    IL_008e:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0093:  brfalse.s  IL_009b

    IL_0095:  ldarg.0
    IL_0096:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_009b:  ret
  } // end of method ReportCommunityContentDialog::Update

  .method private hidebysig instance void 
          '<Update>b__8_1'(valuetype Game.MessageDialogButton b) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       175 (0xaf)
    .maxstack  7
    .locals init (class Game.ReportCommunityContentDialog/'<>c__DisplayClass8_0' V_0,
             string V_1,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.CheckboxWidget> V_2,
             class Game.CheckboxWidget V_3)
    IL_0000:  ldarg.1
    IL_0001:  brtrue     IL_00ae

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
    IL_0068:  ldarg.0
    IL_0069:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_006e:  ldloc.0
    IL_006f:  ldfld      class Game.CancellableBusyDialog Game.ReportCommunityContentDialog/'<>c__DisplayClass8_0'::busyDialog
    IL_0074:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_0079:  ldarg.0
    IL_007a:  ldfld      string Game.ReportCommunityContentDialog::m_address
    IL_007f:  ldarg.0
    IL_0080:  ldfld      string Game.ReportCommunityContentDialog::m_userId
    IL_0085:  ldloc.1
    IL_0086:  ldloc.0
    IL_0087:  ldfld      class Game.CancellableBusyDialog Game.ReportCommunityContentDialog/'<>c__DisplayClass8_0'::busyDialog
    IL_008c:  callvirt   instance class Game.CancellableProgress Game.CancellableBusyDialog::get_Progress()
    IL_0091:  ldloc.0
    IL_0092:  ldftn      instance void Game.ReportCommunityContentDialog/'<>c__DisplayClass8_0'::'<Update>b__2'()
    IL_0098:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_009d:  ldloc.0
    IL_009e:  ldftn      instance void Game.ReportCommunityContentDialog/'<>c__DisplayClass8_0'::'<Update>b__3'(class [System.Runtime]System.Exception)
    IL_00a4:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                            native int)
    IL_00a9:  call       void Game.CommunityContentManager::Report(string,
                                                                   string,
                                                                   string,
                                                                   class Game.CancellableProgress,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
    IL_00ae:  ret
  } // end of method ReportCommunityContentDialog::'<Update>b__8_1'

} // end of class Game.ReportCommunityContentDialog