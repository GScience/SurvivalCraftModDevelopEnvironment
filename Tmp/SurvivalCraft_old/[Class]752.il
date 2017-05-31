.class public auto ansi beforefieldinit Game.SubsystemScreenOverlays
       extends [EntitySystem]GameEntitySystem.Subsystem
       implements Game.IDrawable
{
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemGui m_subsystemGui
  .field private class Game.SubsystemSky m_subsystemSky
  .field private valuetype [Engine]Engine.Vector2[] m_iceVertices
  .field private valuetype [Engine]Engine.Rectangle m_iceVerticesViewportRectangle
  .field private valuetype [System.Runtime]System.Nullable`1<float64> m_waterSurfaceCrossTime
  .field private bool m_wasUnderWater
  .field private float32 '<BlackoutFactor>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<RedoutFactor>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private string '<FloatingMessage>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<FloatingMessageFactor>k__BackingField'
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
    IL_0001:  ldfld      float32 Game.SubsystemScreenOverlays::'<BlackoutFactor>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemScreenOverlays::get_BlackoutFactor

  .method public hidebysig specialname instance void 
          set_BlackoutFactor(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.SubsystemScreenOverlays::'<BlackoutFactor>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemScreenOverlays::set_BlackoutFactor

  .method public hidebysig specialname instance float32 
          get_RedoutFactor() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.SubsystemScreenOverlays::'<RedoutFactor>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemScreenOverlays::get_RedoutFactor

  .method public hidebysig specialname instance void 
          set_RedoutFactor(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.SubsystemScreenOverlays::'<RedoutFactor>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemScreenOverlays::set_RedoutFactor

  .method public hidebysig specialname instance string 
          get_FloatingMessage() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.SubsystemScreenOverlays::'<FloatingMessage>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemScreenOverlays::get_FloatingMessage

  .method public hidebysig specialname instance void 
          set_FloatingMessage(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string Game.SubsystemScreenOverlays::'<FloatingMessage>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemScreenOverlays::set_FloatingMessage

  .method public hidebysig specialname instance float32 
          get_FloatingMessageFactor() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.SubsystemScreenOverlays::'<FloatingMessageFactor>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemScreenOverlays::get_FloatingMessageFactor

  .method public hidebysig specialname instance void 
          set_FloatingMessageFactor(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.SubsystemScreenOverlays::'<FloatingMessageFactor>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemScreenOverlays::set_FloatingMessageFactor

  .method public hidebysig specialname instance float32 
          get_IceFactor() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.SubsystemScreenOverlays::'<IceFactor>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemScreenOverlays::get_IceFactor

  .method public hidebysig specialname instance void 
          set_IceFactor(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.SubsystemScreenOverlays::'<IceFactor>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemScreenOverlays::set_IceFactor

  .method public hidebysig newslot specialname virtual final 
          instance int32[]  get_DrawOrders() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     int32[] Game.SubsystemScreenOverlays::m_drawOrders
    IL_0005:  ret
  } // end of method SubsystemScreenOverlays::get_DrawOrders

  .method public hidebysig newslot virtual final 
          instance void  Draw(class Game.SubsystemDrawing subsystemDrawing,
                              int32 drawOrder) cil managed
  {
    // 代码大小       632 (0x278)
    .maxstack  6
    .locals init (bool V_0,
             float32 V_1,
             float32 V_2,
             valuetype [Engine]Engine.Matrix V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             valuetype [Engine]Engine.Vector2 V_5,
             class [Engine]Engine.Graphics.Texture2D V_6)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemSky Game.SubsystemScreenOverlays::m_subsystemSky
    IL_0006:  callvirt   instance float32 Game.SubsystemSky::get_UnderWaterDepth()
    IL_000b:  ldc.r4     0.0
    IL_0010:  cgt
    IL_0012:  stloc.0
    IL_0013:  ldloc.0
    IL_0014:  ldarg.0
    IL_0015:  ldfld      bool Game.SubsystemScreenOverlays::m_wasUnderWater
    IL_001a:  beq.s      IL_0039

    IL_001c:  ldarg.0
    IL_001d:  ldloc.0
    IL_001e:  stfld      bool Game.SubsystemScreenOverlays::m_wasUnderWater
    IL_0023:  ldarg.0
    IL_0024:  ldarg.0
    IL_0025:  ldfld      class Game.SubsystemTime Game.SubsystemScreenOverlays::m_subsystemTime
    IL_002a:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_002f:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_0034:  stfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.SubsystemScreenOverlays::m_waterSurfaceCrossTime
    IL_0039:  ldarg.0
    IL_003a:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.SubsystemScreenOverlays::m_waterSurfaceCrossTime
    IL_003f:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_0044:  brfalse    IL_0188

    IL_0049:  ldarg.0
    IL_004a:  ldfld      class Game.SubsystemTime Game.SubsystemScreenOverlays::m_subsystemTime
    IL_004f:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0054:  ldarg.0
    IL_0055:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.SubsystemScreenOverlays::m_waterSurfaceCrossTime
    IL_005a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::get_Value()
    IL_005f:  sub
    IL_0060:  conv.r4
    IL_0061:  stloc.1
    IL_0062:  ldc.r4     0.5
    IL_0067:  ldc.r4     1.
    IL_006c:  ldc.r4     0.75
    IL_0071:  ldloc.1
    IL_0072:  mul
    IL_0073:  sub
    IL_0074:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0079:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
    IL_007e:  mul
    IL_007f:  stloc.2
    IL_0080:  ldloc.2
    IL_0081:  ldc.r4     9.9999998e-003
    IL_0086:  ble.un     IL_0188

    IL_008b:  ldloca.s   V_3
    IL_008d:  initobj    [Engine]Engine.Matrix
    IL_0093:  ldloca.s   V_3
    IL_0095:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_009a:  call       instance void [Engine]Engine.Matrix::set_Translation(valuetype [Engine]Engine.Vector3)
    IL_009f:  ldloca.s   V_3
    IL_00a1:  ldarg.1
    IL_00a2:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewDirection()
    IL_00a7:  call       instance void [Engine]Engine.Matrix::set_Forward(valuetype [Engine]Engine.Vector3)
    IL_00ac:  ldloca.s   V_3
    IL_00ae:  ldarg.1
    IL_00af:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewUp()
    IL_00b4:  ldloca.s   V_3
    IL_00b6:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_00bb:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_00c0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_00c5:  call       instance void [Engine]Engine.Matrix::set_Right(valuetype [Engine]Engine.Vector3)
    IL_00ca:  ldloca.s   V_3
    IL_00cc:  ldloca.s   V_3
    IL_00ce:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_00d3:  ldloca.s   V_3
    IL_00d5:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_00da:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_00df:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_00e4:  call       instance void [Engine]Engine.Matrix::set_Up(valuetype [Engine]Engine.Vector3)
    IL_00e9:  ldloca.s   V_3
    IL_00eb:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::ToYawPitchRoll()
    IL_00f0:  stloc.s    V_4
    IL_00f2:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_00f7:  stloc.s    V_5
    IL_00f9:  ldloca.s   V_5
    IL_00fb:  ldflda     float32 [Engine]Engine.Vector2::X
    IL_0100:  dup
    IL_0101:  ldind.r4
    IL_0102:  ldc.r4     2.
    IL_0107:  ldloc.s    V_4
    IL_0109:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_010e:  mul
    IL_010f:  ldc.r4     3.1415927
    IL_0114:  div
    IL_0115:  ldc.r4     5.0000001e-002
    IL_011a:  ldc.r4     5.
    IL_011f:  ldloc.1
    IL_0120:  mul
    IL_0121:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_0126:  mul
    IL_0127:  add
    IL_0128:  sub
    IL_0129:  stind.r4
    IL_012a:  ldloca.s   V_5
    IL_012c:  ldflda     float32 [Engine]Engine.Vector2::Y
    IL_0131:  dup
    IL_0132:  ldind.r4
    IL_0133:  ldc.r4     2.
    IL_0138:  ldloc.s    V_4
    IL_013a:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_013f:  mul
    IL_0140:  ldc.r4     3.1415927
    IL_0145:  div
    IL_0146:  ldloc.0
    IL_0147:  brtrue.s   IL_0152

    IL_0149:  ldc.r4     -0.75
    IL_014e:  ldloc.1
    IL_014f:  mul
    IL_0150:  br.s       IL_0159

    IL_0152:  ldc.r4     0.75
    IL_0157:  ldloc.1
    IL_0158:  mul
    IL_0159:  add
    IL_015a:  add
    IL_015b:  stind.r4
    IL_015c:  ldstr      "Textures/SplashOverlay"
    IL_0161:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_0166:  stloc.s    V_6
    IL_0168:  ldarg.0
    IL_0169:  ldloc.s    V_6
    IL_016b:  ldc.i4     0x9c
    IL_0170:  ldc.i4     0xce
    IL_0175:  ldc.i4     0xd2
    IL_017a:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_017f:  ldloc.2
    IL_0180:  ldloc.2
    IL_0181:  ldloc.s    V_5
    IL_0183:  call       instance void Game.SubsystemScreenOverlays::DrawTexturedOverlay(class [Engine]Engine.Graphics.Texture2D,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         float32,
                                                                                         float32,
                                                                                         valuetype [Engine]Engine.Vector2)
    IL_0188:  ldarg.0
    IL_0189:  call       instance float32 Game.SubsystemScreenOverlays::get_IceFactor()
    IL_018e:  ldc.r4     0.0
    IL_0193:  ble.un.s   IL_01a1

    IL_0195:  ldarg.0
    IL_0196:  ldarg.0
    IL_0197:  call       instance float32 Game.SubsystemScreenOverlays::get_IceFactor()
    IL_019c:  call       instance void Game.SubsystemScreenOverlays::DrawIceOverlay(float32)
    IL_01a1:  ldarg.0
    IL_01a2:  call       instance float32 Game.SubsystemScreenOverlays::get_BlackoutFactor()
    IL_01a7:  ldc.r4     9.9999998e-003
    IL_01ac:  ble.un.s   IL_01d6

    IL_01ae:  ldarg.0
    IL_01af:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
    IL_01b4:  ldc.r4     2.
    IL_01b9:  ldarg.0
    IL_01ba:  call       instance float32 Game.SubsystemScreenOverlays::get_BlackoutFactor()
    IL_01bf:  ldc.r4     0.5
    IL_01c4:  sub
    IL_01c5:  mul
    IL_01c6:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_01cb:  ldarg.0
    IL_01cc:  call       instance float32 Game.SubsystemScreenOverlays::get_BlackoutFactor()
    IL_01d1:  call       instance void Game.SubsystemScreenOverlays::DrawOverlay(valuetype [Engine]Engine.Color,
                                                                                 float32,
                                                                                 float32)
    IL_01d6:  ldarg.0
    IL_01d7:  call       instance float32 Game.SubsystemScreenOverlays::get_RedoutFactor()
    IL_01dc:  ldc.r4     9.9999998e-003
    IL_01e1:  ble.un.s   IL_0213

    IL_01e3:  ldarg.0
    IL_01e4:  ldc.i4     0xff
    IL_01e9:  ldc.i4.s   64
    IL_01eb:  ldc.i4.0
    IL_01ec:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_01f1:  ldc.r4     2.
    IL_01f6:  ldarg.0
    IL_01f7:  call       instance float32 Game.SubsystemScreenOverlays::get_RedoutFactor()
    IL_01fc:  ldc.r4     0.5
    IL_0201:  sub
    IL_0202:  mul
    IL_0203:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0208:  ldarg.0
    IL_0209:  call       instance float32 Game.SubsystemScreenOverlays::get_RedoutFactor()
    IL_020e:  call       instance void Game.SubsystemScreenOverlays::DrawOverlay(valuetype [Engine]Engine.Color,
                                                                                 float32,
                                                                                 float32)
    IL_0213:  ldarg.0
    IL_0214:  call       instance string Game.SubsystemScreenOverlays::get_FloatingMessage()
    IL_0219:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_021e:  brtrue.s   IL_0244

    IL_0220:  ldarg.0
    IL_0221:  call       instance float32 Game.SubsystemScreenOverlays::get_FloatingMessageFactor()
    IL_0226:  ldc.r4     9.9999998e-003
    IL_022b:  ble.un.s   IL_0244

    IL_022d:  ldarg.0
    IL_022e:  ldarg.0
    IL_022f:  call       instance string Game.SubsystemScreenOverlays::get_FloatingMessage()
    IL_0234:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0239:  ldarg.0
    IL_023a:  call       instance float32 Game.SubsystemScreenOverlays::get_FloatingMessageFactor()
    IL_023f:  call       instance void Game.SubsystemScreenOverlays::DrawFloatingMessage(string,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         float32)
    IL_0244:  ldarg.0
    IL_0245:  ldc.r4     0.0
    IL_024a:  call       instance void Game.SubsystemScreenOverlays::set_BlackoutFactor(float32)
    IL_024f:  ldarg.0
    IL_0250:  ldc.r4     0.0
    IL_0255:  call       instance void Game.SubsystemScreenOverlays::set_RedoutFactor(float32)
    IL_025a:  ldarg.0
    IL_025b:  ldc.r4     0.0
    IL_0260:  call       instance void Game.SubsystemScreenOverlays::set_IceFactor(float32)
    IL_0265:  ldarg.0
    IL_0266:  ldnull
    IL_0267:  call       instance void Game.SubsystemScreenOverlays::set_FloatingMessage(string)
    IL_026c:  ldarg.0
    IL_026d:  ldc.r4     0.0
    IL_0272:  call       instance void Game.SubsystemScreenOverlays::set_FloatingMessageFactor(float32)
    IL_0277:  ret
  } // end of method SubsystemScreenOverlays::Draw

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       55 (0x37)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_000d:  stfld      class Game.SubsystemTime Game.SubsystemScreenOverlays::m_subsystemTime
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGui>(bool)
    IL_001f:  stfld      class Game.SubsystemGui Game.SubsystemScreenOverlays::m_subsystemGui
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemSky>(bool)
    IL_0031:  stfld      class Game.SubsystemSky Game.SubsystemScreenOverlays::m_subsystemSky
    IL_0036:  ret
  } // end of method SubsystemScreenOverlays::Load

  .method private hidebysig instance void 
          DrawOverlay(valuetype [Engine]Engine.Color color,
                      float32 innerFactor,
                      float32 outerFactor) cil managed
  {
    // 代码大小       289 (0x121)
    .maxstack  9
    .locals init (valuetype [Engine]Engine.Graphics.Viewport V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             valuetype [Engine]Engine.Vector2 V_2,
             valuetype [Engine]Engine.Vector2 V_3,
             valuetype [Engine]Engine.Vector2 V_4,
             valuetype [Engine]Engine.Vector2 V_5,
             valuetype [Engine]Engine.Color V_6,
             valuetype [Engine]Engine.Color V_7)
    IL_0000:  call       valuetype [Engine]Engine.Graphics.Viewport [Engine]Engine.Graphics.Display::get_Viewport()
    IL_0005:  stloc.0
    IL_0006:  ldloca.s   V_1
    IL_0008:  ldloc.0
    IL_0009:  ldfld      int32 [Engine]Engine.Graphics.Viewport::X
    IL_000e:  conv.r4
    IL_000f:  ldloc.0
    IL_0010:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Y
    IL_0015:  conv.r4
    IL_0016:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_001b:  ldloca.s   V_2
    IL_001d:  ldloc.0
    IL_001e:  ldfld      int32 [Engine]Engine.Graphics.Viewport::X
    IL_0023:  ldloc.0
    IL_0024:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_0029:  add
    IL_002a:  conv.r4
    IL_002b:  ldloc.0
    IL_002c:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Y
    IL_0031:  conv.r4
    IL_0032:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0037:  ldloca.s   V_3
    IL_0039:  ldloc.0
    IL_003a:  ldfld      int32 [Engine]Engine.Graphics.Viewport::X
    IL_003f:  ldloc.0
    IL_0040:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_0045:  add
    IL_0046:  conv.r4
    IL_0047:  ldloc.0
    IL_0048:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Y
    IL_004d:  ldloc.0
    IL_004e:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_0053:  add
    IL_0054:  conv.r4
    IL_0055:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_005a:  ldloca.s   V_4
    IL_005c:  ldloc.0
    IL_005d:  ldfld      int32 [Engine]Engine.Graphics.Viewport::X
    IL_0062:  conv.r4
    IL_0063:  ldloc.0
    IL_0064:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Y
    IL_0069:  ldloc.0
    IL_006a:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_006f:  add
    IL_0070:  conv.r4
    IL_0071:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0076:  ldloca.s   V_5
    IL_0078:  ldloc.0
    IL_0079:  ldfld      int32 [Engine]Engine.Graphics.Viewport::X
    IL_007e:  ldloc.0
    IL_007f:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_0084:  ldc.i4.2
    IL_0085:  div
    IL_0086:  add
    IL_0087:  conv.r4
    IL_0088:  ldloc.0
    IL_0089:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Y
    IL_008e:  ldloc.0
    IL_008f:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_0094:  ldc.i4.2
    IL_0095:  div
    IL_0096:  add
    IL_0097:  conv.r4
    IL_0098:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_009d:  ldarg.1
    IL_009e:  ldarg.3
    IL_009f:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_00a4:  stloc.s    V_6
    IL_00a6:  ldarg.1
    IL_00a7:  ldarg.2
    IL_00a8:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_00ad:  stloc.s    V_7
    IL_00af:  ldarg.0
    IL_00b0:  ldfld      class Game.SubsystemGui Game.SubsystemScreenOverlays::m_subsystemGui
    IL_00b5:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.SubsystemGui::PrimitivesRenderer2D
    IL_00ba:  ldc.i4.0
    IL_00bb:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_00c0:  ldnull
    IL_00c1:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::AlphaBlend
    IL_00c6:  callvirt   instance class [Engine]Engine.Graphics.FlatBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::FlatBatch(int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState)
    IL_00cb:  dup
    IL_00cc:  ldloc.1
    IL_00cd:  ldloc.2
    IL_00ce:  ldloc.s    V_5
    IL_00d0:  ldc.r4     0.0
    IL_00d5:  ldloc.s    V_6
    IL_00d7:  ldloc.s    V_6
    IL_00d9:  ldloc.s    V_7
    IL_00db:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_00e0:  dup
    IL_00e1:  ldloc.2
    IL_00e2:  ldloc.3
    IL_00e3:  ldloc.s    V_5
    IL_00e5:  ldc.r4     0.0
    IL_00ea:  ldloc.s    V_6
    IL_00ec:  ldloc.s    V_6
    IL_00ee:  ldloc.s    V_7
    IL_00f0:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_00f5:  dup
    IL_00f6:  ldloc.3
    IL_00f7:  ldloc.s    V_4
    IL_00f9:  ldloc.s    V_5
    IL_00fb:  ldc.r4     0.0
    IL_0100:  ldloc.s    V_6
    IL_0102:  ldloc.s    V_6
    IL_0104:  ldloc.s    V_7
    IL_0106:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_010b:  ldloc.s    V_4
    IL_010d:  ldloc.1
    IL_010e:  ldloc.s    V_5
    IL_0110:  ldc.r4     0.0
    IL_0115:  ldloc.s    V_6
    IL_0117:  ldloc.s    V_6
    IL_0119:  ldloc.s    V_7
    IL_011b:  callvirt   instance void [Engine]Engine.Graphics.FlatBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0120:  ret
  } // end of method SubsystemScreenOverlays::DrawOverlay

  .method private hidebysig instance void 
          DrawTexturedOverlay(class [Engine]Engine.Graphics.Texture2D texture,
                              valuetype [Engine]Engine.Color color,
                              float32 innerFactor,
                              float32 outerFactor,
                              valuetype [Engine]Engine.Vector2 offset) cil managed
  {
    // 代码大小       501 (0x1f5)
    .maxstack  12
    .locals init (valuetype [Engine]Engine.Graphics.Viewport V_0,
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
             valuetype [Engine]Engine.Color V_11,
             valuetype [Engine]Engine.Color V_12)
    IL_0000:  call       valuetype [Engine]Engine.Graphics.Viewport [Engine]Engine.Graphics.Display::get_Viewport()
    IL_0005:  stloc.0
    IL_0006:  ldloca.s   V_1
    IL_0008:  ldloc.0
    IL_0009:  ldfld      int32 [Engine]Engine.Graphics.Viewport::X
    IL_000e:  conv.r4
    IL_000f:  ldloc.0
    IL_0010:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Y
    IL_0015:  conv.r4
    IL_0016:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_001b:  ldloca.s   V_2
    IL_001d:  ldloc.0
    IL_001e:  ldfld      int32 [Engine]Engine.Graphics.Viewport::X
    IL_0023:  ldloc.0
    IL_0024:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_0029:  add
    IL_002a:  conv.r4
    IL_002b:  ldloc.0
    IL_002c:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Y
    IL_0031:  conv.r4
    IL_0032:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0037:  ldloca.s   V_3
    IL_0039:  ldloc.0
    IL_003a:  ldfld      int32 [Engine]Engine.Graphics.Viewport::X
    IL_003f:  ldloc.0
    IL_0040:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_0045:  add
    IL_0046:  conv.r4
    IL_0047:  ldloc.0
    IL_0048:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Y
    IL_004d:  ldloc.0
    IL_004e:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_0053:  add
    IL_0054:  conv.r4
    IL_0055:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_005a:  ldloca.s   V_4
    IL_005c:  ldloc.0
    IL_005d:  ldfld      int32 [Engine]Engine.Graphics.Viewport::X
    IL_0062:  conv.r4
    IL_0063:  ldloc.0
    IL_0064:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Y
    IL_0069:  ldloc.0
    IL_006a:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_006f:  add
    IL_0070:  conv.r4
    IL_0071:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0076:  ldloca.s   V_5
    IL_0078:  ldloc.0
    IL_0079:  ldfld      int32 [Engine]Engine.Graphics.Viewport::X
    IL_007e:  ldloc.0
    IL_007f:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_0084:  ldc.i4.2
    IL_0085:  div
    IL_0086:  add
    IL_0087:  conv.r4
    IL_0088:  ldloc.0
    IL_0089:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Y
    IL_008e:  ldloc.0
    IL_008f:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_0094:  ldc.i4.2
    IL_0095:  div
    IL_0096:  add
    IL_0097:  conv.r4
    IL_0098:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_009d:  ldarga.s   offset
    IL_009f:  ldarg.s    offset
    IL_00a1:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00a6:  ldc.r4     1.
    IL_00ab:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_00b0:  stfld      float32 [Engine]Engine.Vector2::X
    IL_00b5:  ldarga.s   offset
    IL_00b7:  ldarg.s    offset
    IL_00b9:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00be:  ldc.r4     1.
    IL_00c3:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_00c8:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_00cd:  ldc.r4     0.0
    IL_00d2:  ldc.r4     0.0
    IL_00d7:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00dc:  ldarg.s    offset
    IL_00de:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_00e3:  stloc.s    V_6
    IL_00e5:  ldloca.s   V_0
    IL_00e7:  call       instance float32 [Engine]Engine.Graphics.Viewport::get_AspectRatio()
    IL_00ec:  ldc.r4     0.0
    IL_00f1:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00f6:  ldarg.s    offset
    IL_00f8:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_00fd:  stloc.s    V_7
    IL_00ff:  ldloca.s   V_0
    IL_0101:  call       instance float32 [Engine]Engine.Graphics.Viewport::get_AspectRatio()
    IL_0106:  ldc.r4     1.
    IL_010b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0110:  ldarg.s    offset
    IL_0112:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0117:  stloc.s    V_8
    IL_0119:  ldc.r4     0.0
    IL_011e:  ldc.r4     1.
    IL_0123:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0128:  ldarg.s    offset
    IL_012a:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_012f:  stloc.s    V_9
    IL_0131:  ldloca.s   V_0
    IL_0133:  call       instance float32 [Engine]Engine.Graphics.Viewport::get_AspectRatio()
    IL_0138:  ldc.r4     2.
    IL_013d:  div
    IL_013e:  ldc.r4     0.5
    IL_0143:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0148:  ldarg.s    offset
    IL_014a:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_014f:  stloc.s    V_10
    IL_0151:  ldarg.2
    IL_0152:  ldarg.s    outerFactor
    IL_0154:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_0159:  stloc.s    V_11
    IL_015b:  ldarg.2
    IL_015c:  ldarg.3
    IL_015d:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_0162:  stloc.s    V_12
    IL_0164:  ldarg.0
    IL_0165:  ldfld      class Game.SubsystemGui Game.SubsystemScreenOverlays::m_subsystemGui
    IL_016a:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.SubsystemGui::PrimitivesRenderer2D
    IL_016f:  ldarg.1
    IL_0170:  ldc.i4.0
    IL_0171:  ldc.i4.0
    IL_0172:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_0177:  ldnull
    IL_0178:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::Additive
    IL_017d:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointWrap
    IL_0182:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_0187:  dup
    IL_0188:  ldloc.1
    IL_0189:  ldloc.2
    IL_018a:  ldloc.s    V_5
    IL_018c:  ldc.r4     0.0
    IL_0191:  ldloc.s    V_6
    IL_0193:  ldloc.s    V_7
    IL_0195:  ldloc.s    V_10
    IL_0197:  ldloc.s    V_11
    IL_0199:  ldloc.s    V_11
    IL_019b:  ldloc.s    V_12
    IL_019d:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color,
                                                                                              valuetype [Engine]Engine.Color,
                                                                                              valuetype [Engine]Engine.Color)
    IL_01a2:  dup
    IL_01a3:  ldloc.2
    IL_01a4:  ldloc.3
    IL_01a5:  ldloc.s    V_5
    IL_01a7:  ldc.r4     0.0
    IL_01ac:  ldloc.s    V_7
    IL_01ae:  ldloc.s    V_8
    IL_01b0:  ldloc.s    V_10
    IL_01b2:  ldloc.s    V_11
    IL_01b4:  ldloc.s    V_11
    IL_01b6:  ldloc.s    V_12
    IL_01b8:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color,
                                                                                              valuetype [Engine]Engine.Color,
                                                                                              valuetype [Engine]Engine.Color)
    IL_01bd:  dup
    IL_01be:  ldloc.3
    IL_01bf:  ldloc.s    V_4
    IL_01c1:  ldloc.s    V_5
    IL_01c3:  ldc.r4     0.0
    IL_01c8:  ldloc.s    V_8
    IL_01ca:  ldloc.s    V_9
    IL_01cc:  ldloc.s    V_10
    IL_01ce:  ldloc.s    V_11
    IL_01d0:  ldloc.s    V_11
    IL_01d2:  ldloc.s    V_12
    IL_01d4:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color,
                                                                                              valuetype [Engine]Engine.Color,
                                                                                              valuetype [Engine]Engine.Color)
    IL_01d9:  ldloc.s    V_4
    IL_01db:  ldloc.1
    IL_01dc:  ldloc.s    V_5
    IL_01de:  ldc.r4     0.0
    IL_01e3:  ldloc.s    V_9
    IL_01e5:  ldloc.s    V_6
    IL_01e7:  ldloc.s    V_10
    IL_01e9:  ldloc.s    V_11
    IL_01eb:  ldloc.s    V_11
    IL_01ed:  ldloc.s    V_12
    IL_01ef:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color,
                                                                                              valuetype [Engine]Engine.Color,
                                                                                              valuetype [Engine]Engine.Color)
    IL_01f4:  ret
  } // end of method SubsystemScreenOverlays::DrawTexturedOverlay

  .method private hidebysig instance void 
          DrawIceOverlay(float32 factor) cil managed
  {
    // 代码大小       704 (0x2c0)
    .maxstack  9
    .locals init (valuetype [Engine]Engine.Graphics.Viewport V_0,
             int32 V_1,
             int32 V_2,
             class Game.Random V_3,
             class [Engine]Engine.Graphics.TexturedBatch2D V_4,
             float32 V_5,
             class Game.Random V_6,
             int32 V_7,
             int32 V_8,
             float32 V_9,
             float32 V_10,
             float32 V_11,
             float32 V_12,
             int32 V_13,
             int32 V_14,
             float32 V_15,
             float32 V_16,
             valuetype [Engine]Engine.Vector2 V_17,
             valuetype [Engine]Engine.Vector2 V_18,
             valuetype [Engine]Engine.Vector2 V_19,
             valuetype [Engine]Engine.Vector2 V_20,
             valuetype [Engine]Engine.Vector2 V_21,
             valuetype [Engine]Engine.Vector2 V_22,
             valuetype [Engine]Engine.Vector2 V_23,
             valuetype [Engine]Engine.Vector2 V_24)
    IL_0000:  call       valuetype [Engine]Engine.Graphics.Viewport [Engine]Engine.Graphics.Display::get_Viewport()
    IL_0005:  stloc.0
    IL_0006:  ldc.i4.s   12
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  conv.r4
    IL_000b:  ldloc.0
    IL_000c:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_0011:  conv.r4
    IL_0012:  mul
    IL_0013:  ldloc.0
    IL_0014:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_0019:  conv.r4
    IL_001a:  div
    IL_001b:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0020:  conv.i4
    IL_0021:  stloc.2
    IL_0022:  ldarg.0
    IL_0023:  ldfld      valuetype [Engine]Engine.Vector2[] Game.SubsystemScreenOverlays::m_iceVertices
    IL_0028:  brfalse.s  IL_0041

    IL_002a:  ldarg.0
    IL_002b:  ldfld      valuetype [Engine]Engine.Rectangle Game.SubsystemScreenOverlays::m_iceVerticesViewportRectangle
    IL_0030:  ldloca.s   V_0
    IL_0032:  call       instance valuetype [Engine]Engine.Rectangle [Engine]Engine.Graphics.Viewport::get_Rectangle()
    IL_0037:  call       bool [Engine]Engine.Rectangle::op_Inequality(valuetype [Engine]Engine.Rectangle,
                                                                      valuetype [Engine]Engine.Rectangle)
    IL_003c:  brfalse    IL_0117

    IL_0041:  ldc.i4.0
    IL_0042:  newobj     instance void Game.Random::.ctor(int32)
    IL_0047:  stloc.s    V_6
    IL_0049:  ldarg.0
    IL_004a:  ldloca.s   V_0
    IL_004c:  call       instance valuetype [Engine]Engine.Rectangle [Engine]Engine.Graphics.Viewport::get_Rectangle()
    IL_0051:  stfld      valuetype [Engine]Engine.Rectangle Game.SubsystemScreenOverlays::m_iceVerticesViewportRectangle
    IL_0056:  ldarg.0
    IL_0057:  ldloc.2
    IL_0058:  ldc.i4.1
    IL_0059:  add
    IL_005a:  ldloc.1
    IL_005b:  ldc.i4.1
    IL_005c:  add
    IL_005d:  mul
    IL_005e:  newarr     [Engine]Engine.Vector2
    IL_0063:  stfld      valuetype [Engine]Engine.Vector2[] Game.SubsystemScreenOverlays::m_iceVertices
    IL_0068:  ldc.i4.0
    IL_0069:  stloc.s    V_7
    IL_006b:  br         IL_010f

    IL_0070:  ldc.i4.0
    IL_0071:  stloc.s    V_8
    IL_0073:  br         IL_0101

    IL_0078:  ldloc.s    V_7
    IL_007a:  conv.r4
    IL_007b:  stloc.s    V_9
    IL_007d:  ldloc.s    V_8
    IL_007f:  conv.r4
    IL_0080:  stloc.s    V_10
    IL_0082:  ldloc.s    V_7
    IL_0084:  brfalse.s  IL_00a1

    IL_0086:  ldloc.s    V_7
    IL_0088:  ldloc.2
    IL_0089:  beq.s      IL_00a1

    IL_008b:  ldloc.s    V_9
    IL_008d:  ldloc.s    V_6
    IL_008f:  ldc.r4     -0.40000001
    IL_0094:  ldc.r4     0.40000001
    IL_0099:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_009e:  add
    IL_009f:  stloc.s    V_9
    IL_00a1:  ldloc.s    V_8
    IL_00a3:  brfalse.s  IL_00c0

    IL_00a5:  ldloc.s    V_8
    IL_00a7:  ldloc.1
    IL_00a8:  beq.s      IL_00c0

    IL_00aa:  ldloc.s    V_10
    IL_00ac:  ldloc.s    V_6
    IL_00ae:  ldc.r4     -0.40000001
    IL_00b3:  ldc.r4     0.40000001
    IL_00b8:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00bd:  add
    IL_00be:  stloc.s    V_10
    IL_00c0:  ldloc.s    V_9
    IL_00c2:  ldloc.2
    IL_00c3:  conv.r4
    IL_00c4:  div
    IL_00c5:  ldloc.0
    IL_00c6:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_00cb:  conv.r4
    IL_00cc:  mul
    IL_00cd:  stloc.s    V_11
    IL_00cf:  ldloc.s    V_10
    IL_00d1:  ldloc.1
    IL_00d2:  conv.r4
    IL_00d3:  div
    IL_00d4:  ldloc.0
    IL_00d5:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_00da:  conv.r4
    IL_00db:  mul
    IL_00dc:  stloc.s    V_12
    IL_00de:  ldarg.0
    IL_00df:  ldfld      valuetype [Engine]Engine.Vector2[] Game.SubsystemScreenOverlays::m_iceVertices
    IL_00e4:  ldloc.s    V_7
    IL_00e6:  ldloc.s    V_8
    IL_00e8:  ldloc.2
    IL_00e9:  ldc.i4.1
    IL_00ea:  add
    IL_00eb:  mul
    IL_00ec:  add
    IL_00ed:  ldloc.s    V_11
    IL_00ef:  ldloc.s    V_12
    IL_00f1:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00f6:  stelem     [Engine]Engine.Vector2
    IL_00fb:  ldloc.s    V_8
    IL_00fd:  ldc.i4.1
    IL_00fe:  add
    IL_00ff:  stloc.s    V_8
    IL_0101:  ldloc.s    V_8
    IL_0103:  ldloc.1
    IL_0104:  ble        IL_0078

    IL_0109:  ldloc.s    V_7
    IL_010b:  ldc.i4.1
    IL_010c:  add
    IL_010d:  stloc.s    V_7
    IL_010f:  ldloc.s    V_7
    IL_0111:  ldloc.2
    IL_0112:  ble        IL_0070

    IL_0117:  ldc.i4.0
    IL_0118:  newobj     instance void Game.Random::.ctor(int32)
    IL_011d:  stloc.3
    IL_011e:  ldarg.0
    IL_011f:  ldfld      class Game.SubsystemGui Game.SubsystemScreenOverlays::m_subsystemGui
    IL_0124:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.SubsystemGui::PrimitivesRenderer2D
    IL_0129:  ldstr      "Textures/IceOverlay"
    IL_012e:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_0133:  ldc.i4.0
    IL_0134:  ldc.i4.0
    IL_0135:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_013a:  ldnull
    IL_013b:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::AlphaBlend
    IL_0140:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointWrap
    IL_0145:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_014a:  stloc.s    V_4
    IL_014c:  ldc.r4     1.
    IL_0151:  ldloc.0
    IL_0152:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_0157:  conv.r4
    IL_0158:  div
    IL_0159:  stloc.s    V_5
    IL_015b:  ldc.i4.0
    IL_015c:  stloc.s    V_13
    IL_015e:  br         IL_02b7

    IL_0163:  ldc.i4.0
    IL_0164:  stloc.s    V_14
    IL_0166:  br         IL_02a9

    IL_016b:  ldloc.s    V_13
    IL_016d:  conv.r4
    IL_016e:  ldloc.2
    IL_016f:  ldc.i4.1
    IL_0170:  sub
    IL_0171:  conv.r4
    IL_0172:  ldc.r4     2.
    IL_0177:  div
    IL_0178:  sub
    IL_0179:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_017e:  ldloc.2
    IL_017f:  ldc.i4.1
    IL_0180:  sub
    IL_0181:  conv.r4
    IL_0182:  ldc.r4     2.
    IL_0187:  div
    IL_0188:  div
    IL_0189:  ldloc.s    V_14
    IL_018b:  conv.r4
    IL_018c:  ldloc.1
    IL_018d:  ldc.i4.1
    IL_018e:  sub
    IL_018f:  conv.r4
    IL_0190:  ldc.r4     2.
    IL_0195:  div
    IL_0196:  sub
    IL_0197:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_019c:  ldloc.1
    IL_019d:  ldc.i4.1
    IL_019e:  sub
    IL_019f:  conv.r4
    IL_01a0:  ldc.r4     2.
    IL_01a5:  div
    IL_01a6:  div
    IL_01a7:  stloc.s    V_15
    IL_01a9:  dup
    IL_01aa:  mul
    IL_01ab:  ldloc.s    V_15
    IL_01ad:  ldloc.s    V_15
    IL_01af:  mul
    IL_01b0:  add
    IL_01b1:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_01b6:  ldc.r4     1.4141999
    IL_01bb:  div
    IL_01bc:  stloc.s    V_16
    IL_01be:  ldc.r4     1.
    IL_01c3:  ldloc.s    V_16
    IL_01c5:  sub
    IL_01c6:  ldloc.3
    IL_01c7:  ldc.r4     0.0
    IL_01cc:  ldc.r4     5.0000001e-002
    IL_01d1:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01d6:  add
    IL_01d7:  ldarg.1
    IL_01d8:  bge.un     IL_02a3

    IL_01dd:  ldarg.0
    IL_01de:  ldfld      valuetype [Engine]Engine.Vector2[] Game.SubsystemScreenOverlays::m_iceVertices
    IL_01e3:  ldloc.s    V_13
    IL_01e5:  ldloc.s    V_14
    IL_01e7:  ldloc.2
    IL_01e8:  ldc.i4.1
    IL_01e9:  add
    IL_01ea:  mul
    IL_01eb:  add
    IL_01ec:  ldelem     [Engine]Engine.Vector2
    IL_01f1:  stloc.s    V_17
    IL_01f3:  ldarg.0
    IL_01f4:  ldfld      valuetype [Engine]Engine.Vector2[] Game.SubsystemScreenOverlays::m_iceVertices
    IL_01f9:  ldloc.s    V_13
    IL_01fb:  ldc.i4.1
    IL_01fc:  add
    IL_01fd:  ldloc.s    V_14
    IL_01ff:  ldloc.2
    IL_0200:  ldc.i4.1
    IL_0201:  add
    IL_0202:  mul
    IL_0203:  add
    IL_0204:  ldelem     [Engine]Engine.Vector2
    IL_0209:  stloc.s    V_18
    IL_020b:  ldarg.0
    IL_020c:  ldfld      valuetype [Engine]Engine.Vector2[] Game.SubsystemScreenOverlays::m_iceVertices
    IL_0211:  ldloc.s    V_13
    IL_0213:  ldc.i4.1
    IL_0214:  add
    IL_0215:  ldloc.s    V_14
    IL_0217:  ldc.i4.1
    IL_0218:  add
    IL_0219:  ldloc.2
    IL_021a:  ldc.i4.1
    IL_021b:  add
    IL_021c:  mul
    IL_021d:  add
    IL_021e:  ldelem     [Engine]Engine.Vector2
    IL_0223:  stloc.s    V_19
    IL_0225:  ldarg.0
    IL_0226:  ldfld      valuetype [Engine]Engine.Vector2[] Game.SubsystemScreenOverlays::m_iceVertices
    IL_022b:  ldloc.s    V_13
    IL_022d:  ldloc.s    V_14
    IL_022f:  ldc.i4.1
    IL_0230:  add
    IL_0231:  ldloc.2
    IL_0232:  ldc.i4.1
    IL_0233:  add
    IL_0234:  mul
    IL_0235:  add
    IL_0236:  ldelem     [Engine]Engine.Vector2
    IL_023b:  stloc.s    V_20
    IL_023d:  ldloc.s    V_17
    IL_023f:  ldloc.s    V_5
    IL_0241:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0246:  stloc.s    V_21
    IL_0248:  ldloc.s    V_18
    IL_024a:  ldloc.s    V_5
    IL_024c:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0251:  stloc.s    V_22
    IL_0253:  ldloc.s    V_19
    IL_0255:  ldloc.s    V_5
    IL_0257:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_025c:  stloc.s    V_23
    IL_025e:  ldloc.s    V_20
    IL_0260:  ldloc.s    V_5
    IL_0262:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0267:  stloc.s    V_24
    IL_0269:  ldloc.s    V_4
    IL_026b:  ldloc.s    V_17
    IL_026d:  ldloc.s    V_18
    IL_026f:  ldloc.s    V_19
    IL_0271:  ldc.r4     0.0
    IL_0276:  ldloc.s    V_21
    IL_0278:  ldloc.s    V_22
    IL_027a:  ldloc.s    V_23
    IL_027c:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0281:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color)
    IL_0286:  ldloc.s    V_4
    IL_0288:  ldloc.s    V_19
    IL_028a:  ldloc.s    V_20
    IL_028c:  ldloc.s    V_17
    IL_028e:  ldc.r4     0.0
    IL_0293:  ldloc.s    V_23
    IL_0295:  ldloc.s    V_24
    IL_0297:  ldloc.s    V_21
    IL_0299:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_029e:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueTriangle(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color)
    IL_02a3:  ldloc.s    V_14
    IL_02a5:  ldc.i4.1
    IL_02a6:  add
    IL_02a7:  stloc.s    V_14
    IL_02a9:  ldloc.s    V_14
    IL_02ab:  ldloc.1
    IL_02ac:  blt        IL_016b

    IL_02b1:  ldloc.s    V_13
    IL_02b3:  ldc.i4.1
    IL_02b4:  add
    IL_02b5:  stloc.s    V_13
    IL_02b7:  ldloc.s    V_13
    IL_02b9:  ldloc.2
    IL_02ba:  blt        IL_0163

    IL_02bf:  ret
  } // end of method SubsystemScreenOverlays::DrawIceOverlay

  .method private hidebysig instance void 
          DrawFloatingMessage(string message,
                              valuetype [Engine]Engine.Color color,
                              float32 factor) cil managed
  {
    // 代码大小       227 (0xe3)
    .maxstack  9
    .locals init (valuetype [Engine]Engine.Graphics.Viewport V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             class [Engine]Engine.Media.BitmapFont V_2)
    IL_0000:  call       valuetype [Engine]Engine.Graphics.Viewport [Engine]Engine.Graphics.Display::get_Viewport()
    IL_0005:  stloc.0
    IL_0006:  ldloca.s   V_1
    IL_0008:  ldloc.0
    IL_0009:  ldfld      int32 [Engine]Engine.Graphics.Viewport::X
    IL_000e:  ldloc.0
    IL_000f:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_0014:  ldc.i4.2
    IL_0015:  div
    IL_0016:  add
    IL_0017:  conv.r4
    IL_0018:  ldloc.0
    IL_0019:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Y
    IL_001e:  ldloc.0
    IL_001f:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_0024:  ldc.i4.2
    IL_0025:  div
    IL_0026:  add
    IL_0027:  conv.r4
    IL_0028:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_002d:  ldloca.s   V_1
    IL_002f:  ldflda     float32 [Engine]Engine.Vector2::X
    IL_0034:  dup
    IL_0035:  ldind.r4
    IL_0036:  call       float32 Game.WidgetsManager::get_Scale()
    IL_003b:  ldc.r4     60.
    IL_0040:  mul
    IL_0041:  ldc.r8     1.7300000190734863
    IL_004a:  ldarg.0
    IL_004b:  ldfld      class Game.SubsystemTime Game.SubsystemScreenOverlays::m_subsystemTime
    IL_0050:  callvirt   instance float64 Game.SubsystemTime::get_RealTime()
    IL_0055:  mul
    IL_0056:  call       float64 [Engine]Engine.MathUtils::Sin(float64)
    IL_005b:  conv.r4
    IL_005c:  mul
    IL_005d:  add
    IL_005e:  stind.r4
    IL_005f:  ldloca.s   V_1
    IL_0061:  ldflda     float32 [Engine]Engine.Vector2::Y
    IL_0066:  dup
    IL_0067:  ldind.r4
    IL_0068:  call       float32 Game.WidgetsManager::get_Scale()
    IL_006d:  ldc.r4     40.
    IL_0072:  mul
    IL_0073:  ldc.r8     1.1200000047683716
    IL_007c:  ldarg.0
    IL_007d:  ldfld      class Game.SubsystemTime Game.SubsystemScreenOverlays::m_subsystemTime
    IL_0082:  callvirt   instance float64 Game.SubsystemTime::get_RealTime()
    IL_0087:  mul
    IL_0088:  call       float64 [Engine]Engine.MathUtils::Cos(float64)
    IL_008d:  conv.r4
    IL_008e:  mul
    IL_008f:  add
    IL_0090:  stind.r4
    IL_0091:  ldstr      "Fonts/Pericles32"
    IL_0096:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Media.BitmapFont>(string)
    IL_009b:  stloc.2
    IL_009c:  ldarg.0
    IL_009d:  ldfld      class Game.SubsystemGui Game.SubsystemScreenOverlays::m_subsystemGui
    IL_00a2:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.SubsystemGui::PrimitivesRenderer2D
    IL_00a7:  ldloc.2
    IL_00a8:  ldc.i4.1
    IL_00a9:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_00ae:  ldnull
    IL_00af:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::AlphaBlend
    IL_00b4:  ldnull
    IL_00b5:  callvirt   instance class [Engine]Engine.Graphics.FontBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::FontBatch(class [Engine]Engine.Media.BitmapFont,
                                                                                                                                    int32,
                                                                                                                                    class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                    class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                    class [Engine]Engine.Graphics.BlendState,
                                                                                                                                    class [Engine]Engine.Graphics.SamplerState)
    IL_00ba:  ldarg.1
    IL_00bb:  ldloc.1
    IL_00bc:  ldc.r4     0.0
    IL_00c1:  ldarg.2
    IL_00c2:  ldarg.3
    IL_00c3:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_00c8:  ldc.i4.3
    IL_00c9:  call       float32 Game.WidgetsManager::get_Scale()
    IL_00ce:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_00d3:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_00d8:  ldc.r4     0.0
    IL_00dd:  callvirt   instance void [Engine]Engine.Graphics.FontBatch2D::QueueText(string,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32,
                                                                                      valuetype [Engine]Engine.Color,
                                                                                      valuetype [Engine]Engine.Graphics.TextAnchor,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      valuetype [Engine]Engine.Vector2,
                                                                                      float32)
    IL_00e2:  ret
  } // end of method SubsystemScreenOverlays::DrawFloatingMessage

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_0006:  ret
  } // end of method SubsystemScreenOverlays::.ctor

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
    IL_000e:  stsfld     int32[] Game.SubsystemScreenOverlays::m_drawOrders
    IL_0013:  ret
  } // end of method SubsystemScreenOverlays::.cctor

  .property instance float32 BlackoutFactor()
  {
    .get instance float32 Game.SubsystemScreenOverlays::get_BlackoutFactor()
    .set instance void Game.SubsystemScreenOverlays::set_BlackoutFactor(float32)
  } // end of property SubsystemScreenOverlays::BlackoutFactor
  .property instance float32 RedoutFactor()
  {
    .get instance float32 Game.SubsystemScreenOverlays::get_RedoutFactor()
    .set instance void Game.SubsystemScreenOverlays::set_RedoutFactor(float32)
  } // end of property SubsystemScreenOverlays::RedoutFactor
  .property instance string FloatingMessage()
  {
    .get instance string Game.SubsystemScreenOverlays::get_FloatingMessage()
    .set instance void Game.SubsystemScreenOverlays::set_FloatingMessage(string)
  } // end of property SubsystemScreenOverlays::FloatingMessage
  .property instance float32 FloatingMessageFactor()
  {
    .get instance float32 Game.SubsystemScreenOverlays::get_FloatingMessageFactor()
    .set instance void Game.SubsystemScreenOverlays::set_FloatingMessageFactor(float32)
  } // end of property SubsystemScreenOverlays::FloatingMessageFactor
  .property instance float32 IceFactor()
  {
    .get instance float32 Game.SubsystemScreenOverlays::get_IceFactor()
    .set instance void Game.SubsystemScreenOverlays::set_IceFactor(float32)
  } // end of property SubsystemScreenOverlays::IceFactor
  .property instance int32[] DrawOrders()
  {
    .get instance int32[] Game.SubsystemScreenOverlays::get_DrawOrders()
  } // end of property SubsystemScreenOverlays::DrawOrders
} // end of class Game.SubsystemScreenOverlays