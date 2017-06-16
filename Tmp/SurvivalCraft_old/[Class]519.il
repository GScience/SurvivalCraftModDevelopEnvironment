.class public auto ansi beforefieldinit Game.Screen
       extends [System.Runtime]System.Object
{
  .field private class Game.CanvasWidget m_screenWidget
  .method public hidebysig specialname instance class Game.ContainerWidget 
          get_ScreenWidget() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.CanvasWidget Game.Screen::m_screenWidget
    IL_0006:  ret
  } // end of method Screen::get_ScreenWidget

  .method public hidebysig newslot virtual 
          instance void  Enter(object[] parameters) cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method Screen::Enter

  .method public hidebysig newslot virtual 
          instance void  Leave() cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method Screen::Leave

  .method public hidebysig newslot virtual 
          instance void  Update() cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method Screen::Update

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.CanvasWidget::.ctor()
    IL_0006:  stfld      class Game.CanvasWidget Game.Screen::m_screenWidget
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0011:  ret
  } // end of method Screen::.ctor

  .property instance class Game.ContainerWidget
          ScreenWidget()
  {
    .get instance class Game.ContainerWidget Game.Screen::get_ScreenWidget()
  } // end of property Screen::ScreenWidget
} // end of class Game.Screen