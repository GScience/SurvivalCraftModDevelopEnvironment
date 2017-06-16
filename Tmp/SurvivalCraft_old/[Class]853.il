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
    IL_001d:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class Game.CanvasWidget Game.MotdWidget::m_containerWidget
    IL_0028:  callvirt   instance void Game.WidgetsContainer::Add(class Game.Widget)
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
    // 代码大小       553 (0x229)
    .maxstack  4
    .locals init (valuetype Game.InputState V_0,
             class Game.Widget V_1,
             float64 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5)
    IL_0000:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0005:  stloc.0
    IL_0006:  ldloca.s   V_0
    IL_0008:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Tap
    IL_000d:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_0012:  brfalse.s  IL_004a

    IL_0014:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0019:  stloc.0
    IL_001a:  ldloca.s   V_0
    IL_001c:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.InputState::Tap
    IL_0021:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_0026:  call       class Game.Widget Game.WidgetsManager::HitTest(valuetype [Engine]Engine.Vector2)
    IL_002b:  stloc.1
    IL_002c:  ldloc.1
    IL_002d:  brfalse.s  IL_004a

    IL_002f:  ldloc.1
    IL_0030:  ldarg.0
    IL_0031:  beq.s      IL_003c

    IL_0033:  ldloc.1
    IL_0034:  ldarg.0
    IL_0035:  callvirt   instance bool Game.Widget::IsChildWidgetOf(class Game.ContainerWidget)
    IL_003a:  brfalse.s  IL_004a

    IL_003c:  ldarg.0
    IL_003d:  ldarg.0
    IL_003e:  ldfld      int32 Game.MotdWidget::m_tapsCount
    IL_0043:  ldc.i4.1
    IL_0044:  add
    IL_0045:  stfld      int32 Game.MotdWidget::m_tapsCount
    IL_004a:  ldarg.0
    IL_004b:  ldfld      int32 Game.MotdWidget::m_tapsCount
    IL_0050:  ldc.i4.5
    IL_0051:  blt.s      IL_0078

    IL_0053:  ldarg.0
    IL_0054:  ldc.i4.0
    IL_0055:  stfld      int32 Game.MotdWidget::m_tapsCount
    IL_005a:  call       void Game.MotdManager::ForceRedownload()
    IL_005f:  ldstr      "Audio/UI/ButtonClick"
    IL_0064:  ldc.r4     1.
    IL_0069:  ldc.r4     0.0
    IL_006e:  ldc.r4     0.0
    IL_0073:  call       void Game.AudioManager::PlaySound(string,
                                                           float32,
                                                           float32,
                                                           float32)
    IL_0078:  ldc.i4.s   26
    IL_007a:  call       bool Game.InputManager::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_007f:  brfalse.s  IL_008f

    IL_0081:  ldarg.0
    IL_0082:  ldarg.0
    IL_0083:  ldfld      int32 Game.MotdWidget::m_currentLineIndex
    IL_0088:  ldc.i4.1
    IL_0089:  sub
    IL_008a:  call       instance void Game.MotdWidget::GotoLine(int32)
    IL_008f:  ldc.i4.s   27
    IL_0091:  call       bool Game.InputManager::IsKeyDownOnce(valuetype [Engine]Engine.Input.Key)
    IL_0096:  brfalse.s  IL_00a6

    IL_0098:  ldarg.0
    IL_0099:  ldarg.0
    IL_009a:  ldfld      int32 Game.MotdWidget::m_currentLineIndex
    IL_009f:  ldc.i4.1
    IL_00a0:  add
    IL_00a1:  call       instance void Game.MotdWidget::GotoLine(int32)
    IL_00a6:  ldarg.0
    IL_00a7:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.MotdWidget/LineData> Game.MotdWidget::m_lines
    IL_00ac:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.MotdWidget/LineData>::get_Count()
    IL_00b1:  ldc.i4.0
    IL_00b2:  ble        IL_0218

    IL_00b7:  ldarg.0
    IL_00b8:  ldarg.0
    IL_00b9:  ldfld      int32 Game.MotdWidget::m_currentLineIndex
    IL_00be:  ldarg.0
    IL_00bf:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.MotdWidget/LineData> Game.MotdWidget::m_lines
    IL_00c4:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.MotdWidget/LineData>::get_Count()
    IL_00c9:  rem
    IL_00ca:  stfld      int32 Game.MotdWidget::m_currentLineIndex
    IL_00cf:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_00d4:  stloc.2
    IL_00d5:  ldarg.0
    IL_00d6:  ldfld      float64 Game.MotdWidget::m_lastLineChangeTime
    IL_00db:  ldc.r8     0.0
    IL_00e4:  beq.s      IL_0107

    IL_00e6:  ldloc.2
    IL_00e7:  ldarg.0
    IL_00e8:  ldfld      float64 Game.MotdWidget::m_lastLineChangeTime
    IL_00ed:  sub
    IL_00ee:  ldarg.0
    IL_00ef:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.MotdWidget/LineData> Game.MotdWidget::m_lines
    IL_00f4:  ldarg.0
    IL_00f5:  ldfld      int32 Game.MotdWidget::m_currentLineIndex
    IL_00fa:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.MotdWidget/LineData>::get_Item(int32)
    IL_00ff:  ldfld      float32 Game.MotdWidget/LineData::Time
    IL_0104:  conv.r8
    IL_0105:  blt.un.s   IL_0129

    IL_0107:  ldarg.0
    IL_0108:  ldarg.0
    IL_0109:  ldfld      float64 Game.MotdWidget::m_lastLineChangeTime
    IL_010e:  ldc.r8     0.0
    IL_0117:  bne.un.s   IL_011c

    IL_0119:  ldc.i4.0
    IL_011a:  br.s       IL_0124

    IL_011c:  ldarg.0
    IL_011d:  ldfld      int32 Game.MotdWidget::m_currentLineIndex
    IL_0122:  ldc.i4.1
    IL_0123:  add
    IL_0124:  call       instance void Game.MotdWidget::GotoLine(int32)
    IL_0129:  ldc.r4     0.0
    IL_012e:  stloc.3
    IL_012f:  ldloc.2
    IL_0130:  ldarg.0
    IL_0131:  ldfld      float64 Game.MotdWidget::m_lastLineChangeTime
    IL_0136:  sub
    IL_0137:  conv.r4
    IL_0138:  stloc.s    V_4
    IL_013a:  ldarg.0
    IL_013b:  ldfld      float64 Game.MotdWidget::m_lastLineChangeTime
    IL_0140:  ldarg.0
    IL_0141:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.MotdWidget/LineData> Game.MotdWidget::m_lines
    IL_0146:  ldarg.0
    IL_0147:  ldfld      int32 Game.MotdWidget::m_currentLineIndex
    IL_014c:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.MotdWidget/LineData>::get_Item(int32)
    IL_0151:  ldfld      float32 Game.MotdWidget/LineData::Time
    IL_0156:  conv.r8
    IL_0157:  add
    IL_0158:  ldc.r8     0.33000001311302185
    IL_0161:  sub
    IL_0162:  ldloc.2
    IL_0163:  sub
    IL_0164:  conv.r4
    IL_0165:  stloc.s    V_5
    IL_0167:  ldloc.s    V_4
    IL_0169:  ldloc.s    V_5
    IL_016b:  bge.un.s   IL_01aa

    IL_016d:  ldarg.0
    IL_016e:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0173:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0178:  ldc.r4     1.5
    IL_017d:  ldloc.s    V_4
    IL_017f:  mul
    IL_0180:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0185:  ldc.r4     3.1415927
    IL_018a:  mul
    IL_018b:  ldc.r4     2.
    IL_0190:  div
    IL_0191:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_0196:  ldc.r4     0.33000001
    IL_019b:  call       float32 [Engine]Engine.MathUtils::PowSign(float32,
                                                                   float32)
    IL_01a0:  ldc.r4     1.
    IL_01a5:  sub
    IL_01a6:  mul
    IL_01a7:  stloc.3
    IL_01a8:  br.s       IL_01e5

    IL_01aa:  ldarg.0
    IL_01ab:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_01b0:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_01b5:  ldc.r4     1.
    IL_01ba:  ldc.r4     1.5
    IL_01bf:  ldloc.s    V_5
    IL_01c1:  mul
    IL_01c2:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_01c7:  ldc.r4     3.1415927
    IL_01cc:  mul
    IL_01cd:  ldc.r4     2.
    IL_01d2:  div
    IL_01d3:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_01d8:  ldc.r4     0.33000001
    IL_01dd:  call       float32 [Engine]Engine.MathUtils::PowSign(float32,
                                                                   float32)
    IL_01e2:  sub
    IL_01e3:  mul
    IL_01e4:  stloc.3
    IL_01e5:  ldarg.0
    IL_01e6:  ldarg.0
    IL_01e7:  ldfld      class Game.CanvasWidget Game.MotdWidget::m_containerWidget
    IL_01ec:  ldloc.3
    IL_01ed:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_01f2:  ldc.r4     0.0
    IL_01f7:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01fc:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::.ctor(!0)
    IL_0201:  call       instance void Game.CanvasWidget::SetWidgetPosition(class Game.Widget,
                                                                            valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>)
    IL_0206:  ldarg.0
    IL_0207:  ldfld      class Game.CanvasWidget Game.MotdWidget::m_containerWidget
    IL_020c:  ldarg.0
    IL_020d:  call       instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0212:  callvirt   instance void Game.CanvasWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_0217:  ret

    IL_0218:  ldarg.0
    IL_0219:  ldfld      class Game.CanvasWidget Game.MotdWidget::m_containerWidget
    IL_021e:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0223:  callvirt   instance void Game.WidgetsContainer::Clear()
    IL_0228:  ret
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
    IL_002d:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0032:  callvirt   instance void Game.WidgetsContainer::Clear()
    IL_0037:  ldarg.0
    IL_0038:  ldfld      class Game.CanvasWidget Game.MotdWidget::m_containerWidget
    IL_003d:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0042:  ldarg.0
    IL_0043:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.MotdWidget/LineData> Game.MotdWidget::m_lines
    IL_0048:  ldarg.0
    IL_0049:  ldfld      int32 Game.MotdWidget::m_currentLineIndex
    IL_004e:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.MotdWidget/LineData>::get_Item(int32)
    IL_0053:  ldfld      class Game.Widget Game.MotdWidget/LineData::Widget
    IL_0058:  callvirt   instance void Game.WidgetsContainer::Add(class Game.Widget)
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
    IL_00cf:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00d4:  ldloc.s    V_5
    IL_00d6:  callvirt   instance void Game.WidgetsContainer::Add(class Game.Widget)
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