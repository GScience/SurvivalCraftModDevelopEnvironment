.class public auto ansi beforefieldinit Game.CheckboxWidget
       extends Game.CanvasWidget
{
  .field private class Game.CanvasWidget m_canvasWidget
  .field private class Game.RectangleWidget m_rectangleWidget
  .field private class Game.RectangleWidget m_tickWidget
  .field private class Game.LabelWidget m_labelWidget
  .field private class Game.ClickableWidget m_clickableWidget
  .field private bool '<IsChecked>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<IsAutoCheckingEnabled>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Color '<Color>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       149 (0x95)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.CanvasWidget::.ctor()
    IL_0006:  ldstr      "Widgets/CheckboxContents"
    IL_000b:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  ldarg.0
    IL_0013:  ldloc.0
    IL_0014:  call       void Game.WidgetsManager::LoadWidgetChildren(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0020:  ldstr      "Checkbox.Canvas"
    IL_0025:  ldc.i4.1
    IL_0026:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.CanvasWidget>(string,
                                                                                           bool)
    IL_002b:  stfld      class Game.CanvasWidget Game.CheckboxWidget::m_canvasWidget
    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0037:  ldstr      "Checkbox.Rectangle"
    IL_003c:  ldc.i4.1
    IL_003d:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.RectangleWidget>(string,
                                                                                              bool)
    IL_0042:  stfld      class Game.RectangleWidget Game.CheckboxWidget::m_rectangleWidget
    IL_0047:  ldarg.0
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_004e:  ldstr      "Checkbox.Tick"
    IL_0053:  ldc.i4.1
    IL_0054:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.RectangleWidget>(string,
                                                                                              bool)
    IL_0059:  stfld      class Game.RectangleWidget Game.CheckboxWidget::m_tickWidget
    IL_005e:  ldarg.0
    IL_005f:  ldarg.0
    IL_0060:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0065:  ldstr      "Checkbox.Label"
    IL_006a:  ldc.i4.1
    IL_006b:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_0070:  stfld      class Game.LabelWidget Game.CheckboxWidget::m_labelWidget
    IL_0075:  ldarg.0
    IL_0076:  ldarg.0
    IL_0077:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_007c:  ldstr      "Checkbox.Clickable"
    IL_0081:  ldc.i4.1
    IL_0082:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ClickableWidget>(string,
                                                                                              bool)
    IL_0087:  stfld      class Game.ClickableWidget Game.CheckboxWidget::m_clickableWidget
    IL_008c:  ldarg.0
    IL_008d:  ldarg.0
    IL_008e:  ldloc.0
    IL_008f:  call       void Game.WidgetsManager::LoadWidgetProperties(class Game.Widget,
                                                                        object,
                                                                        class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0094:  ret
  } // end of method CheckboxWidget::.ctor

  .method public hidebysig specialname instance bool 
          get_IsPressed() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ClickableWidget Game.CheckboxWidget::m_clickableWidget
    IL_0006:  callvirt   instance bool Game.ClickableWidget::get_IsPressed()
    IL_000b:  ret
  } // end of method CheckboxWidget::get_IsPressed

  .method public hidebysig specialname instance bool 
          get_IsClicked() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ClickableWidget Game.CheckboxWidget::m_clickableWidget
    IL_0006:  callvirt   instance bool Game.ClickableWidget::get_IsClicked()
    IL_000b:  ret
  } // end of method CheckboxWidget::get_IsClicked

  .method public hidebysig specialname instance bool 
          get_IsTapped() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ClickableWidget Game.CheckboxWidget::m_clickableWidget
    IL_0006:  callvirt   instance bool Game.ClickableWidget::get_IsTapped()
    IL_000b:  ret
  } // end of method CheckboxWidget::get_IsTapped

  .method public hidebysig specialname instance bool 
          get_IsChecked() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.CheckboxWidget::'<IsChecked>k__BackingField'
    IL_0006:  ret
  } // end of method CheckboxWidget::get_IsChecked

  .method public hidebysig specialname instance void 
          set_IsChecked(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.CheckboxWidget::'<IsChecked>k__BackingField'
    IL_0007:  ret
  } // end of method CheckboxWidget::set_IsChecked

  .method public hidebysig specialname instance bool 
          get_IsAutoCheckingEnabled() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.CheckboxWidget::'<IsAutoCheckingEnabled>k__BackingField'
    IL_0006:  ret
  } // end of method CheckboxWidget::get_IsAutoCheckingEnabled

  .method public hidebysig specialname instance void 
          set_IsAutoCheckingEnabled(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.CheckboxWidget::'<IsAutoCheckingEnabled>k__BackingField'
    IL_0007:  ret
  } // end of method CheckboxWidget::set_IsAutoCheckingEnabled

  .method public hidebysig specialname instance string 
          get_Text() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.CheckboxWidget::m_labelWidget
    IL_0006:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_000b:  ret
  } // end of method CheckboxWidget::get_Text

  .method public hidebysig specialname instance void 
          set_Text(string 'value') cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.CheckboxWidget::m_labelWidget
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_000c:  ret
  } // end of method CheckboxWidget::set_Text

  .method public hidebysig specialname instance class [Engine]Engine.Media.BitmapFont 
          get_Font() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.CheckboxWidget::m_labelWidget
    IL_0006:  callvirt   instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_000b:  ret
  } // end of method CheckboxWidget::get_Font

  .method public hidebysig specialname instance void 
          set_Font(class [Engine]Engine.Media.BitmapFont 'value') cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.CheckboxWidget::m_labelWidget
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
    IL_000c:  ret
  } // end of method CheckboxWidget::set_Font

  .method public hidebysig specialname instance class Game.Subtexture 
          get_TickSubtexture() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.RectangleWidget Game.CheckboxWidget::m_tickWidget
    IL_0006:  callvirt   instance class Game.Subtexture Game.RectangleWidget::get_Subtexture()
    IL_000b:  ret
  } // end of method CheckboxWidget::get_TickSubtexture

  .method public hidebysig specialname instance void 
          set_TickSubtexture(class Game.Subtexture 'value') cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.RectangleWidget Game.CheckboxWidget::m_tickWidget
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void Game.RectangleWidget::set_Subtexture(class Game.Subtexture)
    IL_000c:  ret
  } // end of method CheckboxWidget::set_TickSubtexture

  .method public hidebysig specialname instance valuetype [Engine]Engine.Color 
          get_Color() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Color Game.CheckboxWidget::'<Color>k__BackingField'
    IL_0006:  ret
  } // end of method CheckboxWidget::get_Color

  .method public hidebysig specialname instance void 
          set_Color(valuetype [Engine]Engine.Color 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Color Game.CheckboxWidget::'<Color>k__BackingField'
    IL_0007:  ret
  } // end of method CheckboxWidget::set_Color

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector2 
          get_CheckboxSize() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.CanvasWidget Game.CheckboxWidget::m_canvasWidget
    IL_0006:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.CanvasWidget::get_Size()
    IL_000b:  ret
  } // end of method CheckboxWidget::get_CheckboxSize

  .method public hidebysig specialname instance void 
          set_CheckboxSize(valuetype [Engine]Engine.Vector2 'value') cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.CanvasWidget Game.CheckboxWidget::m_canvasWidget
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void Game.CanvasWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_000c:  ret
  } // end of method CheckboxWidget::set_CheckboxSize

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance bool Game.CheckboxWidget::get_IsClicked()
    IL_0006:  brfalse.s  IL_001f

    IL_0008:  ldarg.0
    IL_0009:  call       instance bool Game.CheckboxWidget::get_IsAutoCheckingEnabled()
    IL_000e:  brfalse.s  IL_001f

    IL_0010:  ldarg.0
    IL_0011:  ldarg.0
    IL_0012:  call       instance bool Game.CheckboxWidget::get_IsChecked()
    IL_0017:  ldc.i4.0
    IL_0018:  ceq
    IL_001a:  call       instance void Game.CheckboxWidget::set_IsChecked(bool)
    IL_001f:  ret
  } // end of method CheckboxWidget::Update

  .method public hidebysig virtual instance void 
          Measure(valuetype [Engine]Engine.Vector2 availableSize) cil managed
  {
    // 代码大小       202 (0xca)
    .maxstack  5
    .locals init (bool V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       bool Game.WidgetsManager::IsWidgetEnabled(class Game.Widget)
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class Game.LabelWidget Game.CheckboxWidget::m_labelWidget
    IL_000d:  ldloc.0
    IL_000e:  brtrue.s   IL_001d

    IL_0010:  ldc.i4.s   112
    IL_0012:  ldc.i4.s   112
    IL_0014:  ldc.i4.s   112
    IL_0016:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_001b:  br.s       IL_0023

    IL_001d:  ldarg.0
    IL_001e:  call       instance valuetype [Engine]Engine.Color Game.CheckboxWidget::get_Color()
    IL_0023:  callvirt   instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_0028:  ldarg.0
    IL_0029:  ldfld      class Game.RectangleWidget Game.CheckboxWidget::m_rectangleWidget
    IL_002e:  ldc.i4.0
    IL_002f:  ldc.i4.0
    IL_0030:  ldc.i4.0
    IL_0031:  ldc.i4     0x80
    IL_0036:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32,
                                                                   int32)
    IL_003b:  callvirt   instance void Game.RectangleWidget::set_FillColor(valuetype [Engine]Engine.Color)
    IL_0040:  ldarg.0
    IL_0041:  ldfld      class Game.RectangleWidget Game.CheckboxWidget::m_rectangleWidget
    IL_0046:  ldloc.0
    IL_0047:  brtrue.s   IL_0056

    IL_0049:  ldc.i4.s   112
    IL_004b:  ldc.i4.s   112
    IL_004d:  ldc.i4.s   112
    IL_004f:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0054:  br.s       IL_006a

    IL_0056:  ldc.i4     0x80
    IL_005b:  ldc.i4     0x80
    IL_0060:  ldc.i4     0x80
    IL_0065:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_006a:  callvirt   instance void Game.RectangleWidget::set_OutlineColor(valuetype [Engine]Engine.Color)
    IL_006f:  ldarg.0
    IL_0070:  ldfld      class Game.RectangleWidget Game.CheckboxWidget::m_tickWidget
    IL_0075:  ldarg.0
    IL_0076:  call       instance bool Game.CheckboxWidget::get_IsChecked()
    IL_007b:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0080:  ldarg.0
    IL_0081:  ldfld      class Game.RectangleWidget Game.CheckboxWidget::m_tickWidget
    IL_0086:  ldloc.0
    IL_0087:  brtrue.s   IL_0096

    IL_0089:  ldc.i4.s   112
    IL_008b:  ldc.i4.s   112
    IL_008d:  ldc.i4.s   112
    IL_008f:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0094:  br.s       IL_009c

    IL_0096:  ldarg.0
    IL_0097:  call       instance valuetype [Engine]Engine.Color Game.CheckboxWidget::get_Color()
    IL_009c:  callvirt   instance void Game.RectangleWidget::set_FillColor(valuetype [Engine]Engine.Color)
    IL_00a1:  ldarg.0
    IL_00a2:  ldfld      class Game.RectangleWidget Game.CheckboxWidget::m_tickWidget
    IL_00a7:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
    IL_00ac:  callvirt   instance void Game.RectangleWidget::set_OutlineColor(valuetype [Engine]Engine.Color)
    IL_00b1:  ldarg.0
    IL_00b2:  ldfld      class Game.RectangleWidget Game.CheckboxWidget::m_tickWidget
    IL_00b7:  ldarg.0
    IL_00b8:  call       instance class Game.Subtexture Game.CheckboxWidget::get_TickSubtexture()
    IL_00bd:  callvirt   instance void Game.RectangleWidget::set_Subtexture(class Game.Subtexture)
    IL_00c2:  ldarg.0
    IL_00c3:  ldarg.1
    IL_00c4:  call       instance void Game.CanvasWidget::Measure(valuetype [Engine]Engine.Vector2)
    IL_00c9:  ret
  } // end of method CheckboxWidget::Measure

  .property instance bool IsPressed()
  {
    .get instance bool Game.CheckboxWidget::get_IsPressed()
  } // end of property CheckboxWidget::IsPressed
  .property instance bool IsClicked()
  {
    .get instance bool Game.CheckboxWidget::get_IsClicked()
  } // end of property CheckboxWidget::IsClicked
  .property instance bool IsTapped()
  {
    .get instance bool Game.CheckboxWidget::get_IsTapped()
  } // end of property CheckboxWidget::IsTapped
  .property instance bool IsChecked()
  {
    .get instance bool Game.CheckboxWidget::get_IsChecked()
    .set instance void Game.CheckboxWidget::set_IsChecked(bool)
  } // end of property CheckboxWidget::IsChecked
  .property instance bool IsAutoCheckingEnabled()
  {
    .get instance bool Game.CheckboxWidget::get_IsAutoCheckingEnabled()
    .set instance void Game.CheckboxWidget::set_IsAutoCheckingEnabled(bool)
  } // end of property CheckboxWidget::IsAutoCheckingEnabled
  .property instance string Text()
  {
    .get instance string Game.CheckboxWidget::get_Text()
    .set instance void Game.CheckboxWidget::set_Text(string)
  } // end of property CheckboxWidget::Text
  .property instance class [Engine]Engine.Media.BitmapFont
          Font()
  {
    .get instance class [Engine]Engine.Media.BitmapFont Game.CheckboxWidget::get_Font()
    .set instance void Game.CheckboxWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
  } // end of property CheckboxWidget::Font
  .property instance class Game.Subtexture
          TickSubtexture()
  {
    .get instance class Game.Subtexture Game.CheckboxWidget::get_TickSubtexture()
    .set instance void Game.CheckboxWidget::set_TickSubtexture(class Game.Subtexture)
  } // end of property CheckboxWidget::TickSubtexture
  .property instance valuetype [Engine]Engine.Color
          Color()
  {
    .get instance valuetype [Engine]Engine.Color Game.CheckboxWidget::get_Color()
    .set instance void Game.CheckboxWidget::set_Color(valuetype [Engine]Engine.Color)
  } // end of property CheckboxWidget::Color
  .property instance valuetype [Engine]Engine.Vector2
          CheckboxSize()
  {
    .get instance valuetype [Engine]Engine.Vector2 Game.CheckboxWidget::get_CheckboxSize()
    .set instance void Game.CheckboxWidget::set_CheckboxSize(valuetype [Engine]Engine.Vector2)
  } // end of property CheckboxWidget::CheckboxSize
} // end of class Game.CheckboxWidget