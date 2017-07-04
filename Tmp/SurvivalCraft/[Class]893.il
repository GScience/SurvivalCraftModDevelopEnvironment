.class public auto ansi beforefieldinit Game.MessageWidget
       extends Game.CanvasWidget
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.MessageWidget/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<char,bool> '<>9__6_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.MessageWidget/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.MessageWidget/'<>c' Game.MessageWidget/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance bool 
            '<DisplayMessage>b__6_0'(char c) cil managed
    {
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldc.i4.s   10
      IL_0003:  ceq
      IL_0005:  ret
    } // end of method '<>c'::'<DisplayMessage>b__6_0'

  } // end of class '<>c'

  .field private class Game.LabelWidget m_labelWidget
  .field private string m_message
  .field private float64 m_messageStartTime
  .field private float32 m_duration
  .field private bool m_blinking
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       49 (0x31)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.CanvasWidget::.ctor()
    IL_0006:  ldstr      "Widgets/MessageWidget"
    IL_000b:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  ldarg.0
    IL_0013:  ldloc.0
    IL_0014:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0020:  ldstr      "Label"
    IL_0025:  ldc.i4.1
    IL_0026:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_002b:  stfld      class Game.LabelWidget Game.MessageWidget::m_labelWidget
    IL_0030:  ret
  } // end of method MessageWidget::.ctor

  .method public hidebysig instance void 
          DisplayMessage(string text,
                         bool blinking) cil managed
  {
    // 代码大小       107 (0x6b)
    .maxstack  6
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string Game.MessageWidget::m_message
    IL_0007:  ldarg.0
    IL_0008:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_000d:  stfld      float64 Game.MessageWidget::m_messageStartTime
    IL_0012:  ldarg.0
    IL_0013:  ldarg.2
    IL_0014:  brtrue.s   IL_0059

    IL_0016:  ldc.r4     4.
    IL_001b:  ldc.r4     1.
    IL_0020:  ldarg.0
    IL_0021:  ldfld      string Game.MessageWidget::m_message
    IL_0026:  ldsfld     class [System.Runtime]System.Func`2<char,bool> Game.MessageWidget/'<>c'::'<>9__6_0'
    IL_002b:  dup
    IL_002c:  brtrue.s   IL_0045

    IL_002e:  pop
    IL_002f:  ldsfld     class Game.MessageWidget/'<>c' Game.MessageWidget/'<>c'::'<>9'
    IL_0034:  ldftn      instance bool Game.MessageWidget/'<>c'::'<DisplayMessage>b__6_0'(char)
    IL_003a:  newobj     instance void class [System.Runtime]System.Func`2<char,bool>::.ctor(object,
                                                                                             native int)
    IL_003f:  dup
    IL_0040:  stsfld     class [System.Runtime]System.Func`2<char,bool> Game.MessageWidget/'<>c'::'<>9__6_0'
    IL_0045:  call       int32 [System.Linq]System.Linq.Enumerable::Count<char>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                class [System.Runtime]System.Func`2<!!0,bool>)
    IL_004a:  conv.r4
    IL_004b:  mul
    IL_004c:  ldc.r4     4.
    IL_0051:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0056:  add
    IL_0057:  br.s       IL_005e

    IL_0059:  ldc.r4     6.
    IL_005e:  stfld      float32 Game.MessageWidget::m_duration
    IL_0063:  ldarg.0
    IL_0064:  ldarg.2
    IL_0065:  stfld      bool Game.MessageWidget::m_blinking
    IL_006a:  ret
  } // end of method MessageWidget::DisplayMessage

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       266 (0x10a)
    .maxstack  8
    .locals init (float64 V_0,
             float32 V_1)
    IL_0000:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldfld      string Game.MessageWidget::m_message
    IL_000c:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0011:  brtrue     IL_00fd

    IL_0016:  ldarg.0
    IL_0017:  ldfld      bool Game.MessageWidget::m_blinking
    IL_001c:  brfalse.s  IL_0082

    IL_001e:  ldc.r4     1.
    IL_0023:  ldarg.0
    IL_0024:  ldfld      float64 Game.MessageWidget::m_messageStartTime
    IL_0029:  ldarg.0
    IL_002a:  ldfld      float32 Game.MessageWidget::m_duration
    IL_002f:  conv.r8
    IL_0030:  add
    IL_0031:  ldloc.0
    IL_0032:  sub
    IL_0033:  conv.r4
    IL_0034:  mul
    IL_0035:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_003a:  stloc.1
    IL_003b:  ldloc.0
    IL_003c:  ldarg.0
    IL_003d:  ldfld      float64 Game.MessageWidget::m_messageStartTime
    IL_0042:  sub
    IL_0043:  ldc.r8     0.41699999999999998
    IL_004c:  bge.un.s   IL_00b3

    IL_004e:  ldloc.1
    IL_004f:  ldc.r4     0.25
    IL_0054:  ldc.r4     1.
    IL_0059:  ldc.r4     0.5
    IL_005e:  ldc.r4     1.
    IL_0063:  ldc.r4     37.699112
    IL_0068:  ldloc.0
    IL_0069:  ldarg.0
    IL_006a:  ldfld      float64 Game.MessageWidget::m_messageStartTime
    IL_006f:  sub
    IL_0070:  conv.r4
    IL_0071:  mul
    IL_0072:  call       float32 [Engine]Engine.MathUtils::Cos(float32)
    IL_0077:  sub
    IL_0078:  mul
    IL_0079:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_007e:  mul
    IL_007f:  stloc.1
    IL_0080:  br.s       IL_00b3

    IL_0082:  ldc.r4     3.
    IL_0087:  ldloc.0
    IL_0088:  ldarg.0
    IL_0089:  ldfld      float64 Game.MessageWidget::m_messageStartTime
    IL_008e:  sub
    IL_008f:  conv.r4
    IL_0090:  mul
    IL_0091:  ldc.r4     1.
    IL_0096:  ldarg.0
    IL_0097:  ldfld      float64 Game.MessageWidget::m_messageStartTime
    IL_009c:  ldarg.0
    IL_009d:  ldfld      float32 Game.MessageWidget::m_duration
    IL_00a2:  conv.r8
    IL_00a3:  add
    IL_00a4:  ldloc.0
    IL_00a5:  sub
    IL_00a6:  conv.r4
    IL_00a7:  mul
    IL_00a8:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_00ad:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_00b2:  stloc.1
    IL_00b3:  ldarg.0
    IL_00b4:  ldfld      class Game.LabelWidget Game.MessageWidget::m_labelWidget
    IL_00b9:  ldloc.1
    IL_00ba:  ldloc.1
    IL_00bb:  ldloc.1
    IL_00bc:  ldloc.1
    IL_00bd:  newobj     instance void [Engine]Engine.Color::.ctor(float32,
                                                                   float32,
                                                                   float32,
                                                                   float32)
    IL_00c2:  callvirt   instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_00c7:  ldarg.0
    IL_00c8:  ldfld      class Game.LabelWidget Game.MessageWidget::m_labelWidget
    IL_00cd:  ldc.i4.1
    IL_00ce:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_00d3:  ldarg.0
    IL_00d4:  ldfld      class Game.LabelWidget Game.MessageWidget::m_labelWidget
    IL_00d9:  ldarg.0
    IL_00da:  ldfld      string Game.MessageWidget::m_message
    IL_00df:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00e4:  ldloc.0
    IL_00e5:  ldarg.0
    IL_00e6:  ldfld      float64 Game.MessageWidget::m_messageStartTime
    IL_00eb:  sub
    IL_00ec:  ldarg.0
    IL_00ed:  ldfld      float32 Game.MessageWidget::m_duration
    IL_00f2:  conv.r8
    IL_00f3:  ble.un.s   IL_0109

    IL_00f5:  ldarg.0
    IL_00f6:  ldnull
    IL_00f7:  stfld      string Game.MessageWidget::m_message
    IL_00fc:  ret

    IL_00fd:  ldarg.0
    IL_00fe:  ldfld      class Game.LabelWidget Game.MessageWidget::m_labelWidget
    IL_0103:  ldc.i4.0
    IL_0104:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0109:  ret
  } // end of method MessageWidget::Update

} // end of class Game.MessageWidget