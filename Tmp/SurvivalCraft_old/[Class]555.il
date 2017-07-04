.class public auto ansi beforefieldinit Game.PlayerScreen
       extends Game.Screen
{
  .class auto ansi sealed nested public Mode
         extends [System.Runtime]System.Enum
  {
    .field public specialname rtspecialname int32 value__
    .field public static literal valuetype Game.PlayerScreen/Mode Initial = int32(0x00000000)
    .field public static literal valuetype Game.PlayerScreen/Mode Add = int32(0x00000001)
    .field public static literal valuetype Game.PlayerScreen/Mode Edit = int32(0x00000002)
  } // end of class Mode

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.PlayerScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<object,string> '<>9__21_4'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.PlayerScreen/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.PlayerScreen/'<>c' Game.PlayerScreen/'<>c'::'<>9'
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

    .method assembly hidebysig instance string 
            '<Update>b__21_4'(object d) cil managed
    {
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  unbox.any  Game.WidgetInputDevice
      IL_0006:  call       string Game.PlayerScreen::GetDeviceDisplayName(valuetype Game.WidgetInputDevice)
      IL_000b:  ret
    } // end of method '<>c'::'<Update>b__21_4'

  } // end of class '<>c'

  .field private class Game.PlayerData m_playerData
  .field private valuetype Game.PlayerScreen/Mode m_mode
  .field private class Game.CharacterSkinsCache m_characterSkinsCache
  .field private bool m_nameWasInvalid
  .field private class Game.PlayerModelWidget m_playerModel
  .field private class Game.ButtonWidget m_playerClassButton
  .field private class Game.TextBoxWidget m_nameTextBox
  .field private class Game.LabelWidget m_characterSkinLabel
  .field private class Game.ButtonWidget m_characterSkinButton
  .field private class Game.LabelWidget m_controlsLabel
  .field private class Game.ButtonWidget m_controlsButton
  .field private class Game.LabelWidget m_descriptionLabel
  .field private class Game.ButtonWidget m_addButton
  .field private class Game.ButtonWidget m_addAnotherButton
  .field private class Game.ButtonWidget m_deleteButton
  .field private class Game.ButtonWidget m_playButton
  .field private valuetype Game.WidgetInputDevice[] m_inputDevices
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       376 (0x178)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.6
    IL_0002:  newarr     Game.WidgetInputDevice
    IL_0007:  dup
    IL_0008:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=24' '<PrivateImplementationDetails>'::'36E9DDBA6377209004A9BA8EF0C807CA83DB0789'
    IL_000d:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0012:  stfld      valuetype Game.WidgetInputDevice[] Game.PlayerScreen::m_inputDevices
    IL_0017:  ldarg.0
    IL_0018:  call       instance void Game.Screen::.ctor()
    IL_001d:  ldstr      "Screens/PlayerScreen"
    IL_0022:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0027:  stloc.0
    IL_0028:  ldarg.0
    IL_0029:  ldarg.0
    IL_002a:  ldloc.0
    IL_002b:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0037:  ldstr      "Model"
    IL_003c:  ldc.i4.1
    IL_003d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.PlayerModelWidget>(string,
                                                                                           bool)
    IL_0042:  stfld      class Game.PlayerModelWidget Game.PlayerScreen::m_playerModel
    IL_0047:  ldarg.0
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_004e:  ldstr      "PlayerClassButton"
    IL_0053:  ldc.i4.1
    IL_0054:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0059:  stfld      class Game.ButtonWidget Game.PlayerScreen::m_playerClassButton
    IL_005e:  ldarg.0
    IL_005f:  ldarg.0
    IL_0060:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0065:  ldstr      "Name"
    IL_006a:  ldc.i4.1
    IL_006b:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.TextBoxWidget>(string,
                                                                                       bool)
    IL_0070:  stfld      class Game.TextBoxWidget Game.PlayerScreen::m_nameTextBox
    IL_0075:  ldarg.0
    IL_0076:  ldarg.0
    IL_0077:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_007c:  ldstr      "CharacterSkinLabel"
    IL_0081:  ldc.i4.1
    IL_0082:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0087:  stfld      class Game.LabelWidget Game.PlayerScreen::m_characterSkinLabel
    IL_008c:  ldarg.0
    IL_008d:  ldarg.0
    IL_008e:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0093:  ldstr      "CharacterSkinButton"
    IL_0098:  ldc.i4.1
    IL_0099:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_009e:  stfld      class Game.ButtonWidget Game.PlayerScreen::m_characterSkinButton
    IL_00a3:  ldarg.0
    IL_00a4:  ldarg.0
    IL_00a5:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00aa:  ldstr      "ControlsLabel"
    IL_00af:  ldc.i4.1
    IL_00b0:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_00b5:  stfld      class Game.LabelWidget Game.PlayerScreen::m_controlsLabel
    IL_00ba:  ldarg.0
    IL_00bb:  ldarg.0
    IL_00bc:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00c1:  ldstr      "ControlsButton"
    IL_00c6:  ldc.i4.1
    IL_00c7:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_00cc:  stfld      class Game.ButtonWidget Game.PlayerScreen::m_controlsButton
    IL_00d1:  ldarg.0
    IL_00d2:  ldarg.0
    IL_00d3:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00d8:  ldstr      "DescriptionLabel"
    IL_00dd:  ldc.i4.1
    IL_00de:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_00e3:  stfld      class Game.LabelWidget Game.PlayerScreen::m_descriptionLabel
    IL_00e8:  ldarg.0
    IL_00e9:  ldarg.0
    IL_00ea:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00ef:  ldstr      "AddButton"
    IL_00f4:  ldc.i4.1
    IL_00f5:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_00fa:  stfld      class Game.ButtonWidget Game.PlayerScreen::m_addButton
    IL_00ff:  ldarg.0
    IL_0100:  ldarg.0
    IL_0101:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0106:  ldstr      "AddAnotherButton"
    IL_010b:  ldc.i4.1
    IL_010c:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0111:  stfld      class Game.ButtonWidget Game.PlayerScreen::m_addAnotherButton
    IL_0116:  ldarg.0
    IL_0117:  ldarg.0
    IL_0118:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_011d:  ldstr      "DeleteButton"
    IL_0122:  ldc.i4.1
    IL_0123:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0128:  stfld      class Game.ButtonWidget Game.PlayerScreen::m_deleteButton
    IL_012d:  ldarg.0
    IL_012e:  ldarg.0
    IL_012f:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0134:  ldstr      "PlayButton"
    IL_0139:  ldc.i4.1
    IL_013a:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_013f:  stfld      class Game.ButtonWidget Game.PlayerScreen::m_playButton
    IL_0144:  ldarg.0
    IL_0145:  newobj     instance void Game.CharacterSkinsCache::.ctor()
    IL_014a:  stfld      class Game.CharacterSkinsCache Game.PlayerScreen::m_characterSkinsCache
    IL_014f:  ldarg.0
    IL_0150:  ldfld      class Game.PlayerModelWidget Game.PlayerScreen::m_playerModel
    IL_0155:  ldarg.0
    IL_0156:  ldfld      class Game.CharacterSkinsCache Game.PlayerScreen::m_characterSkinsCache
    IL_015b:  callvirt   instance void Game.PlayerModelWidget::set_CharacterSkinsCache(class Game.CharacterSkinsCache)
    IL_0160:  ldarg.0
    IL_0161:  ldfld      class Game.TextBoxWidget Game.PlayerScreen::m_nameTextBox
    IL_0166:  ldarg.0
    IL_0167:  ldftn      instance void Game.PlayerScreen::'<.ctor>b__18_0'(class Game.TextBoxWidget)
    IL_016d:  newobj     instance void class [System.Runtime]System.Action`1<class Game.TextBoxWidget>::.ctor(object,
                                                                                                              native int)
    IL_0172:  callvirt   instance void Game.TextBoxWidget::add_FocusLost(class [System.Runtime]System.Action`1<class Game.TextBoxWidget>)
    IL_0177:  ret
  } // end of method PlayerScreen::.ctor

  .method public hidebysig virtual instance void 
          Enter(object[] parameters) cil managed
  {
    // 代码大小       319 (0x13f)
    .maxstack  3
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldc.i4.0
    IL_0003:  ldelem.ref
    IL_0004:  unbox.any  Game.PlayerScreen/Mode
    IL_0009:  stfld      valuetype Game.PlayerScreen/Mode Game.PlayerScreen::m_mode
    IL_000e:  ldarg.0
    IL_000f:  ldfld      valuetype Game.PlayerScreen/Mode Game.PlayerScreen::m_mode
    IL_0014:  ldc.i4.2
    IL_0015:  bne.un.s   IL_0027

    IL_0017:  ldarg.0
    IL_0018:  ldarg.1
    IL_0019:  ldc.i4.1
    IL_001a:  ldelem.ref
    IL_001b:  castclass  Game.PlayerData
    IL_0020:  stfld      class Game.PlayerData Game.PlayerScreen::m_playerData
    IL_0025:  br.s       IL_003a

    IL_0027:  ldarg.0
    IL_0028:  ldarg.1
    IL_0029:  ldc.i4.1
    IL_002a:  ldelem.ref
    IL_002b:  castclass  [EntitySystem]GameEntitySystem.Project
    IL_0030:  newobj     instance void Game.PlayerData::.ctor(class [EntitySystem]GameEntitySystem.Project)
    IL_0035:  stfld      class Game.PlayerData Game.PlayerScreen::m_playerData
    IL_003a:  ldarg.0
    IL_003b:  ldfld      valuetype Game.PlayerScreen/Mode Game.PlayerScreen::m_mode
    IL_0040:  brtrue.s   IL_0099

    IL_0042:  ldarg.0
    IL_0043:  ldfld      class Game.ButtonWidget Game.PlayerScreen::m_playerClassButton
    IL_0048:  ldc.i4.1
    IL_0049:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_004e:  ldarg.0
    IL_004f:  ldfld      class Game.ButtonWidget Game.PlayerScreen::m_addButton
    IL_0054:  ldc.i4.0
    IL_0055:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_005a:  ldarg.0
    IL_005b:  ldfld      class Game.ButtonWidget Game.PlayerScreen::m_deleteButton
    IL_0060:  ldc.i4.0
    IL_0061:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0066:  ldarg.0
    IL_0067:  ldfld      class Game.ButtonWidget Game.PlayerScreen::m_playButton
    IL_006c:  ldc.i4.1
    IL_006d:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0072:  ldarg.0
    IL_0073:  ldfld      class Game.ButtonWidget Game.PlayerScreen::m_addAnotherButton
    IL_0078:  ldarg.0
    IL_0079:  ldfld      class Game.PlayerData Game.PlayerScreen::m_playerData
    IL_007e:  callvirt   instance class Game.SubsystemPlayers Game.PlayerData::get_SubsystemPlayers()
    IL_0083:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> Game.SubsystemPlayers::get_PlayersData()
    IL_0088:  stloc.0
    IL_0089:  ldloca.s   V_0
    IL_008b:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData>::get_Count()
    IL_0090:  ldc.i4.3
    IL_0091:  clt
    IL_0093:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0098:  ret

    IL_0099:  ldarg.0
    IL_009a:  ldfld      valuetype Game.PlayerScreen/Mode Game.PlayerScreen::m_mode
    IL_009f:  ldc.i4.1
    IL_00a0:  bne.un.s   IL_00df

    IL_00a2:  ldarg.0
    IL_00a3:  ldfld      class Game.ButtonWidget Game.PlayerScreen::m_playerClassButton
    IL_00a8:  ldc.i4.1
    IL_00a9:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_00ae:  ldarg.0
    IL_00af:  ldfld      class Game.ButtonWidget Game.PlayerScreen::m_addButton
    IL_00b4:  ldc.i4.1
    IL_00b5:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_00ba:  ldarg.0
    IL_00bb:  ldfld      class Game.ButtonWidget Game.PlayerScreen::m_deleteButton
    IL_00c0:  ldc.i4.0
    IL_00c1:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_00c6:  ldarg.0
    IL_00c7:  ldfld      class Game.ButtonWidget Game.PlayerScreen::m_playButton
    IL_00cc:  ldc.i4.0
    IL_00cd:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_00d2:  ldarg.0
    IL_00d3:  ldfld      class Game.ButtonWidget Game.PlayerScreen::m_addAnotherButton
    IL_00d8:  ldc.i4.0
    IL_00d9:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_00de:  ret

    IL_00df:  ldarg.0
    IL_00e0:  ldfld      valuetype Game.PlayerScreen/Mode Game.PlayerScreen::m_mode
    IL_00e5:  ldc.i4.2
    IL_00e6:  bne.un.s   IL_013e

    IL_00e8:  ldarg.0
    IL_00e9:  ldfld      class Game.ButtonWidget Game.PlayerScreen::m_playerClassButton
    IL_00ee:  ldc.i4.0
    IL_00ef:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_00f4:  ldarg.0
    IL_00f5:  ldfld      class Game.ButtonWidget Game.PlayerScreen::m_addButton
    IL_00fa:  ldc.i4.0
    IL_00fb:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0100:  ldarg.0
    IL_0101:  ldfld      class Game.ButtonWidget Game.PlayerScreen::m_deleteButton
    IL_0106:  ldarg.0
    IL_0107:  ldfld      class Game.PlayerData Game.PlayerScreen::m_playerData
    IL_010c:  callvirt   instance class Game.SubsystemPlayers Game.PlayerData::get_SubsystemPlayers()
    IL_0111:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> Game.SubsystemPlayers::get_PlayersData()
    IL_0116:  stloc.0
    IL_0117:  ldloca.s   V_0
    IL_0119:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData>::get_Count()
    IL_011e:  ldc.i4.1
    IL_011f:  cgt
    IL_0121:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0126:  ldarg.0
    IL_0127:  ldfld      class Game.ButtonWidget Game.PlayerScreen::m_playButton
    IL_012c:  ldc.i4.0
    IL_012d:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0132:  ldarg.0
    IL_0133:  ldfld      class Game.ButtonWidget Game.PlayerScreen::m_addAnotherButton
    IL_0138:  ldc.i4.0
    IL_0139:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_013e:  ret
  } // end of method PlayerScreen::Enter

  .method public hidebysig virtual instance void 
          Leave() cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.CharacterSkinsCache Game.PlayerScreen::m_characterSkinsCache
    IL_0006:  callvirt   instance void Game.CharacterSkinsCache::Clear()
    IL_000b:  ldarg.0
    IL_000c:  ldnull
    IL_000d:  stfld      class Game.PlayerData Game.PlayerScreen::m_playerData
    IL_0012:  ret
  } // end of method PlayerScreen::Leave

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       944 (0x3b0)
    .maxstack  7
    .locals init (class [EntitySystem]TemplatesDatabase.ValuesDictionary V_0,
             valuetype Game.PlayerClass V_1,
             class [System.Runtime]System.Collections.Generic.IEnumerable`1<string> V_2,
             class Game.ListSelectionDialog V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.CharacterSkinsCache Game.PlayerScreen::m_characterSkinsCache
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.PlayerData Game.PlayerScreen::m_playerData
    IL_000c:  callvirt   instance string Game.PlayerData::get_CharacterSkinName()
    IL_0011:  callvirt   instance class [Engine]Engine.Graphics.Texture2D Game.CharacterSkinsCache::GetTexture(string)
    IL_0016:  pop
    IL_0017:  ldarg.0
    IL_0018:  ldfld      class Game.PlayerModelWidget Game.PlayerScreen::m_playerModel
    IL_001d:  ldarg.0
    IL_001e:  ldfld      class Game.PlayerData Game.PlayerScreen::m_playerData
    IL_0023:  callvirt   instance valuetype Game.PlayerClass Game.PlayerData::get_PlayerClass()
    IL_0028:  callvirt   instance void Game.PlayerModelWidget::set_PlayerClass(valuetype Game.PlayerClass)
    IL_002d:  ldarg.0
    IL_002e:  ldfld      class Game.PlayerModelWidget Game.PlayerScreen::m_playerModel
    IL_0033:  ldarg.0
    IL_0034:  ldfld      class Game.PlayerData Game.PlayerScreen::m_playerData
    IL_0039:  callvirt   instance string Game.PlayerData::get_CharacterSkinName()
    IL_003e:  callvirt   instance void Game.PlayerModelWidget::set_CharacterSkinName(string)
    IL_0043:  ldarg.0
    IL_0044:  ldfld      class Game.ButtonWidget Game.PlayerScreen::m_playerClassButton
    IL_0049:  ldarg.0
    IL_004a:  ldfld      class Game.PlayerData Game.PlayerScreen::m_playerData
    IL_004f:  callvirt   instance valuetype Game.PlayerClass Game.PlayerData::get_PlayerClass()
    IL_0054:  stloc.1
    IL_0055:  ldloca.s   V_1
    IL_0057:  constrained. Game.PlayerClass
    IL_005d:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0062:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_0067:  ldarg.0
    IL_0068:  ldfld      class Game.TextBoxWidget Game.PlayerScreen::m_nameTextBox
    IL_006d:  callvirt   instance bool Game.TextBoxWidget::get_HasFocus()
    IL_0072:  brtrue.s   IL_008a

    IL_0074:  ldarg.0
    IL_0075:  ldfld      class Game.TextBoxWidget Game.PlayerScreen::m_nameTextBox
    IL_007a:  ldarg.0
    IL_007b:  ldfld      class Game.PlayerData Game.PlayerScreen::m_playerData
    IL_0080:  callvirt   instance string Game.PlayerData::get_Name()
    IL_0085:  callvirt   instance void Game.TextBoxWidget::set_Text(string)
    IL_008a:  ldarg.0
    IL_008b:  ldfld      class Game.LabelWidget Game.PlayerScreen::m_characterSkinLabel
    IL_0090:  ldarg.0
    IL_0091:  ldfld      class Game.PlayerData Game.PlayerScreen::m_playerData
    IL_0096:  callvirt   instance string Game.PlayerData::get_CharacterSkinName()
    IL_009b:  call       string Game.CharacterSkinsManager::GetDisplayName(string)
    IL_00a0:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00a5:  ldarg.0
    IL_00a6:  ldfld      class Game.LabelWidget Game.PlayerScreen::m_controlsLabel
    IL_00ab:  ldarg.0
    IL_00ac:  ldfld      valuetype Game.WidgetInputDevice[] Game.PlayerScreen::m_inputDevices
    IL_00b1:  ldarg.0
    IL_00b2:  ldftn      instance bool Game.PlayerScreen::'<Update>b__21_0'(valuetype Game.WidgetInputDevice)
    IL_00b8:  newobj     instance void class [System.Runtime]System.Func`2<valuetype Game.WidgetInputDevice,bool>::.ctor(object,
                                                                                                                         native int)
    IL_00bd:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<valuetype Game.WidgetInputDevice>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                          class [System.Runtime]System.Func`2<!!0,bool>)
    IL_00c2:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<valuetype Game.WidgetInputDevice>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_00c7:  call       string Game.PlayerScreen::GetDeviceDisplayName(valuetype Game.WidgetInputDevice)
    IL_00cc:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00d1:  ldarg.0
    IL_00d2:  ldfld      class Game.PlayerData Game.PlayerScreen::m_playerData
    IL_00d7:  callvirt   instance string Game.PlayerData::GetEntityTemplateName()
    IL_00dc:  ldc.i4.1
    IL_00dd:  call       class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.DatabaseManager::FindEntityValuesDictionary(string,
                                                                                                                                 bool)
    IL_00e2:  ldtoken    Game.ComponentCreature
    IL_00e7:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_00ec:  call       class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.DatabaseManager::FindValuesDictionaryForComponent(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                                                                                                       class [System.Runtime]System.Type)
    IL_00f1:  stloc.0
    IL_00f2:  ldarg.0
    IL_00f3:  ldfld      class Game.LabelWidget Game.PlayerScreen::m_descriptionLabel
    IL_00f8:  ldloc.0
    IL_00f9:  ldstr      "Description"
    IL_00fe:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_0103:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0108:  ldarg.0
    IL_0109:  ldfld      class Game.ButtonWidget Game.PlayerScreen::m_playerClassButton
    IL_010e:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0113:  brfalse.s  IL_0154

    IL_0115:  ldarg.0
    IL_0116:  ldfld      class Game.PlayerData Game.PlayerScreen::m_playerData
    IL_011b:  ldarg.0
    IL_011c:  ldfld      class Game.PlayerData Game.PlayerScreen::m_playerData
    IL_0121:  callvirt   instance valuetype Game.PlayerClass Game.PlayerData::get_PlayerClass()
    IL_0126:  brfalse.s  IL_012b

    IL_0128:  ldc.i4.0
    IL_0129:  br.s       IL_012c

    IL_012b:  ldc.i4.1
    IL_012c:  callvirt   instance void Game.PlayerData::set_PlayerClass(valuetype Game.PlayerClass)
    IL_0131:  ldarg.0
    IL_0132:  ldfld      class Game.PlayerData Game.PlayerScreen::m_playerData
    IL_0137:  callvirt   instance void Game.PlayerData::RandomizeCharacterSkin()
    IL_013c:  ldarg.0
    IL_013d:  ldfld      class Game.PlayerData Game.PlayerScreen::m_playerData
    IL_0142:  callvirt   instance bool Game.PlayerData::get_IsDefaultName()
    IL_0147:  brfalse.s  IL_0154

    IL_0149:  ldarg.0
    IL_014a:  ldfld      class Game.PlayerData Game.PlayerScreen::m_playerData
    IL_014f:  callvirt   instance void Game.PlayerData::ResetName()
    IL_0154:  ldarg.0
    IL_0155:  ldfld      class Game.ButtonWidget Game.PlayerScreen::m_characterSkinButton
    IL_015a:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_015f:  brfalse.s  IL_01b2

    IL_0161:  call       void Game.CharacterSkinsManager::UpdateCharacterSkinsList()
    IL_0166:  call       valuetype [Engine]Engine.ReadOnlyList`1<string> Game.CharacterSkinsManager::get_CharacterSkinsNames()
    IL_016b:  box        valuetype [Engine]Engine.ReadOnlyList`1<string>
    IL_0170:  ldarg.0
    IL_0171:  ldftn      instance bool Game.PlayerScreen::'<Update>b__21_1'(string)
    IL_0177:  newobj     instance void class [System.Runtime]System.Func`2<string,bool>::.ctor(object,
                                                                                               native int)
    IL_017c:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<string>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0181:  stloc.2
    IL_0182:  ldstr      "Select Character Skin"
    IL_0187:  ldloc.2
    IL_0188:  ldc.r4     64.
    IL_018d:  ldarg.0
    IL_018e:  ldftn      instance class Game.Widget Game.PlayerScreen::'<Update>b__21_2'(object)
    IL_0194:  newobj     instance void class [System.Runtime]System.Func`2<object,class Game.Widget>::.ctor(object,
                                                                                                            native int)
    IL_0199:  ldarg.0
    IL_019a:  ldftn      instance void Game.PlayerScreen::'<Update>b__21_3'(object)
    IL_01a0:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_01a5:  newobj     instance void Game.ListSelectionDialog::.ctor(string,
                                                                       class [System.Runtime]System.Collections.IEnumerable,
                                                                       float32,
                                                                       class [System.Runtime]System.Func`2<object,class Game.Widget>,
                                                                       class [System.Runtime]System.Action`1<object>)
    IL_01aa:  stloc.3
    IL_01ab:  ldnull
    IL_01ac:  ldloc.3
    IL_01ad:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_01b2:  ldarg.0
    IL_01b3:  ldfld      class Game.ButtonWidget Game.PlayerScreen::m_controlsButton
    IL_01b8:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_01bd:  brfalse.s  IL_0205

    IL_01bf:  ldnull
    IL_01c0:  ldstr      "Select External Input Device"
    IL_01c5:  ldarg.0
    IL_01c6:  ldfld      valuetype Game.WidgetInputDevice[] Game.PlayerScreen::m_inputDevices
    IL_01cb:  ldc.r4     56.
    IL_01d0:  ldsfld     class [System.Runtime]System.Func`2<object,string> Game.PlayerScreen/'<>c'::'<>9__21_4'
    IL_01d5:  dup
    IL_01d6:  brtrue.s   IL_01ef

    IL_01d8:  pop
    IL_01d9:  ldsfld     class Game.PlayerScreen/'<>c' Game.PlayerScreen/'<>c'::'<>9'
    IL_01de:  ldftn      instance string Game.PlayerScreen/'<>c'::'<Update>b__21_4'(object)
    IL_01e4:  newobj     instance void class [System.Runtime]System.Func`2<object,string>::.ctor(object,
                                                                                                 native int)
    IL_01e9:  dup
    IL_01ea:  stsfld     class [System.Runtime]System.Func`2<object,string> Game.PlayerScreen/'<>c'::'<>9__21_4'
    IL_01ef:  ldarg.0
    IL_01f0:  ldftn      instance void Game.PlayerScreen::'<Update>b__21_5'(object)
    IL_01f6:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_01fb:  newobj     instance void Game.ListSelectionDialog::.ctor(string,
                                                                       class [System.Runtime]System.Collections.IEnumerable,
                                                                       float32,
                                                                       class [System.Runtime]System.Func`2<object,string>,
                                                                       class [System.Runtime]System.Action`1<object>)
    IL_0200:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_0205:  ldarg.0
    IL_0206:  ldfld      class Game.ButtonWidget Game.PlayerScreen::m_addButton
    IL_020b:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0210:  brfalse.s  IL_024e

    IL_0212:  ldarg.0
    IL_0213:  call       instance bool Game.PlayerScreen::VerifyName()
    IL_0218:  brfalse.s  IL_024e

    IL_021a:  ldarg.0
    IL_021b:  ldfld      class Game.PlayerData Game.PlayerScreen::m_playerData
    IL_0220:  callvirt   instance class Game.SubsystemPlayers Game.PlayerData::get_SubsystemPlayers()
    IL_0225:  ldarg.0
    IL_0226:  ldfld      class Game.PlayerData Game.PlayerScreen::m_playerData
    IL_022b:  callvirt   instance void Game.SubsystemPlayers::AddPlayerData(class Game.PlayerData)
    IL_0230:  ldstr      "Players"
    IL_0235:  ldc.i4.1
    IL_0236:  newarr     [System.Runtime]System.Object
    IL_023b:  dup
    IL_023c:  ldc.i4.0
    IL_023d:  ldarg.0
    IL_023e:  ldfld      class Game.PlayerData Game.PlayerScreen::m_playerData
    IL_0243:  callvirt   instance class Game.SubsystemPlayers Game.PlayerData::get_SubsystemPlayers()
    IL_0248:  stelem.ref
    IL_0249:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_024e:  ldarg.0
    IL_024f:  ldfld      class Game.ButtonWidget Game.PlayerScreen::m_deleteButton
    IL_0254:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0259:  brfalse.s  IL_0286

    IL_025b:  ldnull
    IL_025c:  ldstr      "Warning"
    IL_0261:  ldstr      "The player will be irrecoverably removed from the "
    + "world. All items in inventory and stats will be lost."
    IL_0266:  ldstr      "OK"
    IL_026b:  ldstr      "Cancel"
    IL_0270:  ldarg.0
    IL_0271:  ldftn      instance void Game.PlayerScreen::'<Update>b__21_6'(valuetype Game.MessageDialogButton)
    IL_0277:  newobj     instance void class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>::.ctor(object,
                                                                                                                        native int)
    IL_027c:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_0281:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_0286:  ldarg.0
    IL_0287:  ldfld      class Game.ButtonWidget Game.PlayerScreen::m_playButton
    IL_028c:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0291:  brfalse.s  IL_02c1

    IL_0293:  ldarg.0
    IL_0294:  call       instance bool Game.PlayerScreen::VerifyName()
    IL_0299:  brfalse.s  IL_02c1

    IL_029b:  ldarg.0
    IL_029c:  ldfld      class Game.PlayerData Game.PlayerScreen::m_playerData
    IL_02a1:  callvirt   instance class Game.SubsystemPlayers Game.PlayerData::get_SubsystemPlayers()
    IL_02a6:  ldarg.0
    IL_02a7:  ldfld      class Game.PlayerData Game.PlayerScreen::m_playerData
    IL_02ac:  callvirt   instance void Game.SubsystemPlayers::AddPlayerData(class Game.PlayerData)
    IL_02b1:  ldstr      "Game"
    IL_02b6:  ldc.i4.0
    IL_02b7:  newarr     [System.Runtime]System.Object
    IL_02bc:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_02c1:  ldarg.0
    IL_02c2:  ldfld      class Game.ButtonWidget Game.PlayerScreen::m_addAnotherButton
    IL_02c7:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_02cc:  brfalse.s  IL_0318

    IL_02ce:  ldarg.0
    IL_02cf:  call       instance bool Game.PlayerScreen::VerifyName()
    IL_02d4:  brfalse.s  IL_0318

    IL_02d6:  ldarg.0
    IL_02d7:  ldfld      class Game.PlayerData Game.PlayerScreen::m_playerData
    IL_02dc:  callvirt   instance class Game.SubsystemPlayers Game.PlayerData::get_SubsystemPlayers()
    IL_02e1:  ldarg.0
    IL_02e2:  ldfld      class Game.PlayerData Game.PlayerScreen::m_playerData
    IL_02e7:  callvirt   instance void Game.SubsystemPlayers::AddPlayerData(class Game.PlayerData)
    IL_02ec:  ldstr      "Player"
    IL_02f1:  ldc.i4.2
    IL_02f2:  newarr     [System.Runtime]System.Object
    IL_02f7:  dup
    IL_02f8:  ldc.i4.0
    IL_02f9:  ldc.i4.0
    IL_02fa:  box        Game.PlayerScreen/Mode
    IL_02ff:  stelem.ref
    IL_0300:  dup
    IL_0301:  ldc.i4.1
    IL_0302:  ldarg.0
    IL_0303:  ldfld      class Game.PlayerData Game.PlayerScreen::m_playerData
    IL_0308:  callvirt   instance class Game.SubsystemPlayers Game.PlayerData::get_SubsystemPlayers()
    IL_030d:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0312:  stelem.ref
    IL_0313:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_0318:  ldarg.0
    IL_0319:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_031e:  callvirt   instance bool Game.WidgetInput::get_Back()
    IL_0323:  brtrue.s   IL_034a

    IL_0325:  ldarg.0
    IL_0326:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_032b:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_0330:  brtrue.s   IL_034a

    IL_0332:  ldarg.0
    IL_0333:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0338:  ldstr      "TopBar.Back"
    IL_033d:  ldc.i4.1
    IL_033e:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0343:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0348:  brfalse.s  IL_03a8

    IL_034a:  ldarg.0
    IL_034b:  call       instance bool Game.PlayerScreen::VerifyName()
    IL_0350:  brfalse.s  IL_03a8

    IL_0352:  ldarg.0
    IL_0353:  ldfld      valuetype Game.PlayerScreen/Mode Game.PlayerScreen::m_mode
    IL_0358:  brtrue.s   IL_0378

    IL_035a:  ldc.i4.1
    IL_035b:  ldc.i4.1
    IL_035c:  call       void Game.GameManager::SaveProject(bool,
                                                            bool)
    IL_0361:  call       void Game.GameManager::DisposeProject()
    IL_0366:  ldstr      "MainMenu"
    IL_036b:  ldc.i4.0
    IL_036c:  newarr     [System.Runtime]System.Object
    IL_0371:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_0376:  br.s       IL_03a8

    IL_0378:  ldarg.0
    IL_0379:  ldfld      valuetype Game.PlayerScreen/Mode Game.PlayerScreen::m_mode
    IL_037e:  ldc.i4.1
    IL_037f:  beq.s      IL_038a

    IL_0381:  ldarg.0
    IL_0382:  ldfld      valuetype Game.PlayerScreen/Mode Game.PlayerScreen::m_mode
    IL_0387:  ldc.i4.2
    IL_0388:  bne.un.s   IL_03a8

    IL_038a:  ldstr      "Players"
    IL_038f:  ldc.i4.1
    IL_0390:  newarr     [System.Runtime]System.Object
    IL_0395:  dup
    IL_0396:  ldc.i4.0
    IL_0397:  ldarg.0
    IL_0398:  ldfld      class Game.PlayerData Game.PlayerScreen::m_playerData
    IL_039d:  callvirt   instance class Game.SubsystemPlayers Game.PlayerData::get_SubsystemPlayers()
    IL_03a2:  stelem.ref
    IL_03a3:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_03a8:  ldarg.0
    IL_03a9:  ldc.i4.0
    IL_03aa:  stfld      bool Game.PlayerScreen::m_nameWasInvalid
    IL_03af:  ret
  } // end of method PlayerScreen::Update

  .method public hidebysig static string 
          GetDeviceDisplayName(valuetype Game.WidgetInputDevice device) cil managed
  {
    // 代码大小       159 (0x9f)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.3
    IL_0002:  bne.un.s   IL_000a

    IL_0004:  ldstr      "Mouse & Keyboard"
    IL_0009:  ret

    IL_000a:  ldarg.0
    IL_000b:  ldc.i4.8
    IL_000c:  bne.un.s   IL_002d

    IL_000e:  ldstr      "Gamepad 1"
    IL_0013:  ldc.i4.0
    IL_0014:  call       bool [Engine]Engine.Input.GamePad::IsConnected(int32)
    IL_0019:  brtrue.s   IL_0022

    IL_001b:  ldstr      " (not found)"
    IL_0020:  br.s       IL_0027

    IL_0022:  ldstr      ""
    IL_0027:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_002c:  ret

    IL_002d:  ldarg.0
    IL_002e:  ldc.i4.s   16
    IL_0030:  bne.un.s   IL_0051

    IL_0032:  ldstr      "Gamepad 2"
    IL_0037:  ldc.i4.1
    IL_0038:  call       bool [Engine]Engine.Input.GamePad::IsConnected(int32)
    IL_003d:  brtrue.s   IL_0046

    IL_003f:  ldstr      " (not found)"
    IL_0044:  br.s       IL_004b

    IL_0046:  ldstr      ""
    IL_004b:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0050:  ret

    IL_0051:  ldarg.0
    IL_0052:  ldc.i4.s   32
    IL_0054:  bne.un.s   IL_0075

    IL_0056:  ldstr      "Gamepad 3"
    IL_005b:  ldc.i4.2
    IL_005c:  call       bool [Engine]Engine.Input.GamePad::IsConnected(int32)
    IL_0061:  brtrue.s   IL_006a

    IL_0063:  ldstr      " (not found)"
    IL_0068:  br.s       IL_006f

    IL_006a:  ldstr      ""
    IL_006f:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0074:  ret

    IL_0075:  ldarg.0
    IL_0076:  ldc.i4.s   64
    IL_0078:  bne.un.s   IL_0099

    IL_007a:  ldstr      "Gamepad 4"
    IL_007f:  ldc.i4.3
    IL_0080:  call       bool [Engine]Engine.Input.GamePad::IsConnected(int32)
    IL_0085:  brtrue.s   IL_008e

    IL_0087:  ldstr      " (not found)"
    IL_008c:  br.s       IL_0093

    IL_008e:  ldstr      ""
    IL_0093:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0098:  ret

    IL_0099:  ldstr      "Touchscreen"
    IL_009e:  ret
  } // end of method PlayerScreen::GetDeviceDisplayName

  .method private hidebysig instance bool 
          VerifyName() cil managed
  {
    // 代码大小       65 (0x41)
    .maxstack  6
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.PlayerScreen::m_nameWasInvalid
    IL_0006:  brfalse.s  IL_000a

    IL_0008:  ldc.i4.0
    IL_0009:  ret

    IL_000a:  ldarg.0
    IL_000b:  ldfld      class Game.TextBoxWidget Game.PlayerScreen::m_nameTextBox
    IL_0010:  callvirt   instance string Game.TextBoxWidget::get_Text()
    IL_0015:  callvirt   instance string [System.Runtime]System.String::Trim()
    IL_001a:  call       bool Game.PlayerData::VerifyName(string)
    IL_001f:  brfalse.s  IL_0023

    IL_0021:  ldc.i4.1
    IL_0022:  ret

    IL_0023:  ldnull
    IL_0024:  ldstr      "Error"
    IL_0029:  ldstr      "Invalid player name. Only letters, digits and spac"
    + "es allowed. Not too short, not too long either."
    IL_002e:  ldstr      "OK"
    IL_0033:  ldnull
    IL_0034:  ldnull
    IL_0035:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_003a:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_003f:  ldc.i4.0
    IL_0040:  ret
  } // end of method PlayerScreen::VerifyName

  .method private hidebysig instance void 
          '<.ctor>b__18_0'(class Game.TextBoxWidget '<obj>') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       44 (0x2c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance bool Game.PlayerScreen::VerifyName()
    IL_0006:  brfalse.s  IL_0024

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.PlayerData Game.PlayerScreen::m_playerData
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Game.TextBoxWidget Game.PlayerScreen::m_nameTextBox
    IL_0014:  callvirt   instance string Game.TextBoxWidget::get_Text()
    IL_0019:  callvirt   instance string [System.Runtime]System.String::Trim()
    IL_001e:  callvirt   instance void Game.PlayerData::set_Name(string)
    IL_0023:  ret

    IL_0024:  ldarg.0
    IL_0025:  ldc.i4.1
    IL_0026:  stfld      bool Game.PlayerScreen::m_nameWasInvalid
    IL_002b:  ret
  } // end of method PlayerScreen::'<.ctor>b__18_0'

  .method private hidebysig instance bool 
          '<Update>b__21_0'(valuetype Game.WidgetInputDevice id) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.PlayerData Game.PlayerScreen::m_playerData
    IL_0007:  callvirt   instance valuetype Game.WidgetInputDevice Game.PlayerData::get_InputDevice()
    IL_000c:  and
    IL_000d:  ldc.i4.0
    IL_000e:  cgt.un
    IL_0010:  ret
  } // end of method PlayerScreen::'<Update>b__21_0'

  .method private hidebysig instance bool 
          '<Update>b__21_1'(string n) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       61 (0x3d)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype Game.PlayerClass> V_0,
             valuetype Game.PlayerClass V_1)
    IL_0000:  ldarg.1
    IL_0001:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.PlayerClass> Game.CharacterSkinsManager::GetPlayerClass(string)
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class Game.PlayerData Game.PlayerScreen::m_playerData
    IL_000d:  callvirt   instance valuetype Game.PlayerClass Game.PlayerData::get_PlayerClass()
    IL_0012:  stloc.1
    IL_0013:  ldloca.s   V_0
    IL_0015:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.PlayerClass>::GetValueOrDefault()
    IL_001a:  ldloc.1
    IL_001b:  beq.s      IL_0020

    IL_001d:  ldc.i4.0
    IL_001e:  br.s       IL_0027

    IL_0020:  ldloca.s   V_0
    IL_0022:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.PlayerClass>::get_HasValue()
    IL_0027:  brtrue.s   IL_003b

    IL_0029:  ldarg.1
    IL_002a:  call       valuetype [System.Runtime]System.Nullable`1<valuetype Game.PlayerClass> Game.CharacterSkinsManager::GetPlayerClass(string)
    IL_002f:  stloc.0
    IL_0030:  ldloca.s   V_0
    IL_0032:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.PlayerClass>::get_HasValue()
    IL_0037:  ldc.i4.0
    IL_0038:  ceq
    IL_003a:  ret

    IL_003b:  ldc.i4.1
    IL_003c:  ret
  } // end of method PlayerScreen::'<Update>b__21_1'

  .method private hidebysig instance class Game.Widget 
          '<Update>b__21_2'(object item) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       184 (0xb8)
    .maxstack  6
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0,
             class Game.ContainerWidget V_1,
             class [Engine]Engine.Graphics.Texture2D V_2)
    IL_0000:  ldstr      "Widgets/CharacterSkinItem"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_000a:  stloc.0
    IL_000b:  ldarg.0
    IL_000c:  ldloc.0
    IL_000d:  ldnull
    IL_000e:  call       class Game.Widget Game.WidgetsManager::LoadWidget(object,
                                                                           class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                           class Game.ContainerWidget)
    IL_0013:  castclass  Game.ContainerWidget
    IL_0018:  stloc.1
    IL_0019:  ldarg.0
    IL_001a:  ldfld      class Game.CharacterSkinsCache Game.PlayerScreen::m_characterSkinsCache
    IL_001f:  ldarg.1
    IL_0020:  castclass  [System.Runtime]System.String
    IL_0025:  callvirt   instance class [Engine]Engine.Graphics.Texture2D Game.CharacterSkinsCache::GetTexture(string)
    IL_002a:  stloc.2
    IL_002b:  ldloc.1
    IL_002c:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0031:  ldstr      "CharacterSkinItem.Text"
    IL_0036:  ldc.i4.1
    IL_0037:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_003c:  ldarg.1
    IL_003d:  castclass  [System.Runtime]System.String
    IL_0042:  call       string Game.CharacterSkinsManager::GetDisplayName(string)
    IL_0047:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_004c:  ldloc.1
    IL_004d:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0052:  ldstr      "CharacterSkinItem.Details"
    IL_0057:  ldc.i4.1
    IL_0058:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_005d:  ldstr      "{0}x{1}"
    IL_0062:  ldc.i4.2
    IL_0063:  newarr     [System.Runtime]System.Object
    IL_0068:  dup
    IL_0069:  ldc.i4.0
    IL_006a:  ldloc.2
    IL_006b:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_0070:  box        [System.Runtime]System.Int32
    IL_0075:  stelem.ref
    IL_0076:  dup
    IL_0077:  ldc.i4.1
    IL_0078:  ldloc.2
    IL_0079:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
    IL_007e:  box        [System.Runtime]System.Int32
    IL_0083:  stelem.ref
    IL_0084:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0089:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_008e:  ldloc.1
    IL_008f:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0094:  ldstr      "CharacterSkinItem.Model"
    IL_0099:  ldc.i4.1
    IL_009a:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.PlayerModelWidget>(string,
                                                                                           bool)
    IL_009f:  dup
    IL_00a0:  ldarg.0
    IL_00a1:  ldfld      class Game.PlayerData Game.PlayerScreen::m_playerData
    IL_00a6:  callvirt   instance valuetype Game.PlayerClass Game.PlayerData::get_PlayerClass()
    IL_00ab:  callvirt   instance void Game.PlayerModelWidget::set_PlayerClass(valuetype Game.PlayerClass)
    IL_00b0:  ldloc.2
    IL_00b1:  callvirt   instance void Game.PlayerModelWidget::set_CharacterSkinTexture(class [Engine]Engine.Graphics.Texture2D)
    IL_00b6:  ldloc.1
    IL_00b7:  ret
  } // end of method PlayerScreen::'<Update>b__21_2'

  .method private hidebysig instance void 
          '<Update>b__21_3'(object item) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       42 (0x2a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.PlayerData Game.PlayerScreen::m_playerData
    IL_0006:  ldarg.1
    IL_0007:  castclass  [System.Runtime]System.String
    IL_000c:  callvirt   instance void Game.PlayerData::set_CharacterSkinName(string)
    IL_0011:  ldarg.0
    IL_0012:  ldfld      class Game.PlayerData Game.PlayerScreen::m_playerData
    IL_0017:  callvirt   instance bool Game.PlayerData::get_IsDefaultName()
    IL_001c:  brfalse.s  IL_0029

    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.PlayerData Game.PlayerScreen::m_playerData
    IL_0024:  callvirt   instance void Game.PlayerData::ResetName()
    IL_0029:  ret
  } // end of method PlayerScreen::'<Update>b__21_3'

  .method private hidebysig instance void 
          '<Update>b__21_5'(object d) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       114 (0x72)
    .maxstack  3
    .locals init (valuetype Game.WidgetInputDevice V_0,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.PlayerData> V_1,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> V_2,
             class Game.PlayerData V_3)
    IL_0000:  ldarg.1
    IL_0001:  unbox.any  Game.WidgetInputDevice
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class Game.PlayerData Game.PlayerScreen::m_playerData
    IL_000d:  ldloc.0
    IL_000e:  callvirt   instance void Game.PlayerData::set_InputDevice(valuetype Game.WidgetInputDevice)
    IL_0013:  ldarg.0
    IL_0014:  ldfld      class Game.PlayerData Game.PlayerScreen::m_playerData
    IL_0019:  callvirt   instance class Game.SubsystemPlayers Game.PlayerData::get_SubsystemPlayers()
    IL_001e:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> Game.SubsystemPlayers::get_PlayersData()
    IL_0023:  stloc.2
    IL_0024:  ldloca.s   V_2
    IL_0026:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData>::GetEnumerator()
    IL_002b:  stloc.1
    .try
    {
      IL_002c:  br.s       IL_0058

      IL_002e:  ldloca.s   V_1
      IL_0030:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.PlayerData>::get_Current()
      IL_0035:  stloc.3
      IL_0036:  ldloc.3
      IL_0037:  ldarg.0
      IL_0038:  ldfld      class Game.PlayerData Game.PlayerScreen::m_playerData
      IL_003d:  beq.s      IL_0058

      IL_003f:  ldloc.3
      IL_0040:  callvirt   instance valuetype Game.WidgetInputDevice Game.PlayerData::get_InputDevice()
      IL_0045:  ldloc.0
      IL_0046:  and
      IL_0047:  brfalse.s  IL_0058

      IL_0049:  ldloc.3
      IL_004a:  dup
      IL_004b:  callvirt   instance valuetype Game.WidgetInputDevice Game.PlayerData::get_InputDevice()
      IL_0050:  ldloc.0
      IL_0051:  not
      IL_0052:  and
      IL_0053:  callvirt   instance void Game.PlayerData::set_InputDevice(valuetype Game.WidgetInputDevice)
      IL_0058:  ldloca.s   V_1
      IL_005a:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.PlayerData>::MoveNext()
      IL_005f:  brtrue.s   IL_002e

      IL_0061:  leave.s    IL_0071

    }  // end .try
    finally
    {
      IL_0063:  ldloca.s   V_1
      IL_0065:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.PlayerData>
      IL_006b:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0070:  endfinally
    }  // end handler
    IL_0071:  ret
  } // end of method PlayerScreen::'<Update>b__21_5'

  .method private hidebysig instance void 
          '<Update>b__21_6'(valuetype Game.MessageDialogButton b) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       56 (0x38)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  brtrue.s   IL_0037

    IL_0003:  ldarg.0
    IL_0004:  ldfld      class Game.PlayerData Game.PlayerScreen::m_playerData
    IL_0009:  callvirt   instance class Game.SubsystemPlayers Game.PlayerData::get_SubsystemPlayers()
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Game.PlayerData Game.PlayerScreen::m_playerData
    IL_0014:  callvirt   instance void Game.SubsystemPlayers::RemovePlayerData(class Game.PlayerData)
    IL_0019:  ldstr      "Players"
    IL_001e:  ldc.i4.1
    IL_001f:  newarr     [System.Runtime]System.Object
    IL_0024:  dup
    IL_0025:  ldc.i4.0
    IL_0026:  ldarg.0
    IL_0027:  ldfld      class Game.PlayerData Game.PlayerScreen::m_playerData
    IL_002c:  callvirt   instance class Game.SubsystemPlayers Game.PlayerData::get_SubsystemPlayers()
    IL_0031:  stelem.ref
    IL_0032:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_0037:  ret
  } // end of method PlayerScreen::'<Update>b__21_6'

} // end of class Game.PlayerScreen