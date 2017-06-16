.class public auto ansi beforefieldinit Game.LoadingScreen
       extends [Survivalcraft]Game.Screen
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass5_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public valuetype [Engine]Engine.Content.ContentInfo localContentInfo
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c__DisplayClass5_0'::.ctor

    .method assembly hidebysig instance void 
            '<.ctor>b__5'() cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldflda     valuetype [Engine]Engine.Content.ContentInfo Game.LoadingScreen/'<>c__DisplayClass5_0'::localContentInfo
      IL_0006:  ldfld      string [Engine]Engine.Content.ContentInfo::Name
      IL_000b:  call       object [Survivalcraft]Game.ContentManager::Get(string)
      IL_0010:  pop
      IL_0011:  ret
    } // end of method '<>c__DisplayClass5_0'::'<.ctor>b__5'

  } // end of class '<>c__DisplayClass5_0'

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.LoadingScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action '<>9__5_0'
    .field public static class [System.Runtime]System.Action '<>9__5_1'
    .field public static class [System.Runtime]System.Action '<>9__5_2'
    .field public static class [System.Runtime]System.Action '<>9__5_3'
    .field public static class [System.Runtime]System.Action '<>9__5_4'
    .field public static class [System.Runtime]System.Action '<>9__5_6'
    .field public static class [System.Runtime]System.Action '<>9__5_7'
    .field public static class [System.Runtime]System.Action '<>9__5_8'
    .field public static class [System.Runtime]System.Action '<>9__5_9'
    .field public static class [System.Runtime]System.Action '<>9__5_10'
    .field public static class [System.Runtime]System.Action '<>9__5_11'
    .field public static class [System.Runtime]System.Action '<>9__5_12'
    .field public static class [System.Runtime]System.Action '<>9__5_13'
    .field public static class [System.Runtime]System.Action '<>9__8_1'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.LoadingScreen/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance void 
            '<.ctor>b__5_0'() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  call       void [Survivalcraft]Game.CommunityContentManager::Initialize()
      IL_0005:  nop
      IL_0006:  ret
    } // end of method '<>c'::'<.ctor>b__5_0'

    .method assembly hidebysig instance void 
            '<.ctor>b__5_1'() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  call       void [Survivalcraft]Game.MotdManager::Initialize()
      IL_0005:  nop
      IL_0006:  ret
    } // end of method '<>c'::'<.ctor>b__5_1'

    .method assembly hidebysig instance void 
            '<.ctor>b__5_2'() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  call       void [Survivalcraft]Game.LightingManager::Initialize()
      IL_0005:  nop
      IL_0006:  ret
    } // end of method '<>c'::'<.ctor>b__5_2'

    .method assembly hidebysig instance void 
            '<.ctor>b__5_3'() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  call       void [Survivalcraft]Game.StringsManager::LoadStrings()
      IL_0005:  nop
      IL_0006:  ret
    } // end of method '<>c'::'<.ctor>b__5_3'

    .method assembly hidebysig instance void 
            '<.ctor>b__5_4'() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  call       void [Survivalcraft]Game.TextureAtlasManager::LoadAtlases()
      IL_0005:  nop
      IL_0006:  ret
    } // end of method '<>c'::'<.ctor>b__5_4'

    .method assembly hidebysig instance void 
            '<.ctor>b__5_6'() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  call       void [Survivalcraft]Game.DatabaseManager::LoadDatabase()
      IL_0005:  nop
      IL_0006:  ret
    } // end of method '<>c'::'<.ctor>b__5_6'

    .method assembly hidebysig instance void 
            '<.ctor>b__5_7'() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  call       void [Survivalcraft]Game.WorldsManager::Initialize()
      IL_0005:  nop
      IL_0006:  ret
    } // end of method '<>c'::'<.ctor>b__5_7'

    .method assembly hidebysig instance void 
            '<.ctor>b__5_8'() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  call       void [Survivalcraft]Game.BlocksTexturesManager::Initialize()
      IL_0005:  nop
      IL_0006:  ret
    } // end of method '<>c'::'<.ctor>b__5_8'

    .method assembly hidebysig instance void 
            '<.ctor>b__5_9'() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  call       void [Survivalcraft]Game.CharacterSkinsManager::Initialize()
      IL_0005:  nop
      IL_0006:  ret
    } // end of method '<>c'::'<.ctor>b__5_9'

    .method assembly hidebysig instance void 
            '<.ctor>b__5_10'() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  call       void [Survivalcraft]Game.FurniturePacksManager::Initialize()
      IL_0005:  nop
      IL_0006:  ret
    } // end of method '<>c'::'<.ctor>b__5_10'

    .method assembly hidebysig instance void 
            '<.ctor>b__5_11'() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  call       void Game.BlocksManager::Initialize()
      IL_0005:  nop
      IL_0006:  ret
    } // end of method '<>c'::'<.ctor>b__5_11'

    .method assembly hidebysig instance void 
            '<.ctor>b__5_12'() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  call       void [Survivalcraft]Game.CraftingRecipesManager::Initialize()
      IL_0005:  nop
      IL_0006:  ret
    } // end of method '<>c'::'<.ctor>b__5_12'

    .method assembly hidebysig instance void 
            '<.ctor>b__5_13'() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  call       void GScience.ModAPI.Debug.InputManager::Initialize()
      IL_0005:  nop
      IL_0006:  ret
    } // end of method '<>c'::'<.ctor>b__5_13'

    .method assembly hidebysig instance void 
            '<Update>b__8_1'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldstr      "MainMenu"
      IL_0005:  call       !!0[] [System.Runtime]System.Array::Empty<object>()
      IL_000a:  call       void [Survivalcraft]Game.ScreensManager::SwitchScreen(string,
                                                                                 object[])
      IL_000f:  nop
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__8_1'

  } // end of class '<>c'

  .field private class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action> m_loadActions
  .field private int32 m_index
  .field private bool m_loadingFinished
  .field private bool m_pauseLoading
  .field private bool m_loadingErrorsSuppressed
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       746 (0x2ea)
    .maxstack  5
    .locals init (class [Survivalcraft]Game.LabelWidget V_0,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Content.ContentInfo> V_1,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Content.ContentInfo> V_2,
             class Game.LoadingScreen/'<>c__DisplayClass5_0' V_3,
             bool V_4)
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action> Game.LoadingScreen::m_loadActions
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [Survivalcraft]Game.Screen::.ctor()
    IL_0011:  nop
    IL_0012:  nop
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [Survivalcraft]Game.ContainerWidget [Survivalcraft]Game.Screen::get_ScreenWidget()
    IL_0019:  ldarg.0
    IL_001a:  ldstr      "Screens/LoadingScreen"
    IL_001f:  call       !!0 [Survivalcraft]Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0024:  call       void [Survivalcraft]Game.WidgetsManager::LoadWidgetContents(class [Survivalcraft]Game.Widget,
                                                                                     object,
                                                                                     class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0029:  nop
    IL_002a:  newobj     instance void [Survivalcraft]Game.LabelWidget::.ctor()
    IL_002f:  stloc.0
    IL_0030:  ldloc.0
    IL_0031:  ldstr      "Powered By GScience Studio\n"
    IL_0036:  callvirt   instance void [Survivalcraft]Game.LabelWidget::set_Text(string)
    IL_003b:  nop
    IL_003c:  ldloc.0
    IL_003d:  dup
    IL_003e:  callvirt   instance string [Survivalcraft]Game.LabelWidget::get_Text()
    IL_0043:  ldstr      "Author:"
    IL_0048:  ldsfld     string GScience.ModAPI.Info::author
    IL_004d:  ldstr      "\n"
    IL_0052:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string,
                                                                      string)
    IL_0057:  callvirt   instance void [Survivalcraft]Game.LabelWidget::set_Text(string)
    IL_005c:  nop
    IL_005d:  ldloc.0
    IL_005e:  dup
    IL_005f:  callvirt   instance string [Survivalcraft]Game.LabelWidget::get_Text()
    IL_0064:  ldstr      "Mod API Version:"
    IL_0069:  ldsfld     string GScience.ModAPI.Info::version
    IL_006e:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_0073:  callvirt   instance void [Survivalcraft]Game.LabelWidget::set_Text(string)
    IL_0078:  nop
    IL_0079:  ldloc.0
    IL_007a:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::LightBlue
    IL_007f:  callvirt   instance void [Survivalcraft]Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_0084:  nop
    IL_0085:  ldloc.0
    IL_0086:  ldc.r4     0.5
    IL_008b:  callvirt   instance void [Survivalcraft]Game.LabelWidget::set_FontScale(float32)
    IL_0090:  nop
    IL_0091:  ldarg.0
    IL_0092:  call       instance class [Survivalcraft]Game.ContainerWidget [Survivalcraft]Game.Screen::get_ScreenWidget()
    IL_0097:  ldfld      class [Survivalcraft]Game.WidgetsContainer [Survivalcraft]Game.ContainerWidget::Children
    IL_009c:  ldloc.0
    IL_009d:  callvirt   instance void [Survivalcraft]Game.WidgetsContainer::Add(class [Survivalcraft]Game.Widget)
    IL_00a2:  nop
    IL_00a3:  ldarg.0
    IL_00a4:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_0'
    IL_00a9:  dup
    IL_00aa:  brtrue.s   IL_00c3

    IL_00ac:  pop
    IL_00ad:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_00b2:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__5_0'()
    IL_00b8:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00bd:  dup
    IL_00be:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_0'
    IL_00c3:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_00c8:  nop
    IL_00c9:  ldarg.0
    IL_00ca:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_1'
    IL_00cf:  dup
    IL_00d0:  brtrue.s   IL_00e9

    IL_00d2:  pop
    IL_00d3:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_00d8:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__5_1'()
    IL_00de:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00e3:  dup
    IL_00e4:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_1'
    IL_00e9:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_00ee:  nop
    IL_00ef:  ldarg.0
    IL_00f0:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_2'
    IL_00f5:  dup
    IL_00f6:  brtrue.s   IL_010f

    IL_00f8:  pop
    IL_00f9:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_00fe:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__5_2'()
    IL_0104:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0109:  dup
    IL_010a:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_2'
    IL_010f:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0114:  nop
    IL_0115:  ldarg.0
    IL_0116:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_3'
    IL_011b:  dup
    IL_011c:  brtrue.s   IL_0135

    IL_011e:  pop
    IL_011f:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_0124:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__5_3'()
    IL_012a:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_012f:  dup
    IL_0130:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_3'
    IL_0135:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_013a:  nop
    IL_013b:  ldarg.0
    IL_013c:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_4'
    IL_0141:  dup
    IL_0142:  brtrue.s   IL_015b

    IL_0144:  pop
    IL_0145:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_014a:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__5_4'()
    IL_0150:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0155:  dup
    IL_0156:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_4'
    IL_015b:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0160:  nop
    IL_0161:  call       valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Content.ContentInfo> [Survivalcraft]Game.ContentManager::List()
    IL_0166:  stloc.1
    IL_0167:  ldloca.s   V_1
    IL_0169:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Content.ContentInfo>::GetEnumerator()
    IL_016e:  stloc.2
    .try
    {
      IL_016f:  nop
      IL_0170:  br.s       IL_019a

      IL_0172:  newobj     instance void Game.LoadingScreen/'<>c__DisplayClass5_0'::.ctor()
      IL_0177:  stloc.3
      IL_0178:  nop
      IL_0179:  ldloc.3
      IL_017a:  ldloca.s   V_2
      IL_017c:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Content.ContentInfo>::get_Current()
      IL_0181:  stfld      valuetype [Engine]Engine.Content.ContentInfo Game.LoadingScreen/'<>c__DisplayClass5_0'::localContentInfo
      IL_0186:  ldarg.0
      IL_0187:  ldloc.3
      IL_0188:  ldftn      instance void Game.LoadingScreen/'<>c__DisplayClass5_0'::'<.ctor>b__5'()
      IL_018e:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                              native int)
      IL_0193:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
      IL_0198:  nop
      IL_0199:  nop
      IL_019a:  ldloca.s   V_2
      IL_019c:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Content.ContentInfo>::MoveNext()
      IL_01a1:  stloc.s    V_4
      IL_01a3:  ldloc.s    V_4
      IL_01a5:  brtrue.s   IL_0172

      IL_01a7:  nop
      IL_01a8:  leave.s    IL_01b9

    }  // end .try
    finally
    {
      IL_01aa:  ldloca.s   V_2
      IL_01ac:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Content.ContentInfo>
      IL_01b2:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01b7:  nop
      IL_01b8:  endfinally
    }  // end handler
    IL_01b9:  ldarg.0
    IL_01ba:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_6'
    IL_01bf:  dup
    IL_01c0:  brtrue.s   IL_01d9

    IL_01c2:  pop
    IL_01c3:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_01c8:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__5_6'()
    IL_01ce:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01d3:  dup
    IL_01d4:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_6'
    IL_01d9:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_01de:  nop
    IL_01df:  ldarg.0
    IL_01e0:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_7'
    IL_01e5:  dup
    IL_01e6:  brtrue.s   IL_01ff

    IL_01e8:  pop
    IL_01e9:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_01ee:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__5_7'()
    IL_01f4:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01f9:  dup
    IL_01fa:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_7'
    IL_01ff:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0204:  nop
    IL_0205:  ldarg.0
    IL_0206:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_8'
    IL_020b:  dup
    IL_020c:  brtrue.s   IL_0225

    IL_020e:  pop
    IL_020f:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_0214:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__5_8'()
    IL_021a:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_021f:  dup
    IL_0220:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_8'
    IL_0225:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_022a:  nop
    IL_022b:  ldarg.0
    IL_022c:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_9'
    IL_0231:  dup
    IL_0232:  brtrue.s   IL_024b

    IL_0234:  pop
    IL_0235:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_023a:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__5_9'()
    IL_0240:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0245:  dup
    IL_0246:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_9'
    IL_024b:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0250:  nop
    IL_0251:  ldarg.0
    IL_0252:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_10'
    IL_0257:  dup
    IL_0258:  brtrue.s   IL_0271

    IL_025a:  pop
    IL_025b:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_0260:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__5_10'()
    IL_0266:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_026b:  dup
    IL_026c:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_10'
    IL_0271:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0276:  nop
    IL_0277:  ldarg.0
    IL_0278:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_11'
    IL_027d:  dup
    IL_027e:  brtrue.s   IL_0297

    IL_0280:  pop
    IL_0281:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_0286:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__5_11'()
    IL_028c:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0291:  dup
    IL_0292:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_11'
    IL_0297:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_029c:  nop
    IL_029d:  ldarg.0
    IL_029e:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_12'
    IL_02a3:  dup
    IL_02a4:  brtrue.s   IL_02bd

    IL_02a6:  pop
    IL_02a7:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_02ac:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__5_12'()
    IL_02b2:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_02b7:  dup
    IL_02b8:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_12'
    IL_02bd:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_02c2:  nop
    IL_02c3:  ldarg.0
    IL_02c4:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_13'
    IL_02c9:  dup
    IL_02ca:  brtrue.s   IL_02e3

    IL_02cc:  pop
    IL_02cd:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_02d2:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__5_13'()
    IL_02d8:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_02dd:  dup
    IL_02de:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_13'
    IL_02e3:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_02e8:  nop
    IL_02e9:  ret
  } // end of method LoadingScreen::.ctor

  .method public hidebysig instance void 
          AddLoadAction(class [System.Runtime]System.Action action) cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action> Game.LoadingScreen::m_loadActions
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action>::Add(!0)
    IL_000d:  nop
    IL_000e:  ret
  } // end of method LoadingScreen::AddLoadAction

  .method public hidebysig virtual instance void 
          Leave() cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "Textures/Gui/CandyRufusLogo"
    IL_0006:  call       void [Survivalcraft]Game.ContentManager::Dispose(string)
    IL_000b:  nop
    IL_000c:  ldstr      "Textures/Gui/EngineLogo"
    IL_0011:  call       void [Survivalcraft]Game.ContentManager::Dispose(string)
    IL_0016:  nop
    IL_0017:  ret
  } // end of method LoadingScreen::Leave

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       348 (0x15c)
    .maxstack  6
    .locals init (float64 V_0,
             bool V_1,
             bool V_2,
             class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action> V_3,
             int32 V_4,
             int32 V_5,
             class [System.Runtime]System.Exception V_6,
             bool V_7,
             bool V_8,
             bool V_9,
             bool V_10)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      bool Game.LoadingScreen::m_loadingFinished
    IL_0007:  stloc.1
    IL_0008:  ldloc.1
    IL_0009:  brfalse.s  IL_0010

    IL_000b:  br         IL_015b

    IL_0010:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0015:  stloc.0
    IL_0016:  br         IL_00e8

    IL_001b:  nop
    IL_001c:  ldarg.0
    IL_001d:  ldfld      int32 Game.LoadingScreen::m_index
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action> Game.LoadingScreen::m_loadActions
    IL_0028:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action>::get_Count()
    IL_002d:  clt
    IL_002f:  stloc.2
    IL_0030:  ldloc.2
    IL_0031:  brfalse    IL_00e5

    IL_0036:  nop
    .try
    {
      IL_0037:  nop
      IL_0038:  ldarg.0
      IL_0039:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action> Game.LoadingScreen::m_loadActions
      IL_003e:  stloc.3
      IL_003f:  ldarg.0
      IL_0040:  ldfld      int32 Game.LoadingScreen::m_index
      IL_0045:  stloc.s    V_4
      IL_0047:  ldarg.0
      IL_0048:  ldloc.s    V_4
      IL_004a:  ldc.i4.1
      IL_004b:  add
      IL_004c:  stfld      int32 Game.LoadingScreen::m_index
      IL_0051:  ldloc.s    V_4
      IL_0053:  stloc.s    V_5
      IL_0055:  ldloc.3
      IL_0056:  ldloc.s    V_5
      IL_0058:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action>::get_Item(int32)
      IL_005d:  callvirt   instance void [System.Runtime]System.Action::Invoke()
      IL_0062:  nop
      IL_0063:  nop
      IL_0064:  leave.s    IL_00c8

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0066:  stloc.s    V_6
      IL_0068:  nop
      IL_0069:  ldstr      "Loading error. Reason: "
      IL_006e:  ldloc.s    V_6
      IL_0070:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_0075:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string)
      IL_007a:  call       void [Engine]Engine.Log::Error(string)
      IL_007f:  nop
      IL_0080:  ldarg.0
      IL_0081:  ldfld      bool Game.LoadingScreen::m_loadingErrorsSuppressed
      IL_0086:  ldc.i4.0
      IL_0087:  ceq
      IL_0089:  stloc.s    V_7
      IL_008b:  ldloc.s    V_7
      IL_008d:  brfalse.s  IL_00c5

      IL_008f:  nop
      IL_0090:  ldarg.0
      IL_0091:  ldc.i4.1
      IL_0092:  stfld      bool Game.LoadingScreen::m_pauseLoading
      IL_0097:  ldstr      "Loading Error"
      IL_009c:  ldloc.s    V_6
      IL_009e:  call       string [Survivalcraft]Game.ExceptionManager::MakeFullErrorMessage(class [System.Runtime]System.Exception)
      IL_00a3:  ldstr      "OK"
      IL_00a8:  ldstr      "Suppress"
      IL_00ad:  ldarg.0
      IL_00ae:  ldftn      instance void Game.LoadingScreen::'<Update>b__8_0'(valuetype [Survivalcraft]Game.MessageDialogButton)
      IL_00b4:  newobj     instance void class [System.Runtime]System.Action`1<valuetype [Survivalcraft]Game.MessageDialogButton>::.ctor(object,
                                                                                                                                         native int)
      IL_00b9:  newobj     instance void [Survivalcraft]Game.MessageDialog::.ctor(string,
                                                                                  string,
                                                                                  string,
                                                                                  string,
                                                                                  class [System.Runtime]System.Action`1<valuetype [Survivalcraft]Game.MessageDialogButton>)
      IL_00be:  call       void [Survivalcraft]Game.DialogsManager::ShowDialog(class [Survivalcraft]Game.Dialog)
      IL_00c3:  nop
      IL_00c4:  nop
      IL_00c5:  nop
      IL_00c6:  leave.s    IL_00c8

    }  // end handler
    IL_00c8:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_00cd:  ldloc.0
    IL_00ce:  sub
    IL_00cf:  ldc.r8     0.10000000000000001
    IL_00d8:  cgt
    IL_00da:  stloc.s    V_8
    IL_00dc:  ldloc.s    V_8
    IL_00de:  brfalse.s  IL_00e2

    IL_00e0:  br.s       IL_00fa

    IL_00e2:  nop
    IL_00e3:  br.s       IL_00e7

    IL_00e5:  br.s       IL_00fa

    IL_00e7:  nop
    IL_00e8:  ldarg.0
    IL_00e9:  ldfld      bool Game.LoadingScreen::m_pauseLoading
    IL_00ee:  ldc.i4.0
    IL_00ef:  ceq
    IL_00f1:  stloc.s    V_9
    IL_00f3:  ldloc.s    V_9
    IL_00f5:  brtrue     IL_001b

    IL_00fa:  ldarg.0
    IL_00fb:  ldfld      int32 Game.LoadingScreen::m_index
    IL_0100:  ldarg.0
    IL_0101:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action> Game.LoadingScreen::m_loadActions
    IL_0106:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action>::get_Count()
    IL_010b:  clt
    IL_010d:  stloc.s    V_10
    IL_010f:  ldloc.s    V_10
    IL_0111:  brfalse.s  IL_0115

    IL_0113:  br.s       IL_015b

    IL_0115:  ldarg.0
    IL_0116:  ldc.i4.1
    IL_0117:  stfld      bool Game.LoadingScreen::m_loadingFinished
    IL_011c:  ldstr      "Audio/UI/ButtonClick"
    IL_0121:  ldc.r4     1.
    IL_0126:  ldc.r4     0.0
    IL_012b:  ldc.r4     0.0
    IL_0130:  call       void [Survivalcraft]Game.AudioManager::PlaySound(string,
                                                                          float32,
                                                                          float32,
                                                                          float32)
    IL_0135:  nop
    IL_0136:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__8_1'
    IL_013b:  dup
    IL_013c:  brtrue.s   IL_0155

    IL_013e:  pop
    IL_013f:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_0144:  ldftn      instance void Game.LoadingScreen/'<>c'::'<Update>b__8_1'()
    IL_014a:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_014f:  dup
    IL_0150:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__8_1'
    IL_0155:  call       void [Survivalcraft]Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_015a:  nop
    IL_015b:  ret
  } // end of method LoadingScreen::Update

  .method private hidebysig instance void 
          '<Update>b__8_0'(valuetype [Survivalcraft]Game.MessageDialogButton b) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       43 (0x2b)
    .maxstack  2
    .locals init (bool V_0,
             bool V_1)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  ldc.i4.0
    IL_0003:  ceq
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  brfalse.s  IL_0014

    IL_0009:  nop
    IL_000a:  ldarg.0
    IL_000b:  ldc.i4.0
    IL_000c:  stfld      bool Game.LoadingScreen::m_pauseLoading
    IL_0011:  nop
    IL_0012:  br.s       IL_002a

    IL_0014:  nop
    IL_0015:  ldarg.1
    IL_0016:  ldc.i4.1
    IL_0017:  ceq
    IL_0019:  ldc.i4.0
    IL_001a:  ceq
    IL_001c:  stloc.1
    IL_001d:  ldloc.1
    IL_001e:  brfalse.s  IL_0022

    IL_0020:  br.s       IL_002a

    IL_0022:  ldarg.0
    IL_0023:  ldc.i4.1
    IL_0024:  stfld      bool Game.LoadingScreen::m_loadingErrorsSuppressed
    IL_0029:  nop
    IL_002a:  ret
  } // end of method LoadingScreen::'<Update>b__8_0'

} // end of class Game.LoadingScreen
