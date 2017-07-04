.class interface public abstract auto ansi Game.IPaintableBlock
{
  .method public hidebysig newslot abstract virtual 
          instance valuetype [System.Runtime]System.Nullable`1<int32> 
          GetPaintColor(int32 'value') cil managed
  {
  } // end of method IPaintableBlock::GetPaintColor

  .method public hidebysig newslot abstract virtual 
          instance int32  Paint(class Game.SubsystemTerrain subsystemTerrain,
                                int32 'value',
                                valuetype [System.Runtime]System.Nullable`1<int32> color) cil managed
  {
  } // end of method IPaintableBlock::Paint

} // end of class Game.IPaintableBlock