.class public auto ansi beforefieldinit Game.MotdWidget
       extends Game.CanvasWidget
{
  .class auto ansi nested private beforefieldinit LineData
         extends [System.Runtime]System.Object
  {
    .field public float32 Time
    .field public class Game.Widget Widget
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method LineData::.ctor

  } // end of class LineData

  .field private class Game.CanvasWidget m_containerWidget
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.MotdWidget/LineData> m_lines
  .field private int32 m_currentLineIndex
  .field private float64 m_lastLineChangeTime
  .field private int32 m_tapsCount
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       69 (0x45)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.MotdWidget/LineData>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.MotdWidget/LineData> Game.MotdWidget::m_lines
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.CanvasWidget::.ctor()
    IL_0011:  ldarg.0
    IL_0012:  newobj     instance void Game.CanvasWidget::.ctor()
    IL_0017:  stfld      class Game.CanvasWidget Game.MotdWidget::m_containerWidget
    IL_001c:  ldarg.0
    IL_001d:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class Game.CanvasWidget Game.MotdWidget::m_containerWidget
    IL_0028:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_002d:  ldarg.0
    IL_002e:  ldftn      instance void Game.MotdWidget::MotdManager_MessageOfTheDayUpdated()
    IL_0034:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0039:  call       void Game.MotdManager::add_MessageOfTheDayUpdated(class [System.Runtime]System.Action)
    IL_003e:  ldarg.0
    IL_003f:  call       instance void Game.MotdWidget::MotdManager_MessageOfTheDayUpdated()
    IL_0044:  ret
  } // end of method MotdWidget::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       567 (0x237)
    .maxstack  4
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_0,
             class Game.Widget V_1,
             float64 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0006:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Tap()
    IL_000b:  stloc.0
    IL_000c:  ldloca.s   V_0
    IL_000e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0013:  brfalse.s  IL_004c

    IL_0015:  ldarg.0
    IL_0016:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_001b:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.WidgetInput::get_Tap()
    IL_0020:  stloc.0
    IL_0021:  ldloca.s   V_0
    IL_0023:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0028:  call       class Game.Widget Game.WidgetsManager::HitTest(valuetype [Engine]Engine.Vector2)
    IL_002d:  stloc.1
    IL_002e:  ldloc.1
    IL_002f:  brfalse.s  IL_004c

    IL_0031:  ldloc.1
    IL_0032:  ldarg.0
    IL_0033:  beq.s      IL_003e

    IL_0035:  ldloc.1
    IL_0036:  ldarg.0
    IL_0037:  callvirt   instance bool Game.Widget::IsChildWidgetOf(class Game.ContainerWidget)
    IL_003c:  brfalse.s  IL_004c

    IL_003e:  ldarg.0
    IL_003f:  ldarg.0
    IL_0040:  ldfld      int32 Game.MotdWidget::m_tapsCount
    IL_0045:  ldc.i4.1
    IL_0046:  add
    IL_0047:  stfld      int32 Game.MotdWidget::m_tapsCount
    IL_004c:  ldarg.0
    IL_004d:  ldfld      int32 Game.MotdWidget::m_tapsCount
    IL_0052:  ldc.i4.5
    IL_0053:  blt.s      IL_007a

    IL_0055:  ldarg.0
    IL_0056:  ldc.i4.0
    IL_0057:  stfld      int32 Game.MotdWidget::m_tapsCount
    IL_005c:  call       void Game.MotdManager::ForceRedownload()
    IL_0061:  ldstr      "Audio/UI/ButtonClick"
    IL_0066:  ldc.r4     1.
    IL_006b:  ldc.r4     0.0
    IL_0070:  ldc.r4     0.0
    IL_0075:  call       void Game.AudioManager::PlaySound(string,
                                                           float32,
                                                           float32,
                                                           float32)
    IL_007a:  ldarg.0
    IL_007b:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0080:  ldc.i4.s   26
    IL_0082:  callvirt   instance bool Game.WidgetInput::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_0087:  brfalse.s  IL_0097

    IL_0089:  ldarg.0
    IL_008a:  ldarg.0
    IL_008b:  ldfld      int32 Game.MotdWidget::m_currentLineIndex
    IL_0090:  ldc.i4.1
    IL_0091:  sub
    IL_0092:  call       instance void Game.MotdWidget::GotoLine(int32)
    IL_0097:  ldarg.0
    IL_0098:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_009d:  ldc.i4.s   27
    IL_009f:  callvirt   instance bool Game.WidgetInput::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_00a4:  brfalse.s  IL_00b4

    IL_00a6:  ldarg.0
    IL_00a7:  ldarg.0
    IL_00a8:  ldfld      int32 Game.MotdWidget::m_currentLineIndex
    IL_00ad:  ldc.i4.1
    IL_00ae:  add
    IL_00af:  call       instance void Game.MotdWidget::GotoLine(int32)
    IL_00b4:  ldarg.0
    IL_00b5:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.MotdWidget/LineData> Game.MotdWidget::m_lines
    IL_00ba:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.MotdWidget/LineData>::get_Count()
    IL_00bf:  ldc.i4.0
    IL_00c0:  ble        IL_0226

    IL_00c5:  ldarg.0
    IL_00c6:  ldarg.0
    IL_00c7:  ldfld      int32 Game.MotdWidget::m_currentLineIndex
    IL_00cc:  ldarg.0
    IL_00cd:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.MotdWidget/LineData> Game.MotdWidget::m_lines
    IL_00d2:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.MotdWidget/LineData>::get_Count()
    IL_00d7:  rem
    IL_00d8:  stfld      int32 Game.MotdWidget::m_currentLineIndex
    IL_00dd:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_00e2:  stloc.2
    IL_00e3:  ldarg.0
    IL_00e4:  ldfld      float64 Game.MotdWidget::m_lastLineChangeTime
    IL_00e9:  ldc.r8     0.0
    IL_00f2:  beq.s      IL_0115

    IL_00f4:  ldloc.2
    IL_00f5:  ldarg.0
    IL_00f6:  ldfld      float64 Game.MotdWidget::m_lastLineChangeTime
    IL_00fb:  sub
    IL_00fc:  ldarg.0
    IL_00fd:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.MotdWidget/LineData> Game.MotdWidget::m_lines
    IL_0102:  ldarg.0
    IL_0103:  ldfld      int32 Game.MotdWidget::m_currentLineIndex
    IL_0108:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.MotdWidget/LineData>::get_Item(int32)
    IL_010d:  ldfld      float32 Game.MotdWidget/LineData::Time
    IL_0112:  conv.r8
    IL_0113:  blt.un.s   IL_0137

    IL_0115:  ldarg.0
    IL_0116:  ldarg.0
    IL_0117:  ldfld      float64 Game.MotdWidget::m_lastLineChangeTime
    IL_011c:  ldc.r8     0.0
    IL_0125:  bne.un.s   IL_012a

    IL_0127:  ldc.i4.0
    IL_0128:  br.s       IL_0132

    IL_012a:  ldarg.0
    IL_012b:  ldfld      int32 Game.MotdWidget::m_currentLineIndex
    IL_0130:  ldc.i4.1
    IL_0131:  add
    IL_0132:  call       instance void Game.MotdWidget::GotoLine(int32)
    IL_0137:  ldc.r4     0.0
    IL_013c:  stloc.3
    IL_013d:  ldloc.2
    IL_013e:  ldarg.0
    IL_013f:  ldfld      float64 Game.MotdWidget::m_lastLineChangeTime
    IL_0144:  sub
    IL_0145:  conv.r4
    IL_0146:  stloc.s    V_4
    IL_0148:  ldarg.0
    IL_0149:  ldfld      float64 Game.MotdWidget::m_lastLineChangeTime
    IL_014e:  ldarg.0
    IL_014f:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.MotdWidget/LineData> Game.MotdWidget::m_lines
    IL_0154:  ldarg.0
    IL_0155:  ldfld      int32 Game.MotdWidget::m_currentLineIndex
    IL_015a:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.MotdWidget/LineData>::get_Item(int32)
    IL_015f:  ldfld      float32 Game.MotdWidget/LineData::Time
    IL_0164:  conv.r8
    IL_0165:  add
    IL_0166:  ldc.r8     0.33000001311302185
    IL_016f:  sub
    IL_0170:  ldloc.2
    IL_0171:  sub
    IL_0172:  conv.r4
    IL_0173:  stloc.s    V_5
    IL_0175:  ldloc.s    V_4
    IL_0177:  ldloc.s    V_5
    IL_0179:  bge.un.s   IL_01b8

    IL_017b:  ldarg.0
    IL_017c:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0181:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0186:  ldc.r4     1.5
    IL_018b:  ldloc.s    V_4
    IL_018d:  mul
    IL_018e:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0193:  ldc.r4     3.1415927
    IL_0198:  mul
    IL_0199:  ldc.r4     2.
    IL_019e:  div
    IL_019f:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_01a4:  ldc.r4     0.33000001
    IL_01a9:  call       float32 [Engine]Engine.MathUtils::PowSign(float32,
                                                                   float32)
    IL_01ae:  ldc.r4     1.
    IL_01b3:  sub
    IL_01b4:  mul
    IL_01b5:  stloc.3
    IL_01b6:  br.s       IL_01f3

    IL_01b8:  ldarg.0
    IL_01b9:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_01be:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_01c3:  ldc.r4     1.
    IL_01c8:  ldc.r4     1.5
    IL_01cd:  ldloc.s    V_5
    IL_01cf:  mul
    IL_01d0:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_01d5:  ldc.r4     3.1415927
    IL_01da:  mul
    IL_01db:  ldc.r4     2.
    IL_01e0:  div
    IL_01e1:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_01e6:  ldc.r4     0.33000001
    IL_01eb:  call       float32 [Engine]Engine.MathUtils::PowSign(float32,
                                                                   float32)
    IL_01f0:  sub
    IL_01f1:  mul
    IL_01f2:  stloc.3
    IL_01f3:  ldarg.0
    IL_01f4:  ldarg.0
    IL_01f5:  ldfld      class Game.CanvasWidget Game.MotdWidget::m_containerWidget
    IL_01fa:  ldloc.3
    IL_01fb:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0200:  ldc.r4     0.0
    IL_0205:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_020a:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_020f:  call       instance void Game.CanvasWidget::SetWidgetPosition(class Game.Widget,
                                                                            valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
    IL_0214:  ldarg.0
    IL_0215:  ldfld      class Game.CanvasWidget Game.MotdWidget::m_containerWidget
    IL_021a:  ldarg.0
    IL_021b:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0220:  callvirt   instance void Game.CanvasWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_0225:  ret

    IL_0226:  ldarg.0
    IL_0227:  ldfld      class Game.CanvasWidget Game.MotdWidget::m_containerWidget
    IL_022c:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0231:  callvirt   instance void Game.WidgetsList::Clear()
    IL_0236:  ret
  } // end of method MotdWidget::Update

  .method public hidebysig instance void 
          GotoLine(int32 index) cil managed
  {
    // 代码大小       112 (0x70)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.MotdWidget/LineData> Game.MotdWidget::m_lines
    IL_0006:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.MotdWidget/LineData>::get_Count()
    IL_000b:  ldc.i4.0
    IL_000c:  ble.s      IL_006f

    IL_000e:  ldarg.0
    IL_000f:  ldarg.1
    IL_0010:  ldc.i4.0
    IL_0011:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0016:  ldarg.0
    IL_0017:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.MotdWidget/LineData> Game.MotdWidget::m_lines
    IL_001c:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.MotdWidget/LineData>::get_Count()
    IL_0021:  rem
    IL_0022:  stfld      int32 Game.MotdWidget::m_currentLineIndex
    IL_0027:  ldarg.0
    IL_0028:  ldfld      class Game.CanvasWidget Game.MotdWidget::m_containerWidget
    IL_002d:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0032:  callvirt   instance void Game.WidgetsList::Clear()
    IL_0037:  ldarg.0
    IL_0038:  ldfld      class Game.CanvasWidget Game.MotdWidget::m_containerWidget
    IL_003d:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0042:  ldarg.0
    IL_0043:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.MotdWidget/LineData> Game.MotdWidget::m_lines
    IL_0048:  ldarg.0
    IL_0049:  ldfld      int32 Game.MotdWidget::m_currentLineIndex
    IL_004e:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.MotdWidget/LineData>::get_Item(int32)
    IL_0053:  ldfld      class Game.Widget Game.MotdWidget/LineData::Widget
    IL_0058:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_005d:  ldarg.0
    IL_005e:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0063:  stfld      float64 Game.MotdWidget::m_lastLineChangeTime
    IL_0068:  ldarg.0
    IL_0069:  ldc.i4.0
    IL_006a:  stfld      int32 Game.MotdWidget::m_tapsCount
    IL_006f:  ret
  } // end of method MotdWidget::GotoLine

  .method public hidebysig instance void 
          Restart() cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.0
    IL_0002:  stfld      int32 Game.MotdWidget::m_currentLineIndex
    IL_0007:  ldarg.0
    IL_0008:  ldc.r8     0.0
    IL_0011:  stfld      float64 Game.MotdWidget::m_lastLineChangeTime
    IL_0016:  ret
  } // end of method MotdWidget::Restart

  .method private hidebysig instance void 
          MotdManager_MessageOfTheDayUpdated() cil managed
  {
    // 代码大小       160 (0xa0)
    .maxstack  6
    .locals init (valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.MotdManager/Line> V_0,
             class Game.MotdManager/Line V_1,
             class Game.MotdWidget/LineData V_2,
             class [System.Runtime]System.Exception V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.MotdWidget/LineData> Game.MotdWidget::m_lines
    IL_0006:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.MotdWidget/LineData>::Clear()
    IL_000b:  call       class Game.MotdManager/Message Game.MotdManager::get_MessageOfTheDay()
    IL_0010:  brfalse    IL_0099

    IL_0015:  call       class Game.MotdManager/Message Game.MotdManager::get_MessageOfTheDay()
    IL_001a:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.MotdManager/Line> Game.MotdManager/Message::Lines
    IL_001f:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.MotdManager/Line>::GetEnumerator()
    IL_0024:  stloc.0
    .try
    {
      IL_0025:  br.s       IL_0080

      IL_0027:  ldloca.s   V_0
      IL_0029:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.MotdManager/Line>::get_Current()
      IL_002e:  stloc.1
      .try
      {
        IL_002f:  ldarg.0
        IL_0030:  ldloc.1
        IL_0031:  call       instance class Game.MotdWidget/LineData Game.MotdWidget::ParseLine(class Game.MotdManager/Line)
        IL_0036:  stloc.2
        IL_0037:  ldarg.0
        IL_0038:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.MotdWidget/LineData> Game.MotdWidget::m_lines
        IL_003d:  ldloc.2
        IL_003e:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.MotdWidget/LineData>::Add(!0)
        IL_0043:  leave.s    IL_0080

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_0045:  stloc.3
        IL_0046:  ldstr      "Error loading MOTD line {0}. Reason: {1}"
        IL_004b:  ldc.i4.2
        IL_004c:  newarr     [System.Runtime]System.Object
        IL_0051:  dup
        IL_0052:  ldc.i4.0
        IL_0053:  call       class Game.MotdManager/Message Game.MotdManager::get_MessageOfTheDay()
        IL_0058:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.MotdManager/Line> Game.MotdManager/Message::Lines
        IL_005d:  ldloc.1
        IL_005e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.MotdManager/Line>::IndexOf(!0)
        IL_0063:  ldc.i4.1
        IL_0064:  add
        IL_0065:  box        [System.Runtime]System.Int32
        IL_006a:  stelem.ref
        IL_006b:  dup
        IL_006c:  ldc.i4.1
        IL_006d:  ldloc.3
        IL_006e:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
        IL_0073:  stelem.ref
        IL_0074:  call       string [System.Runtime]System.String::Format(string,
                                                                          object[])
        IL_0079:  call       void [Engine]Engine.Log::Warning(string)
        IL_007e:  leave.s    IL_0080

      }  // end handler
      IL_0080:  ldloca.s   V_0
      IL_0082:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.MotdManager/Line>::MoveNext()
      IL_0087:  brtrue.s   IL_0027

      IL_0089:  leave.s    IL_0099

    }  // end .try
    finally
    {
      IL_008b:  ldloca.s   V_0
      IL_008d:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.MotdManager/Line>
      IL_0093:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0098:  endfinally
    }  // end handler
    IL_0099:  ldarg.0
    IL_009a:  call       instance void Game.MotdWidget::Restart()
    IL_009f:  ret
  } // end of method MotdWidget::MotdManager_MessageOfTheDayUpdated

  .method private hidebysig instance class Game.MotdWidget/LineData 
          ParseLine(class Game.MotdManager/Line line) cil managed
  {
    // 代码大小       251 (0xfb)
    .maxstack  5
    .locals init (class Game.MotdWidget/LineData V_0,
             class Game.StackPanelWidget V_1,
             string[] V_2,
             int32 V_3,
             string V_4,
             class Game.LabelWidget V_5)
    IL_0000:  newobj     instance void Game.MotdWidget/LineData::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.1
    IL_0008:  ldfld      float32 Game.MotdManager/Line::Time
    IL_000d:  stfld      float32 Game.MotdWidget/LineData::Time
    IL_0012:  ldarg.1
    IL_0013:  ldfld      class [System.Xml.XDocument]System.Xml.Linq.XElement Game.MotdManager/Line::Node
    IL_0018:  brfalse.s  IL_0032

    IL_001a:  ldloc.0
    IL_001b:  ldnull
    IL_001c:  ldarg.1
    IL_001d:  ldfld      class [System.Xml.XDocument]System.Xml.Linq.XElement Game.MotdManager/Line::Node
    IL_0022:  ldnull
    IL_0023:  call       class Game.Widget Game.WidgetsManager::LoadWidget(object,
                                                                           class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                           class Game.ContainerWidget)
    IL_0028:  stfld      class Game.Widget Game.MotdWidget/LineData::Widget
    IL_002d:  br         IL_00f9

    IL_0032:  ldarg.1
    IL_0033:  ldfld      string Game.MotdManager/Line::Text
    IL_0038:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_003d:  brtrue     IL_00ee

    IL_0042:  newobj     instance void Game.StackPanelWidget::.ctor()
    IL_0047:  dup
    IL_0048:  ldc.i4.1
    IL_0049:  callvirt   instance void Game.StackPanelWidget::set_Direction(valuetype Game.LayoutDirection)
    IL_004e:  dup
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_0055:  dup
    IL_0056:  ldc.i4.1
    IL_0057:  callvirt   instance void Game.Widget::set_VerticalAlignment(valuetype Game.WidgetAlignment)
    IL_005c:  stloc.1
    IL_005d:  ldarg.1
    IL_005e:  ldfld      string Game.MotdManager/Line::Text
    IL_0063:  ldstr      "\r"
    IL_0068:  ldstr      ""
    IL_006d:  callvirt   instance string [System.Runtime]System.String::Replace(string,
                                                                                string)
    IL_0072:  ldc.i4.1
    IL_0073:  newarr     [System.Runtime]System.Char
    IL_0078:  dup
    IL_0079:  ldc.i4.0
    IL_007a:  ldc.i4.s   10
    IL_007c:  stelem.i2
    IL_007d:  callvirt   instance string[] [System.Runtime]System.String::Split(char[])
    IL_0082:  stloc.2
    IL_0083:  ldc.i4.0
    IL_0084:  stloc.3
    IL_0085:  br.s       IL_00df

    IL_0087:  ldloc.2
    IL_0088:  ldloc.3
    IL_0089:  ldelem.ref
    IL_008a:  callvirt   instance string [System.Runtime]System.String::Trim()
    IL_008f:  stloc.s    V_4
    IL_0091:  ldloc.s    V_4
    IL_0093:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0098:  brtrue.s   IL_00db

    IL_009a:  newobj     instance void Game.LabelWidget::.ctor()
    IL_009f:  dup
    IL_00a0:  ldloc.s    V_4
    IL_00a2:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00a7:  dup
    IL_00a8:  ldstr      "Fonts/Pericles18"
    IL_00ad:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Media.BitmapFont>(string)
    IL_00b2:  callvirt   instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
    IL_00b7:  dup
    IL_00b8:  ldc.i4.1
    IL_00b9:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_00be:  dup
    IL_00bf:  ldc.i4.1
    IL_00c0:  callvirt   instance void Game.Widget::set_VerticalAlignment(valuetype Game.WidgetAlignment)
    IL_00c5:  dup
    IL_00c6:  ldc.i4.1
    IL_00c7:  callvirt   instance void Game.LabelWidget::set_DropShadow(bool)
    IL_00cc:  stloc.s    V_5
    IL_00ce:  ldloc.1
    IL_00cf:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00d4:  ldloc.s    V_5
    IL_00d6:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_00db:  ldloc.3
    IL_00dc:  ldc.i4.1
    IL_00dd:  add
    IL_00de:  stloc.3
    IL_00df:  ldloc.3
    IL_00e0:  ldloc.2
    IL_00e1:  ldlen
    IL_00e2:  conv.i4
    IL_00e3:  blt.s      IL_0087

    IL_00e5:  ldloc.0
    IL_00e6:  ldloc.1
    IL_00e7:  stfld      class Game.Widget Game.MotdWidget/LineData::Widget
    IL_00ec:  br.s       IL_00f9

    IL_00ee:  ldstr      "Invalid MOTD line."
    IL_00f3:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_00f8:  throw

    IL_00f9:  ldloc.0
    IL_00fa:  ret
  } // end of method MotdWidget::ParseLine

} // end of class Game.MotdWidget