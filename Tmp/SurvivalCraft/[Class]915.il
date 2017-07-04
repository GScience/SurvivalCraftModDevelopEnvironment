.class public auto ansi beforefieldinit Game.VitalStatsWidget
       extends Game.CanvasWidget
{
  .field private class Game.ComponentPlayer m_componentPlayer
  .field private class Game.ButtonWidget m_chokeButton
  .field private class Game.LabelWidget m_titleLabel
  .field private class Game.LinkWidget m_healthLink
  .field private class Game.ValueBarWidget m_healthValueBar
  .field private class Game.LinkWidget m_staminaLink
  .field private class Game.ValueBarWidget m_staminaValueBar
  .field private class Game.LinkWidget m_foodLink
  .field private class Game.ValueBarWidget m_foodValueBar
  .field private class Game.LinkWidget m_sleepLink
  .field private class Game.ValueBarWidget m_sleepValueBar
  .field private class Game.LinkWidget m_temperatureLink
  .field private class Game.ValueBarWidget m_temperatureValueBar
  .field private class Game.LinkWidget m_wetnessLink
  .field private class Game.ValueBarWidget m_wetnessValueBar
  .field private class Game.LinkWidget m_strengthLink
  .field private class Game.LabelWidget m_strengthLabel
  .field private class Game.LinkWidget m_resilienceLink
  .field private class Game.LabelWidget m_resilienceLabel
  .field private class Game.LinkWidget m_speedLink
  .field private class Game.LabelWidget m_speedLabel
  .field private class Game.LinkWidget m_hungerLink
  .field private class Game.LabelWidget m_hungerLabel
  .field private class Game.LinkWidget m_experienceLink
  .field private class Game.ValueBarWidget m_experienceValueBar
  .field private class Game.LinkWidget m_insulationLink
  .field private class Game.LabelWidget m_insulationLabel
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.ComponentPlayer componentPlayer) cil managed
  {
    // 代码大小       631 (0x277)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.CanvasWidget::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_000d:  ldstr      "Widgets/VitalStatsWidget"
    IL_0012:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0017:  stloc.0
    IL_0018:  ldarg.0
    IL_0019:  ldarg.0
    IL_001a:  ldloc.0
    IL_001b:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0020:  ldarg.0
    IL_0021:  ldarg.0
    IL_0022:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0027:  ldstr      "TitleLabel"
    IL_002c:  ldc.i4.1
    IL_002d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0032:  stfld      class Game.LabelWidget Game.VitalStatsWidget::m_titleLabel
    IL_0037:  ldarg.0
    IL_0038:  ldarg.0
    IL_0039:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_003e:  ldstr      "HealthLink"
    IL_0043:  ldc.i4.1
    IL_0044:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LinkWidget>(string,
                                                                                    bool)
    IL_0049:  stfld      class Game.LinkWidget Game.VitalStatsWidget::m_healthLink
    IL_004e:  ldarg.0
    IL_004f:  ldarg.0
    IL_0050:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0055:  ldstr      "HealthValueBar"
    IL_005a:  ldc.i4.1
    IL_005b:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ValueBarWidget>(string,
                                                                                        bool)
    IL_0060:  stfld      class Game.ValueBarWidget Game.VitalStatsWidget::m_healthValueBar
    IL_0065:  ldarg.0
    IL_0066:  ldarg.0
    IL_0067:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_006c:  ldstr      "StaminaLink"
    IL_0071:  ldc.i4.1
    IL_0072:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LinkWidget>(string,
                                                                                    bool)
    IL_0077:  stfld      class Game.LinkWidget Game.VitalStatsWidget::m_staminaLink
    IL_007c:  ldarg.0
    IL_007d:  ldarg.0
    IL_007e:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0083:  ldstr      "StaminaValueBar"
    IL_0088:  ldc.i4.1
    IL_0089:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ValueBarWidget>(string,
                                                                                        bool)
    IL_008e:  stfld      class Game.ValueBarWidget Game.VitalStatsWidget::m_staminaValueBar
    IL_0093:  ldarg.0
    IL_0094:  ldarg.0
    IL_0095:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_009a:  ldstr      "FoodLink"
    IL_009f:  ldc.i4.1
    IL_00a0:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LinkWidget>(string,
                                                                                    bool)
    IL_00a5:  stfld      class Game.LinkWidget Game.VitalStatsWidget::m_foodLink
    IL_00aa:  ldarg.0
    IL_00ab:  ldarg.0
    IL_00ac:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00b1:  ldstr      "FoodValueBar"
    IL_00b6:  ldc.i4.1
    IL_00b7:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ValueBarWidget>(string,
                                                                                        bool)
    IL_00bc:  stfld      class Game.ValueBarWidget Game.VitalStatsWidget::m_foodValueBar
    IL_00c1:  ldarg.0
    IL_00c2:  ldarg.0
    IL_00c3:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00c8:  ldstr      "SleepLink"
    IL_00cd:  ldc.i4.1
    IL_00ce:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LinkWidget>(string,
                                                                                    bool)
    IL_00d3:  stfld      class Game.LinkWidget Game.VitalStatsWidget::m_sleepLink
    IL_00d8:  ldarg.0
    IL_00d9:  ldarg.0
    IL_00da:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00df:  ldstr      "SleepValueBar"
    IL_00e4:  ldc.i4.1
    IL_00e5:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ValueBarWidget>(string,
                                                                                        bool)
    IL_00ea:  stfld      class Game.ValueBarWidget Game.VitalStatsWidget::m_sleepValueBar
    IL_00ef:  ldarg.0
    IL_00f0:  ldarg.0
    IL_00f1:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00f6:  ldstr      "TemperatureLink"
    IL_00fb:  ldc.i4.1
    IL_00fc:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LinkWidget>(string,
                                                                                    bool)
    IL_0101:  stfld      class Game.LinkWidget Game.VitalStatsWidget::m_temperatureLink
    IL_0106:  ldarg.0
    IL_0107:  ldarg.0
    IL_0108:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_010d:  ldstr      "TemperatureValueBar"
    IL_0112:  ldc.i4.1
    IL_0113:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ValueBarWidget>(string,
                                                                                        bool)
    IL_0118:  stfld      class Game.ValueBarWidget Game.VitalStatsWidget::m_temperatureValueBar
    IL_011d:  ldarg.0
    IL_011e:  ldarg.0
    IL_011f:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0124:  ldstr      "WetnessLink"
    IL_0129:  ldc.i4.1
    IL_012a:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LinkWidget>(string,
                                                                                    bool)
    IL_012f:  stfld      class Game.LinkWidget Game.VitalStatsWidget::m_wetnessLink
    IL_0134:  ldarg.0
    IL_0135:  ldarg.0
    IL_0136:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_013b:  ldstr      "WetnessValueBar"
    IL_0140:  ldc.i4.1
    IL_0141:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ValueBarWidget>(string,
                                                                                        bool)
    IL_0146:  stfld      class Game.ValueBarWidget Game.VitalStatsWidget::m_wetnessValueBar
    IL_014b:  ldarg.0
    IL_014c:  ldarg.0
    IL_014d:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0152:  ldstr      "ChokeButton"
    IL_0157:  ldc.i4.1
    IL_0158:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_015d:  stfld      class Game.ButtonWidget Game.VitalStatsWidget::m_chokeButton
    IL_0162:  ldarg.0
    IL_0163:  ldarg.0
    IL_0164:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0169:  ldstr      "StrengthLink"
    IL_016e:  ldc.i4.1
    IL_016f:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LinkWidget>(string,
                                                                                    bool)
    IL_0174:  stfld      class Game.LinkWidget Game.VitalStatsWidget::m_strengthLink
    IL_0179:  ldarg.0
    IL_017a:  ldarg.0
    IL_017b:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0180:  ldstr      "StrengthLabel"
    IL_0185:  ldc.i4.1
    IL_0186:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_018b:  stfld      class Game.LabelWidget Game.VitalStatsWidget::m_strengthLabel
    IL_0190:  ldarg.0
    IL_0191:  ldarg.0
    IL_0192:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0197:  ldstr      "ResilienceLink"
    IL_019c:  ldc.i4.1
    IL_019d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LinkWidget>(string,
                                                                                    bool)
    IL_01a2:  stfld      class Game.LinkWidget Game.VitalStatsWidget::m_resilienceLink
    IL_01a7:  ldarg.0
    IL_01a8:  ldarg.0
    IL_01a9:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_01ae:  ldstr      "ResilienceLabel"
    IL_01b3:  ldc.i4.1
    IL_01b4:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_01b9:  stfld      class Game.LabelWidget Game.VitalStatsWidget::m_resilienceLabel
    IL_01be:  ldarg.0
    IL_01bf:  ldarg.0
    IL_01c0:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_01c5:  ldstr      "SpeedLink"
    IL_01ca:  ldc.i4.1
    IL_01cb:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LinkWidget>(string,
                                                                                    bool)
    IL_01d0:  stfld      class Game.LinkWidget Game.VitalStatsWidget::m_speedLink
    IL_01d5:  ldarg.0
    IL_01d6:  ldarg.0
    IL_01d7:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_01dc:  ldstr      "SpeedLabel"
    IL_01e1:  ldc.i4.1
    IL_01e2:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_01e7:  stfld      class Game.LabelWidget Game.VitalStatsWidget::m_speedLabel
    IL_01ec:  ldarg.0
    IL_01ed:  ldarg.0
    IL_01ee:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_01f3:  ldstr      "HungerLink"
    IL_01f8:  ldc.i4.1
    IL_01f9:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LinkWidget>(string,
                                                                                    bool)
    IL_01fe:  stfld      class Game.LinkWidget Game.VitalStatsWidget::m_hungerLink
    IL_0203:  ldarg.0
    IL_0204:  ldarg.0
    IL_0205:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_020a:  ldstr      "HungerLabel"
    IL_020f:  ldc.i4.1
    IL_0210:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0215:  stfld      class Game.LabelWidget Game.VitalStatsWidget::m_hungerLabel
    IL_021a:  ldarg.0
    IL_021b:  ldarg.0
    IL_021c:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0221:  ldstr      "ExperienceLink"
    IL_0226:  ldc.i4.1
    IL_0227:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LinkWidget>(string,
                                                                                    bool)
    IL_022c:  stfld      class Game.LinkWidget Game.VitalStatsWidget::m_experienceLink
    IL_0231:  ldarg.0
    IL_0232:  ldarg.0
    IL_0233:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0238:  ldstr      "ExperienceValueBar"
    IL_023d:  ldc.i4.1
    IL_023e:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ValueBarWidget>(string,
                                                                                        bool)
    IL_0243:  stfld      class Game.ValueBarWidget Game.VitalStatsWidget::m_experienceValueBar
    IL_0248:  ldarg.0
    IL_0249:  ldarg.0
    IL_024a:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_024f:  ldstr      "InsulationLink"
    IL_0254:  ldc.i4.1
    IL_0255:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LinkWidget>(string,
                                                                                    bool)
    IL_025a:  stfld      class Game.LinkWidget Game.VitalStatsWidget::m_insulationLink
    IL_025f:  ldarg.0
    IL_0260:  ldarg.0
    IL_0261:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0266:  ldstr      "InsulationLabel"
    IL_026b:  ldc.i4.1
    IL_026c:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0271:  stfld      class Game.LabelWidget Game.VitalStatsWidget::m_insulationLabel
    IL_0276:  ret
  } // end of method VitalStatsWidget::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       1709 (0x6ad)
    .maxstack  7
    .locals init (valuetype Game.PlayerClass V_0,
             class Game.HelpTopic V_1,
             class Game.HelpTopic V_2,
             class Game.HelpTopic V_3,
             class Game.HelpTopic V_4,
             class Game.HelpTopic V_5,
             class Game.HelpTopic V_6,
             class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ComponentLevel/Factor> V_7,
             float32 V_8,
             class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ComponentLevel/Factor> V_9,
             float32 V_10,
             class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ComponentLevel/Factor> V_11,
             float32 V_12,
             class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ComponentLevel/Factor> V_13,
             float32 V_14,
             class Game.HelpTopic V_15,
             class Game.HelpTopic V_16)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.VitalStatsWidget::m_titleLabel
    IL_0006:  ldstr      "{0}, Level {1} {2}"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [System.Runtime]System.Object
    IL_0011:  dup
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.0
    IL_0014:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_0019:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_001e:  callvirt   instance string Game.PlayerData::get_Name()
    IL_0023:  stelem.ref
    IL_0024:  dup
    IL_0025:  ldc.i4.1
    IL_0026:  ldarg.0
    IL_0027:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_002c:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_0031:  callvirt   instance float32 Game.PlayerData::get_Level()
    IL_0036:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_003b:  box        [System.Runtime]System.Single
    IL_0040:  stelem.ref
    IL_0041:  dup
    IL_0042:  ldc.i4.2
    IL_0043:  ldarg.0
    IL_0044:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_0049:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_004e:  callvirt   instance valuetype Game.PlayerClass Game.PlayerData::get_PlayerClass()
    IL_0053:  stloc.0
    IL_0054:  ldloca.s   V_0
    IL_0056:  constrained. Game.PlayerClass
    IL_005c:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0061:  stelem.ref
    IL_0062:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0067:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_006c:  ldarg.0
    IL_006d:  ldfld      class Game.ValueBarWidget Game.VitalStatsWidget::m_healthValueBar
    IL_0072:  ldarg.0
    IL_0073:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_0078:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_007d:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_0082:  callvirt   instance void Game.ValueBarWidget::set_Value(float32)
    IL_0087:  ldarg.0
    IL_0088:  ldfld      class Game.ValueBarWidget Game.VitalStatsWidget::m_staminaValueBar
    IL_008d:  ldarg.0
    IL_008e:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_0093:  callvirt   instance class Game.ComponentVitalStats Game.ComponentPlayer::get_ComponentVitalStats()
    IL_0098:  callvirt   instance float32 Game.ComponentVitalStats::get_Stamina()
    IL_009d:  callvirt   instance void Game.ValueBarWidget::set_Value(float32)
    IL_00a2:  ldarg.0
    IL_00a3:  ldfld      class Game.ValueBarWidget Game.VitalStatsWidget::m_foodValueBar
    IL_00a8:  ldarg.0
    IL_00a9:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_00ae:  callvirt   instance class Game.ComponentVitalStats Game.ComponentPlayer::get_ComponentVitalStats()
    IL_00b3:  callvirt   instance float32 Game.ComponentVitalStats::get_Food()
    IL_00b8:  callvirt   instance void Game.ValueBarWidget::set_Value(float32)
    IL_00bd:  ldarg.0
    IL_00be:  ldfld      class Game.ValueBarWidget Game.VitalStatsWidget::m_sleepValueBar
    IL_00c3:  ldarg.0
    IL_00c4:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_00c9:  callvirt   instance class Game.ComponentVitalStats Game.ComponentPlayer::get_ComponentVitalStats()
    IL_00ce:  callvirt   instance float32 Game.ComponentVitalStats::get_Sleep()
    IL_00d3:  callvirt   instance void Game.ValueBarWidget::set_Value(float32)
    IL_00d8:  ldarg.0
    IL_00d9:  ldfld      class Game.ValueBarWidget Game.VitalStatsWidget::m_temperatureValueBar
    IL_00de:  ldarg.0
    IL_00df:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_00e4:  callvirt   instance class Game.ComponentVitalStats Game.ComponentPlayer::get_ComponentVitalStats()
    IL_00e9:  callvirt   instance float32 Game.ComponentVitalStats::get_Temperature()
    IL_00ee:  ldc.r4     24.
    IL_00f3:  div
    IL_00f4:  callvirt   instance void Game.ValueBarWidget::set_Value(float32)
    IL_00f9:  ldarg.0
    IL_00fa:  ldfld      class Game.ValueBarWidget Game.VitalStatsWidget::m_wetnessValueBar
    IL_00ff:  ldarg.0
    IL_0100:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_0105:  callvirt   instance class Game.ComponentVitalStats Game.ComponentPlayer::get_ComponentVitalStats()
    IL_010a:  callvirt   instance float32 Game.ComponentVitalStats::get_Wetness()
    IL_010f:  callvirt   instance void Game.ValueBarWidget::set_Value(float32)
    IL_0114:  ldarg.0
    IL_0115:  ldfld      class Game.ValueBarWidget Game.VitalStatsWidget::m_experienceValueBar
    IL_011a:  ldarg.0
    IL_011b:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_0120:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_0125:  callvirt   instance float32 Game.PlayerData::get_Level()
    IL_012a:  ldarg.0
    IL_012b:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_0130:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_0135:  callvirt   instance float32 Game.PlayerData::get_Level()
    IL_013a:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_013f:  sub
    IL_0140:  callvirt   instance void Game.ValueBarWidget::set_Value(float32)
    IL_0145:  ldarg.0
    IL_0146:  ldfld      class Game.LabelWidget Game.VitalStatsWidget::m_strengthLabel
    IL_014b:  ldstr      "x {0:0.00}"
    IL_0150:  ldc.i4.1
    IL_0151:  newarr     [System.Runtime]System.Object
    IL_0156:  dup
    IL_0157:  ldc.i4.0
    IL_0158:  ldarg.0
    IL_0159:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_015e:  callvirt   instance class Game.ComponentLevel Game.ComponentPlayer::get_ComponentLevel()
    IL_0163:  callvirt   instance float32 Game.ComponentLevel::get_StrengthFactor()
    IL_0168:  box        [System.Runtime]System.Single
    IL_016d:  stelem.ref
    IL_016e:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0173:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0178:  ldarg.0
    IL_0179:  ldfld      class Game.LabelWidget Game.VitalStatsWidget::m_resilienceLabel
    IL_017e:  ldstr      "x {0:0.00}"
    IL_0183:  ldc.i4.1
    IL_0184:  newarr     [System.Runtime]System.Object
    IL_0189:  dup
    IL_018a:  ldc.i4.0
    IL_018b:  ldarg.0
    IL_018c:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_0191:  callvirt   instance class Game.ComponentLevel Game.ComponentPlayer::get_ComponentLevel()
    IL_0196:  callvirt   instance float32 Game.ComponentLevel::get_ResilienceFactor()
    IL_019b:  box        [System.Runtime]System.Single
    IL_01a0:  stelem.ref
    IL_01a1:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_01a6:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_01ab:  ldarg.0
    IL_01ac:  ldfld      class Game.LabelWidget Game.VitalStatsWidget::m_speedLabel
    IL_01b1:  ldstr      "x {0:0.00}"
    IL_01b6:  ldc.i4.1
    IL_01b7:  newarr     [System.Runtime]System.Object
    IL_01bc:  dup
    IL_01bd:  ldc.i4.0
    IL_01be:  ldarg.0
    IL_01bf:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_01c4:  callvirt   instance class Game.ComponentLevel Game.ComponentPlayer::get_ComponentLevel()
    IL_01c9:  callvirt   instance float32 Game.ComponentLevel::get_SpeedFactor()
    IL_01ce:  box        [System.Runtime]System.Single
    IL_01d3:  stelem.ref
    IL_01d4:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_01d9:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_01de:  ldarg.0
    IL_01df:  ldfld      class Game.LabelWidget Game.VitalStatsWidget::m_hungerLabel
    IL_01e4:  ldstr      "x {0:0.00}"
    IL_01e9:  ldc.i4.1
    IL_01ea:  newarr     [System.Runtime]System.Object
    IL_01ef:  dup
    IL_01f0:  ldc.i4.0
    IL_01f1:  ldarg.0
    IL_01f2:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_01f7:  callvirt   instance class Game.ComponentLevel Game.ComponentPlayer::get_ComponentLevel()
    IL_01fc:  callvirt   instance float32 Game.ComponentLevel::get_HungerFactor()
    IL_0201:  box        [System.Runtime]System.Single
    IL_0206:  stelem.ref
    IL_0207:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_020c:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0211:  ldarg.0
    IL_0212:  ldfld      class Game.LabelWidget Game.VitalStatsWidget::m_insulationLabel
    IL_0217:  ldstr      "{0:0.00} clo"
    IL_021c:  ldc.i4.1
    IL_021d:  newarr     [System.Runtime]System.Object
    IL_0222:  dup
    IL_0223:  ldc.i4.0
    IL_0224:  ldarg.0
    IL_0225:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_022a:  callvirt   instance class Game.ComponentClothing Game.ComponentPlayer::get_ComponentClothing()
    IL_022f:  callvirt   instance float32 Game.ComponentClothing::get_Insulation()
    IL_0234:  box        [System.Runtime]System.Single
    IL_0239:  stelem.ref
    IL_023a:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_023f:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0244:  ldarg.0
    IL_0245:  ldfld      class Game.LinkWidget Game.VitalStatsWidget::m_healthLink
    IL_024a:  callvirt   instance bool Game.LinkWidget::get_IsClicked()
    IL_024f:  brfalse.s  IL_02a2

    IL_0251:  ldstr      "Help"
    IL_0256:  call       !!0 Game.ScreensManager::FindScreen<class Game.HelpScreen>(string)
    IL_025b:  ldstr      "Health"
    IL_0260:  callvirt   instance class Game.HelpTopic Game.HelpScreen::GetTopic(string)
    IL_0265:  stloc.1
    IL_0266:  ldarg.0
    IL_0267:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_026c:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_0271:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_0276:  ldloc.1
    IL_0277:  ldfld      string Game.HelpTopic::Title
    IL_027c:  ldloc.1
    IL_027d:  ldfld      string Game.HelpTopic::Text
    IL_0282:  ldstr      "OK"
    IL_0287:  ldnull
    IL_0288:  ldc.r4     700.
    IL_028d:  ldc.r4     360.
    IL_0292:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0297:  ldnull
    IL_0298:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 valuetype [Engine]Engine.Vector2,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_029d:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_02a2:  ldarg.0
    IL_02a3:  ldfld      class Game.LinkWidget Game.VitalStatsWidget::m_staminaLink
    IL_02a8:  callvirt   instance bool Game.LinkWidget::get_IsClicked()
    IL_02ad:  brfalse.s  IL_0300

    IL_02af:  ldstr      "Help"
    IL_02b4:  call       !!0 Game.ScreensManager::FindScreen<class Game.HelpScreen>(string)
    IL_02b9:  ldstr      "Stamina"
    IL_02be:  callvirt   instance class Game.HelpTopic Game.HelpScreen::GetTopic(string)
    IL_02c3:  stloc.2
    IL_02c4:  ldarg.0
    IL_02c5:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_02ca:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_02cf:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_02d4:  ldloc.2
    IL_02d5:  ldfld      string Game.HelpTopic::Title
    IL_02da:  ldloc.2
    IL_02db:  ldfld      string Game.HelpTopic::Text
    IL_02e0:  ldstr      "OK"
    IL_02e5:  ldnull
    IL_02e6:  ldc.r4     700.
    IL_02eb:  ldc.r4     360.
    IL_02f0:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02f5:  ldnull
    IL_02f6:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 valuetype [Engine]Engine.Vector2,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_02fb:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_0300:  ldarg.0
    IL_0301:  ldfld      class Game.LinkWidget Game.VitalStatsWidget::m_foodLink
    IL_0306:  callvirt   instance bool Game.LinkWidget::get_IsClicked()
    IL_030b:  brfalse.s  IL_035e

    IL_030d:  ldstr      "Help"
    IL_0312:  call       !!0 Game.ScreensManager::FindScreen<class Game.HelpScreen>(string)
    IL_0317:  ldstr      "Hunger"
    IL_031c:  callvirt   instance class Game.HelpTopic Game.HelpScreen::GetTopic(string)
    IL_0321:  stloc.3
    IL_0322:  ldarg.0
    IL_0323:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_0328:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_032d:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_0332:  ldloc.3
    IL_0333:  ldfld      string Game.HelpTopic::Title
    IL_0338:  ldloc.3
    IL_0339:  ldfld      string Game.HelpTopic::Text
    IL_033e:  ldstr      "OK"
    IL_0343:  ldnull
    IL_0344:  ldc.r4     700.
    IL_0349:  ldc.r4     360.
    IL_034e:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0353:  ldnull
    IL_0354:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 valuetype [Engine]Engine.Vector2,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_0359:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_035e:  ldarg.0
    IL_035f:  ldfld      class Game.LinkWidget Game.VitalStatsWidget::m_sleepLink
    IL_0364:  callvirt   instance bool Game.LinkWidget::get_IsClicked()
    IL_0369:  brfalse.s  IL_03bf

    IL_036b:  ldstr      "Help"
    IL_0370:  call       !!0 Game.ScreensManager::FindScreen<class Game.HelpScreen>(string)
    IL_0375:  ldstr      "Sleep"
    IL_037a:  callvirt   instance class Game.HelpTopic Game.HelpScreen::GetTopic(string)
    IL_037f:  stloc.s    V_4
    IL_0381:  ldarg.0
    IL_0382:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_0387:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_038c:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_0391:  ldloc.s    V_4
    IL_0393:  ldfld      string Game.HelpTopic::Title
    IL_0398:  ldloc.s    V_4
    IL_039a:  ldfld      string Game.HelpTopic::Text
    IL_039f:  ldstr      "OK"
    IL_03a4:  ldnull
    IL_03a5:  ldc.r4     700.
    IL_03aa:  ldc.r4     360.
    IL_03af:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03b4:  ldnull
    IL_03b5:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 valuetype [Engine]Engine.Vector2,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_03ba:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_03bf:  ldarg.0
    IL_03c0:  ldfld      class Game.LinkWidget Game.VitalStatsWidget::m_temperatureLink
    IL_03c5:  callvirt   instance bool Game.LinkWidget::get_IsClicked()
    IL_03ca:  brfalse.s  IL_0420

    IL_03cc:  ldstr      "Help"
    IL_03d1:  call       !!0 Game.ScreensManager::FindScreen<class Game.HelpScreen>(string)
    IL_03d6:  ldstr      "Temperature"
    IL_03db:  callvirt   instance class Game.HelpTopic Game.HelpScreen::GetTopic(string)
    IL_03e0:  stloc.s    V_5
    IL_03e2:  ldarg.0
    IL_03e3:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_03e8:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_03ed:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_03f2:  ldloc.s    V_5
    IL_03f4:  ldfld      string Game.HelpTopic::Title
    IL_03f9:  ldloc.s    V_5
    IL_03fb:  ldfld      string Game.HelpTopic::Text
    IL_0400:  ldstr      "OK"
    IL_0405:  ldnull
    IL_0406:  ldc.r4     700.
    IL_040b:  ldc.r4     360.
    IL_0410:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0415:  ldnull
    IL_0416:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 valuetype [Engine]Engine.Vector2,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_041b:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_0420:  ldarg.0
    IL_0421:  ldfld      class Game.LinkWidget Game.VitalStatsWidget::m_wetnessLink
    IL_0426:  callvirt   instance bool Game.LinkWidget::get_IsClicked()
    IL_042b:  brfalse.s  IL_0481

    IL_042d:  ldstr      "Help"
    IL_0432:  call       !!0 Game.ScreensManager::FindScreen<class Game.HelpScreen>(string)
    IL_0437:  ldstr      "Wetness"
    IL_043c:  callvirt   instance class Game.HelpTopic Game.HelpScreen::GetTopic(string)
    IL_0441:  stloc.s    V_6
    IL_0443:  ldarg.0
    IL_0444:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_0449:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_044e:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_0453:  ldloc.s    V_6
    IL_0455:  ldfld      string Game.HelpTopic::Title
    IL_045a:  ldloc.s    V_6
    IL_045c:  ldfld      string Game.HelpTopic::Text
    IL_0461:  ldstr      "OK"
    IL_0466:  ldnull
    IL_0467:  ldc.r4     700.
    IL_046c:  ldc.r4     360.
    IL_0471:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0476:  ldnull
    IL_0477:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 valuetype [Engine]Engine.Vector2,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_047c:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_0481:  ldarg.0
    IL_0482:  ldfld      class Game.LinkWidget Game.VitalStatsWidget::m_strengthLink
    IL_0487:  callvirt   instance bool Game.LinkWidget::get_IsClicked()
    IL_048c:  brfalse.s  IL_04d1

    IL_048e:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ComponentLevel/Factor>::.ctor()
    IL_0493:  stloc.s    V_7
    IL_0495:  ldarg.0
    IL_0496:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_049b:  callvirt   instance class Game.ComponentLevel Game.ComponentPlayer::get_ComponentLevel()
    IL_04a0:  ldloc.s    V_7
    IL_04a2:  callvirt   instance float32 Game.ComponentLevel::CalculateStrengthFactor(class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor>)
    IL_04a7:  stloc.s    V_8
    IL_04a9:  ldarg.0
    IL_04aa:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_04af:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_04b4:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_04b9:  ldstr      "Strength"
    IL_04be:  ldstr      "Affects melee attack power, digging speed, throwin"
    + "g range, and bow range."
    IL_04c3:  ldloc.s    V_7
    IL_04c5:  ldloc.s    V_8
    IL_04c7:  newobj     instance void Game.LevelFactorDialog::.ctor(string,
                                                                     string,
                                                                     class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype Game.ComponentLevel/Factor>,
                                                                     float32)
    IL_04cc:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_04d1:  ldarg.0
    IL_04d2:  ldfld      class Game.LinkWidget Game.VitalStatsWidget::m_resilienceLink
    IL_04d7:  callvirt   instance bool Game.LinkWidget::get_IsClicked()
    IL_04dc:  brfalse.s  IL_0521

    IL_04de:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ComponentLevel/Factor>::.ctor()
    IL_04e3:  stloc.s    V_9
    IL_04e5:  ldarg.0
    IL_04e6:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_04eb:  callvirt   instance class Game.ComponentLevel Game.ComponentPlayer::get_ComponentLevel()
    IL_04f0:  ldloc.s    V_9
    IL_04f2:  callvirt   instance float32 Game.ComponentLevel::CalculateResilienceFactor(class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor>)
    IL_04f7:  stloc.s    V_10
    IL_04f9:  ldarg.0
    IL_04fa:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_04ff:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_0504:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_0509:  ldstr      "Resilience"
    IL_050e:  ldstr      "Affects damage received from attacks, falls, fire,"
    + " and asphyxiation."
    IL_0513:  ldloc.s    V_9
    IL_0515:  ldloc.s    V_10
    IL_0517:  newobj     instance void Game.LevelFactorDialog::.ctor(string,
                                                                     string,
                                                                     class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype Game.ComponentLevel/Factor>,
                                                                     float32)
    IL_051c:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_0521:  ldarg.0
    IL_0522:  ldfld      class Game.LinkWidget Game.VitalStatsWidget::m_speedLink
    IL_0527:  callvirt   instance bool Game.LinkWidget::get_IsClicked()
    IL_052c:  brfalse.s  IL_0571

    IL_052e:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ComponentLevel/Factor>::.ctor()
    IL_0533:  stloc.s    V_11
    IL_0535:  ldarg.0
    IL_0536:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_053b:  callvirt   instance class Game.ComponentLevel Game.ComponentPlayer::get_ComponentLevel()
    IL_0540:  ldloc.s    V_11
    IL_0542:  callvirt   instance float32 Game.ComponentLevel::CalculateSpeedFactor(class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor>)
    IL_0547:  stloc.s    V_12
    IL_0549:  ldarg.0
    IL_054a:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_054f:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_0554:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_0559:  ldstr      "Speed"
    IL_055e:  ldstr      "Affects movement speed on foot, swimming speed, ju"
    + "mp height, stamina regeneration and melee weapons hit probability."
    IL_0563:  ldloc.s    V_11
    IL_0565:  ldloc.s    V_12
    IL_0567:  newobj     instance void Game.LevelFactorDialog::.ctor(string,
                                                                     string,
                                                                     class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype Game.ComponentLevel/Factor>,
                                                                     float32)
    IL_056c:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_0571:  ldarg.0
    IL_0572:  ldfld      class Game.LinkWidget Game.VitalStatsWidget::m_hungerLink
    IL_0577:  callvirt   instance bool Game.LinkWidget::get_IsClicked()
    IL_057c:  brfalse.s  IL_05c1

    IL_057e:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.ComponentLevel/Factor>::.ctor()
    IL_0583:  stloc.s    V_13
    IL_0585:  ldarg.0
    IL_0586:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_058b:  callvirt   instance class Game.ComponentLevel Game.ComponentPlayer::get_ComponentLevel()
    IL_0590:  ldloc.s    V_13
    IL_0592:  callvirt   instance float32 Game.ComponentLevel::CalculateHungerFactor(class [System.Runtime]System.Collections.Generic.ICollection`1<valuetype Game.ComponentLevel/Factor>)
    IL_0597:  stloc.s    V_14
    IL_0599:  ldarg.0
    IL_059a:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_059f:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_05a4:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_05a9:  ldstr      "Hunger"
    IL_05ae:  ldstr      "Affects how quickly eaten food is depleted."
    IL_05b3:  ldloc.s    V_13
    IL_05b5:  ldloc.s    V_14
    IL_05b7:  newobj     instance void Game.LevelFactorDialog::.ctor(string,
                                                                     string,
                                                                     class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype Game.ComponentLevel/Factor>,
                                                                     float32)
    IL_05bc:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_05c1:  ldarg.0
    IL_05c2:  ldfld      class Game.LinkWidget Game.VitalStatsWidget::m_experienceLink
    IL_05c7:  callvirt   instance bool Game.LinkWidget::get_IsClicked()
    IL_05cc:  brfalse.s  IL_0622

    IL_05ce:  ldstr      "Help"
    IL_05d3:  call       !!0 Game.ScreensManager::FindScreen<class Game.HelpScreen>(string)
    IL_05d8:  ldstr      "Levels"
    IL_05dd:  callvirt   instance class Game.HelpTopic Game.HelpScreen::GetTopic(string)
    IL_05e2:  stloc.s    V_15
    IL_05e4:  ldarg.0
    IL_05e5:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_05ea:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_05ef:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_05f4:  ldloc.s    V_15
    IL_05f6:  ldfld      string Game.HelpTopic::Title
    IL_05fb:  ldloc.s    V_15
    IL_05fd:  ldfld      string Game.HelpTopic::Text
    IL_0602:  ldstr      "OK"
    IL_0607:  ldnull
    IL_0608:  ldc.r4     700.
    IL_060d:  ldc.r4     360.
    IL_0612:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0617:  ldnull
    IL_0618:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 valuetype [Engine]Engine.Vector2,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_061d:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_0622:  ldarg.0
    IL_0623:  ldfld      class Game.LinkWidget Game.VitalStatsWidget::m_insulationLink
    IL_0628:  callvirt   instance bool Game.LinkWidget::get_IsClicked()
    IL_062d:  brfalse.s  IL_0683

    IL_062f:  ldstr      "Help"
    IL_0634:  call       !!0 Game.ScreensManager::FindScreen<class Game.HelpScreen>(string)
    IL_0639:  ldstr      "Clothing"
    IL_063e:  callvirt   instance class Game.HelpTopic Game.HelpScreen::GetTopic(string)
    IL_0643:  stloc.s    V_16
    IL_0645:  ldarg.0
    IL_0646:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_064b:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_0650:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_0655:  ldloc.s    V_16
    IL_0657:  ldfld      string Game.HelpTopic::Title
    IL_065c:  ldloc.s    V_16
    IL_065e:  ldfld      string Game.HelpTopic::Text
    IL_0663:  ldstr      "OK"
    IL_0668:  ldnull
    IL_0669:  ldc.r4     700.
    IL_066e:  ldc.r4     360.
    IL_0673:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0678:  ldnull
    IL_0679:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                 string,
                                                                 string,
                                                                 string,
                                                                 valuetype [Engine]Engine.Vector2,
                                                                 class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
    IL_067e:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_0683:  ldarg.0
    IL_0684:  ldfld      class Game.ButtonWidget Game.VitalStatsWidget::m_chokeButton
    IL_0689:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_068e:  brfalse.s  IL_06ac

    IL_0690:  ldarg.0
    IL_0691:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_0696:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_069b:  ldc.r4     0.1
    IL_06a0:  ldnull
    IL_06a1:  ldc.i4.1
    IL_06a2:  ldstr      "Choked"
    IL_06a7:  callvirt   instance void Game.ComponentHealth::Injure(float32,
                                                                    class Game.ComponentCreature,
                                                                    bool,
                                                                    string)
    IL_06ac:  ret
  } // end of method VitalStatsWidget::Update

} // end of class Game.VitalStatsWidget