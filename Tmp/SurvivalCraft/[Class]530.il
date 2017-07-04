.class public auto ansi beforefieldinit Game.WidgetInput
       extends [System.Runtime]System.Object
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass94_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public int32 maxLength
    .field public class [System.Runtime]System.Action`1<string> 'handler'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass94_0'::.ctor

    .method assembly hidebysig instance void 
            '<EnterText>b__0'(string s) cil managed
    {
      // 代码大小       42 (0x2a)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
      IL_0006:  ldarg.0
      IL_0007:  ldfld      int32 Game.WidgetInput/'<>c__DisplayClass94_0'::maxLength
      IL_000c:  ble.s      IL_001d

      IL_000e:  ldarg.1
      IL_000f:  ldc.i4.0
      IL_0010:  ldarg.0
      IL_0011:  ldfld      int32 Game.WidgetInput/'<>c__DisplayClass94_0'::maxLength
      IL_0016:  callvirt   instance string [System.Runtime]System.String::Substring(int32,
                                                                                    int32)
      IL_001b:  starg.s    s
      IL_001d:  ldarg.0
      IL_001e:  ldfld      class [System.Runtime]System.Action`1<string> Game.WidgetInput/'<>c__DisplayClass94_0'::'handler'
      IL_0023:  ldarg.1
      IL_0024:  callvirt   instance void class [System.Runtime]System.Action`1<string>::Invoke(!0)
      IL_0029:  ret
    } // end of method '<>c__DisplayClass94_0'::'<EnterText>b__0'

    .method assembly hidebysig instance void 
            '<EnterText>b__1'() cil managed
    {
      // 代码大小       13 (0xd)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Runtime]System.Action`1<string> Game.WidgetInput/'<>c__DisplayClass94_0'::'handler'
      IL_0006:  ldnull
      IL_0007:  callvirt   instance void class [System.Runtime]System.Action`1<string>::Invoke(!0)
      IL_000c:  ret
    } // end of method '<>c__DisplayClass94_0'::'<EnterText>b__1'

  } // end of class '<>c__DisplayClass94_0'

  .field private bool m_isCleared
  .field assembly class Game.Widget m_widget
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> m_mouseDownPoint
  .field private valuetype [Engine]Engine.Input.MouseButton m_mouseDownButton
  .field private float64 m_mouseDragTime
  .field private bool m_mouseDragInProgress
  .field private bool m_mouseHoldInProgress
  .field private bool m_isMouseVisible
  .field private valuetype [System.Runtime]System.Nullable`1<int32> m_touchId
  .field private bool m_touchCleared
  .field private valuetype [Engine]Engine.Vector2 m_touchStartPoint
  .field private float64 m_touchStartTime
  .field private bool m_touchDragInProgress
  .field private bool m_touchHoldInProgress
  .field private valuetype [Engine]Engine.Vector2 m_padCursorPosition
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> m_padDownPoint
  .field private float64 m_padDragTime
  .field private bool m_padDragInProgress
  .field private bool m_isPadVisible
  .field private bool '<Any>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<Ok>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<Cancel>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<Back>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<Left>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<Right>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<Up>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<Down>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> '<Press>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> '<Tap>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2> '<Click>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2> '<SpecialClick>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> '<Drag>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype Game.DragMode '<DragMode>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> '<Hold>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<HoldTime>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> '<Scroll>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static initonly class Game.WidgetInput '<EmptyInput>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype Game.WidgetInputDevice '<Devices>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance bool 
          get_Any() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.WidgetInput::'<Any>k__BackingField'
    IL_0006:  ret
  } // end of method WidgetInput::get_Any

  .method private hidebysig specialname instance void 
          set_Any(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.WidgetInput::'<Any>k__BackingField'
    IL_0007:  ret
  } // end of method WidgetInput::set_Any

  .method public hidebysig specialname instance bool 
          get_Ok() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.WidgetInput::'<Ok>k__BackingField'
    IL_0006:  ret
  } // end of method WidgetInput::get_Ok

  .method private hidebysig specialname instance void 
          set_Ok(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.WidgetInput::'<Ok>k__BackingField'
    IL_0007:  ret
  } // end of method WidgetInput::set_Ok

  .method public hidebysig specialname instance bool 
          get_Cancel() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.WidgetInput::'<Cancel>k__BackingField'
    IL_0006:  ret
  } // end of method WidgetInput::get_Cancel

  .method private hidebysig specialname instance void 
          set_Cancel(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.WidgetInput::'<Cancel>k__BackingField'
    IL_0007:  ret
  } // end of method WidgetInput::set_Cancel

  .method public hidebysig specialname instance bool 
          get_Back() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.WidgetInput::'<Back>k__BackingField'
    IL_0006:  ret
  } // end of method WidgetInput::get_Back

  .method private hidebysig specialname instance void 
          set_Back(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.WidgetInput::'<Back>k__BackingField'
    IL_0007:  ret
  } // end of method WidgetInput::set_Back

  .method public hidebysig specialname instance bool 
          get_Left() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.WidgetInput::'<Left>k__BackingField'
    IL_0006:  ret
  } // end of method WidgetInput::get_Left

  .method private hidebysig specialname instance void 
          set_Left(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.WidgetInput::'<Left>k__BackingField'
    IL_0007:  ret
  } // end of method WidgetInput::set_Left

  .method public hidebysig specialname instance bool 
          get_Right() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.WidgetInput::'<Right>k__BackingField'
    IL_0006:  ret
  } // end of method WidgetInput::get_Right

  .method private hidebysig specialname instance void 
          set_Right(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.WidgetInput::'<Right>k__BackingField'
    IL_0007:  ret
  } // end of method WidgetInput::set_Right

  .method public hidebysig specialname instance bool 
          get_Up() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.WidgetInput::'<Up>k__BackingField'
    IL_0006:  ret
  } // end of method WidgetInput::get_Up

  .method private hidebysig specialname instance void 
          set_Up(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.WidgetInput::'<Up>k__BackingField'
    IL_0007:  ret
  } // end of method WidgetInput::set_Up

  .method public hidebysig specialname instance bool 
          get_Down() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.WidgetInput::'<Down>k__BackingField'
    IL_0006:  ret
  } // end of method WidgetInput::get_Down

  .method private hidebysig specialname instance void 
          set_Down(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.WidgetInput::'<Down>k__BackingField'
    IL_0007:  ret
  } // end of method WidgetInput::set_Down

  .method public hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> 
          get_Press() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::'<Press>k__BackingField'
    IL_0006:  ret
  } // end of method WidgetInput::get_Press

  .method private hidebysig specialname instance void 
          set_Press(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::'<Press>k__BackingField'
    IL_0007:  ret
  } // end of method WidgetInput::set_Press

  .method public hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> 
          get_Tap() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::'<Tap>k__BackingField'
    IL_0006:  ret
  } // end of method WidgetInput::get_Tap

  .method private hidebysig specialname instance void 
          set_Tap(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::'<Tap>k__BackingField'
    IL_0007:  ret
  } // end of method WidgetInput::set_Tap

  .method public hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2> 
          get_Click() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2> Game.WidgetInput::'<Click>k__BackingField'
    IL_0006:  ret
  } // end of method WidgetInput::get_Click

  .method private hidebysig specialname instance void 
          set_Click(valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2> Game.WidgetInput::'<Click>k__BackingField'
    IL_0007:  ret
  } // end of method WidgetInput::set_Click

  .method public hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2> 
          get_SpecialClick() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2> Game.WidgetInput::'<SpecialClick>k__BackingField'
    IL_0006:  ret
  } // end of method WidgetInput::get_SpecialClick

  .method private hidebysig specialname instance void 
          set_SpecialClick(valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2> Game.WidgetInput::'<SpecialClick>k__BackingField'
    IL_0007:  ret
  } // end of method WidgetInput::set_SpecialClick

  .method public hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> 
          get_Drag() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::'<Drag>k__BackingField'
    IL_0006:  ret
  } // end of method WidgetInput::get_Drag

  .method private hidebysig specialname instance void 
          set_Drag(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::'<Drag>k__BackingField'
    IL_0007:  ret
  } // end of method WidgetInput::set_Drag

  .method public hidebysig specialname instance valuetype Game.DragMode 
          get_DragMode() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype Game.DragMode Game.WidgetInput::'<DragMode>k__BackingField'
    IL_0006:  ret
  } // end of method WidgetInput::get_DragMode

  .method private hidebysig specialname instance void 
          set_DragMode(valuetype Game.DragMode 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype Game.DragMode Game.WidgetInput::'<DragMode>k__BackingField'
    IL_0007:  ret
  } // end of method WidgetInput::set_DragMode

  .method public hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> 
          get_Hold() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::'<Hold>k__BackingField'
    IL_0006:  ret
  } // end of method WidgetInput::get_Hold

  .method private hidebysig specialname instance void 
          set_Hold(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::'<Hold>k__BackingField'
    IL_0007:  ret
  } // end of method WidgetInput::set_Hold

  .method public hidebysig specialname instance float32 
          get_HoldTime() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.WidgetInput::'<HoldTime>k__BackingField'
    IL_0006:  ret
  } // end of method WidgetInput::get_HoldTime

  .method private hidebysig specialname instance void 
          set_HoldTime(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.WidgetInput::'<HoldTime>k__BackingField'
    IL_0007:  ret
  } // end of method WidgetInput::set_HoldTime

  .method public hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> 
          get_Scroll() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.WidgetInput::'<Scroll>k__BackingField'
    IL_0006:  ret
  } // end of method WidgetInput::get_Scroll

  .method private hidebysig specialname instance void 
          set_Scroll(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.WidgetInput::'<Scroll>k__BackingField'
    IL_0007:  ret
  } // end of method WidgetInput::set_Scroll

  .method public hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Input.Key> 
          get_LastKey() cil managed
  {
    // 代码大小       34 (0x22)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Input.Key> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.WidgetInput::m_isCleared
    IL_0006:  brtrue.s   IL_0012

    IL_0008:  ldarg.0
    IL_0009:  call       instance valuetype Game.WidgetInputDevice Game.WidgetInput::get_Devices()
    IL_000e:  ldc.i4.1
    IL_000f:  and
    IL_0010:  brtrue.s   IL_001c

    IL_0012:  ldloca.s   V_0
    IL_0014:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Input.Key>
    IL_001a:  ldloc.0
    IL_001b:  ret

    IL_001c:  call       valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Input.Key> [Engine]Engine.Input.Keyboard::get_LastKey()
    IL_0021:  ret
  } // end of method WidgetInput::get_LastKey

  .method public hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<char> 
          get_LastChar() cil managed
  {
    // 代码大小       34 (0x22)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<char> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.WidgetInput::m_isCleared
    IL_0006:  brtrue.s   IL_0012

    IL_0008:  ldarg.0
    IL_0009:  call       instance valuetype Game.WidgetInputDevice Game.WidgetInput::get_Devices()
    IL_000e:  ldc.i4.1
    IL_000f:  and
    IL_0010:  brtrue.s   IL_001c

    IL_0012:  ldloca.s   V_0
    IL_0014:  initobj    valuetype [System.Runtime]System.Nullable`1<char>
    IL_001a:  ldloc.0
    IL_001b:  ret

    IL_001c:  call       valuetype [System.Runtime]System.Nullable`1<char> [Engine]Engine.Input.Keyboard::get_LastChar()
    IL_0021:  ret
  } // end of method WidgetInput::get_LastChar

  .method public hidebysig instance bool 
          IsKeyDown(valuetype [Engine]Engine.Input.Key key) cil managed
  {
    // 代码大小       27 (0x1b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.WidgetInput::m_isCleared
    IL_0006:  brtrue.s   IL_0019

    IL_0008:  ldarg.0
    IL_0009:  call       instance valuetype Game.WidgetInputDevice Game.WidgetInput::get_Devices()
    IL_000e:  ldc.i4.1
    IL_000f:  and
    IL_0010:  brfalse.s  IL_0019

    IL_0012:  ldarg.1
    IL_0013:  call       bool [Engine]Engine.Input.Keyboard::IsKeyDown(valuetype [Engine]Engine.Input.Key)
    IL_0018:  ret

    IL_0019:  ldc.i4.0
    IL_001a:  ret
  } // end of method WidgetInput::IsKeyDown

  .method public hidebysig instance bool 
          IsKeyDownOnce(valuetype [Engine]Engine.Input.Key key) cil managed
  {
    // 代码大小       27 (0x1b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.WidgetInput::m_isCleared
    IL_0006:  brtrue.s   IL_0019

    IL_0008:  ldarg.0
    IL_0009:  call       instance valuetype Game.WidgetInputDevice Game.WidgetInput::get_Devices()
    IL_000e:  ldc.i4.1
    IL_000f:  and
    IL_0010:  brfalse.s  IL_0019

    IL_0012:  ldarg.1
    IL_0013:  call       bool [Engine]Engine.Input.Keyboard::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_0018:  ret

    IL_0019:  ldc.i4.0
    IL_001a:  ret
  } // end of method WidgetInput::IsKeyDownOnce

  .method public hidebysig instance bool 
          IsKeyDownRepeat(valuetype [Engine]Engine.Input.Key key) cil managed
  {
    // 代码大小       27 (0x1b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.WidgetInput::m_isCleared
    IL_0006:  brtrue.s   IL_0019

    IL_0008:  ldarg.0
    IL_0009:  call       instance valuetype Game.WidgetInputDevice Game.WidgetInput::get_Devices()
    IL_000e:  ldc.i4.1
    IL_000f:  and
    IL_0010:  brfalse.s  IL_0019

    IL_0012:  ldarg.1
    IL_0013:  call       bool [Engine]Engine.Input.Keyboard::IsKeyDownRepeat(valuetype [Engine]Engine.Input.Key)
    IL_0018:  ret

    IL_0019:  ldc.i4.0
    IL_001a:  ret
  } // end of method WidgetInput::IsKeyDownRepeat

  .method public hidebysig instance void 
          EnterText(string title,
                    string text,
                    int32 maxLength,
                    class [System.Runtime]System.Action`1<string> 'handler') cil managed
  {
    // 代码大小       59 (0x3b)
    .maxstack  7
    .locals init (class Game.WidgetInput/'<>c__DisplayClass94_0' V_0)
    IL_0000:  newobj     instance void Game.WidgetInput/'<>c__DisplayClass94_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.3
    IL_0008:  stfld      int32 Game.WidgetInput/'<>c__DisplayClass94_0'::maxLength
    IL_000d:  ldloc.0
    IL_000e:  ldarg.s    'handler'
    IL_0010:  stfld      class [System.Runtime]System.Action`1<string> Game.WidgetInput/'<>c__DisplayClass94_0'::'handler'
    IL_0015:  ldarg.1
    IL_0016:  ldsfld     string [System.Runtime]System.String::Empty
    IL_001b:  ldarg.2
    IL_001c:  ldc.i4.0
    IL_001d:  ldloc.0
    IL_001e:  ldftn      instance void Game.WidgetInput/'<>c__DisplayClass94_0'::'<EnterText>b__0'(string)
    IL_0024:  newobj     instance void class [System.Runtime]System.Action`1<string>::.ctor(object,
                                                                                            native int)
    IL_0029:  ldloc.0
    IL_002a:  ldftn      instance void Game.WidgetInput/'<>c__DisplayClass94_0'::'<EnterText>b__1'()
    IL_0030:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0035:  call       void [Engine]Engine.Input.Keyboard::ShowKeyboard(string,
                                                                          string,
                                                                          string,
                                                                          bool,
                                                                          class [System.Runtime]System.Action`1<string>,
                                                                          class [System.Runtime]System.Action)
    IL_003a:  ret
  } // end of method WidgetInput::EnterText

  .method public hidebysig specialname instance bool 
          get_IsMouseCursorVisible() cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype Game.WidgetInputDevice Game.WidgetInput::get_Devices()
    IL_0006:  ldc.i4.2
    IL_0007:  and
    IL_0008:  brtrue.s   IL_000c

    IL_000a:  ldc.i4.0
    IL_000b:  ret

    IL_000c:  ldarg.0
    IL_000d:  ldfld      bool Game.WidgetInput::m_isMouseVisible
    IL_0012:  ret
  } // end of method WidgetInput::get_IsMouseCursorVisible

  .method public hidebysig specialname instance void 
          set_IsMouseCursorVisible(bool 'value') cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.WidgetInput::m_isMouseVisible
    IL_0007:  ret
  } // end of method WidgetInput::set_IsMouseCursorVisible

  .method public hidebysig instance void 
          SetMouseCursorPosition(int32 x,
                                 int32 y) cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype Game.WidgetInputDevice Game.WidgetInput::get_Devices()
    IL_0006:  ldc.i4.2
    IL_0007:  and
    IL_0008:  brfalse.s  IL_0011

    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  call       void [Engine]Engine.Input.Mouse::SetMousePosition(int32,
                                                                           int32)
    IL_0011:  ret
  } // end of method WidgetInput::SetMouseCursorPosition

  .method public hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2> 
          get_MousePosition() cil managed
  {
    // 代码大小       34 (0x22)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.WidgetInput::m_isCleared
    IL_0006:  brtrue.s   IL_0018

    IL_0008:  ldarg.0
    IL_0009:  call       instance valuetype Game.WidgetInputDevice Game.WidgetInput::get_Devices()
    IL_000e:  ldc.i4.2
    IL_000f:  and
    IL_0010:  brfalse.s  IL_0018

    IL_0012:  call       valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2> [Engine]Engine.Input.Mouse::get_MousePosition()
    IL_0017:  ret

    IL_0018:  ldloca.s   V_0
    IL_001a:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2>
    IL_0020:  ldloc.0
    IL_0021:  ret
  } // end of method WidgetInput::get_MousePosition

  .method public hidebysig specialname instance valuetype [Engine]Engine.Point2 
          get_MouseMovement() cil managed
  {
    // 代码大小       30 (0x1e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.WidgetInput::m_isCleared
    IL_0006:  brtrue.s   IL_0018

    IL_0008:  ldarg.0
    IL_0009:  call       instance valuetype Game.WidgetInputDevice Game.WidgetInput::get_Devices()
    IL_000e:  ldc.i4.2
    IL_000f:  and
    IL_0010:  brfalse.s  IL_0018

    IL_0012:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Input.Mouse::get_MouseMovement()
    IL_0017:  ret

    IL_0018:  ldsfld     valuetype [Engine]Engine.Point2 [Engine]Engine.Point2::Zero
    IL_001d:  ret
  } // end of method WidgetInput::get_MouseMovement

  .method public hidebysig specialname instance int32 
          get_MouseWheelMovement() cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.WidgetInput::m_isCleared
    IL_0006:  brtrue.s   IL_0018

    IL_0008:  ldarg.0
    IL_0009:  call       instance valuetype Game.WidgetInputDevice Game.WidgetInput::get_Devices()
    IL_000e:  ldc.i4.2
    IL_000f:  and
    IL_0010:  brfalse.s  IL_0018

    IL_0012:  call       int32 [Engine]Engine.Input.Mouse::get_MouseWheelMovement()
    IL_0017:  ret

    IL_0018:  ldc.i4.0
    IL_0019:  ret
  } // end of method WidgetInput::get_MouseWheelMovement

  .method public hidebysig instance bool 
          IsMouseButtonDown(valuetype [Engine]Engine.Input.MouseButton button) cil managed
  {
    // 代码大小       27 (0x1b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.WidgetInput::m_isCleared
    IL_0006:  brtrue.s   IL_0019

    IL_0008:  ldarg.0
    IL_0009:  call       instance valuetype Game.WidgetInputDevice Game.WidgetInput::get_Devices()
    IL_000e:  ldc.i4.2
    IL_000f:  and
    IL_0010:  brfalse.s  IL_0019

    IL_0012:  ldarg.1
    IL_0013:  call       bool [Engine]Engine.Input.Mouse::IsMouseButtonDown(valuetype [Engine]Engine.Input.MouseButton)
    IL_0018:  ret

    IL_0019:  ldc.i4.0
    IL_001a:  ret
  } // end of method WidgetInput::IsMouseButtonDown

  .method public hidebysig instance bool 
          IsMouseButtonDownOnce(valuetype [Engine]Engine.Input.MouseButton button) cil managed
  {
    // 代码大小       27 (0x1b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.WidgetInput::m_isCleared
    IL_0006:  brtrue.s   IL_0019

    IL_0008:  ldarg.0
    IL_0009:  call       instance valuetype Game.WidgetInputDevice Game.WidgetInput::get_Devices()
    IL_000e:  ldc.i4.2
    IL_000f:  and
    IL_0010:  brfalse.s  IL_0019

    IL_0012:  ldarg.1
    IL_0013:  call       bool [Engine]Engine.Input.Mouse::IsMouseButtonDownOnce(valuetype [Engine]Engine.Input.MouseButton)
    IL_0018:  ret

    IL_0019:  ldc.i4.0
    IL_001a:  ret
  } // end of method WidgetInput::IsMouseButtonDownOnce

  .method public hidebysig specialname instance bool 
          get_IsPadCursorVisible() cil managed
  {
    // 代码大小       88 (0x58)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.WidgetInput::m_isPadVisible
    IL_0006:  brfalse.s  IL_0056

    IL_0008:  ldarg.0
    IL_0009:  call       instance valuetype Game.WidgetInputDevice Game.WidgetInput::get_Devices()
    IL_000e:  ldc.i4.8
    IL_000f:  and
    IL_0010:  brfalse.s  IL_001a

    IL_0012:  ldc.i4.0
    IL_0013:  call       bool [Engine]Engine.Input.GamePad::IsConnected(int32)
    IL_0018:  brtrue.s   IL_0054

    IL_001a:  ldarg.0
    IL_001b:  call       instance valuetype Game.WidgetInputDevice Game.WidgetInput::get_Devices()
    IL_0020:  ldc.i4.s   16
    IL_0022:  and
    IL_0023:  brfalse.s  IL_002d

    IL_0025:  ldc.i4.1
    IL_0026:  call       bool [Engine]Engine.Input.GamePad::IsConnected(int32)
    IL_002b:  brtrue.s   IL_0054

    IL_002d:  ldarg.0
    IL_002e:  call       instance valuetype Game.WidgetInputDevice Game.WidgetInput::get_Devices()
    IL_0033:  ldc.i4.s   32
    IL_0035:  and
    IL_0036:  brfalse.s  IL_0040

    IL_0038:  ldc.i4.2
    IL_0039:  call       bool [Engine]Engine.Input.GamePad::IsConnected(int32)
    IL_003e:  brtrue.s   IL_0054

    IL_0040:  ldarg.0
    IL_0041:  call       instance valuetype Game.WidgetInputDevice Game.WidgetInput::get_Devices()
    IL_0046:  ldc.i4.s   64
    IL_0048:  and
    IL_0049:  brfalse.s  IL_0052

    IL_004b:  ldc.i4.3
    IL_004c:  call       bool [Engine]Engine.Input.GamePad::IsConnected(int32)
    IL_0051:  ret

    IL_0052:  ldc.i4.0
    IL_0053:  ret

    IL_0054:  ldc.i4.1
    IL_0055:  ret

    IL_0056:  ldc.i4.0
    IL_0057:  ret
  } // end of method WidgetInput::get_IsPadCursorVisible

  .method public hidebysig specialname instance void 
          set_IsPadCursorVisible(bool 'value') cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.WidgetInput::m_isPadVisible
    IL_0007:  ret
  } // end of method WidgetInput::set_IsPadCursorVisible

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector2 
          get_PadCursorPosition() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector2 Game.WidgetInput::m_padCursorPosition
    IL_0006:  ret
  } // end of method WidgetInput::get_PadCursorPosition

  .method public hidebysig specialname instance void 
          set_PadCursorPosition(valuetype [Engine]Engine.Vector2 'value') cil managed
  {
    // 代码大小       142 (0x8e)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Vector2 V_0,
             valuetype [Engine]Engine.Vector2 V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.Widget Game.WidgetInput::get_Widget()
    IL_0006:  brfalse.s  IL_002c

    IL_0008:  ldarg.0
    IL_0009:  call       instance class Game.Widget Game.WidgetInput::get_Widget()
    IL_000e:  callvirt   instance valuetype [Engine]Engine.BoundingRectangle Game.Widget::get_GlobalBounds()
    IL_0013:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.BoundingRectangle::Min
    IL_0018:  stloc.0
    IL_0019:  ldarg.0
    IL_001a:  call       instance class Game.Widget Game.WidgetInput::get_Widget()
    IL_001f:  callvirt   instance valuetype [Engine]Engine.BoundingRectangle Game.Widget::get_GlobalBounds()
    IL_0024:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.BoundingRectangle::Max
    IL_0029:  stloc.1
    IL_002a:  br.s       IL_003e

    IL_002c:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0031:  stloc.0
    IL_0032:  ldloca.s   V_1
    IL_0034:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Window::get_Size()
    IL_0039:  call       instance void [Engine]Engine.Vector2::.ctor(valuetype [Engine]Engine.Point2)
    IL_003e:  ldarga.s   'value'
    IL_0040:  ldarg.1
    IL_0041:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0046:  ldloc.0
    IL_0047:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_004c:  ldloc.1
    IL_004d:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0052:  ldc.r4     1.
    IL_0057:  sub
    IL_0058:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_005d:  stfld      float32 [Engine]Engine.Vector2::X
    IL_0062:  ldarga.s   'value'
    IL_0064:  ldarg.1
    IL_0065:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_006a:  ldloc.0
    IL_006b:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0070:  ldloc.1
    IL_0071:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0076:  ldc.r4     1.
    IL_007b:  sub
    IL_007c:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0081:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_0086:  ldarg.0
    IL_0087:  ldarg.1
    IL_0088:  stfld      valuetype [Engine]Engine.Vector2 Game.WidgetInput::m_padCursorPosition
    IL_008d:  ret
  } // end of method WidgetInput::set_PadCursorPosition

  .method public hidebysig instance valuetype [Engine]Engine.Vector2 
          GetPadStickPosition(valuetype [Engine]Engine.Input.GamePadStick stick,
                              [opt] float32 deadZone) cil managed
  {
    .param [2] = float32(0.)
    // 代码大小       85 (0x55)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Vector2 V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.WidgetInput::m_isCleared
    IL_0006:  brfalse.s  IL_000e

    IL_0008:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_000d:  ret

    IL_000e:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0013:  stloc.0
    IL_0014:  ldc.i4.0
    IL_0015:  stloc.1
    IL_0016:  br.s       IL_003a

    IL_0018:  ldarg.0
    IL_0019:  call       instance valuetype Game.WidgetInputDevice Game.WidgetInput::get_Devices()
    IL_001e:  ldc.i4.8
    IL_001f:  ldloc.1
    IL_0020:  ldc.i4.s   31
    IL_0022:  and
    IL_0023:  shl
    IL_0024:  and
    IL_0025:  brfalse.s  IL_0036

    IL_0027:  ldloc.0
    IL_0028:  ldloc.1
    IL_0029:  ldarg.1
    IL_002a:  ldarg.2
    IL_002b:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.GamePad::GetStickPosition(int32,
                                                                                                         valuetype [Engine]Engine.Input.GamePadStick,
                                                                                                         float32)
    IL_0030:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0035:  stloc.0
    IL_0036:  ldloc.1
    IL_0037:  ldc.i4.1
    IL_0038:  add
    IL_0039:  stloc.1
    IL_003a:  ldloc.1
    IL_003b:  ldc.i4.4
    IL_003c:  blt.s      IL_0018

    IL_003e:  ldloca.s   V_0
    IL_0040:  call       instance float32 [Engine]Engine.Vector2::LengthSquared()
    IL_0045:  ldc.r4     1.
    IL_004a:  bgt.s      IL_004e

    IL_004c:  ldloc.0
    IL_004d:  ret

    IL_004e:  ldloc.0
    IL_004f:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Normalize(valuetype [Engine]Engine.Vector2)
    IL_0054:  ret
  } // end of method WidgetInput::GetPadStickPosition

  .method public hidebysig instance float32 
          GetPadTriggerPosition(valuetype [Engine]Engine.Input.GamePadTrigger trigger,
                                [opt] float32 deadZone) cil managed
  {
    .param [2] = float32(0.)
    // 代码大小       70 (0x46)
    .maxstack  4
    .locals init (float32 V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.WidgetInput::m_isCleared
    IL_0006:  brfalse.s  IL_000e

    IL_0008:  ldc.r4     0.0
    IL_000d:  ret

    IL_000e:  ldc.r4     0.0
    IL_0013:  stloc.0
    IL_0014:  ldc.i4.0
    IL_0015:  stloc.1
    IL_0016:  br.s       IL_0036

    IL_0018:  ldarg.0
    IL_0019:  call       instance valuetype Game.WidgetInputDevice Game.WidgetInput::get_Devices()
    IL_001e:  ldc.i4.8
    IL_001f:  ldloc.1
    IL_0020:  ldc.i4.s   31
    IL_0022:  and
    IL_0023:  shl
    IL_0024:  and
    IL_0025:  brfalse.s  IL_0032

    IL_0027:  ldloc.0
    IL_0028:  ldloc.1
    IL_0029:  ldarg.1
    IL_002a:  ldarg.2
    IL_002b:  call       float32 [Engine]Engine.Input.GamePad::GetTriggerPosition(int32,
                                                                                  valuetype [Engine]Engine.Input.GamePadTrigger,
                                                                                  float32)
    IL_0030:  add
    IL_0031:  stloc.0
    IL_0032:  ldloc.1
    IL_0033:  ldc.i4.1
    IL_0034:  add
    IL_0035:  stloc.1
    IL_0036:  ldloc.1
    IL_0037:  ldc.i4.4
    IL_0038:  blt.s      IL_0018

    IL_003a:  ldloc.0
    IL_003b:  ldc.r4     1.
    IL_0040:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0045:  ret
  } // end of method WidgetInput::GetPadTriggerPosition

  .method public hidebysig instance bool 
          IsPadButtonDown(valuetype [Engine]Engine.Input.GamePadButton button) cil managed
  {
    // 代码大小       50 (0x32)
    .maxstack  4
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.WidgetInput::m_isCleared
    IL_0006:  brfalse.s  IL_000a

    IL_0008:  ldc.i4.0
    IL_0009:  ret

    IL_000a:  ldc.i4.0
    IL_000b:  stloc.0
    IL_000c:  br.s       IL_002c

    IL_000e:  ldarg.0
    IL_000f:  call       instance valuetype Game.WidgetInputDevice Game.WidgetInput::get_Devices()
    IL_0014:  ldc.i4.8
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.s   31
    IL_0018:  and
    IL_0019:  shl
    IL_001a:  and
    IL_001b:  brfalse.s  IL_0028

    IL_001d:  ldloc.0
    IL_001e:  ldarg.1
    IL_001f:  call       bool [Engine]Engine.Input.GamePad::IsButtonDown(int32,
                                                                         valuetype [Engine]Engine.Input.GamePadButton)
    IL_0024:  brfalse.s  IL_0028

    IL_0026:  ldc.i4.1
    IL_0027:  ret

    IL_0028:  ldloc.0
    IL_0029:  ldc.i4.1
    IL_002a:  add
    IL_002b:  stloc.0
    IL_002c:  ldloc.0
    IL_002d:  ldc.i4.4
    IL_002e:  blt.s      IL_000e

    IL_0030:  ldc.i4.0
    IL_0031:  ret
  } // end of method WidgetInput::IsPadButtonDown

  .method public hidebysig instance bool 
          IsPadButtonDownOnce(valuetype [Engine]Engine.Input.GamePadButton button) cil managed
  {
    // 代码大小       50 (0x32)
    .maxstack  4
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.WidgetInput::m_isCleared
    IL_0006:  brfalse.s  IL_000a

    IL_0008:  ldc.i4.0
    IL_0009:  ret

    IL_000a:  ldc.i4.0
    IL_000b:  stloc.0
    IL_000c:  br.s       IL_002c

    IL_000e:  ldarg.0
    IL_000f:  call       instance valuetype Game.WidgetInputDevice Game.WidgetInput::get_Devices()
    IL_0014:  ldc.i4.8
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.s   31
    IL_0018:  and
    IL_0019:  shl
    IL_001a:  and
    IL_001b:  brfalse.s  IL_0028

    IL_001d:  ldloc.0
    IL_001e:  ldarg.1
    IL_001f:  call       bool [Engine]Engine.Input.GamePad::IsButtonDownOnce(int32,
                                                                             valuetype [Engine]Engine.Input.GamePadButton)
    IL_0024:  brfalse.s  IL_0028

    IL_0026:  ldc.i4.1
    IL_0027:  ret

    IL_0028:  ldloc.0
    IL_0029:  ldc.i4.1
    IL_002a:  add
    IL_002b:  stloc.0
    IL_002c:  ldloc.0
    IL_002d:  ldc.i4.4
    IL_002e:  blt.s      IL_000e

    IL_0030:  ldc.i4.0
    IL_0031:  ret
  } // end of method WidgetInput::IsPadButtonDownOnce

  .method public hidebysig instance bool 
          IsPadButtonDownRepeat(valuetype [Engine]Engine.Input.GamePadButton button) cil managed
  {
    // 代码大小       50 (0x32)
    .maxstack  4
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.WidgetInput::m_isCleared
    IL_0006:  brfalse.s  IL_000a

    IL_0008:  ldc.i4.0
    IL_0009:  ret

    IL_000a:  ldc.i4.0
    IL_000b:  stloc.0
    IL_000c:  br.s       IL_002c

    IL_000e:  ldarg.0
    IL_000f:  call       instance valuetype Game.WidgetInputDevice Game.WidgetInput::get_Devices()
    IL_0014:  ldc.i4.8
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.s   31
    IL_0018:  and
    IL_0019:  shl
    IL_001a:  and
    IL_001b:  brfalse.s  IL_0028

    IL_001d:  ldloc.0
    IL_001e:  ldarg.1
    IL_001f:  call       bool [Engine]Engine.Input.GamePad::IsButtonDownRepeat(int32,
                                                                               valuetype [Engine]Engine.Input.GamePadButton)
    IL_0024:  brfalse.s  IL_0028

    IL_0026:  ldc.i4.1
    IL_0027:  ret

    IL_0028:  ldloc.0
    IL_0029:  ldc.i4.1
    IL_002a:  add
    IL_002b:  stloc.0
    IL_002c:  ldloc.0
    IL_002d:  ldc.i4.4
    IL_002e:  blt.s      IL_000e

    IL_0030:  ldc.i4.0
    IL_0031:  ret
  } // end of method WidgetInput::IsPadButtonDownRepeat

  .method public hidebysig specialname instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Input.TouchLocation> 
          get_TouchLocations() cil managed
  {
    // 代码大小       30 (0x1e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.WidgetInput::m_isCleared
    IL_0006:  brtrue.s   IL_0018

    IL_0008:  ldarg.0
    IL_0009:  call       instance valuetype Game.WidgetInputDevice Game.WidgetInput::get_Devices()
    IL_000e:  ldc.i4.4
    IL_000f:  and
    IL_0010:  brfalse.s  IL_0018

    IL_0012:  call       valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Input.TouchLocation> [Engine]Engine.Input.Touch::get_TouchLocations()
    IL_0017:  ret

    IL_0018:  call       valuetype [Engine]Engine.ReadOnlyList`1<!0> valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Input.TouchLocation>::get_Empty()
    IL_001d:  ret
  } // end of method WidgetInput::get_TouchLocations

  .method public hidebysig specialname static 
          class Game.WidgetInput  get_EmptyInput() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     class Game.WidgetInput Game.WidgetInput::'<EmptyInput>k__BackingField'
    IL_0005:  ret
  } // end of method WidgetInput::get_EmptyInput

  .method public hidebysig specialname instance class Game.Widget 
          get_Widget() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Widget Game.WidgetInput::m_widget
    IL_0006:  ret
  } // end of method WidgetInput::get_Widget

  .method public hidebysig specialname instance valuetype Game.WidgetInputDevice 
          get_Devices() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype Game.WidgetInputDevice Game.WidgetInput::'<Devices>k__BackingField'
    IL_0006:  ret
  } // end of method WidgetInput::get_Devices

  .method private hidebysig specialname instance void 
          set_Devices(valuetype Game.WidgetInputDevice 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype Game.WidgetInputDevice Game.WidgetInput::'<Devices>k__BackingField'
    IL_0007:  ret
  } // end of method WidgetInput::set_Devices

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor([opt] valuetype Game.WidgetInputDevice devices) cil managed
  {
    .param [1] = int32(0x0000007F)
    // 代码大小       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  stfld      bool Game.WidgetInput::m_isMouseVisible
    IL_0007:  ldarg.0
    IL_0008:  ldc.i4.1
    IL_0009:  stfld      bool Game.WidgetInput::m_isPadVisible
    IL_000e:  ldarg.0
    IL_000f:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0014:  ldarg.0
    IL_0015:  ldarg.1
    IL_0016:  call       instance void Game.WidgetInput::set_Devices(valuetype Game.WidgetInputDevice)
    IL_001b:  ret
  } // end of method WidgetInput::.ctor

  .method public hidebysig instance void 
          Clear() cil managed
  {
    // 代码大小       52 (0x34)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  stfld      bool Game.WidgetInput::m_isCleared
    IL_0007:  ldarg.0
    IL_0008:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::m_mouseDownPoint
    IL_000d:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
    IL_0013:  ldarg.0
    IL_0014:  ldc.i4.0
    IL_0015:  stfld      bool Game.WidgetInput::m_mouseDragInProgress
    IL_001a:  ldarg.0
    IL_001b:  ldc.i4.1
    IL_001c:  stfld      bool Game.WidgetInput::m_touchCleared
    IL_0021:  ldarg.0
    IL_0022:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::m_padDownPoint
    IL_0027:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
    IL_002d:  ldarg.0
    IL_002e:  call       instance void Game.WidgetInput::ClearInput()
    IL_0033:  ret
  } // end of method WidgetInput::Clear

  .method public hidebysig instance void 
          Update() cil managed
  {
    // 代码大小       426 (0x1aa)
    .maxstack  8
    .locals init (valuetype [Engine]Engine.Vector2 V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             valuetype [Engine]Engine.Vector2 V_2,
             class [Engine]Engine.Graphics.Texture2D V_3,
             valuetype [Engine]Engine.Vector2 V_4,
             valuetype [Engine]Engine.Vector2 V_5,
             int32 V_6)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.0
    IL_0002:  stfld      bool Game.WidgetInput::m_isCleared
    IL_0007:  ldarg.0
    IL_0008:  call       instance void Game.WidgetInput::ClearInput()
    IL_000d:  call       bool [Engine]Engine.Window::get_IsActive()
    IL_0012:  brtrue.s   IL_0015

    IL_0014:  ret

    IL_0015:  ldarg.0
    IL_0016:  call       instance valuetype Game.WidgetInputDevice Game.WidgetInput::get_Devices()
    IL_001b:  ldc.i4.1
    IL_001c:  and
    IL_001d:  brfalse.s  IL_0025

    IL_001f:  ldarg.0
    IL_0020:  call       instance void Game.WidgetInput::UpdateInputFromKeyboard()
    IL_0025:  ldarg.0
    IL_0026:  call       instance valuetype Game.WidgetInputDevice Game.WidgetInput::get_Devices()
    IL_002b:  ldc.i4.2
    IL_002c:  and
    IL_002d:  brfalse.s  IL_0035

    IL_002f:  ldarg.0
    IL_0030:  call       instance void Game.WidgetInput::UpdateInputFromMouse()
    IL_0035:  ldarg.0
    IL_0036:  call       instance valuetype Game.WidgetInputDevice Game.WidgetInput::get_Devices()
    IL_003b:  ldc.i4.s   120
    IL_003d:  and
    IL_003e:  brfalse.s  IL_0046

    IL_0040:  ldarg.0
    IL_0041:  call       instance void Game.WidgetInput::UpdateInputFromGamepads()
    IL_0046:  ldarg.0
    IL_0047:  call       instance bool Game.WidgetInput::get_IsPadCursorVisible()
    IL_004c:  brfalse    IL_0199

    IL_0051:  ldarg.0
    IL_0052:  call       instance valuetype [Engine]Engine.Vector2 Game.WidgetInput::get_PadCursorPosition()
    IL_0057:  ldarg.0
    IL_0058:  call       instance class Game.Widget Game.WidgetInput::get_Widget()
    IL_005d:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Widget::get_InvertedGlobalTransform()
    IL_0062:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Transform(valuetype [Engine]Engine.Vector2,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0067:  stloc.0
    IL_0068:  ldarg.0
    IL_0069:  ldc.i4.0
    IL_006a:  call       float32 Game.SettingsManager::get_GamepadDeadZone()
    IL_006f:  call       instance valuetype [Engine]Engine.Vector2 Game.WidgetInput::GetPadStickPosition(valuetype [Engine]Engine.Input.GamePadStick,
                                                                                                         float32)
    IL_0074:  stloc.1
    IL_0075:  ldloca.s   V_2
    IL_0077:  ldloc.1
    IL_0078:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_007d:  ldloc.1
    IL_007e:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0083:  neg
    IL_0084:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0089:  ldc.r4     1200.
    IL_008e:  call       float32 Game.SettingsManager::get_GamepadCursorSpeed()
    IL_0093:  mul
    IL_0094:  ldloca.s   V_2
    IL_0096:  call       instance float32 [Engine]Engine.Vector2::LengthSquared()
    IL_009b:  mul
    IL_009c:  ldloc.2
    IL_009d:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Normalize(valuetype [Engine]Engine.Vector2)
    IL_00a2:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_00a7:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_00ac:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_00b1:  stloc.2
    IL_00b2:  ldloc.0
    IL_00b3:  ldloc.2
    IL_00b4:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_00b9:  stloc.0
    IL_00ba:  ldarg.0
    IL_00bb:  ldloc.0
    IL_00bc:  ldarg.0
    IL_00bd:  call       instance class Game.Widget Game.WidgetInput::get_Widget()
    IL_00c2:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_00c7:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Transform(valuetype [Engine]Engine.Vector2,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00cc:  call       instance void Game.WidgetInput::set_PadCursorPosition(valuetype [Engine]Engine.Vector2)
    IL_00d1:  ldarg.0
    IL_00d2:  ldfld      bool Game.WidgetInput::m_padDragInProgress
    IL_00d7:  brfalse.s  IL_00e6

    IL_00d9:  ldstr      "Textures/Gui/PadCursorDrag"
    IL_00de:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_00e3:  stloc.3
    IL_00e4:  br.s       IL_010b

    IL_00e6:  ldarg.0
    IL_00e7:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::m_padDownPoint
    IL_00ec:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_00f1:  brfalse.s  IL_0100

    IL_00f3:  ldstr      "Textures/Gui/PadCursorDown"
    IL_00f8:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_00fd:  stloc.3
    IL_00fe:  br.s       IL_010b

    IL_0100:  ldstr      "Textures/Gui/PadCursor"
    IL_0105:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_010a:  stloc.3
    IL_010b:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::CursorPrimitivesRenderer2D
    IL_0110:  ldloc.3
    IL_0111:  ldc.i4.0
    IL_0112:  ldc.i4.0
    IL_0113:  ldnull
    IL_0114:  ldnull
    IL_0115:  ldnull
    IL_0116:  ldnull
    IL_0117:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_011c:  ldarg.0
    IL_011d:  call       instance valuetype [Engine]Engine.Vector2 Game.WidgetInput::get_PadCursorPosition()
    IL_0122:  ldarg.0
    IL_0123:  call       instance class Game.Widget Game.WidgetInput::get_Widget()
    IL_0128:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Widget::get_InvertedGlobalTransform()
    IL_012d:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Transform(valuetype [Engine]Engine.Vector2,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0132:  stloc.0
    IL_0133:  ldloc.0
    IL_0134:  stloc.s    V_4
    IL_0136:  ldloc.0
    IL_0137:  ldloc.3
    IL_0138:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_013d:  conv.r4
    IL_013e:  ldloc.3
    IL_013f:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
    IL_0144:  conv.r4
    IL_0145:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_014a:  ldc.r4     0.80000001
    IL_014f:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0154:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0159:  stloc.s    V_5
    IL_015b:  dup
    IL_015c:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleVertices
    IL_0161:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Count()
    IL_0166:  stloc.s    V_6
    IL_0168:  dup
    IL_0169:  ldloc.s    V_4
    IL_016b:  ldloc.s    V_5
    IL_016d:  ldc.r4     0.0
    IL_0172:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0177:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::One
    IL_017c:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0181:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0186:  ldarg.0
    IL_0187:  call       instance class Game.Widget Game.WidgetInput::get_Widget()
    IL_018c:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_0191:  ldloc.s    V_6
    IL_0193:  ldc.i4.m1
    IL_0194:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::TransformTriangles(valuetype [Engine]Engine.Matrix,
                                                                                                   int32,
                                                                                                   int32)
    IL_0199:  ldarg.0
    IL_019a:  call       instance valuetype Game.WidgetInputDevice Game.WidgetInput::get_Devices()
    IL_019f:  ldc.i4.4
    IL_01a0:  and
    IL_01a1:  brfalse.s  IL_01a9

    IL_01a3:  ldarg.0
    IL_01a4:  call       instance void Game.WidgetInput::UpdateInputFromTouch()
    IL_01a9:  ret
  } // end of method WidgetInput::Update

  .method private hidebysig instance void 
          ClearInput() cil managed
  {
    // 代码大小       180 (0xb4)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2> V_1,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.0
    IL_0002:  call       instance void Game.WidgetInput::set_Any(bool)
    IL_0007:  ldarg.0
    IL_0008:  ldc.i4.0
    IL_0009:  call       instance void Game.WidgetInput::set_Ok(bool)
    IL_000e:  ldarg.0
    IL_000f:  ldc.i4.0
    IL_0010:  call       instance void Game.WidgetInput::set_Cancel(bool)
    IL_0015:  ldarg.0
    IL_0016:  ldc.i4.0
    IL_0017:  call       instance void Game.WidgetInput::set_Back(bool)
    IL_001c:  ldarg.0
    IL_001d:  ldc.i4.0
    IL_001e:  call       instance void Game.WidgetInput::set_Left(bool)
    IL_0023:  ldarg.0
    IL_0024:  ldc.i4.0
    IL_0025:  call       instance void Game.WidgetInput::set_Right(bool)
    IL_002a:  ldarg.0
    IL_002b:  ldc.i4.0
    IL_002c:  call       instance void Game.WidgetInput::set_Up(bool)
    IL_0031:  ldarg.0
    IL_0032:  ldc.i4.0
    IL_0033:  call       instance void Game.WidgetInput::set_Down(bool)
    IL_0038:  ldarg.0
    IL_0039:  ldloca.s   V_0
    IL_003b:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
    IL_0041:  ldloc.0
    IL_0042:  call       instance void Game.WidgetInput::set_Press(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
    IL_0047:  ldarg.0
    IL_0048:  ldloca.s   V_0
    IL_004a:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
    IL_0050:  ldloc.0
    IL_0051:  call       instance void Game.WidgetInput::set_Tap(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
    IL_0056:  ldarg.0
    IL_0057:  ldloca.s   V_1
    IL_0059:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2>
    IL_005f:  ldloc.1
    IL_0060:  call       instance void Game.WidgetInput::set_Click(valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2>)
    IL_0065:  ldarg.0
    IL_0066:  ldloca.s   V_1
    IL_0068:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2>
    IL_006e:  ldloc.1
    IL_006f:  call       instance void Game.WidgetInput::set_SpecialClick(valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2>)
    IL_0074:  ldarg.0
    IL_0075:  ldloca.s   V_0
    IL_0077:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
    IL_007d:  ldloc.0
    IL_007e:  call       instance void Game.WidgetInput::set_Drag(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
    IL_0083:  ldarg.0
    IL_0084:  ldc.i4.0
    IL_0085:  call       instance void Game.WidgetInput::set_DragMode(valuetype Game.DragMode)
    IL_008a:  ldarg.0
    IL_008b:  ldloca.s   V_0
    IL_008d:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
    IL_0093:  ldloc.0
    IL_0094:  call       instance void Game.WidgetInput::set_Hold(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
    IL_0099:  ldarg.0
    IL_009a:  ldc.r4     0.0
    IL_009f:  call       instance void Game.WidgetInput::set_HoldTime(float32)
    IL_00a4:  ldarg.0
    IL_00a5:  ldloca.s   V_2
    IL_00a7:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_00ad:  ldloc.2
    IL_00ae:  call       instance void Game.WidgetInput::set_Scroll(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_00b3:  ret
  } // end of method WidgetInput::ClearInput

  .method private hidebysig instance void 
          UpdateInputFromKeyboard() cil managed
  {
    // 代码大小       170 (0xaa)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Input.Key> V_0,
             valuetype [Engine]Engine.Input.Key V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Input.Key> Game.WidgetInput::get_LastKey()
    IL_0006:  stloc.0
    IL_0007:  ldloca.s   V_0
    IL_0009:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Input.Key>::get_HasValue()
    IL_000e:  brfalse.s  IL_003a

    IL_0010:  ldarg.0
    IL_0011:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Input.Key> Game.WidgetInput::get_LastKey()
    IL_0016:  stloc.0
    IL_0017:  ldc.i4.s   20
    IL_0019:  stloc.1
    IL_001a:  ldloca.s   V_0
    IL_001c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Input.Key>::GetValueOrDefault()
    IL_0021:  ldloc.1
    IL_0022:  beq.s      IL_0027

    IL_0024:  ldc.i4.1
    IL_0025:  br.s       IL_0031

    IL_0027:  ldloca.s   V_0
    IL_0029:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Input.Key>::get_HasValue()
    IL_002e:  ldc.i4.0
    IL_002f:  ceq
    IL_0031:  brfalse.s  IL_003a

    IL_0033:  ldarg.0
    IL_0034:  ldc.i4.1
    IL_0035:  call       instance void Game.WidgetInput::set_Any(bool)
    IL_003a:  ldarg.0
    IL_003b:  ldc.i4.s   20
    IL_003d:  call       instance bool Game.WidgetInput::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_0042:  brfalse.s  IL_0052

    IL_0044:  ldarg.0
    IL_0045:  ldc.i4.1
    IL_0046:  call       instance void Game.WidgetInput::set_Back(bool)
    IL_004b:  ldarg.0
    IL_004c:  ldc.i4.1
    IL_004d:  call       instance void Game.WidgetInput::set_Cancel(bool)
    IL_0052:  ldarg.0
    IL_0053:  ldc.i4.s   15
    IL_0055:  call       instance bool Game.WidgetInput::IsKeyDownRepeat(valuetype [Engine]Engine.Input.Key)
    IL_005a:  brfalse.s  IL_0063

    IL_005c:  ldarg.0
    IL_005d:  ldc.i4.1
    IL_005e:  call       instance void Game.WidgetInput::set_Left(bool)
    IL_0063:  ldarg.0
    IL_0064:  ldc.i4.s   16
    IL_0066:  call       instance bool Game.WidgetInput::IsKeyDownRepeat(valuetype [Engine]Engine.Input.Key)
    IL_006b:  brfalse.s  IL_0074

    IL_006d:  ldarg.0
    IL_006e:  ldc.i4.1
    IL_006f:  call       instance void Game.WidgetInput::set_Right(bool)
    IL_0074:  ldarg.0
    IL_0075:  ldc.i4.s   17
    IL_0077:  call       instance bool Game.WidgetInput::IsKeyDownRepeat(valuetype [Engine]Engine.Input.Key)
    IL_007c:  brfalse.s  IL_0085

    IL_007e:  ldarg.0
    IL_007f:  ldc.i4.1
    IL_0080:  call       instance void Game.WidgetInput::set_Up(bool)
    IL_0085:  ldarg.0
    IL_0086:  ldc.i4.s   18
    IL_0088:  call       instance bool Game.WidgetInput::IsKeyDownRepeat(valuetype [Engine]Engine.Input.Key)
    IL_008d:  brfalse.s  IL_0096

    IL_008f:  ldarg.0
    IL_0090:  ldc.i4.1
    IL_0091:  call       instance void Game.WidgetInput::set_Down(bool)
    IL_0096:  ldarg.0
    IL_0097:  ldarg.0
    IL_0098:  call       instance bool Game.WidgetInput::get_Back()
    IL_009d:  ldc.i4.0
    IL_009e:  call       bool [Engine]Engine.Input.Keyboard::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_00a3:  or
    IL_00a4:  call       instance void Game.WidgetInput::set_Back(bool)
    IL_00a9:  ret
  } // end of method WidgetInput::UpdateInputFromKeyboard

  .method private hidebysig instance void 
          UpdateInputFromMouse() cil managed
  {
    // 代码大小       633 (0x279)
    .maxstack  4
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2> V_0,
             valuetype [Engine]Engine.Vector2 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.0
    IL_0002:  call       instance bool Game.WidgetInput::IsMouseButtonDownOnce(valuetype [Engine]Engine.Input.MouseButton)
    IL_0007:  brfalse.s  IL_0010

    IL_0009:  ldarg.0
    IL_000a:  ldc.i4.1
    IL_000b:  call       instance void Game.WidgetInput::set_Any(bool)
    IL_0010:  ldarg.0
    IL_0011:  call       instance bool Game.WidgetInput::get_IsMouseCursorVisible()
    IL_0016:  brfalse    IL_024c

    IL_001b:  ldarg.0
    IL_001c:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2> Game.WidgetInput::get_MousePosition()
    IL_0021:  stloc.0
    IL_0022:  ldloca.s   V_0
    IL_0024:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2>::get_HasValue()
    IL_0029:  brfalse    IL_024c

    IL_002e:  ldloca.s   V_1
    IL_0030:  ldarg.0
    IL_0031:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2> Game.WidgetInput::get_MousePosition()
    IL_0036:  stloc.0
    IL_0037:  ldloca.s   V_0
    IL_0039:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2>::get_Value()
    IL_003e:  call       instance void [Engine]Engine.Vector2::.ctor(valuetype [Engine]Engine.Point2)
    IL_0043:  ldarg.0
    IL_0044:  ldc.i4.0
    IL_0045:  call       instance bool Game.WidgetInput::IsMouseButtonDown(valuetype [Engine]Engine.Input.MouseButton)
    IL_004a:  brtrue.s   IL_0055

    IL_004c:  ldarg.0
    IL_004d:  ldc.i4.1
    IL_004e:  call       instance bool Game.WidgetInput::IsMouseButtonDown(valuetype [Engine]Engine.Input.MouseButton)
    IL_0053:  brfalse.s  IL_0061

    IL_0055:  ldarg.0
    IL_0056:  ldloc.1
    IL_0057:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_005c:  call       instance void Game.WidgetInput::set_Press(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
    IL_0061:  ldarg.0
    IL_0062:  ldc.i4.0
    IL_0063:  call       instance bool Game.WidgetInput::IsMouseButtonDownOnce(valuetype [Engine]Engine.Input.MouseButton)
    IL_0068:  brtrue.s   IL_0073

    IL_006a:  ldarg.0
    IL_006b:  ldc.i4.1
    IL_006c:  call       instance bool Game.WidgetInput::IsMouseButtonDownOnce(valuetype [Engine]Engine.Input.MouseButton)
    IL_0071:  brfalse.s  IL_00a9

    IL_0073:  ldarg.0
    IL_0074:  ldloc.1
    IL_0075:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_007a:  call       instance void Game.WidgetInput::set_Tap(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
    IL_007f:  ldarg.0
    IL_0080:  ldloc.1
    IL_0081:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_0086:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::m_mouseDownPoint
    IL_008b:  ldarg.0
    IL_008c:  ldarg.0
    IL_008d:  ldc.i4.0
    IL_008e:  call       instance bool Game.WidgetInput::IsMouseButtonDownOnce(valuetype [Engine]Engine.Input.MouseButton)
    IL_0093:  brtrue.s   IL_0098

    IL_0095:  ldc.i4.1
    IL_0096:  br.s       IL_0099

    IL_0098:  ldc.i4.0
    IL_0099:  stfld      valuetype [Engine]Engine.Input.MouseButton Game.WidgetInput::m_mouseDownButton
    IL_009e:  ldarg.0
    IL_009f:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_00a4:  stfld      float64 Game.WidgetInput::m_mouseDragTime
    IL_00a9:  ldarg.0
    IL_00aa:  ldc.i4.0
    IL_00ab:  call       instance bool Game.WidgetInput::IsMouseButtonDown(valuetype [Engine]Engine.Input.MouseButton)
    IL_00b0:  brtrue.s   IL_010a

    IL_00b2:  ldarg.0
    IL_00b3:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::m_mouseDownPoint
    IL_00b8:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_00bd:  brfalse.s  IL_010a

    IL_00bf:  ldarg.0
    IL_00c0:  ldfld      valuetype [Engine]Engine.Input.MouseButton Game.WidgetInput::m_mouseDownButton
    IL_00c5:  brtrue.s   IL_010a

    IL_00c7:  ldarg.0
    IL_00c8:  ldc.i4.1
    IL_00c9:  call       instance bool Game.WidgetInput::IsKeyDown(valuetype [Engine]Engine.Input.Key)
    IL_00ce:  brfalse.s  IL_00ee

    IL_00d0:  ldarg.0
    IL_00d1:  ldarg.0
    IL_00d2:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::m_mouseDownPoint
    IL_00d7:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_00dc:  ldloc.1
    IL_00dd:  newobj     instance void Game.Segment2::.ctor(valuetype [Engine]Engine.Vector2,
                                                            valuetype [Engine]Engine.Vector2)
    IL_00e2:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2>::.ctor(!0)
    IL_00e7:  call       instance void Game.WidgetInput::set_SpecialClick(valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2>)
    IL_00ec:  br.s       IL_010a

    IL_00ee:  ldarg.0
    IL_00ef:  ldarg.0
    IL_00f0:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::m_mouseDownPoint
    IL_00f5:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_00fa:  ldloc.1
    IL_00fb:  newobj     instance void Game.Segment2::.ctor(valuetype [Engine]Engine.Vector2,
                                                            valuetype [Engine]Engine.Vector2)
    IL_0100:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2>::.ctor(!0)
    IL_0105:  call       instance void Game.WidgetInput::set_Click(valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2>)
    IL_010a:  ldarg.0
    IL_010b:  ldc.i4.1
    IL_010c:  call       instance bool Game.WidgetInput::IsMouseButtonDown(valuetype [Engine]Engine.Input.MouseButton)
    IL_0111:  brtrue.s   IL_0145

    IL_0113:  ldarg.0
    IL_0114:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::m_mouseDownPoint
    IL_0119:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_011e:  brfalse.s  IL_0145

    IL_0120:  ldarg.0
    IL_0121:  ldfld      valuetype [Engine]Engine.Input.MouseButton Game.WidgetInput::m_mouseDownButton
    IL_0126:  ldc.i4.1
    IL_0127:  bne.un.s   IL_0145

    IL_0129:  ldarg.0
    IL_012a:  ldarg.0
    IL_012b:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::m_mouseDownPoint
    IL_0130:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0135:  ldloc.1
    IL_0136:  newobj     instance void Game.Segment2::.ctor(valuetype [Engine]Engine.Vector2,
                                                            valuetype [Engine]Engine.Vector2)
    IL_013b:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2>::.ctor(!0)
    IL_0140:  call       instance void Game.WidgetInput::set_SpecialClick(valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2>)
    IL_0145:  ldarg.0
    IL_0146:  call       instance int32 Game.WidgetInput::get_MouseWheelMovement()
    IL_014b:  brfalse.s  IL_016b

    IL_014d:  ldarg.0
    IL_014e:  ldloc.1
    IL_014f:  ldarg.0
    IL_0150:  call       instance int32 Game.WidgetInput::get_MouseWheelMovement()
    IL_0155:  conv.r4
    IL_0156:  ldc.r4     120.
    IL_015b:  div
    IL_015c:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Vector2,
                                                                     float32)
    IL_0161:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0166:  call       instance void Game.WidgetInput::set_Scroll(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_016b:  ldarg.0
    IL_016c:  ldfld      bool Game.WidgetInput::m_mouseHoldInProgress
    IL_0171:  brfalse.s  IL_01a9

    IL_0173:  ldarg.0
    IL_0174:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::m_mouseDownPoint
    IL_0179:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_017e:  brfalse.s  IL_01a9

    IL_0180:  ldarg.0
    IL_0181:  ldarg.0
    IL_0182:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::m_mouseDownPoint
    IL_0187:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_018c:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_0191:  call       instance void Game.WidgetInput::set_Hold(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
    IL_0196:  ldarg.0
    IL_0197:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_019c:  ldarg.0
    IL_019d:  ldfld      float64 Game.WidgetInput::m_mouseDragTime
    IL_01a2:  sub
    IL_01a3:  conv.r4
    IL_01a4:  call       instance void Game.WidgetInput::set_HoldTime(float32)
    IL_01a9:  ldarg.0
    IL_01aa:  ldfld      bool Game.WidgetInput::m_mouseDragInProgress
    IL_01af:  brfalse.s  IL_01c2

    IL_01b1:  ldarg.0
    IL_01b2:  ldloc.1
    IL_01b3:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_01b8:  call       instance void Game.WidgetInput::set_Drag(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
    IL_01bd:  br         IL_024c

    IL_01c2:  ldarg.0
    IL_01c3:  ldc.i4.0
    IL_01c4:  call       instance bool Game.WidgetInput::IsMouseButtonDown(valuetype [Engine]Engine.Input.MouseButton)
    IL_01c9:  brtrue.s   IL_01d4

    IL_01cb:  ldarg.0
    IL_01cc:  ldc.i4.1
    IL_01cd:  call       instance bool Game.WidgetInput::IsMouseButtonDown(valuetype [Engine]Engine.Input.MouseButton)
    IL_01d2:  brfalse.s  IL_024c

    IL_01d4:  ldarg.0
    IL_01d5:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::m_mouseDownPoint
    IL_01da:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_01df:  brfalse.s  IL_024c

    IL_01e1:  ldarg.0
    IL_01e2:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::m_mouseDownPoint
    IL_01e7:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_01ec:  ldloc.1
    IL_01ed:  call       float32 [Engine]Engine.Vector2::Distance(valuetype [Engine]Engine.Vector2,
                                                                  valuetype [Engine]Engine.Vector2)
    IL_01f2:  call       float32 Game.SettingsManager::get_MinimumDragDistance()
    IL_01f7:  call       float32 Game.WidgetsManager::get_Scale()
    IL_01fc:  mul
    IL_01fd:  ble.un.s   IL_0231

    IL_01ff:  ldarg.0
    IL_0200:  ldc.i4.1
    IL_0201:  stfld      bool Game.WidgetInput::m_mouseDragInProgress
    IL_0206:  ldarg.0
    IL_0207:  ldarg.0
    IL_0208:  ldc.i4.0
    IL_0209:  call       instance bool Game.WidgetInput::IsMouseButtonDown(valuetype [Engine]Engine.Input.MouseButton)
    IL_020e:  brtrue.s   IL_0213

    IL_0210:  ldc.i4.1
    IL_0211:  br.s       IL_0214

    IL_0213:  ldc.i4.0
    IL_0214:  call       instance void Game.WidgetInput::set_DragMode(valuetype Game.DragMode)
    IL_0219:  ldarg.0
    IL_021a:  ldarg.0
    IL_021b:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::m_mouseDownPoint
    IL_0220:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0225:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_022a:  call       instance void Game.WidgetInput::set_Drag(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
    IL_022f:  br.s       IL_024c

    IL_0231:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_0236:  ldarg.0
    IL_0237:  ldfld      float64 Game.WidgetInput::m_mouseDragTime
    IL_023c:  sub
    IL_023d:  call       float32 Game.SettingsManager::get_MinimumHoldDuration()
    IL_0242:  conv.r8
    IL_0243:  ble.un.s   IL_024c

    IL_0245:  ldarg.0
    IL_0246:  ldc.i4.1
    IL_0247:  stfld      bool Game.WidgetInput::m_mouseHoldInProgress
    IL_024c:  ldarg.0
    IL_024d:  ldc.i4.0
    IL_024e:  call       instance bool Game.WidgetInput::IsMouseButtonDown(valuetype [Engine]Engine.Input.MouseButton)
    IL_0253:  brtrue.s   IL_0278

    IL_0255:  ldarg.0
    IL_0256:  ldc.i4.1
    IL_0257:  call       instance bool Game.WidgetInput::IsMouseButtonDown(valuetype [Engine]Engine.Input.MouseButton)
    IL_025c:  brtrue.s   IL_0278

    IL_025e:  ldarg.0
    IL_025f:  ldc.i4.0
    IL_0260:  stfld      bool Game.WidgetInput::m_mouseDragInProgress
    IL_0265:  ldarg.0
    IL_0266:  ldc.i4.0
    IL_0267:  stfld      bool Game.WidgetInput::m_mouseHoldInProgress
    IL_026c:  ldarg.0
    IL_026d:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::m_mouseDownPoint
    IL_0272:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
    IL_0278:  ret
  } // end of method WidgetInput::UpdateInputFromMouse

  .method private hidebysig instance void 
          UpdateInputFromGamepads() cil managed
  {
    // 代码大小       640 (0x280)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   10
    IL_0003:  call       instance bool Game.WidgetInput::IsPadButtonDownRepeat(valuetype [Engine]Engine.Input.GamePadButton)
    IL_0008:  brfalse.s  IL_0011

    IL_000a:  ldarg.0
    IL_000b:  ldc.i4.1
    IL_000c:  call       instance void Game.WidgetInput::set_Left(bool)
    IL_0011:  ldarg.0
    IL_0012:  ldc.i4.s   12
    IL_0014:  call       instance bool Game.WidgetInput::IsPadButtonDownRepeat(valuetype [Engine]Engine.Input.GamePadButton)
    IL_0019:  brfalse.s  IL_0022

    IL_001b:  ldarg.0
    IL_001c:  ldc.i4.1
    IL_001d:  call       instance void Game.WidgetInput::set_Right(bool)
    IL_0022:  ldarg.0
    IL_0023:  ldc.i4.s   11
    IL_0025:  call       instance bool Game.WidgetInput::IsPadButtonDownRepeat(valuetype [Engine]Engine.Input.GamePadButton)
    IL_002a:  brfalse.s  IL_0033

    IL_002c:  ldarg.0
    IL_002d:  ldc.i4.1
    IL_002e:  call       instance void Game.WidgetInput::set_Up(bool)
    IL_0033:  ldarg.0
    IL_0034:  ldc.i4.s   13
    IL_0036:  call       instance bool Game.WidgetInput::IsPadButtonDownRepeat(valuetype [Engine]Engine.Input.GamePadButton)
    IL_003b:  brfalse.s  IL_0044

    IL_003d:  ldarg.0
    IL_003e:  ldc.i4.1
    IL_003f:  call       instance void Game.WidgetInput::set_Down(bool)
    IL_0044:  ldarg.0
    IL_0045:  call       instance bool Game.WidgetInput::get_IsPadCursorVisible()
    IL_004a:  brfalse    IL_015d

    IL_004f:  ldarg.0
    IL_0050:  ldc.i4.s   11
    IL_0052:  call       instance bool Game.WidgetInput::IsPadButtonDownRepeat(valuetype [Engine]Engine.Input.GamePadButton)
    IL_0057:  brfalse.s  IL_0074

    IL_0059:  ldarg.0
    IL_005a:  ldarg.0
    IL_005b:  call       instance valuetype [Engine]Engine.Vector2 Game.WidgetInput::get_PadCursorPosition()
    IL_0060:  ldc.r4     1.
    IL_0065:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Vector2,
                                                                     float32)
    IL_006a:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_006f:  call       instance void Game.WidgetInput::set_Scroll(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_0074:  ldarg.0
    IL_0075:  ldc.i4.s   13
    IL_0077:  call       instance bool Game.WidgetInput::IsPadButtonDownRepeat(valuetype [Engine]Engine.Input.GamePadButton)
    IL_007c:  brfalse.s  IL_0099

    IL_007e:  ldarg.0
    IL_007f:  ldarg.0
    IL_0080:  call       instance valuetype [Engine]Engine.Vector2 Game.WidgetInput::get_PadCursorPosition()
    IL_0085:  ldc.r4     -1.
    IL_008a:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Vector2,
                                                                     float32)
    IL_008f:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0094:  call       instance void Game.WidgetInput::set_Scroll(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
    IL_0099:  ldarg.0
    IL_009a:  ldc.i4.0
    IL_009b:  call       instance bool Game.WidgetInput::IsPadButtonDown(valuetype [Engine]Engine.Input.GamePadButton)
    IL_00a0:  brfalse.s  IL_00b3

    IL_00a2:  ldarg.0
    IL_00a3:  ldarg.0
    IL_00a4:  call       instance valuetype [Engine]Engine.Vector2 Game.WidgetInput::get_PadCursorPosition()
    IL_00a9:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_00ae:  call       instance void Game.WidgetInput::set_Press(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
    IL_00b3:  ldarg.0
    IL_00b4:  ldc.i4.0
    IL_00b5:  call       instance bool Game.WidgetInput::IsPadButtonDownOnce(valuetype [Engine]Engine.Input.GamePadButton)
    IL_00ba:  brfalse.s  IL_00f0

    IL_00bc:  ldarg.0
    IL_00bd:  ldc.i4.1
    IL_00be:  call       instance void Game.WidgetInput::set_Ok(bool)
    IL_00c3:  ldarg.0
    IL_00c4:  ldarg.0
    IL_00c5:  call       instance valuetype [Engine]Engine.Vector2 Game.WidgetInput::get_PadCursorPosition()
    IL_00ca:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_00cf:  call       instance void Game.WidgetInput::set_Tap(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
    IL_00d4:  ldarg.0
    IL_00d5:  ldarg.0
    IL_00d6:  call       instance valuetype [Engine]Engine.Vector2 Game.WidgetInput::get_PadCursorPosition()
    IL_00db:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_00e0:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::m_padDownPoint
    IL_00e5:  ldarg.0
    IL_00e6:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_00eb:  stfld      float64 Game.WidgetInput::m_padDragTime
    IL_00f0:  ldarg.0
    IL_00f1:  ldc.i4.0
    IL_00f2:  call       instance bool Game.WidgetInput::IsPadButtonDown(valuetype [Engine]Engine.Input.GamePadButton)
    IL_00f7:  brtrue.s   IL_015d

    IL_00f9:  ldarg.0
    IL_00fa:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::m_padDownPoint
    IL_00ff:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0104:  brfalse.s  IL_015d

    IL_0106:  ldarg.0
    IL_0107:  ldc.i4.0
    IL_0108:  ldc.r4     0.0
    IL_010d:  call       instance float32 Game.WidgetInput::GetPadTriggerPosition(valuetype [Engine]Engine.Input.GamePadTrigger,
                                                                                  float32)
    IL_0112:  ldc.r4     0.5
    IL_0117:  ble.un.s   IL_013c

    IL_0119:  ldarg.0
    IL_011a:  ldarg.0
    IL_011b:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::m_padDownPoint
    IL_0120:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0125:  ldarg.0
    IL_0126:  call       instance valuetype [Engine]Engine.Vector2 Game.WidgetInput::get_PadCursorPosition()
    IL_012b:  newobj     instance void Game.Segment2::.ctor(valuetype [Engine]Engine.Vector2,
                                                            valuetype [Engine]Engine.Vector2)
    IL_0130:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2>::.ctor(!0)
    IL_0135:  call       instance void Game.WidgetInput::set_SpecialClick(valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2>)
    IL_013a:  br.s       IL_015d

    IL_013c:  ldarg.0
    IL_013d:  ldarg.0
    IL_013e:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::m_padDownPoint
    IL_0143:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0148:  ldarg.0
    IL_0149:  call       instance valuetype [Engine]Engine.Vector2 Game.WidgetInput::get_PadCursorPosition()
    IL_014e:  newobj     instance void Game.Segment2::.ctor(valuetype [Engine]Engine.Vector2,
                                                            valuetype [Engine]Engine.Vector2)
    IL_0153:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2>::.ctor(!0)
    IL_0158:  call       instance void Game.WidgetInput::set_Click(valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2>)
    IL_015d:  ldarg.0
    IL_015e:  ldc.i4.0
    IL_015f:  call       instance bool Game.WidgetInput::IsPadButtonDownOnce(valuetype [Engine]Engine.Input.GamePadButton)
    IL_0164:  brtrue.s   IL_0181

    IL_0166:  ldarg.0
    IL_0167:  ldc.i4.1
    IL_0168:  call       instance bool Game.WidgetInput::IsPadButtonDownOnce(valuetype [Engine]Engine.Input.GamePadButton)
    IL_016d:  brtrue.s   IL_0181

    IL_016f:  ldarg.0
    IL_0170:  ldc.i4.2
    IL_0171:  call       instance bool Game.WidgetInput::IsPadButtonDownOnce(valuetype [Engine]Engine.Input.GamePadButton)
    IL_0176:  brtrue.s   IL_0181

    IL_0178:  ldarg.0
    IL_0179:  ldc.i4.3
    IL_017a:  call       instance bool Game.WidgetInput::IsPadButtonDownOnce(valuetype [Engine]Engine.Input.GamePadButton)
    IL_017f:  brfalse.s  IL_0188

    IL_0181:  ldarg.0
    IL_0182:  ldc.i4.1
    IL_0183:  call       instance void Game.WidgetInput::set_Any(bool)
    IL_0188:  ldarg.0
    IL_0189:  ldc.i4.0
    IL_018a:  call       instance bool Game.WidgetInput::IsPadButtonDown(valuetype [Engine]Engine.Input.GamePadButton)
    IL_018f:  brtrue.s   IL_01a4

    IL_0191:  ldarg.0
    IL_0192:  ldc.i4.0
    IL_0193:  stfld      bool Game.WidgetInput::m_padDragInProgress
    IL_0198:  ldarg.0
    IL_0199:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::m_padDownPoint
    IL_019e:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
    IL_01a4:  ldarg.0
    IL_01a5:  ldc.i4.1
    IL_01a6:  call       instance bool Game.WidgetInput::IsPadButtonDownOnce(valuetype [Engine]Engine.Input.GamePadButton)
    IL_01ab:  brfalse.s  IL_01b4

    IL_01ad:  ldarg.0
    IL_01ae:  ldc.i4.1
    IL_01af:  call       instance void Game.WidgetInput::set_Cancel(bool)
    IL_01b4:  ldarg.0
    IL_01b5:  ldc.i4.4
    IL_01b6:  call       instance bool Game.WidgetInput::IsPadButtonDownOnce(valuetype [Engine]Engine.Input.GamePadButton)
    IL_01bb:  brfalse.s  IL_01c4

    IL_01bd:  ldarg.0
    IL_01be:  ldc.i4.1
    IL_01bf:  call       instance void Game.WidgetInput::set_Back(bool)
    IL_01c4:  ldarg.0
    IL_01c5:  ldfld      bool Game.WidgetInput::m_padDragInProgress
    IL_01ca:  brfalse.s  IL_01de

    IL_01cc:  ldarg.0
    IL_01cd:  ldarg.0
    IL_01ce:  call       instance valuetype [Engine]Engine.Vector2 Game.WidgetInput::get_PadCursorPosition()
    IL_01d3:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_01d8:  call       instance void Game.WidgetInput::set_Drag(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
    IL_01dd:  ret

    IL_01de:  ldarg.0
    IL_01df:  ldc.i4.0
    IL_01e0:  call       instance bool Game.WidgetInput::IsPadButtonDown(valuetype [Engine]Engine.Input.GamePadButton)
    IL_01e5:  brfalse    IL_027f

    IL_01ea:  ldarg.0
    IL_01eb:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::m_padDownPoint
    IL_01f0:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_01f5:  brfalse    IL_027f

    IL_01fa:  ldarg.0
    IL_01fb:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::m_padDownPoint
    IL_0200:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0205:  ldarg.0
    IL_0206:  call       instance valuetype [Engine]Engine.Vector2 Game.WidgetInput::get_PadCursorPosition()
    IL_020b:  call       float32 [Engine]Engine.Vector2::Distance(valuetype [Engine]Engine.Vector2,
                                                                  valuetype [Engine]Engine.Vector2)
    IL_0210:  call       float32 Game.SettingsManager::get_MinimumDragDistance()
    IL_0215:  call       float32 Game.WidgetsManager::get_Scale()
    IL_021a:  mul
    IL_021b:  ble.un.s   IL_0242

    IL_021d:  ldarg.0
    IL_021e:  ldc.i4.1
    IL_021f:  stfld      bool Game.WidgetInput::m_padDragInProgress
    IL_0224:  ldarg.0
    IL_0225:  ldarg.0
    IL_0226:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::m_padDownPoint
    IL_022b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0230:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_0235:  call       instance void Game.WidgetInput::set_Drag(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
    IL_023a:  ldarg.0
    IL_023b:  ldc.i4.0
    IL_023c:  call       instance void Game.WidgetInput::set_DragMode(valuetype Game.DragMode)
    IL_0241:  ret

    IL_0242:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_0247:  ldarg.0
    IL_0248:  ldfld      float64 Game.WidgetInput::m_padDragTime
    IL_024d:  sub
    IL_024e:  call       float32 Game.SettingsManager::get_MinimumHoldDuration()
    IL_0253:  conv.r8
    IL_0254:  ble.un.s   IL_027f

    IL_0256:  ldarg.0
    IL_0257:  ldarg.0
    IL_0258:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::m_padDownPoint
    IL_025d:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0262:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_0267:  call       instance void Game.WidgetInput::set_Hold(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
    IL_026c:  ldarg.0
    IL_026d:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_0272:  ldarg.0
    IL_0273:  ldfld      float64 Game.WidgetInput::m_padDragTime
    IL_0278:  sub
    IL_0279:  conv.r4
    IL_027a:  call       instance void Game.WidgetInput::set_HoldTime(float32)
    IL_027f:  ret
  } // end of method WidgetInput::UpdateInputFromGamepads

  .method private hidebysig instance void 
          UpdateInputFromTouch() cil managed
  {
    // 代码大小       564 (0x234)
    .maxstack  3
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Input.TouchLocation> V_0,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Input.TouchLocation> V_1,
             valuetype [Engine]Engine.Input.TouchLocation V_2,
             valuetype [System.Runtime]System.Nullable`1<int32> V_3,
             int32 V_4)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Input.TouchLocation> Game.WidgetInput::get_TouchLocations()
    IL_0006:  stloc.1
    IL_0007:  ldloca.s   V_1
    IL_0009:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Input.TouchLocation>::GetEnumerator()
    IL_000e:  stloc.0
    .try
    {
      IL_000f:  br         IL_0217

      IL_0014:  ldloca.s   V_0
      IL_0016:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Input.TouchLocation>::get_Current()
      IL_001b:  stloc.2
      IL_001c:  ldloc.2
      IL_001d:  ldfld      valuetype [Engine]Engine.Input.TouchLocationState [Engine]Engine.Input.TouchLocation::State
      IL_0022:  brtrue     IL_00a8

      IL_0027:  ldarg.0
      IL_0028:  call       instance class Game.Widget Game.WidgetInput::get_Widget()
      IL_002d:  ldloc.2
      IL_002e:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_0033:  callvirt   instance bool Game.Widget::HitTest(valuetype [Engine]Engine.Vector2)
      IL_0038:  brfalse    IL_0217

      IL_003d:  ldarg.0
      IL_003e:  ldc.i4.1
      IL_003f:  call       instance void Game.WidgetInput::set_Any(bool)
      IL_0044:  ldarg.0
      IL_0045:  ldloc.2
      IL_0046:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_004b:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
      IL_0050:  call       instance void Game.WidgetInput::set_Tap(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
      IL_0055:  ldarg.0
      IL_0056:  ldloc.2
      IL_0057:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_005c:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
      IL_0061:  call       instance void Game.WidgetInput::set_Press(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
      IL_0066:  ldarg.0
      IL_0067:  ldloc.2
      IL_0068:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_006d:  stfld      valuetype [Engine]Engine.Vector2 Game.WidgetInput::m_touchStartPoint
      IL_0072:  ldarg.0
      IL_0073:  ldloc.2
      IL_0074:  ldfld      int32 [Engine]Engine.Input.TouchLocation::Id
      IL_0079:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
      IL_007e:  stfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.WidgetInput::m_touchId
      IL_0083:  ldarg.0
      IL_0084:  ldc.i4.0
      IL_0085:  stfld      bool Game.WidgetInput::m_touchCleared
      IL_008a:  ldarg.0
      IL_008b:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
      IL_0090:  stfld      float64 Game.WidgetInput::m_touchStartTime
      IL_0095:  ldarg.0
      IL_0096:  ldc.i4.0
      IL_0097:  stfld      bool Game.WidgetInput::m_touchDragInProgress
      IL_009c:  ldarg.0
      IL_009d:  ldc.i4.0
      IL_009e:  stfld      bool Game.WidgetInput::m_touchHoldInProgress
      IL_00a3:  br         IL_0217

      IL_00a8:  ldloc.2
      IL_00a9:  ldfld      valuetype [Engine]Engine.Input.TouchLocationState [Engine]Engine.Input.TouchLocation::State
      IL_00ae:  ldc.i4.1
      IL_00af:  bne.un     IL_01a3

      IL_00b4:  ldarg.0
      IL_00b5:  ldfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.WidgetInput::m_touchId
      IL_00ba:  stloc.3
      IL_00bb:  ldloc.2
      IL_00bc:  ldfld      int32 [Engine]Engine.Input.TouchLocation::Id
      IL_00c1:  stloc.s    V_4
      IL_00c3:  ldloca.s   V_3
      IL_00c5:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::GetValueOrDefault()
      IL_00ca:  ldloc.s    V_4
      IL_00cc:  beq.s      IL_00d1

      IL_00ce:  ldc.i4.0
      IL_00cf:  br.s       IL_00d8

      IL_00d1:  ldloca.s   V_3
      IL_00d3:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
      IL_00d8:  brfalse    IL_0217

      IL_00dd:  ldarg.0
      IL_00de:  ldloc.2
      IL_00df:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_00e4:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
      IL_00e9:  call       instance void Game.WidgetInput::set_Press(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
      IL_00ee:  ldarg.0
      IL_00ef:  ldfld      bool Game.WidgetInput::m_touchCleared
      IL_00f4:  brtrue     IL_0217

      IL_00f9:  ldarg.0
      IL_00fa:  ldfld      bool Game.WidgetInput::m_touchDragInProgress
      IL_00ff:  brfalse.s  IL_0114

      IL_0101:  ldarg.0
      IL_0102:  ldloc.2
      IL_0103:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_0108:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
      IL_010d:  call       instance void Game.WidgetInput::set_Drag(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
      IL_0112:  br.s       IL_014a

      IL_0114:  ldloc.2
      IL_0115:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_011a:  ldarg.0
      IL_011b:  ldfld      valuetype [Engine]Engine.Vector2 Game.WidgetInput::m_touchStartPoint
      IL_0120:  call       float32 [Engine]Engine.Vector2::Distance(valuetype [Engine]Engine.Vector2,
                                                                    valuetype [Engine]Engine.Vector2)
      IL_0125:  call       float32 Game.SettingsManager::get_MinimumDragDistance()
      IL_012a:  call       float32 Game.WidgetsManager::get_Scale()
      IL_012f:  mul
      IL_0130:  ble.un.s   IL_014a

      IL_0132:  ldarg.0
      IL_0133:  ldc.i4.1
      IL_0134:  stfld      bool Game.WidgetInput::m_touchDragInProgress
      IL_0139:  ldarg.0
      IL_013a:  ldarg.0
      IL_013b:  ldfld      valuetype [Engine]Engine.Vector2 Game.WidgetInput::m_touchStartPoint
      IL_0140:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
      IL_0145:  call       instance void Game.WidgetInput::set_Drag(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
      IL_014a:  ldarg.0
      IL_014b:  ldfld      bool Game.WidgetInput::m_touchDragInProgress
      IL_0150:  brtrue     IL_0217

      IL_0155:  ldarg.0
      IL_0156:  ldfld      bool Game.WidgetInput::m_touchHoldInProgress
      IL_015b:  brfalse.s  IL_0186

      IL_015d:  ldarg.0
      IL_015e:  ldarg.0
      IL_015f:  ldfld      valuetype [Engine]Engine.Vector2 Game.WidgetInput::m_touchStartPoint
      IL_0164:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
      IL_0169:  call       instance void Game.WidgetInput::set_Hold(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
      IL_016e:  ldarg.0
      IL_016f:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
      IL_0174:  ldarg.0
      IL_0175:  ldfld      float64 Game.WidgetInput::m_touchStartTime
      IL_017a:  sub
      IL_017b:  conv.r4
      IL_017c:  call       instance void Game.WidgetInput::set_HoldTime(float32)
      IL_0181:  br         IL_0217

      IL_0186:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
      IL_018b:  ldarg.0
      IL_018c:  ldfld      float64 Game.WidgetInput::m_touchStartTime
      IL_0191:  sub
      IL_0192:  call       float32 Game.SettingsManager::get_MinimumHoldDuration()
      IL_0197:  conv.r8
      IL_0198:  ble.un.s   IL_0217

      IL_019a:  ldarg.0
      IL_019b:  ldc.i4.1
      IL_019c:  stfld      bool Game.WidgetInput::m_touchHoldInProgress
      IL_01a1:  br.s       IL_0217

      IL_01a3:  ldloc.2
      IL_01a4:  ldfld      valuetype [Engine]Engine.Input.TouchLocationState [Engine]Engine.Input.TouchLocation::State
      IL_01a9:  ldc.i4.2
      IL_01aa:  bne.un.s   IL_0217

      IL_01ac:  ldarg.0
      IL_01ad:  ldfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.WidgetInput::m_touchId
      IL_01b2:  stloc.3
      IL_01b3:  ldloc.2
      IL_01b4:  ldfld      int32 [Engine]Engine.Input.TouchLocation::Id
      IL_01b9:  stloc.s    V_4
      IL_01bb:  ldloca.s   V_3
      IL_01bd:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::GetValueOrDefault()
      IL_01c2:  ldloc.s    V_4
      IL_01c4:  beq.s      IL_01c9

      IL_01c6:  ldc.i4.0
      IL_01c7:  br.s       IL_01d0

      IL_01c9:  ldloca.s   V_3
      IL_01cb:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
      IL_01d0:  brfalse.s  IL_0217

      IL_01d2:  ldarg.0
      IL_01d3:  ldfld      bool Game.WidgetInput::m_touchCleared
      IL_01d8:  brtrue.s   IL_01f6

      IL_01da:  ldarg.0
      IL_01db:  ldarg.0
      IL_01dc:  ldfld      valuetype [Engine]Engine.Vector2 Game.WidgetInput::m_touchStartPoint
      IL_01e1:  ldloc.2
      IL_01e2:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.Input.TouchLocation::Position
      IL_01e7:  newobj     instance void Game.Segment2::.ctor(valuetype [Engine]Engine.Vector2,
                                                              valuetype [Engine]Engine.Vector2)
      IL_01ec:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2>::.ctor(!0)
      IL_01f1:  call       instance void Game.WidgetInput::set_Click(valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2>)
      IL_01f6:  ldarg.0
      IL_01f7:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.WidgetInput::m_touchId
      IL_01fc:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
      IL_0202:  ldarg.0
      IL_0203:  ldc.i4.0
      IL_0204:  stfld      bool Game.WidgetInput::m_touchCleared
      IL_0209:  ldarg.0
      IL_020a:  ldc.i4.0
      IL_020b:  stfld      bool Game.WidgetInput::m_touchDragInProgress
      IL_0210:  ldarg.0
      IL_0211:  ldc.i4.0
      IL_0212:  stfld      bool Game.WidgetInput::m_touchHoldInProgress
      IL_0217:  ldloca.s   V_0
      IL_0219:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Input.TouchLocation>::MoveNext()
      IL_021e:  brtrue     IL_0014

      IL_0223:  leave.s    IL_0233

    }  // end .try
    finally
    {
      IL_0225:  ldloca.s   V_0
      IL_0227:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Input.TouchLocation>
      IL_022d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0232:  endfinally
    }  // end handler
    IL_0233:  ret
  } // end of method WidgetInput::UpdateInputFromTouch

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  newobj     instance void Game.WidgetInput::.ctor(valuetype Game.WidgetInputDevice)
    IL_0006:  stsfld     class Game.WidgetInput Game.WidgetInput::'<EmptyInput>k__BackingField'
    IL_000b:  ret
  } // end of method WidgetInput::.cctor

  .property instance bool Any()
  {
    .get instance bool Game.WidgetInput::get_Any()
    .set instance void Game.WidgetInput::set_Any(bool)
  } // end of property WidgetInput::Any
  .property instance bool Ok()
  {
    .get instance bool Game.WidgetInput::get_Ok()
    .set instance void Game.WidgetInput::set_Ok(bool)
  } // end of property WidgetInput::Ok
  .property instance bool Cancel()
  {
    .get instance bool Game.WidgetInput::get_Cancel()
    .set instance void Game.WidgetInput::set_Cancel(bool)
  } // end of property WidgetInput::Cancel
  .property instance bool Back()
  {
    .get instance bool Game.WidgetInput::get_Back()
    .set instance void Game.WidgetInput::set_Back(bool)
  } // end of property WidgetInput::Back
  .property instance bool Left()
  {
    .get instance bool Game.WidgetInput::get_Left()
    .set instance void Game.WidgetInput::set_Left(bool)
  } // end of property WidgetInput::Left
  .property instance bool Right()
  {
    .get instance bool Game.WidgetInput::get_Right()
    .set instance void Game.WidgetInput::set_Right(bool)
  } // end of property WidgetInput::Right
  .property instance bool Up()
  {
    .get instance bool Game.WidgetInput::get_Up()
    .set instance void Game.WidgetInput::set_Up(bool)
  } // end of property WidgetInput::Up
  .property instance bool Down()
  {
    .get instance bool Game.WidgetInput::get_Down()
    .set instance void Game.WidgetInput::set_Down(bool)
  } // end of property WidgetInput::Down
  .property instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
          Press()
  {
    .get instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Press()
    .set instance void Game.WidgetInput::set_Press(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
  } // end of property WidgetInput::Press
  .property instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
          Tap()
  {
    .get instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Tap()
    .set instance void Game.WidgetInput::set_Tap(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
  } // end of property WidgetInput::Tap
  .property instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2>
          Click()
  {
    .get instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2> Game.WidgetInput::get_Click()
    .set instance void Game.WidgetInput::set_Click(valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2>)
  } // end of property WidgetInput::Click
  .property instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2>
          SpecialClick()
  {
    .get instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2> Game.WidgetInput::get_SpecialClick()
    .set instance void Game.WidgetInput::set_SpecialClick(valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2>)
  } // end of property WidgetInput::SpecialClick
  .property instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
          Drag()
  {
    .get instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Drag()
    .set instance void Game.WidgetInput::set_Drag(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
  } // end of property WidgetInput::Drag
  .property instance valuetype Game.DragMode
          DragMode()
  {
    .get instance valuetype Game.DragMode Game.WidgetInput::get_DragMode()
    .set instance void Game.WidgetInput::set_DragMode(valuetype Game.DragMode)
  } // end of property WidgetInput::DragMode
  .property instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
          Hold()
  {
    .get instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Hold()
    .set instance void Game.WidgetInput::set_Hold(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
  } // end of property WidgetInput::Hold
  .property instance float32 HoldTime()
  {
    .get instance float32 Game.WidgetInput::get_HoldTime()
    .set instance void Game.WidgetInput::set_HoldTime(float32)
  } // end of property WidgetInput::HoldTime
  .property instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
          Scroll()
  {
    .get instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.WidgetInput::get_Scroll()
    .set instance void Game.WidgetInput::set_Scroll(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
  } // end of property WidgetInput::Scroll
  .property instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Input.Key>
          LastKey()
  {
    .get instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Input.Key> Game.WidgetInput::get_LastKey()
  } // end of property WidgetInput::LastKey
  .property instance valuetype [System.Runtime]System.Nullable`1<char>
          LastChar()
  {
    .get instance valuetype [System.Runtime]System.Nullable`1<char> Game.WidgetInput::get_LastChar()
  } // end of property WidgetInput::LastChar
  .property instance bool IsMouseCursorVisible()
  {
    .get instance bool Game.WidgetInput::get_IsMouseCursorVisible()
    .set instance void Game.WidgetInput::set_IsMouseCursorVisible(bool)
  } // end of property WidgetInput::IsMouseCursorVisible
  .property instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2>
          MousePosition()
  {
    .get instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2> Game.WidgetInput::get_MousePosition()
  } // end of property WidgetInput::MousePosition
  .property instance valuetype [Engine]Engine.Point2
          MouseMovement()
  {
    .get instance valuetype [Engine]Engine.Point2 Game.WidgetInput::get_MouseMovement()
  } // end of property WidgetInput::MouseMovement
  .property instance int32 MouseWheelMovement()
  {
    .get instance int32 Game.WidgetInput::get_MouseWheelMovement()
  } // end of property WidgetInput::MouseWheelMovement
  .property instance bool IsPadCursorVisible()
  {
    .get instance bool Game.WidgetInput::get_IsPadCursorVisible()
    .set instance void Game.WidgetInput::set_IsPadCursorVisible(bool)
  } // end of property WidgetInput::IsPadCursorVisible
  .property instance valuetype [Engine]Engine.Vector2
          PadCursorPosition()
  {
    .get instance valuetype [Engine]Engine.Vector2 Game.WidgetInput::get_PadCursorPosition()
    .set instance void Game.WidgetInput::set_PadCursorPosition(valuetype [Engine]Engine.Vector2)
  } // end of property WidgetInput::PadCursorPosition
  .property instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Input.TouchLocation>
          TouchLocations()
  {
    .get instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Input.TouchLocation> Game.WidgetInput::get_TouchLocations()
  } // end of property WidgetInput::TouchLocations
  .property class Game.WidgetInput EmptyInput()
  {
    .get class Game.WidgetInput Game.WidgetInput::get_EmptyInput()
  } // end of property WidgetInput::EmptyInput
  .property instance class Game.Widget Widget()
  {
    .get instance class Game.Widget Game.WidgetInput::get_Widget()
  } // end of property WidgetInput::Widget
  .property instance valuetype Game.WidgetInputDevice
          Devices()
  {
    .get instance valuetype Game.WidgetInputDevice Game.WidgetInput::get_Devices()
    .set instance void Game.WidgetInput::set_Devices(valuetype Game.WidgetInputDevice)
  } // end of property WidgetInput::Devices
} // end of class Game.WidgetInput