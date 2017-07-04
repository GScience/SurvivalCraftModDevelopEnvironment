.class public auto ansi beforefieldinit Game.Dialog
       extends Game.CanvasWidget
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ด๚ย๋ด๓ะก       30 (0x1e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.CanvasWidget::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance void Game.Widget::set_IsHitTestVisible(bool)
    IL_000d:  ldarg.0
    IL_000e:  ldc.r4     (00 00 80 7F)
    IL_0013:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0018:  call       instance void Game.CanvasWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_001d:  ret
  } // end of method Dialog::.ctor

} // end of class Game.Dialog