.class public auto ansi beforefieldinit Game.Widget
       extends [System.Runtime]System.Object
{
  .field private bool m_isVisible
  .field private bool m_isEnabled
  .field private valuetype [Engine]Engine.Vector2 m_actualSize
  .field private valuetype [Engine]Engine.Vector2 m_desiredSize
  .field private valuetype [Engine]Engine.Vector2 m_parentDesiredSize
  .field private valuetype [Engine]Engine.BoundingRectangle m_globalBounds
  .field private valuetype [Engine]Engine.Vector2 m_parentOffset
  .field private bool m_isLayoutTransformIdentity
  .field private bool m_isRenderTransformIdentity
  .field private valuetype [Engine]Engine.Matrix m_layoutTransform
  .field private valuetype [Engine]Engine.Matrix m_renderTransform
  .field private valuetype [Engine]Engine.Matrix m_globalTransform
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> m_invertedGlobalTransform
  .field private valuetype [Engine]Engine.Color m_colorTransform
  .field private valuetype [Engine]Engine.Color m_globalColorTransform
  .field private class Game.WidgetInput m_widgetsHierarchyInput
  .field private string '<Name>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private object '<Tag>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<IsHitTestVisible>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<ClampToBounds>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Vector2 '<Margin>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype Game.WidgetAlignment '<HorizontalAlignment>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype Game.WidgetAlignment '<VerticalAlignment>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<IsDrawRequired>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<IsOverdrawRequired>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.ContainerWidget '<ParentWidget>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       102 (0x66)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  stfld      bool Game.Widget::m_isLayoutTransformIdentity
    IL_0007:  ldarg.0
    IL_0008:  ldc.i4.1
    IL_0009:  stfld      bool Game.Widget::m_isRenderTransformIdentity
    IL_000e:  ldarg.0
    IL_000f:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_0014:  stfld      valuetype [Engine]Engine.Matrix Game.Widget::m_layoutTransform
    IL_0019:  ldarg.0
    IL_001a:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_001f:  stfld      valuetype [Engine]Engine.Matrix Game.Widget::m_renderTransform
    IL_0024:  ldarg.0
    IL_0025:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_002a:  stfld      valuetype [Engine]Engine.Matrix Game.Widget::m_globalTransform
    IL_002f:  ldarg.0
    IL_0030:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0035:  stfld      valuetype [Engine]Engine.Color Game.Widget::m_colorTransform
    IL_003a:  ldarg.0
    IL_003b:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0040:  ldarg.0
    IL_0041:  ldc.i4.1
    IL_0042:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0047:  ldarg.0
    IL_0048:  ldc.i4.1
    IL_0049:  callvirt   instance void Game.Widget::set_IsHitTestVisible(bool)
    IL_004e:  ldarg.0
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0055:  ldarg.0
    IL_0056:  ldc.r4     (00 00 80 7F)
    IL_005b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0060:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_0065:  ret
  } // end of method Widget::.ctor

  .method public hidebysig specialname instance class Game.WidgetInput 
          get_WidgetsHierarchyInput() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.WidgetInput Game.Widget::m_widgetsHierarchyInput
    IL_0006:  ret
  } // end of method Widget::get_WidgetsHierarchyInput

  .method public hidebysig specialname instance void 
          set_WidgetsHierarchyInput(class Game.WidgetInput 'value') cil managed
  {
    // 代码大小       74 (0x4a)
    .maxstack  2
    IL_0000:  ldarg.1
    IL_0001:  brfalse.s  IL_002e

    IL_0003:  ldarg.1
    IL_0004:  ldfld      class Game.Widget Game.WidgetInput::m_widget
    IL_0009:  brfalse.s  IL_001f

    IL_000b:  ldarg.1
    IL_000c:  ldfld      class Game.Widget Game.WidgetInput::m_widget
    IL_0011:  ldarg.0
    IL_0012:  beq.s      IL_001f

    IL_0014:  ldstr      "WidgetInput already assigned to another widget."
    IL_0019:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_001e:  throw

    IL_001f:  ldarg.1
    IL_0020:  ldarg.0
    IL_0021:  stfld      class Game.Widget Game.WidgetInput::m_widget
    IL_0026:  ldarg.0
    IL_0027:  ldarg.1
    IL_0028:  stfld      class Game.WidgetInput Game.Widget::m_widgetsHierarchyInput
    IL_002d:  ret

    IL_002e:  ldarg.0
    IL_002f:  ldfld      class Game.WidgetInput Game.Widget::m_widgetsHierarchyInput
    IL_0034:  brfalse.s  IL_0049

    IL_0036:  ldarg.0
    IL_0037:  ldfld      class Game.WidgetInput Game.Widget::m_widgetsHierarchyInput
    IL_003c:  ldnull
    IL_003d:  stfld      class Game.Widget Game.WidgetInput::m_widget
    IL_0042:  ldarg.0
    IL_0043:  ldnull
    IL_0044:  stfld      class Game.WidgetInput Game.Widget::m_widgetsHierarchyInput
    IL_0049:  ret
  } // end of method Widget::set_WidgetsHierarchyInput

  .method public hidebysig specialname instance class Game.WidgetInput 
          get_Input() cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  1
    .locals init (class Game.Widget V_0)
    IL_0000:  ldarg.0
    IL_0001:  stloc.0
    IL_0002:  ldloc.0
    IL_0003:  callvirt   instance class Game.WidgetInput Game.Widget::get_WidgetsHierarchyInput()
    IL_0008:  brfalse.s  IL_0011

    IL_000a:  ldloc.0
    IL_000b:  callvirt   instance class Game.WidgetInput Game.Widget::get_WidgetsHierarchyInput()
    IL_0010:  ret

    IL_0011:  ldloc.0
    IL_0012:  callvirt   instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_0017:  stloc.0
    IL_0018:  ldloc.0
    IL_0019:  brtrue.s   IL_0002

    IL_001b:  call       class Game.WidgetInput Game.WidgetInput::get_EmptyInput()
    IL_0020:  ret
  } // end of method Widget::get_Input

  .method public hidebysig specialname instance valuetype [Engine]Engine.Matrix 
          get_LayoutTransform() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Matrix Game.Widget::m_layoutTransform
    IL_0006:  ret
  } // end of method Widget::get_LayoutTransform

  .method public hidebysig specialname instance void 
          set_LayoutTransform(valuetype [Engine]Engine.Matrix 'value') cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Matrix Game.Widget::m_layoutTransform
    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_000e:  call       bool [Engine]Engine.Matrix::op_Equality(valuetype [Engine]Engine.Matrix,
                                                                 valuetype [Engine]Engine.Matrix)
    IL_0013:  stfld      bool Game.Widget::m_isLayoutTransformIdentity
    IL_0018:  ret
  } // end of method Widget::set_LayoutTransform

  .method public hidebysig specialname instance valuetype [Engine]Engine.Matrix 
          get_RenderTransform() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Matrix Game.Widget::m_renderTransform
    IL_0006:  ret
  } // end of method Widget::get_RenderTransform

  .method public hidebysig specialname instance void 
          set_RenderTransform(valuetype [Engine]Engine.Matrix 'value') cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Matrix Game.Widget::m_renderTransform
    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_000e:  call       bool [Engine]Engine.Matrix::op_Equality(valuetype [Engine]Engine.Matrix,
                                                                 valuetype [Engine]Engine.Matrix)
    IL_0013:  stfld      bool Game.Widget::m_isRenderTransformIdentity
    IL_0018:  ret
  } // end of method Widget::set_RenderTransform

  .method public hidebysig specialname instance valuetype [Engine]Engine.Matrix 
          get_GlobalTransform() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Matrix Game.Widget::m_globalTransform
    IL_0006:  ret
  } // end of method Widget::get_GlobalTransform

  .method public hidebysig specialname instance valuetype [Engine]Engine.Matrix 
          get_InvertedGlobalTransform() cil managed
  {
    // 代码大小       47 (0x2f)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.Widget::m_invertedGlobalTransform
    IL_0006:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
    IL_000b:  brtrue.s   IL_0023

    IL_000d:  ldarg.0
    IL_000e:  ldarg.0
    IL_000f:  ldfld      valuetype [Engine]Engine.Matrix Game.Widget::m_globalTransform
    IL_0014:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Invert(valuetype [Engine]Engine.Matrix)
    IL_0019:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_001e:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.Widget::m_invertedGlobalTransform
    IL_0023:  ldarg.0
    IL_0024:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.Widget::m_invertedGlobalTransform
    IL_0029:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
    IL_002e:  ret
  } // end of method Widget::get_InvertedGlobalTransform

  .method public hidebysig specialname instance valuetype [Engine]Engine.BoundingRectangle 
          get_GlobalBounds() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.BoundingRectangle Game.Widget::m_globalBounds
    IL_0006:  ret
  } // end of method Widget::get_GlobalBounds

  .method public hidebysig specialname instance valuetype [Engine]Engine.Color 
          get_ColorTransform() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Color Game.Widget::m_colorTransform
    IL_0006:  ret
  } // end of method Widget::get_ColorTransform

  .method public hidebysig specialname instance void 
          set_ColorTransform(valuetype [Engine]Engine.Color 'value') cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Color Game.Widget::m_colorTransform
    IL_0007:  ret
  } // end of method Widget::set_ColorTransform

  .method public hidebysig specialname instance valuetype [Engine]Engine.Color 
          get_GlobalColorTransform() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Color Game.Widget::m_globalColorTransform
    IL_0006:  ret
  } // end of method Widget::get_GlobalColorTransform

  .method public hidebysig newslot specialname virtual 
          instance string  get_Name() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.Widget::'<Name>k__BackingField'
    IL_0006:  ret
  } // end of method Widget::get_Name

  .method public hidebysig newslot specialname virtual 
          instance void  set_Name(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string Game.Widget::'<Name>k__BackingField'
    IL_0007:  ret
  } // end of method Widget::set_Name

  .method public hidebysig specialname instance object 
          get_Tag() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      object Game.Widget::'<Tag>k__BackingField'
    IL_0006:  ret
  } // end of method Widget::get_Tag

  .method public hidebysig specialname instance void 
          set_Tag(object 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      object Game.Widget::'<Tag>k__BackingField'
    IL_0007:  ret
  } // end of method Widget::set_Tag

  .method public hidebysig newslot specialname virtual 
          instance bool  get_IsVisible() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.Widget::m_isVisible
    IL_0006:  ret
  } // end of method Widget::get_IsVisible

  .method public hidebysig newslot specialname virtual 
          instance void  set_IsVisible(bool 'value') cil managed
  {
    // 代码大小       31 (0x1f)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      bool Game.Widget::m_isVisible
    IL_0007:  beq.s      IL_001e

    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  stfld      bool Game.Widget::m_isVisible
    IL_0010:  ldarg.0
    IL_0011:  ldfld      bool Game.Widget::m_isVisible
    IL_0016:  brtrue.s   IL_001e

    IL_0018:  ldarg.0
    IL_0019:  callvirt   instance void Game.Widget::UpdateCeases()
    IL_001e:  ret
  } // end of method Widget::set_IsVisible

  .method public hidebysig newslot specialname virtual 
          instance bool  get_IsEnabled() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.Widget::m_isEnabled
    IL_0006:  ret
  } // end of method Widget::get_IsEnabled

  .method public hidebysig newslot specialname virtual 
          instance void  set_IsEnabled(bool 'value') cil managed
  {
    // 代码大小       31 (0x1f)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      bool Game.Widget::m_isEnabled
    IL_0007:  beq.s      IL_001e

    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  stfld      bool Game.Widget::m_isEnabled
    IL_0010:  ldarg.0
    IL_0011:  ldfld      bool Game.Widget::m_isEnabled
    IL_0016:  brtrue.s   IL_001e

    IL_0018:  ldarg.0
    IL_0019:  callvirt   instance void Game.Widget::UpdateCeases()
    IL_001e:  ret
  } // end of method Widget::set_IsEnabled

  .method public hidebysig newslot specialname virtual 
          instance bool  get_IsHitTestVisible() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.Widget::'<IsHitTestVisible>k__BackingField'
    IL_0006:  ret
  } // end of method Widget::get_IsHitTestVisible

  .method public hidebysig newslot specialname virtual 
          instance void  set_IsHitTestVisible(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.Widget::'<IsHitTestVisible>k__BackingField'
    IL_0007:  ret
  } // end of method Widget::set_IsHitTestVisible

  .method public hidebysig specialname instance bool 
          get_ClampToBounds() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.Widget::'<ClampToBounds>k__BackingField'
    IL_0006:  ret
  } // end of method Widget::get_ClampToBounds

  .method public hidebysig specialname instance void 
          set_ClampToBounds(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.Widget::'<ClampToBounds>k__BackingField'
    IL_0007:  ret
  } // end of method Widget::set_ClampToBounds

  .method public hidebysig newslot specialname virtual 
          instance valuetype [Engine]Engine.Vector2 
          get_Margin() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector2 Game.Widget::'<Margin>k__BackingField'
    IL_0006:  ret
  } // end of method Widget::get_Margin

  .method public hidebysig newslot specialname virtual 
          instance void  set_Margin(valuetype [Engine]Engine.Vector2 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector2 Game.Widget::'<Margin>k__BackingField'
    IL_0007:  ret
  } // end of method Widget::set_Margin

  .method public hidebysig newslot specialname virtual 
          instance valuetype Game.WidgetAlignment 
          get_HorizontalAlignment() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype Game.WidgetAlignment Game.Widget::'<HorizontalAlignment>k__BackingField'
    IL_0006:  ret
  } // end of method Widget::get_HorizontalAlignment

  .method public hidebysig newslot specialname virtual 
          instance void  set_HorizontalAlignment(valuetype Game.WidgetAlignment 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype Game.WidgetAlignment Game.Widget::'<HorizontalAlignment>k__BackingField'
    IL_0007:  ret
  } // end of method Widget::set_HorizontalAlignment

  .method public hidebysig newslot specialname virtual 
          instance valuetype Game.WidgetAlignment 
          get_VerticalAlignment() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype Game.WidgetAlignment Game.Widget::'<VerticalAlignment>k__BackingField'
    IL_0006:  ret
  } // end of method Widget::get_VerticalAlignment

  .method public hidebysig newslot specialname virtual 
          instance void  set_VerticalAlignment(valuetype Game.WidgetAlignment 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype Game.WidgetAlignment Game.Widget::'<VerticalAlignment>k__BackingField'
    IL_0007:  ret
  } // end of method Widget::set_VerticalAlignment

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector2 
          get_ActualSize() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector2 Game.Widget::m_actualSize
    IL_0006:  ret
  } // end of method Widget::get_ActualSize

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector2 
          get_DesiredSize() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector2 Game.Widget::m_desiredSize
    IL_0006:  ret
  } // end of method Widget::get_DesiredSize

  .method family hidebysig specialname instance void 
          set_DesiredSize(valuetype [Engine]Engine.Vector2 'value') cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector2 Game.Widget::m_desiredSize
    IL_0007:  ret
  } // end of method Widget::set_DesiredSize

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector2 
          get_ParentDesiredSize() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector2 Game.Widget::m_parentDesiredSize
    IL_0006:  ret
  } // end of method Widget::get_ParentDesiredSize

  .method public hidebysig specialname instance bool 
          get_IsDrawRequired() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.Widget::'<IsDrawRequired>k__BackingField'
    IL_0006:  ret
  } // end of method Widget::get_IsDrawRequired

  .method family hidebysig specialname instance void 
          set_IsDrawRequired(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.Widget::'<IsDrawRequired>k__BackingField'
    IL_0007:  ret
  } // end of method Widget::set_IsDrawRequired

  .method public hidebysig specialname instance bool 
          get_IsOverdrawRequired() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.Widget::'<IsOverdrawRequired>k__BackingField'
    IL_0006:  ret
  } // end of method Widget::get_IsOverdrawRequired

  .method family hidebysig specialname instance void 
          set_IsOverdrawRequired(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.Widget::'<IsOverdrawRequired>k__BackingField'
    IL_0007:  ret
  } // end of method Widget::set_IsOverdrawRequired

  .method public hidebysig specialname instance void 
          set_Style(class [System.Xml.XDocument]System.Xml.Linq.XElement 'value') cil managed
  {
    // 代码大小       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldnull
    IL_0002:  ldarg.1
    IL_0003:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0008:  ret
  } // end of method Widget::set_Style

  .method public hidebysig specialname instance class Game.ContainerWidget 
          get_ParentWidget() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ContainerWidget Game.Widget::'<ParentWidget>k__BackingField'
    IL_0006:  ret
  } // end of method Widget::get_ParentWidget

  .method private hidebysig specialname instance void 
          set_ParentWidget(class Game.ContainerWidget 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ContainerWidget Game.Widget::'<ParentWidget>k__BackingField'
    IL_0007:  ret
  } // end of method Widget::set_ParentWidget

  .method public hidebysig specialname instance class Game.ContainerWidget 
          get_RootWidget() cil managed
  {
    // 代码大小       27 (0x1b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_0006:  brtrue.s   IL_000f

    IL_0008:  ldarg.0
    IL_0009:  isinst     Game.ContainerWidget
    IL_000e:  ret

    IL_000f:  ldarg.0
    IL_0010:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_0015:  callvirt   instance class Game.ContainerWidget Game.Widget::get_RootWidget()
    IL_001a:  ret
  } // end of method Widget::get_RootWidget

  .method public hidebysig instance bool 
          IsChildWidgetOf(class Game.ContainerWidget containerWidget) cil managed
  {
    // 代码大小       34 (0x22)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_0007:  bne.un.s   IL_000b

    IL_0009:  ldc.i4.1
    IL_000a:  ret

    IL_000b:  ldarg.0
    IL_000c:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_0011:  brtrue.s   IL_0015

    IL_0013:  ldc.i4.0
    IL_0014:  ret

    IL_0015:  ldarg.0
    IL_0016:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_001b:  ldarg.1
    IL_001c:  callvirt   instance bool Game.Widget::IsChildWidgetOf(class Game.ContainerWidget)
    IL_0021:  ret
  } // end of method Widget::IsChildWidgetOf

  .method assembly hidebysig newslot strict virtual 
          instance void  ChangeParent(class Game.ContainerWidget parentWidget) cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_0007:  beq.s      IL_0019

    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  call       instance void Game.Widget::set_ParentWidget(class Game.ContainerWidget)
    IL_0010:  ldarg.1
    IL_0011:  brtrue.s   IL_0019

    IL_0013:  ldarg.0
    IL_0014:  callvirt   instance void Game.Widget::UpdateCeases()
    IL_0019:  ret
  } // end of method Widget::ChangeParent

  .method assembly hidebysig instance void 
          Measure(valuetype [Engine]Engine.Vector2 parentAvailableSize) cil managed
  {
    // 代码大小       111 (0x6f)
    .maxstack  2
    .locals init (valuetype [Engine]Engine.BoundingRectangle V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance void Game.Widget::MeasureOverride(valuetype [Engine]Engine.Vector2)
    IL_0007:  ldarg.0
    IL_0008:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
    IL_000d:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0012:  ldc.r4     (00 00 80 7F)
    IL_0017:  beq.s      IL_0057

    IL_0019:  ldarg.0
    IL_001a:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
    IL_001f:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0024:  ldc.r4     (00 00 80 7F)
    IL_0029:  beq.s      IL_0057

    IL_002b:  ldarg.0
    IL_002c:  ldarg.0
    IL_002d:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
    IL_0032:  call       instance valuetype [Engine]Engine.BoundingRectangle Game.Widget::TransformBoundsToParent(valuetype [Engine]Engine.Vector2)
    IL_0037:  stloc.0
    IL_0038:  ldarg.0
    IL_0039:  ldloca.s   V_0
    IL_003b:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.BoundingRectangle::Size()
    IL_0040:  stfld      valuetype [Engine]Engine.Vector2 Game.Widget::m_parentDesiredSize
    IL_0045:  ldarg.0
    IL_0046:  ldloc.0
    IL_0047:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.BoundingRectangle::Min
    IL_004c:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_UnaryNegation(valuetype [Engine]Engine.Vector2)
    IL_0051:  stfld      valuetype [Engine]Engine.Vector2 Game.Widget::m_parentOffset
    IL_0056:  ret

    IL_0057:  ldarg.0
    IL_0058:  ldarg.0
    IL_0059:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
    IL_005e:  stfld      valuetype [Engine]Engine.Vector2 Game.Widget::m_parentDesiredSize
    IL_0063:  ldarg.0
    IL_0064:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0069:  stfld      valuetype [Engine]Engine.Vector2 Game.Widget::m_parentOffset
    IL_006e:  ret
  } // end of method Widget::Measure

  .method public hidebysig newslot virtual 
          instance void  MeasureOverride(valuetype [Engine]Engine.Vector2 parentAvailableSize) cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method Widget::MeasureOverride

  .method assembly hidebysig instance void 
          Arrange(valuetype [Engine]Engine.Vector2 position,
                  valuetype [Engine]Engine.Vector2 parentActualSize) cil managed
  {
    // 代码大小       497 (0x1f1)
    .maxstack  4
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
    IL_0006:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_000b:  ldc.r4     (00 00 80 7F)
    IL_0010:  beq.s      IL_0035

    IL_0012:  ldarg.0
    IL_0013:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
    IL_0018:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_001d:  ldc.r4     (00 00 80 7F)
    IL_0022:  beq.s      IL_0035

    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
    IL_002b:  stfld      valuetype [Engine]Engine.Vector2 Game.Widget::m_actualSize
    IL_0030:  br         IL_00f1

    IL_0035:  ldarg.0
    IL_0036:  ldflda     valuetype [Engine]Engine.Matrix Game.Widget::m_layoutTransform
    IL_003b:  ldfld      float32 [Engine]Engine.Matrix::M11
    IL_0040:  ldarg.0
    IL_0041:  ldflda     valuetype [Engine]Engine.Matrix Game.Widget::m_layoutTransform
    IL_0046:  ldfld      float32 [Engine]Engine.Matrix::M11
    IL_004b:  mul
    IL_004c:  stloc.0
    IL_004d:  ldarg.0
    IL_004e:  ldflda     valuetype [Engine]Engine.Matrix Game.Widget::m_layoutTransform
    IL_0053:  ldfld      float32 [Engine]Engine.Matrix::M12
    IL_0058:  ldarg.0
    IL_0059:  ldflda     valuetype [Engine]Engine.Matrix Game.Widget::m_layoutTransform
    IL_005e:  ldfld      float32 [Engine]Engine.Matrix::M12
    IL_0063:  mul
    IL_0064:  stloc.1
    IL_0065:  ldarg.0
    IL_0066:  ldflda     valuetype [Engine]Engine.Matrix Game.Widget::m_layoutTransform
    IL_006b:  ldfld      float32 [Engine]Engine.Matrix::M21
    IL_0070:  ldarg.0
    IL_0071:  ldflda     valuetype [Engine]Engine.Matrix Game.Widget::m_layoutTransform
    IL_0076:  ldfld      float32 [Engine]Engine.Matrix::M21
    IL_007b:  mul
    IL_007c:  stloc.2
    IL_007d:  ldarg.0
    IL_007e:  ldflda     valuetype [Engine]Engine.Matrix Game.Widget::m_layoutTransform
    IL_0083:  ldfld      float32 [Engine]Engine.Matrix::M22
    IL_0088:  ldarg.0
    IL_0089:  ldflda     valuetype [Engine]Engine.Matrix Game.Widget::m_layoutTransform
    IL_008e:  ldfld      float32 [Engine]Engine.Matrix::M22
    IL_0093:  mul
    IL_0094:  stloc.3
    IL_0095:  ldarg.0
    IL_0096:  ldflda     valuetype [Engine]Engine.Vector2 Game.Widget::m_actualSize
    IL_009b:  ldloc.0
    IL_009c:  ldarg.2
    IL_009d:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00a2:  mul
    IL_00a3:  ldloc.2
    IL_00a4:  ldarg.2
    IL_00a5:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00aa:  mul
    IL_00ab:  add
    IL_00ac:  ldloc.0
    IL_00ad:  ldloc.2
    IL_00ae:  add
    IL_00af:  div
    IL_00b0:  stfld      float32 [Engine]Engine.Vector2::X
    IL_00b5:  ldarg.0
    IL_00b6:  ldflda     valuetype [Engine]Engine.Vector2 Game.Widget::m_actualSize
    IL_00bb:  ldloc.1
    IL_00bc:  ldarg.2
    IL_00bd:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00c2:  mul
    IL_00c3:  ldloc.3
    IL_00c4:  ldarg.2
    IL_00c5:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00ca:  mul
    IL_00cb:  add
    IL_00cc:  ldloc.1
    IL_00cd:  ldloc.3
    IL_00ce:  add
    IL_00cf:  div
    IL_00d0:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_00d5:  ldarg.0
    IL_00d6:  ldarg.0
    IL_00d7:  ldarg.0
    IL_00d8:  ldfld      valuetype [Engine]Engine.Vector2 Game.Widget::m_actualSize
    IL_00dd:  call       instance valuetype [Engine]Engine.BoundingRectangle Game.Widget::TransformBoundsToParent(valuetype [Engine]Engine.Vector2)
    IL_00e2:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.BoundingRectangle::Min
    IL_00e7:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_UnaryNegation(valuetype [Engine]Engine.Vector2)
    IL_00ec:  stfld      valuetype [Engine]Engine.Vector2 Game.Widget::m_parentOffset
    IL_00f1:  ldarg.0
    IL_00f2:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_00f7:  brfalse.s  IL_0117

    IL_00f9:  ldarg.0
    IL_00fa:  ldarg.0
    IL_00fb:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_0100:  ldfld      valuetype [Engine]Engine.Color Game.Widget::m_globalColorTransform
    IL_0105:  ldarg.0
    IL_0106:  ldfld      valuetype [Engine]Engine.Color Game.Widget::m_colorTransform
    IL_010b:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0110:  stfld      valuetype [Engine]Engine.Color Game.Widget::m_globalColorTransform
    IL_0115:  br.s       IL_0123

    IL_0117:  ldarg.0
    IL_0118:  ldarg.0
    IL_0119:  ldfld      valuetype [Engine]Engine.Color Game.Widget::m_colorTransform
    IL_011e:  stfld      valuetype [Engine]Engine.Color Game.Widget::m_globalColorTransform
    IL_0123:  ldarg.0
    IL_0124:  ldfld      bool Game.Widget::m_isRenderTransformIdentity
    IL_0129:  brfalse.s  IL_0139

    IL_012b:  ldarg.0
    IL_012c:  ldarg.0
    IL_012d:  ldfld      valuetype [Engine]Engine.Matrix Game.Widget::m_layoutTransform
    IL_0132:  stfld      valuetype [Engine]Engine.Matrix Game.Widget::m_globalTransform
    IL_0137:  br.s       IL_0166

    IL_0139:  ldarg.0
    IL_013a:  ldfld      bool Game.Widget::m_isLayoutTransformIdentity
    IL_013f:  brfalse.s  IL_014f

    IL_0141:  ldarg.0
    IL_0142:  ldarg.0
    IL_0143:  ldfld      valuetype [Engine]Engine.Matrix Game.Widget::m_renderTransform
    IL_0148:  stfld      valuetype [Engine]Engine.Matrix Game.Widget::m_globalTransform
    IL_014d:  br.s       IL_0166

    IL_014f:  ldarg.0
    IL_0150:  ldarg.0
    IL_0151:  ldfld      valuetype [Engine]Engine.Matrix Game.Widget::m_renderTransform
    IL_0156:  ldarg.0
    IL_0157:  ldfld      valuetype [Engine]Engine.Matrix Game.Widget::m_layoutTransform
    IL_015c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0161:  stfld      valuetype [Engine]Engine.Matrix Game.Widget::m_globalTransform
    IL_0166:  ldarg.0
    IL_0167:  ldflda     valuetype [Engine]Engine.Matrix Game.Widget::m_globalTransform
    IL_016c:  ldflda     float32 [Engine]Engine.Matrix::M41
    IL_0171:  dup
    IL_0172:  ldind.r4
    IL_0173:  ldarg.1
    IL_0174:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0179:  ldarg.0
    IL_017a:  ldflda     valuetype [Engine]Engine.Vector2 Game.Widget::m_parentOffset
    IL_017f:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0184:  add
    IL_0185:  add
    IL_0186:  stind.r4
    IL_0187:  ldarg.0
    IL_0188:  ldflda     valuetype [Engine]Engine.Matrix Game.Widget::m_globalTransform
    IL_018d:  ldflda     float32 [Engine]Engine.Matrix::M42
    IL_0192:  dup
    IL_0193:  ldind.r4
    IL_0194:  ldarg.1
    IL_0195:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_019a:  ldarg.0
    IL_019b:  ldflda     valuetype [Engine]Engine.Vector2 Game.Widget::m_parentOffset
    IL_01a0:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_01a5:  add
    IL_01a6:  add
    IL_01a7:  stind.r4
    IL_01a8:  ldarg.0
    IL_01a9:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_01ae:  brfalse.s  IL_01cc

    IL_01b0:  ldarg.0
    IL_01b1:  ldarg.0
    IL_01b2:  ldfld      valuetype [Engine]Engine.Matrix Game.Widget::m_globalTransform
    IL_01b7:  ldarg.0
    IL_01b8:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_01bd:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_01c2:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_01c7:  stfld      valuetype [Engine]Engine.Matrix Game.Widget::m_globalTransform
    IL_01cc:  ldarg.0
    IL_01cd:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.Widget::m_invertedGlobalTransform
    IL_01d2:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_01d8:  ldarg.0
    IL_01d9:  ldarg.0
    IL_01da:  ldarg.0
    IL_01db:  ldfld      valuetype [Engine]Engine.Vector2 Game.Widget::m_actualSize
    IL_01e0:  call       instance valuetype [Engine]Engine.BoundingRectangle Game.Widget::TransformBoundsToGlobal(valuetype [Engine]Engine.Vector2)
    IL_01e5:  stfld      valuetype [Engine]Engine.BoundingRectangle Game.Widget::m_globalBounds
    IL_01ea:  ldarg.0
    IL_01eb:  callvirt   instance void Game.Widget::ArrangeOverride()
    IL_01f0:  ret
  } // end of method Widget::Arrange

  .method public hidebysig newslot virtual 
          instance void  ArrangeOverride() cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method Widget::ArrangeOverride

  .method public hidebysig newslot virtual 
          instance void  UpdateCeases() cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method Widget::UpdateCeases

  .method public hidebysig newslot virtual 
          instance void  Update() cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method Widget::Update

  .method public hidebysig newslot virtual 
          instance void  Draw() cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method Widget::Draw

  .method public hidebysig newslot virtual 
          instance void  Overdraw() cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method Widget::Overdraw

  .method public hidebysig newslot virtual 
          instance bool  HitTest(valuetype [Engine]Engine.Vector2 point) cil managed
  {
    // 代码大小       78 (0x4e)
    .maxstack  2
    .locals init (valuetype [Engine]Engine.Vector2 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::ScreenToWidget(valuetype [Engine]Engine.Vector2)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_000e:  ldc.r4     0.0
    IL_0013:  blt.un.s   IL_004c

    IL_0015:  ldloc.0
    IL_0016:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_001b:  ldc.r4     0.0
    IL_0020:  blt.un.s   IL_004c

    IL_0022:  ldloc.0
    IL_0023:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0028:  ldarg.0
    IL_0029:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_002e:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0033:  bgt.un.s   IL_004c

    IL_0035:  ldloc.0
    IL_0036:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_003b:  ldarg.0
    IL_003c:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0041:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0046:  cgt.un
    IL_0048:  ldc.i4.0
    IL_0049:  ceq
    IL_004b:  ret

    IL_004c:  ldc.i4.0
    IL_004d:  ret
  } // end of method Widget::HitTest

  .method public hidebysig instance valuetype [Engine]Engine.Vector2 
          ScreenToWidget(valuetype [Engine]Engine.Vector2 p) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  call       instance valuetype [Engine]Engine.Matrix Game.Widget::get_InvertedGlobalTransform()
    IL_0007:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Transform(valuetype [Engine]Engine.Vector2,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_000c:  ret
  } // end of method Widget::ScreenToWidget

  .method public hidebysig instance valuetype [Engine]Engine.Vector2 
          WidgetToScreen(valuetype [Engine]Engine.Vector2 p) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  call       instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_0007:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Transform(valuetype [Engine]Engine.Vector2,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_000c:  ret
  } // end of method Widget::WidgetToScreen

  .method public hidebysig static bool  TestOverlap(class Game.Widget w1,
                                                    class Game.Widget w2) cil managed
  {
    // 代码大小       170 (0xaa)
    .maxstack  3
    IL_0000:  ldarg.1
    IL_0001:  ldflda     valuetype [Engine]Engine.BoundingRectangle Game.Widget::m_globalBounds
    IL_0006:  ldflda     valuetype [Engine]Engine.Vector2 [Engine]Engine.BoundingRectangle::Min
    IL_000b:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0010:  ldarg.0
    IL_0011:  ldflda     valuetype [Engine]Engine.BoundingRectangle Game.Widget::m_globalBounds
    IL_0016:  ldflda     valuetype [Engine]Engine.Vector2 [Engine]Engine.BoundingRectangle::Max
    IL_001b:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0020:  ldc.r4     1.e-003
    IL_0025:  sub
    IL_0026:  blt.un.s   IL_002a

    IL_0028:  ldc.i4.0
    IL_0029:  ret

    IL_002a:  ldarg.1
    IL_002b:  ldflda     valuetype [Engine]Engine.BoundingRectangle Game.Widget::m_globalBounds
    IL_0030:  ldflda     valuetype [Engine]Engine.Vector2 [Engine]Engine.BoundingRectangle::Min
    IL_0035:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_003a:  ldarg.0
    IL_003b:  ldflda     valuetype [Engine]Engine.BoundingRectangle Game.Widget::m_globalBounds
    IL_0040:  ldflda     valuetype [Engine]Engine.Vector2 [Engine]Engine.BoundingRectangle::Max
    IL_0045:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_004a:  ldc.r4     1.e-003
    IL_004f:  sub
    IL_0050:  blt.un.s   IL_0054

    IL_0052:  ldc.i4.0
    IL_0053:  ret

    IL_0054:  ldarg.0
    IL_0055:  ldflda     valuetype [Engine]Engine.BoundingRectangle Game.Widget::m_globalBounds
    IL_005a:  ldflda     valuetype [Engine]Engine.Vector2 [Engine]Engine.BoundingRectangle::Min
    IL_005f:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0064:  ldarg.1
    IL_0065:  ldflda     valuetype [Engine]Engine.BoundingRectangle Game.Widget::m_globalBounds
    IL_006a:  ldflda     valuetype [Engine]Engine.Vector2 [Engine]Engine.BoundingRectangle::Max
    IL_006f:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0074:  ldc.r4     1.e-003
    IL_0079:  sub
    IL_007a:  blt.un.s   IL_007e

    IL_007c:  ldc.i4.0
    IL_007d:  ret

    IL_007e:  ldarg.0
    IL_007f:  ldflda     valuetype [Engine]Engine.BoundingRectangle Game.Widget::m_globalBounds
    IL_0084:  ldflda     valuetype [Engine]Engine.Vector2 [Engine]Engine.BoundingRectangle::Min
    IL_0089:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_008e:  ldarg.1
    IL_008f:  ldflda     valuetype [Engine]Engine.BoundingRectangle Game.Widget::m_globalBounds
    IL_0094:  ldflda     valuetype [Engine]Engine.Vector2 [Engine]Engine.BoundingRectangle::Max
    IL_0099:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_009e:  ldc.r4     1.e-003
    IL_00a3:  sub
    IL_00a4:  blt.un.s   IL_00a8

    IL_00a6:  ldc.i4.0
    IL_00a7:  ret

    IL_00a8:  ldc.i4.1
    IL_00a9:  ret
  } // end of method Widget::TestOverlap

  .method private hidebysig instance valuetype [Engine]Engine.BoundingRectangle 
          TransformBoundsToParent(valuetype [Engine]Engine.Vector2 size) cil managed
  {
    // 代码大小       161 (0xa1)
    .maxstack  5
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5,
             float32 V_6,
             float32 V_7,
             float32 V_8)
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [Engine]Engine.Matrix Game.Widget::m_layoutTransform
    IL_0006:  ldfld      float32 [Engine]Engine.Matrix::M11
    IL_000b:  ldarg.1
    IL_000c:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0011:  mul
    IL_0012:  stloc.0
    IL_0013:  ldarg.0
    IL_0014:  ldflda     valuetype [Engine]Engine.Matrix Game.Widget::m_layoutTransform
    IL_0019:  ldfld      float32 [Engine]Engine.Matrix::M21
    IL_001e:  ldarg.1
    IL_001f:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0024:  mul
    IL_0025:  stloc.1
    IL_0026:  ldloc.0
    IL_0027:  ldloc.1
    IL_0028:  add
    IL_0029:  stloc.2
    IL_002a:  ldarg.0
    IL_002b:  ldflda     valuetype [Engine]Engine.Matrix Game.Widget::m_layoutTransform
    IL_0030:  ldfld      float32 [Engine]Engine.Matrix::M12
    IL_0035:  ldarg.1
    IL_0036:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_003b:  mul
    IL_003c:  stloc.3
    IL_003d:  ldarg.0
    IL_003e:  ldflda     valuetype [Engine]Engine.Matrix Game.Widget::m_layoutTransform
    IL_0043:  ldfld      float32 [Engine]Engine.Matrix::M22
    IL_0048:  ldarg.1
    IL_0049:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_004e:  mul
    IL_004f:  stloc.s    V_4
    IL_0051:  ldloc.3
    IL_0052:  ldloc.s    V_4
    IL_0054:  add
    IL_0055:  stloc.s    V_5
    IL_0057:  ldc.r4     0.0
    IL_005c:  ldloc.0
    IL_005d:  ldloc.1
    IL_005e:  ldloc.2
    IL_005f:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_0064:  ldc.r4     0.0
    IL_0069:  ldloc.0
    IL_006a:  ldloc.1
    IL_006b:  ldloc.2
    IL_006c:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_0071:  stloc.s    V_6
    IL_0073:  ldc.r4     0.0
    IL_0078:  ldloc.3
    IL_0079:  ldloc.s    V_4
    IL_007b:  ldloc.s    V_5
    IL_007d:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_0082:  stloc.s    V_7
    IL_0084:  ldc.r4     0.0
    IL_0089:  ldloc.3
    IL_008a:  ldloc.s    V_4
    IL_008c:  ldloc.s    V_5
    IL_008e:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_0093:  stloc.s    V_8
    IL_0095:  ldloc.s    V_7
    IL_0097:  ldloc.s    V_6
    IL_0099:  ldloc.s    V_8
    IL_009b:  newobj     instance void [Engine]Engine.BoundingRectangle::.ctor(float32,
                                                                               float32,
                                                                               float32,
                                                                               float32)
    IL_00a0:  ret
  } // end of method Widget::TransformBoundsToParent

  .method private hidebysig instance valuetype [Engine]Engine.BoundingRectangle 
          TransformBoundsToGlobal(valuetype [Engine]Engine.Vector2 size) cil managed
  {
    // 代码大小       209 (0xd1)
    .maxstack  5
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5,
             float32 V_6,
             float32 V_7,
             float32 V_8)
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [Engine]Engine.Matrix Game.Widget::m_globalTransform
    IL_0006:  ldfld      float32 [Engine]Engine.Matrix::M11
    IL_000b:  ldarg.1
    IL_000c:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0011:  mul
    IL_0012:  stloc.0
    IL_0013:  ldarg.0
    IL_0014:  ldflda     valuetype [Engine]Engine.Matrix Game.Widget::m_globalTransform
    IL_0019:  ldfld      float32 [Engine]Engine.Matrix::M21
    IL_001e:  ldarg.1
    IL_001f:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0024:  mul
    IL_0025:  stloc.1
    IL_0026:  ldloc.0
    IL_0027:  ldloc.1
    IL_0028:  add
    IL_0029:  stloc.2
    IL_002a:  ldarg.0
    IL_002b:  ldflda     valuetype [Engine]Engine.Matrix Game.Widget::m_globalTransform
    IL_0030:  ldfld      float32 [Engine]Engine.Matrix::M12
    IL_0035:  ldarg.1
    IL_0036:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_003b:  mul
    IL_003c:  stloc.3
    IL_003d:  ldarg.0
    IL_003e:  ldflda     valuetype [Engine]Engine.Matrix Game.Widget::m_globalTransform
    IL_0043:  ldfld      float32 [Engine]Engine.Matrix::M22
    IL_0048:  ldarg.1
    IL_0049:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_004e:  mul
    IL_004f:  stloc.s    V_4
    IL_0051:  ldloc.3
    IL_0052:  ldloc.s    V_4
    IL_0054:  add
    IL_0055:  stloc.s    V_5
    IL_0057:  ldc.r4     0.0
    IL_005c:  ldloc.0
    IL_005d:  ldloc.1
    IL_005e:  ldloc.2
    IL_005f:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_0064:  ldc.r4     0.0
    IL_0069:  ldloc.0
    IL_006a:  ldloc.1
    IL_006b:  ldloc.2
    IL_006c:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_0071:  stloc.s    V_6
    IL_0073:  ldc.r4     0.0
    IL_0078:  ldloc.3
    IL_0079:  ldloc.s    V_4
    IL_007b:  ldloc.s    V_5
    IL_007d:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_0082:  stloc.s    V_7
    IL_0084:  ldc.r4     0.0
    IL_0089:  ldloc.3
    IL_008a:  ldloc.s    V_4
    IL_008c:  ldloc.s    V_5
    IL_008e:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_0093:  stloc.s    V_8
    IL_0095:  ldarg.0
    IL_0096:  ldflda     valuetype [Engine]Engine.Matrix Game.Widget::m_globalTransform
    IL_009b:  ldfld      float32 [Engine]Engine.Matrix::M41
    IL_00a0:  add
    IL_00a1:  ldloc.s    V_7
    IL_00a3:  ldarg.0
    IL_00a4:  ldflda     valuetype [Engine]Engine.Matrix Game.Widget::m_globalTransform
    IL_00a9:  ldfld      float32 [Engine]Engine.Matrix::M42
    IL_00ae:  add
    IL_00af:  ldloc.s    V_6
    IL_00b1:  ldarg.0
    IL_00b2:  ldflda     valuetype [Engine]Engine.Matrix Game.Widget::m_globalTransform
    IL_00b7:  ldfld      float32 [Engine]Engine.Matrix::M41
    IL_00bc:  add
    IL_00bd:  ldloc.s    V_8
    IL_00bf:  ldarg.0
    IL_00c0:  ldflda     valuetype [Engine]Engine.Matrix Game.Widget::m_globalTransform
    IL_00c5:  ldfld      float32 [Engine]Engine.Matrix::M42
    IL_00ca:  add
    IL_00cb:  newobj     instance void [Engine]Engine.BoundingRectangle::.ctor(float32,
                                                                               float32,
                                                                               float32,
                                                                               float32)
    IL_00d0:  ret
  } // end of method Widget::TransformBoundsToGlobal

  .property instance class Game.WidgetInput
          WidgetsHierarchyInput()
  {
    .get instance class Game.WidgetInput Game.Widget::get_WidgetsHierarchyInput()
    .set instance void Game.Widget::set_WidgetsHierarchyInput(class Game.WidgetInput)
  } // end of property Widget::WidgetsHierarchyInput
  .property instance class Game.WidgetInput
          Input()
  {
    .get instance class Game.WidgetInput Game.Widget::get_Input()
  } // end of property Widget::Input
  .property instance valuetype [Engine]Engine.Matrix
          LayoutTransform()
  {
    .get instance valuetype [Engine]Engine.Matrix Game.Widget::get_LayoutTransform()
    .set instance void Game.Widget::set_LayoutTransform(valuetype [Engine]Engine.Matrix)
  } // end of property Widget::LayoutTransform
  .property instance valuetype [Engine]Engine.Matrix
          RenderTransform()
  {
    .get instance valuetype [Engine]Engine.Matrix Game.Widget::get_RenderTransform()
    .set instance void Game.Widget::set_RenderTransform(valuetype [Engine]Engine.Matrix)
  } // end of property Widget::RenderTransform
  .property instance valuetype [Engine]Engine.Matrix
          GlobalTransform()
  {
    .get instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
  } // end of property Widget::GlobalTransform
  .property instance valuetype [Engine]Engine.Matrix
          InvertedGlobalTransform()
  {
    .get instance valuetype [Engine]Engine.Matrix Game.Widget::get_InvertedGlobalTransform()
  } // end of property Widget::InvertedGlobalTransform
  .property instance valuetype [Engine]Engine.BoundingRectangle
          GlobalBounds()
  {
    .get instance valuetype [Engine]Engine.BoundingRectangle Game.Widget::get_GlobalBounds()
  } // end of property Widget::GlobalBounds
  .property instance valuetype [Engine]Engine.Color
          ColorTransform()
  {
    .get instance valuetype [Engine]Engine.Color Game.Widget::get_ColorTransform()
    .set instance void Game.Widget::set_ColorTransform(valuetype [Engine]Engine.Color)
  } // end of property Widget::ColorTransform
  .property instance valuetype [Engine]Engine.Color
          GlobalColorTransform()
  {
    .get instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
  } // end of property Widget::GlobalColorTransform
  .property instance string Name()
  {
    .get instance string Game.Widget::get_Name()
    .set instance void Game.Widget::set_Name(string)
  } // end of property Widget::Name
  .property instance object Tag()
  {
    .get instance object Game.Widget::get_Tag()
    .set instance void Game.Widget::set_Tag(object)
  } // end of property Widget::Tag
  .property instance bool IsVisible()
  {
    .get instance bool Game.Widget::get_IsVisible()
    .set instance void Game.Widget::set_IsVisible(bool)
  } // end of property Widget::IsVisible
  .property instance bool IsEnabled()
  {
    .get instance bool Game.Widget::get_IsEnabled()
    .set instance void Game.Widget::set_IsEnabled(bool)
  } // end of property Widget::IsEnabled
  .property instance bool IsHitTestVisible()
  {
    .get instance bool Game.Widget::get_IsHitTestVisible()
    .set instance void Game.Widget::set_IsHitTestVisible(bool)
  } // end of property Widget::IsHitTestVisible
  .property instance bool ClampToBounds()
  {
    .get instance bool Game.Widget::get_ClampToBounds()
    .set instance void Game.Widget::set_ClampToBounds(bool)
  } // end of property Widget::ClampToBounds
  .property instance valuetype [Engine]Engine.Vector2
          Margin()
  {
    .get instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
    .set instance void Game.Widget::set_Margin(valuetype [Engine]Engine.Vector2)
  } // end of property Widget::Margin
  .property instance valuetype Game.WidgetAlignment
          HorizontalAlignment()
  {
    .get instance valuetype Game.WidgetAlignment Game.Widget::get_HorizontalAlignment()
    .set instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
  } // end of property Widget::HorizontalAlignment
  .property instance valuetype Game.WidgetAlignment
          VerticalAlignment()
  {
    .get instance valuetype Game.WidgetAlignment Game.Widget::get_VerticalAlignment()
    .set instance void Game.Widget::set_VerticalAlignment(valuetype Game.WidgetAlignment)
  } // end of property Widget::VerticalAlignment
  .property instance valuetype [Engine]Engine.Vector2
          ActualSize()
  {
    .get instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
  } // end of property Widget::ActualSize
  .property instance valuetype [Engine]Engine.Vector2
          DesiredSize()
  {
    .get instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
    .set instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
  } // end of property Widget::DesiredSize
  .property instance valuetype [Engine]Engine.Vector2
          ParentDesiredSize()
  {
    .get instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ParentDesiredSize()
  } // end of property Widget::ParentDesiredSize
  .property instance bool IsDrawRequired()
  {
    .get instance bool Game.Widget::get_IsDrawRequired()
    .set instance void Game.Widget::set_IsDrawRequired(bool)
  } // end of property Widget::IsDrawRequired
  .property instance bool IsOverdrawRequired()
  {
    .get instance bool Game.Widget::get_IsOverdrawRequired()
    .set instance void Game.Widget::set_IsOverdrawRequired(bool)
  } // end of property Widget::IsOverdrawRequired
  .property instance class [System.Xml.XDocument]System.Xml.Linq.XElement
          Style()
  {
    .set instance void Game.Widget::set_Style(class [System.Xml.XDocument]System.Xml.Linq.XElement)
  } // end of property Widget::Style
  .property instance class Game.ContainerWidget
          ParentWidget()
  {
    .get instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    .set instance void Game.Widget::set_ParentWidget(class Game.ContainerWidget)
  } // end of property Widget::ParentWidget
  .property instance class Game.ContainerWidget
          RootWidget()
  {
    .get instance class Game.ContainerWidget Game.Widget::get_RootWidget()
  } // end of property Widget::RootWidget
} // end of class Game.Widget