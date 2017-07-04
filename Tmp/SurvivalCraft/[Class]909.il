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
  .field private class [System.Runtime]System.Action`1<class Game.TextBoxWidget> FocusLost
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private string '<Title>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private string '<Description>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<OverwriteMode>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<FontScale>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Vector2 '<FontSpacing>k__BackingField'
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

  .method public hidebysig specialname instance void 
          add_FocusLost(class [System.Runtime]System.Action`1<class Game.TextBoxWidget> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<class Game.TextBoxWidget> V_0,
             class [System.Runtime]System.Action`1<class Game.TextBoxWidget> V_1,
             class [System.Runtime]System.Action`1<class Game.TextBoxWidget> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<class Game.TextBoxWidget> Game.TextBoxWidget::FocusLost
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
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<class Game.TextBoxWidget> Game.TextBoxWidget::FocusLost
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
  } // end of method TextBoxWidget::add_FocusLost

  .method public hidebysig specialname instance void 
          remove_FocusLost(class [System.Runtime]System.Action`1<class Game.TextBoxWidget> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<class Game.TextBoxWidget> V_0,
             class [System.Runtime]System.Action`1<class Game.TextBoxWidget> V_1,
             class [System.Runtime]System.Action`1<class Game.TextBoxWidget> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<class Game.TextBoxWidget> Game.TextBoxWidget::FocusLost
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
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<class Game.TextBoxWidget> Game.TextBoxWidget::FocusLost
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
  } // end of method TextBoxWidget::remove_FocusLost

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
    // 代码大小       82 (0x52)
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
    IL_002b:  brfalse.s  IL_0051

    IL_002d:  ldarg.0
    IL_002e:  ldloc.0
    IL_002f:  stfld      string Game.TextBoxWidget::m_text
    IL_0034:  ldarg.0
    IL_0035:  ldarg.0
    IL_0036:  call       instance int32 Game.TextBoxWidget::get_CaretPosition()
    IL_003b:  call       instance void Game.TextBoxWidget::set_CaretPosition(int32)
    IL_0040:  ldarg.0
    IL_0041:  ldfld      class [System.Runtime]System.Action`1<class Game.TextBoxWidget> Game.TextBoxWidget::TextChanged
    IL_0046:  dup
    IL_0047:  brtrue.s   IL_004b

    IL_0049:  pop
    IL_004a:  ret

    IL_004b:  ldarg.0
    IL_004c:  callvirt   instance void class [System.Runtime]System.Action`1<class Game.TextBoxWidget>::Invoke(!0)
    IL_0051:  ret
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
    // 代码大小       92 (0x5c)
    .maxstack  6
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      bool Game.TextBoxWidget::m_hasFocus
    IL_0007:  beq.s      IL_005b

    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  stfld      bool Game.TextBoxWidget::m_hasFocus
    IL_0010:  ldarg.1
    IL_0011:  brfalse.s  IL_004a

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
    IL_0038:  ldftn      instance void Game.TextBoxWidget::'<set_HasFocus>b__46_0'(string)
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

    IL_004a:  ldarg.0
    IL_004b:  ldfld      class [System.Runtime]System.Action`1<class Game.TextBoxWidget> Game.TextBoxWidget::FocusLost
    IL_0050:  dup
    IL_0051:  brtrue.s   IL_0055

    IL_0053:  pop
    IL_0054:  ret

    IL_0055:  ldarg.0
    IL_0056:  callvirt   instance void class [System.Runtime]System.Action`1<class Game.TextBoxWidget>::Invoke(!0)
    IL_005b:  ret
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

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector2 
          get_FontSpacing() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector2 Game.TextBoxWidget::'<FontSpacing>k__BackingField'
    IL_0006:  ret
  } // end of method TextBoxWidget::get_FontSpacing

  .method public hidebysig specialname instance void 
          set_FontSpacing(valuetype [Engine]Engine.Vector2 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector2 Game.TextBoxWidget::'<FontSpacing>k__BackingField'
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
    // 代码大小       595 (0x253)
    .maxstack  4
    .locals init (valuetype [System.Runtime]System.Nullable`1<char> V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Input.Key> V_1,
             bool V_2,
             valuetype [Engine]Engine.Input.Key V_3,
             int32 V_4,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2> V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.TextBoxWidget::m_hasFocus
    IL_0006:  brfalse    IL_01f1

    IL_000b:  ldarg.0
    IL_000c:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0011:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<char> Game.WidgetInput::get_LastChar()
    IL_0016:  stloc.0
    IL_0017:  ldloca.s   V_0
    IL_0019:  call       instance bool valuetype [System.Runtime]System.Nullable`1<char>::get_HasValue()
    IL_001e:  brfalse.s  IL_0072

    IL_0020:  ldarg.0
    IL_0021:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0026:  ldc.i4.2
    IL_0027:  callvirt   instance bool Game.WidgetInput::IsKeyDown(valuetype [Engine]Engine.Input.Key)
    IL_002c:  brtrue.s   IL_0072

    IL_002e:  ldarg.0
    IL_002f:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0034:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<char> Game.WidgetInput::get_LastChar()
    IL_0039:  stloc.0
    IL_003a:  ldloca.s   V_0
    IL_003c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<char>::get_Value()
    IL_0041:  call       bool [System.Runtime]System.Char::IsControl(char)
    IL_0046:  brtrue.s   IL_0072

    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_004f:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<char> Game.WidgetInput::get_LastChar()
    IL_0054:  stloc.0
    IL_0055:  ldloca.s   V_0
    IL_0057:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<char>::get_Value()
    IL_005c:  ldc.i4.1
    IL_005d:  newobj     instance void [System.Runtime]System.String::.ctor(char,
                                                                            int32)
    IL_0062:  call       instance void Game.TextBoxWidget::EnterText(string)
    IL_0067:  ldarg.0
    IL_0068:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_006d:  callvirt   instance void Game.WidgetInput::Clear()
    IL_0072:  ldarg.0
    IL_0073:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0078:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Input.Key> Game.WidgetInput::get_LastKey()
    IL_007d:  stloc.1
    IL_007e:  ldloca.s   V_1
    IL_0080:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Input.Key>::get_HasValue()
    IL_0085:  brfalse    IL_01f1

    IL_008a:  ldc.i4.0
    IL_008b:  stloc.2
    IL_008c:  ldarg.0
    IL_008d:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0092:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Input.Key> Game.WidgetInput::get_LastKey()
    IL_0097:  stloc.1
    IL_0098:  ldloca.s   V_1
    IL_009a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Input.Key>::get_Value()
    IL_009f:  stloc.3
    IL_00a0:  ldloc.3
    IL_00a1:  ldc.i4.s   52
    IL_00a3:  bne.un.s   IL_00c5

    IL_00a5:  ldarg.0
    IL_00a6:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_00ab:  ldc.i4.2
    IL_00ac:  callvirt   instance bool Game.WidgetInput::IsKeyDown(valuetype [Engine]Engine.Input.Key)
    IL_00b1:  brfalse.s  IL_00c5

    IL_00b3:  ldarg.0
    IL_00b4:  call       string Game.ClipboardManager::get_ClipboardString()
    IL_00b9:  call       instance void Game.TextBoxWidget::EnterText(string)
    IL_00be:  ldc.i4.1
    IL_00bf:  stloc.2
    IL_00c0:  br         IL_01e3

    IL_00c5:  ldloc.3
    IL_00c6:  ldc.i4.s   23
    IL_00c8:  bne.un.s   IL_0104

    IL_00ca:  ldarg.0
    IL_00cb:  call       instance int32 Game.TextBoxWidget::get_CaretPosition()
    IL_00d0:  ldc.i4.0
    IL_00d1:  ble.s      IL_0104

    IL_00d3:  ldarg.0
    IL_00d4:  call       instance int32 Game.TextBoxWidget::get_CaretPosition()
    IL_00d9:  stloc.s    V_4
    IL_00db:  ldarg.0
    IL_00dc:  ldloc.s    V_4
    IL_00de:  ldc.i4.1
    IL_00df:  sub
    IL_00e0:  call       instance void Game.TextBoxWidget::set_CaretPosition(int32)
    IL_00e5:  ldarg.0
    IL_00e6:  ldarg.0
    IL_00e7:  call       instance string Game.TextBoxWidget::get_Text()
    IL_00ec:  ldarg.0
    IL_00ed:  call       instance int32 Game.TextBoxWidget::get_CaretPosition()
    IL_00f2:  ldc.i4.1
    IL_00f3:  callvirt   instance string [System.Runtime]System.String::Remove(int32,
                                                                               int32)
    IL_00f8:  call       instance void Game.TextBoxWidget::set_Text(string)
    IL_00fd:  ldc.i4.1
    IL_00fe:  stloc.2
    IL_00ff:  br         IL_01e3

    IL_0104:  ldloc.3
    IL_0105:  ldc.i4.s   25
    IL_0107:  bne.un.s   IL_013e

    IL_0109:  ldarg.0
    IL_010a:  call       instance int32 Game.TextBoxWidget::get_CaretPosition()
    IL_010f:  ldarg.0
    IL_0110:  ldfld      string Game.TextBoxWidget::m_text
    IL_0115:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_011a:  bge        IL_01e3

    IL_011f:  ldarg.0
    IL_0120:  ldarg.0
    IL_0121:  call       instance string Game.TextBoxWidget::get_Text()
    IL_0126:  ldarg.0
    IL_0127:  call       instance int32 Game.TextBoxWidget::get_CaretPosition()
    IL_012c:  ldc.i4.1
    IL_012d:  callvirt   instance string [System.Runtime]System.String::Remove(int32,
                                                                               int32)
    IL_0132:  call       instance void Game.TextBoxWidget::set_Text(string)
    IL_0137:  ldc.i4.1
    IL_0138:  stloc.2
    IL_0139:  br         IL_01e3

    IL_013e:  ldloc.3
    IL_013f:  ldc.i4.s   15
    IL_0141:  bne.un.s   IL_015c

    IL_0143:  ldarg.0
    IL_0144:  call       instance int32 Game.TextBoxWidget::get_CaretPosition()
    IL_0149:  stloc.s    V_4
    IL_014b:  ldarg.0
    IL_014c:  ldloc.s    V_4
    IL_014e:  ldc.i4.1
    IL_014f:  sub
    IL_0150:  call       instance void Game.TextBoxWidget::set_CaretPosition(int32)
    IL_0155:  ldc.i4.1
    IL_0156:  stloc.2
    IL_0157:  br         IL_01e3

    IL_015c:  ldloc.3
    IL_015d:  ldc.i4.s   16
    IL_015f:  bne.un.s   IL_0177

    IL_0161:  ldarg.0
    IL_0162:  call       instance int32 Game.TextBoxWidget::get_CaretPosition()
    IL_0167:  stloc.s    V_4
    IL_0169:  ldarg.0
    IL_016a:  ldloc.s    V_4
    IL_016c:  ldc.i4.1
    IL_016d:  add
    IL_016e:  call       instance void Game.TextBoxWidget::set_CaretPosition(int32)
    IL_0173:  ldc.i4.1
    IL_0174:  stloc.2
    IL_0175:  br.s       IL_01e3

    IL_0177:  ldloc.3
    IL_0178:  ldc.i4.s   28
    IL_017a:  bne.un.s   IL_0187

    IL_017c:  ldarg.0
    IL_017d:  ldc.i4.0
    IL_017e:  call       instance void Game.TextBoxWidget::set_CaretPosition(int32)
    IL_0183:  ldc.i4.1
    IL_0184:  stloc.2
    IL_0185:  br.s       IL_01e3

    IL_0187:  ldloc.3
    IL_0188:  ldc.i4.s   29
    IL_018a:  bne.un.s   IL_01a1

    IL_018c:  ldarg.0
    IL_018d:  ldarg.0
    IL_018e:  ldfld      string Game.TextBoxWidget::m_text
    IL_0193:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0198:  call       instance void Game.TextBoxWidget::set_CaretPosition(int32)
    IL_019d:  ldc.i4.1
    IL_019e:  stloc.2
    IL_019f:  br.s       IL_01e3

    IL_01a1:  ldloc.3
    IL_01a2:  ldc.i4.s   19
    IL_01a4:  bne.un.s   IL_01c3

    IL_01a6:  ldc.i4.1
    IL_01a7:  stloc.2
    IL_01a8:  ldarg.0
    IL_01a9:  ldc.i4.0
    IL_01aa:  call       instance void Game.TextBoxWidget::set_HasFocus(bool)
    IL_01af:  ldarg.0
    IL_01b0:  ldfld      class [System.Runtime]System.Action`1<class Game.TextBoxWidget> Game.TextBoxWidget::Enter
    IL_01b5:  dup
    IL_01b6:  brtrue.s   IL_01bb

    IL_01b8:  pop
    IL_01b9:  br.s       IL_01e3

    IL_01bb:  ldarg.0
    IL_01bc:  callvirt   instance void class [System.Runtime]System.Action`1<class Game.TextBoxWidget>::Invoke(!0)
    IL_01c1:  br.s       IL_01e3

    IL_01c3:  ldloc.3
    IL_01c4:  ldc.i4.s   20
    IL_01c6:  bne.un.s   IL_01e3

    IL_01c8:  ldc.i4.1
    IL_01c9:  stloc.2
    IL_01ca:  ldarg.0
    IL_01cb:  ldc.i4.0
    IL_01cc:  call       instance void Game.TextBoxWidget::set_HasFocus(bool)
    IL_01d1:  ldarg.0
    IL_01d2:  ldfld      class [System.Runtime]System.Action`1<class Game.TextBoxWidget> Game.TextBoxWidget::Escape
    IL_01d7:  dup
    IL_01d8:  brtrue.s   IL_01dd

    IL_01da:  pop
    IL_01db:  br.s       IL_01e3

    IL_01dd:  ldarg.0
    IL_01de:  callvirt   instance void class [System.Runtime]System.Action`1<class Game.TextBoxWidget>::Invoke(!0)
    IL_01e3:  ldloc.2
    IL_01e4:  brfalse.s  IL_01f1

    IL_01e6:  ldarg.0
    IL_01e7:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_01ec:  callvirt   instance void Game.WidgetInput::Clear()
    IL_01f1:  ldarg.0
    IL_01f2:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_01f7:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2> Game.WidgetInput::get_Click()
    IL_01fc:  stloc.s    V_5
    IL_01fe:  ldloca.s   V_5
    IL_0200:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2>::get_HasValue()
    IL_0205:  brfalse.s  IL_0252

    IL_0207:  ldarg.0
    IL_0208:  ldarg.0
    IL_0209:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_020e:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2> Game.WidgetInput::get_Click()
    IL_0213:  stloc.s    V_5
    IL_0215:  ldloca.s   V_5
    IL_0217:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2>::get_Value()
    IL_021c:  ldfld      valuetype [Engine]Engine.Vector2 Game.Segment2::Start
    IL_0221:  call       class Game.Widget Game.WidgetsManager::HitTest(valuetype [Engine]Engine.Vector2)
    IL_0226:  ldarg.0
    IL_0227:  bne.un.s   IL_024c

    IL_0229:  ldarg.0
    IL_022a:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_022f:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2> Game.WidgetInput::get_Click()
    IL_0234:  stloc.s    V_5
    IL_0236:  ldloca.s   V_5
    IL_0238:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.Segment2>::get_Value()
    IL_023d:  ldfld      valuetype [Engine]Engine.Vector2 Game.Segment2::End
    IL_0242:  call       class Game.Widget Game.WidgetsManager::HitTest(valuetype [Engine]Engine.Vector2)
    IL_0247:  ldarg.0
    IL_0248:  ceq
    IL_024a:  br.s       IL_024d

    IL_024c:  ldc.i4.0
    IL_024d:  call       instance void Game.TextBoxWidget::set_HasFocus(bool)
    IL_0252:  ret
  } // end of method TextBoxWidget::Update

  .method public hidebysig virtual instance void 
          MeasureOverride(valuetype [Engine]Engine.Vector2 parentAvailableSize) cil managed
  {
    // 代码大小       184 (0xb8)
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
    IL_0031:  brtrue.s   IL_005c

    IL_0033:  ldarg.0
    IL_0034:  ldarg.0
    IL_0035:  call       instance class [Engine]Engine.Media.BitmapFont Game.TextBoxWidget::get_Font()
    IL_003a:  ldstr      " "
    IL_003f:  ldarg.0
    IL_0040:  call       instance float32 Game.TextBoxWidget::get_FontScale()
    IL_0045:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_004a:  ldarg.0
    IL_004b:  call       instance valuetype [Engine]Engine.Vector2 Game.TextBoxWidget::get_FontSpacing()
    IL_0050:  callvirt   instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Media.BitmapFont::MeasureText(string,
                                                                                                                valuetype [Engine]Engine.Vector2,
                                                                                                                valuetype [Engine]Engine.Vector2)
    IL_0055:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_005a:  br.s       IL_0084

    IL_005c:  ldarg.0
    IL_005d:  ldarg.0
    IL_005e:  call       instance class [Engine]Engine.Media.BitmapFont Game.TextBoxWidget::get_Font()
    IL_0063:  ldarg.0
    IL_0064:  call       instance string Game.TextBoxWidget::get_Text()
    IL_0069:  ldarg.0
    IL_006a:  call       instance float32 Game.TextBoxWidget::get_FontScale()
    IL_006f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0074:  ldarg.0
    IL_0075:  call       instance valuetype [Engine]Engine.Vector2 Game.TextBoxWidget::get_FontSpacing()
    IL_007a:  callvirt   instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Media.BitmapFont::MeasureText(string,
                                                                                                                valuetype [Engine]Engine.Vector2,
                                                                                                                valuetype [Engine]Engine.Vector2)
    IL_007f:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_0084:  ldarg.0
    IL_0085:  ldarg.0
    IL_0086:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_DesiredSize()
    IL_008b:  ldc.r4     1.
    IL_0090:  ldarg.0
    IL_0091:  call       instance float32 Game.TextBoxWidget::get_FontScale()
    IL_0096:  mul
    IL_0097:  ldarg.0
    IL_0098:  call       instance class [Engine]Engine.Media.BitmapFont Game.TextBoxWidget::get_Font()
    IL_009d:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::get_Scale()
    IL_00a2:  mul
    IL_00a3:  ldc.r4     0.0
    IL_00a8:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00ad:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_00b2:  call       instance void Game.Widget::set_DesiredSize(valuetype [Engine]Engine.Vector2)
    IL_00b7:  ret
  } // end of method TextBoxWidget::MeasureOverride

  .method public hidebysig virtual instance void 
          Draw() cil managed
  {
    // 代码大小       603 (0x25b)
    .maxstack  9
    .locals init (valuetype [Engine]Engine.Color V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             int32 V_2,
             float32 V_3,
             valuetype [Engine]Engine.Vector2 V_4,
             int32 V_5)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [Engine]Engine.Color Game.TextBoxWidget::get_Color()
    IL_0006:  ldarg.0
    IL_0007:  call       instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_000c:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0011:  stloc.0
    IL_0012:  ldarg.0
    IL_0013:  ldfld      string Game.TextBoxWidget::m_text
    IL_0018:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_001d:  brtrue     IL_00bb

    IL_0022:  ldloca.s   V_1
    IL_0024:  ldarg.0
    IL_0025:  ldfld      float32 Game.TextBoxWidget::m_scroll
    IL_002a:  neg
    IL_002b:  ldarg.0
    IL_002c:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0031:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0036:  ldc.r4     2.
    IL_003b:  div
    IL_003c:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0041:  ldarg.0
    IL_0042:  ldfld      class [Engine]Engine.Graphics.FontBatch2D Game.TextBoxWidget::m_fontBatch
    IL_0047:  brtrue.s   IL_0068

    IL_0049:  ldarg.0
    IL_004a:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
    IL_004f:  ldarg.0
    IL_0050:  call       instance class [Engine]Engine.Media.BitmapFont Game.TextBoxWidget::get_Font()
    IL_0055:  ldc.i4.1
    IL_0056:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_005b:  ldnull
    IL_005c:  ldnull
    IL_005d:  ldnull
    IL_005e:  callvirt   instance class [Engine]Engine.Graphics.FontBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::FontBatch(class [Engine]Engine.Media.BitmapFont,
                                                                                                                                    int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState,
                                                                                                                                    class [Engine]Engine.Graphics.SamplerState)
    IL_0063:  stfld      class [Engine]Engine.Graphics.FontBatch2D Game.TextBoxWidget::m_fontBatch
    IL_0068:  ldarg.0
    IL_0069:  ldfld      class [Engine]Engine.Graphics.FontBatch2D Game.TextBoxWidget::m_fontBatch
    IL_006e:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture> [Engine]Engine.Graphics.BaseFontBatch::TriangleVertices
    IL_0073:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Count()
    IL_0078:  stloc.2
    IL_0079:  ldarg.0
    IL_007a:  ldfld      class [Engine]Engine.Graphics.FontBatch2D Game.TextBoxWidget::m_fontBatch
    IL_007f:  ldarg.0
    IL_0080:  call       instance string Game.TextBoxWidget::get_Text()
    IL_0085:  ldloc.1
    IL_0086:  ldc.r4     0.0
    IL_008b:  ldloc.0
    IL_008c:  ldc.i4.2
    IL_008d:  ldarg.0
    IL_008e:  call       instance float32 Game.TextBoxWidget::get_FontScale()
    IL_0093:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_0098:  ldarg.0
    IL_0099:  call       instance valuetype [Engine]Engine.Vector2 Game.TextBoxWidget::get_FontSpacing()
    IL_009e:  ldc.r4     0.0
    IL_00a3:  callvirt   instance void [Engine]Engine.Graphics.FontBatch2D::QueueText(string,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color,
                                                                                      valuetype [Engine]Engine.Graphics.TextAnchor,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32)
    IL_00a8:  ldarg.0
    IL_00a9:  ldfld      class [Engine]Engine.Graphics.FontBatch2D Game.TextBoxWidget::m_fontBatch
    IL_00ae:  ldarg.0
    IL_00af:  call       instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_00b4:  ldloc.2
    IL_00b5:  ldc.i4.m1
    IL_00b6:  callvirt   instance void [Engine]Engine.Graphics.FontBatch2D::TransformTriangles(valuetype [Engine]Engine.Matrix,
                                                                                               int32,
                                                                                               int32)
    IL_00bb:  ldarg.0
    IL_00bc:  ldfld      bool Game.TextBoxWidget::m_hasFocus
    IL_00c1:  brfalse    IL_025a

    IL_00c6:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_00cb:  ldarg.0
    IL_00cc:  ldfld      float64 Game.TextBoxWidget::m_focusStartTime
    IL_00d1:  sub
    IL_00d2:  ldc.r8     0.5
    IL_00db:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_00e0:  ldc.r8     0.25
    IL_00e9:  bge.un     IL_025a

    IL_00ee:  ldarg.0
    IL_00ef:  call       instance class [Engine]Engine.Media.BitmapFont Game.TextBoxWidget::get_Font()
    IL_00f4:  ldarg.0
    IL_00f5:  call       instance string Game.TextBoxWidget::get_Text()
    IL_00fa:  ldarg.0
    IL_00fb:  call       instance int32 Game.TextBoxWidget::get_CaretPosition()
    IL_0100:  ldarg.0
    IL_0101:  call       instance float32 Game.TextBoxWidget::get_FontScale()
    IL_0106:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_010b:  ldarg.0
    IL_010c:  call       instance valuetype [Engine]Engine.Vector2 Game.TextBoxWidget::get_FontSpacing()
    IL_0111:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::CalculateCharacterPosition(string,
                                                                                                      int32,
                                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                                      valuetype [Engine]Engine.Vector2)
    IL_0116:  stloc.3
    IL_0117:  ldc.r4     0.0
    IL_011c:  ldarg.0
    IL_011d:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0122:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0127:  ldc.r4     2.
    IL_012c:  div
    IL_012d:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0132:  ldloc.3
    IL_0133:  ldarg.0
    IL_0134:  ldfld      float32 Game.TextBoxWidget::m_scroll
    IL_0139:  sub
    IL_013a:  ldc.r4     0.0
    IL_013f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0144:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0149:  stloc.s    V_4
    IL_014b:  ldarg.0
    IL_014c:  ldfld      bool Game.TextBoxWidget::m_hasFocus
    IL_0151:  brfalse.s  IL_01b9

    IL_0153:  ldloc.s    V_4
    IL_0155:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_015a:  ldc.r4     0.0
    IL_015f:  bge.un.s   IL_017f

    IL_0161:  ldarg.0
    IL_0162:  ldarg.0
    IL_0163:  ldfld      float32 Game.TextBoxWidget::m_scroll
    IL_0168:  ldloc.s    V_4
    IL_016a:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_016f:  add
    IL_0170:  ldc.r4     0.0
    IL_0175:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_017a:  stfld      float32 Game.TextBoxWidget::m_scroll
    IL_017f:  ldloc.s    V_4
    IL_0181:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0186:  ldarg.0
    IL_0187:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_018c:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0191:  ble.un.s   IL_01b9

    IL_0193:  ldarg.0
    IL_0194:  ldarg.0
    IL_0195:  ldfld      float32 Game.TextBoxWidget::m_scroll
    IL_019a:  ldloc.s    V_4
    IL_019c:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_01a1:  ldarg.0
    IL_01a2:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_01a7:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_01ac:  sub
    IL_01ad:  ldc.r4     1.
    IL_01b2:  add
    IL_01b3:  add
    IL_01b4:  stfld      float32 Game.TextBoxWidget::m_scroll
    IL_01b9:  ldarg.0
    IL_01ba:  ldfld      class [Engine]Engine.Graphics.FlatBatch2D Game.TextBoxWidget::m_flatBatch
    IL_01bf:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColor> [Engine]Engine.Graphics.BaseFlatBatch::TriangleVertices
    IL_01c4:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColor>::get_Count()
    IL_01c9:  stloc.s    V_5
    IL_01cb:  ldarg.0
    IL_01cc:  ldfld      class [Engine]Engine.Graphics.FlatBatch2D Game.TextBoxWidget::m_flatBatch
    IL_01d1:  ldloc.s    V_4
    IL_01d3:  ldc.r4     0.0
    IL_01d8:  ldarg.0
    IL_01d9:  call       instance class [Engine]Engine.Media.BitmapFont Game.TextBoxWidget::get_Font()
    IL_01de:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::get_GlyphHeight()
    IL_01e3:  ldc.r4     2.
    IL_01e8:  div
    IL_01e9:  ldarg.0
    IL_01ea:  call       instance float32 Game.TextBoxWidget::get_FontScale()
    IL_01ef:  mul
    IL_01f0:  ldarg.0
    IL_01f1:  call       instance class [Engine]Engine.Media.BitmapFont Game.TextBoxWidget::get_Font()
    IL_01f6:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::get_Scale()
    IL_01fb:  mul
    IL_01fc:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0201:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Subtraction(valuetype [Engine]Engine.Vector2,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_0206:  ldloc.s    V_4
    IL_0208:  ldc.r4     1.
    IL_020d:  ldarg.0
    IL_020e:  call       instance class [Engine]Engine.Media.BitmapFont Game.TextBoxWidget::get_Font()
    IL_0213:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::get_GlyphHeight()
    IL_0218:  ldc.r4     2.
    IL_021d:  div
    IL_021e:  ldarg.0
    IL_021f:  call       instance float32 Game.TextBoxWidget::get_FontScale()
    IL_0224:  mul
    IL_0225:  ldarg.0
    IL_0226:  call       instance class [Engine]Engine.Media.BitmapFont Game.TextBoxWidget::get_Font()
    IL_022b:  callvirt   instance float32 [Engine]Engine.Media.BitmapFont::get_Scale()
    IL_0230:  mul
    IL_0231:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0236:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_023b:  ldc.r4     0.0
    IL_0240:  ldloc.0
    IL_0241:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color)
    IL_0246:  ldarg.0
    IL_0247:  ldfld      class [Engine]Engine.Graphics.FlatBatch2D Game.TextBoxWidget::m_flatBatch
    IL_024c:  ldarg.0
    IL_024d:  call       instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_0252:  ldloc.s    V_5
    IL_0254:  ldc.i4.m1
    IL_0255:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::TransformTriangles(valuetype [Engine]Engine.Matrix,
                                                                                               int32,
                                                                                               int32)
    IL_025a:  ret
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
          '<set_HasFocus>b__46_0'(string text) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.TextBoxWidget::set_Text(string)
    IL_0007:  ret
  } // end of method TextBoxWidget::'<set_HasFocus>b__46_0'

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
  .event class [System.Runtime]System.Action`1<class Game.TextBoxWidget> FocusLost
  {
    .addon instance void Game.TextBoxWidget::add_FocusLost(class [System.Runtime]System.Action`1<class Game.TextBoxWidget>)
    .removeon instance void Game.TextBoxWidget::remove_FocusLost(class [System.Runtime]System.Action`1<class Game.TextBoxWidget>)
  } // end of event TextBoxWidget::FocusLost
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
  .property instance valuetype [Engine]Engine.Vector2
          FontSpacing()
  {
    .get instance valuetype [Engine]Engine.Vector2 Game.TextBoxWidget::get_FontSpacing()
    .set instance void Game.TextBoxWidget::set_FontSpacing(valuetype [Engine]Engine.Vector2)
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