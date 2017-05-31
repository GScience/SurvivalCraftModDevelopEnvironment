.class public auto ansi beforefieldinit Game.Dialog
       extends [System.Runtime]System.Object
{
  .field private class Game.ContainerWidget '<DialogWidget>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance class Game.ContainerWidget 
          get_DialogWidget() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ContainerWidget Game.Dialog::'<DialogWidget>k__BackingField'
    IL_0006:  ret
  } // end of method Dialog::get_DialogWidget

  .method family hidebysig specialname instance void 
          set_DialogWidget(class Game.ContainerWidget 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ContainerWidget Game.Dialog::'<DialogWidget>k__BackingField'
    IL_0007:  ret
  } // end of method Dialog::set_DialogWidget

  .method public hidebysig newslot virtual 
          instance void  Update() cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method Dialog::Update

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ret
  } // end of method Dialog::.ctor

  .property instance class Game.ContainerWidget
          DialogWidget()
  {
    .get instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    .set instance void Game.Dialog::set_DialogWidget(class Game.ContainerWidget)
  } // end of property Dialog::DialogWidget
} // end of class Game.Dialog