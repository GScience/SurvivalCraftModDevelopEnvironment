.class public auto ansi beforefieldinit Game.BevelledButtonWidget
       extends Game.ButtonWidget
{
  .field private class Game.BevelledRectangleWidget m_rectangleWidget
  .field private class Game.RectangleWidget m_imageWidget
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
    // 代码大小       137 (0x89)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.ButtonWidget::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_000c:  callvirt   instance void Game.ButtonWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_0011:  ldstr      "Widgets/BevelledButtonContents"
    IL_0016:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_001b:  stloc.0
    IL_001c:  ldarg.0
    IL_001d:  ldarg.0
    IL_001e:  ldloc.0
    IL_001f:  call       void Game.WidgetsManager::LoadWidgetChildren(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_002b:  ldstr      "BevelledButton.Rectangle"
    IL_0030:  ldc.i4.1
    IL_0031:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.BevelledRectangleWidget>(string,
                                                                                                      bool)
    IL_0036:  stfld      class Game.BevelledRectangleWidget Game.BevelledButtonWidget::m_rectangleWidget
    IL_003b:  ldarg.0
    IL_003c:  ldarg.0
    IL_003d:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0042:  ldstr      "BevelledButton.Image"
    IL_0047:  ldc.i4.1
    IL_0048:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.RectangleWidget>(string,
                                                                                              bool)
    IL_004d:  stfld      class Game.RectangleWidget Game.BevelledButtonWidget::m_imageWidget
    IL_0052:  ldarg.0
    IL_0053:  ldarg.0
    IL_0054:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0059:  ldstr      "BevelledButton.Label"
    IL_005e:  ldc.i4.1
    IL_005f:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_0064:  stfld      class Game.LabelWidget Game.BevelledButtonWidget::m_labelWidget
    IL_0069:  ldarg.0
    IL_006a:  ldarg.0
    IL_006b:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0070:  ldstr      "BevelledButton.Clickable"
    IL_0075:  ldc.i4.1
    IL_0076:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ClickableWidget>(string,
                                                                                              bool)
    IL_007b:  stfld      class Game.ClickableWidget Game.BevelledButtonWidget::m_clickableWidget
    IL_0080:  ldarg.0
    IL_0081:  ldarg.0
    IL_0082:  ldloc.0
    IL_0083:  call       void Game.WidgetsManager::LoadWidgetProperties(class Game.Widget,
                                                                        object,
                                                                        class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0088:  ret
  } // end of method BevelledButtonWidget::.ctor

  .method public hidebysig specialname virtual 
          instance bool  get_IsPressed() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ClickableWidget Game.BevelledButtonWidget::m_clickableWidget
    IL_0006:  callvirt   instance bool Game.ClickableWidget::get_IsPressed()
    IL_000b:  ret
  } // end of method BevelledButtonWidget::get_IsPressed

  .method public hidebysig specialname virtual 
          instance bool  get_IsClicked() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ClickableWidget Game.BevelledButtonWidget::m_clickableWidget
    IL_0006:  callvirt   instance bool Game.ClickableWidget::get_IsClicked()
    IL_000b:  ret
  } // end of method BevelledButtonWidget::get_IsClicked

  .method public hidebysig specialname virtual 
          instance bool  get_IsTapped() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ClickableWidget Game.BevelledButtonWidget::m_clickableWidget
    IL_0006:  callvirt   instance bool Game.ClickableWidget::get_IsTapped()
    IL_000b:  ret
  } // end of method BevelledButtonWidget::get_IsTapped

  .method public hidebysig specialname virtual 
          instance bool  get_IsChecked() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.BevelledButtonWidget::'<IsChecked>k__BackingField'
    IL_0006:  ret
  } // end of method BevelledButtonWidget::get_IsChecked

  .method public hidebysig specialname virtual 
          instance void  set_IsChecked(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.BevelledButtonWidget::'<IsChecked>k__BackingField'
    IL_0007:  ret
  } // end of method BevelledButtonWidget::set_IsChecked

  .method public hidebysig specialname virtual 
          instance bool  get_IsAutoCheckingEnabled() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.BevelledButtonWidget::'<IsAutoCheckingEnabled>k__BackingField'
    IL_0006:  ret
  } // end of method BevelledButtonWidget::get_IsAutoCheckingEnabled

  .method public hidebysig specialname virtual 
          instance void  set_IsAutoCheckingEnabled(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.BevelledButtonWidget::'<IsAutoCheckingEnabled>k__BackingField'
    IL_0007:  ret
  } // end of method BevelledButtonWidget::set_IsAutoCheckingEnabled

  .method public hidebysig specialname virtual 
          instance string  get_Text() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.BevelledButtonWidget::m_labelWidget
    IL_0006:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_000b:  ret
  } // end of method BevelledButtonWidget::get_Text

  .method public hidebysig specialname virtual 
          instance void  set_Text(string 'value') cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.BevelledButtonWidget::m_labelWidget
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_000c:  ret
  } // end of method BevelledButtonWidget::set_Text

  .method public hidebysig specialname virtual 
          instance class [Engine]Engine.Media.BitmapFont 
          get_Font() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.BevelledButtonWidget::m_labelWidget
    IL_0006:  callvirt   instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_000b:  ret
  } // end of method BevelledButtonWidget::get_Font

  .method public hidebysig specialname virtual 
          instance void  set_Font(class [Engine]Engine.Media.BitmapFont 'value') cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.BevelledButtonWidget::m_labelWidget
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
    IL_000c:  ret
  } // end of method BevelledButtonWidget::set_Font

  .method public hidebysig specialname instance class Game.Subtexture 
          get_Subtexture() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.RectangleWidget Game.BevelledButtonWidget::m_imageWidget
    IL_0006:  callvirt   instance class Game.Subtexture Game.RectangleWidget::get_Subtexture()
    IL_000b:  ret
  } // end of method BevelledButtonWidget::get_Subtexture

  .method public hidebysig specialname instance void 
          set_Subtexture(class Game.Subtexture 'value') cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.RectangleWidget Game.BevelledButtonWidget::m_imageWidget
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void Game.RectangleWidget::set_Subtexture(class Game.Subtexture)
    IL_000c:  ret
  } // end of method BevelledButtonWidget::set_Subtexture

  .method public hidebysig specialname virtual 
          instance valuetype [Engine]Engine.Color 
          get_Color() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Color Game.BevelledButtonWidget::'<Color>k__BackingField'
    IL_0006:  ret
  } // end of method BevelledButtonWidget::get_Color

  .method public hidebysig specialname virtual 
          instance void  set_Color(valuetype [Engine]Engine.Color 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Color Game.BevelledButtonWidget::'<Color>k__BackingField'
    IL_0007:  ret
  } // end of method BevelledButtonWidget::set_Color

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.ButtonWidget::get_IsTapped()
    IL_0006:  brfalse.s  IL_001f

    IL_0008:  ldarg.0
    IL_0009:  callvirt   instance bool Game.ButtonWidget::get_IsAutoCheckingEnabled()
    IL_000e:  brfalse.s  IL_001f

    IL_0010:  ldarg.0
    IL_0011:  ldarg.0
    IL_0012:  callvirt   instance bool Game.ButtonWidget::get_IsChecked()
    IL_0017:  ldc.i4.0
    IL_0018:  ceq
    IL_001a:  callvirt   instance void Game.ButtonWidget::set_IsChecked(bool)
    IL_001f:  ret
  } // end of method BevelledButtonWidget::Update

  .method public hidebysig virtual instance void 
          Measure(valuetype [Engine]Engine.Vector2 availableSize) cil managed
  {
    // 代码大小       136 (0x88)
    .maxstack  4
    .locals init (bool V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       bool Game.WidgetsManager::IsWidgetEnabled(class Game.Widget)
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class Game.LabelWidget Game.BevelledButtonWidget::m_labelWidget
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
    IL_001e:  callvirt   instance valuetype [Engine]Engine.Color Game.ButtonWidget::get_Color()
    IL_0023:  callvirt   instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_0028:  ldarg.0
    IL_0029:  ldfld      class Game.RectangleWidget Game.BevelledButtonWidget::m_imageWidget
    IL_002e:  ldloc.0
    IL_002f:  brtrue.s   IL_003e

    IL_0031:  ldc.i4.s   112
    IL_0033:  ldc.i4.s   112
    IL_0035:  ldc.i4.s   112
    IL_0037:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_003c:  br.s       IL_0044

    IL_003e:  ldarg.0
    IL_003f:  callvirt   instance valuetype [Engine]Engine.Color Game.ButtonWidget::get_Color()
    IL_0044:  callvirt   instance void Game.RectangleWidget::set_FillColor(valuetype [Engine]Engine.Color)
    IL_0049:  ldarg.0
    IL_004a:  ldfld      class Game.ClickableWidget Game.BevelledButtonWidget::m_clickableWidget
    IL_004f:  callvirt   instance bool Game.ClickableWidget::get_IsPressed()
    IL_0054:  brtrue.s   IL_005e

    IL_0056:  ldarg.0
    IL_0057:  callvirt   instance bool Game.ButtonWidget::get_IsChecked()
    IL_005c:  brfalse.s  IL_0070

    IL_005e:  ldarg.0
    IL_005f:  ldfld      class Game.BevelledRectangleWidget Game.BevelledButtonWidget::m_rectangleWidget
    IL_0064:  ldc.r4     -1.
    IL_0069:  callvirt   instance void Game.BevelledRectangleWidget::set_BevelSize(float32)
    IL_006e:  br.s       IL_0080

    IL_0070:  ldarg.0
    IL_0071:  ldfld      class Game.BevelledRectangleWidget Game.BevelledButtonWidget::m_rectangleWidget
    IL_0076:  ldc.r4     2.
    IL_007b:  callvirt   instance void Game.BevelledRectangleWidget::set_BevelSize(float32)
    IL_0080:  ldarg.0
    IL_0081:  ldarg.1
    IL_0082:  call       instance void Game.CanvasWidget::Measure(valuetype [Engine]Engine.Vector2)
    IL_0087:  ret
  } // end of method BevelledButtonWidget::Measure

  .property instance bool IsPressed()
  {
    .get instance bool Game.BevelledButtonWidget::get_IsPressed()
  } // end of property BevelledButtonWidget::IsPressed
  .property instance bool IsClicked()
  {
    .get instance bool Game.BevelledButtonWidget::get_IsClicked()
  } // end of property BevelledButtonWidget::IsClicked
  .property instance bool IsTapped()
  {
    .get instance bool Game.BevelledButtonWidget::get_IsTapped()
  } // end of property BevelledButtonWidget::IsTapped
  .property instance bool IsChecked()
  {
    .get instance bool Game.BevelledButtonWidget::get_IsChecked()
    .set instance void Game.BevelledButtonWidget::set_IsChecked(bool)
  } // end of property BevelledButtonWidget::IsChecked
  .property instance bool IsAutoCheckingEnabled()
  {
    .get instance bool Game.BevelledButtonWidget::get_IsAutoCheckingEnabled()
    .set instance void Game.BevelledButtonWidget::set_IsAutoCheckingEnabled(bool)
  } // end of property BevelledButtonWidget::IsAutoCheckingEnabled
  .property instance string Text()
  {
    .get instance string Game.BevelledButtonWidget::get_Text()
    .set instance void Game.BevelledButtonWidget::set_Text(string)
  } // end of property BevelledButtonWidget::Text
  .property instance class [Engine]Engine.Media.BitmapFont
          Font()
  {
    .get instance class [Engine]Engine.Media.BitmapFont Game.BevelledButtonWidget::get_Font()
    .set instance void Game.BevelledButtonWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
  } // end of property BevelledButtonWidget::Font
  .property instance class Game.Subtexture
          Subtexture()
  {
    .get instance class Game.Subtexture Game.BevelledButtonWidget::get_Subtexture()
    .set instance void Game.BevelledButtonWidget::set_Subtexture(class Game.Subtexture)
  } // end of property BevelledButtonWidget::Subtexture
  .property instance valuetype [Engine]Engine.Color
          Color()
  {
    .get instance valuetype [Engine]Engine.Color Game.BevelledButtonWidget::get_Color()
    .set instance void Game.BevelledButtonWidget::set_Color(valuetype [Engine]Engine.Color)
  } // end of property BevelledButtonWidget::Color
} // end of class Game.BevelledButtonWidget