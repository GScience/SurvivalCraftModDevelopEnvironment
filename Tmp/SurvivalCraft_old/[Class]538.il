.class public auto ansi beforefieldinit Game.BestiaryDescriptionScreen
       extends Game.Screen
{
  .field private class Game.ModelWidget m_modelWidget
  .field private class Game.LabelWidget m_nameWidget
  .field private class Game.ButtonWidget m_leftButtonWidget
  .field private class Game.ButtonWidget m_rightButtonWidget
  .field private class Game.LabelWidget m_descriptionWidget
  .field private class Game.LabelWidget m_propertyNames1Widget
  .field private class Game.LabelWidget m_propertyValues1Widget
  .field private class Game.LabelWidget m_propertyNames2Widget
  .field private class Game.LabelWidget m_propertyValues2Widget
  .field private class Game.ContainerWidget m_dropsPanel
  .field private int32 m_index
  .field private class [System.Runtime]System.Collections.Generic.IList`1<class Game.BestiaryCreatureInfo> m_infoList
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       256 (0x100)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Screen::.ctor()
    IL_0006:  ldstr      "Screens/BestiaryDescriptionScreen"
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
    IL_0020:  ldstr      "Model"
    IL_0025:  ldc.i4.1
    IL_0026:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ModelWidget>(string,
                                                                                     bool)
    IL_002b:  stfld      class Game.ModelWidget Game.BestiaryDescriptionScreen::m_modelWidget
    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0037:  ldstr      "Name"
    IL_003c:  ldc.i4.1
    IL_003d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0042:  stfld      class Game.LabelWidget Game.BestiaryDescriptionScreen::m_nameWidget
    IL_0047:  ldarg.0
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_004e:  ldstr      "Left"
    IL_0053:  ldc.i4.1
    IL_0054:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0059:  stfld      class Game.ButtonWidget Game.BestiaryDescriptionScreen::m_leftButtonWidget
    IL_005e:  ldarg.0
    IL_005f:  ldarg.0
    IL_0060:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0065:  ldstr      "Right"
    IL_006a:  ldc.i4.1
    IL_006b:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0070:  stfld      class Game.ButtonWidget Game.BestiaryDescriptionScreen::m_rightButtonWidget
    IL_0075:  ldarg.0
    IL_0076:  ldarg.0
    IL_0077:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_007c:  ldstr      "Description"
    IL_0081:  ldc.i4.1
    IL_0082:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0087:  stfld      class Game.LabelWidget Game.BestiaryDescriptionScreen::m_descriptionWidget
    IL_008c:  ldarg.0
    IL_008d:  ldarg.0
    IL_008e:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0093:  ldstr      "PropertyNames1"
    IL_0098:  ldc.i4.1
    IL_0099:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_009e:  stfld      class Game.LabelWidget Game.BestiaryDescriptionScreen::m_propertyNames1Widget
    IL_00a3:  ldarg.0
    IL_00a4:  ldarg.0
    IL_00a5:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00aa:  ldstr      "PropertyValues1"
    IL_00af:  ldc.i4.1
    IL_00b0:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_00b5:  stfld      class Game.LabelWidget Game.BestiaryDescriptionScreen::m_propertyValues1Widget
    IL_00ba:  ldarg.0
    IL_00bb:  ldarg.0
    IL_00bc:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00c1:  ldstr      "PropertyNames2"
    IL_00c6:  ldc.i4.1
    IL_00c7:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_00cc:  stfld      class Game.LabelWidget Game.BestiaryDescriptionScreen::m_propertyNames2Widget
    IL_00d1:  ldarg.0
    IL_00d2:  ldarg.0
    IL_00d3:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00d8:  ldstr      "PropertyValues2"
    IL_00dd:  ldc.i4.1
    IL_00de:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_00e3:  stfld      class Game.LabelWidget Game.BestiaryDescriptionScreen::m_propertyValues2Widget
    IL_00e8:  ldarg.0
    IL_00e9:  ldarg.0
    IL_00ea:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00ef:  ldstr      "Drops"
    IL_00f4:  ldc.i4.1
    IL_00f5:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ContainerWidget>(string,
                                                                                         bool)
    IL_00fa:  stfld      class Game.ContainerWidget Game.BestiaryDescriptionScreen::m_dropsPanel
    IL_00ff:  ret
  } // end of method BestiaryDescriptionScreen::.ctor

  .method public hidebysig virtual instance void 
          Enter(object[] parameters) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  3
    .locals init (class Game.BestiaryCreatureInfo V_0)
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.0
    IL_0002:  ldelem.ref
    IL_0003:  castclass  Game.BestiaryCreatureInfo
    IL_0008:  stloc.0
    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  ldc.i4.1
    IL_000c:  ldelem.ref
    IL_000d:  castclass  class [System.Runtime]System.Collections.Generic.IList`1<class Game.BestiaryCreatureInfo>
    IL_0012:  stfld      class [System.Runtime]System.Collections.Generic.IList`1<class Game.BestiaryCreatureInfo> Game.BestiaryDescriptionScreen::m_infoList
    IL_0017:  ldarg.0
    IL_0018:  ldarg.0
    IL_0019:  ldfld      class [System.Runtime]System.Collections.Generic.IList`1<class Game.BestiaryCreatureInfo> Game.BestiaryDescriptionScreen::m_infoList
    IL_001e:  ldloc.0
    IL_001f:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.IList`1<class Game.BestiaryCreatureInfo>::IndexOf(!0)
    IL_0024:  stfld      int32 Game.BestiaryDescriptionScreen::m_index
    IL_0029:  ldarg.0
    IL_002a:  call       instance void Game.BestiaryDescriptionScreen::UpdateCreatureProperties()
    IL_002f:  ret
  } // end of method BestiaryDescriptionScreen::Enter

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       235 (0xeb)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ButtonWidget Game.BestiaryDescriptionScreen::m_leftButtonWidget
    IL_0006:  ldarg.0
    IL_0007:  ldfld      int32 Game.BestiaryDescriptionScreen::m_index
    IL_000c:  ldc.i4.0
    IL_000d:  cgt
    IL_000f:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0014:  ldarg.0
    IL_0015:  ldfld      class Game.ButtonWidget Game.BestiaryDescriptionScreen::m_rightButtonWidget
    IL_001a:  ldarg.0
    IL_001b:  ldfld      int32 Game.BestiaryDescriptionScreen::m_index
    IL_0020:  ldarg.0
    IL_0021:  ldfld      class [System.Runtime]System.Collections.Generic.IList`1<class Game.BestiaryCreatureInfo> Game.BestiaryDescriptionScreen::m_infoList
    IL_0026:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.ICollection`1<class Game.BestiaryCreatureInfo>::get_Count()
    IL_002b:  ldc.i4.1
    IL_002c:  sub
    IL_002d:  clt
    IL_002f:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0034:  ldarg.0
    IL_0035:  ldfld      class Game.ButtonWidget Game.BestiaryDescriptionScreen::m_leftButtonWidget
    IL_003a:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_003f:  brtrue.s   IL_004e

    IL_0041:  ldarg.0
    IL_0042:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0047:  callvirt   instance bool Game.WidgetInput::get_Left()
    IL_004c:  brfalse.s  IL_0068

    IL_004e:  ldarg.0
    IL_004f:  ldarg.0
    IL_0050:  ldfld      int32 Game.BestiaryDescriptionScreen::m_index
    IL_0055:  ldc.i4.1
    IL_0056:  sub
    IL_0057:  ldc.i4.0
    IL_0058:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_005d:  stfld      int32 Game.BestiaryDescriptionScreen::m_index
    IL_0062:  ldarg.0
    IL_0063:  call       instance void Game.BestiaryDescriptionScreen::UpdateCreatureProperties()
    IL_0068:  ldarg.0
    IL_0069:  ldfld      class Game.ButtonWidget Game.BestiaryDescriptionScreen::m_rightButtonWidget
    IL_006e:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0073:  brtrue.s   IL_0082

    IL_0075:  ldarg.0
    IL_0076:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_007b:  callvirt   instance bool Game.WidgetInput::get_Right()
    IL_0080:  brfalse.s  IL_00a8

    IL_0082:  ldarg.0
    IL_0083:  ldarg.0
    IL_0084:  ldfld      int32 Game.BestiaryDescriptionScreen::m_index
    IL_0089:  ldc.i4.1
    IL_008a:  add
    IL_008b:  ldarg.0
    IL_008c:  ldfld      class [System.Runtime]System.Collections.Generic.IList`1<class Game.BestiaryCreatureInfo> Game.BestiaryDescriptionScreen::m_infoList
    IL_0091:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.ICollection`1<class Game.BestiaryCreatureInfo>::get_Count()
    IL_0096:  ldc.i4.1
    IL_0097:  sub
    IL_0098:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_009d:  stfld      int32 Game.BestiaryDescriptionScreen::m_index
    IL_00a2:  ldarg.0
    IL_00a3:  call       instance void Game.BestiaryDescriptionScreen::UpdateCreatureProperties()
    IL_00a8:  ldarg.0
    IL_00a9:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_00ae:  callvirt   instance bool Game.WidgetInput::get_Back()
    IL_00b3:  brtrue.s   IL_00da

    IL_00b5:  ldarg.0
    IL_00b6:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_00bb:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_00c0:  brtrue.s   IL_00da

    IL_00c2:  ldarg.0
    IL_00c3:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00c8:  ldstr      "TopBar.Back"
    IL_00cd:  ldc.i4.1
    IL_00ce:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_00d3:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00d8:  brfalse.s  IL_00ea

    IL_00da:  call       class Game.Screen Game.ScreensManager::get_PreviousScreen()
    IL_00df:  ldc.i4.0
    IL_00e0:  newarr     [System.Runtime]System.Object
    IL_00e5:  call       void Game.ScreensManager::SwitchScreen(class Game.Screen,
                                                                object[])
    IL_00ea:  ret
  } // end of method BestiaryDescriptionScreen::Update

  .method private hidebysig instance void 
          UpdateCreatureProperties() cil managed
  {
    // 代码大小       1439 (0x59f)
    .maxstack  7
    .locals init (class Game.BestiaryCreatureInfo V_0,
             float64 V_1,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype Game.ComponentLoot/Loot> V_2,
             valuetype Game.ComponentLoot/Loot V_3,
             string V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.BestiaryDescriptionScreen::m_index
    IL_0006:  ldc.i4.0
    IL_0007:  blt        IL_059e

    IL_000c:  ldarg.0
    IL_000d:  ldfld      int32 Game.BestiaryDescriptionScreen::m_index
    IL_0012:  ldarg.0
    IL_0013:  ldfld      class [System.Runtime]System.Collections.Generic.IList`1<class Game.BestiaryCreatureInfo> Game.BestiaryDescriptionScreen::m_infoList
    IL_0018:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.ICollection`1<class Game.BestiaryCreatureInfo>::get_Count()
    IL_001d:  bge        IL_059e

    IL_0022:  ldarg.0
    IL_0023:  ldfld      class [System.Runtime]System.Collections.Generic.IList`1<class Game.BestiaryCreatureInfo> Game.BestiaryDescriptionScreen::m_infoList
    IL_0028:  ldarg.0
    IL_0029:  ldfld      int32 Game.BestiaryDescriptionScreen::m_index
    IL_002e:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IList`1<class Game.BestiaryCreatureInfo>::get_Item(int32)
    IL_0033:  stloc.0
    IL_0034:  ldarg.0
    IL_0035:  ldfld      class Game.ModelWidget Game.BestiaryDescriptionScreen::m_modelWidget
    IL_003a:  ldc.r4     0.0
    IL_003f:  ldc.r4     1.
    IL_0044:  ldc.r4     0.0
    IL_0049:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_004e:  callvirt   instance void Game.ModelWidget::set_AutoRotationVector(valuetype [Engine]Engine.Vector3)
    IL_0053:  ldloc.0
    IL_0054:  ldarg.0
    IL_0055:  ldfld      class Game.ModelWidget Game.BestiaryDescriptionScreen::m_modelWidget
    IL_005a:  ldc.r4     -1.
    IL_005f:  ldc.r4     0.0
    IL_0064:  ldc.r4     -1.
    IL_0069:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_006e:  ldc.i4.1
    IL_006f:  ldc.i4.1
    IL_0070:  call       void Game.BestiaryScreen::SetupBestiaryModelWidget(class Game.BestiaryCreatureInfo,
                                                                            class Game.ModelWidget,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            bool,
                                                                            bool)
    IL_0075:  ldarg.0
    IL_0076:  ldfld      class Game.LabelWidget Game.BestiaryDescriptionScreen::m_nameWidget
    IL_007b:  ldloc.0
    IL_007c:  ldfld      string Game.BestiaryCreatureInfo::DisplayName
    IL_0081:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0086:  ldarg.0
    IL_0087:  ldfld      class Game.LabelWidget Game.BestiaryDescriptionScreen::m_descriptionWidget
    IL_008c:  ldloc.0
    IL_008d:  ldfld      string Game.BestiaryCreatureInfo::Description
    IL_0092:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0097:  ldarg.0
    IL_0098:  ldfld      class Game.LabelWidget Game.BestiaryDescriptionScreen::m_propertyNames1Widget
    IL_009d:  ldsfld     string [System.Runtime]System.String::Empty
    IL_00a2:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00a7:  ldarg.0
    IL_00a8:  ldfld      class Game.LabelWidget Game.BestiaryDescriptionScreen::m_propertyValues1Widget
    IL_00ad:  ldsfld     string [System.Runtime]System.String::Empty
    IL_00b2:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00b7:  ldarg.0
    IL_00b8:  ldfld      class Game.LabelWidget Game.BestiaryDescriptionScreen::m_propertyNames1Widget
    IL_00bd:  dup
    IL_00be:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_00c3:  ldstr      "Resilience:\n"
    IL_00c8:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_00cd:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00d2:  ldarg.0
    IL_00d3:  ldfld      class Game.LabelWidget Game.BestiaryDescriptionScreen::m_propertyValues1Widget
    IL_00d8:  dup
    IL_00d9:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_00de:  ldloc.0
    IL_00df:  ldflda     float32 Game.BestiaryCreatureInfo::AttackResilience
    IL_00e4:  call       instance string [System.Runtime]System.Single::ToString()
    IL_00e9:  ldstr      "\n"
    IL_00ee:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_00f3:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00f8:  ldarg.0
    IL_00f9:  ldfld      class Game.LabelWidget Game.BestiaryDescriptionScreen::m_propertyNames1Widget
    IL_00fe:  dup
    IL_00ff:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_0104:  ldstr      "Attack Power:\n"
    IL_0109:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_010e:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0113:  ldarg.0
    IL_0114:  ldfld      class Game.LabelWidget Game.BestiaryDescriptionScreen::m_propertyValues1Widget
    IL_0119:  dup
    IL_011a:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_011f:  ldloc.0
    IL_0120:  ldfld      float32 Game.BestiaryCreatureInfo::AttackPower
    IL_0125:  ldc.r4     0.0
    IL_012a:  bgt.s      IL_0133

    IL_012c:  ldstr      "None"
    IL_0131:  br.s       IL_0143

    IL_0133:  ldloc.0
    IL_0134:  ldflda     float32 Game.BestiaryCreatureInfo::AttackPower
    IL_0139:  ldstr      "0.0"
    IL_013e:  call       instance string [System.Runtime]System.Single::ToString(string)
    IL_0143:  ldstr      "\n"
    IL_0148:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_014d:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0152:  ldarg.0
    IL_0153:  ldfld      class Game.LabelWidget Game.BestiaryDescriptionScreen::m_propertyNames1Widget
    IL_0158:  dup
    IL_0159:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_015e:  ldstr      "Herding Behavior:\n"
    IL_0163:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0168:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_016d:  ldarg.0
    IL_016e:  ldfld      class Game.LabelWidget Game.BestiaryDescriptionScreen::m_propertyValues1Widget
    IL_0173:  dup
    IL_0174:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_0179:  ldloc.0
    IL_017a:  ldfld      bool Game.BestiaryCreatureInfo::IsHerding
    IL_017f:  brtrue.s   IL_0188

    IL_0181:  ldstr      "No"
    IL_0186:  br.s       IL_018d

    IL_0188:  ldstr      "Yes"
    IL_018d:  ldstr      "\n"
    IL_0192:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_0197:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_019c:  ldarg.0
    IL_019d:  ldfld      class Game.LabelWidget Game.BestiaryDescriptionScreen::m_propertyNames1Widget
    IL_01a2:  dup
    IL_01a3:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_01a8:  ldstr      "Can Be Ridden:\n"
    IL_01ad:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_01b2:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_01b7:  ldarg.0
    IL_01b8:  ldfld      class Game.LabelWidget Game.BestiaryDescriptionScreen::m_propertyValues1Widget
    IL_01bd:  dup
    IL_01be:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_01c3:  ldloc.0
    IL_01c4:  ldfld      bool Game.BestiaryCreatureInfo::CanBeRidden
    IL_01c9:  brtrue.s   IL_01d2

    IL_01cb:  ldstr      "No"
    IL_01d0:  br.s       IL_01d7

    IL_01d2:  ldstr      "Yes"
    IL_01d7:  ldstr      "\n"
    IL_01dc:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_01e1:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_01e6:  ldarg.0
    IL_01e7:  ldfld      class Game.LabelWidget Game.BestiaryDescriptionScreen::m_propertyNames1Widget
    IL_01ec:  ldarg.0
    IL_01ed:  ldfld      class Game.LabelWidget Game.BestiaryDescriptionScreen::m_propertyNames1Widget
    IL_01f2:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_01f7:  ldc.i4.0
    IL_01f8:  newarr     [System.Runtime]System.Char
    IL_01fd:  callvirt   instance string [System.Runtime]System.String::TrimEnd(char[])
    IL_0202:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0207:  ldarg.0
    IL_0208:  ldfld      class Game.LabelWidget Game.BestiaryDescriptionScreen::m_propertyValues1Widget
    IL_020d:  ldarg.0
    IL_020e:  ldfld      class Game.LabelWidget Game.BestiaryDescriptionScreen::m_propertyValues1Widget
    IL_0213:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_0218:  ldc.i4.0
    IL_0219:  newarr     [System.Runtime]System.Char
    IL_021e:  callvirt   instance string [System.Runtime]System.String::TrimEnd(char[])
    IL_0223:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0228:  ldarg.0
    IL_0229:  ldfld      class Game.LabelWidget Game.BestiaryDescriptionScreen::m_propertyNames2Widget
    IL_022e:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0233:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0238:  ldarg.0
    IL_0239:  ldfld      class Game.LabelWidget Game.BestiaryDescriptionScreen::m_propertyValues2Widget
    IL_023e:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0243:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0248:  ldarg.0
    IL_0249:  ldfld      class Game.LabelWidget Game.BestiaryDescriptionScreen::m_propertyNames2Widget
    IL_024e:  dup
    IL_024f:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_0254:  ldstr      "Speed:\n"
    IL_0259:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_025e:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0263:  ldarg.0
    IL_0264:  ldfld      class Game.LabelWidget Game.BestiaryDescriptionScreen::m_propertyValues2Widget
    IL_0269:  dup
    IL_026a:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_026f:  ldloc.0
    IL_0270:  ldfld      float32 Game.BestiaryCreatureInfo::MovementSpeed
    IL_0275:  conv.r8
    IL_0276:  ldc.r8     3.6000000000000001
    IL_027f:  mul
    IL_0280:  stloc.1
    IL_0281:  ldloca.s   V_1
    IL_0283:  ldstr      "0"
    IL_0288:  call       instance string [System.Runtime]System.Double::ToString(string)
    IL_028d:  ldstr      " km/h\n"
    IL_0292:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_0297:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_029c:  ldarg.0
    IL_029d:  ldfld      class Game.LabelWidget Game.BestiaryDescriptionScreen::m_propertyNames2Widget
    IL_02a2:  dup
    IL_02a3:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_02a8:  ldstr      "Jump Height:\n"
    IL_02ad:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_02b2:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_02b7:  ldarg.0
    IL_02b8:  ldfld      class Game.LabelWidget Game.BestiaryDescriptionScreen::m_propertyValues2Widget
    IL_02bd:  dup
    IL_02be:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_02c3:  ldloc.0
    IL_02c4:  ldflda     float32 Game.BestiaryCreatureInfo::JumpHeight
    IL_02c9:  ldstr      "0.0"
    IL_02ce:  call       instance string [System.Runtime]System.Single::ToString(string)
    IL_02d3:  ldstr      " meters\n"
    IL_02d8:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_02dd:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_02e2:  ldarg.0
    IL_02e3:  ldfld      class Game.LabelWidget Game.BestiaryDescriptionScreen::m_propertyNames2Widget
    IL_02e8:  dup
    IL_02e9:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_02ee:  ldstr      "Weight:\n"
    IL_02f3:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_02f8:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_02fd:  ldarg.0
    IL_02fe:  ldfld      class Game.LabelWidget Game.BestiaryDescriptionScreen::m_propertyValues2Widget
    IL_0303:  dup
    IL_0304:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_0309:  ldloc.0
    IL_030a:  ldflda     float32 Game.BestiaryCreatureInfo::Mass
    IL_030f:  call       instance string [System.Runtime]System.Single::ToString()
    IL_0314:  ldstr      " kg\n"
    IL_0319:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_031e:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0323:  ldarg.0
    IL_0324:  ldfld      class Game.LabelWidget Game.BestiaryDescriptionScreen::m_propertyNames2Widget
    IL_0329:  dup
    IL_032a:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_032f:  ldstr      "Spawner Egg:\n"
    IL_0334:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0339:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_033e:  ldarg.0
    IL_033f:  ldfld      class Game.LabelWidget Game.BestiaryDescriptionScreen::m_propertyValues2Widget
    IL_0344:  dup
    IL_0345:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_034a:  ldloc.0
    IL_034b:  ldfld      bool Game.BestiaryCreatureInfo::HasSpawnerEgg
    IL_0350:  brtrue.s   IL_0359

    IL_0352:  ldstr      "No"
    IL_0357:  br.s       IL_035e

    IL_0359:  ldstr      "Yes"
    IL_035e:  ldstr      "\n"
    IL_0363:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_0368:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_036d:  ldarg.0
    IL_036e:  ldfld      class Game.LabelWidget Game.BestiaryDescriptionScreen::m_propertyNames2Widget
    IL_0373:  ldarg.0
    IL_0374:  ldfld      class Game.LabelWidget Game.BestiaryDescriptionScreen::m_propertyNames2Widget
    IL_0379:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_037e:  ldc.i4.0
    IL_037f:  newarr     [System.Runtime]System.Char
    IL_0384:  callvirt   instance string [System.Runtime]System.String::TrimEnd(char[])
    IL_0389:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_038e:  ldarg.0
    IL_038f:  ldfld      class Game.LabelWidget Game.BestiaryDescriptionScreen::m_propertyValues2Widget
    IL_0394:  ldarg.0
    IL_0395:  ldfld      class Game.LabelWidget Game.BestiaryDescriptionScreen::m_propertyValues2Widget
    IL_039a:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_039f:  ldc.i4.0
    IL_03a0:  newarr     [System.Runtime]System.Char
    IL_03a5:  callvirt   instance string [System.Runtime]System.String::TrimEnd(char[])
    IL_03aa:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_03af:  ldarg.0
    IL_03b0:  ldfld      class Game.ContainerWidget Game.BestiaryDescriptionScreen::m_dropsPanel
    IL_03b5:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_03ba:  callvirt   instance void Game.WidgetsList::Clear()
    IL_03bf:  ldloc.0
    IL_03c0:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ComponentLoot/Loot> Game.BestiaryCreatureInfo::Loot
    IL_03c5:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ComponentLoot/Loot>::get_Count()
    IL_03ca:  ldc.i4.0
    IL_03cb:  ble        IL_0559

    IL_03d0:  ldloc.0
    IL_03d1:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ComponentLoot/Loot> Game.BestiaryCreatureInfo::Loot
    IL_03d6:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ComponentLoot/Loot>::GetEnumerator()
    IL_03db:  stloc.2
    .try
    {
      IL_03dc:  br         IL_053d

      IL_03e1:  ldloca.s   V_2
      IL_03e3:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype Game.ComponentLoot/Loot>::get_Current()
      IL_03e8:  stloc.3
      IL_03e9:  ldloc.3
      IL_03ea:  ldfld      int32 Game.ComponentLoot/Loot::MinCount
      IL_03ef:  ldloc.3
      IL_03f0:  ldfld      int32 Game.ComponentLoot/Loot::MaxCount
      IL_03f5:  bge.s      IL_0427

      IL_03f7:  ldstr      "{0} to {1}"
      IL_03fc:  ldc.i4.2
      IL_03fd:  newarr     [System.Runtime]System.Object
      IL_0402:  dup
      IL_0403:  ldc.i4.0
      IL_0404:  ldloc.3
      IL_0405:  ldfld      int32 Game.ComponentLoot/Loot::MinCount
      IL_040a:  box        [System.Runtime]System.Int32
      IL_040f:  stelem.ref
      IL_0410:  dup
      IL_0411:  ldc.i4.1
      IL_0412:  ldloc.3
      IL_0413:  ldfld      int32 Game.ComponentLoot/Loot::MaxCount
      IL_0418:  box        [System.Runtime]System.Int32
      IL_041d:  stelem.ref
      IL_041e:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_0423:  stloc.s    V_4
      IL_0425:  br.s       IL_0447

      IL_0427:  ldstr      "{0}"
      IL_042c:  ldc.i4.1
      IL_042d:  newarr     [System.Runtime]System.Object
      IL_0432:  dup
      IL_0433:  ldc.i4.0
      IL_0434:  ldloc.3
      IL_0435:  ldfld      int32 Game.ComponentLoot/Loot::MinCount
      IL_043a:  box        [System.Runtime]System.Int32
      IL_043f:  stelem.ref
      IL_0440:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_0445:  stloc.s    V_4
      IL_0447:  ldloc.3
      IL_0448:  ldfld      float32 Game.ComponentLoot/Loot::Probability
      IL_044d:  ldc.r4     1.
      IL_0452:  bge.un.s   IL_0481

      IL_0454:  ldloc.s    V_4
      IL_0456:  ldstr      " ({0:0}% of time)"
      IL_045b:  ldc.i4.1
      IL_045c:  newarr     [System.Runtime]System.Object
      IL_0461:  dup
      IL_0462:  ldc.i4.0
      IL_0463:  ldloc.3
      IL_0464:  ldfld      float32 Game.ComponentLoot/Loot::Probability
      IL_0469:  ldc.r4     100.
      IL_046e:  mul
      IL_046f:  box        [System.Runtime]System.Single
      IL_0474:  stelem.ref
      IL_0475:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_047a:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string)
      IL_047f:  stloc.s    V_4
      IL_0481:  ldarg.0
      IL_0482:  ldfld      class Game.ContainerWidget Game.BestiaryDescriptionScreen::m_dropsPanel
      IL_0487:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
      IL_048c:  newobj     instance void Game.StackPanelWidget::.ctor()
      IL_0491:  dup
      IL_0492:  ldc.r4     20.
      IL_0497:  ldc.r4     0.0
      IL_049c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_04a1:  callvirt   instance void Game.Widget::set_Margin(valuetype [Engine]Engine.Vector2)
      IL_04a6:  dup
      IL_04a7:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
      IL_04ac:  newobj     instance void Game.BlockIconWidget::.ctor()
      IL_04b1:  dup
      IL_04b2:  ldc.r4     32.
      IL_04b7:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
      IL_04bc:  callvirt   instance void Game.BlockIconWidget::set_Size(valuetype [Engine]Engine.Vector2)
      IL_04c1:  dup
      IL_04c2:  ldc.r4     1.2
      IL_04c7:  callvirt   instance void Game.BlockIconWidget::set_Scale(float32)
      IL_04cc:  dup
      IL_04cd:  ldc.i4.1
      IL_04ce:  callvirt   instance void Game.Widget::set_VerticalAlignment(valuetype Game.WidgetAlignment)
      IL_04d3:  dup
      IL_04d4:  ldloc.3
      IL_04d5:  ldfld      int32 Game.ComponentLoot/Loot::Value
      IL_04da:  callvirt   instance void Game.BlockIconWidget::set_Value(int32)
      IL_04df:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
      IL_04e4:  dup
      IL_04e5:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
      IL_04ea:  newobj     instance void Game.CanvasWidget::.ctor()
      IL_04ef:  dup
      IL_04f0:  ldc.r4     10.
      IL_04f5:  ldc.r4     0.0
      IL_04fa:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_04ff:  callvirt   instance void Game.CanvasWidget::set_Size(valuetype [Engine]Engine.Vector2)
      IL_0504:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
      IL_0509:  dup
      IL_050a:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
      IL_050f:  newobj     instance void Game.LabelWidget::.ctor()
      IL_0514:  dup
      IL_0515:  ldstr      "Fonts/Pericles18"
      IL_051a:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Media.BitmapFont>(string)
      IL_051f:  callvirt   instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
      IL_0524:  dup
      IL_0525:  ldc.i4.1
      IL_0526:  callvirt   instance void Game.Widget::set_VerticalAlignment(valuetype Game.WidgetAlignment)
      IL_052b:  dup
      IL_052c:  ldloc.s    V_4
      IL_052e:  callvirt   instance void Game.LabelWidget::set_Text(string)
      IL_0533:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
      IL_0538:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
      IL_053d:  ldloca.s   V_2
      IL_053f:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype Game.ComponentLoot/Loot>::MoveNext()
      IL_0544:  brtrue     IL_03e1

      IL_0549:  leave.s    IL_059e

    }  // end .try
    finally
    {
      IL_054b:  ldloca.s   V_2
      IL_054d:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype Game.ComponentLoot/Loot>
      IL_0553:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0558:  endfinally
    }  // end handler
    IL_0559:  ldarg.0
    IL_055a:  ldfld      class Game.ContainerWidget Game.BestiaryDescriptionScreen::m_dropsPanel
    IL_055f:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0564:  newobj     instance void Game.LabelWidget::.ctor()
    IL_0569:  dup
    IL_056a:  ldc.r4     20.
    IL_056f:  ldc.r4     0.0
    IL_0574:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0579:  callvirt   instance void Game.Widget::set_Margin(valuetype [Engine]Engine.Vector2)
    IL_057e:  dup
    IL_057f:  ldstr      "Fonts/Pericles18"
    IL_0584:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Media.BitmapFont>(string)
    IL_0589:  callvirt   instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
    IL_058e:  dup
    IL_058f:  ldstr      "Nothing"
    IL_0594:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0599:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_059e:  ret
  } // end of method BestiaryDescriptionScreen::UpdateCreatureProperties

} // end of class Game.BestiaryDescriptionScreen