.class public auto ansi beforefieldinit Game.ComponentScreenOverlays
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IDrawable
{
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemSky m_subsystemSky
  .field private class Game.ComponentGui m_componentGui
  .field private class Game.ComponentPlayer m_componentPlayer
  .field private valuetype [Engine]Engine.Vector2[] m_iceVertices
  .field private valuetype [Engine]Engine.Vector2 m_iceVerticesWidgetSize
  .field private valuetype [System.Runtime]System.Nullable`1<float64> m_waterSurfaceCrossTime
  .field private bool m_wasUnderWater
  .field private float32 '<BlackoutFactor>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<RedoutFactor>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<GreenoutFactor>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private string '<FloatingMessage>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<FloatingMessageFactor>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private string '<Message>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<MessageFactor>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<IceFactor>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static int32[] m_drawOrders
  .method public hidebysig specialname instance float32 
          get_BlackoutFactor() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentScreenOverlays::'<BlackoutFactor>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentScreenOverlays::get_BlackoutFactor

  .method public hidebysig specialname instance void 
          set_BlackoutFactor(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentScreenOverlays::'<BlackoutFactor>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentScreenOverlays::set_BlackoutFactor

  .method public hidebysig specialname instance float32 
          get_RedoutFactor() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentScreenOverlays::'<RedoutFactor>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentScreenOverlays::get_RedoutFactor

  .method public hidebysig specialname instance void 
          set_RedoutFactor(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentScreenOverlays::'<RedoutFactor>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentScreenOverlays::set_RedoutFactor

  .method public hidebysig specialname instance float32 
          get_GreenoutFactor() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentScreenOverlays::'<GreenoutFactor>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentScreenOverlays::get_GreenoutFactor

  .method public hidebysig specialname instance void 
          set_GreenoutFactor(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentScreenOverlays::'<GreenoutFactor>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentScreenOverlays::set_GreenoutFactor

  .method public hidebysig specialname instance string 
          get_FloatingMessage() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.ComponentScreenOverlays::'<FloatingMessage>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentScreenOverlays::get_FloatingMessage

  .method public hidebysig specialname instance void 
          set_FloatingMessage(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string Game.ComponentScreenOverlays::'<FloatingMessage>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentScreenOverlays::set_FloatingMessage

  .method public hidebysig specialname instance float32 
          get_FloatingMessageFactor() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentScreenOverlays::'<FloatingMessageFactor>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentScreenOverlays::get_FloatingMessageFactor

  .method public hidebysig specialname instance void 
          set_FloatingMessageFactor(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentScreenOverlays::'<FloatingMessageFactor>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentScreenOverlays::set_FloatingMessageFactor

  .method public hidebysig specialname instance string 
          get_Message() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.ComponentScreenOverlays::'<Message>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentScreenOverlays::get_Message

  .method public hidebysig specialname instance void 
          set_Message(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string Game.ComponentScreenOverlays::'<Message>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentScreenOverlays::set_Message

  .method public hidebysig specialname instance float32 
          get_MessageFactor() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentScreenOverlays::'<MessageFactor>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentScreenOverlays::get_MessageFactor

  .method public hidebysig specialname instance void 
          set_MessageFactor(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentScreenOverlays::'<MessageFactor>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentScreenOverlays::set_MessageFactor

  .method public hidebysig specialname instance float32 
          get_IceFactor() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentScreenOverlays::'<IceFactor>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentScreenOverlays::get_IceFactor

  .method public hidebysig specialname instance void 
          set_IceFactor(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentScreenOverlays::'<IceFactor>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentScreenOverlays::set_IceFactor

  .method public hidebysig newslot specialname virtual final 
          instance int32[]  get_DrawOrders() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     int32[] Game.ComponentScreenOverlays::m_drawOrders
    IL_0005:  ret
  } // end of method ComponentScreenOverlays::get_DrawOrders

  .method public hidebysig newslot virtual final 
          instance void  Draw(class Game.Camera camera,
                              int32 drawOrder) cil managed
  {
    // 代码大小       796 (0x31c)
    .maxstack  7
    .locals init (bool V_0,
             float32 V_1,
             float32 V_2,
             valuetype [Engine]Engine.Matrix V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             valuetype [Engine]Engine.Vector2 V_5,
             class [Engine]Engine.Graphics.Texture2D V_6)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentPlayer Game.ComponentScreenOverlays::m_componentPlayer
    IL_0006:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_000b:  ldarg.1
    IL_000c:  callvirt   instance class Game.View Game.Camera::get_View()
    IL_0011:  beq.s      IL_0014

    IL_0013:  ret

    IL_0014:  ldarg.0
    IL_0015:  ldfld      class Game.SubsystemSky Game.ComponentScreenOverlays::m_subsystemSky
    IL_001a:  callvirt   instance float32 Game.SubsystemSky::get_ViewUnderWaterDepth()
    IL_001f:  ldc.r4     0.0
    IL_0024:  cgt
    IL_0026:  stloc.0
    IL_0027:  ldloc.0
    IL_0028:  ldarg.0
    IL_0029:  ldfld      bool Game.ComponentScreenOverlays::m_wasUnderWater
    IL_002e:  beq.s      IL_004d

    IL_0030:  ldarg.0
    IL_0031:  ldloc.0
    IL_0032:  stfld      bool Game.ComponentScreenOverlays::m_wasUnderWater
    IL_0037:  ldarg.0
    IL_0038:  ldarg.0
    IL_0039:  ldfld      class Game.SubsystemTime Game.ComponentScreenOverlays::m_subsystemTime
    IL_003e:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0043:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_0048:  stfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentScreenOverlays::m_waterSurfaceCrossTime
    IL_004d:  ldarg.0
    IL_004e:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentScreenOverlays::m_waterSurfaceCrossTime
    IL_0053:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_0058:  brfalse    IL_019d

    IL_005d:  ldarg.0
    IL_005e:  ldfld      class Game.SubsystemTime Game.ComponentScreenOverlays::m_subsystemTime
    IL_0063:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0068:  ldarg.0
    IL_0069:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentScreenOverlays::m_waterSurfaceCrossTime
    IL_006e:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::get_Value()
    IL_0073:  sub
    IL_0074:  conv.r4
    IL_0075:  stloc.1
    IL_0076:  ldc.r4     0.5
    IL_007b:  ldc.r4     1.
    IL_0080:  ldc.r4     0.75
    IL_0085:  ldloc.1
    IL_0086:  mul
    IL_0087:  sub
    IL_0088:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_008d:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
    IL_0092:  mul
    IL_0093:  stloc.2
    IL_0094:  ldloc.2
    IL_0095:  ldc.r4     9.9999998e-003
    IL_009a:  ble.un     IL_019d

    IL_009f:  ldloca.s   V_3
    IL_00a1:  initobj    [Engine]Engine.Matrix
    IL_00a7:  ldloca.s   V_3
    IL_00a9:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_00ae:  call       instance void [Engine]Engine.Matrix::set_Translation(valuetype [Engine]Engine.Vector3)
    IL_00b3:  ldloca.s   V_3
    IL_00b5:  ldarg.1
    IL_00b6:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewDirection()
    IL_00bb:  call       instance void [Engine]Engine.Matrix::set_Forward(valuetype [Engine]Engine.Vector3)
    IL_00c0:  ldloca.s   V_3
    IL_00c2:  ldarg.1
    IL_00c3:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewUp()
    IL_00c8:  ldloca.s   V_3
    IL_00ca:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_00cf:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_00d4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_00d9:  call       instance void [Engine]Engine.Matrix::set_Right(valuetype [Engine]Engine.Vector3)
    IL_00de:  ldloca.s   V_3
    IL_00e0:  ldloca.s   V_3
    IL_00e2:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_00e7:  ldloca.s   V_3
    IL_00e9:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_00ee:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_00f3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_00f8:  call       instance void [Engine]Engine.Matrix::set_Up(valuetype [Engine]Engine.Vector3)
    IL_00fd:  ldloca.s   V_3
    IL_00ff:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::ToYawPitchRoll()
    IL_0104:  stloc.s    V_4
    IL_0106:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_010b:  stloc.s    V_5
    IL_010d:  ldloca.s   V_5
    IL_010f:  ldflda     float32 [Engine]Engine.Vector2::X
    IL_0114:  dup
    IL_0115:  ldind.r4
    IL_0116:  ldc.r4     2.
    IL_011b:  ldloc.s    V_4
    IL_011d:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0122:  mul
    IL_0123:  ldc.r4     3.1415927
    IL_0128:  div
    IL_0129:  ldc.r4     5.0000001e-002
    IL_012e:  ldc.r4     5.
    IL_0133:  ldloc.1
    IL_0134:  mul
    IL_0135:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_013a:  mul
    IL_013b:  add
    IL_013c:  sub
    IL_013d:  stind.r4
    IL_013e:  ldloca.s   V_5
    IL_0140:  ldflda     float32 [Engine]Engine.Vector2::Y
    IL_0145:  dup
    IL_0146:  ldind.r4
    IL_0147:  ldc.r4     2.
    IL_014c:  ldloc.s    V_4
    IL_014e:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0153:  mul
    IL_0154:  ldc.r4     3.1415927
    IL_0159:  div
    IL_015a:  ldloc.0
    IL_015b:  brtrue.s   IL_0166

    IL_015d:  ldc.r4     -0.75
    IL_0162:  ldloc.1
    IL_0163:  mul
    IL_0164:  br.s       IL_016d

    IL_0166:  ldc.r4     0.75
    IL_016b:  ldloc.1
    IL_016c:  mul
    IL_016d:  add
    IL_016e:  add
    IL_016f:  stind.r4
    IL_0170:  ldstr      "Textures/SplashOverlay"
    IL_0175:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_017a:  stloc.s    V_6
    IL_017c:  ldarg.0
    IL_017d:  ldarg.1
    IL_017e:  ldloc.s    V_6
    IL_0180:  ldc.i4     0x9c
    IL_0185:  ldc.i4     0xce
    IL_018a:  ldc.i4     0xd2
    IL_018f:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0194:  ldloc.2
    IL_0195:  ldloc.2
    IL_0196:  ldloc.s    V_5
    IL_0198:  call       instance void Game.ComponentScreenOverlays::DrawTexturedOverlay(class Game.Camera,
                                                                                         class [Engine]Engine.Graphics.Texture2D,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         float32,
                                                                                         float32,
                                                                                         valuetype [Engine]Engine.Vector2)
    IL_019d:  ldarg.0
    IL_019e:  call       instance float32 Game.ComponentScreenOverlays::get_IceFactor()
    IL_01a3:  ldc.r4     0.0
    IL_01a8:  ble.un.s   IL_01b7

    IL_01aa:  ldarg.0
    IL_01ab:  ldarg.1
    IL_01ac:  ldarg.0
    IL_01ad:  call       instance float32 Game.ComponentScreenOverlays::get_IceFactor()
    IL_01b2:  call       instance void Game.ComponentScreenOverlays::DrawIceOverlay(class Game.Camera,
                                                                                    float32)
    IL_01b7:  ldarg.0
    IL_01b8:  call       instance float32 Game.ComponentScreenOverlays::get_RedoutFactor()
    IL_01bd:  ldc.r4     9.9999998e-003
    IL_01c2:  ble.un.s   IL_01f5

    IL_01c4:  ldarg.0
    IL_01c5:  ldarg.1
    IL_01c6:  ldc.i4     0xff
    IL_01cb:  ldc.i4.s   64
    IL_01cd:  ldc.i4.0
    IL_01ce:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_01d3:  ldc.r4     2.
    IL_01d8:  ldarg.0
    IL_01d9:  call       instance float32 Game.ComponentScreenOverlays::get_RedoutFactor()
    IL_01de:  ldc.r4     0.5
    IL_01e3:  sub
    IL_01e4:  mul
    IL_01e5:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_01ea:  ldarg.0
    IL_01eb:  call       instance float32 Game.ComponentScreenOverlays::get_RedoutFactor()
    IL_01f0:  call       instance void Game.ComponentScreenOverlays::DrawOverlay(class Game.Camera,
                                                                                 valuetype [Engine]Engine.Color,
                                                                                 float32,
                                                                                 float32)
    IL_01f5:  ldarg.0
    IL_01f6:  call       instance float32 Game.ComponentScreenOverlays::get_BlackoutFactor()
    IL_01fb:  ldc.r4     9.9999998e-003
    IL_0200:  ble.un.s   IL_022b

    IL_0202:  ldarg.0
    IL_0203:  ldarg.1
    IL_0204:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
    IL_0209:  ldc.r4     2.
    IL_020e:  ldarg.0
    IL_020f:  call       instance float32 Game.ComponentScreenOverlays::get_BlackoutFactor()
    IL_0214:  ldc.r4     0.5
    IL_0219:  sub
    IL_021a:  mul
    IL_021b:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0220:  ldarg.0
    IL_0221:  call       instance float32 Game.ComponentScreenOverlays::get_BlackoutFactor()
    IL_0226:  call       instance void Game.ComponentScreenOverlays::DrawOverlay(class Game.Camera,
                                                                                 valuetype [Engine]Engine.Color,
                                                                                 float32,
                                                                                 float32)
    IL_022b:  ldarg.0
    IL_022c:  call       instance float32 Game.ComponentScreenOverlays::get_GreenoutFactor()
    IL_0231:  ldc.r4     9.9999998e-003
    IL_0236:  ble.un.s   IL_0267

    IL_0238:  ldarg.0
    IL_0239:  ldarg.1
    IL_023a:  ldc.i4     0xa6
    IL_023f:  ldc.i4     0xaf
    IL_0244:  ldc.i4.s   103
    IL_0246:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_024b:  ldarg.0
    IL_024c:  call       instance float32 Game.ComponentScreenOverlays::get_GreenoutFactor()
    IL_0251:  ldc.r4     2.
    IL_0256:  ldarg.0
    IL_0257:  call       instance float32 Game.ComponentScreenOverlays::get_GreenoutFactor()
    IL_025c:  mul
    IL_025d:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0262:  call       instance void Game.ComponentScreenOverlays::DrawOverlay(class Game.Camera,
                                                                                 valuetype [Engine]Engine.Color,
                                                                                 float32,
                                                                                 float32)
    IL_0267:  ldarg.0
    IL_0268:  call       instance string Game.ComponentScreenOverlays::get_FloatingMessage()
    IL_026d:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0272:  brtrue.s   IL_0299

    IL_0274:  ldarg.0
    IL_0275:  call       instance float32 Game.ComponentScreenOverlays::get_FloatingMessageFactor()
    IL_027a:  ldc.r4     9.9999998e-003
    IL_027f:  ble.un.s   IL_0299

    IL_0281:  ldarg.0
    IL_0282:  ldarg.1
    IL_0283:  ldarg.0
    IL_0284:  call       instance string Game.ComponentScreenOverlays::get_FloatingMessage()
    IL_0289:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_028e:  ldarg.0
    IL_028f:  call       instance float32 Game.ComponentScreenOverlays::get_FloatingMessageFactor()
    IL_0294:  call       instance void Game.ComponentScreenOverlays::DrawFloatingMessage(class Game.Camera,
                                                                                         string,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         float32)
    IL_0299:  ldarg.0
    IL_029a:  call       instance string Game.ComponentScreenOverlays::get_Message()
    IL_029f:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_02a4:  brtrue.s   IL_02cb

    IL_02a6:  ldarg.0
    IL_02a7:  call       instance float32 Game.ComponentScreenOverlays::get_MessageFactor()
    IL_02ac:  ldc.r4     9.9999998e-003
    IL_02b1:  ble.un.s   IL_02cb

    IL_02b3:  ldarg.0
    IL_02b4:  ldarg.1
    IL_02b5:  ldarg.0
    IL_02b6:  call       instance string Game.ComponentScreenOverlays::get_Message()
    IL_02bb:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Gray
    IL_02c0:  ldarg.0
    IL_02c1:  call       instance float32 Game.ComponentScreenOverlays::get_MessageFactor()
    IL_02c6:  call       instance void Game.ComponentScreenOverlays::DrawMessage(class Game.Camera,
                                                                                 string,
                                                                                 valuetype [Engine]Engine.Color,
                                                                                 float32)
    IL_02cb:  ldarg.0
    IL_02cc:  ldc.r4     0.0
    IL_02d1:  call       instance void Game.ComponentScreenOverlays::set_BlackoutFactor(float32)
    IL_02d6:  ldarg.0
    IL_02d7:  ldc.r4     0.0
    IL_02dc:  call       instance void Game.ComponentScreenOverlays::set_RedoutFactor(float32)
    IL_02e1:  ldarg.0
    IL_02e2:  ldc.r4     0.0
    IL_02e7:  call       instance void Game.ComponentScreenOverlays::set_GreenoutFactor(float32)
    IL_02ec:  ldarg.0
    IL_02ed:  ldc.r4     0.0
    IL_02f2:  call       instance void Game.ComponentScreenOverlays::set_IceFactor(float32)
    IL_02f7:  ldarg.0
    IL_02f8:  ldnull
    IL_02f9:  call       instance void Game.ComponentScreenOverlays::set_FloatingMessage(string)
    IL_02fe:  ldarg.0
    IL_02ff:  ldc.r4     0.0
    IL_0304:  call       instance void Game.ComponentScreenOverlays::set_FloatingMessageFactor(float32)
    IL_0309:  ldarg.0
    IL_030a:  ldnull
    IL_030b:  call       instance void Game.ComponentScreenOverlays::set_Message(string)
    IL_0310:  ldarg.0
    IL_0311:  ldc.r4     0.0
    IL_0316:  call       instance void Game.ComponentScreenOverlays::set_MessageFactor(float32)
    IL_031b:  ret
  } // end of method ComponentScreenOverlays::Draw

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       73 (0x49)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_000d:  stfld      class Game.SubsystemTime Game.ComponentScreenOverlays::m_subsystemTime
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemSky>(bool)
    IL_001f:  stfld      class Game.SubsystemSky Game.ComponentScreenOverlays::m_subsystemSky
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentGui>(bool)
    IL_0031:  stfld      class Game.ComponentGui Game.ComponentScreenOverlays::m_componentGui
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPlayer>(bool)
    IL_0043:  stfld      class Game.ComponentPlayer Game.ComponentScreenOverlays::m_componentPlayer
    IL_0048:  ret
  } // end of method ComponentScreenOverlays::Load

  .method private hidebysig instance void 
          DrawOverlay(class Game.Camera camera,
                      valuetype [Engine]Engine.Color color,
                      float32 innerFactor,
                      float32 outerFactor) cil managed
  {
    // 代码大小       286 (0x11e)
    .maxstack  9
    .locals init (valuetype [Engine]Engine.Vector2 V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             valuetype [Engine]Engine.Vector2 V_2,
             valuetype [Engine]Engine.Vector2 V_3,
             valuetype [Engine]Engine.Vector2 V_4,
             valuetype [Engine]Engine.Vector2 V_5,
             valuetype [Engine]Engine.Color V_6,
             valuetype [Engine]Engine.Color V_7,
             int32 V_8)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance class Game.View Game.Camera::get_View()
    IL_0006:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_000b:  callvirt   instance class Game.GameViewWidget Game.GameWidget::get_GameViewWidget()
    IL_0010:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0015:  stloc.0
    IL_0016:  ldloca.s   V_1
    IL_0018:  ldc.r4     0.0
    IL_001d:  ldc.r4     0.0
    IL_0022:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0027:  ldloca.s   V_2
    IL_0029:  ldloc.0
    IL_002a:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_002f:  ldc.r4     0.0
    IL_0034:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0039:  ldloca.s   V_3
    IL_003b:  ldloc.0
    IL_003c:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0041:  ldloc.0
    IL_0042:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0047:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_004c:  ldloca.s   V_4
    IL_004e:  ldc.r4     0.0
    IL_0053:  ldloc.0
    IL_0054:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0059:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_005e:  ldloca.s   V_5
    IL_0060:  ldloc.0
    IL_0061:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0066:  ldc.r4     2.
    IL_006b:  div
    IL_006c:  ldloc.0
    IL_006d:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0072:  ldc.r4     2.
    IL_0077:  div
    IL_0078:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_007d:  ldarg.2
    IL_007e:  ldarg.s    outerFactor
    IL_0080:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_0085:  stloc.s    V_6
    IL_0087:  ldarg.2
    IL_0088:  ldarg.3
    IL_0089:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_008e:  stloc.s    V_7
    IL_0090:  ldarg.0
    IL_0091:  ldfld      class Game.ComponentGui Game.ComponentScreenOverlays::m_componentGui
    IL_0096:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.ComponentGui::PrimitivesRenderer2D
    IL_009b:  ldc.i4.0
    IL_009c:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_00a1:  ldnull
    IL_00a2:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::AlphaBlend
    IL_00a7:  callvirt   instance class [Engine]Engine.Graphics.FlatBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::FlatBatch(int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState)
    IL_00ac:  dup
    IL_00ad:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColor> [Engine]Engine.Graphics.BaseFlatBatch::TriangleVertices
    IL_00b2:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColor>::get_Count()
    IL_00b7:  stloc.s    V_8
    IL_00b9:  dup
    IL_00ba:  ldloc.1
    IL_00bb:  ldloc.2
    IL_00bc:  ldloc.s    V_5
    IL_00be:  ldc.r4     0.0
    IL_00c3:  ldloc.s    V_6
    IL_00c5:  ldloc.s    V_6
    IL_00c7:  ldloc.s    V_7
    IL_00c9:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_00ce:  dup
    IL_00cf:  ldloc.2
    IL_00d0:  ldloc.3
    IL_00d1:  ldloc.s    V_5
    IL_00d3:  ldc.r4     0.0
    IL_00d8:  ldloc.s    V_6
    IL_00da:  ldloc.s    V_6
    IL_00dc:  ldloc.s    V_7
    IL_00de:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_00e3:  dup
    IL_00e4:  ldloc.3
    IL_00e5:  ldloc.s    V_4
    IL_00e7:  ldloc.s    V_5
    IL_00e9:  ldc.r4     0.0
    IL_00ee:  ldloc.s    V_6
    IL_00f0:  ldloc.s    V_6
    IL_00f2:  ldloc.s    V_7
    IL_00f4:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_00f9:  dup
    IL_00fa:  ldloc.s    V_4
    IL_00fc:  ldloc.1
    IL_00fd:  ldloc.s    V_5
    IL_00ff:  ldc.r4     0.0
    IL_0104:  ldloc.s    V_6
    IL_0106:  ldloc.s    V_6
    IL_0108:  ldloc.s    V_7
    IL_010a:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_010f:  ldarg.1
    IL_0110:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_WidgetMatrix()
    IL_0115:  ldloc.s    V_8
    IL_0117:  ldc.i4.m1
    IL_0118:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::TransformTriangles(valuetype [Engine]Engine.Matrix,
                                                                                               int32,
                                                                                               int32)
    IL_011d:  ret
  } // end of method ComponentScreenOverlays::DrawOverlay

  .method private hidebysig instance void 
          DrawTexturedOverlay(class Game.Camera camera,
                              class [Engine]Engine.Graphics.Texture2D texture,
                              valuetype [Engine]Engine.Color color,
                              float32 innerFactor,
                              float32 outerFactor,
                              valuetype [Engine]Engine.Vector2 offset) cil managed
  {
    // 代码大小       506 (0x1fa)
    .maxstack  12
    .locals init (class Game.Widget V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             valuetype [Engine]Engine.Vector2 V_2,
             valuetype [Engine]Engine.Vector2 V_3,
             valuetype [Engine]Engine.Vector2 V_4,
             valuetype [Engine]Engine.Vector2 V_5,
             valuetype [Engine]Engine.Vector2 V_6,
             valuetype [Engine]Engine.Vector2 V_7,
             valuetype [Engine]Engine.Vector2 V_8,
             valuetype [Engine]Engine.Vector2 V_9,
             valuetype [Engine]Engine.Vector2 V_10,
             valuetype [Engine]Engine.Vector2 V_11,
             valuetype [Engine]Engine.Color V_12,
             valuetype [Engine]Engine.Color V_13,
             int32 V_14)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance class Game.View Game.Camera::get_View()
    IL_0006:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_000b:  callvirt   instance class Game.GameViewWidget Game.GameWidget::get_GameViewWidget()
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0017:  stloc.1
    IL_0018:  ldloc.0
    IL_0019:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_001e:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0023:  ldloc.0
    IL_0024:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0029:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_002e:  div
    IL_002f:  ldloca.s   V_2
    IL_0031:  ldc.r4     0.0
    IL_0036:  ldc.r4     0.0
    IL_003b:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0040:  ldloca.s   V_3
    IL_0042:  ldloc.1
    IL_0043:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0048:  ldc.r4     0.0
    IL_004d:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0052:  ldloca.s   V_4
    IL_0054:  ldloc.1
    IL_0055:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_005a:  ldloc.1
    IL_005b:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0060:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0065:  ldloca.s   V_5
    IL_0067:  ldc.r4     0.0
    IL_006c:  ldloc.1
    IL_006d:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0072:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0077:  ldloca.s   V_6
    IL_0079:  ldloc.1
    IL_007a:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_007f:  ldc.r4     2.
    IL_0084:  div
    IL_0085:  ldloc.1
    IL_0086:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_008b:  ldc.r4     2.
    IL_0090:  div
    IL_0091:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0096:  ldarga.s   offset
    IL_0098:  ldarg.s    offset
    IL_009a:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_009f:  ldc.r4     1.
    IL_00a4:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_00a9:  stfld      float32 [Engine]Engine.Vector2::X
    IL_00ae:  ldarga.s   offset
    IL_00b0:  ldarg.s    offset
    IL_00b2:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00b7:  ldc.r4     1.
    IL_00bc:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_00c1:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_00c6:  ldc.r4     0.0
    IL_00cb:  ldc.r4     0.0
    IL_00d0:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00d5:  ldarg.s    offset
    IL_00d7:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_00dc:  stloc.s    V_7
    IL_00de:  dup
    IL_00df:  ldc.r4     0.0
    IL_00e4:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00e9:  ldarg.s    offset
    IL_00eb:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_00f0:  stloc.s    V_8
    IL_00f2:  dup
    IL_00f3:  ldc.r4     1.
    IL_00f8:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00fd:  ldarg.s    offset
    IL_00ff:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0104:  stloc.s    V_9
    IL_0106:  ldc.r4     0.0
    IL_010b:  ldc.r4     1.
    IL_0110:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0115:  ldarg.s    offset
    IL_0117:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_011c:  stloc.s    V_10
    IL_011e:  ldc.r4     2.
    IL_0123:  div
    IL_0124:  ldc.r4     0.5
    IL_0129:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_012e:  ldarg.s    offset
    IL_0130:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0135:  stloc.s    V_11
    IL_0137:  ldarg.3
    IL_0138:  ldarg.s    outerFactor
    IL_013a:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_013f:  stloc.s    V_12
    IL_0141:  ldarg.3
    IL_0142:  ldarg.s    innerFactor
    IL_0144:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_0149:  stloc.s    V_13
    IL_014b:  ldarg.0
    IL_014c:  ldfld      class Game.ComponentGui Game.ComponentScreenOverlays::m_componentGui
    IL_0151:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.ComponentGui::PrimitivesRenderer2D
    IL_0156:  ldarg.2
    IL_0157:  ldc.i4.0
    IL_0158:  ldc.i4.0
    IL_0159:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_015e:  ldnull
    IL_015f:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::Additive
    IL_0164:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointWrap
    IL_0169:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_016e:  dup
    IL_016f:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleVertices
    IL_0174:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Count()
    IL_0179:  stloc.s    V_14
    IL_017b:  dup
    IL_017c:  ldloc.2
    IL_017d:  ldloc.3
    IL_017e:  ldloc.s    V_6
    IL_0180:  ldc.r4     0.0
    IL_0185:  ldloc.s    V_7
    IL_0187:  ldloc.s    V_8
    IL_0189:  ldloc.s    V_11
    IL_018b:  ldloc.s    V_12
    IL_018d:  ldloc.s    V_12
    IL_018f:  ldloc.s    V_13
    IL_0191:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color,
                                                                                              valuetype [Engine]Engine.Color,
                                                                                              valuetype [Engine]Engine.Color)
    IL_0196:  dup
    IL_0197:  ldloc.3
    IL_0198:  ldloc.s    V_4
    IL_019a:  ldloc.s    V_6
    IL_019c:  ldc.r4     0.0
    IL_01a1:  ldloc.s    V_8
    IL_01a3:  ldloc.s    V_9
    IL_01a5:  ldloc.s    V_11
    IL_01a7:  ldloc.s    V_12
    IL_01a9:  ldloc.s    V_12
    IL_01ab:  ldloc.s    V_13
    IL_01ad:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color,
                                                                                              valuetype [Engine]Engine.Color,
                                                                                              valuetype [Engine]Engine.Color)
    IL_01b2:  dup
    IL_01b3:  ldloc.s    V_4
    IL_01b5:  ldloc.s    V_5
    IL_01b7:  ldloc.s    V_6
    IL_01b9:  ldc.r4     0.0
    IL_01be:  ldloc.s    V_9
    IL_01c0:  ldloc.s    V_10
    IL_01c2:  ldloc.s    V_11
    IL_01c4:  ldloc.s    V_12
    IL_01c6:  ldloc.s    V_12
    IL_01c8:  ldloc.s    V_13
    IL_01ca:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color,
                                                                                              valuetype [Engine]Engine.Color,
                                                                                              valuetype [Engine]Engine.Color)
    IL_01cf:  dup
    IL_01d0:  ldloc.s    V_5
    IL_01d2:  ldloc.2
    IL_01d3:  ldloc.s    V_6
    IL_01d5:  ldc.r4     0.0
    IL_01da:  ldloc.s    V_10
    IL_01dc:  ldloc.s    V_7
    IL_01de:  ldloc.s    V_11
    IL_01e0:  ldloc.s    V_12
    IL_01e2:  ldloc.s    V_12
    IL_01e4:  ldloc.s    V_13
    IL_01e6:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color,
                                                                                              valuetype [Engine]Engine.Color,
                                                                                              valuetype [Engine]Engine.Color)
    IL_01eb:  ldarg.1
    IL_01ec:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_WidgetMatrix()
    IL_01f1:  ldloc.s    V_14
    IL_01f3:  ldc.i4.m1
    IL_01f4:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::TransformTriangles(valuetype [Engine]Engine.Matrix,
                                                                                                   int32,
                                                                                                   int32)
    IL_01f9:  ret
  } // end of method ComponentScreenOverlays::DrawTexturedOverlay

  .method private hidebysig instance void 
          DrawIceOverlay(class Game.Camera camera,
                         float32 factor) cil managed
  {
    // 代码大小       737 (0x2e1)
    .maxstack  9
    .locals init (valuetype [Engine]Engine.Vector2 V_0,
             int32 V_1,
             int32 V_2,
             class Game.Random V_3,
             class [Engine]Engine.Graphics.Texture2D V_4,
             class [Engine]Engine.Graphics.TexturedBatch2D V_5,
             int32 V_6,
             float32 V_7,
             class Game.Random V_8,
             int32 V_9,
             int32 V_10,
             float32 V_11,
             float32 V_12,
             float32 V_13,
             float32 V_14,
             int32 V_15,
             int32 V_16,
             float32 V_17,
             float32 V_18,
             valuetype [Engine]Engine.Vector2 V_19,
             valuetype [Engine]Engine.Vector2 V_20,
             valuetype [Engine]Engine.Vector2 V_21,
             valuetype [Engine]Engine.Vector2 V_22,
             valuetype [Engine]Engine.Vector2 V_23,
             valuetype [Engine]Engine.Vector2 V_24,
             valuetype [Engine]Engine.Vector2 V_25,
             valuetype [Engine]Engine.Vector2 V_26)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance class Game.View Game.Camera::get_View()
    IL_0006:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_000b:  callvirt   instance class Game.GameViewWidget Game.GameWidget::get_GameViewWidget()
    IL_0010:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0015:  stloc.0
    IL_0016:  ldc.i4.s   12
    IL_0018:  stloc.1
    IL_0019:  ldloc.1
    IL_001a:  conv.r4
    IL_001b:  ldloc.0
    IL_001c:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0021:  mul
    IL_0022:  ldloc.0
    IL_0023:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0028:  div
    IL_0029:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_002e:  conv.i4
    IL_002f:  stloc.2
    IL_0030:  ldarg.0
    IL_0031:  ldfld      valuetype [Engine]Engine.Vector2[] Game.ComponentScreenOverlays::m_iceVertices
    IL_0036:  brfalse.s  IL_0049

    IL_0038:  ldarg.0
    IL_0039:  ldfld      valuetype [Engine]Engine.Vector2 Game.ComponentScreenOverlays::m_iceVerticesWidgetSize
    IL_003e:  ldloc.0
    IL_003f:  call       bool [Engine]Engine.Vector2::op_Inequality(valuetype [Engine]Engine.Vector2,
                                                                    valuetype [Engine]Engine.Vector2)
    IL_0044:  brfalse    IL_0117

    IL_0049:  ldc.i4.0
    IL_004a:  newobj     instance void Game.Random::.ctor(int32)
    IL_004f:  stloc.s    V_8
    IL_0051:  ldarg.0
    IL_0052:  ldloc.0
    IL_0053:  stfld      valuetype [Engine]Engine.Vector2 Game.ComponentScreenOverlays::m_iceVerticesWidgetSize
    IL_0058:  ldarg.0
    IL_0059:  ldloc.2
    IL_005a:  ldc.i4.1
    IL_005b:  add
    IL_005c:  ldloc.1
    IL_005d:  ldc.i4.1
    IL_005e:  add
    IL_005f:  mul
    IL_0060:  newarr     [Engine]Engine.Vector2
    IL_0065:  stfld      valuetype [Engine]Engine.Vector2[] Game.ComponentScreenOverlays::m_iceVertices
    IL_006a:  ldc.i4.0
    IL_006b:  stloc.s    V_9
    IL_006d:  br         IL_010f

    IL_0072:  ldc.i4.0
    IL_0073:  stloc.s    V_10
    IL_0075:  br         IL_0101

    IL_007a:  ldloc.s    V_9
    IL_007c:  conv.r4
    IL_007d:  stloc.s    V_11
    IL_007f:  ldloc.s    V_10
    IL_0081:  conv.r4
    IL_0082:  stloc.s    V_12
    IL_0084:  ldloc.s    V_9
    IL_0086:  brfalse.s  IL_00a3

    IL_0088:  ldloc.s    V_9
    IL_008a:  ldloc.2
    IL_008b:  beq.s      IL_00a3

    IL_008d:  ldloc.s    V_11
    IL_008f:  ldloc.s    V_8
    IL_0091:  ldc.r4     -0.40000001
    IL_0096:  ldc.r4     0.40000001
    IL_009b:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00a0:  add
    IL_00a1:  stloc.s    V_11
    IL_00a3:  ldloc.s    V_10
    IL_00a5:  brfalse.s  IL_00c2

    IL_00a7:  ldloc.s    V_10
    IL_00a9:  ldloc.1
    IL_00aa:  beq.s      IL_00c2

    IL_00ac:  ldloc.s    V_12
    IL_00ae:  ldloc.s    V_8
    IL_00b0:  ldc.r4     -0.40000001
    IL_00b5:  ldc.r4     0.40000001
    IL_00ba:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00bf:  add
    IL_00c0:  stloc.s    V_12
    IL_00c2:  ldloc.s    V_11
    IL_00c4:  ldloc.2
    IL_00c5:  conv.r4
    IL_00c6:  div
    IL_00c7:  ldloc.0
    IL_00c8:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00cd:  mul
    IL_00ce:  stloc.s    V_13
    IL_00d0:  ldloc.s    V_12
    IL_00d2:  ldloc.1
    IL_00d3:  conv.r4
    IL_00d4:  div
    IL_00d5:  ldloc.0
    IL_00d6:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00db:  mul
    IL_00dc:  stloc.s    V_14
    IL_00de:  ldarg.0
    IL_00df:  ldfld      valuetype [Engine]Engine.Vector2[] Game.ComponentScreenOverlays::m_iceVertices
    IL_00e4:  ldloc.s    V_9
    IL_00e6:  ldloc.s    V_10
    IL_00e8:  ldloc.2
    IL_00e9:  ldc.i4.1
    IL_00ea:  add
    IL_00eb:  mul
    IL_00ec:  add
    IL_00ed:  ldloc.s    V_13
    IL_00ef:  ldloc.s    V_14
    IL_00f1:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00f6:  stelem     [Engine]Engine.Vector2
    IL_00fb:  ldloc.s    V_10
    IL_00fd:  ldc.i4.1
    IL_00fe:  add
    IL_00ff:  stloc.s    V_10
    IL_0101:  ldloc.s    V_10
    IL_0103:  ldloc.1
    IL_0104:  ble        IL_007a

    IL_0109:  ldloc.s    V_9
    IL_010b:  ldc.i4.1
    IL_010c:  add
    IL_010d:  stloc.s    V_9
    IL_010f:  ldloc.s    V_9
    IL_0111:  ldloc.2
    IL_0112:  ble        IL_0072

    IL_0117:  ldc.i4.0
    IL_0118:  newobj     instance void Game.Random::.ctor(int32)
    IL_011d:  stloc.3
    IL_011e:  ldstr      "Textures/IceOverlay"
    IL_0123:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_0128:  stloc.s    V_4
    IL_012a:  ldarg.0
    IL_012b:  ldfld      class Game.ComponentGui Game.ComponentScreenOverlays::m_componentGui
    IL_0130:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.ComponentGui::PrimitivesRenderer2D
    IL_0135:  ldloc.s    V_4
    IL_0137:  ldc.i4.0
    IL_0138:  ldc.i4.0
    IL_0139:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_013e:  ldnull
    IL_013f:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::AlphaBlend
    IL_0144:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointWrap
    IL_0149:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_014e:  stloc.s    V_5
    IL_0150:  ldloc.s    V_5
    IL_0152:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleVertices
    IL_0157:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Count()
    IL_015c:  stloc.s    V_6
    IL_015e:  ldc.r4     1.
    IL_0163:  ldloc.0
    IL_0164:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0169:  div
    IL_016a:  stloc.s    V_7
    IL_016c:  ldc.i4.0
    IL_016d:  stloc.s    V_15
    IL_016f:  br         IL_02c8

    IL_0174:  ldc.i4.0
    IL_0175:  stloc.s    V_16
    IL_0177:  br         IL_02ba

    IL_017c:  ldloc.s    V_15
    IL_017e:  conv.r4
    IL_017f:  ldloc.2
    IL_0180:  ldc.i4.1
    IL_0181:  sub
    IL_0182:  conv.r4
    IL_0183:  ldc.r4     2.
    IL_0188:  div
    IL_0189:  sub
    IL_018a:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_018f:  ldloc.2
    IL_0190:  ldc.i4.1
    IL_0191:  sub
    IL_0192:  conv.r4
    IL_0193:  ldc.r4     2.
    IL_0198:  div
    IL_0199:  div
    IL_019a:  ldloc.s    V_16
    IL_019c:  conv.r4
    IL_019d:  ldloc.1
    IL_019e:  ldc.i4.1
    IL_019f:  sub
    IL_01a0:  conv.r4
    IL_01a1:  ldc.r4     2.
    IL_01a6:  div
    IL_01a7:  sub
    IL_01a8:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_01ad:  ldloc.1
    IL_01ae:  ldc.i4.1
    IL_01af:  sub
    IL_01b0:  conv.r4
    IL_01b1:  ldc.r4     2.
    IL_01b6:  div
    IL_01b7:  div
    IL_01b8:  stloc.s    V_17
    IL_01ba:  dup
    IL_01bb:  mul
    IL_01bc:  ldloc.s    V_17
    IL_01be:  ldloc.s    V_17
    IL_01c0:  mul
    IL_01c1:  add
    IL_01c2:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_01c7:  ldc.r4     1.4141999
    IL_01cc:  div
    IL_01cd:  stloc.s    V_18
    IL_01cf:  ldc.r4     1.
    IL_01d4:  ldloc.s    V_18
    IL_01d6:  sub
    IL_01d7:  ldloc.3
    IL_01d8:  ldc.r4     0.0
    IL_01dd:  ldc.r4     5.0000001e-002
    IL_01e2:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01e7:  add
    IL_01e8:  ldarg.2
    IL_01e9:  bge.un     IL_02b4

    IL_01ee:  ldarg.0
    IL_01ef:  ldfld      valuetype [Engine]Engine.Vector2[] Game.ComponentScreenOverlays::m_iceVertices
    IL_01f4:  ldloc.s    V_15
    IL_01f6:  ldloc.s    V_16
    IL_01f8:  ldloc.2
    IL_01f9:  ldc.i4.1
    IL_01fa:  add
    IL_01fb:  mul
    IL_01fc:  add
    IL_01fd:  ldelem     [Engine]Engine.Vector2
    IL_0202:  stloc.s    V_19
    IL_0204:  ldarg.0
    IL_0205:  ldfld      valuetype [Engine]Engine.Vector2[] Game.ComponentScreenOverlays::m_iceVertices
    IL_020a:  ldloc.s    V_15
    IL_020c:  ldc.i4.1
    IL_020d:  add
    IL_020e:  ldloc.s    V_16
    IL_0210:  ldloc.2
    IL_0211:  ldc.i4.1
    IL_0212:  add
    IL_0213:  mul
    IL_0214:  add
    IL_0215:  ldelem     [Engine]Engine.Vector2
    IL_021a:  stloc.s    V_20
    IL_021c:  ldarg.0
    IL_021d:  ldfld      valuetype [Engine]Engine.Vector2[] Game.ComponentScreenOverlays::m_iceVertices
    IL_0222:  ldloc.s    V_15
    IL_0224:  ldc.i4.1
    IL_0225:  add
    IL_0226:  ldloc.s    V_16
    IL_0228:  ldc.i4.1
    IL_0229:  add
    IL_022a:  ldloc.2
    IL_022b:  ldc.i4.1
    IL_022c:  add
    IL_022d:  mul
    IL_022e:  add
    IL_022f:  ldelem     [Engine]Engine.Vector2
    IL_0234:  stloc.s    V_21
    IL_0236:  ldarg.0
    IL_0237:  ldfld      valuetype [Engine]Engine.Vector2[] Game.ComponentScreenOverlays::m_iceVertices
    IL_023c:  ldloc.s    V_15
    IL_023e:  ldloc.s    V_16
    IL_0240:  ldc.i4.1
    IL_0241:  add
    IL_0242:  ldloc.2
    IL_0243:  ldc.i4.1
    IL_0244:  add
    IL_0245:  mul
    IL_0246:  add
    IL_0247:  ldelem     [Engine]Engine.Vector2
    IL_024c:  stloc.s    V_22
    IL_024e:  ldloc.s    V_19
    IL_0250:  ldloc.s    V_7
    IL_0252:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0257:  stloc.s    V_23
    IL_0259:  ldloc.s    V_20
    IL_025b:  ldloc.s    V_7
    IL_025d:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0262:  stloc.s    V_24
    IL_0264:  ldloc.s    V_21
    IL_0266:  ldloc.s    V_7
    IL_0268:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_026d:  stloc.s    V_25
    IL_026f:  ldloc.s    V_22
    IL_0271:  ldloc.s    V_7
    IL_0273:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0278:  stloc.s    V_26
    IL_027a:  ldloc.s    V_5
    IL_027c:  ldloc.s    V_19
    IL_027e:  ldloc.s    V_20
    IL_0280:  ldloc.s    V_21
    IL_0282:  ldc.r4     0.0
    IL_0287:  ldloc.s    V_23
    IL_0289:  ldloc.s    V_24
    IL_028b:  ldloc.s    V_25
    IL_028d:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0292:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color)
    IL_0297:  ldloc.s    V_5
    IL_0299:  ldloc.s    V_21
    IL_029b:  ldloc.s    V_22
    IL_029d:  ldloc.s    V_19
    IL_029f:  ldc.r4     0.0
    IL_02a4:  ldloc.s    V_25
    IL_02a6:  ldloc.s    V_26
    IL_02a8:  ldloc.s    V_23
    IL_02aa:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_02af:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color)
    IL_02b4:  ldloc.s    V_16
    IL_02b6:  ldc.i4.1
    IL_02b7:  add
    IL_02b8:  stloc.s    V_16
    IL_02ba:  ldloc.s    V_16
    IL_02bc:  ldloc.1
    IL_02bd:  blt        IL_017c

    IL_02c2:  ldloc.s    V_15
    IL_02c4:  ldc.i4.1
    IL_02c5:  add
    IL_02c6:  stloc.s    V_15
    IL_02c8:  ldloc.s    V_15
    IL_02ca:  ldloc.2
    IL_02cb:  blt        IL_0174

    IL_02d0:  ldloc.s    V_5
    IL_02d2:  ldarg.1
    IL_02d3:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_WidgetMatrix()
    IL_02d8:  ldloc.s    V_6
    IL_02da:  ldc.i4.m1
    IL_02db:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::TransformTriangles(valuetype [Engine]Engine.Matrix,
                                                                                                   int32,
                                                                                                   int32)
    IL_02e0:  ret
  } // end of method ComponentScreenOverlays::DrawIceOverlay

  .method private hidebysig instance void 
          DrawFloatingMessage(class Game.Camera camera,
                              string message,
                              valuetype [Engine]Engine.Color color,
                              float32 factor) cil managed
  {
    // 代码大小       243 (0xf3)
    .maxstack  10
    .locals init (class Game.GameViewWidget V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             class [Engine]Engine.Media.BitmapFont V_2,
             int32 V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentPlayer Game.ComponentScreenOverlays::m_componentPlayer
    IL_0006:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_000b:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_0010:  callvirt   instance class Game.GameViewWidget Game.GameWidget::get_GameViewWidget()
    IL_0015:  stloc.0
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_001c:  ldc.r4     2.
    IL_0021:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0026:  stloc.1
    IL_0027:  ldloca.s   V_1
    IL_0029:  ldflda     float32 [Engine]Engine.Vector2::X
    IL_002e:  dup
    IL_002f:  ldind.r4
    IL_0030:  ldc.r4     7.e-002
    IL_0035:  ldloc.0
    IL_0036:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_003b:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0040:  mul
    IL_0041:  ldc.r8     1.7300000190734863
    IL_004a:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_004f:  mul
    IL_0050:  call       float64 [Engine]Engine.MathUtils::Sin(float64)
    IL_0055:  conv.r4
    IL_0056:  mul
    IL_0057:  add
    IL_0058:  stind.r4
    IL_0059:  ldloca.s   V_1
    IL_005b:  ldflda     float32 [Engine]Engine.Vector2::Y
    IL_0060:  dup
    IL_0061:  ldind.r4
    IL_0062:  ldc.r4     7.e-002
    IL_0067:  ldloc.0
    IL_0068:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_006d:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0072:  mul
    IL_0073:  ldc.r8     1.1200000047683716
    IL_007c:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_0081:  mul
    IL_0082:  call       float64 [Engine]Engine.MathUtils::Cos(float64)
    IL_0087:  conv.r4
    IL_0088:  mul
    IL_0089:  add
    IL_008a:  stind.r4
    IL_008b:  ldstr      "Fonts/Pericles32"
    IL_0090:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Media.BitmapFont>(string)
    IL_0095:  stloc.2
    IL_0096:  ldarg.0
    IL_0097:  ldfld      class Game.ComponentGui Game.ComponentScreenOverlays::m_componentGui
    IL_009c:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.ComponentGui::PrimitivesRenderer2D
    IL_00a1:  ldloc.2
    IL_00a2:  ldc.i4.1
    IL_00a3:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_00a8:  ldnull
    IL_00a9:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::AlphaBlend
    IL_00ae:  ldnull
    IL_00af:  callvirt   instance class [Engine]Engine.Graphics.FontBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::FontBatch(class [Engine]Engine.Media.BitmapFont,
                                                                                                                                    int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState,
                                                                                                                                    class [Engine]Engine.Graphics.SamplerState)
    IL_00b4:  dup
    IL_00b5:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture> [Engine]Engine.Graphics.BaseFontBatch::TriangleVertices
    IL_00ba:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Count()
    IL_00bf:  stloc.3
    IL_00c0:  dup
    IL_00c1:  ldarg.2
    IL_00c2:  ldloc.1
    IL_00c3:  ldc.r4     0.0
    IL_00c8:  ldarg.3
    IL_00c9:  ldarg.s    factor
    IL_00cb:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_00d0:  ldc.i4.3
    IL_00d1:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::One
    IL_00d6:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_00db:  ldc.r4     0.0
    IL_00e0:  callvirt   instance void [Engine]Engine.Graphics.FontBatch2D::QueueText(string,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color,
                                                                                      valuetype [Engine]Engine.Graphics.TextAnchor,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32)
    IL_00e5:  ldarg.1
    IL_00e6:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_WidgetMatrix()
    IL_00eb:  ldloc.3
    IL_00ec:  ldc.i4.m1
    IL_00ed:  callvirt   instance void [Engine]Engine.Graphics.FontBatch2D::TransformTriangles(valuetype [Engine]Engine.Matrix,
                                                                                               int32,
                                                                                               int32)
    IL_00f2:  ret
  } // end of method ComponentScreenOverlays::DrawFloatingMessage

  .method private hidebysig instance void 
          DrawMessage(class Game.Camera camera,
                      string message,
                      valuetype [Engine]Engine.Color color,
                      float32 factor) cil managed
  {
    // 代码大小       168 (0xa8)
    .maxstack  10
    .locals init (class Game.GameViewWidget V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             class [Engine]Engine.Media.BitmapFont V_2,
             int32 V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentPlayer Game.ComponentScreenOverlays::m_componentPlayer
    IL_0006:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_000b:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_0010:  callvirt   instance class Game.GameViewWidget Game.GameWidget::get_GameViewWidget()
    IL_0015:  stloc.0
    IL_0016:  ldloca.s   V_1
    IL_0018:  ldloc.0
    IL_0019:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_001e:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0023:  ldc.r4     2.
    IL_0028:  div
    IL_0029:  ldloc.0
    IL_002a:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_002f:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0034:  ldc.r4     25.
    IL_0039:  sub
    IL_003a:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_003f:  ldstr      "Fonts/Pericles18"
    IL_0044:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Media.BitmapFont>(string)
    IL_0049:  stloc.2
    IL_004a:  ldarg.0
    IL_004b:  ldfld      class Game.ComponentGui Game.ComponentScreenOverlays::m_componentGui
    IL_0050:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.ComponentGui::PrimitivesRenderer2D
    IL_0055:  ldloc.2
    IL_0056:  ldc.i4.1
    IL_0057:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_005c:  ldnull
    IL_005d:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::AlphaBlend
    IL_0062:  ldnull
    IL_0063:  callvirt   instance class [Engine]Engine.Graphics.FontBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::FontBatch(class [Engine]Engine.Media.BitmapFont,
                                                                                                                                    int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState,
                                                                                                                                    class [Engine]Engine.Graphics.SamplerState)
    IL_0068:  dup
    IL_0069:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture> [Engine]Engine.Graphics.BaseFontBatch::TriangleVertices
    IL_006e:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Count()
    IL_0073:  stloc.3
    IL_0074:  dup
    IL_0075:  ldarg.2
    IL_0076:  ldloc.1
    IL_0077:  ldc.r4     0.0
    IL_007c:  ldarg.3
    IL_007d:  ldarg.s    factor
    IL_007f:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_0084:  ldc.i4.s   9
    IL_0086:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::One
    IL_008b:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0090:  ldc.r4     0.0
    IL_0095:  callvirt   instance void [Engine]Engine.Graphics.FontBatch2D::QueueText(string,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color,
                                                                                      valuetype [Engine]Engine.Graphics.TextAnchor,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32)
    IL_009a:  ldarg.1
    IL_009b:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_WidgetMatrix()
    IL_00a0:  ldloc.3
    IL_00a1:  ldc.i4.m1
    IL_00a2:  callvirt   instance void [Engine]Engine.Graphics.FontBatch2D::TransformTriangles(valuetype [Engine]Engine.Matrix,
                                                                                               int32,
                                                                                               int32)
    IL_00a7:  ret
  } // end of method ComponentScreenOverlays::DrawMessage

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_0006:  ret
  } // end of method ComponentScreenOverlays::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4     0x44d
    IL_000d:  stelem.i4
    IL_000e:  stsfld     int32[] Game.ComponentScreenOverlays::m_drawOrders
    IL_0013:  ret
  } // end of method ComponentScreenOverlays::.cctor

  .property instance float32 BlackoutFactor()
  {
    .get instance float32 Game.ComponentScreenOverlays::get_BlackoutFactor()
    .set instance void Game.ComponentScreenOverlays::set_BlackoutFactor(float32)
  } // end of property ComponentScreenOverlays::BlackoutFactor
  .property instance float32 RedoutFactor()
  {
    .get instance float32 Game.ComponentScreenOverlays::get_RedoutFactor()
    .set instance void Game.ComponentScreenOverlays::set_RedoutFactor(float32)
  } // end of property ComponentScreenOverlays::RedoutFactor
  .property instance float32 GreenoutFactor()
  {
    .get instance float32 Game.ComponentScreenOverlays::get_GreenoutFactor()
    .set instance void Game.ComponentScreenOverlays::set_GreenoutFactor(float32)
  } // end of property ComponentScreenOverlays::GreenoutFactor
  .property instance string FloatingMessage()
  {
    .get instance string Game.ComponentScreenOverlays::get_FloatingMessage()
    .set instance void Game.ComponentScreenOverlays::set_FloatingMessage(string)
  } // end of property ComponentScreenOverlays::FloatingMessage
  .property instance float32 FloatingMessageFactor()
  {
    .get instance float32 Game.ComponentScreenOverlays::get_FloatingMessageFactor()
    .set instance void Game.ComponentScreenOverlays::set_FloatingMessageFactor(float32)
  } // end of property ComponentScreenOverlays::FloatingMessageFactor
  .property instance string Message()
  {
    .get instance string Game.ComponentScreenOverlays::get_Message()
    .set instance void Game.ComponentScreenOverlays::set_Message(string)
  } // end of property ComponentScreenOverlays::Message
  .property instance float32 MessageFactor()
  {
    .get instance float32 Game.ComponentScreenOverlays::get_MessageFactor()
    .set instance void Game.ComponentScreenOverlays::set_MessageFactor(float32)
  } // end of property ComponentScreenOverlays::MessageFactor
  .property instance float32 IceFactor()
  {
    .get instance float32 Game.ComponentScreenOverlays::get_IceFactor()
    .set instance void Game.ComponentScreenOverlays::set_IceFactor(float32)
  } // end of property ComponentScreenOverlays::IceFactor
  .property instance int32[] DrawOrders()
  {
    .get instance int32[] Game.ComponentScreenOverlays::get_DrawOrders()
  } // end of property ComponentScreenOverlays::DrawOrders
} // end of class Game.ComponentScreenOverlays