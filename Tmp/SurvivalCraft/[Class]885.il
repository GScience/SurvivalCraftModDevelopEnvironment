.class public auto ansi beforefieldinit Game.GameWidget
       extends Game.CanvasWidget
{
  .field private class Game.GameViewWidget '<GameViewWidget>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance class Game.GameViewWidget 
          get_GameViewWidget() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.GameViewWidget Game.GameWidget::'<GameViewWidget>k__BackingField'
    IL_0006:  ret
  } // end of method GameWidget::get_GameViewWidget

  .method private hidebysig specialname instance void 
          set_GameViewWidget(class Game.GameViewWidget 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.GameViewWidget Game.GameWidget::'<GameViewWidget>k__BackingField'
    IL_0007:  ret
  } // end of method GameWidget::set_GameViewWidget

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       49 (0x31)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.CanvasWidget::.ctor()
    IL_0006:  ldstr      "Widgets/GameWidget"
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
    IL_0020:  ldstr      "View"
    IL_0025:  ldc.i4.1
    IL_0026:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.GameViewWidget>(string,
                                                                                        bool)
    IL_002b:  call       instance void Game.GameWidget::set_GameViewWidget(class Game.GameViewWidget)
    IL_0030:  ret
  } // end of method GameWidget::.ctor

  .property instance class Game.GameViewWidget
          GameViewWidget()
  {
    .get instance class Game.GameViewWidget Game.GameWidget::get_GameViewWidget()
    .set instance void Game.GameWidget::set_GameViewWidget(class Game.GameViewWidget)
  } // end of property GameWidget::GameViewWidget
} // end of class Game.GameWidget