.class public auto ansi beforefieldinit Game.GameWidget
       extends Game.CanvasWidget
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.CanvasWidget::.ctor()
    IL_0006:  ret
  } // end of method GameWidget::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  call       void Game.GameManager::UpdateProject()
    IL_0005:  ret
  } // end of method GameWidget::Update

  .method public hidebysig virtual instance void 
          Measure(valuetype [Engine]Engine.Vector2 availableSize) cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  call       instance void Game.Widget::set_IsDrawRequired(bool)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  call       instance void Game.CanvasWidget::Measure(valuetype [Engine]Engine.Vector2)
    IL_000e:  ret
  } // end of method GameWidget::Measure

  .method public hidebysig virtual instance void 
          Draw() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  call       void Game.GameManager::DrawProject()
    IL_0005:  ret
  } // end of method GameWidget::Draw

} // end of class Game.GameWidget