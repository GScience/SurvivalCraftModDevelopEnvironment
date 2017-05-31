.class public auto ansi beforefieldinit Game.NewWorldScreen
       extends Game.Screen
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.NewWorldScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action '<>9__12_2'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.NewWorldScreen/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.NewWorldScreen/'<>c' Game.NewWorldScreen/'<>c'::'<>9'
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
            '<Update>b__12_2'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldstr      "Singleplayer"
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__12_2'

  } // end of class '<>c'

  .field private class Game.TextBoxWidget m_nameTextBox
  .field private class Game.TextBoxWidget m_seedTextBox
  .field private class Game.ButtonWidget m_gameModeButton
  .field private class Game.ButtonWidget m_worldOptionsButton
  .field private class Game.LabelWidget m_blankSeedLabel
  .field private class Game.LabelWidget m_descriptionLabel
  .field private class Game.LabelWidget m_errorLabel
  .field private class Game.ButtonWidget m_playButton
  .field private class Game.Random m_random
  .field private class Game.WorldInfo m_worldInfo
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       312 (0x138)
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
    IL_001d:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0022:  ldarg.0
    IL_0023:  ldloc.0
    IL_0024:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0029:  ldarg.0
    IL_002a:  ldarg.0
    IL_002b:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0030:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0035:  ldstr      "Name"
    IL_003a:  ldc.i4.1
    IL_003b:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.TextBoxWidget>(string,
                                                                                            bool)
    IL_0040:  stfld      class Game.TextBoxWidget Game.NewWorldScreen::m_nameTextBox
    IL_0045:  ldarg.0
    IL_0046:  ldarg.0
    IL_0047:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_004c:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0051:  ldstr      "Seed"
    IL_0056:  ldc.i4.1
    IL_0057:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.TextBoxWidget>(string,
                                                                                            bool)
    IL_005c:  stfld      class Game.TextBoxWidget Game.NewWorldScreen::m_seedTextBox
    IL_0061:  ldarg.0
    IL_0062:  ldarg.0
    IL_0063:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0068:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_006d:  ldstr      "GameMode"
    IL_0072:  ldc.i4.1
    IL_0073:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0078:  stfld      class Game.ButtonWidget Game.NewWorldScreen::m_gameModeButton
    IL_007d:  ldarg.0
    IL_007e:  ldarg.0
    IL_007f:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0084:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0089:  ldstr      "WorldOptions"
    IL_008e:  ldc.i4.1
    IL_008f:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0094:  stfld      class Game.ButtonWidget Game.NewWorldScreen::m_worldOptionsButton
    IL_0099:  ldarg.0
    IL_009a:  ldarg.0
    IL_009b:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_00a0:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00a5:  ldstr      "BlankSeed"
    IL_00aa:  ldc.i4.1
    IL_00ab:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_00b0:  stfld      class Game.LabelWidget Game.NewWorldScreen::m_blankSeedLabel
    IL_00b5:  ldarg.0
    IL_00b6:  ldarg.0
    IL_00b7:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_00bc:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00c1:  ldstr      "Description"
    IL_00c6:  ldc.i4.1
    IL_00c7:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_00cc:  stfld      class Game.LabelWidget Game.NewWorldScreen::m_descriptionLabel
    IL_00d1:  ldarg.0
    IL_00d2:  ldarg.0
    IL_00d3:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_00d8:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00dd:  ldstr      "Error"
    IL_00e2:  ldc.i4.1
    IL_00e3:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_00e8:  stfld      class Game.LabelWidget Game.NewWorldScreen::m_errorLabel
    IL_00ed:  ldarg.0
    IL_00ee:  ldarg.0
    IL_00ef:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_00f4:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00f9:  ldstr      "Play"
    IL_00fe:  ldc.i4.1
    IL_00ff:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0104:  stfld      class Game.ButtonWidget Game.NewWorldScreen::m_playButton
    IL_0109:  ldarg.0
    IL_010a:  ldfld      class Game.TextBoxWidget Game.NewWorldScreen::m_nameTextBox
    IL_010f:  ldarg.0
    IL_0110:  ldftn      instance void Game.NewWorldScreen::'<.ctor>b__10_0'(class Game.TextBoxWidget)
    IL_0116:  newobj     instance void class [System.Runtime]System.Action`1<class Game.TextBoxWidget>::.ctor(object,
                                                                                                              native int)
    IL_011b:  callvirt   instance void Game.TextBoxWidget::add_TextChanged(class [System.Runtime]System.Action`1<class Game.TextBoxWidget>)
    IL_0120:  ldarg.0
    IL_0121:  ldfld      class Game.TextBoxWidget Game.NewWorldScreen::m_seedTextBox
    IL_0126:  ldarg.0
    IL_0127:  ldftn      instance void Game.NewWorldScreen::'<.ctor>b__10_1'(class Game.TextBoxWidget)
    IL_012d:  newobj     instance void class [System.Runtime]System.Action`1<class Game.TextBoxWidget>::.ctor(object,
                                                                                                              native int)
    IL_0132:  callvirt   instance void Game.TextBoxWidget::add_TextChanged(class [System.Runtime]System.Action`1<class Game.TextBoxWidget>)
    IL_0137:  ret
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
    IL_0017:  newobj     instance void Game.WorldInfo::.ctor()
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
    IL_0045:  stfld      string Game.WorldInfo::Name
    IL_004a:  dup
    IL_004b:  call       string Game.VersionsManager::get_SerializationVersion()
    IL_0050:  stfld      string Game.WorldInfo::OriginalSerializationVersion
    IL_0055:  stfld      class Game.WorldInfo Game.NewWorldScreen::m_worldInfo
    IL_005a:  ret
  } // end of method NewWorldScreen::Enter

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       513 (0x201)
    .maxstack  4
    .locals init (bool V_0,
             class [System.Runtime]System.Collections.Generic.IList`1<int32> V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ButtonWidget Game.NewWorldScreen::m_gameModeButton
    IL_0006:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_000b:  brfalse.s  IL_0077

    IL_000d:  ldtoken    Game.GameMode
    IL_0012:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0017:  call       class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.EnumUtils::GetEnumValues(class [System.Runtime]System.Type)
    IL_001c:  stloc.1
    IL_001d:  ldarg.0
    IL_001e:  ldfld      class Game.WorldInfo Game.NewWorldScreen::m_worldInfo
    IL_0023:  ldloc.1
    IL_0024:  ldarg.0
    IL_0025:  ldfld      class Game.WorldInfo Game.NewWorldScreen::m_worldInfo
    IL_002a:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_002f:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.IList`1<int32>::IndexOf(!0)
    IL_0034:  ldc.i4.1
    IL_0035:  add
    IL_0036:  ldloc.1
    IL_0037:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.ICollection`1<int32>::get_Count()
    IL_003c:  rem
    IL_003d:  stfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_0042:  br.s       IL_0069

    IL_0044:  ldarg.0
    IL_0045:  ldfld      class Game.WorldInfo Game.NewWorldScreen::m_worldInfo
    IL_004a:  ldloc.1
    IL_004b:  ldarg.0
    IL_004c:  ldfld      class Game.WorldInfo Game.NewWorldScreen::m_worldInfo
    IL_0051:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_0056:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.IList`1<int32>::IndexOf(!0)
    IL_005b:  ldc.i4.1
    IL_005c:  add
    IL_005d:  ldloc.1
    IL_005e:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.ICollection`1<int32>::get_Count()
    IL_0063:  rem
    IL_0064:  stfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_0069:  ldarg.0
    IL_006a:  ldfld      class Game.WorldInfo Game.NewWorldScreen::m_worldInfo
    IL_006f:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_0074:  ldc.i4.4
    IL_0075:  beq.s      IL_0044

    IL_0077:  ldarg.0
    IL_0078:  ldfld      class Game.WorldInfo Game.NewWorldScreen::m_worldInfo
    IL_007d:  ldfld      string Game.WorldInfo::Name
    IL_0082:  call       bool Game.WorldsManager::ValidateWorldName(string)
    IL_0087:  stloc.0
    IL_0088:  ldarg.0
    IL_0089:  ldfld      class Game.TextBoxWidget Game.NewWorldScreen::m_nameTextBox
    IL_008e:  ldarg.0
    IL_008f:  ldfld      class Game.WorldInfo Game.NewWorldScreen::m_worldInfo
    IL_0094:  ldfld      string Game.WorldInfo::Name
    IL_0099:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
    IL_009e:  ldarg.0
    IL_009f:  ldfld      class Game.TextBoxWidget Game.NewWorldScreen::m_seedTextBox
    IL_00a4:  ldarg.0
    IL_00a5:  ldfld      class Game.WorldInfo Game.NewWorldScreen::m_worldInfo
    IL_00aa:  ldfld      string Game.WorldInfo::Seed
    IL_00af:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
    IL_00b4:  ldarg.0
    IL_00b5:  ldfld      class Game.ButtonWidget Game.NewWorldScreen::m_gameModeButton
    IL_00ba:  ldarg.0
    IL_00bb:  ldfld      class Game.WorldInfo Game.NewWorldScreen::m_worldInfo
    IL_00c0:  ldflda     valuetype Game.GameMode Game.WorldInfo::GameMode
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
    IL_00f7:  ldfld      class Game.WorldInfo Game.NewWorldScreen::m_worldInfo
    IL_00fc:  ldfld      string Game.WorldInfo::Seed
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
    IL_012a:  ldfld      class Game.WorldInfo Game.NewWorldScreen::m_worldInfo
    IL_012f:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
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
    IL_0158:  brfalse.s  IL_016b

    IL_015a:  ldarg.0
    IL_015b:  ldftn      instance void Game.NewWorldScreen::'<Update>b__12_0'()
    IL_0161:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0166:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_016b:  ldarg.0
    IL_016c:  ldfld      class Game.ButtonWidget Game.NewWorldScreen::m_playButton
    IL_0171:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0176:  brfalse.s  IL_01b3

    IL_0178:  ldarg.0
    IL_0179:  ldfld      class Game.TextBoxWidget Game.NewWorldScreen::m_nameTextBox
    IL_017e:  callvirt   instance string Game.TextBoxWidget::get_Text()
    IL_0183:  call       bool Game.WorldsManager::ValidateWorldName(string)
    IL_0188:  brfalse.s  IL_01b3

    IL_018a:  ldarg.0
    IL_018b:  ldfld      class Game.WorldInfo Game.NewWorldScreen::m_worldInfo
    IL_0190:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_0195:  brfalse.s  IL_01a2

    IL_0197:  ldarg.0
    IL_0198:  ldfld      class Game.WorldInfo Game.NewWorldScreen::m_worldInfo
    IL_019d:  callvirt   instance void Game.WorldInfo::ResetOptionsForNonCreativeMode()
    IL_01a2:  ldarg.0
    IL_01a3:  ldftn      instance void Game.NewWorldScreen::'<Update>b__12_1'()
    IL_01a9:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01ae:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_01b3:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_01b8:  ldfld      bool Game.InputState::Back
    IL_01bd:  brtrue.s   IL_01dc

    IL_01bf:  ldarg.0
    IL_01c0:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_01c5:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_01ca:  ldstr      "TopBar.Back"
    IL_01cf:  ldc.i4.1
    IL_01d0:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_01d5:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_01da:  brfalse.s  IL_0200

    IL_01dc:  ldsfld     class [System.Runtime]System.Action Game.NewWorldScreen/'<>c'::'<>9__12_2'
    IL_01e1:  dup
    IL_01e2:  brtrue.s   IL_01fb

    IL_01e4:  pop
    IL_01e5:  ldsfld     class Game.NewWorldScreen/'<>c' Game.NewWorldScreen/'<>c'::'<>9'
    IL_01ea:  ldftn      instance void Game.NewWorldScreen/'<>c'::'<Update>b__12_2'()
    IL_01f0:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01f5:  dup
    IL_01f6:  stsfld     class [System.Runtime]System.Action Game.NewWorldScreen/'<>c'::'<>9__12_2'
    IL_01fb:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_0200:  ret
  } // end of method NewWorldScreen::Update

  .method private hidebysig instance void 
          '<.ctor>b__10_0'(class Game.TextBoxWidget '<obj>') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.WorldInfo Game.NewWorldScreen::m_worldInfo
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.TextBoxWidget Game.NewWorldScreen::m_nameTextBox
    IL_000c:  callvirt   instance string Game.TextBoxWidget::get_Text()
    IL_0011:  stfld      string Game.WorldInfo::Name
    IL_0016:  ret
  } // end of method NewWorldScreen::'<.ctor>b__10_0'

  .method private hidebysig instance void 
          '<.ctor>b__10_1'(class Game.TextBoxWidget '<obj>') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.WorldInfo Game.NewWorldScreen::m_worldInfo
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.TextBoxWidget Game.NewWorldScreen::m_seedTextBox
    IL_000c:  callvirt   instance string Game.TextBoxWidget::get_Text()
    IL_0011:  stfld      string Game.WorldInfo::Seed
    IL_0016:  ret
  } // end of method NewWorldScreen::'<.ctor>b__10_1'

  .method private hidebysig instance void 
          '<Update>b__12_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       35 (0x23)
    .maxstack  8
    IL_0000:  ldstr      "WorldOptions"
    IL_0005:  ldc.i4.2
    IL_0006:  newarr     [System.Runtime]System.Object
    IL_000b:  dup
    IL_000c:  ldc.i4.0
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.WorldInfo Game.NewWorldScreen::m_worldInfo
    IL_0013:  stelem.ref
    IL_0014:  dup
    IL_0015:  ldc.i4.1
    IL_0016:  ldc.i4.0
    IL_0017:  box        [System.Runtime]System.Boolean
    IL_001c:  stelem.ref
    IL_001d:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_0022:  ret
  } // end of method NewWorldScreen::'<Update>b__12_0'

  .method private hidebysig instance void 
          '<Update>b__12_1'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       49 (0x31)
    .maxstack  5
    .locals init (class Game.WorldInfo V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.WorldInfo Game.NewWorldScreen::m_worldInfo
    IL_0006:  call       string Game.WorldsManager::GetUnusedWorldDirectoryName()
    IL_000b:  stfld      string Game.WorldInfo::DirectoryName
    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.WorldInfo Game.NewWorldScreen::m_worldInfo
    IL_0016:  call       class Game.WorldInfo Game.WorldsManager::CreateWorld(class Game.WorldInfo)
    IL_001b:  stloc.0
    IL_001c:  ldstr      "GameLoading"
    IL_0021:  ldc.i4.2
    IL_0022:  newarr     [System.Runtime]System.Object
    IL_0027:  dup
    IL_0028:  ldc.i4.0
    IL_0029:  ldloc.0
    IL_002a:  stelem.ref
    IL_002b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_0030:  ret
  } // end of method NewWorldScreen::'<Update>b__12_1'

} // end of class Game.NewWorldScreen