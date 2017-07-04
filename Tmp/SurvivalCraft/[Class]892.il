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
  .field private bool m_clickAllowed
  .field private class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object> ItemClicked
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [System.Runtime]System.Action`1<class Game.ListPanelWidget> SelectionChanged
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [System.Runtime]System.Func`2<object,class Game.Widget> '<ItemWidgetFactory>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Color '<SelectionColor>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Vector2 lastActualSize
  .method public hidebysig specialname instance void 
          add_ItemClicked(class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object> V_0,
             class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object> V_1,
             class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object> Game.ListPanelWidget::ItemClicked
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
    IL_0017:  ldflda     class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object> Game.ListPanelWidget::ItemClicked
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
  } // end of method ListPanelWidget::add_ItemClicked

  .method public hidebysig specialname instance void 
          remove_ItemClicked(class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object> V_0,
             class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object> V_1,
             class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object> Game.ListPanelWidget::ItemClicked
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
    IL_0017:  ldflda     class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object> Game.ListPanelWidget::ItemClicked
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
  } // end of method ListPanelWidget::remove_ItemClicked

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
    // 代码大小       104 (0x68)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<object>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<object> Game.ListPanelWidget::m_items
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.Widget>::.ctor()
    IL_0011:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.Widget> Game.ListPanelWidget::m_widgetsByIndex
    IL_0016:  ldarg.0
    IL_0017:  ldc.r4     -1.
    IL_001c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0021:  stfld      valuetype [Engine]Engine.Vector2 Game.ListPanelWidget::lastActualSize
    IL_0026:  ldarg.0
    IL_0027:  call       instance void Game.ScrollPanelWidget::.ctor()
    IL_002c:  ldarg.0
    IL_002d:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Gray
    IL_0032:  call       instance void Game.ListPanelWidget::set_SelectionColor(valuetype [Engine]Engine.Color)
    IL_0037:  ldarg.0
    IL_0038:  ldsfld     class [System.Runtime]System.Func`2<object,class Game.Widget> Game.ListPanelWidget/'<>c'::'<>9__14_0'
    IL_003d:  dup
    IL_003e:  brtrue.s   IL_0057

    IL_0040:  pop
    IL_0041:  ldsfld     class Game.ListPanelWidget/'<>c' Game.ListPanelWidget/'<>c'::'<>9'
    IL_0046:  ldftn      instance class Game.Widget Game.ListPanelWidget/'<>c'::'<.ctor>b__14_0'(object)
    IL_004c:  newobj     instance void class [System.Runtime]System.Func`2<object,class Game.Widget>::.ctor(object,
                                                                                                            native int)
    IL_0051:  dup
    IL_0052:  stsfld     class [System.Runtime]System.Func`2<object,class Game.Widget> Game.ListPanelWidget/'<>c'::'<>9__14_0'
    IL_0057:  call       instance void Game.ListPanelWidget::set_ItemWidgetFactory(class [System.Runtime]System.Func`2<object,class Game.Widget>)
    IL_005c:  ldarg.0
    IL_005d:  ldc.r4     48.
    IL_0062:  call       instance void Game.ListPanelWidget::set_ItemSize(float32)
    IL_0067:  ret
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
    IL_0006:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<object>::.ctor(class [System.Runtime]System.Collections.Generic.IList`1<!0>)
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
          MeasureOverride(valuetype [Engine]Engine.Vector2 parentAvailableSize) cil managed
  {
    // 代码大小       234 (0xea)
    .maxstack  5
    .locals init (valuetype Game.WidgetsList/Enumerator V_0,
             class Game.Widget V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  call       instance void Game.Widget::set_IsDrawRequired(bool)
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_000d:  callvirt   instance valuetype Game.WidgetsList/Enumerator Game.WidgetsList::GetEnumerator()
    IL_0012:  stloc.0
    .try
    {
      IL_0013:  br         IL_0098

      IL_0018:  ldloca.s   V_0
      IL_001a:  call       instance class Game.Widget Game.WidgetsList/Enumerator::get_Current()
      IL_001f:  stloc.1
      IL_0020:  ldloc.1
      IL_0021:  callvirt   instance bool Game.Widget::get_IsVisible()
      IL_0026:  brfalse.s  IL_0098

      IL_0028:  ldarg.0
      IL_0029:  callvirt   instance valuetype Game.LayoutDirection Game.ScrollPanelWidget::get_Direction()
      IL_002e:  brtrue.s   IL_0065

      IL_0030:  ldloc.1
      IL_0031:  ldarg.0
      IL_0032:  call       instance float32 Game.ListPanelWidget::get_ItemSize()
      IL_0037:  ldarg.1
      IL_0038:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_003d:  ldc.r4     2.
      IL_0042:  ldloc.1
      IL_0043:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_0048:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_004d:  mul
      IL_004e:  sub
      IL_004f:  ldc.r4     0.0
      IL_0054:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_0059:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_005e:  callvirt   instance void Game.Widget::Measure(valuetype [Engine]Engine.Vector2)
      IL_0063:  br.s       IL_0098

      IL_0065:  ldloc.1
      IL_0066:  ldarg.1
      IL_0067:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_006c:  ldc.r4     2.
      IL_0071:  ldloc.1
      IL_0072:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Margin()
      IL_0077:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_007c:  mul
      IL_007d:  sub
      IL_007e:  ldc.r4     0.0
      IL_0083:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_0088:  ldarg.0
      IL_0089:  call       instance float32 Game.ListPanelWidget::get_ItemSize()
      IL_008e:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_0093:  callvirt   instance void Game.Widget::Measure(valuetype [Engine]Engine.Vector2)
      IL_0098:  ldloca.s   V_0
      IL_009a:  call       instance bool Game.WidgetsList/Enumerator::MoveNext()
      IL_009f:  brtrue     IL_0018

      IL_00a4:  leave.s    IL_00b4

    }  // end .try
    finally
    {
      IL_00a6:  ldloca.s   V_0
      IL_00a8:  constrained. Game.WidgetsList/Enumerator
      IL_00ae:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00b3:  endfinally
    }  // end handler
    IL_00b4:  ldarg.0
    IL_00b5:  ldfld      bool Game.ListPanelWidget::m_widgetsDirty
    IL_00ba:  brfalse.s  IL_00e9

    IL_00bc:  ldarg.0
    IL_00bd:  ldc.i4.0
    IL_00be:  stfld      bool Game.ListPanelWidget::m_widgetsDirty
    IL_00c3:  ldarg.0
    IL_00c4:  ldarg.0
    IL_00c5:  callvirt   instance valuetype Game.LayoutDirection Game.ScrollPanelWidget::get_Direction()
    IL_00ca:  brfalse.s  IL_00d9

    IL_00cc:  ldarg.0
    IL_00cd:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_00d2:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00d7:  br.s       IL_00e4

    IL_00d9:  ldarg.0
    IL_00da:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_00df:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00e4:  call       instance void Game.ListPanelWidget::CreateListWidgets(float32)
    IL_00e9:  ret
  } // end of method ListPanelWidget::MeasureOverride

  .method public hidebysig virtual instance void 
          ArrangeOverride() cil managed
  {
    // 代码大小       233 (0xe9)
    .maxstack  4
    .locals init (int32 V_0,
             valuetype Game.WidgetsList/Enumerator V_1,
             class Game.Widget V_2)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0006:  ldarg.0
    IL_0007:  ldfld      valuetype [Engine]Engine.Vector2 Game.ListPanelWidget::lastActualSize
    IL_000c:  call       bool [Engine]Engine.Vector2::op_Inequality(valuetype [Engine]Engine.Vector2,
                                                                    valuetype [Engine]Engine.Vector2)
    IL_0011:  brfalse.s  IL_001a

    IL_0013:  ldarg.0
    IL_0014:  ldc.i4.1
    IL_0015:  stfld      bool Game.ListPanelWidget::m_widgetsDirty
    IL_001a:  ldarg.0
    IL_001b:  ldarg.0
    IL_001c:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0021:  stfld      valuetype [Engine]Engine.Vector2 Game.ListPanelWidget::lastActualSize
    IL_0026:  ldarg.0
    IL_0027:  ldfld      int32 Game.ListPanelWidget::m_firstVisibleIndex
    IL_002c:  stloc.0
    IL_002d:  ldarg.0
    IL_002e:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0033:  callvirt   instance valuetype Game.WidgetsList/Enumerator Game.WidgetsList::GetEnumerator()
    IL_0038:  stloc.1
    .try
    {
      IL_0039:  br         IL_00cc

      IL_003e:  ldloca.s   V_1
      IL_0040:  call       instance class Game.Widget Game.WidgetsList/Enumerator::get_Current()
      IL_0045:  stloc.2
      IL_0046:  ldarg.0
      IL_0047:  callvirt   instance valuetype Game.LayoutDirection Game.ScrollPanelWidget::get_Direction()
      IL_004c:  brtrue.s   IL_008c

      IL_004e:  ldloc.0
      IL_004f:  conv.r4
      IL_0050:  ldarg.0
      IL_0051:  call       instance float32 Game.ListPanelWidget::get_ItemSize()
      IL_0056:  mul
      IL_0057:  ldarg.0
      IL_0058:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
      IL_005d:  sub
      IL_005e:  ldc.r4     0.0
      IL_0063:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_0068:  dup
      IL_0069:  ldarg.0
      IL_006a:  call       instance float32 Game.ListPanelWidget::get_ItemSize()
      IL_006f:  ldarg.0
      IL_0070:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
      IL_0075:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_007a:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_007f:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_0084:  ldloc.2
      IL_0085:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                               valuetype [Engine]Engine.Vector2,
                                                                               class Game.Widget)
      IL_008a:  br.s       IL_00c8

      IL_008c:  ldc.r4     0.0
      IL_0091:  ldloc.0
      IL_0092:  conv.r4
      IL_0093:  ldarg.0
      IL_0094:  call       instance float32 Game.ListPanelWidget::get_ItemSize()
      IL_0099:  mul
      IL_009a:  ldarg.0
      IL_009b:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
      IL_00a0:  sub
      IL_00a1:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_00a6:  dup
      IL_00a7:  ldarg.0
      IL_00a8:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
      IL_00ad:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_00b2:  ldarg.0
      IL_00b3:  call       instance float32 Game.ListPanelWidget::get_ItemSize()
      IL_00b8:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_00bd:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                                valuetype [Engine]Engine.Vector2)
      IL_00c2:  ldloc.2
      IL_00c3:  call       void Game.ContainerWidget::ArrangeChildWidgetInCell(valuetype [Engine]Engine.Vector2,
                                                                               valuetype [Engine]Engine.Vector2,
                                                                               class Game.Widget)
      IL_00c8:  ldloc.0
      IL_00c9:  ldc.i4.1
      IL_00ca:  add
      IL_00cb:  stloc.0
      IL_00cc:  ldloca.s   V_1
      IL_00ce:  call       instance bool Game.WidgetsList/Enumerator::MoveNext()
      IL_00d3:  brtrue     IL_003e

      IL_00d8:  leave.s    IL_00e8

    }  // end .try
    finally
    {
      IL_00da:  ldloca.s   V_1
      IL_00dc:  constrained. Game.WidgetsList/Enumerator
      IL_00e2:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00e7:  endfinally
    }  // end handler
    IL_00e8:  ret
  } // end of method ListPanelWidget::ArrangeOverride

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       326 (0x146)
    .maxstack  4
    .locals init (bool V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_1,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2> V_2,
             int32 V_3,
             valuetype [Engine]Engine.ReadOnlyList`1<object> V_4,
             valuetype [System.Runtime]System.Nullable`1<int32> V_5)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollSpeed()
    IL_0006:  ldc.r4     0.0
    IL_000b:  ceq
    IL_000d:  ldc.i4.0
    IL_000e:  ceq
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  call       instance void Game.ScrollPanelWidget::Update()
    IL_0017:  ldarg.0
    IL_0018:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_001d:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Tap()
    IL_0022:  stloc.1
    IL_0023:  ldloca.s   V_1
    IL_0025:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_002a:  brfalse.s  IL_0051

    IL_002c:  ldarg.0
    IL_002d:  ldarg.0
    IL_002e:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0033:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Tap()
    IL_0038:  stloc.1
    IL_0039:  ldloca.s   V_1
    IL_003b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0040:  call       instance bool Game.ScrollPanelWidget::HitTestPanel(valuetype [Engine]Engine.Vector2)
    IL_0045:  brfalse.s  IL_0051

    IL_0047:  ldarg.0
    IL_0048:  ldloc.0
    IL_0049:  ldc.i4.0
    IL_004a:  ceq
    IL_004c:  stfld      bool Game.ListPanelWidget::m_clickAllowed
    IL_0051:  ldarg.0
    IL_0052:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0057:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2> Game.WidgetInput::get_Click()
    IL_005c:  stloc.2
    IL_005d:  ldloca.s   V_2
    IL_005f:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2>::get_HasValue()
    IL_0064:  brfalse    IL_0145

    IL_0069:  ldarg.0
    IL_006a:  ldfld      bool Game.ListPanelWidget::m_clickAllowed
    IL_006f:  brfalse    IL_0145

    IL_0074:  ldarg.0
    IL_0075:  ldarg.0
    IL_0076:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_007b:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2> Game.WidgetInput::get_Click()
    IL_0080:  stloc.2
    IL_0081:  ldloca.s   V_2
    IL_0083:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2>::get_Value()
    IL_0088:  ldfld      valuetype [Engine]Engine.Vector2 Game.Segment2::Start
    IL_008d:  call       instance bool Game.ScrollPanelWidget::HitTestPanel(valuetype [Engine]Engine.Vector2)
    IL_0092:  brfalse    IL_0145

    IL_0097:  ldarg.0
    IL_0098:  ldarg.0
    IL_0099:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_009e:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2> Game.WidgetInput::get_Click()
    IL_00a3:  stloc.2
    IL_00a4:  ldloca.s   V_2
    IL_00a6:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2>::get_Value()
    IL_00ab:  ldfld      valuetype [Engine]Engine.Vector2 Game.Segment2::End
    IL_00b0:  call       instance bool Game.ScrollPanelWidget::HitTestPanel(valuetype [Engine]Engine.Vector2)
    IL_00b5:  brfalse    IL_0145

    IL_00ba:  ldarg.0
    IL_00bb:  ldarg.0
    IL_00bc:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_00c1:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2> Game.WidgetInput::get_Click()
    IL_00c6:  stloc.2
    IL_00c7:  ldloca.s   V_2
    IL_00c9:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2>::get_Value()
    IL_00ce:  ldfld      valuetype [Engine]Engine.Vector2 Game.Segment2::End
    IL_00d3:  call       instance int32 Game.ListPanelWidget::PositionToItemIndex(valuetype [Engine]Engine.Vector2)
    IL_00d8:  stloc.3
    IL_00d9:  ldarg.0
    IL_00da:  ldfld      class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object> Game.ListPanelWidget::ItemClicked
    IL_00df:  brfalse.s  IL_010f

    IL_00e1:  ldloc.3
    IL_00e2:  ldc.i4.0
    IL_00e3:  blt.s      IL_010f

    IL_00e5:  ldloc.3
    IL_00e6:  ldarg.0
    IL_00e7:  ldfld      class [System.Collections]System.Collections.Generic.List`1<object> Game.ListPanelWidget::m_items
    IL_00ec:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<object>::get_Count()
    IL_00f1:  bge.s      IL_010f

    IL_00f3:  ldarg.0
    IL_00f4:  ldfld      class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object> Game.ListPanelWidget::ItemClicked
    IL_00f9:  ldarg.0
    IL_00fa:  ldarg.0
    IL_00fb:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<object> Game.ListPanelWidget::get_Items()
    IL_0100:  stloc.s    V_4
    IL_0102:  ldloca.s   V_4
    IL_0104:  ldloc.3
    IL_0105:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<object>::get_Item(int32)
    IL_010a:  callvirt   instance void class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object>::Invoke(!0,
                                                                                                                        !1)
    IL_010f:  ldarg.0
    IL_0110:  ldloc.3
    IL_0111:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0116:  call       instance void Game.ListPanelWidget::set_SelectedIndex(valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_011b:  ldarg.0
    IL_011c:  call       instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ListPanelWidget::get_SelectedIndex()
    IL_0121:  stloc.s    V_5
    IL_0123:  ldloca.s   V_5
    IL_0125:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_012a:  brfalse.s  IL_0145

    IL_012c:  ldstr      "Audio/UI/ButtonClick"
    IL_0131:  ldc.r4     1.
    IL_0136:  ldc.r4     0.0
    IL_013b:  ldc.r4     0.0
    IL_0140:  call       void Game.AudioManager::PlaySound(string,
                                                           float32,
                                                           float32,
                                                           float32)
    IL_0145:  ret
  } // end of method ListPanelWidget::Update

  .method public hidebysig virtual instance void 
          Draw() cil managed
  {
    // 代码大小       302 (0x12e)
    .maxstack  7
    .locals init (valuetype [System.Runtime]System.Nullable`1<int32> V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             int32 V_2,
             valuetype [Engine]Engine.Vector2 V_3)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ListPanelWidget::get_SelectedIndex()
    IL_0006:  stloc.0
    IL_0007:  ldloca.s   V_0
    IL_0009:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_000e:  brfalse    IL_0127

    IL_0013:  ldarg.0
    IL_0014:  call       instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ListPanelWidget::get_SelectedIndex()
    IL_0019:  stloc.0
    IL_001a:  ldloca.s   V_0
    IL_001c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0021:  ldarg.0
    IL_0022:  ldfld      int32 Game.ListPanelWidget::m_firstVisibleIndex
    IL_0027:  blt        IL_0127

    IL_002c:  ldarg.0
    IL_002d:  call       instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ListPanelWidget::get_SelectedIndex()
    IL_0032:  stloc.0
    IL_0033:  ldloca.s   V_0
    IL_0035:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_003a:  ldarg.0
    IL_003b:  ldfld      int32 Game.ListPanelWidget::m_lastVisibleIndex
    IL_0040:  bgt        IL_0127

    IL_0045:  ldarg.0
    IL_0046:  callvirt   instance valuetype Game.LayoutDirection Game.ScrollPanelWidget::get_Direction()
    IL_004b:  brtrue.s   IL_0078

    IL_004d:  ldloca.s   V_1
    IL_004f:  ldarg.0
    IL_0050:  call       instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ListPanelWidget::get_SelectedIndex()
    IL_0055:  stloc.0
    IL_0056:  ldloca.s   V_0
    IL_0058:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_005d:  conv.r4
    IL_005e:  ldarg.0
    IL_005f:  call       instance float32 Game.ListPanelWidget::get_ItemSize()
    IL_0064:  mul
    IL_0065:  ldarg.0
    IL_0066:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_006b:  sub
    IL_006c:  ldc.r4     0.0
    IL_0071:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0076:  br.s       IL_00a1

    IL_0078:  ldloca.s   V_1
    IL_007a:  ldc.r4     0.0
    IL_007f:  ldarg.0
    IL_0080:  call       instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ListPanelWidget::get_SelectedIndex()
    IL_0085:  stloc.0
    IL_0086:  ldloca.s   V_0
    IL_0088:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_008d:  conv.r4
    IL_008e:  ldarg.0
    IL_008f:  call       instance float32 Game.ListPanelWidget::get_ItemSize()
    IL_0094:  mul
    IL_0095:  ldarg.0
    IL_0096:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_009b:  sub
    IL_009c:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00a1:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
    IL_00a6:  ldc.i4.0
    IL_00a7:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_00ac:  ldnull
    IL_00ad:  ldnull
    IL_00ae:  callvirt   instance class [Engine]Engine.Graphics.FlatBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::FlatBatch(int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState)
    IL_00b3:  dup
    IL_00b4:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColor> [Engine]Engine.Graphics.BaseFlatBatch::TriangleVertices
    IL_00b9:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColor>::get_Count()
    IL_00be:  stloc.2
    IL_00bf:  ldarg.0
    IL_00c0:  callvirt   instance valuetype Game.LayoutDirection Game.ScrollPanelWidget::get_Direction()
    IL_00c5:  brfalse.s  IL_00df

    IL_00c7:  ldarg.0
    IL_00c8:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_00cd:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00d2:  ldarg.0
    IL_00d3:  call       instance float32 Game.ListPanelWidget::get_ItemSize()
    IL_00d8:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00dd:  br.s       IL_00f5

    IL_00df:  ldarg.0
    IL_00e0:  call       instance float32 Game.ListPanelWidget::get_ItemSize()
    IL_00e5:  ldarg.0
    IL_00e6:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_00eb:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00f0:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00f5:  stloc.3
    IL_00f6:  dup
    IL_00f7:  ldloc.1
    IL_00f8:  ldloc.1
    IL_00f9:  ldloc.3
    IL_00fa:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_00ff:  ldc.r4     0.0
    IL_0104:  ldarg.0
    IL_0105:  call       instance valuetype [Engine]Engine.Color Game.ListPanelWidget::get_SelectionColor()
    IL_010a:  ldarg.0
    IL_010b:  call       instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_0110:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0115:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_011a:  ldarg.0
    IL_011b:  call       instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_0120:  ldloc.2
    IL_0121:  ldc.i4.m1
    IL_0122:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::TransformTriangles(valuetype [Engine]Engine.Matrix,
                                                                                               int32,
                                                                                               int32)
    IL_0127:  ldarg.0
    IL_0128:  call       instance void Game.ScrollPanelWidget::Draw()
    IL_012d:  ret
  } // end of method ListPanelWidget::Draw

  .method private hidebysig instance int32 
          PositionToItemIndex(valuetype [Engine]Engine.Vector2 position) cil managed
  {
    // 代码大小       60 (0x3c)
    .maxstack  2
    .locals init (valuetype [Engine]Engine.Vector2 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::ScreenToWidget(valuetype [Engine]Engine.Vector2)
    IL_0007:  stloc.0
    IL_0008:  ldarg.0
    IL_0009:  callvirt   instance valuetype Game.LayoutDirection Game.ScrollPanelWidget::get_Direction()
    IL_000e:  brtrue.s   IL_0026

    IL_0010:  ldloc.0
    IL_0011:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0016:  ldarg.0
    IL_0017:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_001c:  add
    IL_001d:  ldarg.0
    IL_001e:  call       instance float32 Game.ListPanelWidget::get_ItemSize()
    IL_0023:  div
    IL_0024:  conv.i4
    IL_0025:  ret

    IL_0026:  ldloc.0
    IL_0027:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_002c:  ldarg.0
    IL_002d:  callvirt   instance float32 Game.ScrollPanelWidget::get_ScrollPosition()
    IL_0032:  add
    IL_0033:  ldarg.0
    IL_0034:  call       instance float32 Game.ListPanelWidget::get_ItemSize()
    IL_0039:  div
    IL_003a:  conv.i4
    IL_003b:  ret
  } // end of method ListPanelWidget::PositionToItemIndex

  .method private hidebysig instance void 
          CreateListWidgets(float32 size) cil managed
  {
    // 代码大小       209 (0xd1)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             object V_3,
             class Game.Widget V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0006:  callvirt   instance void Game.WidgetsList::Clear()
    IL_000b:  ldarg.0
    IL_000c:  ldfld      class [System.Collections]System.Collections.Generic.List`1<object> Game.ListPanelWidget::m_items
    IL_0011:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<object>::get_Count()
    IL_0016:  ldc.i4.0
    IL_0017:  ble        IL_00d0

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
    IL_006c:  ldarg.0
    IL_006d:  ldfld      int32 Game.ListPanelWidget::m_firstVisibleIndex
    IL_0072:  stloc.2
    IL_0073:  br.s       IL_00c7

    IL_0075:  ldarg.0
    IL_0076:  ldfld      class [System.Collections]System.Collections.Generic.List`1<object> Game.ListPanelWidget::m_items
    IL_007b:  ldloc.2
    IL_007c:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<object>::get_Item(int32)
    IL_0081:  stloc.3
    IL_0082:  ldarg.0
    IL_0083:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.Widget> Game.ListPanelWidget::m_widgetsByIndex
    IL_0088:  ldloc.2
    IL_0089:  ldloca.s   V_4
    IL_008b:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.Widget>::TryGetValue(!0,
                                                                                                                                               !1&)
    IL_0090:  brtrue.s   IL_00b6

    IL_0092:  ldarg.0
    IL_0093:  call       instance class [System.Runtime]System.Func`2<object,class Game.Widget> Game.ListPanelWidget::get_ItemWidgetFactory()
    IL_0098:  ldloc.3
    IL_0099:  callvirt   instance !1 class [System.Runtime]System.Func`2<object,class Game.Widget>::Invoke(!0)
    IL_009e:  stloc.s    V_4
    IL_00a0:  ldloc.s    V_4
    IL_00a2:  ldloc.3
    IL_00a3:  callvirt   instance void Game.Widget::set_Tag(object)
    IL_00a8:  ldarg.0
    IL_00a9:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.Widget> Game.ListPanelWidget::m_widgetsByIndex
    IL_00ae:  ldloc.2
    IL_00af:  ldloc.s    V_4
    IL_00b1:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class Game.Widget>::Add(!0,
                                                                                                                                       !1)
    IL_00b6:  ldarg.0
    IL_00b7:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00bc:  ldloc.s    V_4
    IL_00be:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_00c3:  ldloc.2
    IL_00c4:  ldc.i4.1
    IL_00c5:  add
    IL_00c6:  stloc.2
    IL_00c7:  ldloc.2
    IL_00c8:  ldarg.0
    IL_00c9:  ldfld      int32 Game.ListPanelWidget::m_lastVisibleIndex
    IL_00ce:  ble.s      IL_0075

    IL_00d0:  ret
  } // end of method ListPanelWidget::CreateListWidgets

  .event class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object> ItemClicked
  {
    .addon instance void Game.ListPanelWidget::add_ItemClicked(class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object>)
    .removeon instance void Game.ListPanelWidget::remove_ItemClicked(class [System.Runtime]System.Action`2<class Game.ListPanelWidget,object>)
  } // end of event ListPanelWidget::ItemClicked
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