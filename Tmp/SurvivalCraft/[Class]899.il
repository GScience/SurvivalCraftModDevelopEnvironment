.class public auto ansi beforefieldinit Game.PlayerModelWidget
       extends Game.CanvasWidget
{
  .class auto ansi sealed nested public Shot
         extends [System.Runtime]System.Enum
  {
    .field public specialname rtspecialname int32 value__
    .field public static literal valuetype Game.PlayerModelWidget/Shot Body = int32(0x00000000)
    .field public static literal valuetype Game.PlayerModelWidget/Shot Bust = int32(0x00000001)
  } // end of class Shot

  .field private class Game.ModelWidget m_modelWidget
  .field private class Game.CharacterSkinsCache m_internalCharacterSkinsCache
  .field private class Game.CharacterSkinsCache m_characterSkinsCache
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> m_lastDrag
  .field private float32 m_rotation
  .field private valuetype Game.PlayerModelWidget/Shot '<CameraShot>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private int32 '<AnimateHeadSeed>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private int32 '<AnimateHandsSeed>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<OuterClothing>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype Game.PlayerClass '<PlayerClass>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private string '<CharacterSkinName>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [Engine]Engine.Graphics.Texture2D '<CharacterSkinTexture>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [Engine]Engine.Graphics.Texture2D '<OuterClothingTexture>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       79 (0x4f)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.CanvasWidget::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  newobj     instance void Game.ModelWidget::.ctor()
    IL_000c:  dup
    IL_000d:  ldc.i4.1
    IL_000e:  callvirt   instance void Game.ModelWidget::set_UseAlphaThreshold(bool)
    IL_0013:  dup
    IL_0014:  ldc.i4.1
    IL_0015:  callvirt   instance void Game.ModelWidget::set_IsPerspective(bool)
    IL_001a:  stfld      class Game.ModelWidget Game.PlayerModelWidget::m_modelWidget
    IL_001f:  ldarg.0
    IL_0020:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0025:  ldarg.0
    IL_0026:  ldfld      class Game.ModelWidget Game.PlayerModelWidget::m_modelWidget
    IL_002b:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_0030:  ldarg.0
    IL_0031:  ldc.i4.0
    IL_0032:  callvirt   instance void Game.Widget::set_IsHitTestVisible(bool)
    IL_0037:  ldarg.0
    IL_0038:  newobj     instance void Game.CharacterSkinsCache::.ctor()
    IL_003d:  stfld      class Game.CharacterSkinsCache Game.PlayerModelWidget::m_internalCharacterSkinsCache
    IL_0042:  ldarg.0
    IL_0043:  ldarg.0
    IL_0044:  ldfld      class Game.CharacterSkinsCache Game.PlayerModelWidget::m_internalCharacterSkinsCache
    IL_0049:  stfld      class Game.CharacterSkinsCache Game.PlayerModelWidget::m_characterSkinsCache
    IL_004e:  ret
  } // end of method PlayerModelWidget::.ctor

  .method public hidebysig specialname instance class Game.CharacterSkinsCache 
          get_CharacterSkinsCache() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.CharacterSkinsCache Game.PlayerModelWidget::m_characterSkinsCache
    IL_0006:  ret
  } // end of method PlayerModelWidget::get_CharacterSkinsCache

  .method public hidebysig specialname instance void 
          set_CharacterSkinsCache(class Game.CharacterSkinsCache 'value') cil managed
  {
    // 代码大小       35 (0x23)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  brfalse.s  IL_0016

    IL_0003:  ldarg.0
    IL_0004:  ldfld      class Game.CharacterSkinsCache Game.PlayerModelWidget::m_internalCharacterSkinsCache
    IL_0009:  callvirt   instance void Game.CharacterSkinsCache::Clear()
    IL_000e:  ldarg.0
    IL_000f:  ldarg.1
    IL_0010:  stfld      class Game.CharacterSkinsCache Game.PlayerModelWidget::m_characterSkinsCache
    IL_0015:  ret

    IL_0016:  ldarg.0
    IL_0017:  ldarg.0
    IL_0018:  ldfld      class Game.CharacterSkinsCache Game.PlayerModelWidget::m_internalCharacterSkinsCache
    IL_001d:  stfld      class Game.CharacterSkinsCache Game.PlayerModelWidget::m_characterSkinsCache
    IL_0022:  ret
  } // end of method PlayerModelWidget::set_CharacterSkinsCache

  .method public hidebysig specialname instance valuetype Game.PlayerModelWidget/Shot 
          get_CameraShot() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype Game.PlayerModelWidget/Shot Game.PlayerModelWidget::'<CameraShot>k__BackingField'
    IL_0006:  ret
  } // end of method PlayerModelWidget::get_CameraShot

  .method public hidebysig specialname instance void 
          set_CameraShot(valuetype Game.PlayerModelWidget/Shot 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype Game.PlayerModelWidget/Shot Game.PlayerModelWidget::'<CameraShot>k__BackingField'
    IL_0007:  ret
  } // end of method PlayerModelWidget::set_CameraShot

  .method public hidebysig specialname instance int32 
          get_AnimateHeadSeed() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.PlayerModelWidget::'<AnimateHeadSeed>k__BackingField'
    IL_0006:  ret
  } // end of method PlayerModelWidget::get_AnimateHeadSeed

  .method public hidebysig specialname instance void 
          set_AnimateHeadSeed(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 Game.PlayerModelWidget::'<AnimateHeadSeed>k__BackingField'
    IL_0007:  ret
  } // end of method PlayerModelWidget::set_AnimateHeadSeed

  .method public hidebysig specialname instance int32 
          get_AnimateHandsSeed() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.PlayerModelWidget::'<AnimateHandsSeed>k__BackingField'
    IL_0006:  ret
  } // end of method PlayerModelWidget::get_AnimateHandsSeed

  .method public hidebysig specialname instance void 
          set_AnimateHandsSeed(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 Game.PlayerModelWidget::'<AnimateHandsSeed>k__BackingField'
    IL_0007:  ret
  } // end of method PlayerModelWidget::set_AnimateHandsSeed

  .method public hidebysig specialname instance bool 
          get_OuterClothing() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.PlayerModelWidget::'<OuterClothing>k__BackingField'
    IL_0006:  ret
  } // end of method PlayerModelWidget::get_OuterClothing

  .method public hidebysig specialname instance void 
          set_OuterClothing(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.PlayerModelWidget::'<OuterClothing>k__BackingField'
    IL_0007:  ret
  } // end of method PlayerModelWidget::set_OuterClothing

  .method public hidebysig specialname instance valuetype Game.PlayerClass 
          get_PlayerClass() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype Game.PlayerClass Game.PlayerModelWidget::'<PlayerClass>k__BackingField'
    IL_0006:  ret
  } // end of method PlayerModelWidget::get_PlayerClass

  .method public hidebysig specialname instance void 
          set_PlayerClass(valuetype Game.PlayerClass 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype Game.PlayerClass Game.PlayerModelWidget::'<PlayerClass>k__BackingField'
    IL_0007:  ret
  } // end of method PlayerModelWidget::set_PlayerClass

  .method public hidebysig specialname instance string 
          get_CharacterSkinName() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.PlayerModelWidget::'<CharacterSkinName>k__BackingField'
    IL_0006:  ret
  } // end of method PlayerModelWidget::get_CharacterSkinName

  .method public hidebysig specialname instance void 
          set_CharacterSkinName(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string Game.PlayerModelWidget::'<CharacterSkinName>k__BackingField'
    IL_0007:  ret
  } // end of method PlayerModelWidget::set_CharacterSkinName

  .method public hidebysig specialname instance class [Engine]Engine.Graphics.Texture2D 
          get_CharacterSkinTexture() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.PlayerModelWidget::'<CharacterSkinTexture>k__BackingField'
    IL_0006:  ret
  } // end of method PlayerModelWidget::get_CharacterSkinTexture

  .method public hidebysig specialname instance void 
          set_CharacterSkinTexture(class [Engine]Engine.Graphics.Texture2D 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [Engine]Engine.Graphics.Texture2D Game.PlayerModelWidget::'<CharacterSkinTexture>k__BackingField'
    IL_0007:  ret
  } // end of method PlayerModelWidget::set_CharacterSkinTexture

  .method public hidebysig specialname instance class [Engine]Engine.Graphics.Texture2D 
          get_OuterClothingTexture() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.PlayerModelWidget::'<OuterClothingTexture>k__BackingField'
    IL_0006:  ret
  } // end of method PlayerModelWidget::get_OuterClothingTexture

  .method public hidebysig specialname instance void 
          set_OuterClothingTexture(class [Engine]Engine.Graphics.Texture2D 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [Engine]Engine.Graphics.Texture2D Game.PlayerModelWidget::'<OuterClothingTexture>k__BackingField'
    IL_0007:  ret
  } // end of method PlayerModelWidget::set_OuterClothingTexture

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       333 (0x14d)
    .maxstack  5
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0006:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Press()
    IL_000b:  stloc.0
    IL_000c:  ldloca.s   V_0
    IL_000e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0013:  brfalse    IL_00ca

    IL_0018:  ldarg.0
    IL_0019:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerModelWidget::m_lastDrag
    IL_001e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0023:  brfalse.s  IL_008f

    IL_0025:  ldarg.0
    IL_0026:  ldarg.0
    IL_0027:  ldfld      float32 Game.PlayerModelWidget::m_rotation
    IL_002c:  ldc.r4     9.9999998e-003
    IL_0031:  ldarg.0
    IL_0032:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0037:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Press()
    IL_003c:  stloc.0
    IL_003d:  ldloca.s   V_0
    IL_003f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0044:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0049:  ldarg.0
    IL_004a:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerModelWidget::m_lastDrag
    IL_004f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0054:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0059:  sub
    IL_005a:  mul
    IL_005b:  add
    IL_005c:  stfld      float32 Game.PlayerModelWidget::m_rotation
    IL_0061:  ldarg.0
    IL_0062:  ldarg.0
    IL_0063:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0068:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Press()
    IL_006d:  stloc.0
    IL_006e:  ldloca.s   V_0
    IL_0070:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0075:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_007a:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerModelWidget::m_lastDrag
    IL_007f:  ldarg.0
    IL_0080:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0085:  callvirt   instance void Game.WidgetInput::Clear()
    IL_008a:  br         IL_0122

    IL_008f:  ldarg.0
    IL_0090:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0095:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Press()
    IL_009a:  stloc.0
    IL_009b:  ldloca.s   V_0
    IL_009d:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_00a2:  call       class Game.Widget Game.WidgetsManager::HitTest(valuetype [Engine]Engine.Vector2)
    IL_00a7:  ldarg.0
    IL_00a8:  bne.un.s   IL_0122

    IL_00aa:  ldarg.0
    IL_00ab:  ldarg.0
    IL_00ac:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_00b1:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Press()
    IL_00b6:  stloc.0
    IL_00b7:  ldloca.s   V_0
    IL_00b9:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_00be:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_00c3:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerModelWidget::m_lastDrag
    IL_00c8:  br.s       IL_0122

    IL_00ca:  ldarg.0
    IL_00cb:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.PlayerModelWidget::m_lastDrag
    IL_00d0:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>
    IL_00d6:  ldarg.0
    IL_00d7:  ldarg.0
    IL_00d8:  ldfld      float32 Game.PlayerModelWidget::m_rotation
    IL_00dd:  call       float32 [Engine]Engine.MathUtils::NormalizeAngle(float32)
    IL_00e2:  stfld      float32 Game.PlayerModelWidget::m_rotation
    IL_00e7:  ldarg.0
    IL_00e8:  ldfld      float32 Game.PlayerModelWidget::m_rotation
    IL_00ed:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_00f2:  ldc.r4     9.9999998e-003
    IL_00f7:  ble.un.s   IL_0117

    IL_00f9:  ldarg.0
    IL_00fa:  ldarg.0
    IL_00fb:  ldfld      float32 Game.PlayerModelWidget::m_rotation
    IL_0100:  ldc.r4     0.1
    IL_0105:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_010a:  call       float32 [Engine]Engine.MathUtils::PowSign(float32,
                                                                   float32)
    IL_010f:  mul
    IL_0110:  stfld      float32 Game.PlayerModelWidget::m_rotation
    IL_0115:  br.s       IL_0122

    IL_0117:  ldarg.0
    IL_0118:  ldc.r4     0.0
    IL_011d:  stfld      float32 Game.PlayerModelWidget::m_rotation
    IL_0122:  ldarg.0
    IL_0123:  ldfld      class Game.ModelWidget Game.PlayerModelWidget::m_modelWidget
    IL_0128:  ldarg.0
    IL_0129:  ldfld      float32 Game.PlayerModelWidget::m_rotation
    IL_012e:  ldc.r4     0.0
    IL_0133:  bne.un.s   IL_013c

    IL_0135:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_013a:  br.s       IL_0147

    IL_013c:  ldarg.0
    IL_013d:  ldfld      float32 Game.PlayerModelWidget::m_rotation
    IL_0142:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0147:  callvirt   instance void Game.ModelWidget::set_ModelMatrix(valuetype [Engine]Engine.Matrix)
    IL_014c:  ret
  } // end of method PlayerModelWidget::Update

  .method public hidebysig virtual instance void 
          MeasureOverride(valuetype [Engine]Engine.Vector2 parentAvailableSize) cil managed
  {
    // 代码大小       1130 (0x46a)
    .maxstack  8
    .locals init (int32 V_0,
             float32 V_1,
             valuetype [Engine]Engine.Vector2 V_2,
             valuetype [Engine]Engine.Matrix V_3,
             int32 V_4,
             float32 V_5,
             valuetype [Engine]Engine.Vector2 V_6,
             valuetype [Engine]Engine.Vector2 V_7,
             valuetype [Engine]Engine.Matrix V_8,
             valuetype [Engine]Engine.Matrix V_9)
    IL_0000:  ldarg.0
    IL_0001:  call       instance bool Game.PlayerModelWidget::get_OuterClothing()
    IL_0006:  brfalse.s  IL_0020

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.ModelWidget Game.PlayerModelWidget::m_modelWidget
    IL_000e:  ldarg.0
    IL_000f:  call       instance valuetype Game.PlayerClass Game.PlayerModelWidget::get_PlayerClass()
    IL_0014:  call       class [Engine]Engine.Graphics.Model Game.CharacterSkinsManager::GetOuterClothingModel(valuetype Game.PlayerClass)
    IL_0019:  callvirt   instance void Game.ModelWidget::set_Model(class [Engine]Engine.Graphics.Model)
    IL_001e:  br.s       IL_0036

    IL_0020:  ldarg.0
    IL_0021:  ldfld      class Game.ModelWidget Game.PlayerModelWidget::m_modelWidget
    IL_0026:  ldarg.0
    IL_0027:  call       instance valuetype Game.PlayerClass Game.PlayerModelWidget::get_PlayerClass()
    IL_002c:  call       class [Engine]Engine.Graphics.Model Game.CharacterSkinsManager::GetPlayerModel(valuetype Game.PlayerClass)
    IL_0031:  callvirt   instance void Game.ModelWidget::set_Model(class [Engine]Engine.Graphics.Model)
    IL_0036:  ldarg.0
    IL_0037:  call       instance valuetype Game.PlayerModelWidget/Shot Game.PlayerModelWidget::get_CameraShot()
    IL_003c:  brtrue     IL_00d0

    IL_0041:  ldarg.0
    IL_0042:  ldfld      class Game.ModelWidget Game.PlayerModelWidget::m_modelWidget
    IL_0047:  ldarg.0
    IL_0048:  call       instance valuetype Game.PlayerClass Game.PlayerModelWidget::get_PlayerClass()
    IL_004d:  brfalse.s  IL_0065

    IL_004f:  ldc.r4     0.0
    IL_0054:  ldc.r4     1.39
    IL_0059:  ldc.r4     -3.04
    IL_005e:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0063:  br.s       IL_0079

    IL_0065:  ldc.r4     0.0
    IL_006a:  ldc.r4     1.46
    IL_006f:  ldc.r4     -3.2
    IL_0074:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0079:  callvirt   instance void Game.ModelWidget::set_ViewPosition(valuetype [Engine]Engine.Vector3)
    IL_007e:  ldarg.0
    IL_007f:  ldfld      class Game.ModelWidget Game.PlayerModelWidget::m_modelWidget
    IL_0084:  ldarg.0
    IL_0085:  call       instance valuetype Game.PlayerClass Game.PlayerModelWidget::get_PlayerClass()
    IL_008a:  brfalse.s  IL_00a2

    IL_008c:  ldc.r4     0.0
    IL_0091:  ldc.r4     0.86000001
    IL_0096:  ldc.r4     0.0
    IL_009b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00a0:  br.s       IL_00b6

    IL_00a2:  ldc.r4     0.0
    IL_00a7:  ldc.r4     0.89999998
    IL_00ac:  ldc.r4     0.0
    IL_00b1:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00b6:  callvirt   instance void Game.ModelWidget::set_ViewTarget(valuetype [Engine]Engine.Vector3)
    IL_00bb:  ldarg.0
    IL_00bc:  ldfld      class Game.ModelWidget Game.PlayerModelWidget::m_modelWidget
    IL_00c1:  ldc.r4     0.56999999
    IL_00c6:  callvirt   instance void Game.ModelWidget::set_ViewFov(float32)
    IL_00cb:  br         IL_0173

    IL_00d0:  ldarg.0
    IL_00d1:  call       instance valuetype Game.PlayerModelWidget/Shot Game.PlayerModelWidget::get_CameraShot()
    IL_00d6:  ldc.i4.1
    IL_00d7:  bne.un     IL_0168

    IL_00dc:  ldarg.0
    IL_00dd:  ldfld      class Game.ModelWidget Game.PlayerModelWidget::m_modelWidget
    IL_00e2:  ldarg.0
    IL_00e3:  call       instance valuetype Game.PlayerClass Game.PlayerModelWidget::get_PlayerClass()
    IL_00e8:  brfalse.s  IL_0100

    IL_00ea:  ldc.r4     0.0
    IL_00ef:  ldc.r4     1.4299999
    IL_00f4:  ldc.r4     -1.
    IL_00f9:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00fe:  br.s       IL_0114

    IL_0100:  ldc.r4     0.0
    IL_0105:  ldc.r4     1.5
    IL_010a:  ldc.r4     -1.05
    IL_010f:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0114:  callvirt   instance void Game.ModelWidget::set_ViewPosition(valuetype [Engine]Engine.Vector3)
    IL_0119:  ldarg.0
    IL_011a:  ldfld      class Game.ModelWidget Game.PlayerModelWidget::m_modelWidget
    IL_011f:  ldarg.0
    IL_0120:  call       instance valuetype Game.PlayerClass Game.PlayerModelWidget::get_PlayerClass()
    IL_0125:  brfalse.s  IL_013d

    IL_0127:  ldc.r4     0.0
    IL_012c:  ldc.r4     1.4299999
    IL_0131:  ldc.r4     0.0
    IL_0136:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_013b:  br.s       IL_0151

    IL_013d:  ldc.r4     0.0
    IL_0142:  ldc.r4     1.5
    IL_0147:  ldc.r4     0.0
    IL_014c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0151:  callvirt   instance void Game.ModelWidget::set_ViewTarget(valuetype [Engine]Engine.Vector3)
    IL_0156:  ldarg.0
    IL_0157:  ldfld      class Game.ModelWidget Game.PlayerModelWidget::m_modelWidget
    IL_015c:  ldc.r4     0.56999999
    IL_0161:  callvirt   instance void Game.ModelWidget::set_ViewFov(float32)
    IL_0166:  br.s       IL_0173

    IL_0168:  ldstr      "Unknown shot."
    IL_016d:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0172:  throw

    IL_0173:  ldarg.0
    IL_0174:  call       instance bool Game.PlayerModelWidget::get_OuterClothing()
    IL_0179:  brfalse.s  IL_018e

    IL_017b:  ldarg.0
    IL_017c:  ldfld      class Game.ModelWidget Game.PlayerModelWidget::m_modelWidget
    IL_0181:  ldarg.0
    IL_0182:  call       instance class [Engine]Engine.Graphics.Texture2D Game.PlayerModelWidget::get_OuterClothingTexture()
    IL_0187:  callvirt   instance void Game.ModelWidget::set_TextureOverride(class [Engine]Engine.Graphics.Texture2D)
    IL_018c:  br.s       IL_01ba

    IL_018e:  ldarg.0
    IL_018f:  ldfld      class Game.ModelWidget Game.PlayerModelWidget::m_modelWidget
    IL_0194:  ldarg.0
    IL_0195:  call       instance string Game.PlayerModelWidget::get_CharacterSkinName()
    IL_019a:  brtrue.s   IL_01a4

    IL_019c:  ldarg.0
    IL_019d:  call       instance class [Engine]Engine.Graphics.Texture2D Game.PlayerModelWidget::get_CharacterSkinTexture()
    IL_01a2:  br.s       IL_01b5

    IL_01a4:  ldarg.0
    IL_01a5:  call       instance class Game.CharacterSkinsCache Game.PlayerModelWidget::get_CharacterSkinsCache()
    IL_01aa:  ldarg.0
    IL_01ab:  call       instance string Game.PlayerModelWidget::get_CharacterSkinName()
    IL_01b0:  callvirt   instance class [Engine]Engine.Graphics.Texture2D Game.CharacterSkinsCache::GetTexture(string)
    IL_01b5:  callvirt   instance void Game.ModelWidget::set_TextureOverride(class [Engine]Engine.Graphics.Texture2D)
    IL_01ba:  ldarg.0
    IL_01bb:  call       instance int32 Game.PlayerModelWidget::get_AnimateHeadSeed()
    IL_01c0:  brfalse    IL_02ab

    IL_01c5:  ldarg.0
    IL_01c6:  call       instance int32 Game.PlayerModelWidget::get_AnimateHeadSeed()
    IL_01cb:  ldc.i4.0
    IL_01cc:  blt.s      IL_01d6

    IL_01ce:  ldarg.0
    IL_01cf:  call       instance int32 Game.PlayerModelWidget::get_AnimateHeadSeed()
    IL_01d4:  br.s       IL_01dc

    IL_01d6:  ldarg.0
    IL_01d7:  callvirt   instance int32 [System.Runtime]System.Object::GetHashCode()
    IL_01dc:  stloc.0
    IL_01dd:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_01e2:  ldc.r8     1000.
    IL_01eb:  ldloc.0
    IL_01ec:  conv.r8
    IL_01ed:  mul
    IL_01ee:  add
    IL_01ef:  ldc.r8     10000.
    IL_01f8:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_01fd:  conv.r4
    IL_01fe:  stloc.1
    IL_01ff:  ldloca.s   V_2
    IL_0201:  ldc.r4     -0.75
    IL_0206:  ldc.r4     0.75
    IL_020b:  ldloc.1
    IL_020c:  ldc.r4     100.
    IL_0211:  add
    IL_0212:  ldc.r4     0.2
    IL_0217:  ldc.i4.1
    IL_0218:  ldc.r4     2.
    IL_021d:  ldc.r4     0.5
    IL_0222:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_0227:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_022c:  stfld      float32 [Engine]Engine.Vector2::X
    IL_0231:  ldloca.s   V_2
    IL_0233:  ldc.r4     -0.5
    IL_0238:  ldc.r4     0.5
    IL_023d:  ldloc.1
    IL_023e:  ldc.r4     200.
    IL_0243:  add
    IL_0244:  ldc.r4     0.17
    IL_0249:  ldc.i4.1
    IL_024a:  ldc.r4     2.
    IL_024f:  ldc.r4     0.5
    IL_0254:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_0259:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_025e:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_0263:  ldloc.2
    IL_0264:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0269:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_026e:  ldloc.2
    IL_026f:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0274:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationZ(float32)
    IL_0279:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_027e:  stloc.3
    IL_027f:  ldarg.0
    IL_0280:  ldfld      class Game.ModelWidget Game.PlayerModelWidget::m_modelWidget
    IL_0285:  ldarg.0
    IL_0286:  ldfld      class Game.ModelWidget Game.PlayerModelWidget::m_modelWidget
    IL_028b:  callvirt   instance class [Engine]Engine.Graphics.Model Game.ModelWidget::get_Model()
    IL_0290:  ldstr      "Head"
    IL_0295:  ldc.i4.1
    IL_0296:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_029b:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_02a0:  ldloc.3
    IL_02a1:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_02a6:  callvirt   instance void Game.ModelWidget::SetBoneTransform(int32,
                                                                          valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_02ab:  ldarg.0
    IL_02ac:  call       instance bool Game.PlayerModelWidget::get_OuterClothing()
    IL_02b1:  brtrue     IL_0462

    IL_02b6:  ldarg.0
    IL_02b7:  call       instance int32 Game.PlayerModelWidget::get_AnimateHandsSeed()
    IL_02bc:  brfalse    IL_0462

    IL_02c1:  ldarg.0
    IL_02c2:  call       instance int32 Game.PlayerModelWidget::get_AnimateHandsSeed()
    IL_02c7:  ldc.i4.0
    IL_02c8:  blt.s      IL_02d2

    IL_02ca:  ldarg.0
    IL_02cb:  call       instance int32 Game.PlayerModelWidget::get_AnimateHandsSeed()
    IL_02d0:  br.s       IL_02d8

    IL_02d2:  ldarg.0
    IL_02d3:  callvirt   instance int32 [System.Runtime]System.Object::GetHashCode()
    IL_02d8:  stloc.s    V_4
    IL_02da:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_02df:  ldc.r8     1000.
    IL_02e8:  ldloc.s    V_4
    IL_02ea:  conv.r8
    IL_02eb:  mul
    IL_02ec:  add
    IL_02ed:  ldc.r8     10000.
    IL_02f6:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_02fb:  conv.r4
    IL_02fc:  stloc.s    V_5
    IL_02fe:  ldloca.s   V_6
    IL_0300:  ldc.r4     0.2
    IL_0305:  ldc.r4     0.0
    IL_030a:  ldloc.s    V_5
    IL_030c:  ldc.r4     100.
    IL_0311:  add
    IL_0312:  ldc.r4     0.69999999
    IL_0317:  ldc.i4.1
    IL_0318:  ldc.r4     2.
    IL_031d:  ldc.r4     0.5
    IL_0322:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_0327:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_032c:  stfld      float32 [Engine]Engine.Vector2::X
    IL_0331:  ldloca.s   V_6
    IL_0333:  ldc.r4     -0.30000001
    IL_0338:  ldc.r4     0.30000001
    IL_033d:  ldloc.s    V_5
    IL_033f:  ldc.r4     200.
    IL_0344:  add
    IL_0345:  ldc.r4     0.69999999
    IL_034a:  ldc.i4.1
    IL_034b:  ldc.r4     2.
    IL_0350:  ldc.r4     0.5
    IL_0355:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_035a:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_035f:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_0364:  ldloca.s   V_7
    IL_0366:  ldc.r4     -0.2
    IL_036b:  ldc.r4     0.0
    IL_0370:  ldloc.s    V_5
    IL_0372:  ldc.r4     300.
    IL_0377:  add
    IL_0378:  ldc.r4     0.69999999
    IL_037d:  ldc.i4.1
    IL_037e:  ldc.r4     2.
    IL_0383:  ldc.r4     0.5
    IL_0388:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_038d:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_0392:  stfld      float32 [Engine]Engine.Vector2::X
    IL_0397:  ldloca.s   V_7
    IL_0399:  ldc.r4     -0.30000001
    IL_039e:  ldc.r4     0.30000001
    IL_03a3:  ldloc.s    V_5
    IL_03a5:  ldc.r4     400.
    IL_03aa:  add
    IL_03ab:  ldc.r4     0.69999999
    IL_03b0:  ldc.i4.1
    IL_03b1:  ldc.r4     2.
    IL_03b6:  ldc.r4     0.5
    IL_03bb:  call       float32 Game.SimplexNoise::OctavedNoise(float32,
                                                                 float32,
                                                                 int32,
                                                                 float32,
                                                                 float32)
    IL_03c0:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_03c5:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_03ca:  ldloc.s    V_6
    IL_03cc:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_03d1:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_03d6:  ldloc.s    V_6
    IL_03d8:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_03dd:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_03e2:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_03e7:  stloc.s    V_8
    IL_03e9:  ldloc.s    V_7
    IL_03eb:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_03f0:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
    IL_03f5:  ldloc.s    V_7
    IL_03f7:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_03fc:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0401:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0406:  stloc.s    V_9
    IL_0408:  ldarg.0
    IL_0409:  ldfld      class Game.ModelWidget Game.PlayerModelWidget::m_modelWidget
    IL_040e:  ldarg.0
    IL_040f:  ldfld      class Game.ModelWidget Game.PlayerModelWidget::m_modelWidget
    IL_0414:  callvirt   instance class [Engine]Engine.Graphics.Model Game.ModelWidget::get_Model()
    IL_0419:  ldstr      "Hand1"
    IL_041e:  ldc.i4.1
    IL_041f:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_0424:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0429:  ldloc.s    V_8
    IL_042b:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0430:  callvirt   instance void Game.ModelWidget::SetBoneTransform(int32,
                                                                          valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0435:  ldarg.0
    IL_0436:  ldfld      class Game.ModelWidget Game.PlayerModelWidget::m_modelWidget
    IL_043b:  ldarg.0
    IL_043c:  ldfld      class Game.ModelWidget Game.PlayerModelWidget::m_modelWidget
    IL_0441:  callvirt   instance class [Engine]Engine.Graphics.Model Game.ModelWidget::get_Model()
    IL_0446:  ldstr      "Hand2"
    IL_044b:  ldc.i4.1
    IL_044c:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                  bool)
    IL_0451:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0456:  ldloc.s    V_9
    IL_0458:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_045d:  callvirt   instance void Game.ModelWidget::SetBoneTransform(int32,
                                                                          valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0462:  ldarg.0
    IL_0463:  ldarg.1
    IL_0464:  call       instance void Game.CanvasWidget::MeasureOverride(valuetype [Engine]Engine.Vector2)
    IL_0469:  ret
  } // end of method PlayerModelWidget::MeasureOverride

  .method public hidebysig virtual instance void 
          UpdateCeases() cil managed
  {
    // 代码大小       67 (0x43)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.ContainerWidget Game.Widget::get_RootWidget()
    IL_0006:  call       class Game.ContainerWidget Game.WidgetsManager::get_RootWidget()
    IL_000b:  beq.s      IL_003c

    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.CharacterSkinsCache Game.PlayerModelWidget::m_internalCharacterSkinsCache
    IL_0013:  ldarg.0
    IL_0014:  ldfld      class Game.ModelWidget Game.PlayerModelWidget::m_modelWidget
    IL_0019:  callvirt   instance class [Engine]Engine.Graphics.Texture2D Game.ModelWidget::get_TextureOverride()
    IL_001e:  callvirt   instance bool Game.CharacterSkinsCache::ContainsTexture(class [Engine]Engine.Graphics.Texture2D)
    IL_0023:  brfalse.s  IL_0031

    IL_0025:  ldarg.0
    IL_0026:  ldfld      class Game.ModelWidget Game.PlayerModelWidget::m_modelWidget
    IL_002b:  ldnull
    IL_002c:  callvirt   instance void Game.ModelWidget::set_TextureOverride(class [Engine]Engine.Graphics.Texture2D)
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.CharacterSkinsCache Game.PlayerModelWidget::m_internalCharacterSkinsCache
    IL_0037:  callvirt   instance void Game.CharacterSkinsCache::Clear()
    IL_003c:  ldarg.0
    IL_003d:  call       instance void Game.ContainerWidget::UpdateCeases()
    IL_0042:  ret
  } // end of method PlayerModelWidget::UpdateCeases

  .property instance class Game.CharacterSkinsCache
          CharacterSkinsCache()
  {
    .get instance class Game.CharacterSkinsCache Game.PlayerModelWidget::get_CharacterSkinsCache()
    .set instance void Game.PlayerModelWidget::set_CharacterSkinsCache(class Game.CharacterSkinsCache)
  } // end of property PlayerModelWidget::CharacterSkinsCache
  .property instance valuetype Game.PlayerModelWidget/Shot
          CameraShot()
  {
    .get instance valuetype Game.PlayerModelWidget/Shot Game.PlayerModelWidget::get_CameraShot()
    .set instance void Game.PlayerModelWidget::set_CameraShot(valuetype Game.PlayerModelWidget/Shot)
  } // end of property PlayerModelWidget::CameraShot
  .property instance int32 AnimateHeadSeed()
  {
    .get instance int32 Game.PlayerModelWidget::get_AnimateHeadSeed()
    .set instance void Game.PlayerModelWidget::set_AnimateHeadSeed(int32)
  } // end of property PlayerModelWidget::AnimateHeadSeed
  .property instance int32 AnimateHandsSeed()
  {
    .get instance int32 Game.PlayerModelWidget::get_AnimateHandsSeed()
    .set instance void Game.PlayerModelWidget::set_AnimateHandsSeed(int32)
  } // end of property PlayerModelWidget::AnimateHandsSeed
  .property instance bool OuterClothing()
  {
    .get instance bool Game.PlayerModelWidget::get_OuterClothing()
    .set instance void Game.PlayerModelWidget::set_OuterClothing(bool)
  } // end of property PlayerModelWidget::OuterClothing
  .property instance valuetype Game.PlayerClass
          PlayerClass()
  {
    .get instance valuetype Game.PlayerClass Game.PlayerModelWidget::get_PlayerClass()
    .set instance void Game.PlayerModelWidget::set_PlayerClass(valuetype Game.PlayerClass)
  } // end of property PlayerModelWidget::PlayerClass
  .property instance string CharacterSkinName()
  {
    .get instance string Game.PlayerModelWidget::get_CharacterSkinName()
    .set instance void Game.PlayerModelWidget::set_CharacterSkinName(string)
  } // end of property PlayerModelWidget::CharacterSkinName
  .property instance class [Engine]Engine.Graphics.Texture2D
          CharacterSkinTexture()
  {
    .get instance class [Engine]Engine.Graphics.Texture2D Game.PlayerModelWidget::get_CharacterSkinTexture()
    .set instance void Game.PlayerModelWidget::set_CharacterSkinTexture(class [Engine]Engine.Graphics.Texture2D)
  } // end of property PlayerModelWidget::CharacterSkinTexture
  .property instance class [Engine]Engine.Graphics.Texture2D
          OuterClothingTexture()
  {
    .get instance class [Engine]Engine.Graphics.Texture2D Game.PlayerModelWidget::get_OuterClothingTexture()
    .set instance void Game.PlayerModelWidget::set_OuterClothingTexture(class [Engine]Engine.Graphics.Texture2D)
  } // end of property PlayerModelWidget::OuterClothingTexture
} // end of class Game.PlayerModelWidget