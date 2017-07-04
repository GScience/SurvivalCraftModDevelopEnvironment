.class public auto ansi beforefieldinit Game.MainMenuScreen
       extends Game.Screen
{
  .field private string m_versionString
  .field private bool m_versionStringTrial
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  3
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0006:  stfld      string Game.MainMenuScreen::m_versionString
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.Screen::.ctor()
    IL_0011:  ldstr      "Screens/MainMenuScreen"
    IL_0016:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_001b:  stloc.0
    IL_001c:  ldarg.0
    IL_001d:  ldarg.0
    IL_001e:  ldloc.0
    IL_001f:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0024:  ret
  } // end of method MainMenuScreen::.ctor

  .method public hidebysig virtual instance void 
          Enter(object[] parameters) cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0006:  ldc.i4.1
    IL_0007:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.MotdWidget>(bool)
    IL_000c:  callvirt   instance void Game.MotdWidget::Restart()
    IL_0011:  ret
  } // end of method MainMenuScreen::Enter

  .method public hidebysig virtual instance void 
          Leave() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  call       void [Engine]Engine.Input.Keyboard::set_BackButtonQuitsApp(bool)
    IL_0006:  ret
  } // end of method MainMenuScreen::Leave

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       607 (0x25f)
    .maxstack  6
    .locals init (class Game.RectangleWidget V_0,
             float32 V_1)
    IL_0000:  call       bool Game.MarketplaceManager::get_IsTrialMode()
    IL_0005:  ldc.i4.0
    IL_0006:  ceq
    IL_0008:  call       void [Engine]Engine.Input.Keyboard::set_BackButtonQuitsApp(bool)
    IL_000d:  ldarg.0
    IL_000e:  ldfld      string Game.MainMenuScreen::m_versionString
    IL_0013:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0018:  brtrue.s   IL_0027

    IL_001a:  call       bool Game.MarketplaceManager::get_IsTrialMode()
    IL_001f:  ldarg.0
    IL_0020:  ldfld      bool Game.MainMenuScreen::m_versionStringTrial
    IL_0025:  beq.s      IL_0066

    IL_0027:  ldarg.0
    IL_0028:  ldstr      "Version {0}{1}"
    IL_002d:  ldc.i4.2
    IL_002e:  newarr     [System.Runtime]System.Object
    IL_0033:  dup
    IL_0034:  ldc.i4.0
    IL_0035:  call       string Game.VersionsManager::get_Version()
    IL_003a:  stelem.ref
    IL_003b:  dup
    IL_003c:  ldc.i4.1
    IL_003d:  call       bool Game.MarketplaceManager::get_IsTrialMode()
    IL_0042:  brtrue.s   IL_004b

    IL_0044:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0049:  br.s       IL_0050

    IL_004b:  ldstr      " (Demo)"
    IL_0050:  stelem.ref
    IL_0051:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0056:  stfld      string Game.MainMenuScreen::m_versionString
    IL_005b:  ldarg.0
    IL_005c:  call       bool Game.MarketplaceManager::get_IsTrialMode()
    IL_0061:  stfld      bool Game.MainMenuScreen::m_versionStringTrial
    IL_0066:  ldarg.0
    IL_0067:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_006c:  ldstr      "Buy"
    IL_0071:  ldc.i4.1
    IL_0072:  callvirt   instance class Game.Widget Game.WidgetsList::Find(string,
                                                                           bool)
    IL_0077:  call       bool Game.MarketplaceManager::get_IsTrialMode()
    IL_007c:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0081:  ldarg.0
    IL_0082:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0087:  ldstr      "Version"
    IL_008c:  ldc.i4.1
    IL_008d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0092:  ldarg.0
    IL_0093:  ldfld      string Game.MainMenuScreen::m_versionString
    IL_0098:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_009d:  ldarg.0
    IL_009e:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00a3:  ldstr      "Logo"
    IL_00a8:  ldc.i4.1
    IL_00a9:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.RectangleWidget>(string,
                                                                                         bool)
    IL_00ae:  stloc.0
    IL_00af:  ldc.r4     1.
    IL_00b4:  ldc.r4     2.e-002
    IL_00b9:  ldc.r4     1.5
    IL_00be:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_00c3:  ldc.r8     10000.
    IL_00cc:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_00d1:  conv.r4
    IL_00d2:  mul
    IL_00d3:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_00d8:  mul
    IL_00d9:  add
    IL_00da:  stloc.1
    IL_00db:  ldloc.0
    IL_00dc:  ldloc.0
    IL_00dd:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_00e2:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00e7:  neg
    IL_00e8:  ldc.r4     2.
    IL_00ed:  div
    IL_00ee:  ldloc.0
    IL_00ef:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_00f4:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00f9:  neg
    IL_00fa:  ldc.r4     2.
    IL_00ff:  div
    IL_0100:  ldc.r4     0.0
    IL_0105:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_010a:  ldloc.1
    IL_010b:  ldloc.1
    IL_010c:  ldc.r4     1.
    IL_0111:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32,
                                                                                            float32,
                                                                                            float32)
    IL_0116:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_011b:  ldloc.0
    IL_011c:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0121:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0126:  ldc.r4     2.
    IL_012b:  div
    IL_012c:  ldloc.0
    IL_012d:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0132:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0137:  ldc.r4     2.
    IL_013c:  div
    IL_013d:  ldc.r4     0.0
    IL_0142:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0147:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_014c:  callvirt   instance void Game.Widget::set_RenderTransform(valuetype [Engine]Engine.Matrix)
    IL_0151:  ldarg.0
    IL_0152:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0157:  ldstr      "Play"
    IL_015c:  ldc.i4.1
    IL_015d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0162:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0167:  brfalse.s  IL_0179

    IL_0169:  ldstr      "Play"
    IL_016e:  ldc.i4.0
    IL_016f:  newarr     [System.Runtime]System.Object
    IL_0174:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_0179:  ldarg.0
    IL_017a:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_017f:  ldstr      "Help"
    IL_0184:  ldc.i4.1
    IL_0185:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_018a:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_018f:  brfalse.s  IL_01a1

    IL_0191:  ldstr      "Help"
    IL_0196:  ldc.i4.0
    IL_0197:  newarr     [System.Runtime]System.Object
    IL_019c:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_01a1:  ldarg.0
    IL_01a2:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_01a7:  ldstr      "Content"
    IL_01ac:  ldc.i4.1
    IL_01ad:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_01b2:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_01b7:  brfalse.s  IL_01c9

    IL_01b9:  ldstr      "Content"
    IL_01be:  ldc.i4.0
    IL_01bf:  newarr     [System.Runtime]System.Object
    IL_01c4:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_01c9:  ldarg.0
    IL_01ca:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_01cf:  ldstr      "Settings"
    IL_01d4:  ldc.i4.1
    IL_01d5:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_01da:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_01df:  brfalse.s  IL_01f1

    IL_01e1:  ldstr      "Settings"
    IL_01e6:  ldc.i4.0
    IL_01e7:  newarr     [System.Runtime]System.Object
    IL_01ec:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_01f1:  ldarg.0
    IL_01f2:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_01f7:  ldstr      "Buy"
    IL_01fc:  ldc.i4.1
    IL_01fd:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0202:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0207:  brfalse.s  IL_021e

    IL_0209:  ldstr      "[MainMenuScreen] Clicked buy button"
    IL_020e:  ldc.i4.0
    IL_020f:  newarr     Game.AnalyticsParameter
    IL_0214:  call       void Game.AnalyticsManager::LogEvent(string,
                                                              valuetype Game.AnalyticsParameter[])
    IL_0219:  call       void Game.MarketplaceManager::ShowMarketplace()
    IL_021e:  ldarg.0
    IL_021f:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0224:  callvirt   instance bool Game.WidgetInput::get_Back()
    IL_0229:  brfalse.s  IL_0232

    IL_022b:  call       bool [Engine]Engine.Input.Keyboard::get_BackButtonQuitsApp()
    IL_0230:  brfalse.s  IL_0241

    IL_0232:  ldarg.0
    IL_0233:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0238:  ldc.i4.s   20
    IL_023a:  callvirt   instance bool Game.WidgetInput::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_023f:  brfalse.s  IL_025e

    IL_0241:  call       bool Game.MarketplaceManager::get_IsTrialMode()
    IL_0246:  brfalse.s  IL_0259

    IL_0248:  ldstr      "Nag"
    IL_024d:  ldc.i4.0
    IL_024e:  newarr     [System.Runtime]System.Object
    IL_0253:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                object[])
    IL_0258:  ret

    IL_0259:  call       void [Engine]Engine.Window::Close()
    IL_025e:  ret
  } // end of method MainMenuScreen::Update

} // end of class Game.MainMenuScreen