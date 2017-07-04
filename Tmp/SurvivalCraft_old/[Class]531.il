.class public abstract auto ansi sealed Game.WidgetsManager
       extends [System.Runtime]System.Object
{
  .class auto ansi nested private beforefieldinit DrawItem
         extends [System.Runtime]System.Object
         implements class [System.Runtime]System.IComparable`1<class Game.WidgetsManager/DrawItem>
  {
    .field public int32 Layer
    .field public bool IsOverdraw
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

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass28_0'
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
    } // end of method '<>c__DisplayClass28_0'::.ctor

    .method assembly hidebysig instance bool 
            '<LoadWidgetProperties>b__0'(class [System.Reflection]System.Reflection.MethodInfo mi) cil managed
    {
      // 代码大小       36 (0x24)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance string [System.Reflection]System.Reflection.MemberInfo::get_Name()
      IL_0006:  ldarg.0
      IL_0007:  ldfld      string Game.WidgetsManager/'<>c__DisplayClass28_0'::setterName
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
    } // end of method '<>c__DisplayClass28_0'::'<LoadWidgetProperties>b__0'

  } // end of class '<>c__DisplayClass28_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass28_1'
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
    } // end of method '<>c__DisplayClass28_1'::.ctor

    .method assembly hidebysig instance bool 
            '<LoadWidgetProperties>b__1'(class [System.Reflection]System.Reflection.PropertyInfo pi) cil managed
    {
      // 代码大小       28 (0x1c)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance string [System.Reflection]System.Reflection.MemberInfo::get_Name()
      IL_0006:  ldarg.0
      IL_0007:  ldfld      class [System.Xml.XDocument]System.Xml.Linq.XAttribute Game.WidgetsManager/'<>c__DisplayClass28_1'::attribute
      IL_000c:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_Name()
      IL_0011:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XName::get_LocalName()
      IL_0016:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_001b:  ret
    } // end of method '<>c__DisplayClass28_1'::'<LoadWidgetProperties>b__1'

  } // end of class '<>c__DisplayClass28_1'

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
  .field public static class [Engine]Engine.Graphics.PrimitivesRenderer2D CursorPrimitivesRenderer2D
  .field private static bool '<IsUpdateEnabled>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
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

  .method public hidebysig specialname static 
          bool  get_IsUpdateEnabled() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     bool Game.WidgetsManager::'<IsUpdateEnabled>k__BackingField'
    IL_0005:  ret
  } // end of method WidgetsManager::get_IsUpdateEnabled

  .method public hidebysig specialname static 
          void  set_IsUpdateEnabled(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     bool Game.WidgetsManager::'<IsUpdateEnabled>k__BackingField'
    IL_0006:  ret
  } // end of method WidgetsManager::set_IsUpdateEnabled

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       132 (0x84)
    .maxstack  2
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
    IL_0058:  newobj     instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::.ctor()
    IL_005d:  stsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::CursorPrimitivesRenderer2D
    IL_0062:  ldc.i4.1
    IL_0063:  stsfld     bool Game.WidgetsManager::'<IsUpdateEnabled>k__BackingField'
    IL_0068:  newobj     instance void Game.CanvasWidget::.ctor()
    IL_006d:  stsfld     class Game.CanvasWidget Game.WidgetsManager::m_rootWidget
    IL_0072:  ldsfld     class Game.CanvasWidget Game.WidgetsManager::m_rootWidget
    IL_0077:  ldc.i4.s   127
    IL_0079:  newobj     instance void Game.WidgetInput::.ctor(valuetype Game.WidgetInputDevice)
    IL_007e:  callvirt   instance void Game.Widget::set_WidgetsHierarchyInput(class Game.WidgetInput)
    IL_0083:  ret
  } // end of method WidgetsManager::.cctor

  .method public hidebysig static void  Update() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  3
    .locals init (bool V_0)
    IL_0000:  call       bool Game.WidgetsManager::get_IsUpdateEnabled()
    IL_0005:  brfalse.s  IL_001c

    IL_0007:  ldc.i4.0
    IL_0008:  stloc.0
    IL_0009:  ldsfld     class Game.CanvasWidget Game.WidgetsManager::m_rootWidget
    IL_000e:  ldnull
    IL_000f:  ldloca.s   V_0
    IL_0011:  call       void Game.WidgetsManager::UpdateWidgetsHierarchy(class Game.Widget,
                                                                          class Game.WidgetInput,
                                                                          bool&)
    IL_0016:  ldloc.0
    IL_0017:  call       void [Engine]Engine.Input.Mouse::set_IsMouseVisible(bool)
    IL_001c:  ret
  } // end of method WidgetsManager::Update

  .method public hidebysig static void  Draw() cil managed
  {
    // 代码大小       427 (0x1ab)
    .maxstack  18
    .locals init (float32 V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             valuetype [Engine]Engine.Vector2 V_2,
             float32 V_3,
             valuetype Game.GuiSize V_4)
    IL_0000:  call       valuetype Game.GuiSize Game.SettingsManager::get_GuiSize()
    IL_0005:  stloc.s    V_4
    IL_0007:  ldloc.s    V_4
    IL_0009:  switch     ( 
                          IL_002c,
                          IL_0024,
                          IL_001c)
    IL_001a:  br.s       IL_0034

    IL_001c:  ldc.r4     800.
    IL_0021:  stloc.0
    IL_0022:  br.s       IL_003a

    IL_0024:  ldc.r4     920.
    IL_0029:  stloc.0
    IL_002a:  br.s       IL_003a

    IL_002c:  ldc.r4     1060.
    IL_0031:  stloc.0
    IL_0032:  br.s       IL_003a

    IL_0034:  ldc.r4     800.
    IL_0039:  stloc.0
    IL_003a:  ldloc.0
    IL_003b:  ldsfld     float32 Game.WidgetsManager::WidgetsDebugScale
    IL_0040:  div
    IL_0041:  stloc.0
    IL_0042:  ldloca.s   V_1
    IL_0044:  call       valuetype [Engine]Engine.Graphics.Viewport [Engine]Engine.Graphics.Display::get_Viewport()
    IL_0049:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Width
    IL_004e:  conv.r4
    IL_004f:  call       valuetype [Engine]Engine.Graphics.Viewport [Engine]Engine.Graphics.Display::get_Viewport()
    IL_0054:  ldfld      int32 [Engine]Engine.Graphics.Viewport::Height
    IL_0059:  conv.r4
    IL_005a:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_005f:  ldloc.1
    IL_0060:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0065:  ldloc.0
    IL_0066:  div
    IL_0067:  stsfld     float32 Game.WidgetsManager::m_scale
    IL_006c:  ldloca.s   V_2
    IL_006e:  ldloc.0
    IL_006f:  ldloc.0
    IL_0070:  ldloc.1
    IL_0071:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0076:  div
    IL_0077:  ldloc.1
    IL_0078:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_007d:  mul
    IL_007e:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0083:  ldloc.0
    IL_0084:  ldc.r4     9.
    IL_0089:  mul
    IL_008a:  ldc.r4     16.
    IL_008f:  div
    IL_0090:  stloc.3
    IL_0091:  ldloc.1
    IL_0092:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0097:  ldsfld     float32 Game.WidgetsManager::m_scale
    IL_009c:  div
    IL_009d:  ldloc.3
    IL_009e:  bge.un.s   IL_00c4

    IL_00a0:  ldloc.1
    IL_00a1:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00a6:  ldloc.3
    IL_00a7:  div
    IL_00a8:  stsfld     float32 Game.WidgetsManager::m_scale
    IL_00ad:  ldloca.s   V_2
    IL_00af:  ldloc.3
    IL_00b0:  ldloc.1
    IL_00b1:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00b6:  div
    IL_00b7:  ldloc.1
    IL_00b8:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00bd:  mul
    IL_00be:  ldloc.3
    IL_00bf:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00c4:  ldsfld     class Game.CanvasWidget Game.WidgetsManager::m_rootWidget
    IL_00c9:  call       float32 Game.WidgetsManager::get_Scale()
    IL_00ce:  call       float32 Game.WidgetsManager::get_Scale()
    IL_00d3:  ldc.r4     1.
    IL_00d8:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32,
                                                                                            float32,
                                                                                            float32)
    IL_00dd:  callvirt   instance void Game.Widget::set_LayoutTransform(valuetype [Engine]Engine.Matrix)
    IL_00e2:  call       bool Game.SettingsManager::get_UpsideDownLayout()
    IL_00e7:  brfalse.s  IL_0153

    IL_00e9:  ldsfld     class Game.CanvasWidget Game.WidgetsManager::m_rootWidget
    IL_00ee:  dup
    IL_00ef:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Widget::get_LayoutTransform()
    IL_00f4:  ldc.r4     -1.
    IL_00f9:  ldc.r4     0.0
    IL_00fe:  ldc.r4     0.0
    IL_0103:  ldc.r4     0.0
    IL_0108:  ldc.r4     0.0
    IL_010d:  ldc.r4     -1.
    IL_0112:  ldc.r4     0.0
    IL_0117:  ldc.r4     0.0
    IL_011c:  ldc.r4     0.0
    IL_0121:  ldc.r4     0.0
    IL_0126:  ldc.r4     1.
    IL_012b:  ldc.r4     0.0
    IL_0130:  ldc.r4     0.0
    IL_0135:  ldc.r4     0.0
    IL_013a:  ldc.r4     0.0
    IL_013f:  ldc.r4     1.
    IL_0144:  newobj     instance void [Engine]Engine.Matrix::.ctor(float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32,
                                                                    float32)
    IL_0149:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_014e:  callvirt   instance void Game.Widget::set_LayoutTransform(valuetype [Engine]Engine.Matrix)
    IL_0153:  ldsfld     class Game.CanvasWidget Game.WidgetsManager::m_rootWidget
    IL_0158:  ldloc.2
    IL_0159:  callvirt   instance void Game.Widget::Measure(valuetype [Engine]Engine.Vector2)
    IL_015e:  ldsfld     class Game.CanvasWidget Game.WidgetsManager::m_rootWidget
    IL_0163:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0168:  ldloc.2
    IL_0169:  callvirt   instance void Game.Widget::Arrange(valuetype [Engine]Engine.Vector2,
                                                            valuetype [Engine]Engine.Vector2)
    IL_016e:  ldsfld     bool Game.WidgetsManager::DrawWidgets
    IL_0173:  brfalse.s  IL_017f

    IL_0175:  ldsfld     class Game.CanvasWidget Game.WidgetsManager::m_rootWidget
    IL_017a:  call       void Game.WidgetsManager::DrawWidgetsHierarchy(class Game.Widget)
    IL_017f:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.WidgetsManager::PrimitivesRenderer3D
    IL_0184:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_0189:  ldc.i4.1
    IL_018a:  ldc.i4     0x7fffffff
    IL_018f:  callvirt   instance void class [Engine]Engine.Graphics.BasePrimitivesRenderer`3<class [Engine]Engine.Graphics.FlatBatch3D,class [Engine]Engine.Graphics.TexturedBatch3D,class [Engine]Engine.Graphics.FontBatch3D>::Flush(valuetype [Engine]Engine.Matrix,
                                                                                                                                                                                                                                        bool,
                                                                                                                                                                                                                                        int32)
    IL_0194:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
    IL_0199:  ldc.i4.1
    IL_019a:  callvirt   instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::Flush(bool)
    IL_019f:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::CursorPrimitivesRenderer2D
    IL_01a4:  ldc.i4.1
    IL_01a5:  callvirt   instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::Flush(bool)
    IL_01aa:  ret
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
    IL_0073:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0078:  ldloc.0
    IL_0079:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
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
             class Game.WidgetsManager/'<>c__DisplayClass28_1' V_2,
             string[] V_3,
             class Game.WidgetsManager/'<>c__DisplayClass28_0' V_4,
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

      IL_001d:  newobj     instance void Game.WidgetsManager/'<>c__DisplayClass28_1'::.ctor()
      IL_0022:  stloc.2
      IL_0023:  ldloc.2
      IL_0024:  ldloc.1
      IL_0025:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Xml.XDocument]System.Xml.Linq.XAttribute>::get_Current()
      IL_002a:  stfld      class [System.Xml.XDocument]System.Xml.Linq.XAttribute Game.WidgetsManager/'<>c__DisplayClass28_1'::attribute
      IL_002f:  ldloc.2
      IL_0030:  ldfld      class [System.Xml.XDocument]System.Xml.Linq.XAttribute Game.WidgetsManager/'<>c__DisplayClass28_1'::attribute
      IL_0035:  callvirt   instance bool [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_IsNamespaceDeclaration()
      IL_003a:  brtrue     IL_0356

      IL_003f:  ldloc.2
      IL_0040:  ldfld      class [System.Xml.XDocument]System.Xml.Linq.XAttribute Game.WidgetsManager/'<>c__DisplayClass28_1'::attribute
      IL_0045:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_Name()
      IL_004a:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XName::get_LocalName()
      IL_004f:  ldstr      "_"
      IL_0054:  callvirt   instance bool [System.Runtime]System.String::StartsWith(string)
      IL_0059:  brtrue     IL_0356

      IL_005e:  ldloc.2
      IL_005f:  ldfld      class [System.Xml.XDocument]System.Xml.Linq.XAttribute Game.WidgetsManager/'<>c__DisplayClass28_1'::attribute
      IL_0064:  callvirt   instance class [System.Xml.XDocument]System.Xml.Linq.XName [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_Name()
      IL_0069:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XName::get_LocalName()
      IL_006e:  ldc.i4.s   46
      IL_0070:  call       bool [System.Linq]System.Linq.Enumerable::Contains<char>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                    !!0)
      IL_0075:  brfalse    IL_022c

      IL_007a:  ldloc.2
      IL_007b:  ldfld      class [System.Xml.XDocument]System.Xml.Linq.XAttribute Game.WidgetsManager/'<>c__DisplayClass28_1'::attribute
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

      IL_00a4:  newobj     instance void Game.WidgetsManager/'<>c__DisplayClass28_0'::.ctor()
      IL_00a9:  stloc.s    V_4
      IL_00ab:  ldloc.3
      IL_00ac:  ldc.i4.0
      IL_00ad:  ldelem.ref
      IL_00ae:  ldloc.2
      IL_00af:  ldfld      class [System.Xml.XDocument]System.Xml.Linq.XAttribute Game.WidgetsManager/'<>c__DisplayClass28_1'::attribute
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
      IL_00d8:  ldfld      class [System.Xml.XDocument]System.Xml.Linq.XAttribute Game.WidgetsManager/'<>c__DisplayClass28_1'::attribute
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
      IL_00fb:  stfld      string Game.WidgetsManager/'<>c__DisplayClass28_0'::setterName
      IL_0100:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.MethodInfo> [System.Reflection.Extensions]System.Reflection.RuntimeReflectionExtensions::GetRuntimeMethods(class [System.Runtime]System.Type)
      IL_0105:  ldloc.s    V_4
      IL_0107:  ldftn      instance bool Game.WidgetsManager/'<>c__DisplayClass28_0'::'<LoadWidgetProperties>b__0'(class [System.Reflection]System.Reflection.MethodInfo)
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
      IL_014f:  ldfld      class [System.Xml.XDocument]System.Xml.Linq.XAttribute Game.WidgetsManager/'<>c__DisplayClass28_1'::attribute
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
      IL_018b:  ldfld      class [System.Xml.XDocument]System.Xml.Linq.XAttribute Game.WidgetsManager/'<>c__DisplayClass28_1'::attribute
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
      IL_01c3:  ldfld      string Game.WidgetsManager/'<>c__DisplayClass28_0'::setterName
      IL_01c8:  stelem.ref
      IL_01c9:  dup
      IL_01ca:  ldc.i4.1
      IL_01cb:  ldloc.2
      IL_01cc:  ldfld      class [System.Xml.XDocument]System.Xml.Linq.XAttribute Game.WidgetsManager/'<>c__DisplayClass28_1'::attribute
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
      IL_0203:  ldfld      class [System.Xml.XDocument]System.Xml.Linq.XAttribute Game.WidgetsManager/'<>c__DisplayClass28_1'::attribute
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
      IL_022e:  ldftn      instance bool Game.WidgetsManager/'<>c__DisplayClass28_1'::'<LoadWidgetProperties>b__1'(class [System.Reflection]System.Reflection.PropertyInfo)
      IL_0234:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.PropertyInfo,bool>::.ctor(object,
                                                                                                                                                  native int)
      IL_0239:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Reflection]System.Reflection.PropertyInfo>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                   class [System.Runtime]System.Func`2<!!0,bool>)
      IL_023e:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class [System.Reflection]System.Reflection.PropertyInfo>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
      IL_0243:  stloc.s    V_8
      IL_0245:  ldloc.s    V_8
      IL_0247:  brfalse    IL_031f

      IL_024c:  ldloc.2
      IL_024d:  ldfld      class [System.Xml.XDocument]System.Xml.Linq.XAttribute Game.WidgetsManager/'<>c__DisplayClass28_1'::attribute
      IL_0252:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_Value()
      IL_0257:  ldstr      "{"
      IL_025c:  callvirt   instance bool [System.Runtime]System.String::StartsWith(string)
      IL_0261:  brfalse.s  IL_02bf

      IL_0263:  ldloc.2
      IL_0264:  ldfld      class [System.Xml.XDocument]System.Xml.Linq.XAttribute Game.WidgetsManager/'<>c__DisplayClass28_1'::attribute
      IL_0269:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_Value()
      IL_026e:  ldstr      "}"
      IL_0273:  callvirt   instance bool [System.Runtime]System.String::EndsWith(string)
      IL_0278:  brfalse.s  IL_02bf

      IL_027a:  ldloc.2
      IL_027b:  ldfld      class [System.Xml.XDocument]System.Xml.Linq.XAttribute Game.WidgetsManager/'<>c__DisplayClass28_1'::attribute
      IL_0280:  callvirt   instance string [System.Xml.XDocument]System.Xml.Linq.XAttribute::get_Value()
      IL_0285:  ldc.i4.1
      IL_0286:  ldloc.2
      IL_0287:  ldfld      class [System.Xml.XDocument]System.Xml.Linq.XAttribute Game.WidgetsManager/'<>c__DisplayClass28_1'::attribute
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
      IL_02c7:  ldfld      class [System.Xml.XDocument]System.Xml.Linq.XAttribute Game.WidgetsManager/'<>c__DisplayClass28_1'::attribute
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
      IL_032d:  ldfld      class [System.Xml.XDocument]System.Xml.Linq.XAttribute Game.WidgetsManager/'<>c__DisplayClass28_1'::attribute
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
      IL_006b:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
      IL_0070:  ldloc.s    V_4
      IL_0072:  ldc.i4.0
      IL_0073:  callvirt   instance class Game.Widget Game.WidgetsList::Find(string,
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

  .method private hidebysig static void  UpdateWidgetsHierarchy(class Game.Widget widget,
                                                                class Game.WidgetInput input,
                                                                bool& isMouseCursorVisible) cil managed
  {
    // 代码大小       117 (0x75)
    .maxstack  3
    .locals init (class Game.ContainerWidget V_0,
             class Game.WidgetsList V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.Widget::get_IsVisible()
    IL_0006:  brfalse.s  IL_0074

    IL_0008:  ldarg.0
    IL_0009:  callvirt   instance bool Game.Widget::get_IsEnabled()
    IL_000e:  brfalse.s  IL_0074

    IL_0010:  ldarg.0
    IL_0011:  callvirt   instance class Game.WidgetInput Game.Widget::get_WidgetsHierarchyInput()
    IL_0016:  brfalse.s  IL_0033

    IL_0018:  ldarg.0
    IL_0019:  callvirt   instance class Game.WidgetInput Game.Widget::get_WidgetsHierarchyInput()
    IL_001e:  callvirt   instance void Game.WidgetInput::Update()
    IL_0023:  ldarg.2
    IL_0024:  ldarg.2
    IL_0025:  ldind.u1
    IL_0026:  ldarg.0
    IL_0027:  callvirt   instance class Game.WidgetInput Game.Widget::get_WidgetsHierarchyInput()
    IL_002c:  callvirt   instance bool Game.WidgetInput::get_IsMouseCursorVisible()
    IL_0031:  or
    IL_0032:  stind.i1
    IL_0033:  ldarg.0
    IL_0034:  isinst     Game.ContainerWidget
    IL_0039:  stloc.0
    IL_003a:  ldloc.0
    IL_003b:  brfalse.s  IL_006e

    IL_003d:  ldloc.0
    IL_003e:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0043:  stloc.1
    IL_0044:  ldloc.1
    IL_0045:  callvirt   instance int32 Game.WidgetsList::get_Count()
    IL_004a:  ldc.i4.1
    IL_004b:  sub
    IL_004c:  stloc.2
    IL_004d:  br.s       IL_006a

    IL_004f:  ldloc.2
    IL_0050:  ldloc.1
    IL_0051:  callvirt   instance int32 Game.WidgetsList::get_Count()
    IL_0056:  bge.s      IL_0066

    IL_0058:  ldloc.1
    IL_0059:  ldloc.2
    IL_005a:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
    IL_005f:  ldarg.1
    IL_0060:  ldarg.2
    IL_0061:  call       void Game.WidgetsManager::UpdateWidgetsHierarchy(class Game.Widget,
                                                                          class Game.WidgetInput,
                                                                          bool&)
    IL_0066:  ldloc.2
    IL_0067:  ldc.i4.1
    IL_0068:  sub
    IL_0069:  stloc.2
    IL_006a:  ldloc.2
    IL_006b:  ldc.i4.0
    IL_006c:  bge.s      IL_004f

    IL_006e:  ldarg.0
    IL_006f:  callvirt   instance void Game.Widget::Update()
    IL_0074:  ret
  } // end of method WidgetsManager::UpdateWidgetsHierarchy

  .method private hidebysig static void  CollateDrawItems(class Game.Widget widget,
                                                          class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem> list,
                                                          valuetype [Engine]Engine.Rectangle scissorRectangle) cil managed
  {
    // 代码大小       453 (0x1c5)
    .maxstack  5
    .locals init (bool V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Rectangle> V_1,
             valuetype [Engine]Engine.BoundingRectangle V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             class Game.WidgetsManager/DrawItem V_7,
             class Game.WidgetsManager/DrawItem V_8,
             class Game.ContainerWidget V_9,
             valuetype Game.WidgetsList/Enumerator V_10,
             class Game.WidgetsManager/DrawItem V_11,
             class Game.WidgetsManager/DrawItem V_12)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance bool Game.Widget::get_IsVisible()
    IL_0006:  brfalse    IL_01c4

    IL_000b:  ldarg.0
    IL_000c:  callvirt   instance valuetype [Engine]Engine.BoundingRectangle Game.Widget::get_GlobalBounds()
    IL_0011:  stloc.2
    IL_0012:  ldloca.s   V_2
    IL_0014:  ldarg.2
    IL_0015:  ldfld      int32 [Engine]Engine.Rectangle::Left
    IL_001a:  conv.r4
    IL_001b:  ldarg.2
    IL_001c:  ldfld      int32 [Engine]Engine.Rectangle::Top
    IL_0021:  conv.r4
    IL_0022:  ldarga.s   scissorRectangle
    IL_0024:  call       instance int32 [Engine]Engine.Rectangle::get_Right()
    IL_0029:  conv.r4
    IL_002a:  ldarga.s   scissorRectangle
    IL_002c:  call       instance int32 [Engine]Engine.Rectangle::get_Bottom()
    IL_0031:  conv.r4
    IL_0032:  newobj     instance void [Engine]Engine.BoundingRectangle::.ctor(float32,
                                                                               float32,
                                                                               float32,
                                                                               float32)
    IL_0037:  call       instance bool [Engine]Engine.BoundingRectangle::Intersection(valuetype [Engine]Engine.BoundingRectangle)
    IL_003c:  stloc.0
    IL_003d:  ldloca.s   V_1
    IL_003f:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Rectangle>
    IL_0045:  ldarg.0
    IL_0046:  callvirt   instance bool Game.Widget::get_ClampToBounds()
    IL_004b:  ldloc.0
    IL_004c:  and
    IL_004d:  brfalse    IL_010c

    IL_0052:  ldloca.s   V_1
    IL_0054:  ldarg.2
    IL_0055:  call       instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Rectangle>::.ctor(!0)
    IL_005a:  ldarg.0
    IL_005b:  callvirt   instance valuetype [Engine]Engine.BoundingRectangle Game.Widget::get_GlobalBounds()
    IL_0060:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.BoundingRectangle::Min
    IL_0065:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_006a:  ldc.r4     0.5
    IL_006f:  sub
    IL_0070:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0075:  conv.i4
    IL_0076:  stloc.3
    IL_0077:  ldarg.0
    IL_0078:  callvirt   instance valuetype [Engine]Engine.BoundingRectangle Game.Widget::get_GlobalBounds()
    IL_007d:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.BoundingRectangle::Min
    IL_0082:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0087:  ldc.r4     0.5
    IL_008c:  sub
    IL_008d:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0092:  conv.i4
    IL_0093:  stloc.s    V_4
    IL_0095:  ldarg.0
    IL_0096:  callvirt   instance valuetype [Engine]Engine.BoundingRectangle Game.Widget::get_GlobalBounds()
    IL_009b:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.BoundingRectangle::Max
    IL_00a0:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00a5:  ldc.r4     0.5
    IL_00aa:  sub
    IL_00ab:  call       float32 [Engine]Engine.MathUtils::Ceiling(float32)
    IL_00b0:  conv.i4
    IL_00b1:  stloc.s    V_5
    IL_00b3:  ldarg.0
    IL_00b4:  callvirt   instance valuetype [Engine]Engine.BoundingRectangle Game.Widget::get_GlobalBounds()
    IL_00b9:  ldfld      valuetype [Engine]Engine.Vector2 [Engine]Engine.BoundingRectangle::Max
    IL_00be:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00c3:  ldc.r4     0.5
    IL_00c8:  sub
    IL_00c9:  call       float32 [Engine]Engine.MathUtils::Ceiling(float32)
    IL_00ce:  conv.i4
    IL_00cf:  stloc.s    V_6
    IL_00d1:  ldloc.3
    IL_00d2:  ldloc.s    V_4
    IL_00d4:  ldloc.s    V_5
    IL_00d6:  ldloc.3
    IL_00d7:  sub
    IL_00d8:  ldloc.s    V_6
    IL_00da:  ldloc.s    V_4
    IL_00dc:  sub
    IL_00dd:  newobj     instance void [Engine]Engine.Rectangle::.ctor(int32,
                                                                       int32,
                                                                       int32,
                                                                       int32)
    IL_00e2:  ldloca.s   V_1
    IL_00e4:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Rectangle>::get_Value()
    IL_00e9:  call       valuetype [Engine]Engine.Rectangle [Engine]Engine.Rectangle::Intersection(valuetype [Engine]Engine.Rectangle,
                                                                                                   valuetype [Engine]Engine.Rectangle)
    IL_00ee:  starg.s    scissorRectangle
    IL_00f0:  call       class Game.WidgetsManager/DrawItem Game.WidgetsManager::GetDrawItemFromCache()
    IL_00f5:  stloc.s    V_7
    IL_00f7:  ldloc.s    V_7
    IL_00f9:  ldarg.2
    IL_00fa:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Rectangle>::.ctor(!0)
    IL_00ff:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Rectangle> Game.WidgetsManager/DrawItem::ScissorRectangle
    IL_0104:  ldarg.1
    IL_0105:  ldloc.s    V_7
    IL_0107:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem>::Add(!0)
    IL_010c:  ldarg.0
    IL_010d:  callvirt   instance bool Game.Widget::get_IsDrawRequired()
    IL_0112:  ldloc.0
    IL_0113:  and
    IL_0114:  brfalse.s  IL_012d

    IL_0116:  call       class Game.WidgetsManager/DrawItem Game.WidgetsManager::GetDrawItemFromCache()
    IL_011b:  stloc.s    V_8
    IL_011d:  ldloc.s    V_8
    IL_011f:  ldarg.0
    IL_0120:  stfld      class Game.Widget Game.WidgetsManager/DrawItem::Widget
    IL_0125:  ldarg.1
    IL_0126:  ldloc.s    V_8
    IL_0128:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem>::Add(!0)
    IL_012d:  ldloc.0
    IL_012e:  brtrue.s   IL_0138

    IL_0130:  ldarg.0
    IL_0131:  callvirt   instance bool Game.Widget::get_ClampToBounds()
    IL_0136:  brtrue.s   IL_017b

    IL_0138:  ldarg.0
    IL_0139:  isinst     Game.ContainerWidget
    IL_013e:  stloc.s    V_9
    IL_0140:  ldloc.s    V_9
    IL_0142:  brfalse.s  IL_017b

    IL_0144:  ldloc.s    V_9
    IL_0146:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_014b:  callvirt   instance valuetype Game.WidgetsList/Enumerator Game.WidgetsList::GetEnumerator()
    IL_0150:  stloc.s    V_10
    .try
    {
      IL_0152:  br.s       IL_0162

      IL_0154:  ldloca.s   V_10
      IL_0156:  call       instance class Game.Widget Game.WidgetsList/Enumerator::get_Current()
      IL_015b:  ldarg.1
      IL_015c:  ldarg.2
      IL_015d:  call       void Game.WidgetsManager::CollateDrawItems(class Game.Widget,
                                                                      class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem>,
                                                                      valuetype [Engine]Engine.Rectangle)
      IL_0162:  ldloca.s   V_10
      IL_0164:  call       instance bool Game.WidgetsList/Enumerator::MoveNext()
      IL_0169:  brtrue.s   IL_0154

      IL_016b:  leave.s    IL_017b

    }  // end .try
    finally
    {
      IL_016d:  ldloca.s   V_10
      IL_016f:  constrained. Game.WidgetsList/Enumerator
      IL_0175:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_017a:  endfinally
    }  // end handler
    IL_017b:  ldarg.0
    IL_017c:  callvirt   instance bool Game.Widget::get_IsOverdrawRequired()
    IL_0181:  ldloc.0
    IL_0182:  and
    IL_0183:  brfalse.s  IL_01a4

    IL_0185:  call       class Game.WidgetsManager/DrawItem Game.WidgetsManager::GetDrawItemFromCache()
    IL_018a:  stloc.s    V_11
    IL_018c:  ldloc.s    V_11
    IL_018e:  ldarg.0
    IL_018f:  stfld      class Game.Widget Game.WidgetsManager/DrawItem::Widget
    IL_0194:  ldloc.s    V_11
    IL_0196:  ldc.i4.1
    IL_0197:  stfld      bool Game.WidgetsManager/DrawItem::IsOverdraw
    IL_019c:  ldarg.1
    IL_019d:  ldloc.s    V_11
    IL_019f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem>::Add(!0)
    IL_01a4:  ldloca.s   V_1
    IL_01a6:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Rectangle>::get_HasValue()
    IL_01ab:  brfalse.s  IL_01c4

    IL_01ad:  call       class Game.WidgetsManager/DrawItem Game.WidgetsManager::GetDrawItemFromCache()
    IL_01b2:  stloc.s    V_12
    IL_01b4:  ldloc.s    V_12
    IL_01b6:  ldloc.1
    IL_01b7:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Rectangle> Game.WidgetsManager/DrawItem::ScissorRectangle
    IL_01bc:  ldarg.1
    IL_01bd:  ldloc.s    V_12
    IL_01bf:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.WidgetsManager/DrawItem>::Add(!0)
    IL_01c4:  ret
  } // end of method WidgetsManager::CollateDrawItems

  .method private hidebysig static void  DrawWidgetsHierarchy(class Game.Widget widget) cil managed
  {
    // 代码大小       469 (0x1d5)
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
    IL_0089:  call       bool Game.Widget::TestOverlap(class Game.Widget,
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
      IL_00ee:  br         IL_0191

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

      IL_0112:  leave      IL_01ad

      IL_0117:  ldloc.s    V_7
      IL_0119:  ldfld      int32 Game.WidgetsManager/DrawItem::Layer
      IL_011e:  ldloc.s    V_5
      IL_0120:  beq.s      IL_014b

      IL_0122:  ldloc.s    V_7
      IL_0124:  ldfld      int32 Game.WidgetsManager/DrawItem::Layer
      IL_0129:  stloc.s    V_5
      IL_012b:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.WidgetsManager::PrimitivesRenderer3D
      IL_0130:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
      IL_0135:  ldc.i4.1
      IL_0136:  ldc.i4     0x7fffffff
      IL_013b:  callvirt   instance void class [Engine]Engine.Graphics.BasePrimitivesRenderer`3<class [Engine]Engine.Graphics.FlatBatch3D,class [Engine]Engine.Graphics.TexturedBatch3D,class [Engine]Engine.Graphics.FontBatch3D>::Flush(valuetype [Engine]Engine.Matrix,
                                                                                                                                                                                                                                          bool,
                                                                                                                                                                                                                                          int32)
      IL_0140:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
      IL_0145:  ldc.i4.1
      IL_0146:  callvirt   instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::Flush(bool)
      IL_014b:  ldloc.s    V_7
      IL_014d:  ldfld      class Game.Widget Game.WidgetsManager/DrawItem::Widget
      IL_0152:  brfalse.s  IL_0179

      IL_0154:  ldloc.s    V_7
      IL_0156:  ldfld      bool Game.WidgetsManager/DrawItem::IsOverdraw
      IL_015b:  brfalse.s  IL_016b

      IL_015d:  ldloc.s    V_7
      IL_015f:  ldfld      class Game.Widget Game.WidgetsManager/DrawItem::Widget
      IL_0164:  callvirt   instance void Game.Widget::Overdraw()
      IL_0169:  br.s       IL_0191

      IL_016b:  ldloc.s    V_7
      IL_016d:  ldfld      class Game.Widget Game.WidgetsManager/DrawItem::Widget
      IL_0172:  callvirt   instance void Game.Widget::Draw()
      IL_0177:  br.s       IL_0191

      IL_0179:  ldloc.s    V_4
      IL_017b:  ldloc.s    V_7
      IL_017d:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Rectangle> Game.WidgetsManager/DrawItem::ScissorRectangle
      IL_0182:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Rectangle>::get_Value()
      IL_0187:  call       valuetype [Engine]Engine.Rectangle [Engine]Engine.Rectangle::Intersection(valuetype [Engine]Engine.Rectangle,
                                                                                                     valuetype [Engine]Engine.Rectangle)
      IL_018c:  call       void [Engine]Engine.Graphics.Display::set_ScissorRectangle(valuetype [Engine]Engine.Rectangle)
      IL_0191:  ldloca.s   V_6
      IL_0193:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.WidgetsManager/DrawItem>::MoveNext()
      IL_0198:  brtrue     IL_00f3

      IL_019d:  leave.s    IL_01ad

    }  // end .try
    finally
    {
      IL_019f:  ldloca.s   V_6
      IL_01a1:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.WidgetsManager/DrawItem>
      IL_01a7:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01ac:  endfinally
    }  // end handler
    IL_01ad:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.WidgetsManager::PrimitivesRenderer3D
    IL_01b2:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_01b7:  ldc.i4.1
    IL_01b8:  ldc.i4     0x7fffffff
    IL_01bd:  callvirt   instance void class [Engine]Engine.Graphics.BasePrimitivesRenderer`3<class [Engine]Engine.Graphics.FlatBatch3D,class [Engine]Engine.Graphics.TexturedBatch3D,class [Engine]Engine.Graphics.FontBatch3D>::Flush(valuetype [Engine]Engine.Matrix,
                                                                                                                                                                                                                                        bool,
                                                                                                                                                                                                                                        int32)
    IL_01c2:  ldsfld     class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.WidgetsManager::PrimitivesRenderer2D
    IL_01c7:  ldc.i4.1
    IL_01c8:  callvirt   instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::Flush(bool)
    IL_01cd:  ldloc.s    V_4
    IL_01cf:  call       void [Engine]Engine.Graphics.Display::set_ScissorRectangle(valuetype [Engine]Engine.Rectangle)
    IL_01d4:  ret
  } // end of method WidgetsManager::DrawWidgetsHierarchy

  .method private hidebysig static class Game.Widget 
          HitTestWidgetsHierarchy(class Game.Widget widget,
                                  valuetype [Engine]Engine.Vector2 point,
                                  class [System.Runtime]System.Func`2<class Game.Widget,bool> predicate) cil managed
  {
    // 代码大小       114 (0x72)
    .maxstack  3
    .locals init (class Game.ContainerWidget V_0,
             class Game.WidgetsList V_1,
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
    IL_0024:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0029:  stloc.1
    IL_002a:  ldloc.1
    IL_002b:  callvirt   instance int32 Game.WidgetsList::get_Count()
    IL_0030:  ldc.i4.1
    IL_0031:  sub
    IL_0032:  stloc.2
    IL_0033:  br.s       IL_004d

    IL_0035:  ldloc.1
    IL_0036:  ldloc.2
    IL_0037:  callvirt   instance class Game.Widget Game.WidgetsList::get_Item(int32)
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

  .method private hidebysig static class Game.WidgetsManager/DrawItem 
          GetDrawItemFromCache() cil managed
  {
    // 代码大小       91 (0x5b)
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
    IL_0041:  ldc.i4.0
    IL_0042:  stfld      bool Game.WidgetsManager/DrawItem::IsOverdraw
    IL_0047:  dup
    IL_0048:  ldnull
    IL_0049:  stfld      class Game.Widget Game.WidgetsManager/DrawItem::Widget
    IL_004e:  dup
    IL_004f:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Rectangle> Game.WidgetsManager/DrawItem::ScissorRectangle
    IL_0054:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Rectangle>
    IL_005a:  ret
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

  .property float32 Scale()
  {
    .get float32 Game.WidgetsManager::get_Scale()
  } // end of property WidgetsManager::Scale
  .property class Game.ContainerWidget RootWidget()
  {
    .get class Game.ContainerWidget Game.WidgetsManager::get_RootWidget()
  } // end of property WidgetsManager::RootWidget
  .property bool IsUpdateEnabled()
  {
    .get bool Game.WidgetsManager::get_IsUpdateEnabled()
    .set void Game.WidgetsManager::set_IsUpdateEnabled(bool)
  } // end of property WidgetsManager::IsUpdateEnabled
} // end of class Game.WidgetsManager