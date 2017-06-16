.class public auto ansi beforefieldinit Game.Widget
       extends [System.Runtime]System.Object
{
  .field private bool m_isVisible
  .field private bool m_isEnabled
  .field private string '<Name>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private object '<Tag>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<IsHitTestVisible>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<ClampToBounds>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Vector2 '<Position>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Vector2 '<Margin>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype Game.WidgetAlignment '<HorizontalAlignment>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype Game.WidgetAlignment '<VerticalAlignment>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Vector2 '<ActualSize>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Vector2 '<DesiredSize>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<IsDrawRequired>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.ContainerWidget '<ParentWidget>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       44 (0x2c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_000d:  ldarg.0
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance void Game.Widget::set_IsHitTestVisible(bool)
    IL_0014:  ldarg.0
    IL_0015:  ldc.i4.1
    IL_0016:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_001b:  ldarg.0
    IL_001c:  ldc.r4     (00 00 80 7F)
    IL_0021:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0026:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_002b:  ret
  } // end of method Widget::.ctor

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

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector2 
          get_Position() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector2 Game.Widget::'<Position>k__BackingField'
    IL_0006:  ret
  } // end of method Widget::get_Position

  .method private hidebysig specialname instance void 
          set_Position(valuetype [Engine]Engine.Vector2 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector2 Game.Widget::'<Position>k__BackingField'
    IL_0007:  ret
  } // end of method Widget::set_Position

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
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector2 Game.Widget::'<ActualSize>k__BackingField'
    IL_0006:  ret
  } // end of method Widget::get_ActualSize

  .method private hidebysig specialname instance void 
          set_ActualSize(valuetype [Engine]Engine.Vector2 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector2 Game.Widget::'<ActualSize>k__BackingField'
    IL_0007:  ret
  } // end of method Widget::set_ActualSize

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector2 
          get_DesiredSize() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector2 Game.Widget::'<DesiredSize>k__BackingField'
    IL_0006:  ret
  } // end of method Widget::get_DesiredSize

  .method family hidebysig specialname instance void 
          set_DesiredSize(valuetype [Engine]Engine.Vector2 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector2 Game.Widget::'<DesiredSize>k__BackingField'
    IL_0007:  ret
  } // end of method Widget::set_DesiredSize

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

  .method public hidebysig newslot virtual 
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

  .method public hidebysig newslot virtual 
          instance void  Measure(valuetype [Engine]Engine.Vector2 availableSize) cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method Widget::Measure

  .method public hidebysig newslot virtual 
          instance void  Arrange(valuetype [Engine]Engine.Vector2 position,
                                 valuetype [Engine]Engine.Vector2 actualSize) cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.Widget::set_Position(valuetype [Engine]Engine.Vector2)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.2
    IL_0009:  call       instance void Game.Widget::set_ActualSize(valuetype [Engine]Engine.Vector2)
    IL_000e:  ret
  } // end of method Widget::Arrange

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
          instance bool  HitTest(valuetype [Engine]Engine.Vector2 point) cil managed
  {
    // 代码大小       107 (0x6b)
    .maxstack  2
    .locals init (valuetype [Engine]Engine.Vector2 V_0,
             valuetype [Engine]Engine.Vector2 V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0006:  call       float32 Game.WidgetsManager::get_Scale()
    IL_000b:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0017:  ldarg.0
    IL_0018:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_001d:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0022:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0027:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_002c:  stloc.1
    IL_002d:  ldarg.1
    IL_002e:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0033:  ldloc.0
    IL_0034:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0039:  blt.un.s   IL_0069

    IL_003b:  ldarg.1
    IL_003c:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0041:  ldloc.0
    IL_0042:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0047:  blt.un.s   IL_0069

    IL_0049:  ldarg.1
    IL_004a:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_004f:  ldloc.1
    IL_0050:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0055:  bgt.un.s   IL_0069

    IL_0057:  ldarg.1
    IL_0058:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_005d:  ldloc.1
    IL_005e:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0063:  cgt.un
    IL_0065:  ldc.i4.0
    IL_0066:  ceq
    IL_0068:  ret

    IL_0069:  ldc.i4.0
    IL_006a:  ret
  } // end of method Widget::HitTest

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
          Position()
  {
    .get instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    .set instance void Game.Widget::set_Position(valuetype [Engine]Engine.Vector2)
  } // end of property Widget::Position
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
    .set instance void Game.Widget::set_ActualSize(valuetype [Engine]Engine.Vector2)
  } // end of property Widget::ActualSize
  .property instance valuetype [Engine]Engine.Vector2
          DesiredSize()
  {
    .get instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
    .set instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
  } // end of property Widget::DesiredSize
  .property instance bool IsDrawRequired()
  {
    .get instance bool Game.Widget::get_IsDrawRequired()
    .set instance void Game.Widget::set_IsDrawRequired(bool)
  } // end of property Widget::IsDrawRequired
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