.class interface public abstract auto ansi Game.IDrawable
{
  .method public hidebysig newslot specialname abstract virtual 
          instance int32[]  get_DrawOrders() cil managed
  {
  } // end of method IDrawable::get_DrawOrders

  .method public hidebysig newslot abstract virtual 
          instance void  Draw(class Game.Camera camera,
                              int32 drawOrder) cil managed
  {
  } // end of method IDrawable::Draw

  .property instance int32[] DrawOrders()
  {
    .get instance int32[] Game.IDrawable::get_DrawOrders()
  } // end of property IDrawable::DrawOrders
} // end of class Game.IDrawable