.class interface public abstract auto ansi Game.IMovingBlockSet
{
  .method public hidebysig newslot specialname abstract virtual 
          instance valuetype [Engine]Engine.Vector3 
          get_Position() cil managed
  {
  } // end of method IMovingBlockSet::get_Position

  .method public hidebysig newslot specialname abstract virtual 
          instance string  get_Id() cil managed
  {
  } // end of method IMovingBlockSet::get_Id

  .method public hidebysig newslot specialname abstract virtual 
          instance object  get_Tag() cil managed
  {
  } // end of method IMovingBlockSet::get_Tag

  .method public hidebysig newslot specialname abstract virtual 
          instance valuetype [Engine]Engine.Vector3 
          get_CurrentVelocity() cil managed
  {
  } // end of method IMovingBlockSet::get_CurrentVelocity

  .method public hidebysig newslot specialname abstract virtual 
          instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.MovingBlock> 
          get_Blocks() cil managed
  {
  } // end of method IMovingBlockSet::get_Blocks

  .method public hidebysig newslot abstract virtual 
          instance valuetype [Engine]Engine.BoundingBox 
          BoundingBox(bool extendToFillCells) cil managed
  {
  } // end of method IMovingBlockSet::BoundingBox

  .method public hidebysig newslot abstract virtual 
          instance void  SetBlock(valuetype [Engine]Engine.Point3 offset,
                                  int32 'value') cil managed
  {
  } // end of method IMovingBlockSet::SetBlock

  .method public hidebysig newslot abstract virtual 
          instance void  Stop() cil managed
  {
  } // end of method IMovingBlockSet::Stop

  .property instance valuetype [Engine]Engine.Vector3
          Position()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.IMovingBlockSet::get_Position()
  } // end of property IMovingBlockSet::Position
  .property instance string Id()
  {
    .get instance string Game.IMovingBlockSet::get_Id()
  } // end of property IMovingBlockSet::Id
  .property instance object Tag()
  {
    .get instance object Game.IMovingBlockSet::get_Tag()
  } // end of property IMovingBlockSet::Tag
  .property instance valuetype [Engine]Engine.Vector3
          CurrentVelocity()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.IMovingBlockSet::get_CurrentVelocity()
  } // end of property IMovingBlockSet::CurrentVelocity
  .property instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.MovingBlock>
          Blocks()
  {
    .get instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.MovingBlock> Game.IMovingBlockSet::get_Blocks()
  } // end of property IMovingBlockSet::Blocks
} // end of class Game.IMovingBlockSet