.class public auto ansi beforefieldinit Game.PlayerWidget
       extends Game.CanvasWidget
{
  .field private class Game.PlayerData m_playerData
  .field private class Game.PlayerModelWidget m_playerModel
  .field private class Game.LabelWidget m_nameLabel
  .field private class Game.LabelWidget m_detailsLabel
  .field private class Game.ButtonWidget m_editButton
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.PlayerData playerData,
                               class Game.CharacterSkinsCache characterSkinsCache) cil managed
  {
    // 代码大小       137 (0x89)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.CanvasWidget::.ctor()
    IL_0006:  ldstr      "Widgets/PlayerWidget"
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
    IL_0020:  ldstr      "PlayerModel"
    IL_0025:  ldc.i4.1
    IL_0026:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.PlayerModelWidget>(string,
                                                                                           bool)
    IL_002b:  stfld      class Game.PlayerModelWidget Game.PlayerWidget::m_playerModel
    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0037:  ldstr      "Name"
    IL_003c:  ldc.i4.1
    IL_003d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0042:  stfld      class Game.LabelWidget Game.PlayerWidget::m_nameLabel
    IL_0047:  ldarg.0
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_004e:  ldstr      "Details"
    IL_0053:  ldc.i4.1
    IL_0054:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0059:  stfld      class Game.LabelWidget Game.PlayerWidget::m_detailsLabel
    IL_005e:  ldarg.0
    IL_005f:  ldarg.0
    IL_0060:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0065:  ldstr      "EditButton"
    IL_006a:  ldc.i4.1
    IL_006b:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0070:  stfld      class Game.ButtonWidget Game.PlayerWidget::m_editButton
    IL_0075:  ldarg.0
    IL_0076:  ldfld      class Game.PlayerModelWidget Game.PlayerWidget::m_playerModel
    IL_007b:  ldarg.2
    IL_007c:  callvirt   instance void Game.PlayerModelWidget::set_CharacterSkinsCache(class Game.CharacterSkinsCache)
    IL_0081:  ldarg.0
    IL_0082:  ldarg.1
    IL_0083:  stfld      class Game.PlayerData Game.PlayerWidget::m_playerData
    IL_0088:  ret
  } // end of method PlayerWidget::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       373 (0x175)
    .maxstack  8
    .locals init (class Game.SubsystemGameInfo V_0,
             valuetype Game.PlayerClass V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.PlayerData Game.PlayerWidget::m_playerData
    IL_0006:  callvirt   instance class Game.SubsystemPlayers Game.PlayerData::get_SubsystemPlayers()
    IL_000b:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0010:  ldc.i4.1
    IL_0011:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_0016:  stloc.0
    IL_0017:  ldarg.0
    IL_0018:  ldfld      class Game.PlayerModelWidget Game.PlayerWidget::m_playerModel
    IL_001d:  ldarg.0
    IL_001e:  ldfld      class Game.PlayerData Game.PlayerWidget::m_playerData
    IL_0023:  callvirt   instance valuetype Game.PlayerClass Game.PlayerData::get_PlayerClass()
    IL_0028:  callvirt   instance void Game.PlayerModelWidget::set_PlayerClass(valuetype Game.PlayerClass)
    IL_002d:  ldarg.0
    IL_002e:  ldfld      class Game.PlayerModelWidget Game.PlayerWidget::m_playerModel
    IL_0033:  ldarg.0
    IL_0034:  ldfld      class Game.PlayerData Game.PlayerWidget::m_playerData
    IL_0039:  callvirt   instance string Game.PlayerData::get_CharacterSkinName()
    IL_003e:  callvirt   instance void Game.PlayerModelWidget::set_CharacterSkinName(string)
    IL_0043:  ldarg.0
    IL_0044:  ldfld      class Game.LabelWidget Game.PlayerWidget::m_nameLabel
    IL_0049:  ldarg.0
    IL_004a:  ldfld      class Game.PlayerData Game.PlayerWidget::m_playerData
    IL_004f:  callvirt   instance string Game.PlayerData::get_Name()
    IL_0054:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0059:  ldarg.0
    IL_005a:  ldfld      class Game.LabelWidget Game.PlayerWidget::m_detailsLabel
    IL_005f:  ldarg.0
    IL_0060:  ldfld      class Game.PlayerData Game.PlayerWidget::m_playerData
    IL_0065:  callvirt   instance valuetype Game.PlayerClass Game.PlayerData::get_PlayerClass()
    IL_006a:  stloc.1
    IL_006b:  ldloca.s   V_1
    IL_006d:  constrained. Game.PlayerClass
    IL_0073:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0078:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_007d:  ldarg.0
    IL_007e:  ldfld      class Game.LabelWidget Game.PlayerWidget::m_detailsLabel
    IL_0083:  dup
    IL_0084:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_0089:  ldstr      "\n"
    IL_008e:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0093:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0098:  ldarg.0
    IL_0099:  ldfld      class Game.LabelWidget Game.PlayerWidget::m_detailsLabel
    IL_009e:  dup
    IL_009f:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_00a4:  ldstr      "Controlled by "
    IL_00a9:  ldarg.0
    IL_00aa:  ldfld      class Game.PlayerData Game.PlayerWidget::m_playerData
    IL_00af:  callvirt   instance valuetype Game.WidgetInputDevice Game.PlayerData::get_InputDevice()
    IL_00b4:  call       string Game.PlayerScreen::GetDeviceDisplayName(valuetype Game.WidgetInputDevice)
    IL_00b9:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_00be:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00c3:  ldarg.0
    IL_00c4:  ldfld      class Game.LabelWidget Game.PlayerWidget::m_detailsLabel
    IL_00c9:  dup
    IL_00ca:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_00cf:  ldstr      "\n"
    IL_00d4:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_00d9:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00de:  ldarg.0
    IL_00df:  ldfld      class Game.LabelWidget Game.PlayerWidget::m_detailsLabel
    IL_00e4:  dup
    IL_00e5:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_00ea:  ldarg.0
    IL_00eb:  ldfld      class Game.PlayerData Game.PlayerWidget::m_playerData
    IL_00f0:  callvirt   instance float64 Game.PlayerData::get_LastSpawnTime()
    IL_00f5:  ldc.r8     0.0
    IL_00fe:  bge.s      IL_0107

    IL_0100:  ldstr      "Never spawned yet"
    IL_0105:  br.s       IL_013b

    IL_0107:  ldstr      "In game for {0:N1} days"
    IL_010c:  ldc.i4.1
    IL_010d:  newarr     [System.Runtime]System.Object
    IL_0112:  dup
    IL_0113:  ldc.i4.0
    IL_0114:  ldloc.0
    IL_0115:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_011a:  ldarg.0
    IL_011b:  ldfld      class Game.PlayerData Game.PlayerWidget::m_playerData
    IL_0120:  callvirt   instance float64 Game.PlayerData::get_LastSpawnTime()
    IL_0125:  sub
    IL_0126:  ldc.r8     1200.
    IL_012f:  div
    IL_0130:  box        [System.Runtime]System.Double
    IL_0135:  stelem.ref
    IL_0136:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_013b:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0140:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0145:  ldarg.0
    IL_0146:  ldfld      class Game.ButtonWidget Game.PlayerWidget::m_editButton
    IL_014b:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0150:  brfalse.s  IL_0174

    IL_0152:  ldstr      "Player"
    IL_0157:  ldc.i4.2
    IL_0158:  newarr     [System.Runtime]System.Object
    IL_015d:  dup
    IL_015e:  ldc.i4.0
    IL_015f:  ldc.i4.2
    IL_0160:  box        Game.PlayerScreen/Mode
    IL_0165:  stelem.ref
    IL_0166:  dup
    IL_0167:  ldc.i4.1
    IL_0168:  ldarg.0
    IL_0169:  ldfld      class Game.PlayerData Game.PlayerWidget::m_playerData
    IL_016e:  stelem.ref
    IL_016f:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_0174:  ret
  } // end of method PlayerWidget::Update

} // end of class Game.PlayerWidget