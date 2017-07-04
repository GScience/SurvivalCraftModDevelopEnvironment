.class public auto ansi beforefieldinit Game.BevelledButtonWidget
       extends Game.ButtonWidget
{
  .field private class Game.BevelledRectangleWidget m_rectangleWidget
  .field private class Game.RectangleWidget m_imageWidget
  .field private class Game.LabelWidget m_labelWidget
  .field private class Game.ClickableWidget m_clickableWidget
  .field private valuetype [Engine]Engine.Color '<Color>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<BevelSize>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       148 (0x94)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.ButtonWidget::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_000c:  callvirt   instance void Game.ButtonWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_0011:  ldarg.0
    IL_0012:  ldc.r4     2.
    IL_0017:  call       instance void Game.BevelledButtonWidget::set_BevelSize(float32)
    IL_001c:  ldstr      "Widgets/BevelledButtonContents"
    IL_0021:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0026:  stloc.0
    IL_0027:  ldarg.0
    IL_0028:  ldarg.0
    IL_0029:  ldloc.0
    IL_002a:  call       void Game.WidgetsManager::LoadWidgetChildren(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_002f:  ldarg.0
    IL_0030:  ldarg.0
    IL_0031:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0036:  ldstr      "BevelledButton.Rectangle"
    IL_003b:  ldc.i4.1
    IL_003c:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.BevelledRectangleWidget>(string,
                                                                                                 bool)
    IL_0041:  stfld      class Game.BevelledRectangleWidget Game.BevelledButtonWidget::m_rectangleWidget
    IL_0046:  ldarg.0
    IL_0047:  ldarg.0
    IL_0048:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_004d:  ldstr      "BevelledButton.Image"
    IL_0052:  ldc.i4.1
    IL_0053:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.RectangleWidget>(string,
                                                                                         bool)
    IL_0058:  stfld      class Game.RectangleWidget Game.BevelledButtonWidget::m_imageWidget
    IL_005d:  ldarg.0
    IL_005e:  ldarg.0
    IL_005f:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0064:  ldstr      "BevelledButton.Label"
    IL_0069:  ldc.i4.1
    IL_006a:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_006f:  stfld      class Game.LabelWidget Game.BevelledButtonWidget::m_labelWidget
    IL_0074:  ldarg.0
    IL_0075:  ldarg.0
    IL_0076:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_007b:  ldstr      "BevelledButton.Clickable"
    IL_0080:  ldc.i4.1
    IL_0081:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ClickableWidget>(string,
                                                                                         bool)
    IL_0086:  stfld      class Game.ClickableWidget Game.BevelledButtonWidget::m_clickableWidget
    IL_008b:  ldarg.0
    IL_008c:  ldarg.0
    IL_008d:  ldloc.0
    IL_008e:  call       void Game.WidgetsManager::LoadWidgetProperties(class Game.Widget,
                                                                        object,
                                                                        class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0093:  ret
  } // end of method BevelledButtonWidget::.ctor

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
          instance bool  get_IsChecked() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ClickableWidget Game.BevelledButtonWidget::m_clickableWidget
    IL_0006:  callvirt   instance bool Game.ClickableWidget::get_IsChecked()
    IL_000b:  ret
  } // end of method BevelledButtonWidget::get_IsChecked

  .method public hidebysig specialname virtual 
          instance void  set_IsChecked(bool 'value') cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ClickableWidget Game.BevelledButtonWidget::m_clickableWidget
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void Game.ClickableWidget::set_IsChecked(bool)
    IL_000c:  ret
  } // end of method BevelledButtonWidget::set_IsChecked

  .method public hidebysig specialname virtual 
          instance bool  get_IsAutoCheckingEnabled() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ClickableWidget Game.BevelledButtonWidget::m_clickableWidget
    IL_0006:  callvirt   instance bool Game.ClickableWidget::get_IsAutoCheckingEnabled()
    IL_000b:  ret
  } // end of method BevelledButtonWidget::get_IsAutoCheckingEnabled

  .method public hidebysig specialname virtual 
          instance void  set_IsAutoCheckingEnabled(bool 'value') cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ClickableWidget Game.BevelledButtonWidget::m_clickableWidget
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void Game.ClickableWidget::set_IsAutoCheckingEnabled(bool)
    IL_000c:  ret
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

  .method public hidebysig specialname instance valuetype [Engine]Engine.Color 
          get_BevelColor() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.BevelledRectangleWidget Game.BevelledButtonWidget::m_rectangleWidget
    IL_0006:  callvirt   instance valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::get_BevelColor()
    IL_000b:  ret
  } // end of method BevelledButtonWidget::get_BevelColor

  .method public hidebysig specialname instance void 
          set_BevelColor(valuetype [Engine]Engine.Color 'value') cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.BevelledRectangleWidget Game.BevelledButtonWidget::m_rectangleWidget
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void Game.BevelledRectangleWidget::set_BevelColor(valuetype [Engine]Engine.Color)
    IL_000c:  ret
  } // end of method BevelledButtonWidget::set_BevelColor

  .method public hidebysig specialname instance valuetype [Engine]Engine.Color 
          get_CenterColor() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.BevelledRectangleWidget Game.BevelledButtonWidget::m_rectangleWidget
    IL_0006:  callvirt   instance valuetype [Engine]Engine.Color Game.BevelledRectangleWidget::get_CenterColor()
    IL_000b:  ret
  } // end of method BevelledButtonWidget::get_CenterColor

  .method public hidebysig specialname instance void 
          set_CenterColor(valuetype [Engine]Engine.Color 'value') cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.BevelledRectangleWidget Game.BevelledButtonWidget::m_rectangleWidget
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void Game.BevelledRectangleWidget::set_CenterColor(valuetype [Engine]Engine.Color)
    IL_000c:  ret
  } // end of method BevelledButtonWidget::set_CenterColor

  .method public hidebysig specialname instance float32 
          get_AmbientLight() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.BevelledRectangleWidget Game.BevelledButtonWidget::m_rectangleWidget
    IL_0006:  callvirt   instance float32 Game.BevelledRectangleWidget::get_AmbientLight()
    IL_000b:  ret
  } // end of method BevelledButtonWidget::get_AmbientLight

  .method public hidebysig specialname instance void 
          set_AmbientLight(float32 'value') cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.BevelledRectangleWidget Game.BevelledButtonWidget::m_rectangleWidget
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void Game.BevelledRectangleWidget::set_AmbientLight(float32)
    IL_000c:  ret
  } // end of method BevelledButtonWidget::set_AmbientLight

  .method public hidebysig specialname instance float32 
          get_DirectionalLight() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.BevelledRectangleWidget Game.BevelledButtonWidget::m_rectangleWidget
    IL_0006:  callvirt   instance float32 Game.BevelledRectangleWidget::get_DirectionalLight()
    IL_000b:  ret
  } // end of method BevelledButtonWidget::get_DirectionalLight

  .method public hidebysig specialname instance void 
          set_DirectionalLight(float32 'value') cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.BevelledRectangleWidget Game.BevelledButtonWidget::m_rectangleWidget
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void Game.BevelledRectangleWidget::set_DirectionalLight(float32)
    IL_000c:  ret
  } // end of method BevelledButtonWidget::set_DirectionalLight

  .method public hidebysig specialname instance float32 
          get_BevelSize() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.BevelledButtonWidget::'<BevelSize>k__BackingField'
    IL_0006:  ret
  } // end of method BevelledButtonWidget::get_BevelSize

  .method public hidebysig specialname instance void 
          set_BevelSize(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.BevelledButtonWidget::'<BevelSize>k__BackingField'
    IL_0007:  ret
  } // end of method BevelledButtonWidget::set_BevelSize

  .method public hidebysig virtual instance void 
          MeasureOverride(valuetype [Engine]Engine.Vector2 parentAvailableSize) cil managed
  {
    // 代码大小       144 (0x90)
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
    IL_005c:  brfalse.s  IL_0077

    IL_005e:  ldarg.0
    IL_005f:  ldfld      class Game.BevelledRectangleWidget Game.BevelledButtonWidget::m_rectangleWidget
    IL_0064:  ldc.r4     -0.5
    IL_0069:  ldarg.0
    IL_006a:  call       instance float32 Game.BevelledButtonWidget::get_BevelSize()
    IL_006f:  mul
    IL_0070:  callvirt   instance void Game.BevelledRectangleWidget::set_BevelSize(float32)
    IL_0075:  br.s       IL_0088

    IL_0077:  ldarg.0
    IL_0078:  ldfld      class Game.BevelledRectangleWidget Game.BevelledButtonWidget::m_rectangleWidget
    IL_007d:  ldarg.0
    IL_007e:  call       instance float32 Game.BevelledButtonWidget::get_BevelSize()
    IL_0083:  callvirt   instance void Game.BevelledRectangleWidget::set_BevelSize(float32)
    IL_0088:  ldarg.0
    IL_0089:  ldarg.1
    IL_008a:  call       instance void Game.CanvasWidget::MeasureOverride(valuetype [Engine]Engine.Vector2)
    IL_008f:  ret
  } // end of method BevelledButtonWidget::MeasureOverride

  .property instance bool IsClicked()
  {
    .get instance bool Game.BevelledButtonWidget::get_IsClicked()
  } // end of property BevelledButtonWidget::IsClicked
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
  .property instance valuetype [Engine]Engine.Color
          BevelColor()
  {
    .get instance valuetype [Engine]Engine.Color Game.BevelledButtonWidget::get_BevelColor()
    .set instance void Game.BevelledButtonWidget::set_BevelColor(valuetype [Engine]Engine.Color)
  } // end of property BevelledButtonWidget::BevelColor
  .property instance valuetype [Engine]Engine.Color
          CenterColor()
  {
    .get instance valuetype [Engine]Engine.Color Game.BevelledButtonWidget::get_CenterColor()
    .set instance void Game.BevelledButtonWidget::set_CenterColor(valuetype [Engine]Engine.Color)
  } // end of property BevelledButtonWidget::CenterColor
  .property instance float32 AmbientLight()
  {
    .get instance float32 Game.BevelledButtonWidget::get_AmbientLight()
    .set instance void Game.BevelledButtonWidget::set_AmbientLight(float32)
  } // end of property BevelledButtonWidget::AmbientLight
  .property instance float32 DirectionalLight()
  {
    .get instance float32 Game.BevelledButtonWidget::get_DirectionalLight()
    .set instance void Game.BevelledButtonWidget::set_DirectionalLight(float32)
  } // end of property BevelledButtonWidget::DirectionalLight
  .property instance float32 BevelSize()
  {
    .get instance float32 Game.BevelledButtonWidget::get_BevelSize()
    .set instance void Game.BevelledButtonWidget::set_BevelSize(float32)
  } // end of property BevelledButtonWidget::BevelSize
} // end of class Game.BevelledButtonWidget