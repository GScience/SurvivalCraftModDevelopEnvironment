.class public auto ansi beforefieldinit Game.ViewGameLogDialog
       extends Game.Dialog
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.ViewGameLogDialog/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<object,class Game.Widget> '<>9__7_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.ViewGameLogDialog/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.ViewGameLogDialog/'<>c' Game.ViewGameLogDialog/'<>c'::'<>9'
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

    .method assembly hidebysig instance class Game.Widget 
            '<PopulateList>b__7_0'(object item) cil managed
    {
      // 代码大小       129 (0x81)
      .maxstack  3
      .locals init (string V_0,
               valuetype [Engine]Engine.Color V_1)
      IL_0000:  ldarg.1
      IL_0001:  brtrue.s   IL_000a

      IL_0003:  ldsfld     string [System.Runtime]System.String::Empty
      IL_0008:  br.s       IL_0010

      IL_000a:  ldarg.1
      IL_000b:  callvirt   instance string [System.Runtime]System.Object::ToString()
      IL_0010:  stloc.0
      IL_0011:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Gray
      IL_0016:  stloc.1
      IL_0017:  ldloc.0
      IL_0018:  ldstr      "ERROR:"
      IL_001d:  callvirt   instance bool [System.Runtime]System.String::Contains(string)
      IL_0022:  brfalse.s  IL_002c

      IL_0024:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Red
      IL_0029:  stloc.1
      IL_002a:  br.s       IL_0054

      IL_002c:  ldloc.0
      IL_002d:  ldstr      "WARNING:"
      IL_0032:  callvirt   instance bool [System.Runtime]System.String::Contains(string)
      IL_0037:  brfalse.s  IL_0041

      IL_0039:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::DarkYellow
      IL_003e:  stloc.1
      IL_003f:  br.s       IL_0054

      IL_0041:  ldloc.0
      IL_0042:  ldstr      "INFO:"
      IL_0047:  callvirt   instance bool [System.Runtime]System.String::Contains(string)
      IL_004c:  brfalse.s  IL_0054

      IL_004e:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::LightGray
      IL_0053:  stloc.1
      IL_0054:  newobj     instance void Game.LabelWidget::.ctor()
      IL_0059:  dup
      IL_005a:  ldloc.0
      IL_005b:  callvirt   instance void Game.LabelWidget::set_Text(string)
      IL_0060:  dup
      IL_0061:  call       class [Engine]Engine.Media.BitmapFont [Engine]Engine.Media.BitmapFont::get_DebugFont()
      IL_0066:  callvirt   instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
      IL_006b:  dup
      IL_006c:  ldc.i4.0
      IL_006d:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
      IL_0072:  dup
      IL_0073:  ldc.i4.1
      IL_0074:  callvirt   instance void Game.Widget::set_VerticalAlignment(valuetype Game.WidgetAlignment)
      IL_0079:  dup
      IL_007a:  ldloc.1
      IL_007b:  callvirt   instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
      IL_0080:  ret
    } // end of method '<>c'::'<PopulateList>b__7_0'

  } // end of class '<>c'

  .field private class Game.ListPanelWidget m_listPanel
  .field private class Game.ButtonWidget m_copyButton
  .field private class Game.ButtonWidget m_filterButton
  .field private class Game.ButtonWidget m_closeButton
  .field private valuetype [Engine]Engine.LogType m_filter
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       147 (0x93)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Dialog::.ctor()
    IL_0006:  ldstr      "Dialogs/ViewGameLogDialog"
    IL_000b:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  ldarg.0
    IL_0013:  ldloc.0
    IL_0014:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0020:  ldstr      "ViewGameLogDialog.ListPanel"
    IL_0025:  ldc.i4.1
    IL_0026:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ListPanelWidget>(string,
                                                                                         bool)
    IL_002b:  stfld      class Game.ListPanelWidget Game.ViewGameLogDialog::m_listPanel
    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0037:  ldstr      "ViewGameLogDialog.CopyButton"
    IL_003c:  ldc.i4.1
    IL_003d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0042:  stfld      class Game.ButtonWidget Game.ViewGameLogDialog::m_copyButton
    IL_0047:  ldarg.0
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_004e:  ldstr      "ViewGameLogDialog.FilterButton"
    IL_0053:  ldc.i4.1
    IL_0054:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0059:  stfld      class Game.ButtonWidget Game.ViewGameLogDialog::m_filterButton
    IL_005e:  ldarg.0
    IL_005f:  ldarg.0
    IL_0060:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0065:  ldstr      "ViewGameLogDialog.CloseButton"
    IL_006a:  ldc.i4.1
    IL_006b:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0070:  stfld      class Game.ButtonWidget Game.ViewGameLogDialog::m_closeButton
    IL_0075:  ldarg.0
    IL_0076:  ldfld      class Game.ListPanelWidget Game.ViewGameLogDialog::m_listPanel
    IL_007b:  ldarg.0
    IL_007c:  ldftn      instance void Game.ViewGameLogDialog::'<.ctor>b__5_0'(class Game.ListPanelWidget,
                                                                               object)
    IL_0082:  newobj     instance void class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object>::.ctor(object,
                                                                                                                       native int)
    IL_0087:  callvirt   instance void Game.ListPanelWidget::add_ItemClicked(class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object>)
    IL_008c:  ldarg.0
    IL_008d:  call       instance void Game.ViewGameLogDialog::PopulateList()
    IL_0092:  ret
  } // end of method ViewGameLogDialog::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       199 (0xc7)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ButtonWidget Game.ViewGameLogDialog::m_copyButton
    IL_0006:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_000b:  brfalse.s  IL_001c

    IL_000d:  ldc.i4     0x20000
    IL_0012:  call       string Game.GameLogSink::GetRecentLog(int32)
    IL_0017:  call       void Game.ClipboardManager::set_ClipboardString(string)
    IL_001c:  ldarg.0
    IL_001d:  ldfld      class Game.ButtonWidget Game.ViewGameLogDialog::m_filterButton
    IL_0022:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0027:  brfalse.s  IL_005a

    IL_0029:  ldarg.0
    IL_002a:  ldfld      valuetype [Engine]Engine.LogType Game.ViewGameLogDialog::m_filter
    IL_002f:  ldc.i4.3
    IL_0030:  bge.s      IL_003b

    IL_0032:  ldarg.0
    IL_0033:  ldc.i4.3
    IL_0034:  stfld      valuetype [Engine]Engine.LogType Game.ViewGameLogDialog::m_filter
    IL_0039:  br.s       IL_0054

    IL_003b:  ldarg.0
    IL_003c:  ldfld      valuetype [Engine]Engine.LogType Game.ViewGameLogDialog::m_filter
    IL_0041:  ldc.i4.4
    IL_0042:  bge.s      IL_004d

    IL_0044:  ldarg.0
    IL_0045:  ldc.i4.4
    IL_0046:  stfld      valuetype [Engine]Engine.LogType Game.ViewGameLogDialog::m_filter
    IL_004b:  br.s       IL_0054

    IL_004d:  ldarg.0
    IL_004e:  ldc.i4.0
    IL_004f:  stfld      valuetype [Engine]Engine.LogType Game.ViewGameLogDialog::m_filter
    IL_0054:  ldarg.0
    IL_0055:  call       instance void Game.ViewGameLogDialog::PopulateList()
    IL_005a:  ldarg.0
    IL_005b:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0060:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_0065:  brtrue.s   IL_0074

    IL_0067:  ldarg.0
    IL_0068:  ldfld      class Game.ButtonWidget Game.ViewGameLogDialog::m_closeButton
    IL_006d:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0072:  brfalse.s  IL_007a

    IL_0074:  ldarg.0
    IL_0075:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_007a:  ldarg.0
    IL_007b:  ldfld      valuetype [Engine]Engine.LogType Game.ViewGameLogDialog::m_filter
    IL_0080:  brtrue.s   IL_0093

    IL_0082:  ldarg.0
    IL_0083:  ldfld      class Game.ButtonWidget Game.ViewGameLogDialog::m_filterButton
    IL_0088:  ldstr      "All"
    IL_008d:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_0092:  ret

    IL_0093:  ldarg.0
    IL_0094:  ldfld      valuetype [Engine]Engine.LogType Game.ViewGameLogDialog::m_filter
    IL_0099:  ldc.i4.3
    IL_009a:  bne.un.s   IL_00ad

    IL_009c:  ldarg.0
    IL_009d:  ldfld      class Game.ButtonWidget Game.ViewGameLogDialog::m_filterButton
    IL_00a2:  ldstr      "Warnings"
    IL_00a7:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_00ac:  ret

    IL_00ad:  ldarg.0
    IL_00ae:  ldfld      valuetype [Engine]Engine.LogType Game.ViewGameLogDialog::m_filter
    IL_00b3:  ldc.i4.4
    IL_00b4:  bne.un.s   IL_00c6

    IL_00b6:  ldarg.0
    IL_00b7:  ldfld      class Game.ButtonWidget Game.ViewGameLogDialog::m_filterButton
    IL_00bc:  ldstr      "Errors"
    IL_00c1:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_00c6:  ret
  } // end of method ViewGameLogDialog::Update

  .method private hidebysig instance void 
          PopulateList() cil managed
  {
    // 代码大小       253 (0xfd)
    .maxstack  4
    .locals init (class [System.Collections]System.Collections.Generic.List`1<string> V_0,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<string> V_1,
             string V_2,
             valuetype [Engine]Engine.ReadOnlyList`1<object> V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ListPanelWidget Game.ViewGameLogDialog::m_listPanel
    IL_0006:  ldsfld     class [System.Runtime]System.Func`2<object,class Game.Widget> Game.ViewGameLogDialog/'<>c'::'<>9__7_0'
    IL_000b:  dup
    IL_000c:  brtrue.s   IL_0025

    IL_000e:  pop
    IL_000f:  ldsfld     class Game.ViewGameLogDialog/'<>c' Game.ViewGameLogDialog/'<>c'::'<>9'
    IL_0014:  ldftn      instance class Game.Widget Game.ViewGameLogDialog/'<>c'::'<PopulateList>b__7_0'(object)
    IL_001a:  newobj     instance void class [System.Runtime]System.Func`2<object,class Game.Widget>::.ctor(object,
                                                                                                            native int)
    IL_001f:  dup
    IL_0020:  stsfld     class [System.Runtime]System.Func`2<object,class Game.Widget> Game.ViewGameLogDialog/'<>c'::'<>9__7_0'
    IL_0025:  callvirt   instance void Game.ListPanelWidget::set_ItemWidgetFactory(class [System.Runtime]System.Func`2<object,class Game.Widget>)
    IL_002a:  ldc.i4     0x20000
    IL_002f:  call       class [System.Collections]System.Collections.Generic.List`1<string> Game.GameLogSink::GetRecentLogLines(int32)
    IL_0034:  stloc.0
    IL_0035:  ldarg.0
    IL_0036:  ldfld      class Game.ListPanelWidget Game.ViewGameLogDialog::m_listPanel
    IL_003b:  callvirt   instance void Game.ListPanelWidget::ClearItems()
    IL_0040:  ldloc.0
    IL_0041:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<string>::get_Count()
    IL_0046:  ldc.i4     0x3e8
    IL_004b:  ble.s      IL_0060

    IL_004d:  ldloc.0
    IL_004e:  ldc.i4.0
    IL_004f:  ldloc.0
    IL_0050:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<string>::get_Count()
    IL_0055:  ldc.i4     0x3e8
    IL_005a:  sub
    IL_005b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::RemoveRange(int32,
                                                                                                                        int32)
    IL_0060:  ldloc.0
    IL_0061:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<string>::GetEnumerator()
    IL_0066:  stloc.1
    .try
    {
      IL_0067:  br.s       IL_00b8

      IL_0069:  ldloca.s   V_1
      IL_006b:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<string>::get_Current()
      IL_0070:  stloc.2
      IL_0071:  ldarg.0
      IL_0072:  ldfld      valuetype [Engine]Engine.LogType Game.ViewGameLogDialog::m_filter
      IL_0077:  ldc.i4.3
      IL_0078:  bne.un.s   IL_0096

      IL_007a:  ldloc.2
      IL_007b:  ldstr      "WARNING:"
      IL_0080:  callvirt   instance bool [System.Runtime]System.String::Contains(string)
      IL_0085:  brtrue.s   IL_00ac

      IL_0087:  ldloc.2
      IL_0088:  ldstr      "ERROR:"
      IL_008d:  callvirt   instance bool [System.Runtime]System.String::Contains(string)
      IL_0092:  brtrue.s   IL_00ac

      IL_0094:  br.s       IL_00b8

      IL_0096:  ldarg.0
      IL_0097:  ldfld      valuetype [Engine]Engine.LogType Game.ViewGameLogDialog::m_filter
      IL_009c:  ldc.i4.4
      IL_009d:  bne.un.s   IL_00ac

      IL_009f:  ldloc.2
      IL_00a0:  ldstr      "ERROR:"
      IL_00a5:  callvirt   instance bool [System.Runtime]System.String::Contains(string)
      IL_00aa:  brfalse.s  IL_00b8

      IL_00ac:  ldarg.0
      IL_00ad:  ldfld      class Game.ListPanelWidget Game.ViewGameLogDialog::m_listPanel
      IL_00b2:  ldloc.2
      IL_00b3:  callvirt   instance void Game.ListPanelWidget::AddItem(object)
      IL_00b8:  ldloca.s   V_1
      IL_00ba:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<string>::MoveNext()
      IL_00bf:  brtrue.s   IL_0069

      IL_00c1:  leave.s    IL_00d1

    }  // end .try
    finally
    {
      IL_00c3:  ldloca.s   V_1
      IL_00c5:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<string>
      IL_00cb:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00d0:  endfinally
    }  // end handler
    IL_00d1:  ldarg.0
    IL_00d2:  ldfld      class Game.ListPanelWidget Game.ViewGameLogDialog::m_listPanel
    IL_00d7:  ldarg.0
    IL_00d8:  ldfld      class Game.ListPanelWidget Game.ViewGameLogDialog::m_listPanel
    IL_00dd:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<object> Game.ListPanelWidget::get_Items()
    IL_00e2:  stloc.3
    IL_00e3:  ldloca.s   V_3
    IL_00e5:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<object>::get_Count()
    IL_00ea:  conv.r4
    IL_00eb:  ldarg.0
    IL_00ec:  ldfld      class Game.ListPanelWidget Game.ViewGameLogDialog::m_listPanel
    IL_00f1:  callvirt   instance float32 Game.ListPanelWidget::get_ItemSize()
    IL_00f6:  mul
    IL_00f7:  callvirt   instance void Game.ScrollPanelWidget::set_ScrollPosition(float32)
    IL_00fc:  ret
  } // end of method ViewGameLogDialog::PopulateList

  .method private hidebysig instance void 
          '<.ctor>b__5_0'(class Game.ListPanelWidget sender,
                          object item) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       49 (0x31)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ListPanelWidget Game.ViewGameLogDialog::m_listPanel
    IL_0006:  callvirt   instance object Game.ListPanelWidget::get_SelectedItem()
    IL_000b:  ldarg.2
    IL_000c:  bne.un.s   IL_0030

    IL_000e:  ldarg.0
    IL_000f:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_0014:  ldstr      "Log Item"
    IL_0019:  ldarg.2
    IL_001a:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_001f:  ldstr      "OK"
    IL_0024:  ldnull
    IL_0025:  ldnull
    IL_0026:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_002b:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_0030:  ret
  } // end of method ViewGameLogDialog::'<.ctor>b__5_0'

} // end of class Game.ViewGameLogDialog