.class public auto ansi beforefieldinit Game.MessageDialog
       extends Game.Dialog
{
  .field private class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton> m_handler
  .field private class Game.LabelWidget m_largeLabelWidget
  .field private class Game.LabelWidget m_smallLabelWidget
  .field private class Game.ButtonWidget m_button1Widget
  .field private class Game.ButtonWidget m_button2Widget
  .field private bool '<AutoHide>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string largeMessage,
                               string smallMessage,
                               string button1Text,
                               string button2Text,
                               valuetype [Engine]Engine.Vector2 size,
                               class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton> 'handler') cil managed
  {
    // 代码大小       415 (0x19f)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Dialog::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.s    'handler'
    IL_0009:  stfld      class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton> Game.MessageDialog::m_handler
    IL_000e:  ldstr      "Dialogs/MessageDialog"
    IL_0013:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0018:  stloc.0
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  ldloc.0
    IL_001c:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0021:  ldarg.0
    IL_0022:  ldarg.s    size
    IL_0024:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0029:  ldc.r4     0.0
    IL_002e:  bge.s      IL_003d

    IL_0030:  ldarg.0
    IL_0031:  call       instance valuetype [Engine]Engine.Vector2 Game.CanvasWidget::get_Size()
    IL_0036:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_003b:  br.s       IL_0044

    IL_003d:  ldarg.s    size
    IL_003f:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0044:  ldarg.s    size
    IL_0046:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_004b:  ldc.r4     0.0
    IL_0050:  bge.s      IL_005f

    IL_0052:  ldarg.0
    IL_0053:  call       instance valuetype [Engine]Engine.Vector2 Game.CanvasWidget::get_Size()
    IL_0058:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_005d:  br.s       IL_0066

    IL_005f:  ldarg.s    size
    IL_0061:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0066:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_006b:  call       instance void Game.CanvasWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_0070:  ldarg.0
    IL_0071:  ldarg.0
    IL_0072:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0077:  ldstr      "MessageDialog.LargeLabel"
    IL_007c:  ldc.i4.1
    IL_007d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0082:  stfld      class Game.LabelWidget Game.MessageDialog::m_largeLabelWidget
    IL_0087:  ldarg.0
    IL_0088:  ldarg.0
    IL_0089:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_008e:  ldstr      "MessageDialog.SmallLabel"
    IL_0093:  ldc.i4.1
    IL_0094:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0099:  stfld      class Game.LabelWidget Game.MessageDialog::m_smallLabelWidget
    IL_009e:  ldarg.0
    IL_009f:  ldarg.0
    IL_00a0:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00a5:  ldstr      "MessageDialog.Button1"
    IL_00aa:  ldc.i4.1
    IL_00ab:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_00b0:  stfld      class Game.ButtonWidget Game.MessageDialog::m_button1Widget
    IL_00b5:  ldarg.0
    IL_00b6:  ldarg.0
    IL_00b7:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00bc:  ldstr      "MessageDialog.Button2"
    IL_00c1:  ldc.i4.1
    IL_00c2:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_00c7:  stfld      class Game.ButtonWidget Game.MessageDialog::m_button2Widget
    IL_00cc:  ldarg.0
    IL_00cd:  ldfld      class Game.LabelWidget Game.MessageDialog::m_largeLabelWidget
    IL_00d2:  ldarg.1
    IL_00d3:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_00d8:  ldc.i4.0
    IL_00d9:  ceq
    IL_00db:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_00e0:  ldarg.0
    IL_00e1:  ldfld      class Game.LabelWidget Game.MessageDialog::m_largeLabelWidget
    IL_00e6:  ldarg.1
    IL_00e7:  dup
    IL_00e8:  brtrue.s   IL_00f0

    IL_00ea:  pop
    IL_00eb:  ldsfld     string [System.Runtime]System.String::Empty
    IL_00f0:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00f5:  ldarg.0
    IL_00f6:  ldfld      class Game.LabelWidget Game.MessageDialog::m_smallLabelWidget
    IL_00fb:  ldarg.2
    IL_00fc:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0101:  ldc.i4.0
    IL_0102:  ceq
    IL_0104:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0109:  ldarg.0
    IL_010a:  ldfld      class Game.LabelWidget Game.MessageDialog::m_smallLabelWidget
    IL_010f:  ldarg.2
    IL_0110:  dup
    IL_0111:  brtrue.s   IL_0119

    IL_0113:  pop
    IL_0114:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0119:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_011e:  ldarg.0
    IL_011f:  ldfld      class Game.ButtonWidget Game.MessageDialog::m_button1Widget
    IL_0124:  ldarg.3
    IL_0125:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_012a:  ldc.i4.0
    IL_012b:  ceq
    IL_012d:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0132:  ldarg.0
    IL_0133:  ldfld      class Game.ButtonWidget Game.MessageDialog::m_button1Widget
    IL_0138:  ldarg.3
    IL_0139:  dup
    IL_013a:  brtrue.s   IL_0142

    IL_013c:  pop
    IL_013d:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0142:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_0147:  ldarg.0
    IL_0148:  ldfld      class Game.ButtonWidget Game.MessageDialog::m_button2Widget
    IL_014d:  ldarg.s    button2Text
    IL_014f:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0154:  ldc.i4.0
    IL_0155:  ceq
    IL_0157:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_015c:  ldarg.0
    IL_015d:  ldfld      class Game.ButtonWidget Game.MessageDialog::m_button2Widget
    IL_0162:  ldarg.s    button2Text
    IL_0164:  dup
    IL_0165:  brtrue.s   IL_016d

    IL_0167:  pop
    IL_0168:  ldsfld     string [System.Runtime]System.String::Empty
    IL_016d:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_0172:  ldarg.0
    IL_0173:  ldfld      class Game.ButtonWidget Game.MessageDialog::m_button1Widget
    IL_0178:  callvirt   instance bool Game.Widget::get_IsVisible()
    IL_017d:  brtrue.s   IL_0197

    IL_017f:  ldarg.0
    IL_0180:  ldfld      class Game.ButtonWidget Game.MessageDialog::m_button2Widget
    IL_0185:  callvirt   instance bool Game.Widget::get_IsVisible()
    IL_018a:  brtrue.s   IL_0197

    IL_018c:  ldstr      "MessageDialog must have at least one button."
    IL_0191:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0196:  throw

    IL_0197:  ldarg.0
    IL_0198:  ldc.i4.1
    IL_0199:  call       instance void Game.MessageDialog::set_AutoHide(bool)
    IL_019e:  ret
  } // end of method MessageDialog::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string largeMessage,
                               string smallMessage,
                               string button1Text,
                               string button2Text,
                               class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton> 'handler') cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  ldarg.s    button2Text
    IL_0006:  ldc.r4     -1.
    IL_000b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0010:  ldarg.s    'handler'
    IL_0012:  call       instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 valuetype [Engine]Engine.Vector2,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_0017:  ret
  } // end of method MessageDialog::.ctor

  .method public hidebysig specialname instance bool 
          get_AutoHide() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.MessageDialog::'<AutoHide>k__BackingField'
    IL_0006:  ret
  } // end of method MessageDialog::get_AutoHide

  .method public hidebysig specialname instance void 
          set_AutoHide(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.MessageDialog::'<AutoHide>k__BackingField'
    IL_0007:  ret
  } // end of method MessageDialog::set_AutoHide

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       97 (0x61)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0006:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_000b:  brfalse.s  IL_002a

    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.ButtonWidget Game.MessageDialog::m_button2Widget
    IL_0013:  callvirt   instance bool Game.Widget::get_IsVisible()
    IL_0018:  brfalse.s  IL_0022

    IL_001a:  ldarg.0
    IL_001b:  ldc.i4.1
    IL_001c:  call       instance void Game.MessageDialog::Dismiss(valuetype Game.MessageDialogButton)
    IL_0021:  ret

    IL_0022:  ldarg.0
    IL_0023:  ldc.i4.0
    IL_0024:  call       instance void Game.MessageDialog::Dismiss(valuetype Game.MessageDialogButton)
    IL_0029:  ret

    IL_002a:  ldarg.0
    IL_002b:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0030:  callvirt   instance bool Game.WidgetInput::get_Ok()
    IL_0035:  brtrue.s   IL_0044

    IL_0037:  ldarg.0
    IL_0038:  ldfld      class Game.ButtonWidget Game.MessageDialog::m_button1Widget
    IL_003d:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0042:  brfalse.s  IL_004c

    IL_0044:  ldarg.0
    IL_0045:  ldc.i4.0
    IL_0046:  call       instance void Game.MessageDialog::Dismiss(valuetype Game.MessageDialogButton)
    IL_004b:  ret

    IL_004c:  ldarg.0
    IL_004d:  ldfld      class Game.ButtonWidget Game.MessageDialog::m_button2Widget
    IL_0052:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0057:  brfalse.s  IL_0060

    IL_0059:  ldarg.0
    IL_005a:  ldc.i4.1
    IL_005b:  call       instance void Game.MessageDialog::Dismiss(valuetype Game.MessageDialogButton)
    IL_0060:  ret
  } // end of method MessageDialog::Update

  .method private hidebysig instance void 
          Dismiss(valuetype Game.MessageDialogButton button) cil managed
  {
    // 代码大小       35 (0x23)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance bool Game.MessageDialog::get_AutoHide()
    IL_0006:  brfalse.s  IL_000e

    IL_0008:  ldarg.0
    IL_0009:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton> Game.MessageDialog::m_handler
    IL_0014:  brfalse.s  IL_0022

    IL_0016:  ldarg.0
    IL_0017:  ldfld      class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton> Game.MessageDialog::m_handler
    IL_001c:  ldarg.1
    IL_001d:  callvirt   instance void class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>::Invoke(!0)
    IL_0022:  ret
  } // end of method MessageDialog::Dismiss

  .property instance bool AutoHide()
  {
    .get instance bool Game.MessageDialog::get_AutoHide()
    .set instance void Game.MessageDialog::set_AutoHide(bool)
  } // end of property MessageDialog::AutoHide
} // end of class Game.MessageDialog