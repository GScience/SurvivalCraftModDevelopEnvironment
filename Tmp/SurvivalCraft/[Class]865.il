.class private auto ansi beforefieldinit Game.TextBoxWidget
       extends Game.Widget
{
  .field private class [Engine]Engine.Media.BitmapFont m_font
  .field private string m_text
  .field private int32 m_maximumLength
  .field private bool m_hasFocus
  .field private int32 m_caretPosition
  .field private float64 m_focusStartTime
  .field private float32 m_scroll
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> m_size
  .field private class [Engine]Engine.Graphics.FontBatch2D m_fontBatch
  .field private class [Engine]Engine.Graphics.FlatBatch2D m_flatBatch
  .field private class [System.Runtime]System.Action`1<class Game.TextBoxWidget> TextChanged
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [System.Runtime]System.Action`1<class Game.TextBoxWidget> Enter
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [System.Runtime]System.Action`1<class Game.TextBoxWidget> Escape
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private string '<Title>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private string '<Description>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<OverwriteMode>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<FontScale>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<FontSpacing>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Color '<Color>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       117 (0x75)
    .maxstack  6
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0006:  stfld      string Game.TextBoxWidget::m_text
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.s   32
    IL_000e:  stfld      int32 Game.TextBoxWidget::m_maximumLength
    IL_0013:  ldarg.0
    IL_0014:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
    IL_0019:  ldc.i4.1
    IL_001a:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_001f:  ldnull
    IL_0020:  ldnull
    IL_0021:  callvirt   instance class [Engine]Engine.Graphics.FlatBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::FlatBatch(int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState)
    IL_0026:  stfld      class [Engine]Engine.Graphics.FlatBatch2D Game.TextBoxWidget::m_flatBatch
    IL_002b:  ldarg.0
    IL_002c:  call       instance void Game.Widget::.ctor()
    IL_0031:  ldarg.0
    IL_0032:  ldc.i4.1
    IL_0033:  call       instance void Game.Widget::set_ClampToBounds(bool)
    IL_0038:  ldarg.0
    IL_0039:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_003e:  call       instance void Game.TextBoxWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_0043:  ldarg.0
    IL_0044:  ldstr      "Fonts/Pericles32"
    IL_0049:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Media.BitmapFont>(string)
    IL_004e:  call       instance void Game.TextBoxWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
    IL_0053:  ldarg.0
    IL_0054:  ldc.r4     1.
    IL_0059:  call       instance void Game.TextBoxWidget::set_FontScale(float32)
    IL_005e:  ldarg.0
    IL_005f:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0064:  call       instance void Game.TextBoxWidget::set_Title(string)
    IL_0069:  ldarg.0
    IL_006a:  ldsfld     string [System.Runtime]System.String::Empty
    IL_006f:  call       instance void Game.TextBoxWidget::set_Description(string)
    IL_0074:  ret
  } // end of method TextBoxWidget::.ctor

  .method public hidebysig specialname instance void 
          add_TextChanged(class [System.Runtime]System.Action`1<class Game.TextBoxWidget> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<class Game.TextBoxWidget> V_0,
             class [System.Runtime]System.Action`1<class Game.TextBoxWidget> V_1,
             class [System.Runtime]System.Action`1<class Game.TextBoxWidget> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<class Game.TextBoxWidget> Game.TextBoxWidget::TextChanged
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Combine(class [System.Runtime]System.Delegate,
                                                                                                        class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`1<class Game.TextBoxWidget>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<class Game.TextBoxWidget> Game.TextBoxWidget::TextChanged
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<class Game.TextBoxWidget>>(!!0&,
                                                                                                                                                              !!0,
                                                                                                                                                              !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method TextBoxWidget::add_TextChanged

  .method public hidebysig specialname instance void 
          remove_TextChanged(class [System.Runtime]System.Action`1<class Game.TextBoxWidget> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<class Game.TextBoxWidget> V_0,
             class [System.Runtime]System.Action`1<class Game.TextBoxWidget> V_1,
             class [System.Runtime]System.Action`1<class Game.TextBoxWidget> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<class Game.TextBoxWidget> Game.TextBoxWidget::TextChanged
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Remove(class [System.Runtime]System.Delegate,
                                                                                                       class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`1<class Game.TextBoxWidget>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<class Game.TextBoxWidget> Game.TextBoxWidget::TextChanged
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<class Game.TextBoxWidget>>(!!0&,
                                                                                                                                                              !!0,
                                                                                                                                                              !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method TextBoxWidget::remove_TextChanged

  .method public hidebysig specialname instance void 
          add_Enter(class [System.Runtime]System.Action`1<class Game.TextBoxWidget> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<class Game.TextBoxWidget> V_0,
             class [System.Runtime]System.Action`1<class Game.TextBoxWidget> V_1,
             class [System.Runtime]System.Action`1<class Game.TextBoxWidget> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<class Game.TextBoxWidget> Game.TextBoxWidget::Enter
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Combine(class [System.Runtime]System.Delegate,
                                                                                                        class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`1<class Game.TextBoxWidget>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<class Game.TextBoxWidget> Game.TextBoxWidget::Enter
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<class Game.TextBoxWidget>>(!!0&,
                                                                                                                                                              !!0,
                                                                                                                                                              !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method TextBoxWidget::add_Enter

  .method public hidebysig specialname instance void 
          remove_Enter(class [System.Runtime]System.Action`1<class Game.TextBoxWidget> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<class Game.TextBoxWidget> V_0,
             class [System.Runtime]System.Action`1<class Game.TextBoxWidget> V_1,
             class [System.Runtime]System.Action`1<class Game.TextBoxWidget> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<class Game.TextBoxWidget> Game.TextBoxWidget::Enter
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Remove(class [System.Runtime]System.Delegate,
                                                                                                       class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`1<class Game.TextBoxWidget>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<class Game.TextBoxWidget> Game.TextBoxWidget::Enter
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<class Game.TextBoxWidget>>(!!0&,
                                                                                                                                                              !!0,
                                                                                                                                                              !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method TextBoxWidget::remove_Enter

  .method public hidebysig specialname instance void 
          add_Escape(class [System.Runtime]System.Action`1<class Game.TextBoxWidget> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<class Game.TextBoxWidget> V_0,
             class [System.Runtime]System.Action`1<class Game.TextBoxWidget> V_1,
             class [System.Runtime]System.Action`1<class Game.TextBoxWidget> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<class Game.TextBoxWidget> Game.TextBoxWidget::Escape
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Combine(class [System.Runtime]System.Delegate,
                                                                                                        class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`1<class Game.TextBoxWidget>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<class Game.TextBoxWidget> Game.TextBoxWidget::Escape
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<class Game.TextBoxWidget>>(!!0&,
                                                                                                                                                              !!0,
                                                                                                                                                              !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method TextBoxWidget::add_Escape

  .method public hidebysig specialname instance void 
          remove_Escape(class [System.Runtime]System.Action`1<class Game.TextBoxWidget> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<class Game.TextBoxWidget> V_0,
             class [System.Runtime]System.Action`1<class Game.TextBoxWidget> V_1,
             class [System.Runtime]System.Action`1<class Game.TextBoxWidget> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<class Game.TextBoxWidget> Game.TextBoxWidget::Escape
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Remove(class [System.Runtime]System.Delegate,
                                                                                                       class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`1<class Game.TextBoxWidget>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<class Game.TextBoxWidget> Game.TextBoxWidget::Escape
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<class Game.TextBoxWidget>>(!!0&,
                                                                                                                                                              !!0,
                                                                                                                                                              !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method TextBoxWidget::remove_Escape

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector2 
          get_Size() cil managed
  {
    // 代码大小       31 (0x1f)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.TextBoxWidget::m_size
    IL_0006:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_000b:  brtrue.s   IL_0013

    IL_000d:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0012:  ret

    IL_0013:  ldarg.0
    IL_0014:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.TextBoxWidget::m_size
    IL_0019:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_001e:  ret
  } // end of method TextBoxWidget::get_Size

  .method public hidebysig specialname instance void 
          set_Size(valuetype [Engine]Engine.Vector2 'value') cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_0007:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.TextBoxWidget::m_size
    IL_000c:  ret
  } // end of method TextBoxWidget::set_Size

  .method public hidebysig specialname instance string 
          get_Title() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.TextBoxWidget::'<Title>k__BackingField'
    IL_0006:  ret
  } // end of method TextBoxWidget::get_Title

  .method public hidebysig specialname instance void 
          set_Title(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string Game.TextBoxWidget::'<Title>k__BackingField'
    IL_0007:  ret
  } // end of method TextBoxWidget::set_Title

  .method public hidebysig specialname instance string 
          get_Description() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.TextBoxWidget::'<Description>k__BackingField'
    IL_0006:  ret
  } // end of method TextBoxWidget::get_Description

  .method public hidebysig specialname instance void 
          set_Description(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string Game.TextBoxWidget::'<Description>k__BackingField'
    IL_0007:  ret
  } // end of method TextBoxWidget::set_Description

  .method public hidebysig specialname instance string 
          get_Text() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.TextBoxWidget::m_text
    IL_0006:  ret
  } // end of method TextBoxWidget::get_Text

  .method public hidebysig specialname instance void 
          set_Text(string 'value') cil managed
  {
    // 代码大小       85 (0x55)
    .maxstack  3
    .locals init (string V_0)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0006:  ldarg.0
    IL_0007:  call       instance int32 Game.TextBoxWidget::get_MaximumLength()
    IL_000c:  bgt.s      IL_0011

    IL_000e:  ldarg.1
    IL_000f:  br.s       IL_001e

    IL_0011:  ldarg.1
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance int32 Game.TextBoxWidget::get_MaximumLength()
    IL_0019:  callvirt   instance string [System.Runtime]System.String::Substring(int32,
                                                                                  int32)
    IL_001e:  stloc.0
    IL_001f:  ldloc.0
    IL_0020:  ldarg.0
    IL_0021:  ldfld      string Game.TextBoxWidget::m_text
    IL_0026:  call       bool [System.Runtime]System.String::op_Inequality(string,
                                                                           string)
    IL_002b:  brfalse.s  IL_0054

    IL_002d:  ldarg.0
    IL_002e:  ldloc.0
    IL_002f:  stfld      string Game.TextBoxWidget::m_text
    IL_0034:  ldarg.0
    IL_0035:  ldarg.0
    IL_0036:  call       instance int32 Game.TextBoxWidget::get_CaretPosition()
    IL_003b:  call       instance void Game.TextBoxWidget::set_CaretPosition(int32)
    IL_0040:  ldarg.0
    IL_0041:  ldfld      class [System.Runtime]System.Action`1<class Game.TextBoxWidget> Game.TextBoxWidget::TextChanged
    IL_0046:  brfalse.s  IL_0054

    IL_0048:  ldarg.0
    IL_0049:  ldfld      class [System.Runtime]System.Action`1<class Game.TextBoxWidget> Game.TextBoxWidget::TextChanged
    IL_004e:  ldarg.0
    IL_004f:  callvirt   instance void class [System.Runtime]System.Action`1<class Game.TextBoxWidget>::Invoke(!0)
    IL_0054:  ret
  } // end of method TextBoxWidget::set_Text

  .method public hidebysig specialname instance int32 
          get_MaximumLength() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.TextBoxWidget::m_maximumLength
    IL_0006:  ret
  } // end of method TextBoxWidget::get_MaximumLength

  .method public hidebysig specialname instance void 
          set_MaximumLength(int32 'value') cil managed
  {
    // 代码大小       57 (0x39)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldc.i4.0
    IL_0003:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0008:  stfld      int32 Game.TextBoxWidget::m_maximumLength
    IL_000d:  ldarg.0
    IL_000e:  call       instance string Game.TextBoxWidget::get_Text()
    IL_0013:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0018:  ldarg.0
    IL_0019:  ldfld      int32 Game.TextBoxWidget::m_maximumLength
    IL_001e:  ble.s      IL_0038

    IL_0020:  ldarg.0
    IL_0021:  ldarg.0
    IL_0022:  call       instance string Game.TextBoxWidget::get_Text()
    IL_0027:  ldc.i4.0
    IL_0028:  ldarg.0
    IL_0029:  ldfld      int32 Game.TextBoxWidget::m_maximumLength
    IL_002e:  callvirt   instance string [System.Runtime]System.String::Substring(int32,
                                                                                  int32)
    IL_0033:  call       instance void Game.TextBoxWidget::set_Text(string)
    IL_0038:  ret
  } // end of method TextBoxWidget::set_MaximumLength

  .method public hidebysig specialname instance bool 
          get_OverwriteMode() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.TextBoxWidget::'<OverwriteMode>k__BackingField'
    IL_0006:  ret
  } // end of method TextBoxWidget::get_OverwriteMode

  .method public hidebysig specialname instance void 
          set_OverwriteMode(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.TextBoxWidget::'<OverwriteMode>k__BackingField'
    IL_0007:  ret
  } // end of method TextBoxWidget::set_OverwriteMode

  .method public hidebysig specialname instance bool 
          get_HasFocus() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.TextBoxWidget::m_hasFocus
    IL_0006:  ret
  } // end of method TextBoxWidget::get_HasFocus

  .method public hidebysig specialname instance void 
          set_HasFocus(bool 'value') cil managed
  {
    // 代码大小       74 (0x4a)
    .maxstack  6
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      bool Game.TextBoxWidget::m_hasFocus
    IL_0007:  beq.s      IL_0049

    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  stfld      bool Game.TextBoxWidget::m_hasFocus
    IL_0010:  ldarg.1
    IL_0011:  brfalse.s  IL_0049

    IL_0013:  ldarg.0
    IL_0014:  ldarg.0
    IL_0015:  ldfld      string Game.TextBoxWidget::m_text
    IL_001a:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_001f:  call       instance void Game.TextBoxWidget::set_CaretPosition(int32)
    IL_0024:  ldarg.0
    IL_0025:  call       instance string Game.TextBoxWidget::get_Title()
    IL_002a:  ldarg.0
    IL_002b:  call       instance string Game.TextBoxWidget::get_Description()
    IL_0030:  ldarg.0
    IL_0031:  call       instance string Game.TextBoxWidget::get_Text()
    IL_0036:  ldc.i4.0
    IL_0037:  ldarg.0
    IL_0038:  ldftn      instance void Game.TextBoxWidget::'<set_HasFocus>b__43_0'(string)
    IL_003e:  newobj     instance void class [System.Runtime]System.Action`1<string>::.ctor(object,
                                                                                            native int)
    IL_0043:  ldnull
    IL_0044:  call       void [Engine]Engine.Input.Keyboard::ShowKeyboard(string,
                                                                          string,
                                                                          string,
                                                                          bool,
                                                                          class [System.Runtime]System.Action`1<string>,
                                                                          class [System.Runtime]System.Action)
    IL_0049:  ret
  } // end of method TextBoxWidget::set_HasFocus

  .method public hidebysig specialname instance class [Engine]Engine.Media.BitmapFont 
          get_Font() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.Media.BitmapFont Game.TextBoxWidget::m_font
    IL_0006:  ret
  } // end of method TextBoxWidget::get_Font

  .method public hidebysig specialname instance void 
          set_Font(class [Engine]Engine.Media.BitmapFont 'value') cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [Engine]Engine.Media.BitmapFont Game.TextBoxWidget::m_font
    IL_0007:  beq.s      IL_0017

    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  stfld      class [Engine]Engine.Media.BitmapFont Game.TextBoxWidget::m_font
    IL_0010:  ldarg.0
    IL_0011:  ldnull
    IL_0012:  stfld      class [Engine]Engine.Graphics.FontBatch2D Game.TextBoxWidget::m_fontBatch
    IL_0017:  ret
  } // end of method TextBoxWidget::set_Font

  .method public hidebysig specialname instance float32 
          get_FontScale() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.TextBoxWidget::'<FontScale>k__BackingField'
    IL_0006:  ret
  } // end of method TextBoxWidget::get_FontScale

  .method public hidebysig specialname instance void 
          set_FontScale(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.TextBoxWidget::'<FontScale>k__BackingField'
    IL_0007:  ret
  } // end of method TextBoxWidget::set_FontScale

  .method public hidebysig specialname instance float32 
          get_FontSpacing() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.TextBoxWidget::'<FontSpacing>k__BackingField'
    IL_0006:  ret
  } // end of method TextBoxWidget::get_FontSpacing

  .method public hidebysig specialname instance void 
          set_FontSpacing(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.TextBoxWidget::'<FontSpacing>k__BackingField'
    IL_0007:  ret
  } // end of method TextBoxWidget::set_FontSpacing

  .method public hidebysig specialname instance valuetype [Engine]Engine.Color 
          get_Color() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Color Game.TextBoxWidget::'<Color>k__BackingField'
    IL_0006:  ret
  } // end of method TextBoxWidget::get_Color

  .method public hidebysig specialname instance void 
          set_Color(valuetype [Engine]Engine.Color 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Color Game.TextBoxWidget::'<Color>k__BackingField'
    IL_0007:  ret
  } // end of method TextBoxWidget::set_Color

  .method public hidebysig specialname instance int32 
          get_CaretPosition() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.TextBoxWidget::m_caretPosition
    IL_0006:  ret
  } // end of method TextBoxWidget::get_CaretPosition

  .method public hidebysig specialname instance void 
          set_CaretPosition(int32 'value') cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldc.i4.0
    IL_0003:  ldarg.0
    IL_0004:  call       instance string Game.TextBoxWidget::get_Text()
    IL_0009:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_000e:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_0013:  stfld      int32 Game.TextBoxWidget::m_caretPosition
    IL_0018:  ldarg.0
    IL_0019:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_001e:  stfld      float64 Game.TextBoxWidget::m_focusStartTime
    IL_0023:  ret
  } // end of method TextBoxWidget::set_CaretPosition

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       528 (0x210)
    .maxstack  4
    .locals init (valuetype Game.InputState V_0,
             bool V_1,
             valuetype [Engine]Engine.Input.Key V_2,
             int32 V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.TextBoxWidget::m_hasFocus
    IL_0006:  brfalse    IL_01d2

    IL_000b:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0010:  stloc.0
    IL_0011:  ldloca.s   V_0
    IL_0013:  ldflda     valuetype [System.Runtime]System.Nullable`1<char> Game.InputState::CharPress
    IL_0018:  call       instance bool valuetype [System.Runtime]System.Nullable`1<char>::get_HasValue()
    IL_001d:  brfalse.s  IL_0063

    IL_001f:  ldc.i4.2
    IL_0020:  call       bool Game.InputManager::IsKeyDown(valuetype [Engine]Engine.Input.Key)
    IL_0025:  brtrue.s   IL_0063

    IL_0027:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_002c:  stloc.0
    IL_002d:  ldloca.s   V_0
    IL_002f:  ldflda     valuetype [System.Runtime]System.Nullable`1<char> Game.InputState::CharPress
    IL_0034:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<char>::get_Value()
    IL_0039:  call       bool [System.Runtime]System.Char::IsControl(char)
    IL_003e:  brtrue.s   IL_0063

    IL_0040:  ldarg.0
    IL_0041:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0046:  stloc.0
    IL_0047:  ldloca.s   V_0
    IL_0049:  ldflda     valuetype [System.Runtime]System.Nullable`1<char> Game.InputState::CharPress
    IL_004e:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<char>::get_Value()
    IL_0053:  ldc.i4.1
    IL_0054:  newobj     instance void [System.Runtime]System.String::.ctor(char,
                                                                            int32)
    IL_0059:  call       instance void Game.TextBoxWidget::EnterText(string)
    IL_005e:  call       void Game.InputManager::Clear()
    IL_0063:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0068:  stloc.0
    IL_0069:  ldloca.s   V_0
    IL_006b:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Input.Key> Game.InputState::KeyPress
    IL_0070:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Input.Key>::get_HasValue()
    IL_0075:  brfalse    IL_01d2

    IL_007a:  ldc.i4.0
    IL_007b:  stloc.1
    IL_007c:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0081:  stloc.0
    IL_0082:  ldloca.s   V_0
    IL_0084:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Input.Key> Game.InputState::KeyPress
    IL_0089:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Input.Key>::get_Value()
    IL_008e:  stloc.2
    IL_008f:  ldloc.2
    IL_0090:  ldc.i4.s   52
    IL_0092:  bne.un.s   IL_00ae

    IL_0094:  ldc.i4.2
    IL_0095:  call       bool Game.InputManager::IsKeyDown(valuetype [Engine]Engine.Input.Key)
    IL_009a:  brfalse.s  IL_00ae

    IL_009c:  ldarg.0
    IL_009d:  call       string Game.ClipboardManager::get_ClipboardString()
    IL_00a2:  call       instance void Game.TextBoxWidget::EnterText(string)
    IL_00a7:  ldc.i4.1
    IL_00a8:  stloc.1
    IL_00a9:  br         IL_01ca

    IL_00ae:  ldloc.2
    IL_00af:  ldc.i4.s   23
    IL_00b1:  bne.un.s   IL_00eb

    IL_00b3:  ldarg.0
    IL_00b4:  call       instance int32 Game.TextBoxWidget::get_CaretPosition()
    IL_00b9:  ldc.i4.0
    IL_00ba:  ble.s      IL_00eb

    IL_00bc:  ldarg.0
    IL_00bd:  call       instance int32 Game.TextBoxWidget::get_CaretPosition()
    IL_00c2:  stloc.3
    IL_00c3:  ldarg.0
    IL_00c4:  ldloc.3
    IL_00c5:  ldc.i4.1
    IL_00c6:  sub
    IL_00c7:  call       instance void Game.TextBoxWidget::set_CaretPosition(int32)
    IL_00cc:  ldarg.0
    IL_00cd:  ldarg.0
    IL_00ce:  call       instance string Game.TextBoxWidget::get_Text()
    IL_00d3:  ldarg.0
    IL_00d4:  call       instance int32 Game.TextBoxWidget::get_CaretPosition()
    IL_00d9:  ldc.i4.1
    IL_00da:  callvirt   instance string [System.Runtime]System.String::Remove(int32,
                                                                               int32)
    IL_00df:  call       instance void Game.TextBoxWidget::set_Text(string)
    IL_00e4:  ldc.i4.1
    IL_00e5:  stloc.1
    IL_00e6:  br         IL_01ca

    IL_00eb:  ldloc.2
    IL_00ec:  ldc.i4.s   25
    IL_00ee:  bne.un.s   IL_0125

    IL_00f0:  ldarg.0
    IL_00f1:  call       instance int32 Game.TextBoxWidget::get_CaretPosition()
    IL_00f6:  ldarg.0
    IL_00f7:  ldfld      string Game.TextBoxWidget::m_text
    IL_00fc:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0101:  bge        IL_01ca

    IL_0106:  ldarg.0
    IL_0107:  ldarg.0
    IL_0108:  call       instance string Game.TextBoxWidget::get_Text()
    IL_010d:  ldarg.0
    IL_010e:  call       instance int32 Game.TextBoxWidget::get_CaretPosition()
    IL_0113:  ldc.i4.1
    IL_0114:  callvirt   instance string [System.Runtime]System.String::Remove(int32,
                                                                               int32)
    IL_0119:  call       instance void Game.TextBoxWidget::set_Text(string)
    IL_011e:  ldc.i4.1
    IL_011f:  stloc.1
    IL_0120:  br         IL_01ca

    IL_0125:  ldloc.2
    IL_0126:  ldc.i4.s   15
    IL_0128:  bne.un.s   IL_0141

    IL_012a:  ldarg.0
    IL_012b:  call       instance int32 Game.TextBoxWidget::get_CaretPosition()
    IL_0130:  stloc.3
    IL_0131:  ldarg.0
    IL_0132:  ldloc.3
    IL_0133:  ldc.i4.1
    IL_0134:  sub
    IL_0135:  call       instance void Game.TextBoxWidget::set_CaretPosition(int32)
    IL_013a:  ldc.i4.1
    IL_013b:  stloc.1
    IL_013c:  br         IL_01ca

    IL_0141:  ldloc.2
    IL_0142:  ldc.i4.s   16
    IL_0144:  bne.un.s   IL_015a

    IL_0146:  ldarg.0
    IL_0147:  call       instance int32 Game.TextBoxWidget::get_CaretPosition()
    IL_014c:  stloc.3
    IL_014d:  ldarg.0
    IL_014e:  ldloc.3
    IL_014f:  ldc.i4.1
    IL_0150:  add
    IL_0151:  call       instance void Game.TextBoxWidget::set_CaretPosition(int32)
    IL_0156:  ldc.i4.1
    IL_0157:  stloc.1
    IL_0158:  br.s       IL_01ca

    IL_015a:  ldloc.2
    IL_015b:  ldc.i4.s   28
    IL_015d:  bne.un.s   IL_016a

    IL_015f:  ldarg.0
    IL_0160:  ldc.i4.0
    IL_0161:  call       instance void Game.TextBoxWidget::set_CaretPosition(int32)
    IL_0166:  ldc.i4.1
    IL_0167:  stloc.1
    IL_0168:  br.s       IL_01ca

    IL_016a:  ldloc.2
    IL_016b:  ldc.i4.s   29
    IL_016d:  bne.un.s   IL_0184

    IL_016f:  ldarg.0
    IL_0170:  ldarg.0
    IL_0171:  ldfld      string Game.TextBoxWidget::m_text
    IL_0176:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_017b:  call       instance void Game.TextBoxWidget::set_CaretPosition(int32)
    IL_0180:  ldc.i4.1
    IL_0181:  stloc.1
    IL_0182:  br.s       IL_01ca

    IL_0184:  ldloc.2
    IL_0185:  ldc.i4.s   19
    IL_0187:  bne.un.s   IL_01a8

    IL_0189:  ldarg.0
    IL_018a:  ldc.i4.0
    IL_018b:  call       instance void Game.TextBoxWidget::set_HasFocus(bool)
    IL_0190:  ldc.i4.1
    IL_0191:  stloc.1
    IL_0192:  ldarg.0
    IL_0193:  ldfld      class [System.Runtime]System.Action`1<class Game.TextBoxWidget> Game.TextBoxWidget::Enter
    IL_0198:  brfalse.s  IL_01ca

    IL_019a:  ldarg.0
    IL_019b:  ldfld      class [System.Runtime]System.Action`1<class Game.TextBoxWidget> Game.TextBoxWidget::Enter
    IL_01a0:  ldarg.0
    IL_01a1:  callvirt   instance void class [System.Runtime]System.Action`1<class Game.TextBoxWidget>::Invoke(!0)
    IL_01a6:  br.s       IL_01ca

    IL_01a8:  ldloc.2
    IL_01a9:  ldc.i4.s   20
    IL_01ab:  bne.un.s   IL_01ca

    IL_01ad:  ldarg.0
    IL_01ae:  ldc.i4.0
    IL_01af:  call       instance void Game.TextBoxWidget::set_HasFocus(bool)
    IL_01b4:  ldc.i4.1
    IL_01b5:  stloc.1
    IL_01b6:  ldarg.0
    IL_01b7:  ldfld      class [System.Runtime]System.Action`1<class Game.TextBoxWidget> Game.TextBoxWidget::Escape
    IL_01bc:  brfalse.s  IL_01ca

    IL_01be:  ldarg.0
    IL_01bf:  ldfld      class [System.Runtime]System.Action`1<class Game.TextBoxWidget> Game.TextBoxWidget::Escape
    IL_01c4:  ldarg.0
    IL_01c5:  callvirt   instance void class [System.Runtime]System.Action`1<class Game.TextBoxWidget>::Invoke(!0)
    IL_01ca:  ldloc.1
    IL_01cb:  brfalse.s  IL_01d2

    IL_01cd:  call       void Game.InputManager::Clear()
    IL_01d2:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_01d7:  stloc.0
    IL_01d8:  ldloca.s   V_0
    IL_01da:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Tap
    IL_01df:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_01e4:  brfalse.s  IL_020f

    IL_01e6:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_01eb:  stloc.0
    IL_01ec:  ldloca.s   V_0
    IL_01ee:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Tap
    IL_01f3:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_01f8:  call       class Game.Widget Game.WidgetsManager::HitTest(valuetype [Engine]Engine.Vector2)
    IL_01fd:  ldarg.0
    IL_01fe:  bne.un.s   IL_0208

    IL_0200:  ldarg.0
    IL_0201:  ldc.i4.1
    IL_0202:  call       instance void Game.TextBoxWidget::set_HasFocus(bool)
    IL_0207:  ret

    IL_0208:  ldarg.0
    IL_0209:  ldc.i4.0
    IL_020a:  call       instance void Game.TextBoxWidget::set_HasFocus(bool)
    IL_020f:  ret
  } // end of method TextBoxWidget::Update

  .method public hidebysig virtual instance void 
          Measure(valuetype [Engine]Engine.Vector2 availableSize) cil managed
  {
    // 代码大小       201 (0xc9)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  call       instance void Game.Widget::set_IsDrawRequired(bool)
    IL_0007:  ldarg.0
    IL_0008:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.TextBoxWidget::m_size
    IL_000d:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0012:  brfalse.s  IL_0026

    IL_0014:  ldarg.0
    IL_0015:  ldarg.0
    IL_0016:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.TextBoxWidget::m_size
    IL_001b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0020:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_0025:  ret

    IL_0026:  ldarg.0
    IL_0027:  call       instance string Game.TextBoxWidget::get_Text()
    IL_002c:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0031:  ldc.i4.1
    IL_0032:  bge.s      IL_0062

    IL_0034:  ldarg.0
    IL_0035:  ldarg.0
    IL_0036:  call       instance class [Engine]Engine.Media.BitmapFont Game.TextBoxWidget::get_Font()
    IL_003b:  ldstr      " "
    IL_0040:  ldarg.0
    IL_0041:  call       instance float32 Game.TextBoxWidget::get_FontScale()
    IL_0046:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_004b:  ldarg.0
    IL_004c:  call       instance float32 Game.TextBoxWidget::get_FontSpacing()
    IL_0051:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0056:  callvirt   instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Media.BitmapFont::MeasureText(string,
                                                                                                                valuetype [Engine]Engine.Vector2,
                                                                                                                valuetype [Engine]Engine.Vector2)
    IL_005b:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_0060:  br.s       IL_008f

    IL_0062:  ldarg.0
    IL_0063:  ldarg.0
    IL_0064:  call       instance class [Engine]Engine.Media.BitmapFont Game.TextBoxWidget::get_Font()
    IL_0069:  ldarg.0
    IL_006a:  call       instance string Game.TextBoxWidget::get_Text()
    IL_006f:  ldarg.0
    IL_0070:  call       instance float32 Game.TextBoxWidget::get_FontScale()
    IL_0075:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_007a:  ldarg.0
    IL_007b:  call       instance float32 Game.TextBoxWidget::get_FontSpacing()
    IL_0080:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0085:  callvirt   instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Media.BitmapFont::MeasureText(string,
                                                                                                                valuetype [Engine]Engine.Vector2,
                                                                                                                valuetype [Engine]Engine.Vector2)
    IL_008a:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_008f:  ldarg.0
    IL_0090:  ldarg.0
    IL_0091:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
    IL_0096:  ldc.r4     1.
    IL_009b:  call       float32 Game.WidgetsManager::get_Scale()
    IL_00a0:  mul
    IL_00a1:  ldarg.0
    IL_00a2:  call       instance float32 Game.TextBoxWidget::get_FontScale()
    IL_00a7:  mul
    IL_00a8:  ldarg.0
    IL_00a9:  call       instance class [Engine]Engine.Media.BitmapFont Game.TextBoxWidget::get_Font()
    IL_00ae:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::get_Scale()
    IL_00b3:  mul
    IL_00b4:  ldc.r4     0.0
    IL_00b9:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00be:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_00c3:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_00c8:  ret
  } // end of method TextBoxWidget::Measure

  .method public hidebysig virtual instance void 
          Draw() cil managed
  {
    // 代码大小       678 (0x2a6)
    .maxstack  9
    .locals init (valuetype [Engine]Engine.Vector2 V_0,
             float32 V_1,
             valuetype [Engine]Engine.Vector2 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.TextBoxWidget::m_text
    IL_0006:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_000b:  brtrue     IL_00ab

    IL_0010:  ldarg.0
    IL_0011:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0016:  ldarg.0
    IL_0017:  ldfld      float32 Game.TextBoxWidget::m_scroll
    IL_001c:  neg
    IL_001d:  ldarg.0
    IL_001e:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0023:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0028:  ldc.r4     2.
    IL_002d:  div
    IL_002e:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0033:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0038:  stloc.0
    IL_0039:  ldloc.0
    IL_003a:  call       float32 Game.WidgetsManager::get_Scale()
    IL_003f:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0044:  stloc.0
    IL_0045:  ldarg.0
    IL_0046:  ldfld      class [Engine]Engine.Graphics.FontBatch2D Game.TextBoxWidget::m_fontBatch
    IL_004b:  brtrue.s   IL_006c

    IL_004d:  ldarg.0
    IL_004e:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
    IL_0053:  ldarg.0
    IL_0054:  call       instance class [Engine]Engine.Media.BitmapFont Game.TextBoxWidget::get_Font()
    IL_0059:  ldc.i4.1
    IL_005a:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_005f:  ldnull
    IL_0060:  ldnull
    IL_0061:  ldnull
    IL_0062:  callvirt   instance class [Engine]Engine.Graphics.FontBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::FontBatch(class [Engine]Engine.Media.BitmapFont,
                                                                                                                                    int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState,
                                                                                                                                    class [Engine]Engine.Graphics.SamplerState)
    IL_0067:  stfld      class [Engine]Engine.Graphics.FontBatch2D Game.TextBoxWidget::m_fontBatch
    IL_006c:  ldarg.0
    IL_006d:  ldfld      class [Engine]Engine.Graphics.FontBatch2D Game.TextBoxWidget::m_fontBatch
    IL_0072:  ldarg.0
    IL_0073:  call       instance string Game.TextBoxWidget::get_Text()
    IL_0078:  ldloc.0
    IL_0079:  ldc.r4     0.0
    IL_007e:  ldarg.0
    IL_007f:  call       instance valuetype [Engine]Engine.Color Game.TextBoxWidget::get_Color()
    IL_0084:  ldc.i4.2
    IL_0085:  ldarg.0
    IL_0086:  call       instance float32 Game.TextBoxWidget::get_FontScale()
    IL_008b:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0090:  mul
    IL_0091:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0096:  ldarg.0
    IL_0097:  call       instance float32 Game.TextBoxWidget::get_FontSpacing()
    IL_009c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_00a1:  ldc.r4     0.0
    IL_00a6:  callvirt   instance void [Engine]Engine.Graphics.FontBatch2D::QueueText(string,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color,
                                                                                      valuetype [Engine]Engine.Graphics.TextAnchor,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32)
    IL_00ab:  ldarg.0
    IL_00ac:  ldfld      bool Game.TextBoxWidget::m_hasFocus
    IL_00b1:  brfalse    IL_02a5

    IL_00b6:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_00bb:  ldarg.0
    IL_00bc:  ldfld      float64 Game.TextBoxWidget::m_focusStartTime
    IL_00c1:  sub
    IL_00c2:  ldc.r8     0.5
    IL_00cb:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_00d0:  ldc.r8     0.25
    IL_00d9:  bge.un     IL_02a5

    IL_00de:  ldarg.0
    IL_00df:  call       instance class [Engine]Engine.Media.BitmapFont Game.TextBoxWidget::get_Font()
    IL_00e4:  ldarg.0
    IL_00e5:  call       instance string Game.TextBoxWidget::get_Text()
    IL_00ea:  ldarg.0
    IL_00eb:  call       instance int32 Game.TextBoxWidget::get_CaretPosition()
    IL_00f0:  ldarg.0
    IL_00f1:  call       instance float32 Game.TextBoxWidget::get_FontScale()
    IL_00f6:  call       float32 Game.WidgetsManager::get_Scale()
    IL_00fb:  mul
    IL_00fc:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0101:  ldarg.0
    IL_0102:  call       instance float32 Game.TextBoxWidget::get_FontSpacing()
    IL_0107:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_010c:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::CalculateCharacterPosition(string,
                                                                                                      int32,
                                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                                      valuetype [Engine]Engine.Vector2)
    IL_0111:  stloc.1
    IL_0112:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0117:  ldarg.0
    IL_0118:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_011d:  ldc.r4     0.0
    IL_0122:  ldarg.0
    IL_0123:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0128:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_012d:  ldc.r4     2.
    IL_0132:  div
    IL_0133:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0138:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_013d:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0142:  ldloc.1
    IL_0143:  ldarg.0
    IL_0144:  ldfld      float32 Game.TextBoxWidget::m_scroll
    IL_0149:  call       float32 Game.WidgetsManager::get_Scale()
    IL_014e:  mul
    IL_014f:  sub
    IL_0150:  ldc.r4     0.0
    IL_0155:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_015a:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_015f:  stloc.2
    IL_0160:  ldarg.0
    IL_0161:  ldfld      bool Game.TextBoxWidget::m_hasFocus
    IL_0166:  brfalse    IL_021b

    IL_016b:  ldloc.2
    IL_016c:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0171:  ldarg.0
    IL_0172:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0177:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_017c:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0181:  mul
    IL_0182:  bge.un.s   IL_01b9

    IL_0184:  ldarg.0
    IL_0185:  ldarg.0
    IL_0186:  ldfld      float32 Game.TextBoxWidget::m_scroll
    IL_018b:  ldarg.0
    IL_018c:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0191:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0196:  call       float32 Game.WidgetsManager::get_Scale()
    IL_019b:  mul
    IL_019c:  ldloc.2
    IL_019d:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_01a2:  sub
    IL_01a3:  call       float32 Game.WidgetsManager::get_Scale()
    IL_01a8:  div
    IL_01a9:  sub
    IL_01aa:  ldc.r4     0.0
    IL_01af:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_01b4:  stfld      float32 Game.TextBoxWidget::m_scroll
    IL_01b9:  ldloc.2
    IL_01ba:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_01bf:  ldarg.0
    IL_01c0:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_01c5:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_01ca:  ldarg.0
    IL_01cb:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_01d0:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_01d5:  add
    IL_01d6:  call       float32 Game.WidgetsManager::get_Scale()
    IL_01db:  mul
    IL_01dc:  ble.un.s   IL_021b

    IL_01de:  ldarg.0
    IL_01df:  ldarg.0
    IL_01e0:  ldfld      float32 Game.TextBoxWidget::m_scroll
    IL_01e5:  ldloc.2
    IL_01e6:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_01eb:  ldarg.0
    IL_01ec:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_01f1:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_01f6:  ldarg.0
    IL_01f7:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_01fc:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0201:  add
    IL_0202:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0207:  mul
    IL_0208:  sub
    IL_0209:  ldc.r4     1.
    IL_020e:  add
    IL_020f:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0214:  div
    IL_0215:  add
    IL_0216:  stfld      float32 Game.TextBoxWidget::m_scroll
    IL_021b:  ldarg.0
    IL_021c:  ldfld      class [Engine]Engine.Graphics.FlatBatch2D Game.TextBoxWidget::m_flatBatch
    IL_0221:  ldloc.2
    IL_0222:  ldc.r4     0.0
    IL_0227:  ldarg.0
    IL_0228:  call       instance class [Engine]Engine.Media.BitmapFont Game.TextBoxWidget::get_Font()
    IL_022d:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::get_GlyphHeight()
    IL_0232:  ldc.r4     2.
    IL_0237:  div
    IL_0238:  call       float32 Game.WidgetsManager::get_Scale()
    IL_023d:  mul
    IL_023e:  ldarg.0
    IL_023f:  call       instance float32 Game.TextBoxWidget::get_FontScale()
    IL_0244:  mul
    IL_0245:  ldarg.0
    IL_0246:  call       instance class [Engine]Engine.Media.BitmapFont Game.TextBoxWidget::get_Font()
    IL_024b:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::get_Scale()
    IL_0250:  mul
    IL_0251:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0256:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_025b:  ldloc.2
    IL_025c:  ldc.r4     1.
    IL_0261:  ldarg.0
    IL_0262:  call       instance class [Engine]Engine.Media.BitmapFont Game.TextBoxWidget::get_Font()
    IL_0267:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::get_GlyphHeight()
    IL_026c:  ldc.r4     2.
    IL_0271:  div
    IL_0272:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0277:  mul
    IL_0278:  ldarg.0
    IL_0279:  call       instance float32 Game.TextBoxWidget::get_FontScale()
    IL_027e:  mul
    IL_027f:  ldarg.0
    IL_0280:  call       instance class [Engine]Engine.Media.BitmapFont Game.TextBoxWidget::get_Font()
    IL_0285:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::get_Scale()
    IL_028a:  mul
    IL_028b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0290:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0295:  ldc.r4     0.0
    IL_029a:  ldarg.0
    IL_029b:  call       instance valuetype [Engine]Engine.Color Game.TextBoxWidget::get_Color()
    IL_02a0:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_02a5:  ret
  } // end of method TextBoxWidget::Draw

  .method private hidebysig instance void 
          EnterText(string s) cil managed
  {
    // 代码大小       250 (0xfa)
    .maxstack  4
    .locals init (string V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance bool Game.TextBoxWidget::get_OverwriteMode()
    IL_0006:  brfalse    IL_008d

    IL_000b:  ldarg.0
    IL_000c:  call       instance int32 Game.TextBoxWidget::get_CaretPosition()
    IL_0011:  ldarg.1
    IL_0012:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0017:  add
    IL_0018:  ldarg.0
    IL_0019:  call       instance int32 Game.TextBoxWidget::get_MaximumLength()
    IL_001e:  bgt        IL_00f9

    IL_0023:  ldarg.0
    IL_0024:  call       instance int32 Game.TextBoxWidget::get_CaretPosition()
    IL_0029:  ldarg.0
    IL_002a:  ldfld      string Game.TextBoxWidget::m_text
    IL_002f:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0034:  bge.s      IL_0067

    IL_0036:  ldarg.0
    IL_0037:  call       instance string Game.TextBoxWidget::get_Text()
    IL_003c:  stloc.0
    IL_003d:  ldloc.0
    IL_003e:  ldarg.0
    IL_003f:  call       instance int32 Game.TextBoxWidget::get_CaretPosition()
    IL_0044:  ldarg.1
    IL_0045:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_004a:  callvirt   instance string [System.Runtime]System.String::Remove(int32,
                                                                               int32)
    IL_004f:  stloc.0
    IL_0050:  ldloc.0
    IL_0051:  ldarg.0
    IL_0052:  call       instance int32 Game.TextBoxWidget::get_CaretPosition()
    IL_0057:  ldarg.1
    IL_0058:  callvirt   instance string [System.Runtime]System.String::Insert(int32,
                                                                               string)
    IL_005d:  stloc.0
    IL_005e:  ldarg.0
    IL_005f:  ldloc.0
    IL_0060:  call       instance void Game.TextBoxWidget::set_Text(string)
    IL_0065:  br.s       IL_0079

    IL_0067:  ldarg.0
    IL_0068:  ldarg.0
    IL_0069:  ldfld      string Game.TextBoxWidget::m_text
    IL_006e:  ldarg.1
    IL_006f:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0074:  call       instance void Game.TextBoxWidget::set_Text(string)
    IL_0079:  ldarg.0
    IL_007a:  ldarg.0
    IL_007b:  call       instance int32 Game.TextBoxWidget::get_CaretPosition()
    IL_0080:  ldarg.1
    IL_0081:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0086:  add
    IL_0087:  call       instance void Game.TextBoxWidget::set_CaretPosition(int32)
    IL_008c:  ret

    IL_008d:  ldarg.0
    IL_008e:  ldfld      string Game.TextBoxWidget::m_text
    IL_0093:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0098:  ldarg.1
    IL_0099:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_009e:  add
    IL_009f:  ldarg.0
    IL_00a0:  call       instance int32 Game.TextBoxWidget::get_MaximumLength()
    IL_00a5:  bgt.s      IL_00f9

    IL_00a7:  ldarg.0
    IL_00a8:  call       instance int32 Game.TextBoxWidget::get_CaretPosition()
    IL_00ad:  ldarg.0
    IL_00ae:  ldfld      string Game.TextBoxWidget::m_text
    IL_00b3:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_00b8:  bge.s      IL_00d4

    IL_00ba:  ldarg.0
    IL_00bb:  ldarg.0
    IL_00bc:  call       instance string Game.TextBoxWidget::get_Text()
    IL_00c1:  ldarg.0
    IL_00c2:  call       instance int32 Game.TextBoxWidget::get_CaretPosition()
    IL_00c7:  ldarg.1
    IL_00c8:  callvirt   instance string [System.Runtime]System.String::Insert(int32,
                                                                               string)
    IL_00cd:  call       instance void Game.TextBoxWidget::set_Text(string)
    IL_00d2:  br.s       IL_00e6

    IL_00d4:  ldarg.0
    IL_00d5:  ldarg.0
    IL_00d6:  ldfld      string Game.TextBoxWidget::m_text
    IL_00db:  ldarg.1
    IL_00dc:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_00e1:  call       instance void Game.TextBoxWidget::set_Text(string)
    IL_00e6:  ldarg.0
    IL_00e7:  ldarg.0
    IL_00e8:  call       instance int32 Game.TextBoxWidget::get_CaretPosition()
    IL_00ed:  ldarg.1
    IL_00ee:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_00f3:  add
    IL_00f4:  call       instance void Game.TextBoxWidget::set_CaretPosition(int32)
    IL_00f9:  ret
  } // end of method TextBoxWidget::EnterText

  .method private hidebysig instance void 
          '<set_HasFocus>b__43_0'(string text) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.TextBoxWidget::set_Text(string)
    IL_0007:  ret
  } // end of method TextBoxWidget::'<set_HasFocus>b__43_0'

  .event class [System.Runtime]System.Action`1<class Game.TextBoxWidget> TextChanged
  {
    .addon instance void Game.TextBoxWidget::add_TextChanged(class [System.Runtime]System.Action`1<class Game.TextBoxWidget>)
    .removeon instance void Game.TextBoxWidget::remove_TextChanged(class [System.Runtime]System.Action`1<class Game.TextBoxWidget>)
  } // end of event TextBoxWidget::TextChanged
  .event class [System.Runtime]System.Action`1<class Game.TextBoxWidget> Enter
  {
    .addon instance void Game.TextBoxWidget::add_Enter(class [System.Runtime]System.Action`1<class Game.TextBoxWidget>)
    .removeon instance void Game.TextBoxWidget::remove_Enter(class [System.Runtime]System.Action`1<class Game.TextBoxWidget>)
  } // end of event TextBoxWidget::Enter
  .event class [System.Runtime]System.Action`1<class Game.TextBoxWidget> Escape
  {
    .addon instance void Game.TextBoxWidget::add_Escape(class [System.Runtime]System.Action`1<class Game.TextBoxWidget>)
    .removeon instance void Game.TextBoxWidget::remove_Escape(class [System.Runtime]System.Action`1<class Game.TextBoxWidget>)
  } // end of event TextBoxWidget::Escape
  .property instance valuetype [Engine]Engine.Vector2
          Size()
  {
    .get instance valuetype [Engine]Engine.Vector2 Game.TextBoxWidget::get_Size()
    .set instance void Game.TextBoxWidget::set_Size(valuetype [Engine]Engine.Vector2)
  } // end of property TextBoxWidget::Size
  .property instance string Title()
  {
    .get instance string Game.TextBoxWidget::get_Title()
    .set instance void Game.TextBoxWidget::set_Title(string)
  } // end of property TextBoxWidget::Title
  .property instance string Description()
  {
    .get instance string Game.TextBoxWidget::get_Description()
    .set instance void Game.TextBoxWidget::set_Description(string)
  } // end of property TextBoxWidget::Description
  .property instance string Text()
  {
    .get instance string Game.TextBoxWidget::get_Text()
    .set instance void Game.TextBoxWidget::set_Text(string)
  } // end of property TextBoxWidget::Text
  .property instance int32 MaximumLength()
  {
    .get instance int32 Game.TextBoxWidget::get_MaximumLength()
    .set instance void Game.TextBoxWidget::set_MaximumLength(int32)
  } // end of property TextBoxWidget::MaximumLength
  .property instance bool OverwriteMode()
  {
    .get instance bool Game.TextBoxWidget::get_OverwriteMode()
    .set instance void Game.TextBoxWidget::set_OverwriteMode(bool)
  } // end of property TextBoxWidget::OverwriteMode
  .property instance bool HasFocus()
  {
    .get instance bool Game.TextBoxWidget::get_HasFocus()
    .set instance void Game.TextBoxWidget::set_HasFocus(bool)
  } // end of property TextBoxWidget::HasFocus
  .property instance class [Engine]Engine.Media.BitmapFont
          Font()
  {
    .get instance class [Engine]Engine.Media.BitmapFont Game.TextBoxWidget::get_Font()
    .set instance void Game.TextBoxWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
  } // end of property TextBoxWidget::Font
  .property instance float32 FontScale()
  {
    .get instance float32 Game.TextBoxWidget::get_FontScale()
    .set instance void Game.TextBoxWidget::set_FontScale(float32)
  } // end of property TextBoxWidget::FontScale
  .property instance float32 FontSpacing()
  {
    .get instance float32 Game.TextBoxWidget::get_FontSpacing()
    .set instance void Game.TextBoxWidget::set_FontSpacing(float32)
  } // end of property TextBoxWidget::FontSpacing
  .property instance valuetype [Engine]Engine.Color
          Color()
  {
    .get instance valuetype [Engine]Engine.Color Game.TextBoxWidget::get_Color()
    .set instance void Game.TextBoxWidget::set_Color(valuetype [Engine]Engine.Color)
  } // end of property TextBoxWidget::Color
  .property instance int32 CaretPosition()
  {
    .get instance int32 Game.TextBoxWidget::get_CaretPosition()
    .set instance void Game.TextBoxWidget::set_CaretPosition(int32)
  } // end of property TextBoxWidget::CaretPosition
} // end of class Game.TextBoxWidget