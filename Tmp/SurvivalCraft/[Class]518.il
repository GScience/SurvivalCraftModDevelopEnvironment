.class public auto ansi beforefieldinit Game.RespawningScreen
       extends Game.Screen
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.RespawningScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action '<>9__1_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.RespawningScreen/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.RespawningScreen/'<>c' Game.RespawningScreen/'<>c'::'<>9'
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
            '<Update>b__1_0'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldstr      "Game"
      IL_0005:  ldc.i4.0
      IL_0006:  newarr     [System.Runtime]System.Object
      IL_000b:  call       void Game.ScreensManager::SwitchScreen(string,
                                                                  object[])
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__1_0'

  } // end of class '<>c'

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       31 (0x1f)
    .maxstack  3
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Screen::.ctor()
    IL_0006:  ldstr      "Screens/RespawningScreen"
    IL_000b:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  call       instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
    IL_0017:  ldarg.0
    IL_0018:  ldloc.0
    IL_0019:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_001e:  ret
  } // end of method RespawningScreen::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       56 (0x38)
    .maxstack  8
    IL_0000:  call       float32 Game.FrontendManager::get_FadeFactor()
    IL_0005:  ldc.r4     0.0
    IL_000a:  bne.un.s   IL_0037

    IL_000c:  call       bool Game.GameManager::UpdateProjectUntilReadyForPlaying()
    IL_0011:  brfalse.s  IL_0037

    IL_0013:  ldsfld     class [System.Runtime]System.Action Game.RespawningScreen/'<>c'::'<>9__1_0'
    IL_0018:  dup
    IL_0019:  brtrue.s   IL_0032

    IL_001b:  pop
    IL_001c:  ldsfld     class Game.RespawningScreen/'<>c' Game.RespawningScreen/'<>c'::'<>9'
    IL_0021:  ldftn      instance void Game.RespawningScreen/'<>c'::'<Update>b__1_0'()
    IL_0027:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_002c:  dup
    IL_002d:  stsfld     class [System.Runtime]System.Action Game.RespawningScreen/'<>c'::'<>9__1_0'
    IL_0032:  call       void Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_0037:  ret
  } // end of method RespawningScreen::Update

} // end of class Game.RespawningScreen