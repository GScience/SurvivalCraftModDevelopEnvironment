.class public auto ansi beforefieldinit Game.NewWorldScreen
       extends Game.Screen
{
  .field private class Game.TextBoxWidget m_nameTextBox
  .field private class Game.TextBoxWidget m_seedTextBox
  .field private class Game.ButtonWidget m_gameModeButton
  .field private class Game.ButtonWidget m_worldOptionsButton
  .field private class Game.LabelWidget m_blankSeedLabel
  .field private class Game.LabelWidget m_descriptionLabel
  .field private class Game.LabelWidget m_errorLabel
  .field private class Game.ButtonWidget m_playButton
  .field private class Game.Random m_random
  .field private class Game.WorldSettings m_worldSettings
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       267 (0x10b)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.NewWorldScreen::m_random
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.Screen::.ctor()
    IL_0011:  ldstr      "Screens/NewWorldScreen"
    IL_0016:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_001b:  stloc.0
    IL_001c:  ldarg.0
    IL_001d:  ldarg.0
    IL_001e:  ldloc.0
    IL_001f:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_002b:  ldstr      "Name"
    IL_0030:  ldc.i4.1
    IL_0031:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.TextBoxWidget>(string,
                                                                                       bool)
    IL_0036:  stfld      class Game.TextBoxWidget Game.NewWorldScreen::m_nameTextBox
    IL_003b:  ldarg.0
    IL_003c:  ldarg.0
    IL_003d:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0042:  ldstr      "Seed"
    IL_0047:  ldc.i4.1
    IL_0048:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.TextBoxWidget>(string,
                                                                                       bool)
    IL_004d:  stfld      class Game.TextBoxWidget Game.NewWorldScreen::m_seedTextBox
    IL_0052:  ldarg.0
    IL_0053:  ldarg.0
    IL_0054:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0059:  ldstr      "GameMode"
    IL_005e:  ldc.i4.1
    IL_005f:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0064:  stfld      class Game.ButtonWidget Game.NewWorldScreen::m_gameModeButton
    IL_0069:  ldarg.0
    IL_006a:  ldarg.0
    IL_006b:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0070:  ldstr      "WorldOptions"
    IL_0075:  ldc.i4.1
    IL_0076:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_007b:  stfld      class Game.ButtonWidget Game.NewWorldScreen::m_worldOptionsButton
    IL_0080:  ldarg.0
    IL_0081:  ldarg.0
    IL_0082:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0087:  ldstr      "BlankSeed"
    IL_008c:  ldc.i4.1
    IL_008d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0092:  stfld      class Game.LabelWidget Game.NewWorldScreen::m_blankSeedLabel
    IL_0097:  ldarg.0
    IL_0098:  ldarg.0
    IL_0099:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_009e:  ldstr      "Description"
    IL_00a3:  ldc.i4.1
    IL_00a4:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_00a9:  stfld      class Game.LabelWidget Game.NewWorldScreen::m_descriptionLabel
    IL_00ae:  ldarg.0
    IL_00af:  ldarg.0
    IL_00b0:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00b5:  ldstr      "Error"
    IL_00ba:  ldc.i4.1
    IL_00bb:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_00c0:  stfld      class Game.LabelWidget Game.NewWorldScreen::m_errorLabel
    IL_00c5:  ldarg.0
    IL_00c6:  ldarg.0
    IL_00c7:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00cc:  ldstr      "Play"
    IL_00d1:  ldc.i4.1
    IL_00d2:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_00d7:  stfld      class Game.ButtonWidget Game.NewWorldScreen::m_playButton
    IL_00dc:  ldarg.0
    IL_00dd:  ldfld      class Game.TextBoxWidget Game.NewWorldScreen::m_nameTextBox
    IL_00e2:  ldarg.0
    IL_00e3:  ldftn      instance void Game.NewWorldScreen::'<.ctor>b__10_0'(class Game.TextBoxWidget)
    IL_00e9:  newobj     instance void class [System.Runtime]System.Action`1<class Game.TextBoxWidget>::.ctor(object,
                                                                                                              native int)
    IL_00ee:  callvirt   instance void Game.TextBoxWidget::add_TextChanged(class [System.Runtime]System.Action`1<class Game.TextBoxWidget>)
    IL_00f3:  ldarg.0
    IL_00f4:  ldfld      class Game.TextBoxWidget Game.NewWorldScreen::m_seedTextBox
    IL_00f9:  ldarg.0
    IL_00fa:  ldftn      instance void Game.NewWorldScreen::'<.ctor>b__10_1'(class Game.TextBoxWidget)
    IL_0100:  newobj     instance void class [System.Runtime]System.Action`1<class Game.TextBoxWidget>::.ctor(object,
                                                                                                              native int)
    IL_0105:  callvirt   instance void Game.TextBoxWidget::add_TextChanged(class [System.Runtime]System.Action`1<class Game.TextBoxWidget>)
    IL_010a:  ret
  } // end of method NewWorldScreen::.ctor

  .method public hidebysig virtual instance void 
          Enter(object[] parameters) cil managed
  {
    // 代码大小       91 (0x5b)
    .maxstack  8
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1<string> V_0,
             valuetype [Engine]Engine.ReadOnlyList`1<string> V_1)
    IL_0000:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
    IL_0005:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
    IL_000a:  ldtoken    Game.WorldOptionsScreen
    IL_000f:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0014:  beq.s      IL_005a

    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void Game.WorldSettings::.ctor()
    IL_001c:  dup
    IL_001d:  call       valuetype [Engine]Engine.ReadOnlyList`1<string> Game.WorldsManager::get_NewWorldNames()
    IL_0022:  stloc.0
    IL_0023:  ldloca.s   V_0
    IL_0025:  ldarg.0
    IL_0026:  ldfld      class Game.Random Game.NewWorldScreen::m_random
    IL_002b:  ldc.i4.0
    IL_002c:  call       valuetype [Engine]Engine.ReadOnlyList`1<string> Game.WorldsManager::get_NewWorldNames()
    IL_0031:  stloc.1
    IL_0032:  ldloca.s   V_1
    IL_0034:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<string>::get_Count()
    IL_0039:  ldc.i4.1
    IL_003a:  sub
    IL_003b:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0040:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<string>::get_Item(int32)
    IL_0045:  stfld      string Game.WorldSettings::Name
    IL_004a:  dup
    IL_004b:  call       string Game.VersionsManager::get_SerializationVersion()
    IL_0050:  stfld      string Game.WorldSettings::OriginalSerializationVersion
    IL_0055:  stfld      class Game.WorldSettings Game.NewWorldScreen::m_worldSettings
    IL_005a:  ret
  } // end of method NewWorldScreen::Enter

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       534 (0x216)
    .maxstack  5
    .locals init (bool V_0,
             class [System.Runtime]System.Collections.Generic.IList`1<int32> V_1,
             class Game.WorldInfo V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ButtonWidget Game.NewWorldScreen::m_gameModeButton
    IL_0006:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_000b:  brfalse.s  IL_0077

    IL_000d:  ldtoken    Game.GameMode
    IL_0012:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0017:  call       class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.EnumUtils::GetEnumValues(class [System.Runtime]System.Type)
    IL_001c:  stloc.1
    IL_001d:  ldarg.0
    IL_001e:  ldfld      class Game.WorldSettings Game.NewWorldScreen::m_worldSettings
    IL_0023:  ldloc.1
    IL_0024:  ldarg.0
    IL_0025:  ldfld      class Game.WorldSettings Game.NewWorldScreen::m_worldSettings
    IL_002a:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_002f:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.IList`1<int32>::IndexOf(!0)
    IL_0034:  ldc.i4.1
    IL_0035:  add
    IL_0036:  ldloc.1
    IL_0037:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.ICollection`1<int32>::get_Count()
    IL_003c:  rem
    IL_003d:  stfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_0042:  br.s       IL_0069

    IL_0044:  ldarg.0
    IL_0045:  ldfld      class Game.WorldSettings Game.NewWorldScreen::m_worldSettings
    IL_004a:  ldloc.1
    IL_004b:  ldarg.0
    IL_004c:  ldfld      class Game.WorldSettings Game.NewWorldScreen::m_worldSettings
    IL_0051:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_0056:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.IList`1<int32>::IndexOf(!0)
    IL_005b:  ldc.i4.1
    IL_005c:  add
    IL_005d:  ldloc.1
    IL_005e:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.ICollection`1<int32>::get_Count()
    IL_0063:  rem
    IL_0064:  stfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_0069:  ldarg.0
    IL_006a:  ldfld      class Game.WorldSettings Game.NewWorldScreen::m_worldSettings
    IL_006f:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_0074:  ldc.i4.4
    IL_0075:  beq.s      IL_0044

    IL_0077:  ldarg.0
    IL_0078:  ldfld      class Game.WorldSettings Game.NewWorldScreen::m_worldSettings
    IL_007d:  ldfld      string Game.WorldSettings::Name
    IL_0082:  call       bool Game.WorldsManager::ValidateWorldName(string)
    IL_0087:  stloc.0
    IL_0088:  ldarg.0
    IL_0089:  ldfld      class Game.TextBoxWidget Game.NewWorldScreen::m_nameTextBox
    IL_008e:  ldarg.0
    IL_008f:  ldfld      class Game.WorldSettings Game.NewWorldScreen::m_worldSettings
    IL_0094:  ldfld      string Game.WorldSettings::Name
    IL_0099:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
    IL_009e:  ldarg.0
    IL_009f:  ldfld      class Game.TextBoxWidget Game.NewWorldScreen::m_seedTextBox
    IL_00a4:  ldarg.0
    IL_00a5:  ldfld      class Game.WorldSettings Game.NewWorldScreen::m_worldSettings
    IL_00aa:  ldfld      string Game.WorldSettings::Seed
    IL_00af:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
    IL_00b4:  ldarg.0
    IL_00b5:  ldfld      class Game.ButtonWidget Game.NewWorldScreen::m_gameModeButton
    IL_00ba:  ldarg.0
    IL_00bb:  ldfld      class Game.WorldSettings Game.NewWorldScreen::m_worldSettings
    IL_00c0:  ldflda     valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_00c5:  constrained. Game.GameMode
    IL_00cb:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_00d0:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_00d5:  ldarg.0
    IL_00d6:  ldfld      class Game.ButtonWidget Game.NewWorldScreen::m_playButton
    IL_00db:  ldloc.0
    IL_00dc:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_00e1:  ldarg.0
    IL_00e2:  ldfld      class Game.LabelWidget Game.NewWorldScreen::m_errorLabel
    IL_00e7:  ldloc.0
    IL_00e8:  ldc.i4.0
    IL_00e9:  ceq
    IL_00eb:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_00f0:  ldarg.0
    IL_00f1:  ldfld      class Game.LabelWidget Game.NewWorldScreen::m_blankSeedLabel
    IL_00f6:  ldarg.0
    IL_00f7:  ldfld      class Game.WorldSettings Game.NewWorldScreen::m_worldSettings
    IL_00fc:  ldfld      string Game.WorldSettings::Seed
    IL_0101:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0106:  brtrue.s   IL_0118

    IL_0108:  ldarg.0
    IL_0109:  ldfld      class Game.TextBoxWidget Game.NewWorldScreen::m_seedTextBox
    IL_010e:  callvirt   instance bool Game.TextBoxWidget::get_HasFocus()
    IL_0113:  ldc.i4.0
    IL_0114:  ceq
    IL_0116:  br.s       IL_0119

    IL_0118:  ldc.i4.0
    IL_0119:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_011e:  ldarg.0
    IL_011f:  ldfld      class Game.LabelWidget Game.NewWorldScreen::m_descriptionLabel
    IL_0124:  ldstr      "GameMode."
    IL_0129:  ldarg.0
    IL_012a:  ldfld      class Game.WorldSettings Game.NewWorldScreen::m_worldSettings
    IL_012f:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_0134:  box        Game.GameMode
    IL_0139:  ldstr      ".Description"
    IL_013e:  call       string [System.Runtime]System.String::Concat(object,
                                                                      object,
                                                                      object)
    IL_0143:  call       string Game.StringsManager::GetString(string)
    IL_0148:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_014d:  ldarg.0
    IL_014e:  ldfld      class Game.ButtonWidget Game.NewWorldScreen::m_worldOptionsButton
    IL_0153:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0158:  brfalse.s  IL_017c

    IL_015a:  ldstr      "WorldOptions"
    IL_015f:  ldc.i4.2
    IL_0160:  newarr     [System.Runtime]System.Object
    IL_0165:  dup
    IL_0166:  ldc.i4.0
    IL_0167:  ldarg.0
    IL_0168:  ldfld      class Game.WorldSettings Game.NewWorldScreen::m_worldSettings
    IL_016d:  stelem.ref
    IL_016e:  dup
    IL_016f:  ldc.i4.1
    IL_0170:  ldc.i4.0
    IL_0171:  box        [System.Runtime]System.Boolean
    IL_0176:  stelem.ref
    IL_0177:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_017c:  ldarg.0
    IL_017d:  ldfld      class Game.ButtonWidget Game.NewWorldScreen::m_playButton
    IL_0182:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0187:  brfalse.s  IL_01d3

    IL_0189:  ldarg.0
    IL_018a:  ldfld      class Game.TextBoxWidget Game.NewWorldScreen::m_nameTextBox
    IL_018f:  callvirt   instance string Game.TextBoxWidget::get_Text()
    IL_0194:  call       bool Game.WorldsManager::ValidateWorldName(string)
    IL_0199:  brfalse.s  IL_01d3

    IL_019b:  ldarg.0
    IL_019c:  ldfld      class Game.WorldSettings Game.NewWorldScreen::m_worldSettings
    IL_01a1:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_01a6:  brfalse.s  IL_01b3

    IL_01a8:  ldarg.0
    IL_01a9:  ldfld      class Game.WorldSettings Game.NewWorldScreen::m_worldSettings
    IL_01ae:  callvirt   instance void Game.WorldSettings::ResetOptionsForNonCreativeMode()
    IL_01b3:  ldarg.0
    IL_01b4:  ldfld      class Game.WorldSettings Game.NewWorldScreen::m_worldSettings
    IL_01b9:  call       class Game.WorldInfo Game.WorldsManager::CreateWorld(class Game.WorldSettings)
    IL_01be:  stloc.2
    IL_01bf:  ldstr      "GameLoading"
    IL_01c4:  ldc.i4.2
    IL_01c5:  newarr     [System.Runtime]System.Object
    IL_01ca:  dup
    IL_01cb:  ldc.i4.0
    IL_01cc:  ldloc.2
    IL_01cd:  stelem.ref
    IL_01ce:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_01d3:  ldarg.0
    IL_01d4:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_01d9:  callvirt   instance bool Game.WidgetInput::get_Back()
    IL_01de:  brtrue.s   IL_0205

    IL_01e0:  ldarg.0
    IL_01e1:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_01e6:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_01eb:  brtrue.s   IL_0205

    IL_01ed:  ldarg.0
    IL_01ee:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_01f3:  ldstr      "TopBar.Back"
    IL_01f8:  ldc.i4.1
    IL_01f9:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_01fe:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0203:  brfalse.s  IL_0215

    IL_0205:  ldstr      "Play"
    IL_020a:  ldc.i4.0
    IL_020b:  newarr     [System.Runtime]System.Object
    IL_0210:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_0215:  ret
  } // end of method NewWorldScreen::Update

  .method private hidebysig instance void 
          '<.ctor>b__10_0'(class Game.TextBoxWidget '<obj>') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.WorldSettings Game.NewWorldScreen::m_worldSettings
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.TextBoxWidget Game.NewWorldScreen::m_nameTextBox
    IL_000c:  callvirt   instance string Game.TextBoxWidget::get_Text()
    IL_0011:  stfld      string Game.WorldSettings::Name
    IL_0016:  ret
  } // end of method NewWorldScreen::'<.ctor>b__10_0'

  .method private hidebysig instance void 
          '<.ctor>b__10_1'(class Game.TextBoxWidget '<obj>') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.WorldSettings Game.NewWorldScreen::m_worldSettings
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.TextBoxWidget Game.NewWorldScreen::m_seedTextBox
    IL_000c:  callvirt   instance string Game.TextBoxWidget::get_Text()
    IL_0011:  stfld      string Game.WorldSettings::Seed
    IL_0016:  ret
  } // end of method NewWorldScreen::'<.ctor>b__10_1'

} // end of class Game.NewWorldScreen