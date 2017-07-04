.class public auto ansi beforefieldinit Game.PlayersScreen
       extends Game.Screen
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.PlayersScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<object,class Game.Widget> '<>9__8_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.PlayersScreen/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.PlayersScreen/'<>c' Game.PlayersScreen/'<>c'::'<>9'
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
            '<Update>b__8_0'(object o) cil managed
    {
      // 代码大小       311 (0x137)
      .maxstack  9
      .locals init (string V_0,
               string V_1)
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance string [System.Runtime]System.Object::ToString()
      IL_0006:  stloc.0
      IL_0007:  ldstr      "Textures/Atlas/ScreenLayout"
      IL_000c:  ldloc.0
      IL_000d:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string)
      IL_0012:  stloc.1
      IL_0013:  newobj     instance void Game.StackPanelWidget::.ctor()
      IL_0018:  dup
      IL_0019:  ldc.i4.0
      IL_001a:  callvirt   instance void Game.StackPanelWidget::set_Direction(valuetype Game.LayoutDirection)
      IL_001f:  dup
      IL_0020:  ldc.i4.1
      IL_0021:  callvirt   instance void Game.Widget::set_VerticalAlignment(valuetype Game.WidgetAlignment)
      IL_0026:  dup
      IL_0027:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
      IL_002c:  newobj     instance void Game.RectangleWidget::.ctor()
      IL_0031:  dup
      IL_0032:  ldc.r4     98.
      IL_0037:  ldc.r4     56.
      IL_003c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_0041:  callvirt   instance void Game.RectangleWidget::set_Size(valuetype [Engine]Engine.Vector2)
      IL_0046:  dup
      IL_0047:  ldloc.1
      IL_0048:  call       !!0 Game.ContentManager::Get<class Game.Subtexture>(string)
      IL_004d:  callvirt   instance void Game.RectangleWidget::set_Subtexture(class Game.Subtexture)
      IL_0052:  dup
      IL_0053:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
      IL_0058:  callvirt   instance void Game.RectangleWidget::set_FillColor(valuetype [Engine]Engine.Color)
      IL_005d:  dup
      IL_005e:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
      IL_0063:  callvirt   instance void Game.RectangleWidget::set_OutlineColor(valuetype [Engine]Engine.Color)
      IL_0068:  dup
      IL_0069:  ldc.r4     10.
      IL_006e:  ldc.r4     0.0
      IL_0073:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_0078:  callvirt   instance void Game.Widget::set_Margin(valuetype [Engine]Engine.Vector2)
      IL_007d:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
      IL_0082:  dup
      IL_0083:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
      IL_0088:  newobj     instance void Game.StackPanelWidget::.ctor()
      IL_008d:  dup
      IL_008e:  ldc.i4.1
      IL_008f:  callvirt   instance void Game.StackPanelWidget::set_Direction(valuetype Game.LayoutDirection)
      IL_0094:  dup
      IL_0095:  ldc.i4.1
      IL_0096:  callvirt   instance void Game.Widget::set_VerticalAlignment(valuetype Game.WidgetAlignment)
      IL_009b:  dup
      IL_009c:  ldc.r4     10.
      IL_00a1:  ldc.r4     0.0
      IL_00a6:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_00ab:  callvirt   instance void Game.Widget::set_Margin(valuetype [Engine]Engine.Vector2)
      IL_00b0:  dup
      IL_00b1:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
      IL_00b6:  newobj     instance void Game.LabelWidget::.ctor()
      IL_00bb:  dup
      IL_00bc:  ldstr      "ScreenLayout."
      IL_00c1:  ldloc.0
      IL_00c2:  ldstr      ".Name"
      IL_00c7:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string,
                                                                        string)
      IL_00cc:  call       string Game.StringsManager::GetString(string)
      IL_00d1:  callvirt   instance void Game.LabelWidget::set_Text(string)
      IL_00d6:  dup
      IL_00d7:  ldstr      "Fonts/Pericles32"
      IL_00dc:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Media.BitmapFont>(string)
      IL_00e1:  callvirt   instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
      IL_00e6:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
      IL_00eb:  dup
      IL_00ec:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
      IL_00f1:  newobj     instance void Game.LabelWidget::.ctor()
      IL_00f6:  dup
      IL_00f7:  ldstr      "ScreenLayout."
      IL_00fc:  ldloc.0
      IL_00fd:  ldstr      ".Description"
      IL_0102:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string,
                                                                        string)
      IL_0107:  call       string Game.StringsManager::GetString(string)
      IL_010c:  callvirt   instance void Game.LabelWidget::set_Text(string)
      IL_0111:  dup
      IL_0112:  ldstr      "Fonts/Pericles18"
      IL_0117:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Media.BitmapFont>(string)
      IL_011c:  callvirt   instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
      IL_0121:  dup
      IL_0122:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Gray
      IL_0127:  callvirt   instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
      IL_012c:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
      IL_0131:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
      IL_0136:  ret
    } // end of method '<>c'::'<Update>b__8_0'

  } // end of class '<>c'

  .field private class Game.StackPanelWidget m_playersPanel
  .field private class Game.ButtonWidget m_addPlayerButton
  .field private class Game.ButtonWidget m_screenLayoutButton
  .field private class Game.SubsystemPlayers m_subsystemPlayers
  .field private class Game.CharacterSkinsCache m_characterSkinsCache
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       106 (0x6a)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.CharacterSkinsCache::.ctor()
    IL_0006:  stfld      class Game.CharacterSkinsCache Game.PlayersScreen::m_characterSkinsCache
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.Screen::.ctor()
    IL_0011:  ldstr      "Screens/PlayersScreen"
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
    IL_002b:  ldstr      "PlayersPanel"
    IL_0030:  ldc.i4.1
    IL_0031:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.StackPanelWidget>(string,
                                                                                          bool)
    IL_0036:  stfld      class Game.StackPanelWidget Game.PlayersScreen::m_playersPanel
    IL_003b:  ldarg.0
    IL_003c:  ldarg.0
    IL_003d:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0042:  ldstr      "AddPlayerButton"
    IL_0047:  ldc.i4.1
    IL_0048:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_004d:  stfld      class Game.ButtonWidget Game.PlayersScreen::m_addPlayerButton
    IL_0052:  ldarg.0
    IL_0053:  ldarg.0
    IL_0054:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0059:  ldstr      "ScreenLayoutButton"
    IL_005e:  ldc.i4.1
    IL_005f:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0064:  stfld      class Game.ButtonWidget Game.PlayersScreen::m_screenLayoutButton
    IL_0069:  ret
  } // end of method PlayersScreen::.ctor

  .method public hidebysig virtual instance void 
          Enter(object[] parameters) cil managed
  {
    // 代码大小       67 (0x43)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldc.i4.0
    IL_0003:  ldelem.ref
    IL_0004:  castclass  Game.SubsystemPlayers
    IL_0009:  stfld      class Game.SubsystemPlayers Game.PlayersScreen::m_subsystemPlayers
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Game.SubsystemPlayers Game.PlayersScreen::m_subsystemPlayers
    IL_0014:  ldarg.0
    IL_0015:  ldftn      instance void Game.PlayersScreen::PlayersChanged(class Game.PlayerData)
    IL_001b:  newobj     instance void class [System.Runtime]System.Action`1<class Game.PlayerData>::.ctor(object,
                                                                                                           native int)
    IL_0020:  callvirt   instance void Game.SubsystemPlayers::add_PlayerAdded(class [System.Runtime]System.Action`1<class Game.PlayerData>)
    IL_0025:  ldarg.0
    IL_0026:  ldfld      class Game.SubsystemPlayers Game.PlayersScreen::m_subsystemPlayers
    IL_002b:  ldarg.0
    IL_002c:  ldftn      instance void Game.PlayersScreen::PlayersChanged(class Game.PlayerData)
    IL_0032:  newobj     instance void class [System.Runtime]System.Action`1<class Game.PlayerData>::.ctor(object,
                                                                                                           native int)
    IL_0037:  callvirt   instance void Game.SubsystemPlayers::add_PlayerRemoved(class [System.Runtime]System.Action`1<class Game.PlayerData>)
    IL_003c:  ldarg.0
    IL_003d:  call       instance void Game.PlayersScreen::UpdatePlayersPanel()
    IL_0042:  ret
  } // end of method PlayersScreen::Enter

  .method public hidebysig virtual instance void 
          Leave() cil managed
  {
    // 代码大小       81 (0x51)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemPlayers Game.PlayersScreen::m_subsystemPlayers
    IL_0006:  ldarg.0
    IL_0007:  ldftn      instance void Game.PlayersScreen::PlayersChanged(class Game.PlayerData)
    IL_000d:  newobj     instance void class [System.Runtime]System.Action`1<class Game.PlayerData>::.ctor(object,
                                                                                                           native int)
    IL_0012:  callvirt   instance void Game.SubsystemPlayers::remove_PlayerAdded(class [System.Runtime]System.Action`1<class Game.PlayerData>)
    IL_0017:  ldarg.0
    IL_0018:  ldfld      class Game.SubsystemPlayers Game.PlayersScreen::m_subsystemPlayers
    IL_001d:  ldarg.0
    IL_001e:  ldftn      instance void Game.PlayersScreen::PlayersChanged(class Game.PlayerData)
    IL_0024:  newobj     instance void class [System.Runtime]System.Action`1<class Game.PlayerData>::.ctor(object,
                                                                                                           native int)
    IL_0029:  callvirt   instance void Game.SubsystemPlayers::remove_PlayerRemoved(class [System.Runtime]System.Action`1<class Game.PlayerData>)
    IL_002e:  ldarg.0
    IL_002f:  ldnull
    IL_0030:  stfld      class Game.SubsystemPlayers Game.PlayersScreen::m_subsystemPlayers
    IL_0035:  ldarg.0
    IL_0036:  ldfld      class Game.CharacterSkinsCache Game.PlayersScreen::m_characterSkinsCache
    IL_003b:  callvirt   instance void Game.CharacterSkinsCache::Clear()
    IL_0040:  ldarg.0
    IL_0041:  ldfld      class Game.StackPanelWidget Game.PlayersScreen::m_playersPanel
    IL_0046:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_004b:  callvirt   instance void Game.WidgetsList::Clear()
    IL_0050:  ret
  } // end of method PlayersScreen::Leave

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       542 (0x21e)
    .maxstack  7
    .locals init (class Game.SubsystemGameInfo V_0,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> V_1,
             valuetype Game.ScreenLayout[] V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ButtonWidget Game.PlayersScreen::m_addPlayerButton
    IL_0006:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_000b:  brfalse    IL_00ec

    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.SubsystemPlayers Game.PlayersScreen::m_subsystemPlayers
    IL_0016:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_001b:  ldc.i4.1
    IL_001c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_0021:  stloc.0
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0028:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_002d:  ldc.i4.3
    IL_002e:  bne.un.s   IL_0051

    IL_0030:  ldnull
    IL_0031:  ldstr      "Unavailable"
    IL_0036:  ldstr      "Cannot add players in cruel mode."
    IL_003b:  ldstr      "OK"
    IL_0040:  ldnull
    IL_0041:  ldnull
    IL_0042:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_0047:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_004c:  br         IL_00ec

    IL_0051:  ldloc.0
    IL_0052:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0057:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_005c:  ldc.i4.4
    IL_005d:  bne.un.s   IL_007d

    IL_005f:  ldnull
    IL_0060:  ldstr      "Unavailable"
    IL_0065:  ldstr      "Cannot add players in adventure mode."
    IL_006a:  ldstr      "OK"
    IL_006f:  ldnull
    IL_0070:  ldnull
    IL_0071:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_0076:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_007b:  br.s       IL_00ec

    IL_007d:  ldarg.0
    IL_007e:  ldfld      class Game.SubsystemPlayers Game.PlayersScreen::m_subsystemPlayers
    IL_0083:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> Game.SubsystemPlayers::get_PlayersData()
    IL_0088:  stloc.1
    IL_0089:  ldloca.s   V_1
    IL_008b:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData>::get_Count()
    IL_0090:  ldc.i4.4
    IL_0091:  blt.s      IL_00c5

    IL_0093:  ldnull
    IL_0094:  ldstr      "Unavailable"
    IL_0099:  ldstr      "A maximum of {0} players are allowed."
    IL_009e:  ldc.i4.1
    IL_009f:  newarr     [System.Runtime]System.Object
    IL_00a4:  dup
    IL_00a5:  ldc.i4.0
    IL_00a6:  ldc.i4.4
    IL_00a7:  box        [System.Runtime]System.Int32
    IL_00ac:  stelem.ref
    IL_00ad:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00b2:  ldstr      "OK"
    IL_00b7:  ldnull
    IL_00b8:  ldnull
    IL_00b9:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_00be:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_00c3:  br.s       IL_00ec

    IL_00c5:  ldstr      "Player"
    IL_00ca:  ldc.i4.2
    IL_00cb:  newarr     [System.Runtime]System.Object
    IL_00d0:  dup
    IL_00d1:  ldc.i4.0
    IL_00d2:  ldc.i4.1
    IL_00d3:  box        Game.PlayerScreen/Mode
    IL_00d8:  stelem.ref
    IL_00d9:  dup
    IL_00da:  ldc.i4.1
    IL_00db:  ldarg.0
    IL_00dc:  ldfld      class Game.SubsystemPlayers Game.PlayersScreen::m_subsystemPlayers
    IL_00e1:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_00e6:  stelem.ref
    IL_00e7:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_00ec:  ldarg.0
    IL_00ed:  ldfld      class Game.ButtonWidget Game.PlayersScreen::m_screenLayoutButton
    IL_00f2:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00f7:  brfalse    IL_01db

    IL_00fc:  ldnull
    IL_00fd:  stloc.2
    IL_00fe:  ldarg.0
    IL_00ff:  ldfld      class Game.SubsystemPlayers Game.PlayersScreen::m_subsystemPlayers
    IL_0104:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> Game.SubsystemPlayers::get_PlayersData()
    IL_0109:  stloc.1
    IL_010a:  ldloca.s   V_1
    IL_010c:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData>::get_Count()
    IL_0111:  ldc.i4.1
    IL_0112:  bne.un.s   IL_011d

    IL_0114:  ldc.i4.1
    IL_0115:  newarr     Game.ScreenLayout
    IL_011a:  stloc.2
    IL_011b:  br.s       IL_0197

    IL_011d:  ldarg.0
    IL_011e:  ldfld      class Game.SubsystemPlayers Game.PlayersScreen::m_subsystemPlayers
    IL_0123:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> Game.SubsystemPlayers::get_PlayersData()
    IL_0128:  stloc.1
    IL_0129:  ldloca.s   V_1
    IL_012b:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData>::get_Count()
    IL_0130:  ldc.i4.2
    IL_0131:  bne.un.s   IL_0147

    IL_0133:  ldc.i4.3
    IL_0134:  newarr     Game.ScreenLayout
    IL_0139:  dup
    IL_013a:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=12' '<PrivateImplementationDetails>'::E429CCA3F703A39CC5954A6572FEC9086135B34E
    IL_013f:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0144:  stloc.2
    IL_0145:  br.s       IL_0197

    IL_0147:  ldarg.0
    IL_0148:  ldfld      class Game.SubsystemPlayers Game.PlayersScreen::m_subsystemPlayers
    IL_014d:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> Game.SubsystemPlayers::get_PlayersData()
    IL_0152:  stloc.1
    IL_0153:  ldloca.s   V_1
    IL_0155:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData>::get_Count()
    IL_015a:  ldc.i4.3
    IL_015b:  bne.un.s   IL_0171

    IL_015d:  ldc.i4.4
    IL_015e:  newarr     Game.ScreenLayout
    IL_0163:  dup
    IL_0164:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' '<PrivateImplementationDetails>'::A8EF81E1402C63D7DC475A9CEA4FE153527D0BA3
    IL_0169:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_016e:  stloc.2
    IL_016f:  br.s       IL_0197

    IL_0171:  ldarg.0
    IL_0172:  ldfld      class Game.SubsystemPlayers Game.PlayersScreen::m_subsystemPlayers
    IL_0177:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> Game.SubsystemPlayers::get_PlayersData()
    IL_017c:  stloc.1
    IL_017d:  ldloca.s   V_1
    IL_017f:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData>::get_Count()
    IL_0184:  ldc.i4.4
    IL_0185:  bne.un.s   IL_0197

    IL_0187:  ldc.i4.2
    IL_0188:  newarr     Game.ScreenLayout
    IL_018d:  dup
    IL_018e:  ldc.i4.0
    IL_018f:  ldc.i4.8
    IL_0190:  stelem.i4
    IL_0191:  dup
    IL_0192:  ldc.i4.1
    IL_0193:  ldc.i4.s   9
    IL_0195:  stelem.i4
    IL_0196:  stloc.2
    IL_0197:  ldloc.2
    IL_0198:  brfalse.s  IL_01db

    IL_019a:  ldnull
    IL_019b:  ldstr      "Select Screen Layout"
    IL_01a0:  ldloc.2
    IL_01a1:  ldc.r4     80.
    IL_01a6:  ldsfld     class [System.Runtime]System.Func`2<object,class Game.Widget> Game.PlayersScreen/'<>c'::'<>9__8_0'
    IL_01ab:  dup
    IL_01ac:  brtrue.s   IL_01c5

    IL_01ae:  pop
    IL_01af:  ldsfld     class Game.PlayersScreen/'<>c' Game.PlayersScreen/'<>c'::'<>9'
    IL_01b4:  ldftn      instance class Game.Widget Game.PlayersScreen/'<>c'::'<Update>b__8_0'(object)
    IL_01ba:  newobj     instance void class [System.Runtime]System.Func`2<object,class Game.Widget>::.ctor(object,
                                                                                                            native int)
    IL_01bf:  dup
    IL_01c0:  stsfld     class [System.Runtime]System.Func`2<object,class Game.Widget> Game.PlayersScreen/'<>c'::'<>9__8_0'
    IL_01c5:  ldarg.0
    IL_01c6:  ldftn      instance void Game.PlayersScreen::'<Update>b__8_1'(object)
    IL_01cc:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_01d1:  newobj     instance void Game.ListSelectionDialog::.ctor(string,
                                                                       class [System.Runtime]System.Collections.IEnumerable,
                                                                       float32,
                                                                       class [System.Runtime]System.Func`2<object,class Game.Widget>,
                                                                       class [System.Runtime]System.Action`1<object>)
    IL_01d6:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_01db:  ldarg.0
    IL_01dc:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_01e1:  callvirt   instance bool Game.WidgetInput::get_Back()
    IL_01e6:  brtrue.s   IL_020d

    IL_01e8:  ldarg.0
    IL_01e9:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_01ee:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_01f3:  brtrue.s   IL_020d

    IL_01f5:  ldarg.0
    IL_01f6:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_01fb:  ldstr      "TopBar.Back"
    IL_0200:  ldc.i4.1
    IL_0201:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0206:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_020b:  brfalse.s  IL_021d

    IL_020d:  ldstr      "Game"
    IL_0212:  ldc.i4.0
    IL_0213:  newarr     [System.Runtime]System.Object
    IL_0218:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_021d:  ret
  } // end of method PlayersScreen::Update

  .method private hidebysig instance void 
          UpdatePlayersPanel() cil managed
  {
    // 代码大小       100 (0x64)
    .maxstack  3
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.PlayerData> V_0,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> V_1,
             class Game.PlayerData V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.StackPanelWidget Game.PlayersScreen::m_playersPanel
    IL_0006:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_000b:  callvirt   instance void Game.WidgetsList::Clear()
    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.SubsystemPlayers Game.PlayersScreen::m_subsystemPlayers
    IL_0016:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> Game.SubsystemPlayers::get_PlayersData()
    IL_001b:  stloc.1
    IL_001c:  ldloca.s   V_1
    IL_001e:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData>::GetEnumerator()
    IL_0023:  stloc.0
    .try
    {
      IL_0024:  br.s       IL_004a

      IL_0026:  ldloca.s   V_0
      IL_0028:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.PlayerData>::get_Current()
      IL_002d:  stloc.2
      IL_002e:  ldarg.0
      IL_002f:  ldfld      class Game.StackPanelWidget Game.PlayersScreen::m_playersPanel
      IL_0034:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
      IL_0039:  ldloc.2
      IL_003a:  ldarg.0
      IL_003b:  ldfld      class Game.CharacterSkinsCache Game.PlayersScreen::m_characterSkinsCache
      IL_0040:  newobj     instance void Game.PlayerWidget::.ctor(class Game.PlayerData,
                                                                  class Game.CharacterSkinsCache)
      IL_0045:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
      IL_004a:  ldloca.s   V_0
      IL_004c:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.PlayerData>::MoveNext()
      IL_0051:  brtrue.s   IL_0026

      IL_0053:  leave.s    IL_0063

    }  // end .try
    finally
    {
      IL_0055:  ldloca.s   V_0
      IL_0057:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.PlayerData>
      IL_005d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0062:  endfinally
    }  // end handler
    IL_0063:  ret
  } // end of method PlayersScreen::UpdatePlayersPanel

  .method private hidebysig instance void 
          PlayersChanged(class Game.PlayerData playerData) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.PlayersScreen::UpdatePlayersPanel()
    IL_0006:  ret
  } // end of method PlayersScreen::PlayersChanged

  .method private hidebysig instance void 
          '<Update>b__8_1'(object o) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       139 (0x8b)
    .maxstack  2
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> V_0)
    IL_0000:  ldarg.1
    IL_0001:  brfalse    IL_008a

    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.SubsystemPlayers Game.PlayersScreen::m_subsystemPlayers
    IL_000c:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> Game.SubsystemPlayers::get_PlayersData()
    IL_0011:  stloc.0
    IL_0012:  ldloca.s   V_0
    IL_0014:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData>::get_Count()
    IL_0019:  ldc.i4.1
    IL_001a:  bne.un.s   IL_0027

    IL_001c:  ldarg.1
    IL_001d:  unbox.any  Game.ScreenLayout
    IL_0022:  call       void Game.SettingsManager::set_ScreenLayout1(valuetype Game.ScreenLayout)
    IL_0027:  ldarg.0
    IL_0028:  ldfld      class Game.SubsystemPlayers Game.PlayersScreen::m_subsystemPlayers
    IL_002d:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> Game.SubsystemPlayers::get_PlayersData()
    IL_0032:  stloc.0
    IL_0033:  ldloca.s   V_0
    IL_0035:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData>::get_Count()
    IL_003a:  ldc.i4.2
    IL_003b:  bne.un.s   IL_0048

    IL_003d:  ldarg.1
    IL_003e:  unbox.any  Game.ScreenLayout
    IL_0043:  call       void Game.SettingsManager::set_ScreenLayout2(valuetype Game.ScreenLayout)
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.SubsystemPlayers Game.PlayersScreen::m_subsystemPlayers
    IL_004e:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> Game.SubsystemPlayers::get_PlayersData()
    IL_0053:  stloc.0
    IL_0054:  ldloca.s   V_0
    IL_0056:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData>::get_Count()
    IL_005b:  ldc.i4.3
    IL_005c:  bne.un.s   IL_0069

    IL_005e:  ldarg.1
    IL_005f:  unbox.any  Game.ScreenLayout
    IL_0064:  call       void Game.SettingsManager::set_ScreenLayout3(valuetype Game.ScreenLayout)
    IL_0069:  ldarg.0
    IL_006a:  ldfld      class Game.SubsystemPlayers Game.PlayersScreen::m_subsystemPlayers
    IL_006f:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> Game.SubsystemPlayers::get_PlayersData()
    IL_0074:  stloc.0
    IL_0075:  ldloca.s   V_0
    IL_0077:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData>::get_Count()
    IL_007c:  ldc.i4.4
    IL_007d:  bne.un.s   IL_008a

    IL_007f:  ldarg.1
    IL_0080:  unbox.any  Game.ScreenLayout
    IL_0085:  call       void Game.SettingsManager::set_ScreenLayout4(valuetype Game.ScreenLayout)
    IL_008a:  ret
  } // end of method PlayersScreen::'<Update>b__8_1'

} // end of class Game.PlayersScreen