.class public auto ansi beforefieldinit Game.ModifyWorldScreen
       extends Game.Screen
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass15_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class Game.MessageDialog dialog
    .field public class Game.ModifyWorldScreen '<>4__this'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass15_0'::.ctor

    .method assembly hidebysig instance void 
            '<Update>b__0'(valuetype Game.MessageDialogButton button) cil managed
    {
      // 代码大小       59 (0x3b)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  brtrue.s   IL_002f

      IL_0003:  ldarg.0
      IL_0004:  ldfld      class Game.ModifyWorldScreen Game.ModifyWorldScreen/'<>c__DisplayClass15_0'::'<>4__this'
      IL_0009:  ldfld      string Game.ModifyWorldScreen::m_directoryName
      IL_000e:  call       void Game.WorldsManager::DeleteWorld(string)
      IL_0013:  ldstr      "Play"
      IL_0018:  ldc.i4.0
      IL_0019:  newarr     [System.Runtime]System.Object
      IL_001e:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0023:  ldarg.0
      IL_0024:  ldfld      class Game.MessageDialog Game.ModifyWorldScreen/'<>c__DisplayClass15_0'::dialog
      IL_0029:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
      IL_002e:  ret

      IL_002f:  ldarg.0
      IL_0030:  ldfld      class Game.MessageDialog Game.ModifyWorldScreen/'<>c__DisplayClass15_0'::dialog
      IL_0035:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
      IL_003a:  ret
    } // end of method '<>c__DisplayClass15_0'::'<Update>b__0'

  } // end of class '<>c__DisplayClass15_0'

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.ModifyWorldScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton> '<>9__15_1'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.ModifyWorldScreen/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.ModifyWorldScreen/'<>c' Game.ModifyWorldScreen/'<>c'::'<>9'
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

    .method assembly hidebysig instance void 
            '<Update>b__15_1'(valuetype Game.MessageDialogButton button) cil managed
    {
      // 代码大小       20 (0x14)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  brtrue.s   IL_0013

      IL_0003:  ldstr      "Play"
      IL_0008:  ldc.i4.0
      IL_0009:  newarr     [System.Runtime]System.Object
      IL_000e:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0013:  ret
    } // end of method '<>c'::'<Update>b__15_1'

  } // end of class '<>c'

  .field private class Game.TextBoxWidget m_nameTextBox
  .field private class Game.LabelWidget m_seedLabel
  .field private class Game.ButtonWidget m_gameModeButton
  .field private class Game.ButtonWidget m_worldOptionsButton
  .field private class Game.LabelWidget m_errorLabel
  .field private class Game.LabelWidget m_descriptionLabel
  .field private class Game.ButtonWidget m_applyButton
  .field private class Game.ButtonWidget m_deleteButton
  .field private class Game.ButtonWidget m_uploadButton
  .field private string m_directoryName
  .field private class Game.WorldSettings m_worldSettings
  .field private class [EntitySystem]TemplatesDatabase.ValuesDictionary m_currentWorldSettingsData
  .field private class [EntitySystem]TemplatesDatabase.ValuesDictionary m_originalWorldSettingsData
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       278 (0x116)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
    IL_0006:  stfld      class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.ModifyWorldScreen::m_currentWorldSettingsData
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
    IL_0011:  stfld      class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.ModifyWorldScreen::m_originalWorldSettingsData
    IL_0016:  ldarg.0
    IL_0017:  call       instance void Game.Screen::.ctor()
    IL_001c:  ldstr      "Screens/ModifyWorldScreen"
    IL_0021:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0026:  stloc.0
    IL_0027:  ldarg.0
    IL_0028:  ldarg.0
    IL_0029:  ldloc.0
    IL_002a:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_002f:  ldarg.0
    IL_0030:  ldarg.0
    IL_0031:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0036:  ldstr      "Name"
    IL_003b:  ldc.i4.1
    IL_003c:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.TextBoxWidget>(string,
                                                                                       bool)
    IL_0041:  stfld      class Game.TextBoxWidget Game.ModifyWorldScreen::m_nameTextBox
    IL_0046:  ldarg.0
    IL_0047:  ldarg.0
    IL_0048:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_004d:  ldstr      "Seed"
    IL_0052:  ldc.i4.1
    IL_0053:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0058:  stfld      class Game.LabelWidget Game.ModifyWorldScreen::m_seedLabel
    IL_005d:  ldarg.0
    IL_005e:  ldarg.0
    IL_005f:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0064:  ldstr      "GameMode"
    IL_0069:  ldc.i4.1
    IL_006a:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_006f:  stfld      class Game.ButtonWidget Game.ModifyWorldScreen::m_gameModeButton
    IL_0074:  ldarg.0
    IL_0075:  ldarg.0
    IL_0076:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_007b:  ldstr      "WorldOptions"
    IL_0080:  ldc.i4.1
    IL_0081:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0086:  stfld      class Game.ButtonWidget Game.ModifyWorldScreen::m_worldOptionsButton
    IL_008b:  ldarg.0
    IL_008c:  ldarg.0
    IL_008d:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0092:  ldstr      "Error"
    IL_0097:  ldc.i4.1
    IL_0098:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_009d:  stfld      class Game.LabelWidget Game.ModifyWorldScreen::m_errorLabel
    IL_00a2:  ldarg.0
    IL_00a3:  ldarg.0
    IL_00a4:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00a9:  ldstr      "Description"
    IL_00ae:  ldc.i4.1
    IL_00af:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_00b4:  stfld      class Game.LabelWidget Game.ModifyWorldScreen::m_descriptionLabel
    IL_00b9:  ldarg.0
    IL_00ba:  ldarg.0
    IL_00bb:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00c0:  ldstr      "Apply"
    IL_00c5:  ldc.i4.1
    IL_00c6:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_00cb:  stfld      class Game.ButtonWidget Game.ModifyWorldScreen::m_applyButton
    IL_00d0:  ldarg.0
    IL_00d1:  ldarg.0
    IL_00d2:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00d7:  ldstr      "Delete"
    IL_00dc:  ldc.i4.1
    IL_00dd:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_00e2:  stfld      class Game.ButtonWidget Game.ModifyWorldScreen::m_deleteButton
    IL_00e7:  ldarg.0
    IL_00e8:  ldarg.0
    IL_00e9:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00ee:  ldstr      "Upload"
    IL_00f3:  ldc.i4.1
    IL_00f4:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_00f9:  stfld      class Game.ButtonWidget Game.ModifyWorldScreen::m_uploadButton
    IL_00fe:  ldarg.0
    IL_00ff:  ldfld      class Game.TextBoxWidget Game.ModifyWorldScreen::m_nameTextBox
    IL_0104:  ldarg.0
    IL_0105:  ldftn      instance void Game.ModifyWorldScreen::'<.ctor>b__13_0'(class Game.TextBoxWidget)
    IL_010b:  newobj     instance void class [System.Runtime]System.Action`1<class Game.TextBoxWidget>::.ctor(object,
                                                                                                              native int)
    IL_0110:  callvirt   instance void Game.TextBoxWidget::add_TextChanged(class [System.Runtime]System.Action`1<class Game.TextBoxWidget>)
    IL_0115:  ret
  } // end of method ModifyWorldScreen::.ctor

  .method public hidebysig virtual instance void 
          Enter(object[] parameters) cil managed
  {
    // 代码大小       80 (0x50)
    .maxstack  3
    IL_0000:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
    IL_0005:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
    IL_000a:  ldtoken    Game.WorldOptionsScreen
    IL_000f:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0014:  beq.s      IL_004f

    IL_0016:  ldarg.0
    IL_0017:  ldarg.1
    IL_0018:  ldc.i4.0
    IL_0019:  ldelem.ref
    IL_001a:  castclass  [System.Runtime]System.String
    IL_001f:  stfld      string Game.ModifyWorldScreen::m_directoryName
    IL_0024:  ldarg.0
    IL_0025:  ldarg.1
    IL_0026:  ldc.i4.1
    IL_0027:  ldelem.ref
    IL_0028:  castclass  Game.WorldSettings
    IL_002d:  stfld      class Game.WorldSettings Game.ModifyWorldScreen::m_worldSettings
    IL_0032:  ldarg.0
    IL_0033:  ldfld      class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.ModifyWorldScreen::m_originalWorldSettingsData
    IL_0038:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::Clear()
    IL_003d:  ldarg.0
    IL_003e:  ldfld      class Game.WorldSettings Game.ModifyWorldScreen::m_worldSettings
    IL_0043:  ldarg.0
    IL_0044:  ldfld      class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.ModifyWorldScreen::m_originalWorldSettingsData
    IL_0049:  ldc.i4.1
    IL_004a:  callvirt   instance void Game.WorldSettings::Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                                bool)
    IL_004f:  ret
  } // end of method ModifyWorldScreen::Enter

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       823 (0x337)
    .maxstack  7
    .locals init (bool V_0,
             bool V_1,
             class [System.Runtime]System.Collections.Generic.IList`1<int32> V_2,
             class Game.ModifyWorldScreen/'<>c__DisplayClass15_0' V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ButtonWidget Game.ModifyWorldScreen::m_gameModeButton
    IL_0006:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_000b:  brfalse    IL_0090

    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.WorldSettings Game.ModifyWorldScreen::m_worldSettings
    IL_0016:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_001b:  ldc.i4.3
    IL_001c:  beq.s      IL_0090

    IL_001e:  ldtoken    Game.GameMode
    IL_0023:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0028:  call       class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.EnumUtils::GetEnumValues(class [System.Runtime]System.Type)
    IL_002d:  stloc.2
    IL_002e:  ldarg.0
    IL_002f:  ldfld      class Game.WorldSettings Game.ModifyWorldScreen::m_worldSettings
    IL_0034:  ldloc.2
    IL_0035:  ldarg.0
    IL_0036:  ldfld      class Game.WorldSettings Game.ModifyWorldScreen::m_worldSettings
    IL_003b:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_0040:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.IList`1<int32>::IndexOf(!0)
    IL_0045:  ldc.i4.1
    IL_0046:  add
    IL_0047:  ldloc.2
    IL_0048:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.ICollection`1<int32>::get_Count()
    IL_004d:  rem
    IL_004e:  stfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_0053:  ldarg.0
    IL_0054:  ldfld      class Game.WorldSettings Game.ModifyWorldScreen::m_worldSettings
    IL_0059:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_005e:  ldc.i4.3
    IL_005f:  beq.s      IL_002e

    IL_0061:  ldarg.0
    IL_0062:  ldfld      class Game.LabelWidget Game.ModifyWorldScreen::m_descriptionLabel
    IL_0067:  ldstr      "GameMode."
    IL_006c:  ldarg.0
    IL_006d:  ldfld      class Game.WorldSettings Game.ModifyWorldScreen::m_worldSettings
    IL_0072:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_0077:  box        Game.GameMode
    IL_007c:  ldstr      ".Description"
    IL_0081:  call       string [System.Runtime]System.String::Concat(object,
                                                                      object,
                                                                      object)
    IL_0086:  call       string Game.StringsManager::GetString(string)
    IL_008b:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0090:  ldarg.0
    IL_0091:  ldfld      class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.ModifyWorldScreen::m_currentWorldSettingsData
    IL_0096:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::Clear()
    IL_009b:  ldarg.0
    IL_009c:  ldfld      class Game.WorldSettings Game.ModifyWorldScreen::m_worldSettings
    IL_00a1:  ldarg.0
    IL_00a2:  ldfld      class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.ModifyWorldScreen::m_currentWorldSettingsData
    IL_00a7:  ldc.i4.1
    IL_00a8:  callvirt   instance void Game.WorldSettings::Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                                bool)
    IL_00ad:  ldarg.0
    IL_00ae:  ldfld      class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.ModifyWorldScreen::m_originalWorldSettingsData
    IL_00b3:  ldarg.0
    IL_00b4:  ldfld      class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.ModifyWorldScreen::m_currentWorldSettingsData
    IL_00b9:  call       bool Game.ModifyWorldScreen::CompareValueDictionaries(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                                               class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_00be:  ldc.i4.0
    IL_00bf:  ceq
    IL_00c1:  stloc.0
    IL_00c2:  ldarg.0
    IL_00c3:  ldfld      class Game.WorldSettings Game.ModifyWorldScreen::m_worldSettings
    IL_00c8:  ldfld      string Game.WorldSettings::Name
    IL_00cd:  call       bool Game.WorldsManager::ValidateWorldName(string)
    IL_00d2:  stloc.1
    IL_00d3:  ldarg.0
    IL_00d4:  ldfld      class Game.TextBoxWidget Game.ModifyWorldScreen::m_nameTextBox
    IL_00d9:  ldarg.0
    IL_00da:  ldfld      class Game.WorldSettings Game.ModifyWorldScreen::m_worldSettings
    IL_00df:  ldfld      string Game.WorldSettings::Name
    IL_00e4:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
    IL_00e9:  ldarg.0
    IL_00ea:  ldfld      class Game.LabelWidget Game.ModifyWorldScreen::m_seedLabel
    IL_00ef:  ldarg.0
    IL_00f0:  ldfld      class Game.WorldSettings Game.ModifyWorldScreen::m_worldSettings
    IL_00f5:  ldfld      string Game.WorldSettings::Seed
    IL_00fa:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00ff:  ldarg.0
    IL_0100:  ldfld      class Game.ButtonWidget Game.ModifyWorldScreen::m_gameModeButton
    IL_0105:  ldarg.0
    IL_0106:  ldfld      class Game.WorldSettings Game.ModifyWorldScreen::m_worldSettings
    IL_010b:  ldflda     valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_0110:  constrained. Game.GameMode
    IL_0116:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_011b:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_0120:  ldarg.0
    IL_0121:  ldfld      class Game.ButtonWidget Game.ModifyWorldScreen::m_gameModeButton
    IL_0126:  ldarg.0
    IL_0127:  ldfld      class Game.WorldSettings Game.ModifyWorldScreen::m_worldSettings
    IL_012c:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_0131:  ldc.i4.3
    IL_0132:  ceq
    IL_0134:  ldc.i4.0
    IL_0135:  ceq
    IL_0137:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_013c:  ldarg.0
    IL_013d:  ldfld      class Game.LabelWidget Game.ModifyWorldScreen::m_errorLabel
    IL_0142:  ldloc.1
    IL_0143:  ldc.i4.0
    IL_0144:  ceq
    IL_0146:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_014b:  ldarg.0
    IL_014c:  ldfld      class Game.LabelWidget Game.ModifyWorldScreen::m_descriptionLabel
    IL_0151:  ldloc.1
    IL_0152:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0157:  ldarg.0
    IL_0158:  ldfld      class Game.ButtonWidget Game.ModifyWorldScreen::m_uploadButton
    IL_015d:  ldloc.1
    IL_015e:  brfalse.s  IL_0166

    IL_0160:  ldloc.0
    IL_0161:  ldc.i4.0
    IL_0162:  ceq
    IL_0164:  br.s       IL_0167

    IL_0166:  ldc.i4.0
    IL_0167:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_016c:  ldarg.0
    IL_016d:  ldfld      class Game.ButtonWidget Game.ModifyWorldScreen::m_applyButton
    IL_0172:  ldloc.1
    IL_0173:  ldloc.0
    IL_0174:  and
    IL_0175:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_017a:  ldarg.0
    IL_017b:  ldfld      class Game.LabelWidget Game.ModifyWorldScreen::m_descriptionLabel
    IL_0180:  ldstr      "GameMode."
    IL_0185:  ldarg.0
    IL_0186:  ldfld      class Game.WorldSettings Game.ModifyWorldScreen::m_worldSettings
    IL_018b:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_0190:  box        Game.GameMode
    IL_0195:  ldstr      ".Description"
    IL_019a:  call       string [System.Runtime]System.String::Concat(object,
                                                                      object,
                                                                      object)
    IL_019f:  call       string Game.StringsManager::GetString(string)
    IL_01a4:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_01a9:  ldarg.0
    IL_01aa:  ldfld      class Game.ButtonWidget Game.ModifyWorldScreen::m_worldOptionsButton
    IL_01af:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_01b4:  brfalse.s  IL_01d8

    IL_01b6:  ldstr      "WorldOptions"
    IL_01bb:  ldc.i4.2
    IL_01bc:  newarr     [System.Runtime]System.Object
    IL_01c1:  dup
    IL_01c2:  ldc.i4.0
    IL_01c3:  ldarg.0
    IL_01c4:  ldfld      class Game.WorldSettings Game.ModifyWorldScreen::m_worldSettings
    IL_01c9:  stelem.ref
    IL_01ca:  dup
    IL_01cb:  ldc.i4.1
    IL_01cc:  ldc.i4.1
    IL_01cd:  box        [System.Runtime]System.Boolean
    IL_01d2:  stelem.ref
    IL_01d3:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_01d8:  ldarg.0
    IL_01d9:  ldfld      class Game.ButtonWidget Game.ModifyWorldScreen::m_deleteButton
    IL_01de:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_01e3:  brfalse.s  IL_023c

    IL_01e5:  newobj     instance void Game.ModifyWorldScreen/'<>c__DisplayClass15_0'::.ctor()
    IL_01ea:  stloc.3
    IL_01eb:  ldloc.3
    IL_01ec:  ldarg.0
    IL_01ed:  stfld      class Game.ModifyWorldScreen Game.ModifyWorldScreen/'<>c__DisplayClass15_0'::'<>4__this'
    IL_01f2:  ldloc.3
    IL_01f3:  ldnull
    IL_01f4:  stfld      class Game.MessageDialog Game.ModifyWorldScreen/'<>c__DisplayClass15_0'::dialog
    IL_01f9:  ldloc.3
    IL_01fa:  ldstr      "Are you sure\?"
    IL_01ff:  ldstr      "The world will be irrecoverably deleted."
    IL_0204:  ldstr      "Yes"
    IL_0209:  ldstr      "No"
    IL_020e:  ldloc.3
    IL_020f:  ldftn      instance void Game.ModifyWorldScreen/'<>c__DisplayClass15_0'::'<Update>b__0'(valuetype Game.MessageDialogButton)
    IL_0215:  newobj     instance void class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>::.ctor(object,
                                                                                                                        native int)
    IL_021a:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_021f:  stfld      class Game.MessageDialog Game.ModifyWorldScreen/'<>c__DisplayClass15_0'::dialog
    IL_0224:  ldloc.3
    IL_0225:  ldfld      class Game.MessageDialog Game.ModifyWorldScreen/'<>c__DisplayClass15_0'::dialog
    IL_022a:  ldc.i4.0
    IL_022b:  callvirt   instance void Game.MessageDialog::set_AutoHide(bool)
    IL_0230:  ldnull
    IL_0231:  ldloc.3
    IL_0232:  ldfld      class Game.MessageDialog Game.ModifyWorldScreen/'<>c__DisplayClass15_0'::dialog
    IL_0237:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_023c:  ldarg.0
    IL_023d:  ldfld      class Game.ButtonWidget Game.ModifyWorldScreen::m_uploadButton
    IL_0242:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0247:  ldloc.1
    IL_0248:  and
    IL_0249:  brfalse.s  IL_025a

    IL_024b:  ldloc.0
    IL_024c:  brtrue.s   IL_025a

    IL_024e:  ldc.i4.2
    IL_024f:  ldarg.0
    IL_0250:  ldfld      string Game.ModifyWorldScreen::m_directoryName
    IL_0255:  call       void Game.ExternalContentManager::ShowUploadUi(valuetype Game.ExternalContentType,
                                                                        string)
    IL_025a:  ldarg.0
    IL_025b:  ldfld      class Game.ButtonWidget Game.ModifyWorldScreen::m_applyButton
    IL_0260:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0265:  ldloc.1
    IL_0266:  and
    IL_0267:  ldloc.0
    IL_0268:  and
    IL_0269:  brfalse.s  IL_02b2

    IL_026b:  ldarg.0
    IL_026c:  ldfld      class Game.WorldSettings Game.ModifyWorldScreen::m_worldSettings
    IL_0271:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_0276:  brfalse.s  IL_0291

    IL_0278:  ldarg.0
    IL_0279:  ldfld      class Game.WorldSettings Game.ModifyWorldScreen::m_worldSettings
    IL_027e:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_0283:  ldc.i4.4
    IL_0284:  beq.s      IL_0291

    IL_0286:  ldarg.0
    IL_0287:  ldfld      class Game.WorldSettings Game.ModifyWorldScreen::m_worldSettings
    IL_028c:  callvirt   instance void Game.WorldSettings::ResetOptionsForNonCreativeMode()
    IL_0291:  ldarg.0
    IL_0292:  ldfld      string Game.ModifyWorldScreen::m_directoryName
    IL_0297:  ldarg.0
    IL_0298:  ldfld      class Game.WorldSettings Game.ModifyWorldScreen::m_worldSettings
    IL_029d:  call       void Game.WorldsManager::ChangeWorld(string,
                                                              class Game.WorldSettings)
    IL_02a2:  ldstr      "Play"
    IL_02a7:  ldc.i4.0
    IL_02a8:  newarr     [System.Runtime]System.Object
    IL_02ad:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_02b2:  ldarg.0
    IL_02b3:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_02b8:  callvirt   instance bool Game.WidgetInput::get_Back()
    IL_02bd:  brtrue.s   IL_02e4

    IL_02bf:  ldarg.0
    IL_02c0:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_02c5:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_02ca:  brtrue.s   IL_02e4

    IL_02cc:  ldarg.0
    IL_02cd:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_02d2:  ldstr      "TopBar.Back"
    IL_02d7:  ldc.i4.1
    IL_02d8:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_02dd:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_02e2:  brfalse.s  IL_0336

    IL_02e4:  ldloc.0
    IL_02e5:  brfalse.s  IL_0326

    IL_02e7:  ldnull
    IL_02e8:  ldstr      "Abandon changes\?"
    IL_02ed:  ldstr      "You changed some of the world properties, but they"
    + " were not applied yet."
    IL_02f2:  ldstr      "Yes"
    IL_02f7:  ldstr      "No"
    IL_02fc:  ldsfld     class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton> Game.ModifyWorldScreen/'<>c'::'<>9__15_1'
    IL_0301:  dup
    IL_0302:  brtrue.s   IL_031b

    IL_0304:  pop
    IL_0305:  ldsfld     class Game.ModifyWorldScreen/'<>c' Game.ModifyWorldScreen/'<>c'::'<>9'
    IL_030a:  ldftn      instance void Game.ModifyWorldScreen/'<>c'::'<Update>b__15_1'(valuetype Game.MessageDialogButton)
    IL_0310:  newobj     instance void class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>::.ctor(object,
                                                                                                                        native int)
    IL_0315:  dup
    IL_0316:  stsfld     class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton> Game.ModifyWorldScreen/'<>c'::'<>9__15_1'
    IL_031b:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_0320:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_0325:  ret

    IL_0326:  ldstr      "Play"
    IL_032b:  ldc.i4.0
    IL_032c:  newarr     [System.Runtime]System.Object
    IL_0331:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_0336:  ret
  } // end of method ModifyWorldScreen::Update

  .method private hidebysig static bool  CompareValueDictionaries(class [EntitySystem]TemplatesDatabase.ValuesDictionary d1,
                                                                  class [EntitySystem]TemplatesDatabase.ValuesDictionary d2) cil managed
  {
    // 代码大小       135 (0x87)
    .maxstack  3
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>> V_0,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object> V_1,
             object V_2,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_3,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_4,
             bool V_5)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance int32 [EntitySystem]TemplatesDatabase.ValuesDictionary::get_Count()
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance int32 [EntitySystem]TemplatesDatabase.ValuesDictionary::get_Count()
    IL_000c:  beq.s      IL_0010

    IL_000e:  ldc.i4.0
    IL_000f:  ret

    IL_0010:  ldarg.0
    IL_0011:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>> [EntitySystem]TemplatesDatabase.ValuesDictionary::GetEnumerator()
    IL_0016:  stloc.0
    .try
    {
      IL_0017:  br.s       IL_006e

      IL_0019:  ldloc.0
      IL_001a:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>>::get_Current()
      IL_001f:  stloc.1
      IL_0020:  ldarg.1
      IL_0021:  ldloca.s   V_1
      IL_0023:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>::get_Key()
      IL_0028:  ldnull
      IL_0029:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<object>(string,
                                                                                                           !!0)
      IL_002e:  stloc.2
      IL_002f:  ldloc.2
      IL_0030:  isinst     [EntitySystem]TemplatesDatabase.ValuesDictionary
      IL_0035:  stloc.3
      IL_0036:  ldloc.3
      IL_0037:  brfalse.s  IL_005a

      IL_0039:  ldloca.s   V_1
      IL_003b:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>::get_Value()
      IL_0040:  isinst     [EntitySystem]TemplatesDatabase.ValuesDictionary
      IL_0045:  stloc.s    V_4
      IL_0047:  ldloc.s    V_4
      IL_0049:  brfalse.s  IL_0055

      IL_004b:  ldloc.3
      IL_004c:  ldloc.s    V_4
      IL_004e:  call       bool Game.ModifyWorldScreen::CompareValueDictionaries(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                                                 class [EntitySystem]TemplatesDatabase.ValuesDictionary)
      IL_0053:  brtrue.s   IL_006e

      IL_0055:  ldc.i4.0
      IL_0056:  stloc.s    V_5
      IL_0058:  leave.s    IL_0084

      IL_005a:  ldloc.2
      IL_005b:  ldloca.s   V_1
      IL_005d:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>::get_Value()
      IL_0062:  call       bool [System.Runtime]System.Object::Equals(object,
                                                                      object)
      IL_0067:  brtrue.s   IL_006e

      IL_0069:  ldc.i4.0
      IL_006a:  stloc.s    V_5
      IL_006c:  leave.s    IL_0084

      IL_006e:  ldloc.0
      IL_006f:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0074:  brtrue.s   IL_0019

      IL_0076:  leave.s    IL_0082

    }  // end .try
    finally
    {
      IL_0078:  ldloc.0
      IL_0079:  brfalse.s  IL_0081

      IL_007b:  ldloc.0
      IL_007c:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0081:  endfinally
    }  // end handler
    IL_0082:  ldc.i4.1
    IL_0083:  ret

    IL_0084:  ldloc.s    V_5
    IL_0086:  ret
  } // end of method ModifyWorldScreen::CompareValueDictionaries

  .method private hidebysig instance void 
          '<.ctor>b__13_0'(class Game.TextBoxWidget '<obj>') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.WorldSettings Game.ModifyWorldScreen::m_worldSettings
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.TextBoxWidget Game.ModifyWorldScreen::m_nameTextBox
    IL_000c:  callvirt   instance string Game.TextBoxWidget::get_Text()
    IL_0011:  stfld      string Game.WorldSettings::Name
    IL_0016:  ret
  } // end of method ModifyWorldScreen::'<.ctor>b__13_0'

} // end of class Game.ModifyWorldScreen