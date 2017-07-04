.class public auto ansi beforefieldinit Game.ListSelectionDialog
       extends Game.Dialog
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass7_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [System.Runtime]System.Func`2<object,string> itemToStringConverter
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass7_0'::.ctor

    .method assembly hidebysig instance class Game.Widget 
            '<.ctor>b__0'(object item) cil managed
    {
      // 代码大小       38 (0x26)
      .maxstack  8
      IL_0000:  newobj     instance void Game.LabelWidget::.ctor()
      IL_0005:  dup
      IL_0006:  ldarg.0
      IL_0007:  ldfld      class [System.Runtime]System.Func`2<object,string> Game.ListSelectionDialog/'<>c__DisplayClass7_0'::itemToStringConverter
      IL_000c:  ldarg.1
      IL_000d:  callvirt   instance !1 class [System.Runtime]System.Func`2<object,string>::Invoke(!0)
      IL_0012:  callvirt   instance void Game.LabelWidget::set_Text(string)
      IL_0017:  dup
      IL_0018:  ldc.i4.1
      IL_0019:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
      IL_001e:  dup
      IL_001f:  ldc.i4.1
      IL_0020:  callvirt   instance void Game.Widget::set_VerticalAlignment(valuetype Game.WidgetAlignment)
      IL_0025:  ret
    } // end of method '<>c__DisplayClass7_0'::'<.ctor>b__0'

  } // end of class '<>c__DisplayClass7_0'

  .field private class [System.Runtime]System.Action`1<object> m_selectionHandler
  .field private class Game.LabelWidget m_titleLabelWidget
  .field private class Game.ListPanelWidget m_listWidget
  .field private class Game.CanvasWidget m_contentWidget
  .field private valuetype [System.Runtime]System.Nullable`1<float64> m_dismissTime
  .field private bool m_isDismissed
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string title,
                               class [System.Runtime]System.Collections.IEnumerable items,
                               float32 itemSize,
                               class [System.Runtime]System.Func`2<object,class Game.Widget> itemWidgetFactory,
                               class [System.Runtime]System.Action`1<object> selectionHandler) cil managed
  {
    // 代码大小       350 (0x15e)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0,
             class [System.Runtime]System.Collections.IEnumerator V_1,
             object V_2,
             class [System.Runtime]System.IDisposable V_3,
             int32 V_4,
             valuetype [Engine]Engine.ReadOnlyList`1<object> V_5,
             float32 V_6)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Dialog::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.s    selectionHandler
    IL_0009:  stfld      class [System.Runtime]System.Action`1<object> Game.ListSelectionDialog::m_selectionHandler
    IL_000e:  ldstr      "Dialogs/ListSelectionDialog"
    IL_0013:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0018:  stloc.0
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  ldloc.0
    IL_001c:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0021:  ldarg.0
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0028:  ldstr      "ListSelectionDialog.Title"
    IL_002d:  ldc.i4.1
    IL_002e:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0033:  stfld      class Game.LabelWidget Game.ListSelectionDialog::m_titleLabelWidget
    IL_0038:  ldarg.0
    IL_0039:  ldarg.0
    IL_003a:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_003f:  ldstr      "ListSelectionDialog.List"
    IL_0044:  ldc.i4.1
    IL_0045:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ListPanelWidget>(string,
                                                                                         bool)
    IL_004a:  stfld      class Game.ListPanelWidget Game.ListSelectionDialog::m_listWidget
    IL_004f:  ldarg.0
    IL_0050:  ldarg.0
    IL_0051:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0056:  ldstr      "ListSelectionDialog.Content"
    IL_005b:  ldc.i4.1
    IL_005c:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.CanvasWidget>(string,
                                                                                      bool)
    IL_0061:  stfld      class Game.CanvasWidget Game.ListSelectionDialog::m_contentWidget
    IL_0066:  ldarg.0
    IL_0067:  ldfld      class Game.LabelWidget Game.ListSelectionDialog::m_titleLabelWidget
    IL_006c:  ldarg.1
    IL_006d:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0072:  ldarg.0
    IL_0073:  ldfld      class Game.LabelWidget Game.ListSelectionDialog::m_titleLabelWidget
    IL_0078:  ldarg.1
    IL_0079:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_007e:  ldc.i4.0
    IL_007f:  ceq
    IL_0081:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0086:  ldarg.0
    IL_0087:  ldfld      class Game.ListPanelWidget Game.ListSelectionDialog::m_listWidget
    IL_008c:  ldarg.3
    IL_008d:  callvirt   instance void Game.ListPanelWidget::set_ItemSize(float32)
    IL_0092:  ldarg.s    itemWidgetFactory
    IL_0094:  brfalse.s  IL_00a3

    IL_0096:  ldarg.0
    IL_0097:  ldfld      class Game.ListPanelWidget Game.ListSelectionDialog::m_listWidget
    IL_009c:  ldarg.s    itemWidgetFactory
    IL_009e:  callvirt   instance void Game.ListPanelWidget::set_ItemWidgetFactory(class [System.Runtime]System.Func`2<object,class Game.Widget>)
    IL_00a3:  ldarg.2
    IL_00a4:  callvirt   instance class [System.Runtime]System.Collections.IEnumerator [System.Runtime]System.Collections.IEnumerable::GetEnumerator()
    IL_00a9:  stloc.1
    .try
    {
      IL_00aa:  br.s       IL_00bf

      IL_00ac:  ldloc.1
      IL_00ad:  callvirt   instance object [System.Runtime]System.Collections.IEnumerator::get_Current()
      IL_00b2:  stloc.2
      IL_00b3:  ldarg.0
      IL_00b4:  ldfld      class Game.ListPanelWidget Game.ListSelectionDialog::m_listWidget
      IL_00b9:  ldloc.2
      IL_00ba:  callvirt   instance void Game.ListPanelWidget::AddItem(object)
      IL_00bf:  ldloc.1
      IL_00c0:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_00c5:  brtrue.s   IL_00ac

      IL_00c7:  leave.s    IL_00da

    }  // end .try
    finally
    {
      IL_00c9:  ldloc.1
      IL_00ca:  isinst     [System.Runtime]System.IDisposable
      IL_00cf:  stloc.3
      IL_00d0:  ldloc.3
      IL_00d1:  brfalse.s  IL_00d9

      IL_00d3:  ldloc.3
      IL_00d4:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00d9:  endfinally
    }  // end handler
    IL_00da:  ldarg.0
    IL_00db:  ldfld      class Game.ListPanelWidget Game.ListSelectionDialog::m_listWidget
    IL_00e0:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<object> Game.ListPanelWidget::get_Items()
    IL_00e5:  stloc.s    V_5
    IL_00e7:  ldloca.s   V_5
    IL_00e9:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<object>::get_Count()
    IL_00ee:  stloc.s    V_4
    IL_00f0:  br.s       IL_0158

    IL_00f2:  ldloc.s    V_4
    IL_00f4:  conv.r4
    IL_00f5:  ldc.r4     0.5
    IL_00fa:  add
    IL_00fb:  ldarg.0
    IL_00fc:  ldfld      class Game.ListPanelWidget Game.ListSelectionDialog::m_listWidget
    IL_0101:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<object> Game.ListPanelWidget::get_Items()
    IL_0106:  stloc.s    V_5
    IL_0108:  ldloca.s   V_5
    IL_010a:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<object>::get_Count()
    IL_010f:  conv.r4
    IL_0110:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0115:  stloc.s    V_6
    IL_0117:  ldloc.s    V_6
    IL_0119:  ldarg.3
    IL_011a:  mul
    IL_011b:  ldarg.0
    IL_011c:  ldfld      class Game.CanvasWidget Game.ListSelectionDialog::m_contentWidget
    IL_0121:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.CanvasWidget::get_Size()
    IL_0126:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_012b:  bgt.un.s   IL_0152

    IL_012d:  ldarg.0
    IL_012e:  ldfld      class Game.CanvasWidget Game.ListSelectionDialog::m_contentWidget
    IL_0133:  ldarg.0
    IL_0134:  ldfld      class Game.CanvasWidget Game.ListSelectionDialog::m_contentWidget
    IL_0139:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.CanvasWidget::get_Size()
    IL_013e:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0143:  ldloc.s    V_6
    IL_0145:  ldarg.3
    IL_0146:  mul
    IL_0147:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_014c:  callvirt   instance void Game.CanvasWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_0151:  ret

    IL_0152:  ldloc.s    V_4
    IL_0154:  ldc.i4.1
    IL_0155:  sub
    IL_0156:  stloc.s    V_4
    IL_0158:  ldloc.s    V_4
    IL_015a:  ldc.i4.0
    IL_015b:  bge.s      IL_00f2

    IL_015d:  ret
  } // end of method ListSelectionDialog::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string title,
                               class [System.Runtime]System.Collections.IEnumerable items,
                               float32 itemSize,
                               class [System.Runtime]System.Func`2<object,string> itemToStringConverter,
                               class [System.Runtime]System.Action`1<object> selectionHandler) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class Game.ListSelectionDialog/'<>c__DisplayClass7_0' V_0)
    IL_0000:  newobj     instance void Game.ListSelectionDialog/'<>c__DisplayClass7_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.s    itemToStringConverter
    IL_0009:  stfld      class [System.Runtime]System.Func`2<object,string> Game.ListSelectionDialog/'<>c__DisplayClass7_0'::itemToStringConverter
    IL_000e:  ldarg.0
    IL_000f:  ldarg.1
    IL_0010:  ldarg.2
    IL_0011:  ldarg.3
    IL_0012:  ldloc.0
    IL_0013:  ldftn      instance class Game.Widget Game.ListSelectionDialog/'<>c__DisplayClass7_0'::'<.ctor>b__0'(object)
    IL_0019:  newobj     instance void class [System.Runtime]System.Func`2<object,class Game.Widget>::.ctor(object,
                                                                                                            native int)
    IL_001e:  ldarg.s    selectionHandler
    IL_0020:  call       instance void Game.ListSelectionDialog::.ctor(string,
                                                                       class [System.Runtime]System.Collections.IEnumerable,
                                                                       float32,
                                                                       class [System.Runtime]System.Func`2<object,class Game.Widget>,
                                                                       class [System.Runtime]System.Action`1<object>)
    IL_0025:  ret
  } // end of method ListSelectionDialog::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       224 (0xe0)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0006:  callvirt   instance bool Game.WidgetInput::get_Back()
    IL_000b:  brtrue.s   IL_001a

    IL_000d:  ldarg.0
    IL_000e:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0013:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_0018:  brfalse.s  IL_0030

    IL_001a:  ldarg.0
    IL_001b:  ldc.r8     0.0
    IL_0024:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_0029:  stfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.ListSelectionDialog::m_dismissTime
    IL_002e:  br.s       IL_00af

    IL_0030:  ldarg.0
    IL_0031:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0036:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Tap()
    IL_003b:  stloc.0
    IL_003c:  ldloca.s   V_0
    IL_003e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0043:  brfalse.s  IL_007b

    IL_0045:  ldarg.0
    IL_0046:  ldfld      class Game.ListPanelWidget Game.ListSelectionDialog::m_listWidget
    IL_004b:  ldarg.0
    IL_004c:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0051:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Tap()
    IL_0056:  stloc.0
    IL_0057:  ldloca.s   V_0
    IL_0059:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_005e:  callvirt   instance bool Game.Widget::HitTest(valuetype [Engine]Engine.Vector2)
    IL_0063:  brtrue.s   IL_007b

    IL_0065:  ldarg.0
    IL_0066:  ldc.r8     0.0
    IL_006f:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_0074:  stfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.ListSelectionDialog::m_dismissTime
    IL_0079:  br.s       IL_00af

    IL_007b:  ldarg.0
    IL_007c:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ListSelectionDialog::m_dismissTime
    IL_0081:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_0086:  brtrue.s   IL_00af

    IL_0088:  ldarg.0
    IL_0089:  ldfld      class Game.ListPanelWidget Game.ListSelectionDialog::m_listWidget
    IL_008e:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_0093:  brfalse.s  IL_00af

    IL_0095:  ldarg.0
    IL_0096:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_009b:  ldc.r8     5.000000074505806e-002
    IL_00a4:  add
    IL_00a5:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_00aa:  stfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.ListSelectionDialog::m_dismissTime
    IL_00af:  ldarg.0
    IL_00b0:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ListSelectionDialog::m_dismissTime
    IL_00b5:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_00ba:  brfalse.s  IL_00df

    IL_00bc:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_00c1:  ldarg.0
    IL_00c2:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ListSelectionDialog::m_dismissTime
    IL_00c7:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::get_Value()
    IL_00cc:  blt.un.s   IL_00df

    IL_00ce:  ldarg.0
    IL_00cf:  ldarg.0
    IL_00d0:  ldfld      class Game.ListPanelWidget Game.ListSelectionDialog::m_listWidget
    IL_00d5:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_00da:  call       instance void Game.ListSelectionDialog::Dismiss(object)
    IL_00df:  ret
  } // end of method ListSelectionDialog::Update

  .method private hidebysig instance void 
          Dismiss(object result) cil managed
  {
    // 代码大小       45 (0x2d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ListSelectionDialog::m_isDismissed
    IL_0006:  brtrue.s   IL_002c

    IL_0008:  ldarg.0
    IL_0009:  ldc.i4.1
    IL_000a:  stfld      bool Game.ListSelectionDialog::m_isDismissed
    IL_000f:  ldarg.0
    IL_0010:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_0015:  ldarg.0
    IL_0016:  ldfld      class [System.Runtime]System.Action`1<object> Game.ListSelectionDialog::m_selectionHandler
    IL_001b:  brfalse.s  IL_002c

    IL_001d:  ldarg.1
    IL_001e:  brfalse.s  IL_002c

    IL_0020:  ldarg.0
    IL_0021:  ldfld      class [System.Runtime]System.Action`1<object> Game.ListSelectionDialog::m_selectionHandler
    IL_0026:  ldarg.1
    IL_0027:  callvirt   instance void class [System.Runtime]System.Action`1<object>::Invoke(!0)
    IL_002c:  ret
  } // end of method ListSelectionDialog::Dismiss

} // end of class Game.ListSelectionDialog