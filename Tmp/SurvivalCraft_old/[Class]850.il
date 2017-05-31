.class public auto ansi beforefieldinit Game.ListPanelWidget
       extends Game.ScrollPanelWidget
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.ListPanelWidget/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<object,class Game.Widget> '<>9__14_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.ListPanelWidget/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.ListPanelWidget/'<>c' Game.ListPanelWidget/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance class Game.Widget 
            '<.ctor>b__14_0'(object item) cil managed
    {
      // 代码大小       42 (0x2a)
      .maxstack  8
      IL_0000:  newobj     instance void Game.LabelWidget::.ctor()
      IL_0005:  dup
      IL_0006:  ldarg.1
      IL_0007:  brtrue.s   IL_0010

      IL_0009:  ldsfld     string [System.Runtime]System.String::Empty
      IL_000e:  br.s       IL_0016

      IL_0010:  ldarg.1
      IL_0011:  callvirt   instance string [System.Runtime]System.Object::ToString()
      IL_0016:  callvirt   instance void Game.LabelWidget::set_Text(string)
      IL_001b:  dup
      IL_001c:  ldc.i4.1
      IL_001d:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
      IL_0022:  dup
      IL_0023:  ldc.i4.1
      IL_0024:  callvirt   instance void Game.Widget::set_VerticalAlignment(valuetype Game.WidgetAlignment)
      IL_0029:  ret
    } // end of method '<>c'::'<.ctor>b__14_0'

  } // end of class '<>c'

  .field private class [System.Collections]System.Collections.Generic.List`1<object> m_items
  .field private valuetype [System.Runtime]System.Nullable`1<int32> m_selectedItemIndex
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.Widget> m_widgetsByIndex
  .field private int32 m_firstVisibleIndex
  .field private int32 m_lastVisibleIndex
  .field private float32 m_itemSize
  .field private bool m_widgetsDirty
  .field private bool m_tapAllowed
  .field private class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object> ItemTapped
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [System.Runtime]System.Action`1<class Game.ListPanelWidget> SelectionChanged
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [System.Runtime]System.Func`2<object,class Game.Widget> '<ItemWidgetFactory>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Color '<SelectionColor>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance void 
          add_ItemTapped(class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object> V_0,
             class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object> V_1,
             class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object> Game.ListPanelWidget::ItemTapped
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Combine(class [System.Runtime]System.Delegate,
                                                                                                        class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object> Game.ListPanelWidget::ItemTapped
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object>>(!!0&,
                                                                                                                                                                       !!0,
                                                                                                                                                                       !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method ListPanelWidget::add_ItemTapped

  .method public hidebysig specialname instance void 
          remove_ItemTapped(class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object> V_0,
             class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object> V_1,
             class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object> Game.ListPanelWidget::ItemTapped
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Remove(class [System.Runtime]System.Delegate,
                                                                                                       class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object> Game.ListPanelWidget::ItemTapped
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object>>(!!0&,
                                                                                                                                                                       !!0,
                                                                                                                                                                       !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method ListPanelWidget::remove_ItemTapped

  .method public hidebysig specialname instance void 
          add_SelectionChanged(class [System.Runtime]System.Action`1<class Game.ListPanelWidget> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<class Game.ListPanelWidget> V_0,
             class [System.Runtime]System.Action`1<class Game.ListPanelWidget> V_1,
             class [System.Runtime]System.Action`1<class Game.ListPanelWidget> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<class Game.ListPanelWidget> Game.ListPanelWidget::SelectionChanged
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Combine(class [System.Runtime]System.Delegate,
                                                                                                        class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`1<class Game.ListPanelWidget>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<class Game.ListPanelWidget> Game.ListPanelWidget::SelectionChanged
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<class Game.ListPanelWidget>>(!!0&,
                                                                                                                                                                !!0,
                                                                                                                                                                !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method ListPanelWidget::add_SelectionChanged

  .method public hidebysig specialname instance void 
          remove_SelectionChanged(class [System.Runtime]System.Action`1<class Game.ListPanelWidget> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<class Game.ListPanelWidget> V_0,
             class [System.Runtime]System.Action`1<class Game.ListPanelWidget> V_1,
             class [System.Runtime]System.Action`1<class Game.ListPanelWidget> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<class Game.ListPanelWidget> Game.ListPanelWidget::SelectionChanged
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Remove(class [System.Runtime]System.Delegate,
                                                                                                       class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`1<class Game.ListPanelWidget>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<class Game.ListPanelWidget> Game.ListPanelWidget::SelectionChanged
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<class Game.ListPanelWidget>>(!!0&,
                                                                                                                                                                !!0,
                                                                                                                                                                !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method ListPanelWidget::remove_SelectionChanged

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       88 (0x58)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<object>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<object> Game.ListPanelWidget::m_items
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.Widget>::.ctor()
    IL_0011:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.Widget> Game.ListPanelWidget::m_widgetsByIndex
    IL_0016:  ldarg.0
    IL_0017:  call       instance void Game.ScrollPanelWidget::.ctor()
    IL_001c:  ldarg.0
    IL_001d:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Gray
    IL_0022:  call       instance void Game.ListPanelWidget::set_SelectionColor(valuetype [Engine]Engine.Color)
    IL_0027:  ldarg.0
    IL_0028:  ldsfld     class [System.Runtime]System.Func`2<object,class Game.Widget> Game.ListPanelWidget/'<>c'::'<>9__14_0'
    IL_002d:  dup
    IL_002e:  brtrue.s   IL_0047

    IL_0030:  pop
    IL_0031:  ldsfld     class Game.ListPanelWidget/'<>c' Game.ListPanelWidget/'<>c'::'<>9'
    IL_0036:  ldftn      instance class Game.Widget Game.ListPanelWidget/'<>c'::'<.ctor>b__14_0'(object)
    IL_003c:  newobj     instance void class [System.Runtime]System.Func`2<object,class Game.Widget>::.ctor(object,
                                                                                                            native int)
    IL_0041:  dup
    IL_0042:  stsfld     class [System.Runtime]System.Func`2<object,class Game.Widget> Game.ListPanelWidget/'<>c'::'<>9__14_0'
    IL_0047:  call       instance void Game.ListPanelWidget::set_ItemWidgetFactory(class [System.Runtime]System.Func`2<object,class Game.Widget>)
    IL_004c:  ldarg.0
    IL_004d:  ldc.r4     48.
    IL_0052:  call       instance void Game.ListPanelWidget::set_ItemSize(float32)
    IL_0057:  ret
  } // end of method ListPanelWidget::.ctor

  .method public hidebysig specialname instance class [System.Runtime]System.Func`2<object,class Game.Widget> 
          get_ItemWidgetFactory() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Func`2<object,class Game.Widget> Game.ListPanelWidget::'<ItemWidgetFactory>k__BackingField'
    IL_0006:  ret
  } // end of method ListPanelWidget::get_ItemWidgetFactory

  .method public hidebysig specialname instance void 
          set_ItemWidgetFactory(class [System.Runtime]System.Func`2<object,class Game.Widget> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [System.Runtime]System.Func`2<object,class Game.Widget> Game.ListPanelWidget::'<ItemWidgetFactory>k__BackingField'
    IL_0007:  ret
  } // end of method ListPanelWidget::set_ItemWidgetFactory

  .method public hidebysig specialname virtual 
          instance valuetype Game.LayoutDirection 
          get_Direction() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype Game.LayoutDirection Game.ScrollPanelWidget::get_Direction()
    IL_0006:  ret
  } // end of method ListPanelWidget::get_Direction

  .method public hidebysig specialname virtual 
          instance void  set_Direction(valuetype Game.LayoutDirection 'value') cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  callvirt   instance valuetype Game.LayoutDirection Game.ScrollPanelWidget::get_Direction()
    IL_0007:  beq.s      IL_0017

    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  call       instance void Game.ScrollPanelWidget::set_Direction(valuetype Game.LayoutDirection)
    IL_0010:  ldarg.0
    IL_0011:  ldc.i4.1
    IL_0012:  stfld      bool Game.ListPanelWidget::m_widgetsDirty
    IL_0017:  ret
  } // end of method ListPanelWidget::set_Direction

  .method public hidebysig specialname virtual 
          instance float32  get_ScrollPosition() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_0006:  ret
  } // end of method ListPanelWidget::get_ScrollPosition

  .method public hidebysig specialname virtual 
          instance void  set_ScrollPosition(float32 'value') cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_0007:  beq.s      IL_0017

    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  call       instance void Game.ScrollPanelWidget::set_ScrollPosition(float32)
    IL_0010:  ldarg.0
    IL_0011:  ldc.i4.1
    IL_0012:  stfld      bool Game.ListPanelWidget::m_widgetsDirty
    IL_0017:  ret
  } // end of method ListPanelWidget::set_ScrollPosition

  .method public hidebysig specialname instance float32 
          get_ItemSize() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ListPanelWidget::m_itemSize
    IL_0006:  ret
  } // end of method ListPanelWidget::get_ItemSize

  .method public hidebysig specialname instance void 
          set_ItemSize(float32 'value') cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      float32 Game.ListPanelWidget::m_itemSize
    IL_0007:  beq.s      IL_0017

    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  stfld      float32 Game.ListPanelWidget::m_itemSize
    IL_0010:  ldarg.0
    IL_0011:  ldc.i4.1
    IL_0012:  stfld      bool Game.ListPanelWidget::m_widgetsDirty
    IL_0017:  ret
  } // end of method ListPanelWidget::set_ItemSize

  .method public hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<int32> 
          get_SelectedIndex() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.ListPanelWidget::m_selectedItemIndex
    IL_0006:  ret
  } // end of method ListPanelWidget::get_SelectedIndex

  .method public hidebysig specialname instance void 
          set_SelectedIndex(valuetype [System.Runtime]System.Nullable`1<int32> 'value') cil managed
  {
    // 代码大小       124 (0x7c)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0,
             valuetype [System.Runtime]System.Nullable`1<int32> V_1)
    IL_0000:  ldarga.s   'value'
    IL_0002:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0007:  brfalse.s  IL_002f

    IL_0009:  ldarga.s   'value'
    IL_000b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0010:  ldc.i4.0
    IL_0011:  blt.s      IL_0027

    IL_0013:  ldarga.s   'value'
    IL_0015:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class [System.Collections]System.Collections.Generic.List`1<object> Game.ListPanelWidget::m_items
    IL_0020:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<object>::get_Count()
    IL_0025:  blt.s      IL_002f

    IL_0027:  ldarga.s   'value'
    IL_0029:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_002f:  ldarg.1
    IL_0030:  stloc.0
    IL_0031:  ldarg.0
    IL_0032:  ldfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.ListPanelWidget::m_selectedItemIndex
    IL_0037:  stloc.1
    IL_0038:  ldloca.s   V_0
    IL_003a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::GetValueOrDefault()
    IL_003f:  ldloca.s   V_1
    IL_0041:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::GetValueOrDefault()
    IL_0046:  beq.s      IL_004b

    IL_0048:  ldc.i4.1
    IL_0049:  br.s       IL_005e

    IL_004b:  ldloca.s   V_0
    IL_004d:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0052:  ldloca.s   V_1
    IL_0054:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0059:  ceq
    IL_005b:  ldc.i4.0
    IL_005c:  ceq
    IL_005e:  brfalse.s  IL_007b

    IL_0060:  ldarg.0
    IL_0061:  ldarg.1
    IL_0062:  stfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.ListPanelWidget::m_selectedItemIndex
    IL_0067:  ldarg.0
    IL_0068:  ldfld      class [System.Runtime]System.Action`1<class Game.ListPanelWidget> Game.ListPanelWidget::SelectionChanged
    IL_006d:  brfalse.s  IL_007b

    IL_006f:  ldarg.0
    IL_0070:  ldfld      class [System.Runtime]System.Action`1<class Game.ListPanelWidget> Game.ListPanelWidget::SelectionChanged
    IL_0075:  ldarg.0
    IL_0076:  callvirt   instance void class [System.Runtime]System.Action`1<class Game.ListPanelWidget>::Invoke(!0)
    IL_007b:  ret
  } // end of method ListPanelWidget::set_SelectedIndex

  .method public hidebysig specialname instance object 
          get_SelectedItem() cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.ListPanelWidget::m_selectedItemIndex
    IL_0006:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_000b:  brtrue.s   IL_000f

    IL_000d:  ldnull
    IL_000e:  ret

    IL_000f:  ldarg.0
    IL_0010:  ldfld      class [System.Collections]System.Collections.Generic.List`1<object> Game.ListPanelWidget::m_items
    IL_0015:  ldarg.0
    IL_0016:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.ListPanelWidget::m_selectedItemIndex
    IL_001b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0020:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<object>::get_Item(int32)
    IL_0025:  ret
  } // end of method ListPanelWidget::get_SelectedItem

  .method public hidebysig specialname instance void 
          set_SelectedItem(object 'value') cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (int32 V_0,
             valuetype [System.Runtime]System.Nullable`1<int32> V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<object> Game.ListPanelWidget::m_items
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<object>::IndexOf(!0)
    IL_000c:  stloc.0
    IL_000d:  ldarg.0
    IL_000e:  ldloc.0
    IL_000f:  ldc.i4.0
    IL_0010:  bge.s      IL_001d

    IL_0012:  ldloca.s   V_1
    IL_0014:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_001a:  ldloc.1
    IL_001b:  br.s       IL_0023

    IL_001d:  ldloc.0
    IL_001e:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0023:  call       instance void Game.ListPanelWidget::set_SelectedIndex(valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_0028:  ret
  } // end of method ListPanelWidget::set_SelectedItem

  .method public hidebysig specialname instance valuetype [Engine]Engine.ReadOnlyList`1<object> 
          get_Items() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<object> Game.ListPanelWidget::m_items
    IL_0006:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<object>::.ctor(class [System.Collections]System.Collections.Generic.List`1<!0>)
    IL_000b:  ret
  } // end of method ListPanelWidget::get_Items

  .method public hidebysig specialname instance valuetype [Engine]Engine.Color 
          get_SelectionColor() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Color Game.ListPanelWidget::'<SelectionColor>k__BackingField'
    IL_0006:  ret
  } // end of method ListPanelWidget::get_SelectionColor

  .method public hidebysig specialname instance void 
          set_SelectionColor(valuetype [Engine]Engine.Color 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Color Game.ListPanelWidget::'<SelectionColor>k__BackingField'
    IL_0007:  ret
  } // end of method ListPanelWidget::set_SelectionColor

  .method public hidebysig instance void 
          AddItem(object item) cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<object> Game.ListPanelWidget::m_items
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<object>::Add(!0)
    IL_000c:  ldarg.0
    IL_000d:  ldc.i4.1
    IL_000e:  stfld      bool Game.ListPanelWidget::m_widgetsDirty
    IL_0013:  ret
  } // end of method ListPanelWidget::AddItem

  .method public hidebysig instance void 
          RemoveItem(object item) cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<object> Game.ListPanelWidget::m_items
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<object>::IndexOf(!0)
    IL_000c:  stloc.0
    IL_000d:  ldloc.0
    IL_000e:  ldc.i4.0
    IL_000f:  blt.s      IL_0018

    IL_0011:  ldarg.0
    IL_0012:  ldloc.0
    IL_0013:  call       instance void Game.ListPanelWidget::RemoveItemAt(int32)
    IL_0018:  ret
  } // end of method ListPanelWidget::RemoveItem

  .method public hidebysig instance void 
          RemoveItemAt(int32 index) cil managed
  {
    // 代码大小       88 (0x58)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<object> Game.ListPanelWidget::m_items
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<object>::get_Item(int32)
    IL_000c:  pop
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class [System.Collections]System.Collections.Generic.List`1<object> Game.ListPanelWidget::m_items
    IL_0013:  ldarg.1
    IL_0014:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<object>::RemoveAt(int32)
    IL_0019:  ldarg.0
    IL_001a:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.Widget> Game.ListPanelWidget::m_widgetsByIndex
    IL_001f:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.Widget>::Clear()
    IL_0024:  ldarg.0
    IL_0025:  ldc.i4.1
    IL_0026:  stfld      bool Game.ListPanelWidget::m_widgetsDirty
    IL_002b:  ldarg.1
    IL_002c:  ldarg.0
    IL_002d:  call       instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ListPanelWidget::get_SelectedIndex()
    IL_0032:  stloc.0
    IL_0033:  ldloca.s   V_0
    IL_0035:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::GetValueOrDefault()
    IL_003a:  beq.s      IL_003f

    IL_003c:  ldc.i4.0
    IL_003d:  br.s       IL_0046

    IL_003f:  ldloca.s   V_0
    IL_0041:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0046:  brfalse.s  IL_0057

    IL_0048:  ldarg.0
    IL_0049:  ldloca.s   V_0
    IL_004b:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_0051:  ldloc.0
    IL_0052:  call       instance void Game.ListPanelWidget::set_SelectedIndex(valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_0057:  ret
  } // end of method ListPanelWidget::RemoveItemAt

  .method public hidebysig instance void 
          ClearItems() cil managed
  {
    // 代码大小       45 (0x2d)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<object> Game.ListPanelWidget::m_items
    IL_0006:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<object>::Clear()
    IL_000b:  ldarg.0
    IL_000c:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.Widget> Game.ListPanelWidget::m_widgetsByIndex
    IL_0011:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.Widget>::Clear()
    IL_0016:  ldarg.0
    IL_0017:  ldc.i4.1
    IL_0018:  stfld      bool Game.ListPanelWidget::m_widgetsDirty
    IL_001d:  ldarg.0
    IL_001e:  ldloca.s   V_0
    IL_0020:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_0026:  ldloc.0
    IL_0027:  call       instance void Game.ListPanelWidget::set_SelectedIndex(valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_002c:  ret
  } // end of method ListPanelWidget::ClearItems

  .method public hidebysig virtual instance float32 
          CalculateScrollAreaLength() cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  2
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1<object> V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<object> Game.ListPanelWidget::get_Items()
    IL_0006:  stloc.0
    IL_0007:  ldloca.s   V_0
    IL_0009:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<object>::get_Count()
    IL_000e:  conv.r4
    IL_000f:  ldarg.0
    IL_0010:  call       instance float32 Game.ListPanelWidget::get_ItemSize()
    IL_0015:  mul
    IL_0016:  ret
  } // end of method ListPanelWidget::CalculateScrollAreaLength

  .method public hidebysig instance void 
          ScrollToItem(object item) cil managed
  {
    // 代码大小       112 (0x70)
    .maxstack  3
    .locals init (int32 V_0,
             float32 V_1,
             float32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<object> Game.ListPanelWidget::m_items
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<object>::IndexOf(!0)
    IL_000c:  stloc.0
    IL_000d:  ldloc.0
    IL_000e:  ldc.i4.0
    IL_000f:  blt.s      IL_006f

    IL_0011:  ldloc.0
    IL_0012:  conv.r4
    IL_0013:  ldarg.0
    IL_0014:  call       instance float32 Game.ListPanelWidget::get_ItemSize()
    IL_0019:  mul
    IL_001a:  stloc.1
    IL_001b:  ldarg.0
    IL_001c:  callvirt   instance valuetype Game.LayoutDirection Game.ScrollPanelWidget::get_Direction()
    IL_0021:  brfalse.s  IL_0030

    IL_0023:  ldarg.0
    IL_0024:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0029:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_002e:  br.s       IL_003b

    IL_0030:  ldarg.0
    IL_0031:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0036:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_003b:  stloc.2
    IL_003c:  ldloc.1
    IL_003d:  ldarg.0
    IL_003e:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_0043:  bge.un.s   IL_004d

    IL_0045:  ldarg.0
    IL_0046:  ldloc.1
    IL_0047:  callvirt   instance void Game.ScrollPanelWidget::set_ScrollPosition(float32)
    IL_004c:  ret

    IL_004d:  ldloc.1
    IL_004e:  ldarg.0
    IL_004f:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_0054:  ldloc.2
    IL_0055:  add
    IL_0056:  ldarg.0
    IL_0057:  call       instance float32 Game.ListPanelWidget::get_ItemSize()
    IL_005c:  sub
    IL_005d:  ble.un.s   IL_006f

    IL_005f:  ldarg.0
    IL_0060:  ldloc.1
    IL_0061:  ldloc.2
    IL_0062:  sub
    IL_0063:  ldarg.0
    IL_0064:  call       instance float32 Game.ListPanelWidget::get_ItemSize()
    IL_0069:  add
    IL_006a:  callvirt   instance void Game.ScrollPanelWidget::set_ScrollPosition(float32)
    IL_006f:  ret
  } // end of method ListPanelWidget::ScrollToItem

  .method public hidebysig virtual instance void 
          Measure(valuetype [Engine]Engine.Vector2 availableSize) cil managed
  {
    // 代码大小       61 (0x3d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.ScrollPanelWidget::Measure(valuetype [Engine]Engine.Vector2)
    IL_0007:  ldarg.0
    IL_0008:  ldfld      bool Game.ListPanelWidget::m_widgetsDirty
    IL_000d:  brfalse.s  IL_003c

    IL_000f:  ldarg.0
    IL_0010:  ldc.i4.0
    IL_0011:  stfld      bool Game.ListPanelWidget::m_widgetsDirty
    IL_0016:  ldarg.0
    IL_0017:  ldarg.0
    IL_0018:  callvirt   instance valuetype Game.LayoutDirection Game.ScrollPanelWidget::get_Direction()
    IL_001d:  brfalse.s  IL_002c

    IL_001f:  ldarg.0
    IL_0020:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0025:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_002a:  br.s       IL_0037

    IL_002c:  ldarg.0
    IL_002d:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0032:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0037:  call       instance void Game.ListPanelWidget::CreateListWidgets(float32)
    IL_003c:  ret
  } // end of method ListPanelWidget::Measure

  .method public hidebysig virtual instance void 
          Arrange(valuetype [Engine]Engine.Vector2 position,
                  valuetype [Engine]Engine.Vector2 actualSize) cil managed
  {
    // 代码大小       230 (0xe6)
    .maxstack  4
    .locals init (int32 V_0,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> V_1,
             class Game.Widget V_2)
    IL_0000:  ldarg.2
    IL_0001:  ldarg.0
    IL_0002:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0007:  call       bool [Engine]Engine.Vector2::op_Inequality(valuetype [Engine]Engine.Vector2,
                                                                    valuetype [Engine]Engine.Vector2)
    IL_000c:  brfalse.s  IL_0015

    IL_000e:  ldarg.0
    IL_000f:  ldc.i4.1
    IL_0010:  stfld      bool Game.ListPanelWidget::m_widgetsDirty
    IL_0015:  ldarg.0
    IL_0016:  ldarg.1
    IL_0017:  ldarg.2
    IL_0018:  call       instance void Game.ScrollPanelWidget::Arrange(valuetype [Engine]Engine.Vector2,
                                                                       valuetype [Engine]Engine.Vector2)
    IL_001d:  ldarg.0
    IL_001e:  ldfld      int32 Game.ListPanelWidget::m_firstVisibleIndex
    IL_0023:  stloc.0
    IL_0024:  ldarg.0
    IL_0025:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_002a:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> Game.WidgetsContainer::GetEnumerator()
    IL_002f:  stloc.1
    .try
    {
      IL_0030:  br         IL_00ce

      IL_0035:  ldloc.1
      IL_0036:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget>::get_Current()
      IL_003b:  stloc.2
      IL_003c:  ldarg.0
      IL_003d:  callvirt   instance valuetype Game.LayoutDirection Game.ScrollPanelWidget::get_Direction()
      IL_0042:  brtrue.s   IL_0088

      IL_0044:  ldarg.0
      IL_0045:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
      IL_004a:  ldloc.0
      IL_004b:  conv.r4
      IL_004c:  ldarg.0
      IL_004d:  call       instance float32 Game.ListPanelWidget::get_ItemSize()
      IL_0052:  mul
      IL_0053:  ldarg.0
      IL_0054:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
      IL_0059:  sub
      IL_005a:  ldc.r4     0.0
      IL_005f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_0064:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_0069:  dup
      IL_006a:  ldarg.0
      IL_006b:  call       instance float32 Game.ListPanelWidget::get_ItemSize()
      IL_0070:  ldarg.2
      IL_0071:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0076:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_007b:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_0080:  ldloc.2
      IL_0081:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                               valuetype [Engine]Engine.Vector2,
                                                                               class Game.Widget)
      IL_0086:  br.s       IL_00ca

      IL_0088:  ldarg.0
      IL_0089:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
      IL_008e:  ldc.r4     0.0
      IL_0093:  ldloc.0
      IL_0094:  conv.r4
      IL_0095:  ldarg.0
      IL_0096:  call       instance float32 Game.ListPanelWidget::get_ItemSize()
      IL_009b:  mul
      IL_009c:  ldarg.0
      IL_009d:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
      IL_00a2:  sub
      IL_00a3:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_00a8:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_00ad:  dup
      IL_00ae:  ldarg.2
      IL_00af:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_00b4:  ldarg.0
      IL_00b5:  call       instance float32 Game.ListPanelWidget::get_ItemSize()
      IL_00ba:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_00bf:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_00c4:  ldloc.2
      IL_00c5:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                               valuetype [Engine]Engine.Vector2,
                                                                               class Game.Widget)
      IL_00ca:  ldloc.0
      IL_00cb:  ldc.i4.1
      IL_00cc:  add
      IL_00cd:  stloc.0
      IL_00ce:  ldloc.1
      IL_00cf:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_00d4:  brtrue     IL_0035

      IL_00d9:  leave.s    IL_00e5

    }  // end .try
    finally
    {
      IL_00db:  ldloc.1
      IL_00dc:  brfalse.s  IL_00e4

      IL_00de:  ldloc.1
      IL_00df:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00e4:  endfinally
    }  // end handler
    IL_00e5:  ret
  } // end of method ListPanelWidget::Arrange

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       276 (0x114)
    .maxstack  4
    .locals init (valuetype Game.InputState V_0,
             int32 V_1,
             valuetype [Engine]Engine.ReadOnlyList`1<object> V_2,
             valuetype [System.Runtime]System.Nullable`1<int32> V_3)
    IL_0000:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0005:  stloc.0
    IL_0006:  ldloca.s   V_0
    IL_0008:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Click
    IL_000d:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0012:  brfalse.s  IL_0041

    IL_0014:  ldarg.0
    IL_0015:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_001a:  stloc.0
    IL_001b:  ldloca.s   V_0
    IL_001d:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Click
    IL_0022:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0027:  call       instance bool Game.ScrollPanelWidget::HitTestPanel(valuetype [Engine]Engine.Vector2)
    IL_002c:  brfalse.s  IL_0041

    IL_002e:  ldarg.0
    IL_002f:  ldarg.0
    IL_0030:  ldfld      float32 Game.ScrollPanelWidget::m_scrollSpeed
    IL_0035:  ldc.r4     0.0
    IL_003a:  ceq
    IL_003c:  stfld      bool Game.ListPanelWidget::m_tapAllowed
    IL_0041:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0046:  stloc.0
    IL_0047:  ldloca.s   V_0
    IL_0049:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Tap
    IL_004e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0053:  brfalse    IL_010d

    IL_0058:  ldarg.0
    IL_0059:  ldfld      bool Game.ListPanelWidget::m_tapAllowed
    IL_005e:  brfalse    IL_010d

    IL_0063:  ldarg.0
    IL_0064:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0069:  stloc.0
    IL_006a:  ldloca.s   V_0
    IL_006c:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Tap
    IL_0071:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0076:  call       instance bool Game.ScrollPanelWidget::HitTestPanel(valuetype [Engine]Engine.Vector2)
    IL_007b:  brfalse    IL_010d

    IL_0080:  ldarg.0
    IL_0081:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0086:  stloc.0
    IL_0087:  ldloca.s   V_0
    IL_0089:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Tap
    IL_008e:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0093:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0098:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_009d:  call       instance int32 Game.ListPanelWidget::PositionToItemIndex(valuetype [Engine]Engine.Vector2)
    IL_00a2:  stloc.1
    IL_00a3:  ldarg.0
    IL_00a4:  ldfld      class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object> Game.ListPanelWidget::ItemTapped
    IL_00a9:  brfalse.s  IL_00d8

    IL_00ab:  ldloc.1
    IL_00ac:  ldc.i4.0
    IL_00ad:  blt.s      IL_00d8

    IL_00af:  ldloc.1
    IL_00b0:  ldarg.0
    IL_00b1:  ldfld      class [System.Collections]System.Collections.Generic.List`1<object> Game.ListPanelWidget::m_items
    IL_00b6:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<object>::get_Count()
    IL_00bb:  bge.s      IL_00d8

    IL_00bd:  ldarg.0
    IL_00be:  ldfld      class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object> Game.ListPanelWidget::ItemTapped
    IL_00c3:  ldarg.0
    IL_00c4:  ldarg.0
    IL_00c5:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<object> Game.ListPanelWidget::get_Items()
    IL_00ca:  stloc.2
    IL_00cb:  ldloca.s   V_2
    IL_00cd:  ldloc.1
    IL_00ce:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<object>::get_Item(int32)
    IL_00d3:  callvirt   instance void class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object>::Invoke(!0,
                                                                                                                        !1)
    IL_00d8:  ldarg.0
    IL_00d9:  ldloc.1
    IL_00da:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_00df:  call       instance void Game.ListPanelWidget::set_SelectedIndex(valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_00e4:  ldarg.0
    IL_00e5:  call       instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ListPanelWidget::get_SelectedIndex()
    IL_00ea:  stloc.3
    IL_00eb:  ldloca.s   V_3
    IL_00ed:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_00f2:  brfalse.s  IL_010d

    IL_00f4:  ldstr      "Audio/UI/ButtonClick"
    IL_00f9:  ldc.r4     1.
    IL_00fe:  ldc.r4     0.0
    IL_0103:  ldc.r4     0.0
    IL_0108:  call       void Game.AudioManager::PlaySound(string,
                                                           float32,
                                                           float32,
                                                           float32)
    IL_010d:  ldarg.0
    IL_010e:  call       instance void Game.ScrollPanelWidget::Update()
    IL_0113:  ret
  } // end of method ListPanelWidget::Update

  .method public hidebysig virtual instance void 
          Draw() cil managed
  {
    // 代码大小       214 (0xd6)
    .maxstack  5
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             valuetype [Engine]Engine.Vector2 V_2)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ListPanelWidget::get_SelectedIndex()
    IL_0006:  stloc.0
    IL_0007:  ldloca.s   V_0
    IL_0009:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_000e:  brfalse    IL_00cf

    IL_0013:  ldarg.0
    IL_0014:  call       instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ListPanelWidget::get_SelectedIndex()
    IL_0019:  stloc.0
    IL_001a:  ldloca.s   V_0
    IL_001c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0021:  ldarg.0
    IL_0022:  ldfld      int32 Game.ListPanelWidget::m_firstVisibleIndex
    IL_0027:  blt        IL_00cf

    IL_002c:  ldarg.0
    IL_002d:  call       instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ListPanelWidget::get_SelectedIndex()
    IL_0032:  stloc.0
    IL_0033:  ldloca.s   V_0
    IL_0035:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_003a:  ldarg.0
    IL_003b:  ldfld      int32 Game.ListPanelWidget::m_lastVisibleIndex
    IL_0040:  bgt        IL_00cf

    IL_0045:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
    IL_004a:  ldc.i4.0
    IL_004b:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_0050:  ldnull
    IL_0051:  ldnull
    IL_0052:  callvirt   instance class [Engine]Engine.Graphics.FlatBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::FlatBatch(int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState)
    IL_0057:  ldarg.0
    IL_0058:  ldarg.0
    IL_0059:  call       instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ListPanelWidget::get_SelectedIndex()
    IL_005e:  stloc.0
    IL_005f:  ldloca.s   V_0
    IL_0061:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0066:  call       instance valuetype [Engine]Engine.Vector2 Game.ListPanelWidget::ItemIndexToPosition(int32)
    IL_006b:  stloc.1
    IL_006c:  ldarg.0
    IL_006d:  callvirt   instance valuetype Game.LayoutDirection Game.ScrollPanelWidget::get_Direction()
    IL_0072:  brfalse.s  IL_008c

    IL_0074:  ldarg.0
    IL_0075:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_007a:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_007f:  ldarg.0
    IL_0080:  call       instance float32 Game.ListPanelWidget::get_ItemSize()
    IL_0085:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_008a:  br.s       IL_00a2

    IL_008c:  ldarg.0
    IL_008d:  call       instance float32 Game.ListPanelWidget::get_ItemSize()
    IL_0092:  ldarg.0
    IL_0093:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0098:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_009d:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00a2:  stloc.2
    IL_00a3:  ldloc.1
    IL_00a4:  call       float32 Game.WidgetsManager::get_Scale()
    IL_00a9:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_00ae:  ldloc.1
    IL_00af:  ldloc.2
    IL_00b0:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_00b5:  call       float32 Game.WidgetsManager::get_Scale()
    IL_00ba:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_00bf:  ldc.r4     0.0
    IL_00c4:  ldarg.0
    IL_00c5:  call       instance valuetype [Engine]Engine.Color Game.ListPanelWidget::get_SelectionColor()
    IL_00ca:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_00cf:  ldarg.0
    IL_00d0:  call       instance void Game.ScrollPanelWidget::Draw()
    IL_00d5:  ret
  } // end of method ListPanelWidget::Draw

  .method private hidebysig instance valuetype [Engine]Engine.Vector2 
          ItemIndexToPosition(int32 index) cil managed
  {
    // 代码大小       84 (0x54)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance valuetype Game.LayoutDirection Game.ScrollPanelWidget::get_Direction()
    IL_0006:  brtrue.s   IL_002e

    IL_0008:  ldarg.0
    IL_0009:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_000e:  ldarg.1
    IL_000f:  conv.r4
    IL_0010:  ldarg.0
    IL_0011:  call       instance float32 Game.ListPanelWidget::get_ItemSize()
    IL_0016:  mul
    IL_0017:  ldarg.0
    IL_0018:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_001d:  sub
    IL_001e:  ldc.r4     0.0
    IL_0023:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0028:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_002d:  ret

    IL_002e:  ldarg.0
    IL_002f:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0034:  ldc.r4     0.0
    IL_0039:  ldarg.1
    IL_003a:  conv.r4
    IL_003b:  ldarg.0
    IL_003c:  call       instance float32 Game.ListPanelWidget::get_ItemSize()
    IL_0041:  mul
    IL_0042:  ldarg.0
    IL_0043:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_0048:  sub
    IL_0049:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_004e:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0053:  ret
  } // end of method ListPanelWidget::ItemIndexToPosition

  .method private hidebysig instance int32 
          PositionToItemIndex(valuetype [Engine]Engine.Vector2 position) cil managed
  {
    // 代码大小       76 (0x4c)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance valuetype Game.LayoutDirection Game.ScrollPanelWidget::get_Direction()
    IL_0006:  brtrue.s   IL_002a

    IL_0008:  ldarg.1
    IL_0009:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_000e:  ldarg.0
    IL_000f:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0014:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0019:  sub
    IL_001a:  ldarg.0
    IL_001b:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_0020:  add
    IL_0021:  ldarg.0
    IL_0022:  call       instance float32 Game.ListPanelWidget::get_ItemSize()
    IL_0027:  div
    IL_0028:  conv.i4
    IL_0029:  ret

    IL_002a:  ldarg.1
    IL_002b:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0030:  ldarg.0
    IL_0031:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0036:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_003b:  sub
    IL_003c:  ldarg.0
    IL_003d:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_0042:  add
    IL_0043:  ldarg.0
    IL_0044:  call       instance float32 Game.ListPanelWidget::get_ItemSize()
    IL_0049:  div
    IL_004a:  conv.i4
    IL_004b:  ret
  } // end of method ListPanelWidget::PositionToItemIndex

  .method private hidebysig instance void 
          CreateListWidgets(float32 size) cil managed
  {
    // 代码大小       217 (0xd9)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             object V_3,
             class Game.Widget V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0006:  callvirt   instance void Game.WidgetsContainer::Clear()
    IL_000b:  ldarg.0
    IL_000c:  ldfld      class [System.Collections]System.Collections.Generic.List`1<object> Game.ListPanelWidget::m_items
    IL_0011:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<object>::get_Count()
    IL_0016:  ldc.i4.0
    IL_0017:  ble        IL_00d8

    IL_001c:  ldarg.0
    IL_001d:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_0022:  ldarg.0
    IL_0023:  call       instance float32 Game.ListPanelWidget::get_ItemSize()
    IL_0028:  div
    IL_0029:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_002e:  conv.i4
    IL_002f:  stloc.0
    IL_0030:  ldarg.0
    IL_0031:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_0036:  ldarg.1
    IL_0037:  add
    IL_0038:  ldarg.0
    IL_0039:  call       instance float32 Game.ListPanelWidget::get_ItemSize()
    IL_003e:  div
    IL_003f:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0044:  conv.i4
    IL_0045:  stloc.1
    IL_0046:  ldarg.0
    IL_0047:  ldloc.0
    IL_0048:  ldc.i4.0
    IL_0049:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_004e:  stfld      int32 Game.ListPanelWidget::m_firstVisibleIndex
    IL_0053:  ldarg.0
    IL_0054:  ldloc.1
    IL_0055:  ldarg.0
    IL_0056:  ldfld      class [System.Collections]System.Collections.Generic.List`1<object> Game.ListPanelWidget::m_items
    IL_005b:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<object>::get_Count()
    IL_0060:  ldc.i4.1
    IL_0061:  sub
    IL_0062:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0067:  stfld      int32 Game.ListPanelWidget::m_lastVisibleIndex
    IL_006c:  ldloc.0
    IL_006d:  stloc.2
    IL_006e:  br.s       IL_00d4

    IL_0070:  ldloc.2
    IL_0071:  ldc.i4.0
    IL_0072:  blt.s      IL_00d0

    IL_0074:  ldloc.2
    IL_0075:  ldarg.0
    IL_0076:  ldfld      class [System.Collections]System.Collections.Generic.List`1<object> Game.ListPanelWidget::m_items
    IL_007b:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<object>::get_Count()
    IL_0080:  bge.s      IL_00d0

    IL_0082:  ldarg.0
    IL_0083:  ldfld      class [System.Collections]System.Collections.Generic.List`1<object> Game.ListPanelWidget::m_items
    IL_0088:  ldloc.2
    IL_0089:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<object>::get_Item(int32)
    IL_008e:  stloc.3
    IL_008f:  ldarg.0
    IL_0090:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.Widget> Game.ListPanelWidget::m_widgetsByIndex
    IL_0095:  ldloc.2
    IL_0096:  ldloca.s   V_4
    IL_0098:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.Widget>::TryGetValue(!0,
                                                                                                                                               !1&)
    IL_009d:  brtrue.s   IL_00c3

    IL_009f:  ldarg.0
    IL_00a0:  call       instance class [System.Runtime]System.Func`2<object,class Game.Widget> Game.ListPanelWidget::get_ItemWidgetFactory()
    IL_00a5:  ldloc.3
    IL_00a6:  callvirt   instance !1 class [System.Runtime]System.Func`2<object,class Game.Widget>::Invoke(!0)
    IL_00ab:  stloc.s    V_4
    IL_00ad:  ldloc.s    V_4
    IL_00af:  ldloc.3
    IL_00b0:  callvirt   instance void Game.Widget::set_Tag(object)
    IL_00b5:  ldarg.0
    IL_00b6:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.Widget> Game.ListPanelWidget::m_widgetsByIndex
    IL_00bb:  ldloc.2
    IL_00bc:  ldloc.s    V_4
    IL_00be:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.Widget>::Add(!0,
                                                                                                                                       !1)
    IL_00c3:  ldarg.0
    IL_00c4:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00c9:  ldloc.s    V_4
    IL_00cb:  callvirt   instance void Game.WidgetsContainer::Add(class Game.Widget)
    IL_00d0:  ldloc.2
    IL_00d1:  ldc.i4.1
    IL_00d2:  add
    IL_00d3:  stloc.2
    IL_00d4:  ldloc.2
    IL_00d5:  ldloc.1
    IL_00d6:  ble.s      IL_0070

    IL_00d8:  ret
  } // end of method ListPanelWidget::CreateListWidgets

  .event class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object> ItemTapped
  {
    .addon instance void Game.ListPanelWidget::add_ItemTapped(class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object>)
    .removeon instance void Game.ListPanelWidget::remove_ItemTapped(class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object>)
  } // end of event ListPanelWidget::ItemTapped
  .event class [System.Runtime]System.Action`1<class Game.ListPanelWidget> SelectionChanged
  {
    .addon instance void Game.ListPanelWidget::add_SelectionChanged(class [System.Runtime]System.Action`1<class Game.ListPanelWidget>)
    .removeon instance void Game.ListPanelWidget::remove_SelectionChanged(class [System.Runtime]System.Action`1<class Game.ListPanelWidget>)
  } // end of event ListPanelWidget::SelectionChanged
  .property instance class [System.Runtime]System.Func`2<object,class Game.Widget>
          ItemWidgetFactory()
  {
    .get instance class [System.Runtime]System.Func`2<object,class Game.Widget> Game.ListPanelWidget::get_ItemWidgetFactory()
    .set instance void Game.ListPanelWidget::set_ItemWidgetFactory(class [System.Runtime]System.Func`2<object,class Game.Widget>)
  } // end of property ListPanelWidget::ItemWidgetFactory
  .property instance valuetype Game.LayoutDirection
          Direction()
  {
    .get instance valuetype Game.LayoutDirection Game.ListPanelWidget::get_Direction()
    .set instance void Game.ListPanelWidget::set_Direction(valuetype Game.LayoutDirection)
  } // end of property ListPanelWidget::Direction
  .property instance float32 ScrollPosition()
  {
    .get instance float32 Game.ListPanelWidget::get_ScrollPosition()
    .set instance void Game.ListPanelWidget::set_ScrollPosition(float32)
  } // end of property ListPanelWidget::ScrollPosition
  .property instance float32 ItemSize()
  {
    .get instance float32 Game.ListPanelWidget::get_ItemSize()
    .set instance void Game.ListPanelWidget::set_ItemSize(float32)
  } // end of property ListPanelWidget::ItemSize
  .property instance valuetype [System.Runtime]System.Nullable`1<int32>
          SelectedIndex()
  {
    .get instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ListPanelWidget::get_SelectedIndex()
    .set instance void Game.ListPanelWidget::set_SelectedIndex(valuetype [System.Runtime]System.Nullable`1<int32>)
  } // end of property ListPanelWidget::SelectedIndex
  .property instance object SelectedItem()
  {
    .get instance object Game.ListPanelWidget::get_SelectedItem()
    .set instance void Game.ListPanelWidget::set_SelectedItem(object)
  } // end of property ListPanelWidget::SelectedItem
  .property instance valuetype [Engine]Engine.ReadOnlyList`1<object>
          Items()
  {
    .get instance valuetype [Engine]Engine.ReadOnlyList`1<object> Game.ListPanelWidget::get_Items()
  } // end of property ListPanelWidget::Items
  .property instance valuetype [Engine]Engine.Color
          SelectionColor()
  {
    .get instance valuetype [Engine]Engine.Color Game.ListPanelWidget::get_SelectionColor()
    .set instance void Game.ListPanelWidget::set_SelectionColor(valuetype [Engine]Engine.Color)
  } // end of property ListPanelWidget::SelectionColor
} // end of class Game.ListPanelWidget