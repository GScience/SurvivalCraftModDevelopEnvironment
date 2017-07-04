.class public auto ansi beforefieldinit Game.LevelFactorDialog
       extends Game.Dialog
{
  .field private class Game.LabelWidget m_titleWidget
  .field private class Game.LabelWidget m_descriptionWidget
  .field private class Game.LabelWidget m_namesWidget
  .field private class Game.LabelWidget m_valuesWidget
  .field private class Game.LabelWidget m_totalNameWidget
  .field private class Game.LabelWidget m_totalValueWidget
  .field private class Game.ButtonWidget m_okWidget
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string title,
                               string description,
                               class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype Game.ComponentLevel/Factor> factors,
                               float32 total) cil managed
  {
    // 代码大小       516 (0x204)
    .maxstack  7
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype Game.ComponentLevel/Factor> V_1,
             valuetype Game.ComponentLevel/Factor V_2)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Dialog::.ctor()
    IL_0006:  ldstr      "Dialogs/LevelFactorDialog"
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
    IL_0020:  ldstr      "LevelFactorDialog.Title"
    IL_0025:  ldc.i4.1
    IL_0026:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_002b:  stfld      class Game.LabelWidget Game.LevelFactorDialog::m_titleWidget
    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0037:  ldstr      "LevelFactorDialog.Description"
    IL_003c:  ldc.i4.1
    IL_003d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0042:  stfld      class Game.LabelWidget Game.LevelFactorDialog::m_descriptionWidget
    IL_0047:  ldarg.0
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_004e:  ldstr      "LevelFactorDialog.Names"
    IL_0053:  ldc.i4.1
    IL_0054:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0059:  stfld      class Game.LabelWidget Game.LevelFactorDialog::m_namesWidget
    IL_005e:  ldarg.0
    IL_005f:  ldarg.0
    IL_0060:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0065:  ldstr      "LevelFactorDialog.Values"
    IL_006a:  ldc.i4.1
    IL_006b:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0070:  stfld      class Game.LabelWidget Game.LevelFactorDialog::m_valuesWidget
    IL_0075:  ldarg.0
    IL_0076:  ldarg.0
    IL_0077:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_007c:  ldstr      "LevelFactorDialog.TotalName"
    IL_0081:  ldc.i4.1
    IL_0082:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0087:  stfld      class Game.LabelWidget Game.LevelFactorDialog::m_totalNameWidget
    IL_008c:  ldarg.0
    IL_008d:  ldarg.0
    IL_008e:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0093:  ldstr      "LevelFactorDialog.TotalValue"
    IL_0098:  ldc.i4.1
    IL_0099:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_009e:  stfld      class Game.LabelWidget Game.LevelFactorDialog::m_totalValueWidget
    IL_00a3:  ldarg.0
    IL_00a4:  ldarg.0
    IL_00a5:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00aa:  ldstr      "LevelFactorDialog.OK"
    IL_00af:  ldc.i4.1
    IL_00b0:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_00b5:  stfld      class Game.ButtonWidget Game.LevelFactorDialog::m_okWidget
    IL_00ba:  ldarg.0
    IL_00bb:  ldfld      class Game.LabelWidget Game.LevelFactorDialog::m_titleWidget
    IL_00c0:  ldarg.1
    IL_00c1:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00c6:  ldarg.0
    IL_00c7:  ldfld      class Game.LabelWidget Game.LevelFactorDialog::m_descriptionWidget
    IL_00cc:  ldarg.2
    IL_00cd:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00d2:  ldarg.0
    IL_00d3:  ldfld      class Game.LabelWidget Game.LevelFactorDialog::m_namesWidget
    IL_00d8:  ldsfld     string [System.Runtime]System.String::Empty
    IL_00dd:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00e2:  ldarg.0
    IL_00e3:  ldfld      class Game.LabelWidget Game.LevelFactorDialog::m_valuesWidget
    IL_00e8:  ldsfld     string [System.Runtime]System.String::Empty
    IL_00ed:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00f2:  ldarg.3
    IL_00f3:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype Game.ComponentLevel/Factor>::GetEnumerator()
    IL_00f8:  stloc.1
    .try
    {
      IL_00f9:  br.s       IL_0165

      IL_00fb:  ldloc.1
      IL_00fc:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype Game.ComponentLevel/Factor>::get_Current()
      IL_0101:  stloc.2
      IL_0102:  ldarg.0
      IL_0103:  ldfld      class Game.LabelWidget Game.LevelFactorDialog::m_namesWidget
      IL_0108:  dup
      IL_0109:  callvirt   instance string Game.LabelWidget::get_Text()
      IL_010e:  ldstr      "{0,24}\n"
      IL_0113:  ldc.i4.1
      IL_0114:  newarr     [System.Runtime]System.Object
      IL_0119:  dup
      IL_011a:  ldc.i4.0
      IL_011b:  ldloc.2
      IL_011c:  ldfld      string Game.ComponentLevel/Factor::Description
      IL_0121:  stelem.ref
      IL_0122:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_0127:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string)
      IL_012c:  callvirt   instance void Game.LabelWidget::set_Text(string)
      IL_0131:  ldarg.0
      IL_0132:  ldfld      class Game.LabelWidget Game.LevelFactorDialog::m_valuesWidget
      IL_0137:  dup
      IL_0138:  callvirt   instance string Game.LabelWidget::get_Text()
      IL_013d:  ldstr      "x {0:0.00}\n"
      IL_0142:  ldc.i4.1
      IL_0143:  newarr     [System.Runtime]System.Object
      IL_0148:  dup
      IL_0149:  ldc.i4.0
      IL_014a:  ldloc.2
      IL_014b:  ldfld      float32 Game.ComponentLevel/Factor::Value
      IL_0150:  box        [System.Runtime]System.Single
      IL_0155:  stelem.ref
      IL_0156:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_015b:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string)
      IL_0160:  callvirt   instance void Game.LabelWidget::set_Text(string)
      IL_0165:  ldloc.1
      IL_0166:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_016b:  brtrue.s   IL_00fb

      IL_016d:  leave.s    IL_0179

    }  // end .try
    finally
    {
      IL_016f:  ldloc.1
      IL_0170:  brfalse.s  IL_0178

      IL_0172:  ldloc.1
      IL_0173:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0178:  endfinally
    }  // end handler
    IL_0179:  ldarg.0
    IL_017a:  ldfld      class Game.LabelWidget Game.LevelFactorDialog::m_namesWidget
    IL_017f:  ldarg.0
    IL_0180:  ldfld      class Game.LabelWidget Game.LevelFactorDialog::m_namesWidget
    IL_0185:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_018a:  ldc.i4.0
    IL_018b:  newarr     [System.Runtime]System.Char
    IL_0190:  callvirt   instance string [System.Runtime]System.String::TrimEnd(char[])
    IL_0195:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_019a:  ldarg.0
    IL_019b:  ldfld      class Game.LabelWidget Game.LevelFactorDialog::m_valuesWidget
    IL_01a0:  ldarg.0
    IL_01a1:  ldfld      class Game.LabelWidget Game.LevelFactorDialog::m_valuesWidget
    IL_01a6:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_01ab:  ldc.i4.0
    IL_01ac:  newarr     [System.Runtime]System.Char
    IL_01b1:  callvirt   instance string [System.Runtime]System.String::TrimEnd(char[])
    IL_01b6:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_01bb:  ldarg.0
    IL_01bc:  ldfld      class Game.LabelWidget Game.LevelFactorDialog::m_totalNameWidget
    IL_01c1:  ldstr      "{0,24}"
    IL_01c6:  ldc.i4.1
    IL_01c7:  newarr     [System.Runtime]System.Object
    IL_01cc:  dup
    IL_01cd:  ldc.i4.0
    IL_01ce:  ldstr      "TOTAL"
    IL_01d3:  stelem.ref
    IL_01d4:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_01d9:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_01de:  ldarg.0
    IL_01df:  ldfld      class Game.LabelWidget Game.LevelFactorDialog::m_totalValueWidget
    IL_01e4:  ldstr      "x {0:0.00}"
    IL_01e9:  ldc.i4.1
    IL_01ea:  newarr     [System.Runtime]System.Object
    IL_01ef:  dup
    IL_01f0:  ldc.i4.0
    IL_01f1:  ldarg.s    total
    IL_01f3:  box        [System.Runtime]System.Single
    IL_01f8:  stelem.ref
    IL_01f9:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_01fe:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0203:  ret
  } // end of method LevelFactorDialog::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0006:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_000b:  brtrue.s   IL_0027

    IL_000d:  ldarg.0
    IL_000e:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0013:  callvirt   instance bool Game.WidgetInput::get_Ok()
    IL_0018:  brtrue.s   IL_0027

    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.ButtonWidget Game.LevelFactorDialog::m_okWidget
    IL_0020:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0025:  brfalse.s  IL_002d

    IL_0027:  ldarg.0
    IL_0028:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_002d:  ret
  } // end of method LevelFactorDialog::Update

} // end of class Game.LevelFactorDialog