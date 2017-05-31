.class public auto ansi beforefieldinit Game.ClickableWidget
       extends Game.Widget
{
  .field private bool m_isPressAllowed
  .field private bool m_wasPressed
  .field private string '<SoundName>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<IsPressed>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<IsClicked>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<IsTapped>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance string 
          get_SoundName() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.ClickableWidget::'<SoundName>k__BackingField'
    IL_0006:  ret
  } // end of method ClickableWidget::get_SoundName

  .method public hidebysig specialname instance void 
          set_SoundName(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string Game.ClickableWidget::'<SoundName>k__BackingField'
    IL_0007:  ret
  } // end of method ClickableWidget::set_SoundName

  .method public hidebysig specialname instance bool 
          get_IsPressed() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ClickableWidget::'<IsPressed>k__BackingField'
    IL_0006:  ret
  } // end of method ClickableWidget::get_IsPressed

  .method private hidebysig specialname instance void 
          set_IsPressed(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ClickableWidget::'<IsPressed>k__BackingField'
    IL_0007:  ret
  } // end of method ClickableWidget::set_IsPressed

  .method public hidebysig specialname instance bool 
          get_IsClicked() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ClickableWidget::'<IsClicked>k__BackingField'
    IL_0006:  ret
  } // end of method ClickableWidget::get_IsClicked

  .method private hidebysig specialname instance void 
          set_IsClicked(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ClickableWidget::'<IsClicked>k__BackingField'
    IL_0007:  ret
  } // end of method ClickableWidget::set_IsClicked

  .method public hidebysig specialname instance bool 
          get_IsTapped() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ClickableWidget::'<IsTapped>k__BackingField'
    IL_0006:  ret
  } // end of method ClickableWidget::get_IsTapped

  .method private hidebysig specialname instance void 
          set_IsTapped(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ClickableWidget::'<IsTapped>k__BackingField'
    IL_0007:  ret
  } // end of method ClickableWidget::set_IsTapped

  .method public hidebysig virtual instance void 
          UpdateCeases() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.0
    IL_0002:  call       instance void Game.ClickableWidget::set_IsPressed(bool)
    IL_0007:  ldarg.0
    IL_0008:  ldc.i4.0
    IL_0009:  call       instance void Game.ClickableWidget::set_IsClicked(bool)
    IL_000e:  ldarg.0
    IL_000f:  ldc.i4.0
    IL_0010:  call       instance void Game.ClickableWidget::set_IsTapped(bool)
    IL_0015:  ret
  } // end of method ClickableWidget::UpdateCeases

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       333 (0x14d)
    .maxstack  4
    .locals init (bool V_0,
             valuetype Game.InputState V_1)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldarg.0
    IL_0003:  ldc.i4.0
    IL_0004:  call       instance void Game.ClickableWidget::set_IsClicked(bool)
    IL_0009:  ldarg.0
    IL_000a:  ldc.i4.0
    IL_000b:  call       instance void Game.ClickableWidget::set_IsTapped(bool)
    IL_0010:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0015:  stloc.1
    IL_0016:  ldloca.s   V_1
    IL_0018:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Click
    IL_001d:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0022:  brfalse.s  IL_005e

    IL_0024:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0029:  stloc.1
    IL_002a:  ldloca.s   V_1
    IL_002c:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Click
    IL_0031:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0036:  call       class Game.Widget Game.WidgetsManager::HitTest(valuetype [Engine]Engine.Vector2)
    IL_003b:  ldarg.0
    IL_003c:  bne.un.s   IL_005e

    IL_003e:  ldarg.0
    IL_003f:  ldarg.0
    IL_0040:  call       bool Game.WidgetsManager::IsWidgetEnabled(class Game.Widget)
    IL_0045:  brfalse.s  IL_004f

    IL_0047:  ldarg.0
    IL_0048:  call       bool Game.WidgetsManager::IsWidgetVisible(class Game.Widget)
    IL_004d:  br.s       IL_0050

    IL_004f:  ldc.i4.0
    IL_0050:  stfld      bool Game.ClickableWidget::m_isPressAllowed
    IL_0055:  ldarg.0
    IL_0056:  ldc.i4.1
    IL_0057:  call       instance void Game.ClickableWidget::set_IsTapped(bool)
    IL_005c:  ldc.i4.1
    IL_005d:  stloc.0
    IL_005e:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0063:  stloc.1
    IL_0064:  ldloca.s   V_1
    IL_0066:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Press
    IL_006b:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0070:  brtrue.s   IL_0079

    IL_0072:  ldarg.0
    IL_0073:  ldc.i4.0
    IL_0074:  stfld      bool Game.ClickableWidget::m_isPressAllowed
    IL_0079:  ldarg.0
    IL_007a:  ldfld      bool Game.ClickableWidget::m_isPressAllowed
    IL_007f:  brfalse.s  IL_00ca

    IL_0081:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0086:  stloc.1
    IL_0087:  ldloca.s   V_1
    IL_0089:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Press
    IL_008e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0093:  brfalse.s  IL_00ca

    IL_0095:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_009a:  stloc.1
    IL_009b:  ldloca.s   V_1
    IL_009d:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Press
    IL_00a2:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_00a7:  call       class Game.Widget Game.WidgetsManager::HitTest(valuetype [Engine]Engine.Vector2)
    IL_00ac:  ldarg.0
    IL_00ad:  bne.un.s   IL_00ca

    IL_00af:  ldarg.0
    IL_00b0:  ldarg.0
    IL_00b1:  call       bool Game.WidgetsManager::IsWidgetEnabled(class Game.Widget)
    IL_00b6:  brfalse.s  IL_00c0

    IL_00b8:  ldarg.0
    IL_00b9:  call       bool Game.WidgetsManager::IsWidgetVisible(class Game.Widget)
    IL_00be:  br.s       IL_00c1

    IL_00c0:  ldc.i4.0
    IL_00c1:  call       instance void Game.ClickableWidget::set_IsPressed(bool)
    IL_00c6:  ldc.i4.1
    IL_00c7:  stloc.0
    IL_00c8:  br.s       IL_00d1

    IL_00ca:  ldarg.0
    IL_00cb:  ldc.i4.0
    IL_00cc:  call       instance void Game.ClickableWidget::set_IsPressed(bool)
    IL_00d1:  ldarg.0
    IL_00d2:  ldfld      bool Game.ClickableWidget::m_wasPressed
    IL_00d7:  brfalse.s  IL_0135

    IL_00d9:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_00de:  stloc.1
    IL_00df:  ldloca.s   V_1
    IL_00e1:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Press
    IL_00e6:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_00eb:  brtrue.s   IL_0124

    IL_00ed:  ldarg.0
    IL_00ee:  ldc.i4.0
    IL_00ef:  stfld      bool Game.ClickableWidget::m_wasPressed
    IL_00f4:  ldarg.0
    IL_00f5:  ldc.i4.1
    IL_00f6:  call       instance void Game.ClickableWidget::set_IsClicked(bool)
    IL_00fb:  ldarg.0
    IL_00fc:  call       instance string Game.ClickableWidget::get_SoundName()
    IL_0101:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0106:  brtrue.s   IL_0144

    IL_0108:  ldarg.0
    IL_0109:  call       instance string Game.ClickableWidget::get_SoundName()
    IL_010e:  ldc.r4     1.
    IL_0113:  ldc.r4     0.0
    IL_0118:  ldc.r4     0.0
    IL_011d:  call       void Game.AudioManager::PlaySound(string,
                                                           float32,
                                                           float32,
                                                           float32)
    IL_0122:  br.s       IL_0144

    IL_0124:  ldarg.0
    IL_0125:  call       instance bool Game.ClickableWidget::get_IsPressed()
    IL_012a:  brtrue.s   IL_0144

    IL_012c:  ldarg.0
    IL_012d:  ldc.i4.0
    IL_012e:  stfld      bool Game.ClickableWidget::m_wasPressed
    IL_0133:  br.s       IL_0144

    IL_0135:  ldarg.0
    IL_0136:  call       instance bool Game.ClickableWidget::get_IsPressed()
    IL_013b:  brfalse.s  IL_0144

    IL_013d:  ldarg.0
    IL_013e:  ldc.i4.1
    IL_013f:  stfld      bool Game.ClickableWidget::m_wasPressed
    IL_0144:  ldloc.0
    IL_0145:  brfalse.s  IL_014c

    IL_0147:  call       void Game.InputManager::Clear()
    IL_014c:  ret
  } // end of method ClickableWidget::Update

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Widget::.ctor()
    IL_0006:  ret
  } // end of method ClickableWidget::.ctor

  .property instance string SoundName()
  {
    .get instance string Game.ClickableWidget::get_SoundName()
    .set instance void Game.ClickableWidget::set_SoundName(string)
  } // end of property ClickableWidget::SoundName
  .property instance bool IsPressed()
  {
    .get instance bool Game.ClickableWidget::get_IsPressed()
    .set instance void Game.ClickableWidget::set_IsPressed(bool)
  } // end of property ClickableWidget::IsPressed
  .property instance bool IsClicked()
  {
    .get instance bool Game.ClickableWidget::get_IsClicked()
    .set instance void Game.ClickableWidget::set_IsClicked(bool)
  } // end of property ClickableWidget::IsClicked
  .property instance bool IsTapped()
  {
    .get instance bool Game.ClickableWidget::get_IsTapped()
    .set instance void Game.ClickableWidget::set_IsTapped(bool)
  } // end of property ClickableWidget::IsTapped
} // end of class Game.ClickableWidget