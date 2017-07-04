.class public auto ansi beforefieldinit Game.LinkWidget
       extends Game.FixedSizePanelWidget
{
  .field private class Game.LabelWidget m_labelWidget
  .field private class Game.ClickableWidget m_clickableWidget
  .field private string '<Url>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       80 (0x50)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.FixedSizePanelWidget::.ctor()
    IL_0006:  ldstr      "Widgets/LinkContents"
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
    IL_001b:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0020:  ldstr      "Label"
    IL_0025:  ldc.i4.1
    IL_0026:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_002b:  stfld      class Game.LabelWidget Game.LinkWidget::m_labelWidget
    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0037:  ldstr      "Clickable"
    IL_003c:  ldc.i4.1
    IL_003d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ClickableWidget>(string,
                                                                                         bool)
    IL_0042:  stfld      class Game.ClickableWidget Game.LinkWidget::m_clickableWidget
    IL_0047:  ldarg.0
    IL_0048:  ldarg.0
    IL_0049:  ldloc.0
    IL_004a:  call       void Game.WidgetsManager::LoadWidgetProperties(class Game.Widget,
                                                                        object,
                                                                        class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_004f:  ret
  } // end of method LinkWidget::.ctor

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector2 
          get_Size() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.LinkWidget::m_labelWidget
    IL_0006:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.LabelWidget::get_Size()
    IL_000b:  ret
  } // end of method LinkWidget::get_Size

  .method public hidebysig specialname instance void 
          set_Size(valuetype [Engine]Engine.Vector2 'value') cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.LinkWidget::m_labelWidget
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void Game.LabelWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_000c:  ret
  } // end of method LinkWidget::set_Size

  .method public hidebysig specialname instance bool 
          get_IsClicked() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ClickableWidget Game.LinkWidget::m_clickableWidget
    IL_0006:  callvirt   instance bool Game.ClickableWidget::get_IsClicked()
    IL_000b:  ret
  } // end of method LinkWidget::get_IsClicked

  .method public hidebysig specialname instance bool 
          get_IsPressed() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ClickableWidget Game.LinkWidget::m_clickableWidget
    IL_0006:  callvirt   instance bool Game.ClickableWidget::get_IsPressed()
    IL_000b:  ret
  } // end of method LinkWidget::get_IsPressed

  .method public hidebysig specialname instance string 
          get_Text() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.LinkWidget::m_labelWidget
    IL_0006:  callvirt   instance string Game.LabelWidget::get_Text()
    IL_000b:  ret
  } // end of method LinkWidget::get_Text

  .method public hidebysig specialname instance void 
          set_Text(string 'value') cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.LinkWidget::m_labelWidget
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_000c:  ret
  } // end of method LinkWidget::set_Text

  .method public hidebysig specialname instance valuetype [Engine]Engine.Graphics.TextAnchor 
          get_TextAnchor() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.LinkWidget::m_labelWidget
    IL_0006:  callvirt   instance valuetype [Engine]Engine.Graphics.TextAnchor Game.LabelWidget::get_TextAnchor()
    IL_000b:  ret
  } // end of method LinkWidget::get_TextAnchor

  .method public hidebysig specialname instance void 
          set_TextAnchor(valuetype [Engine]Engine.Graphics.TextAnchor 'value') cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.LinkWidget::m_labelWidget
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void Game.LabelWidget::set_TextAnchor(valuetype [Engine]Engine.Graphics.TextAnchor)
    IL_000c:  ret
  } // end of method LinkWidget::set_TextAnchor

  .method public hidebysig specialname instance class [Engine]Engine.Media.BitmapFont 
          get_Font() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.LinkWidget::m_labelWidget
    IL_0006:  callvirt   instance class [Engine]Engine.Media.BitmapFont Game.LabelWidget::get_Font()
    IL_000b:  ret
  } // end of method LinkWidget::get_Font

  .method public hidebysig specialname instance void 
          set_Font(class [Engine]Engine.Media.BitmapFont 'value') cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.LinkWidget::m_labelWidget
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
    IL_000c:  ret
  } // end of method LinkWidget::set_Font

  .method public hidebysig specialname instance valuetype [Engine]Engine.Color 
          get_Color() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.LinkWidget::m_labelWidget
    IL_0006:  callvirt   instance valuetype [Engine]Engine.Color Game.LabelWidget::get_Color()
    IL_000b:  ret
  } // end of method LinkWidget::get_Color

  .method public hidebysig specialname instance void 
          set_Color(valuetype [Engine]Engine.Color 'value') cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.LinkWidget::m_labelWidget
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_000c:  ret
  } // end of method LinkWidget::set_Color

  .method public hidebysig specialname instance bool 
          get_DropShadow() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.LinkWidget::m_labelWidget
    IL_0006:  callvirt   instance bool Game.LabelWidget::get_DropShadow()
    IL_000b:  ret
  } // end of method LinkWidget::get_DropShadow

  .method public hidebysig specialname instance void 
          set_DropShadow(bool 'value') cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.LinkWidget::m_labelWidget
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void Game.LabelWidget::set_DropShadow(bool)
    IL_000c:  ret
  } // end of method LinkWidget::set_DropShadow

  .method public hidebysig specialname instance string 
          get_Url() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.LinkWidget::'<Url>k__BackingField'
    IL_0006:  ret
  } // end of method LinkWidget::get_Url

  .method public hidebysig specialname instance void 
          set_Url(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string Game.LinkWidget::'<Url>k__BackingField'
    IL_0007:  ret
  } // end of method LinkWidget::set_Url

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance string Game.LinkWidget::get_Url()
    IL_0006:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_000b:  brtrue.s   IL_0020

    IL_000d:  ldarg.0
    IL_000e:  call       instance bool Game.LinkWidget::get_IsClicked()
    IL_0013:  brfalse.s  IL_0020

    IL_0015:  ldarg.0
    IL_0016:  call       instance string Game.LinkWidget::get_Url()
    IL_001b:  call       void Game.WebBrowserManager::LaunchBrowser(string)
    IL_0020:  ret
  } // end of method LinkWidget::Update

  .property instance valuetype [Engine]Engine.Vector2
          Size()
  {
    .get instance valuetype [Engine]Engine.Vector2 Game.LinkWidget::get_Size()
    .set instance void Game.LinkWidget::set_Size(valuetype [Engine]Engine.Vector2)
  } // end of property LinkWidget::Size
  .property instance bool IsClicked()
  {
    .get instance bool Game.LinkWidget::get_IsClicked()
  } // end of property LinkWidget::IsClicked
  .property instance bool IsPressed()
  {
    .get instance bool Game.LinkWidget::get_IsPressed()
  } // end of property LinkWidget::IsPressed
  .property instance string Text()
  {
    .get instance string Game.LinkWidget::get_Text()
    .set instance void Game.LinkWidget::set_Text(string)
  } // end of property LinkWidget::Text
  .property instance valuetype [Engine]Engine.Graphics.TextAnchor
          TextAnchor()
  {
    .get instance valuetype [Engine]Engine.Graphics.TextAnchor Game.LinkWidget::get_TextAnchor()
    .set instance void Game.LinkWidget::set_TextAnchor(valuetype [Engine]Engine.Graphics.TextAnchor)
  } // end of property LinkWidget::TextAnchor
  .property instance class [Engine]Engine.Media.BitmapFont
          Font()
  {
    .get instance class [Engine]Engine.Media.BitmapFont Game.LinkWidget::get_Font()
    .set instance void Game.LinkWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
  } // end of property LinkWidget::Font
  .property instance valuetype [Engine]Engine.Color
          Color()
  {
    .get instance valuetype [Engine]Engine.Color Game.LinkWidget::get_Color()
    .set instance void Game.LinkWidget::set_Color(valuetype [Engine]Engine.Color)
  } // end of property LinkWidget::Color
  .property instance bool DropShadow()
  {
    .get instance bool Game.LinkWidget::get_DropShadow()
    .set instance void Game.LinkWidget::set_DropShadow(bool)
  } // end of property LinkWidget::DropShadow
  .property instance string Url()
  {
    .get instance string Game.LinkWidget::get_Url()
    .set instance void Game.LinkWidget::set_Url(string)
  } // end of property LinkWidget::Url
} // end of class Game.LinkWidget