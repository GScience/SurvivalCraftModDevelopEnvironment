.class public abstract auto ansi sealed beforefieldinit Game.WidgetsManager
       extends [System.Runtime]System.Object
{
  .class auto ansi nested private beforefieldinit DrawItem
         extends [System.Runtime]System.Object
         implements class [System.Runtime]System.IComparable`1<class Game.WidgetsManager/DrawItem>
  {
    .field public int32 Layer
    .field public class Game.Widget Widget
    .field public valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Rectangle> ScissorRectangle
    .method public hidebysig newslot virtual final 
            instance int32  CompareTo(class Game.WidgetsManager/DrawItem other) cil managed
    {
      // 代码大小       14 (0xe)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.WidgetsManager/DrawItem::Layer
      IL_0006:  ldarg.1
      IL_0007:  ldfld      int32 Game.WidgetsManager/DrawItem::Layer
      IL_000c:  sub
      IL_000d:  ret
    } // end of method DrawItem::CompareTo

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method DrawItem::.ctor

  } // end of class DrawItem

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass22_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public string setterName
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass22_0'::.ctor

    .method assembly hidebysig instance bool 
            '<LoadWidgetProperties>b__0'(class [System.Reflection]System.Reflection.MethodInfo mi) cil managed
    {
      // 代码大小       36 (0x24)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance string [System.Reflection]System.Reflection.MemberInfo::get_Name()
      IL_0006:  ldarg.0
      IL_0007:  ldfld      string Game.WidgetsManager/'<>c__DisplayClass22_0'::setterName
      IL_000c:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0011:  brfalse.s  IL_0022

      IL_0013:  ldarg.1
      IL_0014:  callvirt   instance bool [System.Reflection]System.Reflection.MethodBase::get_IsPublic()
      IL_0019:  brfalse.s  IL_0022

      IL_001b:  ldarg.1
      IL_001c:  callvirt   instance bool [System.Reflection]System.Reflection.MethodBase::get_IsStatic()
      IL_0021:  ret

      IL_0022:  ldc.i4.0
      IL_0023:  ret
    } // end of method '<>c__DisplayClass22_0'::'<LoadWidgetProperties>b__0'

  } // end of class '<>c__DisplayClass22_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass22_1'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [System.Xml.XDocument]System.Xml.Linq.XAttribute attribute
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass22_1'::.ctor

    .method assembly hidebysig instance bool 
            '<LoadWidgetProperties>b__1'(class [System.Reflection]System.Reflection.PropertyInfo pi) cil managed
    {
      // 代码大小       28 (0x1c)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance string [System.Reflection]System.Reflection.MemberInfo::get_Name()
      IL_0006:  ldarg.0
      IL_0007:  ldfld      class [System.Xml.XDocument]System.Xml.Linq.XAttribute Game.WidgetsManager/'<>c__DisplayClass22_1'::attribute
      IL_000c:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_Name()
      IL_0011:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XName::get_LocalName()
      IL_0016:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_001b:  ret
    } // end of method '<>c__DisplayClass22_1'::'<LoadWidgetProperties>b__1'

  } // end of class '<>c__DisplayClass22_1'

  .field private static class Game.CanvasWidget m_rootWidget
  .field private static float32 m_scale
  .field private static class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem> m_drawItems
  .field private static class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem> m_drawItemsCache
  .field private static int32 m_drawItemsCacheIndex
  .field public static int32 LayersLimit
  .field public static bool DrawWidgets
  .field public static bool DrawWidgetBounds
  .field public static float32 WidgetsDebugScale
  .field public static class [Engine]Engine.Graphics.PrimitivesRenderer2D PrimitivesRenderer2D
  .field public static class [Engine]Engine.Graphics.PrimitivesRenderer3D PrimitivesRenderer3D
  .method public hidebysig specialname static 
          float32  get_Scale() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     float32 Game.WidgetsManager::m_scale
    IL_0005:  ret
  } // end of method WidgetsManager::get_Scale

  .method public hidebysig specialname static 
          class Game.ContainerWidget  get_RootWidget() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     class Game.CanvasWidget Game.WidgetsManager::m_rootWidget
    IL_0005:  ret
  } // end of method WidgetsManager::get_RootWidget

  .method public hidebysig static void  Update() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldsfld     class Game.CanvasWidget Game.WidgetsManager::m_rootWidget
    IL_0005:  call       void Game.WidgetsManager::UpdateWidgetsHierarchy(class Game.Widget)
    IL_000a:  ret
  } // end of method WidgetsManager::Update

  .method public hidebysig static void  Draw() cil managed
  {
    // 代码大小       255 (0xff)
    .maxstack  4
    .locals init (float32 V_0,
             valuetype [Engine]Engine.Graphics.Viewport V_1,
             valuetype [Engine]Engine.Vector2 V_2,
             float32 V_3,
             valuetype Game.GuiSize V_4)
    IL_0000:  ldsfld     bool Game.WidgetsManager::DrawWidgets
    IL_0005:  brfalse    IL_00e3

    IL_000a:  call       valuetype Game.GuiSize Game.SettingsManager::get_GuiSize()
    IL_000f:  stloc.s    V_4
    IL_0011:  ldloc.s    V_4
    IL_0013:  switch     ( 
                          IL_0036,
                          IL_002e,
                          IL_0026)
    IL_0024:  br.s       IL_003e

    IL_0026:  ldc.r4     800.
    IL_002b:  stloc.0
    IL_002c:  br.s       IL_0044

    IL_002e:  ldc.r4     920.
    IL_0033:  stloc.0
    IL_0034:  br.s       IL_0044

    IL_0036:  ldc.r4     1060.
    IL_003b:  stloc.0
    IL_003c:  br.s       IL_0044

    IL_003e:  ldc.r4     800.
    IL_0043:  stloc.0
    IL_0044:  ldloc.0
    IL_0045:  ldsfld     float32 Game.WidgetsManager::WidgetsDebugScale
    IL_004a:  div
    IL_004b:  stloc.0
    IL_004c:  call       valuetype [Engine]Engine.Graphics.Viewport [Engine]Engine.Graphics.Display::get_Viewport()
    IL_0051:  stloc.1
    IL_0052:  ldloc.1
    IL_0053:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_0058:  conv.r4
    IL_0059:  ldloc.0
    IL_005a:  div
    IL_005b:  stsfld     float32 Game.WidgetsManager::m_scale
    IL_0060:  ldloca.s   V_2
    IL_0062:  ldloc.0
    IL_0063:  ldloc.0
    IL_0064:  ldloc.1
    IL_0065:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_006a:  conv.r4
    IL_006b:  div
    IL_006c:  ldloc.1
    IL_006d:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_0072:  conv.r4
    IL_0073:  mul
    IL_0074:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0079:  ldloc.0
    IL_007a:  ldc.r4     9.
    IL_007f:  mul
    IL_0080:  ldc.r4     16.
    IL_0085:  div
    IL_0086:  stloc.3
    IL_0087:  ldloc.1
    IL_0088:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_008d:  conv.r4
    IL_008e:  ldsfld     float32 Game.WidgetsManager::m_scale
    IL_0093:  div
    IL_0094:  ldloc.3
    IL_0095:  bge.un.s   IL_00be

    IL_0097:  ldloc.1
    IL_0098:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_009d:  conv.r4
    IL_009e:  ldloc.3
    IL_009f:  div
    IL_00a0:  stsfld     float32 Game.WidgetsManager::m_scale
    IL_00a5:  ldloca.s   V_2
    IL_00a7:  ldloc.3
    IL_00a8:  ldloc.1
    IL_00a9:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_00ae:  conv.r4
    IL_00af:  div
    IL_00b0:  ldloc.1
    IL_00b1:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_00b6:  conv.r4
    IL_00b7:  mul
    IL_00b8:  ldloc.3
    IL_00b9:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00be:  ldsfld     class Game.CanvasWidget Game.WidgetsManager::m_rootWidget
    IL_00c3:  ldloc.2
    IL_00c4:  callvirt   instance void Game.Widget::Measure(valuetype [Engine]Engine.Vector2)
    IL_00c9:  ldsfld     class Game.CanvasWidget Game.WidgetsManager::m_rootWidget
    IL_00ce:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_00d3:  ldloc.2
    IL_00d4:  callvirt   instance void Game.Widget::Arrange(valuetype [Engine]Engine.Vector2,
                                                            valuetype [Engine]Engine.Vector2)
    IL_00d9:  ldsfld     class Game.CanvasWidget Game.WidgetsManager::m_rootWidget
    IL_00de:  call       void Game.WidgetsManager::DrawWidgetsHierarchy(class Game.Widget)
    IL_00e3:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.WidgetsManager::PrimitivesRenderer3D
    IL_00e8:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_00ed:  ldc.i4.1
    IL_00ee:  callvirt   instance void class [Engine]Engine.Graphics.BasePrimitivesRenderer`3<class [Engine]Engine.Graphics.FlatBatch3D,class [Engine]Engine.Graphics.TexturedBatch3D,class [Engine]Engine.Graphics.FontBatch3D>::Flush(valuetype [Engine]Engine.Matrix,
                                                                                                                                                                                                                                        bool)
    IL_00f3:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
    IL_00f8:  ldc.i4.1
    IL_00f9:  callvirt   instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::Flush(bool)
    IL_00fe:  ret
  } // end of method WidgetsManager::Draw

  .method public hidebysig static class Game.Widget 
          HitTest(valuetype [Engine]Engine.Vector2 point,
                  class [System.Runtime]System.Func`2<class Game.Widget,bool> predicate) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldsfld     class Game.CanvasWidget Game.WidgetsManager::m_rootWidget
    IL_0005:  ldarg.0
    IL_0006:  ldarg.1
    IL_0007:  call       class Game.Widget Game.WidgetsManager::HitTestWidgetsHierarchy(class Game.Widget,
                                                                                        valuetype [Engine]Engine.Vector2,
                                                                                        class [System.Runtime]System.Func`2<class Game.Widget,bool>)
    IL_000c:  ret
  } // end of method WidgetsManager::HitTest

  .method public hidebysig static class Game.Widget 
          HitTest(valuetype [Engine]Engine.Vector2 point) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldnull
    IL_0002:  call       class Game.Widget Game.WidgetsManager::HitTest(valuetype [Engine]Engine.Vector2,
                                                                        class [System.Runtime]System.Func`2<class Game.Widget,bool>)
    IL_0007:  ret
  } // end of method WidgetsManager::HitTest

  .method public hidebysig static class Game.Widget 
          LoadWidget(object eventsTarget,
                     class [System.Xml.XDocument]System.Xml.Linq.XElement node,
                     class Game.ContainerWidget parentWidget) cil managed
  {
    // 代码大小       136 (0x88)
    .maxstack  5
    .locals init (class Game.Widget V_0)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XElement::get_Name()
    IL_0006:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XName::get_LocalName()
    IL_000b:  ldstr      "."
    IL_0010:  callvirt   instance bool [System.Runtime]System.String::Contains(string)
    IL_0015:  brfalse.s  IL_0022

    IL_0017:  ldstr      "Node property specification not implemented."
    IL_001c:  newobj     instance void [System.Runtime]System.NotImplementedException::.ctor(string)
    IL_0021:  throw

    IL_0022:  ldarg.1
    IL_0023:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XElement::get_Name()
    IL_0028:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XName::get_LocalName()
    IL_002d:  ldarg.1
    IL_002e:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XElement::get_Name()
    IL_0033:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XName::get_NamespaceName()
    IL_0038:  call       class [System.Runtime]System.Type Game.WidgetsManager::FindTypeFromXmlName(string,
                                                                                                    string)
    IL_003d:  call       object [System.Runtime]System.Activator::CreateInstance(class [System.Runtime]System.Type)
    IL_0042:  isinst     Game.Widget
    IL_0047:  stloc.0
    IL_0048:  ldloc.0
    IL_0049:  brtrue.s   IL_006f

    IL_004b:  ldstr      "Type \"{0}\" is not a Widget."
    IL_0050:  ldc.i4.1
    IL_0051:  newarr     [System.Runtime]System.Object
    IL_0056:  dup
    IL_0057:  ldc.i4.0
    IL_0058:  ldarg.1
    IL_0059:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XElement::get_Name()
    IL_005e:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XName::get_LocalName()
    IL_0063:  stelem.ref
    IL_0064:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0069:  newobj     instance void [System.Runtime]System.Exception::.ctor(string)
    IL_006e:  throw

    IL_006f:  ldarg.2
    IL_0070:  brfalse.s  IL_007e

    IL_0072:  ldarg.2
    IL_0073:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0078:  ldloc.0
    IL_0079:  callvirt   instance void Game.WidgetsContainer::Add(class Game.Widget)
    IL_007e:  ldloc.0
    IL_007f:  ldarg.0
    IL_0080:  ldarg.1
    IL_0081:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0086:  ldloc.0
    IL_0087:  ret
  } // end of method WidgetsManager::LoadWidget

  .method public hidebysig static void  LoadWidgetContents(class Game.Widget widget,
                                                           object eventsTarget,
                                                           class [System.Xml.XDocument]System.Xml.Linq.XElement node) cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       void Game.WidgetsManager::LoadWidgetProperties(class Game.Widget,
                                                                        object,
                                                                        class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  ldarg.2
    IL_000b:  call       void Game.WidgetsManager::LoadWidgetChildren(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0010:  ret
  } // end of method WidgetsManager::LoadWidgetContents

  .method public hidebysig static void  LoadWidgetProperties(class Game.Widget widget,
                                                             object eventsTarget,
                                                             class [System.Xml.XDocument]System.Xml.Linq.XElement node) cil managed
  {
    // 代码大小       878 (0x36e)
    .maxstack  6
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.PropertyInfo> V_0,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XAttribute> V_1,
             class Game.WidgetsManager/'<>c__DisplayClass22_1' V_2,
             string[] V_3,
             class Game.WidgetsManager/'<>c__DisplayClass22_0' V_4,
             class [System.Reflection]System.Reflection.MethodInfo V_5,
             class [System.Reflection]System.Reflection.ParameterInfo[] V_6,
             object V_7,
             class [System.Reflection]System.Reflection.PropertyInfo V_8,
             string V_9,
             object V_10,
             object V_11)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
    IL_0006:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.PropertyInfo> [System.Reflection.Extensions]System.Reflection.RuntimeReflectionExtensions::GetRuntimeProperties(class [System.Runtime]System.Type)
    IL_000b:  stloc.0
    IL_000c:  ldarg.2
    IL_000d:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XAttribute> [System.Xml.XDocument]System.Xml.Linq.XElement::Attributes()
    IL_0012:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XAttribute>::GetEnumerator()
    IL_0017:  stloc.1
    .try
    {
      IL_0018:  br         IL_0356

      IL_001d:  newobj     instance void Game.WidgetsManager/'<>c__DisplayClass22_1'::.ctor()
      IL_0022:  stloc.2
      IL_0023:  ldloc.2
      IL_0024:  ldloc.1
      IL_0025:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XAttribute>::get_Current()
      IL_002a:  stfld      class [System.Xml.XDocument]System.Xml.Linq.XAttribute Game.WidgetsManager/'<>c__DisplayClass22_1'::attribute
      IL_002f:  ldloc.2
      IL_0030:  ldfld      class [System.Xml.XDocument]System.Xml.Linq.XAttribute Game.WidgetsManager/'<>c__DisplayClass22_1'::attribute
      IL_0035:  callvirt   instance bool [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_IsNamespaceDeclaration()
      IL_003a:  brtrue     IL_0356

      IL_003f:  ldloc.2
      IL_0040:  ldfld      class [System.Xml.XDocument]System.Xml.Linq.XAttribute Game.WidgetsManager/'<>c__DisplayClass22_1'::attribute
      IL_0045:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_Name()
      IL_004a:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XName::get_LocalName()
      IL_004f:  ldstr      "_"
      IL_0054:  callvirt   instance bool [System.Runtime]System.String::StartsWith(string)
      IL_0059:  brtrue     IL_0356

      IL_005e:  ldloc.2
      IL_005f:  ldfld      class [System.Xml.XDocument]System.Xml.Linq.XAttribute Game.WidgetsManager/'<>c__DisplayClass22_1'::attribute
      IL_0064:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_Name()
      IL_0069:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XName::get_LocalName()
      IL_006e:  ldc.i4.s   46
      IL_0070:  call       bool [System.Linq]System.Linq.Enumerable::Contains<char>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                    !!0)
      IL_0075:  brfalse    IL_022c

      IL_007a:  ldloc.2
      IL_007b:  ldfld      class [System.Xml.XDocument]System.Xml.Linq.XAttribute Game.WidgetsManager/'<>c__DisplayClass22_1'::attribute
      IL_0080:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_Name()
      IL_0085:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XName::get_LocalName()
      IL_008a:  ldc.i4.1
      IL_008b:  newarr     [System.Runtime]System.Char
      IL_0090:  dup
      IL_0091:  ldc.i4.0
      IL_0092:  ldc.i4.s   46
      IL_0094:  stelem.i2
      IL_0095:  callvirt   instance string[] [System.Runtime]System.String::Split(char[])
      IL_009a:  stloc.3
      IL_009b:  ldloc.3
      IL_009c:  ldlen
      IL_009d:  conv.i4
      IL_009e:  ldc.i4.2
      IL_009f:  bne.un     IL_01f5

      IL_00a4:  newobj     instance void Game.WidgetsManager/'<>c__DisplayClass22_0'::.ctor()
      IL_00a9:  stloc.s    V_4
      IL_00ab:  ldloc.3
      IL_00ac:  ldc.i4.0
      IL_00ad:  ldelem.ref
      IL_00ae:  ldloc.2
      IL_00af:  ldfld      class [System.Xml.XDocument]System.Xml.Linq.XAttribute Game.WidgetsManager/'<>c__DisplayClass22_1'::attribute
      IL_00b4:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_Name()
      IL_00b9:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XName::get_NamespaceName()
      IL_00be:  ldsfld     string [System.Runtime]System.String::Empty
      IL_00c3:  call       bool [System.Runtime]System.String::op_Inequality(string,
                                                                             string)
      IL_00c8:  brtrue.s   IL_00d7

      IL_00ca:  ldarg.2
      IL_00cb:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XElement::get_Name()
      IL_00d0:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XName::get_NamespaceName()
      IL_00d5:  br.s       IL_00e7

      IL_00d7:  ldloc.2
      IL_00d8:  ldfld      class [System.Xml.XDocument]System.Xml.Linq.XAttribute Game.WidgetsManager/'<>c__DisplayClass22_1'::attribute
      IL_00dd:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_Name()
      IL_00e2:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XName::get_NamespaceName()
      IL_00e7:  call       class [System.Runtime]System.Type Game.WidgetsManager::FindTypeFromXmlName(string,
                                                                                                      string)
      IL_00ec:  ldloc.s    V_4
      IL_00ee:  ldstr      "Set"
      IL_00f3:  ldloc.3
      IL_00f4:  ldc.i4.1
      IL_00f5:  ldelem.ref
      IL_00f6:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string)
      IL_00fb:  stfld      string Game.WidgetsManager/'<>c__DisplayClass22_0'::setterName
      IL_0100:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.MethodInfo> [System.Reflection.Extensions]System.Reflection.RuntimeReflectionExtensions::GetRuntimeMethods(class [System.Runtime]System.Type)
      IL_0105:  ldloc.s    V_4
      IL_0107:  ldftn      instance bool Game.WidgetsManager/'<>c__DisplayClass22_0'::'<LoadWidgetProperties>b__0'(class [System.Reflection]System.Reflection.MethodInfo)
      IL_010d:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.MethodInfo,bool>::.ctor(object,
                                                                                                                                                native int)
      IL_0112:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class [System.Reflection]System.Reflection.MethodInfo>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                          class [System.Runtime]System.Func`2<!!0,bool>)
      IL_0117:  stloc.s    V_5
      IL_0119:  ldloc.s    V_5
      IL_011b:  brfalse    IL_01b4

      IL_0120:  ldloc.s    V_5
      IL_0122:  callvirt   instance class [System.Reflection]System.Reflection.ParameterInfo[] [System.Reflection]System.Reflection.MethodBase::GetParameters()
      IL_0127:  stloc.s    V_6
      IL_0129:  ldloc.s    V_6
      IL_012b:  ldlen
      IL_012c:  conv.i4
      IL_012d:  ldc.i4.2
      IL_012e:  bne.un.s   IL_017d

      IL_0130:  ldloc.s    V_6
      IL_0132:  ldc.i4.0
      IL_0133:  ldelem.ref
      IL_0134:  callvirt   instance class [System.Runtime]System.Type [System.Reflection]System.Reflection.ParameterInfo::get_ParameterType()
      IL_0139:  ldtoken    Game.Widget
      IL_013e:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
      IL_0143:  bne.un.s   IL_017d

      IL_0145:  ldloc.s    V_6
      IL_0147:  ldc.i4.1
      IL_0148:  ldelem.ref
      IL_0149:  callvirt   instance class [System.Runtime]System.Type [System.Reflection]System.Reflection.ParameterInfo::get_ParameterType()
      IL_014e:  ldloc.2
      IL_014f:  ldfld      class [System.Xml.XDocument]System.Xml.Linq.XAttribute Game.WidgetsManager/'<>c__DisplayClass22_1'::attribute
      IL_0154:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_Value()
      IL_0159:  call       object [Engine]Engine.Serialization.HumanReadableConverter::ConvertFromString(class [System.Runtime]System.Type,
                                                                                                         string)
      IL_015e:  stloc.s    V_7
      IL_0160:  ldloc.s    V_5
      IL_0162:  ldnull
      IL_0163:  ldc.i4.2
      IL_0164:  newarr     [System.Runtime]System.Object
      IL_0169:  dup
      IL_016a:  ldc.i4.0
      IL_016b:  ldarg.0
      IL_016c:  stelem.ref
      IL_016d:  dup
      IL_016e:  ldc.i4.1
      IL_016f:  ldloc.s    V_7
      IL_0171:  stelem.ref
      IL_0172:  callvirt   instance object [System.Reflection]System.Reflection.MethodBase::Invoke(object,
                                                                                                   object[])
      IL_0177:  pop
      IL_0178:  br         IL_0356

      IL_017d:  ldstr      "Attached property setter method must take 2 parame"
      + "ters and first one must be of type Widget, property \"{0}\" in widget of "
      + "type \"{1}\"."
      IL_0182:  ldc.i4.2
      IL_0183:  newarr     [System.Runtime]System.Object
      IL_0188:  dup
      IL_0189:  ldc.i4.0
      IL_018a:  ldloc.2
      IL_018b:  ldfld      class [System.Xml.XDocument]System.Xml.Linq.XAttribute Game.WidgetsManager/'<>c__DisplayClass22_1'::attribute
      IL_0190:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_Name()
      IL_0195:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XName::get_LocalName()
      IL_019a:  stelem.ref
      IL_019b:  dup
      IL_019c:  ldc.i4.1
      IL_019d:  ldarg.0
      IL_019e:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
      IL_01a3:  callvirt   instance string [System.Runtime]System.Type::get_FullName()
      IL_01a8:  stelem.ref
      IL_01a9:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_01ae:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
      IL_01b3:  throw

      IL_01b4:  ldstr      "Attached property public static setter method \"{0}"
      + "\" not found, property \"{1}\" in widget of type \"{2}\"."
      IL_01b9:  ldc.i4.3
      IL_01ba:  newarr     [System.Runtime]System.Object
      IL_01bf:  dup
      IL_01c0:  ldc.i4.0
      IL_01c1:  ldloc.s    V_4
      IL_01c3:  ldfld      string Game.WidgetsManager/'<>c__DisplayClass22_0'::setterName
      IL_01c8:  stelem.ref
      IL_01c9:  dup
      IL_01ca:  ldc.i4.1
      IL_01cb:  ldloc.2
      IL_01cc:  ldfld      class [System.Xml.XDocument]System.Xml.Linq.XAttribute Game.WidgetsManager/'<>c__DisplayClass22_1'::attribute
      IL_01d1:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_Name()
      IL_01d6:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XName::get_LocalName()
      IL_01db:  stelem.ref
      IL_01dc:  dup
      IL_01dd:  ldc.i4.2
      IL_01de:  ldarg.0
      IL_01df:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
      IL_01e4:  callvirt   instance string [System.Runtime]System.Type::get_FullName()
      IL_01e9:  stelem.ref
      IL_01ea:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_01ef:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
      IL_01f4:  throw

      IL_01f5:  ldstr      "Attached property reference must have form \"TypeNa"
      + "me.PropertyName\", property \"{0}\" in widget of type \"{1}\"."
      IL_01fa:  ldc.i4.2
      IL_01fb:  newarr     [System.Runtime]System.Object
      IL_0200:  dup
      IL_0201:  ldc.i4.0
      IL_0202:  ldloc.2
      IL_0203:  ldfld      class [System.Xml.XDocument]System.Xml.Linq.XAttribute Game.WidgetsManager/'<>c__DisplayClass22_1'::attribute
      IL_0208:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_Name()
      IL_020d:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XName::get_LocalName()
      IL_0212:  stelem.ref
      IL_0213:  dup
      IL_0214:  ldc.i4.1
      IL_0215:  ldarg.0
      IL_0216:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
      IL_021b:  callvirt   instance string [System.Runtime]System.Type::get_FullName()
      IL_0220:  stelem.ref
      IL_0221:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_0226:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
      IL_022b:  throw

      IL_022c:  ldloc.0
      IL_022d:  ldloc.2
      IL_022e:  ldftn      instance bool Game.WidgetsManager/'<>c__DisplayClass22_1'::'<LoadWidgetProperties>b__1'(class [System.Reflection]System.Reflection.PropertyInfo)
      IL_0234:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.PropertyInfo,bool>::.ctor(object,
                                                                                                                                                  native int)
      IL_0239:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Reflection]System.Reflection.PropertyInfo>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                   class [System.Runtime]System.Func`2<!!0,bool>)
      IL_023e:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class [System.Reflection]System.Reflection.PropertyInfo>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
      IL_0243:  stloc.s    V_8
      IL_0245:  ldloc.s    V_8
      IL_0247:  brfalse    IL_031f

      IL_024c:  ldloc.2
      IL_024d:  ldfld      class [System.Xml.XDocument]System.Xml.Linq.XAttribute Game.WidgetsManager/'<>c__DisplayClass22_1'::attribute
      IL_0252:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_Value()
      IL_0257:  ldstr      "{"
      IL_025c:  callvirt   instance bool [System.Runtime]System.String::StartsWith(string)
      IL_0261:  brfalse.s  IL_02bf

      IL_0263:  ldloc.2
      IL_0264:  ldfld      class [System.Xml.XDocument]System.Xml.Linq.XAttribute Game.WidgetsManager/'<>c__DisplayClass22_1'::attribute
      IL_0269:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_Value()
      IL_026e:  ldstr      "}"
      IL_0273:  callvirt   instance bool [System.Runtime]System.String::EndsWith(string)
      IL_0278:  brfalse.s  IL_02bf

      IL_027a:  ldloc.2
      IL_027b:  ldfld      class [System.Xml.XDocument]System.Xml.Linq.XAttribute Game.WidgetsManager/'<>c__DisplayClass22_1'::attribute
      IL_0280:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_Value()
      IL_0285:  ldc.i4.1
      IL_0286:  ldloc.2
      IL_0287:  ldfld      class [System.Xml.XDocument]System.Xml.Linq.XAttribute Game.WidgetsManager/'<>c__DisplayClass22_1'::attribute
      IL_028c:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_Value()
      IL_0291:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
      IL_0296:  ldc.i4.2
      IL_0297:  sub
      IL_0298:  callvirt   instance string [System.Runtime]System.String::Substring(int32,
                                                                                    int32)
      IL_029d:  stloc.s    V_9
      IL_029f:  ldloc.s    V_8
      IL_02a1:  callvirt   instance class [System.Runtime]System.Type [System.Reflection]System.Reflection.PropertyInfo::get_PropertyType()
      IL_02a6:  ldloc.s    V_9
      IL_02a8:  call       object Game.ContentManager::Get(class [System.Runtime]System.Type,
                                                           string)
      IL_02ad:  stloc.s    V_10
      IL_02af:  ldloc.s    V_8
      IL_02b1:  ldarg.0
      IL_02b2:  ldloc.s    V_10
      IL_02b4:  ldnull
      IL_02b5:  callvirt   instance void [System.Reflection]System.Reflection.PropertyInfo::SetValue(object,
                                                                                                     object,
                                                                                                     object[])
      IL_02ba:  br         IL_0356

      IL_02bf:  ldloc.s    V_8
      IL_02c1:  callvirt   instance class [System.Runtime]System.Type [System.Reflection]System.Reflection.PropertyInfo::get_PropertyType()
      IL_02c6:  ldloc.2
      IL_02c7:  ldfld      class [System.Xml.XDocument]System.Xml.Linq.XAttribute Game.WidgetsManager/'<>c__DisplayClass22_1'::attribute
      IL_02cc:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_Value()
      IL_02d1:  call       object [Engine]Engine.Serialization.HumanReadableConverter::ConvertFromString(class [System.Runtime]System.Type,
                                                                                                         string)
      IL_02d6:  stloc.s    V_11
      IL_02d8:  ldloc.s    V_8
      IL_02da:  callvirt   instance class [System.Runtime]System.Type [System.Reflection]System.Reflection.PropertyInfo::get_PropertyType()
      IL_02df:  ldtoken    [System.Runtime]System.String
      IL_02e4:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
      IL_02e9:  bne.un.s   IL_0312

      IL_02eb:  ldloc.s    V_11
      IL_02ed:  castclass  [System.Runtime]System.String
      IL_02f2:  ldstr      "\\n"
      IL_02f7:  ldstr      "\n"
      IL_02fc:  callvirt   instance string [System.Runtime]System.String::Replace(string,
                                                                                  string)
      IL_0301:  ldstr      "\\t"
      IL_0306:  ldstr      "\t"
      IL_030b:  callvirt   instance string [System.Runtime]System.String::Replace(string,
                                                                                  string)
      IL_0310:  stloc.s    V_11
      IL_0312:  ldloc.s    V_8
      IL_0314:  ldarg.0
      IL_0315:  ldloc.s    V_11
      IL_0317:  ldnull
      IL_0318:  callvirt   instance void [System.Reflection]System.Reflection.PropertyInfo::SetValue(object,
                                                                                                     object,
                                                                                                     object[])
      IL_031d:  br.s       IL_0356

      IL_031f:  ldstr      "Property \"{0}\" not found in widget of type \"{1}\"."
      IL_0324:  ldc.i4.2
      IL_0325:  newarr     [System.Runtime]System.Object
      IL_032a:  dup
      IL_032b:  ldc.i4.0
      IL_032c:  ldloc.2
      IL_032d:  ldfld      class [System.Xml.XDocument]System.Xml.Linq.XAttribute Game.WidgetsManager/'<>c__DisplayClass22_1'::attribute
      IL_0332:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_Name()
      IL_0337:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XName::get_LocalName()
      IL_033c:  stelem.ref
      IL_033d:  dup
      IL_033e:  ldc.i4.1
      IL_033f:  ldarg.0
      IL_0340:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
      IL_0345:  callvirt   instance string [System.Runtime]System.Type::get_FullName()
      IL_034a:  stelem.ref
      IL_034b:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_0350:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
      IL_0355:  throw

      IL_0356:  ldloc.1
      IL_0357:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_035c:  brtrue     IL_001d

      IL_0361:  leave.s    IL_036d

    }  // end .try
    finally
    {
      IL_0363:  ldloc.1
      IL_0364:  brfalse.s  IL_036c

      IL_0366:  ldloc.1
      IL_0367:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_036c:  endfinally
    }  // end handler
    IL_036d:  ret
  } // end of method WidgetsManager::LoadWidgetProperties

  .method public hidebysig static void  LoadWidgetChildren(class Game.Widget widget,
                                                           object eventsTarget,
                                                           class [System.Xml.XDocument]System.Xml.Linq.XElement node) cil managed
  {
    // 代码大小       164 (0xa4)
    .maxstack  5
    .locals init (class Game.ContainerWidget V_0,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> V_1,
             class [System.Xml.XDocument]System.Xml.Linq.XElement V_2,
             class Game.Widget V_3,
             string V_4)
    IL_0000:  ldarg.2
    IL_0001:  callvirt   instance bool [System.Xml.XDocument]System.Xml.Linq.XElement::get_HasElements()
    IL_0006:  brfalse    IL_00a3

    IL_000b:  ldarg.0
    IL_000c:  isinst     Game.ContainerWidget
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  brtrue.s   IL_0039

    IL_0015:  ldstr      "Type \"{0}\" is not a ContainerWidget, but it contai"
    + "ns child widgets."
    IL_001a:  ldc.i4.1
    IL_001b:  newarr     [System.Runtime]System.Object
    IL_0020:  dup
    IL_0021:  ldc.i4.0
    IL_0022:  ldarg.2
    IL_0023:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XElement::get_Name()
    IL_0028:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XName::get_LocalName()
    IL_002d:  stelem.ref
    IL_002e:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0033:  newobj     instance void [System.Runtime]System.Exception::.ctor(string)
    IL_0038:  throw

    IL_0039:  ldarg.2
    IL_003a:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement> [System.Xml.XDocument]System.Xml.Linq.XContainer::Elements()
    IL_003f:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::GetEnumerator()
    IL_0044:  stloc.1
    .try
    {
      IL_0045:  br.s       IL_008f

      IL_0047:  ldloc.1
      IL_0048:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XElement>::get_Current()
      IL_004d:  stloc.2
      IL_004e:  ldloc.2
      IL_004f:  call       bool Game.WidgetsManager::IsNodeIncludedOnCurrentPlatform(class [System.Xml.XDocument]System.Xml.Linq.XElement)
      IL_0054:  brfalse.s  IL_008f

      IL_0056:  ldnull
      IL_0057:  stloc.3
      IL_0058:  ldloc.2
      IL_0059:  ldstr      "Name"
      IL_005e:  ldnull
      IL_005f:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                              string,
                                                                                              !!0)
      IL_0064:  stloc.s    V_4
      IL_0066:  ldloc.s    V_4
      IL_0068:  brfalse.s  IL_0079

      IL_006a:  ldloc.0
      IL_006b:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
      IL_0070:  ldloc.s    V_4
      IL_0072:  ldc.i4.0
      IL_0073:  callvirt   instance class Game.Widget Game.WidgetsContainer::Find(string,
                                                                                  bool)
      IL_0078:  stloc.3
      IL_0079:  ldloc.3
      IL_007a:  brfalse.s  IL_0086

      IL_007c:  ldloc.3
      IL_007d:  ldarg.1
      IL_007e:  ldloc.2
      IL_007f:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                        object,
                                                                        class [System.Xml.XDocument]System.Xml.Linq.XElement)
      IL_0084:  br.s       IL_008f

      IL_0086:  ldarg.1
      IL_0087:  ldloc.2
      IL_0088:  ldloc.0
      IL_0089:  call       class Game.Widget Game.WidgetsManager::LoadWidget(object,
                                                                             class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                             class Game.ContainerWidget)
      IL_008e:  pop
      IL_008f:  ldloc.1
      IL_0090:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0095:  brtrue.s   IL_0047

      IL_0097:  leave.s    IL_00a3

    }  // end .try
    finally
    {
      IL_0099:  ldloc.1
      IL_009a:  brfalse.s  IL_00a2

      IL_009c:  ldloc.1
      IL_009d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00a2:  endfinally
    }  // end handler
    IL_00a3:  ret
  } // end of method WidgetsManager::LoadWidgetChildren

  .method public hidebysig static bool  IsWidgetEnabled(class Game.Widget widget) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.Widget::get_IsEnabled()
    IL_0006:  brfalse.s  IL_001e

    IL_0008:  ldarg.0
    IL_0009:  callvirt   instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_000e:  brfalse.s  IL_001c

    IL_0010:  ldarg.0
    IL_0011:  callvirt   instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_0016:  call       bool Game.WidgetsManager::IsWidgetEnabled(class Game.Widget)
    IL_001b:  ret

    IL_001c:  ldc.i4.1
    IL_001d:  ret

    IL_001e:  ldc.i4.0
    IL_001f:  ret
  } // end of method WidgetsManager::IsWidgetEnabled

  .method public hidebysig static bool  IsWidgetVisible(class Game.Widget widget) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.Widget::get_IsVisible()
    IL_0006:  brfalse.s  IL_001e

    IL_0008:  ldarg.0
    IL_0009:  callvirt   instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_000e:  brfalse.s  IL_001c

    IL_0010:  ldarg.0
    IL_0011:  callvirt   instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_0016:  call       bool Game.WidgetsManager::IsWidgetVisible(class Game.Widget)
    IL_001b:  ret

    IL_001c:  ldc.i4.1
    IL_001d:  ret

    IL_001e:  ldc.i4.0
    IL_001f:  ret
  } // end of method WidgetsManager::IsWidgetVisible

  .method public hidebysig static bool  IsNodeIncludedOnCurrentPlatform(class [System.Xml.XDocument]System.Xml.Linq.XElement node) cil managed
  {
    // 代码大小       132 (0x84)
    .maxstack  5
    .locals init (string V_0,
             string V_1,
             valuetype Game.Platform V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldstr      "_IncludePlatforms"
    IL_0006:  ldnull
    IL_0007:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                            string,
                                                                                            !!0)
    IL_000c:  stloc.0
    IL_000d:  ldarg.0
    IL_000e:  ldstr      "_ExcludePlatforms"
    IL_0013:  ldnull
    IL_0014:  call       !!0 [EntitySystem]XmlUtilities.XmlUtils::GetAttributeValue<string>(class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                            string,
                                                                                            !!0)
    IL_0019:  stloc.1
    IL_001a:  ldloc.0
    IL_001b:  brfalse.s  IL_004d

    IL_001d:  ldloc.1
    IL_001e:  brtrue.s   IL_004d

    IL_0020:  ldloc.0
    IL_0021:  ldc.i4.1
    IL_0022:  newarr     [System.Runtime]System.Char
    IL_0027:  dup
    IL_0028:  ldc.i4.0
    IL_0029:  ldc.i4.s   32
    IL_002b:  stelem.i2
    IL_002c:  callvirt   instance string[] [System.Runtime]System.String::Split(char[])
    IL_0031:  call       valuetype Game.Platform Game.VersionsManager::get_Platform()
    IL_0036:  stloc.2
    IL_0037:  ldloca.s   V_2
    IL_0039:  constrained. Game.Platform
    IL_003f:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0044:  call       bool [System.Linq]System.Linq.Enumerable::Contains<string>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                    !!0)
    IL_0049:  brfalse.s  IL_0082

    IL_004b:  ldc.i4.1
    IL_004c:  ret

    IL_004d:  ldloc.1
    IL_004e:  brfalse.s  IL_0080

    IL_0050:  ldloc.0
    IL_0051:  brtrue.s   IL_0080

    IL_0053:  ldloc.1
    IL_0054:  ldc.i4.1
    IL_0055:  newarr     [System.Runtime]System.Char
    IL_005a:  dup
    IL_005b:  ldc.i4.0
    IL_005c:  ldc.i4.s   32
    IL_005e:  stelem.i2
    IL_005f:  callvirt   instance string[] [System.Runtime]System.String::Split(char[])
    IL_0064:  call       valuetype Game.Platform Game.VersionsManager::get_Platform()
    IL_0069:  stloc.2
    IL_006a:  ldloca.s   V_2
    IL_006c:  constrained. Game.Platform
    IL_0072:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0077:  call       bool [System.Linq]System.Linq.Enumerable::Contains<string>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                    !!0)
    IL_007c:  brtrue.s   IL_0082

    IL_007e:  ldc.i4.1
    IL_007f:  ret

    IL_0080:  ldc.i4.1
    IL_0081:  ret

    IL_0082:  ldc.i4.0
    IL_0083:  ret
  } // end of method WidgetsManager::IsNodeIncludedOnCurrentPlatform

  .method private hidebysig static void  UpdateWidgetsHierarchy(class Game.Widget widget) cil managed
  {
    // 代码大小       71 (0x47)
    .maxstack  2
    .locals init (class Game.ContainerWidget V_0,
             class Game.WidgetsContainer V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.Widget::get_IsVisible()
    IL_0006:  brfalse.s  IL_0046

    IL_0008:  ldarg.0
    IL_0009:  callvirt   instance bool Game.Widget::get_IsEnabled()
    IL_000e:  brfalse.s  IL_0046

    IL_0010:  ldarg.0
    IL_0011:  isinst     Game.ContainerWidget
    IL_0016:  stloc.0
    IL_0017:  ldloc.0
    IL_0018:  brfalse.s  IL_0040

    IL_001a:  ldloc.0
    IL_001b:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0020:  stloc.1
    IL_0021:  ldloc.1
    IL_0022:  callvirt   instance int32 Game.WidgetsContainer::get_Count()
    IL_0027:  ldc.i4.1
    IL_0028:  sub
    IL_0029:  stloc.2
    IL_002a:  br.s       IL_003c

    IL_002c:  ldloc.1
    IL_002d:  ldloc.2
    IL_002e:  callvirt   instance class Game.Widget Game.WidgetsContainer::get_Item(int32)
    IL_0033:  call       void Game.WidgetsManager::UpdateWidgetsHierarchy(class Game.Widget)
    IL_0038:  ldloc.2
    IL_0039:  ldc.i4.1
    IL_003a:  sub
    IL_003b:  stloc.2
    IL_003c:  ldloc.2
    IL_003d:  ldc.i4.0
    IL_003e:  bge.s      IL_002c

    IL_0040:  ldarg.0
    IL_0041:  callvirt   instance void Game.Widget::Update()
    IL_0046:  ret
  } // end of method WidgetsManager::UpdateWidgetsHierarchy

  .method private hidebysig static void  CollateDrawItems(class Game.Widget widget,
                                                          class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem> list,
                                                          valuetype [Engine]Engine.Rectangle scissorRectangle) cil managed
  {
    // 代码大小       553 (0x229)
    .maxstack  6
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Rectangle> V_0,
             class Game.ContainerWidget V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             class Game.WidgetsManager/DrawItem V_6,
             class Game.WidgetsManager/DrawItem V_7,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> V_8,
             class Game.WidgetsManager/DrawItem V_9)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.Widget::get_IsVisible()
    IL_0006:  brfalse    IL_0228

    IL_000b:  ldloca.s   V_0
    IL_000d:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Rectangle>
    IL_0013:  ldarg.0
    IL_0014:  callvirt   instance bool Game.Widget::get_ClampToBounds()
    IL_0019:  brfalse    IL_01ab

    IL_001e:  ldloca.s   V_0
    IL_0020:  ldarg.2
    IL_0021:  call       instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Rectangle>::.ctor(!0)
    IL_0026:  ldarg.0
    IL_0027:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_002c:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0031:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0036:  mul
    IL_0037:  ldc.r4     0.5
    IL_003c:  sub
    IL_003d:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0042:  conv.i4
    IL_0043:  stloc.2
    IL_0044:  ldarg.0
    IL_0045:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_004a:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_004f:  call       float32 Game.WidgetsManager::get_Scale()
    IL_0054:  mul
    IL_0055:  ldc.r4     0.5
    IL_005a:  sub
    IL_005b:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0060:  conv.i4
    IL_0061:  stloc.3
    IL_0062:  ldarg.0
    IL_0063:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0068:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_006d:  ldarg.0
    IL_006e:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0073:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0078:  add
    IL_0079:  call       float32 Game.WidgetsManager::get_Scale()
    IL_007e:  mul
    IL_007f:  ldc.r4     0.5
    IL_0084:  sub
    IL_0085:  call       float32 [Engine]Engine.MathUtils::Ceiling(float32)
    IL_008a:  conv.i4
    IL_008b:  stloc.s    V_4
    IL_008d:  ldarg.0
    IL_008e:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0093:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0098:  ldarg.0
    IL_0099:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_009e:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00a3:  add
    IL_00a4:  call       float32 Game.WidgetsManager::get_Scale()
    IL_00a9:  mul
    IL_00aa:  ldc.r4     0.5
    IL_00af:  sub
    IL_00b0:  call       float32 [Engine]Engine.MathUtils::Ceiling(float32)
    IL_00b5:  conv.i4
    IL_00b6:  stloc.s    V_5
    IL_00b8:  ldarga.s   scissorRectangle
    IL_00ba:  ldloc.2
    IL_00bb:  ldloc.3
    IL_00bc:  ldloc.s    V_4
    IL_00be:  ldloc.2
    IL_00bf:  sub
    IL_00c0:  ldloc.s    V_5
    IL_00c2:  ldloc.3
    IL_00c3:  sub
    IL_00c4:  call       instance void [Engine]Engine.Rectangle::.ctor(int32,
                                                                       int32,
                                                                       int32,
                                                                       int32)
    IL_00c9:  ldarga.s   scissorRectangle
    IL_00cb:  ldarg.2
    IL_00cc:  ldfld      int32 [Engine]Engine.Rectangle::Left
    IL_00d1:  ldloca.s   V_0
    IL_00d3:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Rectangle>::get_Value()
    IL_00d8:  ldfld      int32 [Engine]Engine.Rectangle::Left
    IL_00dd:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00e2:  stfld      int32 [Engine]Engine.Rectangle::Left
    IL_00e7:  ldarga.s   scissorRectangle
    IL_00e9:  ldarg.2
    IL_00ea:  ldfld      int32 [Engine]Engine.Rectangle::Top
    IL_00ef:  ldloca.s   V_0
    IL_00f1:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Rectangle>::get_Value()
    IL_00f6:  ldfld      int32 [Engine]Engine.Rectangle::Top
    IL_00fb:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0100:  stfld      int32 [Engine]Engine.Rectangle::Top
    IL_0105:  ldarga.s   scissorRectangle
    IL_0107:  ldarg.2
    IL_0108:  ldfld      int32 [Engine]Engine.Rectangle::Width
    IL_010d:  ldloca.s   V_0
    IL_010f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Rectangle>::get_Value()
    IL_0114:  ldfld      int32 [Engine]Engine.Rectangle::Left
    IL_0119:  ldloca.s   V_0
    IL_011b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Rectangle>::get_Value()
    IL_0120:  ldfld      int32 [Engine]Engine.Rectangle::Width
    IL_0125:  add
    IL_0126:  ldarg.2
    IL_0127:  ldfld      int32 [Engine]Engine.Rectangle::Left
    IL_012c:  sub
    IL_012d:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0132:  stfld      int32 [Engine]Engine.Rectangle::Width
    IL_0137:  ldarga.s   scissorRectangle
    IL_0139:  ldarg.2
    IL_013a:  ldfld      int32 [Engine]Engine.Rectangle::Height
    IL_013f:  ldloca.s   V_0
    IL_0141:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Rectangle>::get_Value()
    IL_0146:  ldfld      int32 [Engine]Engine.Rectangle::Top
    IL_014b:  ldloca.s   V_0
    IL_014d:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Rectangle>::get_Value()
    IL_0152:  ldfld      int32 [Engine]Engine.Rectangle::Height
    IL_0157:  add
    IL_0158:  ldarg.2
    IL_0159:  ldfld      int32 [Engine]Engine.Rectangle::Top
    IL_015e:  sub
    IL_015f:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0164:  stfld      int32 [Engine]Engine.Rectangle::Height
    IL_0169:  ldarga.s   scissorRectangle
    IL_016b:  ldarg.2
    IL_016c:  ldfld      int32 [Engine]Engine.Rectangle::Width
    IL_0171:  ldc.i4.0
    IL_0172:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0177:  stfld      int32 [Engine]Engine.Rectangle::Width
    IL_017c:  ldarga.s   scissorRectangle
    IL_017e:  ldarg.2
    IL_017f:  ldfld      int32 [Engine]Engine.Rectangle::Height
    IL_0184:  ldc.i4.0
    IL_0185:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_018a:  stfld      int32 [Engine]Engine.Rectangle::Height
    IL_018f:  call       class Game.WidgetsManager/DrawItem Game.WidgetsManager::GetDrawItemFromCache()
    IL_0194:  stloc.s    V_6
    IL_0196:  ldloc.s    V_6
    IL_0198:  ldarg.2
    IL_0199:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Rectangle>::.ctor(!0)
    IL_019e:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Rectangle> Game.WidgetsManager/DrawItem::ScissorRectangle
    IL_01a3:  ldarg.1
    IL_01a4:  ldloc.s    V_6
    IL_01a6:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem>::Add(!0)
    IL_01ab:  ldarg.0
    IL_01ac:  callvirt   instance bool Game.Widget::get_IsDrawRequired()
    IL_01b1:  brfalse.s  IL_01ca

    IL_01b3:  call       class Game.WidgetsManager/DrawItem Game.WidgetsManager::GetDrawItemFromCache()
    IL_01b8:  stloc.s    V_7
    IL_01ba:  ldloc.s    V_7
    IL_01bc:  ldarg.0
    IL_01bd:  stfld      class Game.Widget Game.WidgetsManager/DrawItem::Widget
    IL_01c2:  ldarg.1
    IL_01c3:  ldloc.s    V_7
    IL_01c5:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem>::Add(!0)
    IL_01ca:  ldarg.0
    IL_01cb:  isinst     Game.ContainerWidget
    IL_01d0:  stloc.1
    IL_01d1:  ldloc.1
    IL_01d2:  brfalse.s  IL_0208

    IL_01d4:  ldloc.1
    IL_01d5:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_01da:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget> Game.WidgetsContainer::GetEnumerator()
    IL_01df:  stloc.s    V_8
    .try
    {
      IL_01e1:  br.s       IL_01f1

      IL_01e3:  ldloc.s    V_8
      IL_01e5:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.Widget>::get_Current()
      IL_01ea:  ldarg.1
      IL_01eb:  ldarg.2
      IL_01ec:  call       void Game.WidgetsManager::CollateDrawItems(class Game.Widget,
                                                                      class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem>,
                                                                      valuetype [Engine]Engine.Rectangle)
      IL_01f1:  ldloc.s    V_8
      IL_01f3:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_01f8:  brtrue.s   IL_01e3

      IL_01fa:  leave.s    IL_0208

    }  // end .try
    finally
    {
      IL_01fc:  ldloc.s    V_8
      IL_01fe:  brfalse.s  IL_0207

      IL_0200:  ldloc.s    V_8
      IL_0202:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0207:  endfinally
    }  // end handler
    IL_0208:  ldloca.s   V_0
    IL_020a:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Rectangle>::get_HasValue()
    IL_020f:  brfalse.s  IL_0228

    IL_0211:  call       class Game.WidgetsManager/DrawItem Game.WidgetsManager::GetDrawItemFromCache()
    IL_0216:  stloc.s    V_9
    IL_0218:  ldloc.s    V_9
    IL_021a:  ldloc.0
    IL_021b:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Rectangle> Game.WidgetsManager/DrawItem::ScissorRectangle
    IL_0220:  ldarg.1
    IL_0221:  ldloc.s    V_9
    IL_0223:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem>::Add(!0)
    IL_0228:  ret
  } // end of method WidgetsManager::CollateDrawItems

  .method private hidebysig static void  DrawWidgetsHierarchy(class Game.Widget widget) cil managed
  {
    // 代码大小       463 (0x1cf)
    .maxstack  4
    .locals init (int32 V_0,
             class Game.WidgetsManager/DrawItem V_1,
             int32 V_2,
             class Game.WidgetsManager/DrawItem V_3,
             valuetype [Engine]Engine.Rectangle V_4,
             int32 V_5,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.WidgetsManager/DrawItem> V_6,
             class Game.WidgetsManager/DrawItem V_7)
    IL_0000:  call       void Game.WidgetsManager::ResetDrawItemsCache()
    IL_0005:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem> Game.WidgetsManager::m_drawItems
    IL_000a:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem>::Clear()
    IL_000f:  ldsfld     class Game.CanvasWidget Game.WidgetsManager::m_rootWidget
    IL_0014:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem> Game.WidgetsManager::m_drawItems
    IL_0019:  call       valuetype [Engine]Engine.Rectangle [Engine]Engine.Graphics.Display::get_ScissorRectangle()
    IL_001e:  call       void Game.WidgetsManager::CollateDrawItems(class Game.Widget,
                                                                    class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem>,
                                                                    valuetype [Engine]Engine.Rectangle)
    IL_0023:  ldc.i4.0
    IL_0024:  stloc.0
    IL_0025:  br         IL_00be

    IL_002a:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem> Game.WidgetsManager::m_drawItems
    IL_002f:  ldloc.0
    IL_0030:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem>::get_Item(int32)
    IL_0035:  stloc.1
    IL_0036:  ldloc.0
    IL_0037:  ldc.i4.1
    IL_0038:  add
    IL_0039:  stloc.2
    IL_003a:  br.s       IL_00ad

    IL_003c:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem> Game.WidgetsManager::m_drawItems
    IL_0041:  ldloc.2
    IL_0042:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem>::get_Item(int32)
    IL_0047:  stloc.3
    IL_0048:  ldloc.1
    IL_0049:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Rectangle> Game.WidgetsManager/DrawItem::ScissorRectangle
    IL_004e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Rectangle>::get_HasValue()
    IL_0053:  brtrue.s   IL_0062

    IL_0055:  ldloc.3
    IL_0056:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Rectangle> Game.WidgetsManager/DrawItem::ScissorRectangle
    IL_005b:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Rectangle>::get_HasValue()
    IL_0060:  brfalse.s  IL_007d

    IL_0062:  ldloc.3
    IL_0063:  ldloc.3
    IL_0064:  ldfld      int32 Game.WidgetsManager/DrawItem::Layer
    IL_0069:  ldloc.1
    IL_006a:  ldfld      int32 Game.WidgetsManager/DrawItem::Layer
    IL_006f:  ldc.i4.1
    IL_0070:  add
    IL_0071:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0076:  stfld      int32 Game.WidgetsManager/DrawItem::Layer
    IL_007b:  br.s       IL_00a9

    IL_007d:  ldloc.1
    IL_007e:  ldfld      class Game.Widget Game.WidgetsManager/DrawItem::Widget
    IL_0083:  ldloc.3
    IL_0084:  ldfld      class Game.Widget Game.WidgetsManager/DrawItem::Widget
    IL_0089:  call       bool Game.WidgetsManager::TestWidgetOverlap(class Game.Widget,
                                                                     class Game.Widget)
    IL_008e:  brfalse.s  IL_00a9

    IL_0090:  ldloc.3
    IL_0091:  ldloc.3
    IL_0092:  ldfld      int32 Game.WidgetsManager/DrawItem::Layer
    IL_0097:  ldloc.1
    IL_0098:  ldfld      int32 Game.WidgetsManager/DrawItem::Layer
    IL_009d:  ldc.i4.1
    IL_009e:  add
    IL_009f:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00a4:  stfld      int32 Game.WidgetsManager/DrawItem::Layer
    IL_00a9:  ldloc.2
    IL_00aa:  ldc.i4.1
    IL_00ab:  add
    IL_00ac:  stloc.2
    IL_00ad:  ldloc.2
    IL_00ae:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem> Game.WidgetsManager::m_drawItems
    IL_00b3:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem>::get_Count()
    IL_00b8:  blt.s      IL_003c

    IL_00ba:  ldloc.0
    IL_00bb:  ldc.i4.1
    IL_00bc:  add
    IL_00bd:  stloc.0
    IL_00be:  ldloc.0
    IL_00bf:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem> Game.WidgetsManager::m_drawItems
    IL_00c4:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem>::get_Count()
    IL_00c9:  blt        IL_002a

    IL_00ce:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem> Game.WidgetsManager::m_drawItems
    IL_00d3:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem>::Sort()
    IL_00d8:  call       valuetype [Engine]Engine.Rectangle [Engine]Engine.Graphics.Display::get_ScissorRectangle()
    IL_00dd:  stloc.s    V_4
    IL_00df:  ldc.i4.0
    IL_00e0:  stloc.s    V_5
    IL_00e2:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem> Game.WidgetsManager::m_drawItems
    IL_00e7:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem>::GetEnumerator()
    IL_00ec:  stloc.s    V_6
    .try
    {
      IL_00ee:  br         IL_0190

      IL_00f3:  ldloca.s   V_6
      IL_00f5:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.WidgetsManager/DrawItem>::get_Current()
      IL_00fa:  stloc.s    V_7
      IL_00fc:  ldsfld     int32 Game.WidgetsManager::LayersLimit
      IL_0101:  ldc.i4.0
      IL_0102:  blt.s      IL_0117

      IL_0104:  ldloc.s    V_7
      IL_0106:  ldfld      int32 Game.WidgetsManager/DrawItem::Layer
      IL_010b:  ldsfld     int32 Game.WidgetsManager::LayersLimit
      IL_0110:  ble.s      IL_0117

      IL_0112:  leave      IL_01ac

      IL_0117:  ldloc.s    V_7
      IL_0119:  ldfld      int32 Game.WidgetsManager/DrawItem::Layer
      IL_011e:  ldloc.s    V_5
      IL_0120:  beq.s      IL_0146

      IL_0122:  ldloc.s    V_7
      IL_0124:  ldfld      int32 Game.WidgetsManager/DrawItem::Layer
      IL_0129:  stloc.s    V_5
      IL_012b:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.WidgetsManager::PrimitivesRenderer3D
      IL_0130:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
      IL_0135:  ldc.i4.1
      IL_0136:  callvirt   instance void class [Engine]Engine.Graphics.BasePrimitivesRenderer`3<class [Engine]Engine.Graphics.FlatBatch3D,class [Engine]Engine.Graphics.TexturedBatch3D,class [Engine]Engine.Graphics.FontBatch3D>::Flush(valuetype [Engine]Engine.Matrix,
                                                                                                                                                                                                                                          bool)
      IL_013b:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
      IL_0140:  ldc.i4.1
      IL_0141:  callvirt   instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::Flush(bool)
      IL_0146:  ldloc.s    V_7
      IL_0148:  ldfld      class Game.Widget Game.WidgetsManager/DrawItem::Widget
      IL_014d:  brfalse.s  IL_015d

      IL_014f:  ldloc.s    V_7
      IL_0151:  ldfld      class Game.Widget Game.WidgetsManager/DrawItem::Widget
      IL_0156:  callvirt   instance void Game.Widget::Draw()
      IL_015b:  br.s       IL_0190

      IL_015d:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.WidgetsManager::PrimitivesRenderer3D
      IL_0162:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
      IL_0167:  ldc.i4.1
      IL_0168:  callvirt   instance void class [Engine]Engine.Graphics.BasePrimitivesRenderer`3<class [Engine]Engine.Graphics.FlatBatch3D,class [Engine]Engine.Graphics.TexturedBatch3D,class [Engine]Engine.Graphics.FontBatch3D>::Flush(valuetype [Engine]Engine.Matrix,
                                                                                                                                                                                                                                          bool)
      IL_016d:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
      IL_0172:  ldc.i4.1
      IL_0173:  callvirt   instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::Flush(bool)
      IL_0178:  ldloc.s    V_4
      IL_017a:  ldloc.s    V_7
      IL_017c:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Rectangle> Game.WidgetsManager/DrawItem::ScissorRectangle
      IL_0181:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Rectangle>::get_Value()
      IL_0186:  call       valuetype [Engine]Engine.Rectangle [Engine]Engine.Rectangle::Intersection(valuetype [Engine]Engine.Rectangle,
                                                                                                     valuetype [Engine]Engine.Rectangle)
      IL_018b:  call       void [Engine]Engine.Graphics.Display::set_ScissorRectangle(valuetype [Engine]Engine.Rectangle)
      IL_0190:  ldloca.s   V_6
      IL_0192:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.WidgetsManager/DrawItem>::MoveNext()
      IL_0197:  brtrue     IL_00f3

      IL_019c:  leave.s    IL_01ac

    }  // end .try
    finally
    {
      IL_019e:  ldloca.s   V_6
      IL_01a0:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.WidgetsManager/DrawItem>
      IL_01a6:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01ab:  endfinally
    }  // end handler
    IL_01ac:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.WidgetsManager::PrimitivesRenderer3D
    IL_01b1:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_01b6:  ldc.i4.1
    IL_01b7:  callvirt   instance void class [Engine]Engine.Graphics.BasePrimitivesRenderer`3<class [Engine]Engine.Graphics.FlatBatch3D,class [Engine]Engine.Graphics.TexturedBatch3D,class [Engine]Engine.Graphics.FontBatch3D>::Flush(valuetype [Engine]Engine.Matrix,
                                                                                                                                                                                                                                        bool)
    IL_01bc:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
    IL_01c1:  ldc.i4.1
    IL_01c2:  callvirt   instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::Flush(bool)
    IL_01c7:  ldloc.s    V_4
    IL_01c9:  call       void [Engine]Engine.Graphics.Display::set_ScissorRectangle(valuetype [Engine]Engine.Rectangle)
    IL_01ce:  ret
  } // end of method WidgetsManager::DrawWidgetsHierarchy

  .method private hidebysig static class Game.Widget 
          HitTestWidgetsHierarchy(class Game.Widget widget,
                                  valuetype [Engine]Engine.Vector2 point,
                                  class [System.Runtime]System.Func`2<class Game.Widget,bool> predicate) cil managed
  {
    // 代码大小       114 (0x72)
    .maxstack  3
    .locals init (class Game.ContainerWidget V_0,
             class Game.WidgetsContainer V_1,
             int32 V_2,
             class Game.Widget V_3)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.Widget::get_IsVisible()
    IL_0006:  brfalse.s  IL_0070

    IL_0008:  ldarg.0
    IL_0009:  callvirt   instance bool Game.Widget::get_ClampToBounds()
    IL_000e:  brfalse.s  IL_0019

    IL_0010:  ldarg.0
    IL_0011:  ldarg.1
    IL_0012:  callvirt   instance bool Game.Widget::HitTest(valuetype [Engine]Engine.Vector2)
    IL_0017:  brfalse.s  IL_0070

    IL_0019:  ldarg.0
    IL_001a:  isinst     Game.ContainerWidget
    IL_001f:  stloc.0
    IL_0020:  ldloc.0
    IL_0021:  brfalse.s  IL_0051

    IL_0023:  ldloc.0
    IL_0024:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0029:  stloc.1
    IL_002a:  ldloc.1
    IL_002b:  callvirt   instance int32 Game.WidgetsContainer::get_Count()
    IL_0030:  ldc.i4.1
    IL_0031:  sub
    IL_0032:  stloc.2
    IL_0033:  br.s       IL_004d

    IL_0035:  ldloc.1
    IL_0036:  ldloc.2
    IL_0037:  callvirt   instance class Game.Widget Game.WidgetsContainer::get_Item(int32)
    IL_003c:  ldarg.1
    IL_003d:  ldarg.2
    IL_003e:  call       class Game.Widget Game.WidgetsManager::HitTestWidgetsHierarchy(class Game.Widget,
                                                                                        valuetype [Engine]Engine.Vector2,
                                                                                        class [System.Runtime]System.Func`2<class Game.Widget,bool>)
    IL_0043:  stloc.3
    IL_0044:  ldloc.3
    IL_0045:  brfalse.s  IL_0049

    IL_0047:  ldloc.3
    IL_0048:  ret

    IL_0049:  ldloc.2
    IL_004a:  ldc.i4.1
    IL_004b:  sub
    IL_004c:  stloc.2
    IL_004d:  ldloc.2
    IL_004e:  ldc.i4.0
    IL_004f:  bge.s      IL_0035

    IL_0051:  ldarg.0
    IL_0052:  callvirt   instance bool Game.Widget::get_IsHitTestVisible()
    IL_0057:  brfalse.s  IL_0070

    IL_0059:  ldarg.0
    IL_005a:  ldarg.1
    IL_005b:  callvirt   instance bool Game.Widget::HitTest(valuetype [Engine]Engine.Vector2)
    IL_0060:  brfalse.s  IL_0070

    IL_0062:  ldarg.2
    IL_0063:  brfalse.s  IL_006e

    IL_0065:  ldarg.2
    IL_0066:  ldarg.0
    IL_0067:  callvirt   instance !1 class [System.Runtime]System.Func`2<class Game.Widget,bool>::Invoke(!0)
    IL_006c:  brfalse.s  IL_0070

    IL_006e:  ldarg.0
    IL_006f:  ret

    IL_0070:  ldnull
    IL_0071:  ret
  } // end of method WidgetsManager::HitTestWidgetsHierarchy

  .method private hidebysig static bool  TestWidgetOverlap(class Game.Widget widget1,
                                                           class Game.Widget widget2) cil managed
  {
    // 代码大小       178 (0xb2)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0006:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_000b:  ldarg.1
    IL_000c:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0011:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0016:  ldarg.1
    IL_0017:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_001c:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0021:  add
    IL_0022:  ldc.r4     1.e-003
    IL_0027:  sub
    IL_0028:  blt.un.s   IL_002c

    IL_002a:  ldc.i4.0
    IL_002b:  ret

    IL_002c:  ldarg.0
    IL_002d:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0032:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0037:  ldarg.1
    IL_0038:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_003d:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0042:  ldarg.1
    IL_0043:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0048:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_004d:  add
    IL_004e:  ldc.r4     1.e-003
    IL_0053:  sub
    IL_0054:  blt.un.s   IL_0058

    IL_0056:  ldc.i4.0
    IL_0057:  ret

    IL_0058:  ldarg.1
    IL_0059:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_005e:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0063:  ldarg.0
    IL_0064:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0069:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_006e:  ldarg.0
    IL_006f:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0074:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0079:  add
    IL_007a:  ldc.r4     1.e-003
    IL_007f:  sub
    IL_0080:  blt.un.s   IL_0084

    IL_0082:  ldc.i4.0
    IL_0083:  ret

    IL_0084:  ldarg.1
    IL_0085:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_008a:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_008f:  ldarg.0
    IL_0090:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_Position()
    IL_0095:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_009a:  ldarg.0
    IL_009b:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_00a0:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00a5:  add
    IL_00a6:  ldc.r4     1.e-003
    IL_00ab:  sub
    IL_00ac:  blt.un.s   IL_00b0

    IL_00ae:  ldc.i4.0
    IL_00af:  ret

    IL_00b0:  ldc.i4.1
    IL_00b1:  ret
  } // end of method WidgetsManager::TestWidgetOverlap

  .method private hidebysig static class Game.WidgetsManager/DrawItem 
          GetDrawItemFromCache() cil managed
  {
    // 代码大小       84 (0x54)
    .maxstack  4
    IL_0000:  br.s       IL_0011

    IL_0002:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem> Game.WidgetsManager::m_drawItemsCache
    IL_0007:  newobj     instance void Game.WidgetsManager/DrawItem::.ctor()
    IL_000c:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem>::Add(!0)
    IL_0011:  ldsfld     int32 Game.WidgetsManager::m_drawItemsCacheIndex
    IL_0016:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem> Game.WidgetsManager::m_drawItemsCache
    IL_001b:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem>::get_Count()
    IL_0020:  bge.s      IL_0002

    IL_0022:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem> Game.WidgetsManager::m_drawItemsCache
    IL_0027:  ldsfld     int32 Game.WidgetsManager::m_drawItemsCacheIndex
    IL_002c:  dup
    IL_002d:  ldc.i4.1
    IL_002e:  add
    IL_002f:  stsfld     int32 Game.WidgetsManager::m_drawItemsCacheIndex
    IL_0034:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem>::get_Item(int32)
    IL_0039:  dup
    IL_003a:  ldc.i4.0
    IL_003b:  stfld      int32 Game.WidgetsManager/DrawItem::Layer
    IL_0040:  dup
    IL_0041:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Rectangle> Game.WidgetsManager/DrawItem::ScissorRectangle
    IL_0046:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Rectangle>
    IL_004c:  dup
    IL_004d:  ldnull
    IL_004e:  stfld      class Game.Widget Game.WidgetsManager/DrawItem::Widget
    IL_0053:  ret
  } // end of method WidgetsManager::GetDrawItemFromCache

  .method private hidebysig static void  ResetDrawItemsCache() cil managed
  {
    // 代码大小       58 (0x3a)
    .maxstack  2
    .locals init (valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.WidgetsManager/DrawItem> V_0)
    IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem> Game.WidgetsManager::m_drawItemsCache
    IL_0005:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem>::GetEnumerator()
    IL_000a:  stloc.0
    .try
    {
      IL_000b:  br.s       IL_001a

      IL_000d:  ldloca.s   V_0
      IL_000f:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.WidgetsManager/DrawItem>::get_Current()
      IL_0014:  ldnull
      IL_0015:  stfld      class Game.Widget Game.WidgetsManager/DrawItem::Widget
      IL_001a:  ldloca.s   V_0
      IL_001c:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.WidgetsManager/DrawItem>::MoveNext()
      IL_0021:  brtrue.s   IL_000d

      IL_0023:  leave.s    IL_0033

    }  // end .try
    finally
    {
      IL_0025:  ldloca.s   V_0
      IL_0027:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.WidgetsManager/DrawItem>
      IL_002d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0032:  endfinally
    }  // end handler
    IL_0033:  ldc.i4.0
    IL_0034:  stsfld     int32 Game.WidgetsManager::m_drawItemsCacheIndex
    IL_0039:  ret
  } // end of method WidgetsManager::ResetDrawItemsCache

  .method private hidebysig static class [System.Runtime]System.Type 
          FindTypeFromXmlName(string name,
                              string namespaceName) cil managed
  {
    // 代码大小       80 (0x50)
    .maxstack  3
    .locals init (class [System.Runtime]System.Uri V_0)
    IL_0000:  ldarg.1
    IL_0001:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0006:  brtrue.s   IL_0045

    IL_0008:  ldarg.1
    IL_0009:  newobj     instance void [System.Runtime]System.Uri::.ctor(string)
    IL_000e:  stloc.0
    IL_000f:  ldloc.0
    IL_0010:  callvirt   instance string [System.Runtime]System.Uri::get_Scheme()
    IL_0015:  ldstr      "runtime-namespace"
    IL_001a:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_001f:  brfalse.s  IL_003a

    IL_0021:  ldloc.0
    IL_0022:  callvirt   instance string [System.Runtime]System.Uri::get_AbsolutePath()
    IL_0027:  ldstr      "."
    IL_002c:  ldarg.0
    IL_002d:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_0032:  ldc.i4.0
    IL_0033:  ldc.i4.1
    IL_0034:  call       class [System.Runtime]System.Type [Engine]Engine.Serialization.TypeCache::FindType(string,
                                                                                                            bool,
                                                                                                            bool)
    IL_0039:  ret

    IL_003a:  ldstr      "Unknown uri scheme when loading widget. Scheme mus"
    + "t be runtime-namespace."
    IL_003f:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0044:  throw

    IL_0045:  ldstr      "Namespace must be specified when creating types in"
    + " XML."
    IL_004a:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_004f:  throw
  } // end of method WidgetsManager::FindTypeFromXmlName

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       89 (0x59)
    .maxstack  1
    IL_0000:  newobj     instance void Game.CanvasWidget::.ctor()
    IL_0005:  stsfld     class Game.CanvasWidget Game.WidgetsManager::m_rootWidget
    IL_000a:  ldc.r4     1.
    IL_000f:  stsfld     float32 Game.WidgetsManager::m_scale
    IL_0014:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem>::.ctor()
    IL_0019:  stsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem> Game.WidgetsManager::m_drawItems
    IL_001e:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem>::.ctor()
    IL_0023:  stsfld     class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem> Game.WidgetsManager::m_drawItemsCache
    IL_0028:  ldc.i4.m1
    IL_0029:  stsfld     int32 Game.WidgetsManager::LayersLimit
    IL_002e:  ldc.i4.1
    IL_002f:  stsfld     bool Game.WidgetsManager::DrawWidgets
    IL_0034:  ldc.i4.0
    IL_0035:  stsfld     bool Game.WidgetsManager::DrawWidgetBounds
    IL_003a:  ldc.r4     1.
    IL_003f:  stsfld     float32 Game.WidgetsManager::WidgetsDebugScale
    IL_0044:  newobj     instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::.ctor()
    IL_0049:  stsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
    IL_004e:  newobj     instance void [Engine]Engine.Graphics.PrimitivesRenderer3D::.ctor()
    IL_0053:  stsfld     class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.WidgetsManager::PrimitivesRenderer3D
    IL_0058:  ret
  } // end of method WidgetsManager::.cctor

  .property float32 Scale()
  {
    .get float32 Game.WidgetsManager::get_Scale()
  } // end of property WidgetsManager::Scale
  .property class Game.ContainerWidget RootWidget()
  {
    .get class Game.ContainerWidget Game.WidgetsManager::get_RootWidget()
  } // end of property WidgetsManager::RootWidget
} // end of class Game.WidgetsManager