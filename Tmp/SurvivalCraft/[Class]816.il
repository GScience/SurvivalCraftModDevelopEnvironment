.class public abstract auto ansi beforefieldinit Game.ButtonWidget
       extends Game.CanvasWidget
{
  .method public hidebysig newslot specialname abstract virtual 
          instance bool  get_IsPressed() cil managed
  {
  } // end of method ButtonWidget::get_IsPressed

  .method public hidebysig newslot specialname abstract virtual 
          instance bool  get_IsClicked() cil managed
  {
  } // end of method ButtonWidget::get_IsClicked

  .method public hidebysig newslot specialname abstract virtual 
          instance bool  get_IsTapped() cil managed
  {
  } // end of method ButtonWidget::get_IsTapped

  .method public hidebysig newslot specialname abstract virtual 
          instance bool  get_IsChecked() cil managed
  {
  } // end of method ButtonWidget::get_IsChecked

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_IsChecked(bool 'value') cil managed
  {
  } // end of method ButtonWidget::set_IsChecked

  .method public hidebysig newslot specialname abstract virtual 
          instance bool  get_IsAutoCheckingEnabled() cil managed
  {
  } // end of method ButtonWidget::get_IsAutoCheckingEnabled

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_IsAutoCheckingEnabled(bool 'value') cil managed
  {
  } // end of method ButtonWidget::set_IsAutoCheckingEnabled

  .method public hidebysig newslot specialname abstract virtual 
          instance string  get_Text() cil managed
  {
  } // end of method ButtonWidget::get_Text

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_Text(string 'value') cil managed
  {
  } // end of method ButtonWidget::set_Text

  .method public hidebysig newslot specialname abstract virtual 
          instance class [Engine]Engine.Media.BitmapFont 
          get_Font() cil managed
  {
  } // end of method ButtonWidget::get_Font

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_Font(class [Engine]Engine.Media.BitmapFont 'value') cil managed
  {
  } // end of method ButtonWidget::set_Font

  .method public hidebysig newslot specialname abstract virtual 
          instance valuetype [Engine]Engine.Color 
          get_Color() cil managed
  {
  } // end of method ButtonWidget::get_Color

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_Color(valuetype [Engine]Engine.Color 'value') cil managed
  {
  } // end of method ButtonWidget::set_Color

  .method family hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ´úÂë´óÐ¡       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.CanvasWidget::.ctor()
    IL_0006:  ret
  } // end of method ButtonWidget::.ctor

  .property instance bool IsPressed()
  {
    .get instance bool Game.ButtonWidget::get_IsPressed()
  } // end of property ButtonWidget::IsPressed
  .property instance bool IsClicked()
  {
    .get instance bool Game.ButtonWidget::get_IsClicked()
  } // end of property ButtonWidget::IsClicked
  .property instance bool IsTapped()
  {
    .get instance bool Game.ButtonWidget::get_IsTapped()
  } // end of property ButtonWidget::IsTapped
  .property instance bool IsChecked()
  {
    .get instance bool Game.ButtonWidget::get_IsChecked()
    .set instance void Game.ButtonWidget::set_IsChecked(bool)
  } // end of property ButtonWidget::IsChecked
  .property instance bool IsAutoCheckingEnabled()
  {
    .get instance bool Game.ButtonWidget::get_IsAutoCheckingEnabled()
    .set instance void Game.ButtonWidget::set_IsAutoCheckingEnabled(bool)
  } // end of property ButtonWidget::IsAutoCheckingEnabled
  .property instance string Text()
  {
    .get instance string Game.ButtonWidget::get_Text()
    .set instance void Game.ButtonWidget::set_Text(string)
  } // end of property ButtonWidget::Text
  .property instance class [Engine]Engine.Media.BitmapFont
          Font()
  {
    .get instance class [Engine]Engine.Media.BitmapFont Game.ButtonWidget::get_Font()
    .set instance void Game.ButtonWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
  } // end of property ButtonWidget::Font
  .property instance valuetype [Engine]Engine.Color
          Color()
  {
    .get instance valuetype [Engine]Engine.Color Game.ButtonWidget::get_Color()
    .set instance void Game.ButtonWidget::set_Color(valuetype [Engine]Engine.Color)
  } // end of property ButtonWidget::Color
} // end of class Game.ButtonWidget