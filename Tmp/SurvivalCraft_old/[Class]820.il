.class public auto ansi beforefieldinit Game.ClearWidget
       extends Game.Widget
{
  .field private valuetype [Engine]Engine.Color '<Color>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<Depth>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private int32 '<Stencil>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<ClearColor>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<ClearDepth>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<ClearStencil>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       64 (0x40)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Widget::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldc.i4.1
    IL_0008:  call       instance void Game.ClearWidget::set_ClearColor(bool)
    IL_000d:  ldarg.0
    IL_000e:  ldc.i4.1
    IL_000f:  call       instance void Game.ClearWidget::set_ClearDepth(bool)
    IL_0014:  ldarg.0
    IL_0015:  ldc.i4.1
    IL_0016:  call       instance void Game.ClearWidget::set_ClearStencil(bool)
    IL_001b:  ldarg.0
    IL_001c:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
    IL_0021:  call       instance void Game.ClearWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_0026:  ldarg.0
    IL_0027:  ldc.r4     1.
    IL_002c:  call       instance void Game.ClearWidget::set_Depth(float32)
    IL_0031:  ldarg.0
    IL_0032:  ldc.i4.0
    IL_0033:  call       instance void Game.ClearWidget::set_Stencil(int32)
    IL_0038:  ldarg.0
    IL_0039:  ldc.i4.0
    IL_003a:  callvirt   instance void Game.Widget::set_IsHitTestVisible(bool)
    IL_003f:  ret
  } // end of method ClearWidget::.ctor

  .method public hidebysig specialname instance valuetype [Engine]Engine.Color 
          get_Color() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Color Game.ClearWidget::'<Color>k__BackingField'
    IL_0006:  ret
  } // end of method ClearWidget::get_Color

  .method public hidebysig specialname instance void 
          set_Color(valuetype [Engine]Engine.Color 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Color Game.ClearWidget::'<Color>k__BackingField'
    IL_0007:  ret
  } // end of method ClearWidget::set_Color

  .method public hidebysig specialname instance float32 
          get_Depth() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ClearWidget::'<Depth>k__BackingField'
    IL_0006:  ret
  } // end of method ClearWidget::get_Depth

  .method public hidebysig specialname instance void 
          set_Depth(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ClearWidget::'<Depth>k__BackingField'
    IL_0007:  ret
  } // end of method ClearWidget::set_Depth

  .method public hidebysig specialname instance int32 
          get_Stencil() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.ClearWidget::'<Stencil>k__BackingField'
    IL_0006:  ret
  } // end of method ClearWidget::get_Stencil

  .method public hidebysig specialname instance void 
          set_Stencil(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 Game.ClearWidget::'<Stencil>k__BackingField'
    IL_0007:  ret
  } // end of method ClearWidget::set_Stencil

  .method public hidebysig specialname instance bool 
          get_ClearColor() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ClearWidget::'<ClearColor>k__BackingField'
    IL_0006:  ret
  } // end of method ClearWidget::get_ClearColor

  .method public hidebysig specialname instance void 
          set_ClearColor(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ClearWidget::'<ClearColor>k__BackingField'
    IL_0007:  ret
  } // end of method ClearWidget::set_ClearColor

  .method public hidebysig specialname instance bool 
          get_ClearDepth() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ClearWidget::'<ClearDepth>k__BackingField'
    IL_0006:  ret
  } // end of method ClearWidget::get_ClearDepth

  .method public hidebysig specialname instance void 
          set_ClearDepth(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ClearWidget::'<ClearDepth>k__BackingField'
    IL_0007:  ret
  } // end of method ClearWidget::set_ClearDepth

  .method public hidebysig specialname instance bool 
          get_ClearStencil() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ClearWidget::'<ClearStencil>k__BackingField'
    IL_0006:  ret
  } // end of method ClearWidget::get_ClearStencil

  .method public hidebysig specialname instance void 
          set_ClearStencil(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ClearWidget::'<ClearStencil>k__BackingField'
    IL_0007:  ret
  } // end of method ClearWidget::set_ClearStencil

  .method public hidebysig virtual instance void 
          Measure(valuetype [Engine]Engine.Vector2 availableSize) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  call       instance void Game.Widget::set_IsDrawRequired(bool)
    IL_0007:  ret
  } // end of method ClearWidget::Measure

  .method public hidebysig virtual instance void 
          Draw() cil managed
  {
    // 代码大小       101 (0x65)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector4> V_0,
             valuetype [System.Runtime]System.Nullable`1<float32> V_1,
             valuetype [System.Runtime]System.Nullable`1<int32> V_2)
    IL_0000:  ldarg.0
    IL_0001:  call       instance bool Game.ClearWidget::get_ClearColor()
    IL_0006:  brtrue.s   IL_0013

    IL_0008:  ldloca.s   V_0
    IL_000a:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector4>
    IL_0010:  ldloc.0
    IL_0011:  br.s       IL_0023

    IL_0013:  ldarg.0
    IL_0014:  call       instance valuetype [Engine]Engine.Color Game.ClearWidget::get_Color()
    IL_0019:  newobj     instance void [Engine]Engine.Vector4::.ctor(valuetype [Engine]Engine.Color)
    IL_001e:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector4>::.ctor(!0)
    IL_0023:  ldarg.0
    IL_0024:  call       instance bool Game.ClearWidget::get_ClearDepth()
    IL_0029:  brtrue.s   IL_0036

    IL_002b:  ldloca.s   V_1
    IL_002d:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
    IL_0033:  ldloc.1
    IL_0034:  br.s       IL_0041

    IL_0036:  ldarg.0
    IL_0037:  call       instance float32 Game.ClearWidget::get_Depth()
    IL_003c:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_0041:  ldarg.0
    IL_0042:  call       instance bool Game.ClearWidget::get_ClearStencil()
    IL_0047:  brtrue.s   IL_0054

    IL_0049:  ldloca.s   V_2
    IL_004b:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_0051:  ldloc.2
    IL_0052:  br.s       IL_005f

    IL_0054:  ldarg.0
    IL_0055:  call       instance int32 Game.ClearWidget::get_Stencil()
    IL_005a:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_005f:  call       void [Engine]Engine.Graphics.Display::Clear(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector4>,
                                                                     valuetype [System.Runtime]System.Nullable`1<float32>,
                                                                     valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_0064:  ret
  } // end of method ClearWidget::Draw

  .property instance valuetype [Engine]Engine.Color
          Color()
  {
    .get instance valuetype [Engine]Engine.Color Game.ClearWidget::get_Color()
    .set instance void Game.ClearWidget::set_Color(valuetype [Engine]Engine.Color)
  } // end of property ClearWidget::Color
  .property instance float32 Depth()
  {
    .get instance float32 Game.ClearWidget::get_Depth()
    .set instance void Game.ClearWidget::set_Depth(float32)
  } // end of property ClearWidget::Depth
  .property instance int32 Stencil()
  {
    .get instance int32 Game.ClearWidget::get_Stencil()
    .set instance void Game.ClearWidget::set_Stencil(int32)
  } // end of property ClearWidget::Stencil
  .property instance bool ClearColor()
  {
    .get instance bool Game.ClearWidget::get_ClearColor()
    .set instance void Game.ClearWidget::set_ClearColor(bool)
  } // end of property ClearWidget::ClearColor
  .property instance bool ClearDepth()
  {
    .get instance bool Game.ClearWidget::get_ClearDepth()
    .set instance void Game.ClearWidget::set_ClearDepth(bool)
  } // end of property ClearWidget::ClearDepth
  .property instance bool ClearStencil()
  {
    .get instance bool Game.ClearWidget::get_ClearStencil()
    .set instance void Game.ClearWidget::set_ClearStencil(bool)
  } // end of property ClearWidget::ClearStencil
} // end of class Game.ClearWidget