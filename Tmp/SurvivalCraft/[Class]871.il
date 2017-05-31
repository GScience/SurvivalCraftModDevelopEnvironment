.class public auto ansi beforefieldinit Game.VitalStatsWidget
       extends Game.CanvasWidget
{
  .field private class Game.ComponentPlayer m_componentPlayer
  .field private class Game.ButtonWidget m_chokeButton
  .field private class Game.ValueBarWidget m_healthValueBar
  .field private class Game.ValueBarWidget m_staminaValueBar
  .field private class Game.ValueBarWidget m_foodValueBar
  .field private class Game.ValueBarWidget m_airValueBar
  .field private class Game.ValueBarWidget m_temperatureValueBar
  .field private class Game.ValueBarWidget m_wetnessValueBar
  .field private class Game.LabelWidget m_movementSpeedLabel
  .field private class Game.LabelWidget m_insulationLabel
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.ComponentPlayer componentPlayer) cil managed
  {
    // 代码大小       240 (0xf0)
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
    IL_0022:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0027:  ldstr      "HealthValueBar"
    IL_002c:  ldc.i4.1
    IL_002d:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ValueBarWidget>(string,
                                                                                             bool)
    IL_0032:  stfld      class Game.ValueBarWidget Game.VitalStatsWidget::m_healthValueBar
    IL_0037:  ldarg.0
    IL_0038:  ldarg.0
    IL_0039:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_003e:  ldstr      "StaminaValueBar"
    IL_0043:  ldc.i4.1
    IL_0044:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ValueBarWidget>(string,
                                                                                             bool)
    IL_0049:  stfld      class Game.ValueBarWidget Game.VitalStatsWidget::m_staminaValueBar
    IL_004e:  ldarg.0
    IL_004f:  ldarg.0
    IL_0050:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0055:  ldstr      "FoodValueBar"
    IL_005a:  ldc.i4.1
    IL_005b:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ValueBarWidget>(string,
                                                                                             bool)
    IL_0060:  stfld      class Game.ValueBarWidget Game.VitalStatsWidget::m_foodValueBar
    IL_0065:  ldarg.0
    IL_0066:  ldarg.0
    IL_0067:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_006c:  ldstr      "AirValueBar"
    IL_0071:  ldc.i4.1
    IL_0072:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ValueBarWidget>(string,
                                                                                             bool)
    IL_0077:  stfld      class Game.ValueBarWidget Game.VitalStatsWidget::m_airValueBar
    IL_007c:  ldarg.0
    IL_007d:  ldarg.0
    IL_007e:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0083:  ldstr      "TemperatureValueBar"
    IL_0088:  ldc.i4.1
    IL_0089:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ValueBarWidget>(string,
                                                                                             bool)
    IL_008e:  stfld      class Game.ValueBarWidget Game.VitalStatsWidget::m_temperatureValueBar
    IL_0093:  ldarg.0
    IL_0094:  ldarg.0
    IL_0095:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_009a:  ldstr      "WetnessValueBar"
    IL_009f:  ldc.i4.1
    IL_00a0:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ValueBarWidget>(string,
                                                                                             bool)
    IL_00a5:  stfld      class Game.ValueBarWidget Game.VitalStatsWidget::m_wetnessValueBar
    IL_00aa:  ldarg.0
    IL_00ab:  ldarg.0
    IL_00ac:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00b1:  ldstr      "ChokeButton"
    IL_00b6:  ldc.i4.1
    IL_00b7:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00bc:  stfld      class Game.ButtonWidget Game.VitalStatsWidget::m_chokeButton
    IL_00c1:  ldarg.0
    IL_00c2:  ldarg.0
    IL_00c3:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00c8:  ldstr      "MovementSpeedLabel"
    IL_00cd:  ldc.i4.1
    IL_00ce:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_00d3:  stfld      class Game.LabelWidget Game.VitalStatsWidget::m_movementSpeedLabel
    IL_00d8:  ldarg.0
    IL_00d9:  ldarg.0
    IL_00da:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00df:  ldstr      "InsulationLabel"
    IL_00e4:  ldc.i4.1
    IL_00e5:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_00ea:  stfld      class Game.LabelWidget Game.VitalStatsWidget::m_insulationLabel
    IL_00ef:  ret
  } // end of method VitalStatsWidget::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       318 (0x13e)
    .maxstack  7
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ButtonWidget Game.VitalStatsWidget::m_chokeButton
    IL_0006:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_000b:  brfalse.s  IL_0029

    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_0013:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0018:  ldc.r4     0.1
    IL_001d:  ldnull
    IL_001e:  ldc.i4.1
    IL_001f:  ldstr      "Choked"
    IL_0024:  callvirt   instance void Game.ComponentHealth::Injure(float32,
                                                                    class Game.ComponentCreature,
                                                                    bool,
                                                                    string)
    IL_0029:  ldarg.0
    IL_002a:  ldfld      class Game.ValueBarWidget Game.VitalStatsWidget::m_healthValueBar
    IL_002f:  ldarg.0
    IL_0030:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_0035:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_003a:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_003f:  callvirt   instance void Game.ValueBarWidget::set_Value(float32)
    IL_0044:  ldarg.0
    IL_0045:  ldfld      class Game.ValueBarWidget Game.VitalStatsWidget::m_staminaValueBar
    IL_004a:  ldarg.0
    IL_004b:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_0050:  callvirt   instance class Game.ComponentVitalStats Game.ComponentPlayer::get_ComponentVitalStats()
    IL_0055:  callvirt   instance float32 Game.ComponentVitalStats::get_Stamina()
    IL_005a:  callvirt   instance void Game.ValueBarWidget::set_Value(float32)
    IL_005f:  ldarg.0
    IL_0060:  ldfld      class Game.ValueBarWidget Game.VitalStatsWidget::m_foodValueBar
    IL_0065:  ldarg.0
    IL_0066:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_006b:  callvirt   instance class Game.ComponentVitalStats Game.ComponentPlayer::get_ComponentVitalStats()
    IL_0070:  callvirt   instance float32 Game.ComponentVitalStats::get_Food()
    IL_0075:  callvirt   instance void Game.ValueBarWidget::set_Value(float32)
    IL_007a:  ldarg.0
    IL_007b:  ldfld      class Game.ValueBarWidget Game.VitalStatsWidget::m_airValueBar
    IL_0080:  ldarg.0
    IL_0081:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_0086:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_008b:  callvirt   instance float32 Game.ComponentHealth::get_Air()
    IL_0090:  callvirt   instance void Game.ValueBarWidget::set_Value(float32)
    IL_0095:  ldarg.0
    IL_0096:  ldfld      class Game.ValueBarWidget Game.VitalStatsWidget::m_temperatureValueBar
    IL_009b:  ldarg.0
    IL_009c:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_00a1:  callvirt   instance class Game.ComponentVitalStats Game.ComponentPlayer::get_ComponentVitalStats()
    IL_00a6:  callvirt   instance float32 Game.ComponentVitalStats::get_Temperature()
    IL_00ab:  ldc.r4     24.
    IL_00b0:  div
    IL_00b1:  callvirt   instance void Game.ValueBarWidget::set_Value(float32)
    IL_00b6:  ldarg.0
    IL_00b7:  ldfld      class Game.ValueBarWidget Game.VitalStatsWidget::m_wetnessValueBar
    IL_00bc:  ldarg.0
    IL_00bd:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_00c2:  callvirt   instance class Game.ComponentVitalStats Game.ComponentPlayer::get_ComponentVitalStats()
    IL_00c7:  callvirt   instance float32 Game.ComponentVitalStats::get_Wetness()
    IL_00cc:  callvirt   instance void Game.ValueBarWidget::set_Value(float32)
    IL_00d1:  ldarg.0
    IL_00d2:  ldfld      class Game.LabelWidget Game.VitalStatsWidget::m_movementSpeedLabel
    IL_00d7:  ldstr      "{0:0}%"
    IL_00dc:  ldc.i4.1
    IL_00dd:  newarr     [System.Runtime]System.Object
    IL_00e2:  dup
    IL_00e3:  ldc.i4.0
    IL_00e4:  ldarg.0
    IL_00e5:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_00ea:  callvirt   instance class Game.ComponentClothing Game.ComponentPlayer::get_ComponentClothing()
    IL_00ef:  callvirt   instance float32 Game.ComponentClothing::get_MovementSpeedFactor()
    IL_00f4:  ldc.r4     100.
    IL_00f9:  mul
    IL_00fa:  box        [System.Runtime]System.Single
    IL_00ff:  stelem.ref
    IL_0100:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0105:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_010a:  ldarg.0
    IL_010b:  ldfld      class Game.LabelWidget Game.VitalStatsWidget::m_insulationLabel
    IL_0110:  ldstr      "{0:0.00} clo"
    IL_0115:  ldc.i4.1
    IL_0116:  newarr     [System.Runtime]System.Object
    IL_011b:  dup
    IL_011c:  ldc.i4.0
    IL_011d:  ldarg.0
    IL_011e:  ldfld      class Game.ComponentPlayer Game.VitalStatsWidget::m_componentPlayer
    IL_0123:  callvirt   instance class Game.ComponentClothing Game.ComponentPlayer::get_ComponentClothing()
    IL_0128:  callvirt   instance float32 Game.ComponentClothing::get_Insulation()
    IL_012d:  box        [System.Runtime]System.Single
    IL_0132:  stelem.ref
    IL_0133:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0138:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_013d:  ret
  } // end of method VitalStatsWidget::Update

} // end of class Game.VitalStatsWidget