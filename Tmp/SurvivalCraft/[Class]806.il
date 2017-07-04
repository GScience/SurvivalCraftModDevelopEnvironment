.class interface public abstract auto ansi Game.IUpdateable
{
  .method public hidebysig newslot specialname abstract virtual 
          instance int32  get_UpdateOrder() cil managed
  {
  } // end of method IUpdateable::get_UpdateOrder

  .method public hidebysig newslot abstract virtual 
          instance void  Update(float32 dt) cil managed
  {
  } // end of method IUpdateable::Update

  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.IUpdateable::get_UpdateOrder()
  } // end of property IUpdateable::UpdateOrder
} // end of class Game.IUpdateable