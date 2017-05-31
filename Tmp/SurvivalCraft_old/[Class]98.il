.class public auto ansi beforefieldinit Game.ListSelectionDialog
       extends Game.Dialog
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass6_0'
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
    } // end of method '<>c__DisplayClass6_0'::.ctor

    .method assembly hidebysig instance class Game.Widget 
            '<.ctor>b__0'(object item) cil managed
    {
      // 代码大小       38 (0x26)
      .maxstack  8
      IL_0000:  newobj     instance void Game.LabelWidget::.ctor()
      IL_0005:  dup
      IL_0006:  ldarg.0
      IL_0007:  ldfld      class [System.Runtime]System.Func`2<object,string> Game.ListSelectionDialog/'<>c__DisplayClass6_0'::itemToStringConverter
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
    } // end of method '<>c__DisplayClass6_0'::'<.ctor>b__0'

  } // end of class '<>c__DisplayClass6_0'

  .field private class [System.Runtime]System.Action`1<object> m_selectionHandler
  .field private class Game.LabelWidget m_titleLabelWidget
  .field private class Game.ListPanelWidget m_listWidget
  .field private class Game.CanvasWidget m_contentWidget
  .field private valuetype [System.Runtime]System.Nullable`1<float64> m_dismissTime
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string title,
                               class [System.Runtime]System.Collections.IEnumerable items,
                               float32 itemSize,
                               class [System.Runtime]System.Func`2<object,class Game.Widget> itemWidgetFactory,
                               class [System.Runtime]System.Action`1<object> selectionHandler) cil managed
  {
    // 代码大小       376 (0x178)
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
    IL_001c:  ldnull
    IL_001d:  call       class Game.Widget Game.WidgetsManager::LoadWidget(object,
                                                                           class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                           class Game.ContainerWidget)
    IL_0022:  castclass  Game.ContainerWidget
    IL_0027:  call       instance void Game.Dialog::set_DialogWidget(class Game.ContainerWidget)
    IL_002c:  ldarg.0
    IL_002d:  ldarg.0
    IL_002e:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_0033:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0038:  ldstr      "ListSelectionDialog.Title"
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_0043:  stfld      class Game.LabelWidget Game.ListSelectionDialog::m_titleLabelWidget
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_004f:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0054:  ldstr      "ListSelectionDialog.List"
    IL_0059:  ldc.i4.1
    IL_005a:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ListPanelWidget>(string,
                                                                                              bool)
    IL_005f:  stfld      class Game.ListPanelWidget Game.ListSelectionDialog::m_listWidget
    IL_0064:  ldarg.0
    IL_0065:  ldarg.0
    IL_0066:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_006b:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0070:  ldstr      "ListSelectionDialog.Content"
    IL_0075:  ldc.i4.1
    IL_0076:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.CanvasWidget>(string,
                                                                                           bool)
    IL_007b:  stfld      class Game.CanvasWidget Game.ListSelectionDialog::m_contentWidget
    IL_0080:  ldarg.0
    IL_0081:  ldfld      class Game.LabelWidget Game.ListSelectionDialog::m_titleLabelWidget
    IL_0086:  ldarg.1
    IL_0087:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_008c:  ldarg.0
    IL_008d:  ldfld      class Game.LabelWidget Game.ListSelectionDialog::m_titleLabelWidget
    IL_0092:  ldarg.1
    IL_0093:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0098:  ldc.i4.0
    IL_0099:  ceq
    IL_009b:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_00a0:  ldarg.0
    IL_00a1:  ldfld      class Game.ListPanelWidget Game.ListSelectionDialog::m_listWidget
    IL_00a6:  ldarg.3
    IL_00a7:  callvirt   instance void Game.ListPanelWidget::set_ItemSize(float32)
    IL_00ac:  ldarg.s    itemWidgetFactory
    IL_00ae:  brfalse.s  IL_00bd

    IL_00b0:  ldarg.0
    IL_00b1:  ldfld      class Game.ListPanelWidget Game.ListSelectionDialog::m_listWidget
    IL_00b6:  ldarg.s    itemWidgetFactory
    IL_00b8:  callvirt   instance void Game.ListPanelWidget::set_ItemWidgetFactory(class [System.Runtime]System.Func`2<object,class Game.Widget>)
    IL_00bd:  ldarg.2
    IL_00be:  callvirt   instance class [System.Runtime]System.Collections.IEnumerator [System.Runtime]System.Collections.IEnumerable::GetEnumerator()
    IL_00c3:  stloc.1
    .try
    {
      IL_00c4:  br.s       IL_00d9

      IL_00c6:  ldloc.1
      IL_00c7:  callvirt   instance object [System.Runtime]System.Collections.IEnumerator::get_Current()
      IL_00cc:  stloc.2
      IL_00cd:  ldarg.0
      IL_00ce:  ldfld      class Game.ListPanelWidget Game.ListSelectionDialog::m_listWidget
      IL_00d3:  ldloc.2
      IL_00d4:  callvirt   instance void Game.ListPanelWidget::AddItem(object)
      IL_00d9:  ldloc.1
      IL_00da:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_00df:  brtrue.s   IL_00c6

      IL_00e1:  leave.s    IL_00f4

    }  // end .try
    finally
    {
      IL_00e3:  ldloc.1
      IL_00e4:  isinst     [System.Runtime]System.IDisposable
      IL_00e9:  stloc.3
      IL_00ea:  ldloc.3
      IL_00eb:  brfalse.s  IL_00f3

      IL_00ed:  ldloc.3
      IL_00ee:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00f3:  endfinally
    }  // end handler
    IL_00f4:  ldarg.0
    IL_00f5:  ldfld      class Game.ListPanelWidget Game.ListSelectionDialog::m_listWidget
    IL_00fa:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<object> Game.ListPanelWidget::get_Items()
    IL_00ff:  stloc.s    V_5
    IL_0101:  ldloca.s   V_5
    IL_0103:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<object>::get_Count()
    IL_0108:  stloc.s    V_4
    IL_010a:  br.s       IL_0172

    IL_010c:  ldloc.s    V_4
    IL_010e:  conv.r4
    IL_010f:  ldc.r4     0.5
    IL_0114:  add
    IL_0115:  ldarg.0
    IL_0116:  ldfld      class Game.ListPanelWidget Game.ListSelectionDialog::m_listWidget
    IL_011b:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<object> Game.ListPanelWidget::get_Items()
    IL_0120:  stloc.s    V_5
    IL_0122:  ldloca.s   V_5
    IL_0124:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<object>::get_Count()
    IL_0129:  conv.r4
    IL_012a:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_012f:  stloc.s    V_6
    IL_0131:  ldloc.s    V_6
    IL_0133:  ldarg.3
    IL_0134:  mul
    IL_0135:  ldarg.0
    IL_0136:  ldfld      class Game.CanvasWidget Game.ListSelectionDialog::m_contentWidget
    IL_013b:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.CanvasWidget::get_Size()
    IL_0140:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0145:  bgt.un.s   IL_016c

    IL_0147:  ldarg.0
    IL_0148:  ldfld      class Game.CanvasWidget Game.ListSelectionDialog::m_contentWidget
    IL_014d:  ldarg.0
    IL_014e:  ldfld      class Game.CanvasWidget Game.ListSelectionDialog::m_contentWidget
    IL_0153:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.CanvasWidget::get_Size()
    IL_0158:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_015d:  ldloc.s    V_6
    IL_015f:  ldarg.3
    IL_0160:  mul
    IL_0161:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0166:  callvirt   instance void Game.CanvasWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_016b:  ret

    IL_016c:  ldloc.s    V_4
    IL_016e:  ldc.i4.1
    IL_016f:  sub
    IL_0170:  stloc.s    V_4
    IL_0172:  ldloc.s    V_4
    IL_0174:  ldc.i4.0
    IL_0175:  bge.s      IL_010c

    IL_0177:  ret
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
    .locals init (class Game.ListSelectionDialog/'<>c__DisplayClass6_0' V_0)
    IL_0000:  newobj     instance void Game.ListSelectionDialog/'<>c__DisplayClass6_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.s    itemToStringConverter
    IL_0009:  stfld      class [System.Runtime]System.Func`2<object,string> Game.ListSelectionDialog/'<>c__DisplayClass6_0'::itemToStringConverter
    IL_000e:  ldarg.0
    IL_000f:  ldarg.1
    IL_0010:  ldarg.2
    IL_0011:  ldarg.3
    IL_0012:  ldloc.0
    IL_0013:  ldftn      instance class Game.Widget Game.ListSelectionDialog/'<>c__DisplayClass6_0'::'<.ctor>b__0'(object)
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
    // 代码大小       220 (0xdc)
    .maxstack  3
    .locals init (valuetype Game.InputState V_0)
    IL_0000:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0005:  ldfld      bool Game.InputState::Back
    IL_000a:  brtrue.s   IL_0018

    IL_000c:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0011:  ldfld      bool Game.InputState::B
    IL_0016:  brfalse.s  IL_002e

    IL_0018:  ldarg.0
    IL_0019:  ldc.r8     0.0
    IL_0022:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_0027:  stfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.ListSelectionDialog::m_dismissTime
    IL_002c:  br.s       IL_00ab

    IL_002e:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0033:  stloc.0
    IL_0034:  ldloca.s   V_0
    IL_0036:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Click
    IL_003b:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0040:  brfalse.s  IL_0077

    IL_0042:  ldarg.0
    IL_0043:  ldfld      class Game.ListPanelWidget Game.ListSelectionDialog::m_listWidget
    IL_0048:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_004d:  stloc.0
    IL_004e:  ldloca.s   V_0
    IL_0050:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Click
    IL_0055:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_005a:  callvirt   instance bool Game.Widget::HitTest(valuetype [Engine]Engine.Vector2)
    IL_005f:  brtrue.s   IL_0077

    IL_0061:  ldarg.0
    IL_0062:  ldc.r8     0.0
    IL_006b:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_0070:  stfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.ListSelectionDialog::m_dismissTime
    IL_0075:  br.s       IL_00ab

    IL_0077:  ldarg.0
    IL_0078:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ListSelectionDialog::m_dismissTime
    IL_007d:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_0082:  brtrue.s   IL_00ab

    IL_0084:  ldarg.0
    IL_0085:  ldfld      class Game.ListPanelWidget Game.ListSelectionDialog::m_listWidget
    IL_008a:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_008f:  brfalse.s  IL_00ab

    IL_0091:  ldarg.0
    IL_0092:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0097:  ldc.r8     0.10000000149011612
    IL_00a0:  add
    IL_00a1:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_00a6:  stfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.ListSelectionDialog::m_dismissTime
    IL_00ab:  ldarg.0
    IL_00ac:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ListSelectionDialog::m_dismissTime
    IL_00b1:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_00b6:  brfalse.s  IL_00db

    IL_00b8:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_00bd:  ldarg.0
    IL_00be:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ListSelectionDialog::m_dismissTime
    IL_00c3:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::get_Value()
    IL_00c8:  blt.un.s   IL_00db

    IL_00ca:  ldarg.0
    IL_00cb:  ldarg.0
    IL_00cc:  ldfld      class Game.ListPanelWidget Game.ListSelectionDialog::m_listWidget
    IL_00d1:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_00d6:  call       instance void Game.ListSelectionDialog::Dismiss(object)
    IL_00db:  ret
  } // end of method ListSelectionDialog::Update

  .method private hidebysig instance void 
          Dismiss(object result) cil managed
  {
    // 代码大小       30 (0x1e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class [System.Runtime]System.Action`1<object> Game.ListSelectionDialog::m_selectionHandler
    IL_000c:  brfalse.s  IL_001d

    IL_000e:  ldarg.1
    IL_000f:  brfalse.s  IL_001d

    IL_0011:  ldarg.0
    IL_0012:  ldfld      class [System.Runtime]System.Action`1<object> Game.ListSelectionDialog::m_selectionHandler
    IL_0017:  ldarg.1
    IL_0018:  callvirt   instance void class [System.Runtime]System.Action`1<object>::Invoke(!0)
    IL_001d:  ret
  } // end of method ListSelectionDialog::Dismiss

} // end of class Game.ListSelectionDialog