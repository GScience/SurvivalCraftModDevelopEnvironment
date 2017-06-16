.class interface public abstract auto ansi Game.IAStarWorld`1<T>
{
  .method public hidebysig newslot abstract virtual 
          instance float32  Cost(!T p1,
                                 !T p2) cil managed
  {
  } // end of method IAStarWorld`1::Cost

  .method public hidebysig newslot abstract virtual 
          instance void  Neighbors(!T p,
                                   class [Engine]Engine.DynamicArray`1<!T> neighbors) cil managed
  {
  } // end of method IAStarWorld`1::Neighbors

  .method public hidebysig newslot abstract virtual 
          instance float32  Heuristic(!T p1,
                                      !T p2) cil managed
  {
  } // end of method IAStarWorld`1::Heuristic

  .method public hidebysig newslot abstract virtual 
          instance bool  IsGoal(!T p) cil managed
  {
  } // end of method IAStarWorld`1::IsGoal

} // end of class Game.IAStarWorld`1