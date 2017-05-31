.class public auto ansi beforefieldinit Game.CreativeInventoryWidget
       extends Game.CanvasWidget
{
  .class auto ansi nested private beforefieldinit Category
         extends [System.Runtime]System.Object
  {
    .field public string Name
    .field public valuetype [Engine]Engine.Color Color
    .field public class Game.ContainerWidget Panel
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
      IL_0006:  stfld      valuetype [Engine]Engine.Color Game.CreativeInventoryWidget/Category::Color
      IL_000b:  ldarg.0
      IL_000c:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0011:  ret
    } // end of method Category::.ctor

  } // end of class Category

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.CreativeInventoryWidget/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<class Game.CreativeInventoryWidget/Category,bool> '<>9__11_0'
    .field public static class [System.Runtime]System.Func`2<class Game.CreativeInventoryWidget/Category,bool> '<>9__11_1'
    .field public static class [System.Runtime]System.Func`2<class Game.CreativeInventoryWidget/Category,bool> '<>9__11_2'
    .field public static class [System.Runtime]System.Func`2<object,class Game.Widget> '<>9__21_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.CreativeInventoryWidget/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.CreativeInventoryWidget/'<>c' Game.CreativeInventoryWidget/'<>c'::'<>9'
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
            '<.ctor>b__11_0'(class Game.CreativeInventoryWidget/Category c) cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      string Game.CreativeInventoryWidget/Category::Name
      IL_0006:  ldstr      "Electrics"
      IL_000b:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0010:  ret
    } // end of method '<>c'::'<.ctor>b__11_0'

    .method assembly hidebysig instance bool 
            '<.ctor>b__11_1'(class Game.CreativeInventoryWidget/Category c) cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      string Game.CreativeInventoryWidget/Category::Name
      IL_0006:  ldstr      "Plants"
      IL_000b:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0010:  ret
    } // end of method '<>c'::'<.ctor>b__11_1'

    .method assembly hidebysig instance bool 
            '<.ctor>b__11_2'(class Game.CreativeInventoryWidget/Category c) cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      string Game.CreativeInventoryWidget/Category::Name
      IL_0006:  ldstr      "Fireworks"
      IL_000b:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0010:  ret
    } // end of method '<>c'::'<.ctor>b__11_2'

    .method assembly hidebysig instance class Game.Widget 
            '<Update>b__21_0'(object c) cil managed
    {
      // 代码大小       54 (0x36)
      .maxstack  8
      IL_0000:  newobj     instance void Game.LabelWidget::.ctor()
      IL_0005:  dup
      IL_0006:  ldarg.1
      IL_0007:  castclass  Game.CreativeInventoryWidget/Category
      IL_000c:  ldfld      string Game.CreativeInventoryWidget/Category::Name
      IL_0011:  callvirt   instance void Game.LabelWidget::set_Text(string)
      IL_0016:  dup
      IL_0017:  ldarg.1
      IL_0018:  castclass  Game.CreativeInventoryWidget/Category
      IL_001d:  ldfld      valuetype [Engine]Engine.Color Game.CreativeInventoryWidget/Category::Color
      IL_0022:  callvirt   instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
      IL_0027:  dup
      IL_0028:  ldc.i4.1
      IL_0029:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
      IL_002e:  dup
      IL_002f:  ldc.i4.1
      IL_0030:  callvirt   instance void Game.Widget::set_VerticalAlignment(valuetype Game.WidgetAlignment)
      IL_0035:  ret
    } // end of method '<>c'::'<Update>b__21_0'

  } // end of class '<>c'

  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.CreativeInventoryWidget/Category> m_categories
  .field private int32 m_activeCategoryIndex
  .field private class Game.ComponentCreativeInventory m_componentCreativeInventory
  .field private class Game.ButtonWidget m_pageUpButton
  .field private class Game.ButtonWidget m_pageDownButton
  .field private class Game.LabelWidget m_pageLabel
  .field private class Game.ButtonWidget m_categoryLeftButton
  .field private class Game.ButtonWidget m_categoryRightButton
  .field private class Game.ButtonWidget m_categoryButton
  .field private class Game.ContainerWidget m_panelContainer
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [EntitySystem]GameEntitySystem.Entity entity) cil managed
  {
    // 代码大小       622 (0x26e)
    .maxstack  4
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0,
             class Game.CreativeInventoryPanel V_1,
             class Game.FurnitureInventoryPanel V_2,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<string> V_3,
             valuetype [Engine]Engine.ReadOnlyList`1<string> V_4,
             string V_5)
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.CreativeInventoryWidget/Category>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CreativeInventoryWidget/Category> Game.CreativeInventoryWidget::m_categories
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.m1
    IL_000d:  stfld      int32 Game.CreativeInventoryWidget::m_activeCategoryIndex
    IL_0012:  ldarg.0
    IL_0013:  call       instance void Game.CanvasWidget::.ctor()
    IL_0018:  ldarg.0
    IL_0019:  ldarg.1
    IL_001a:  ldc.i4.1
    IL_001b:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreativeInventory>(bool)
    IL_0020:  stfld      class Game.ComponentCreativeInventory Game.CreativeInventoryWidget::m_componentCreativeInventory
    IL_0025:  ldstr      "Widgets/CreativeInventoryWidget"
    IL_002a:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_002f:  stloc.0
    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  ldloc.0
    IL_0033:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0038:  ldarg.0
    IL_0039:  ldarg.0
    IL_003a:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_003f:  ldstr      "CategoryLeftButton"
    IL_0044:  ldc.i4.1
    IL_0045:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_004a:  stfld      class Game.ButtonWidget Game.CreativeInventoryWidget::m_categoryLeftButton
    IL_004f:  ldarg.0
    IL_0050:  ldarg.0
    IL_0051:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0056:  ldstr      "CategoryRightButton"
    IL_005b:  ldc.i4.1
    IL_005c:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0061:  stfld      class Game.ButtonWidget Game.CreativeInventoryWidget::m_categoryRightButton
    IL_0066:  ldarg.0
    IL_0067:  ldarg.0
    IL_0068:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_006d:  ldstr      "CategoryButton"
    IL_0072:  ldc.i4.1
    IL_0073:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0078:  stfld      class Game.ButtonWidget Game.CreativeInventoryWidget::m_categoryButton
    IL_007d:  ldarg.0
    IL_007e:  ldarg.0
    IL_007f:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0084:  ldstr      "PageUpButton"
    IL_0089:  ldc.i4.1
    IL_008a:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_008f:  stfld      class Game.ButtonWidget Game.CreativeInventoryWidget::m_pageUpButton
    IL_0094:  ldarg.0
    IL_0095:  ldarg.0
    IL_0096:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_009b:  ldstr      "PageDownButton"
    IL_00a0:  ldc.i4.1
    IL_00a1:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00a6:  stfld      class Game.ButtonWidget Game.CreativeInventoryWidget::m_pageDownButton
    IL_00ab:  ldarg.0
    IL_00ac:  ldarg.0
    IL_00ad:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00b2:  ldstr      "PageLabel"
    IL_00b7:  ldc.i4.1
    IL_00b8:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_00bd:  stfld      class Game.LabelWidget Game.CreativeInventoryWidget::m_pageLabel
    IL_00c2:  ldarg.0
    IL_00c3:  ldarg.0
    IL_00c4:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00c9:  ldstr      "PanelContainer"
    IL_00ce:  ldc.i4.1
    IL_00cf:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ContainerWidget>(string,
                                                                                              bool)
    IL_00d4:  stfld      class Game.ContainerWidget Game.CreativeInventoryWidget::m_panelContainer
    IL_00d9:  ldarg.0
    IL_00da:  newobj     instance void Game.CreativeInventoryPanel::.ctor(class Game.CreativeInventoryWidget)
    IL_00df:  stloc.1
    IL_00e0:  ldloc.1
    IL_00e1:  ldc.i4.0
    IL_00e2:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_00e7:  ldarg.0
    IL_00e8:  ldfld      class Game.ContainerWidget Game.CreativeInventoryWidget::m_panelContainer
    IL_00ed:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00f2:  ldloc.1
    IL_00f3:  callvirt   instance void Game.WidgetsContainer::Add(class Game.Widget)
    IL_00f8:  ldarg.0
    IL_00f9:  newobj     instance void Game.FurnitureInventoryPanel::.ctor(class Game.CreativeInventoryWidget)
    IL_00fe:  stloc.2
    IL_00ff:  ldloc.2
    IL_0100:  ldc.i4.0
    IL_0101:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0106:  ldarg.0
    IL_0107:  ldfld      class Game.ContainerWidget Game.CreativeInventoryWidget::m_panelContainer
    IL_010c:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0111:  ldloc.2
    IL_0112:  callvirt   instance void Game.WidgetsContainer::Add(class Game.Widget)
    IL_0117:  call       valuetype [Engine]Engine.ReadOnlyList`1<string> Game.BlocksManager::get_Categories()
    IL_011c:  stloc.s    V_4
    IL_011e:  ldloca.s   V_4
    IL_0120:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<string>::GetEnumerator()
    IL_0125:  stloc.3
    .try
    {
      IL_0126:  br.s       IL_0150

      IL_0128:  ldloca.s   V_3
      IL_012a:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<string>::get_Current()
      IL_012f:  stloc.s    V_5
      IL_0131:  ldarg.0
      IL_0132:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CreativeInventoryWidget/Category> Game.CreativeInventoryWidget::m_categories
      IL_0137:  newobj     instance void Game.CreativeInventoryWidget/Category::.ctor()
      IL_013c:  dup
      IL_013d:  ldloc.s    V_5
      IL_013f:  stfld      string Game.CreativeInventoryWidget/Category::Name
      IL_0144:  dup
      IL_0145:  ldloc.1
      IL_0146:  stfld      class Game.ContainerWidget Game.CreativeInventoryWidget/Category::Panel
      IL_014b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.CreativeInventoryWidget/Category>::Add(!0)
      IL_0150:  ldloca.s   V_3
      IL_0152:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<string>::MoveNext()
      IL_0157:  brtrue.s   IL_0128

      IL_0159:  leave.s    IL_0169

    }  // end .try
    finally
    {
      IL_015b:  ldloca.s   V_3
      IL_015d:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<string>
      IL_0163:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0168:  endfinally
    }  // end handler
    IL_0169:  ldarg.0
    IL_016a:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CreativeInventoryWidget/Category> Game.CreativeInventoryWidget::m_categories
    IL_016f:  newobj     instance void Game.CreativeInventoryWidget/Category::.ctor()
    IL_0174:  dup
    IL_0175:  ldstr      "Furniture"
    IL_017a:  stfld      string Game.CreativeInventoryWidget/Category::Name
    IL_017f:  dup
    IL_0180:  ldloc.2
    IL_0181:  stfld      class Game.ContainerWidget Game.CreativeInventoryWidget/Category::Panel
    IL_0186:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.CreativeInventoryWidget/Category>::Add(!0)
    IL_018b:  ldarg.0
    IL_018c:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CreativeInventoryWidget/Category> Game.CreativeInventoryWidget::m_categories
    IL_0191:  newobj     instance void Game.CreativeInventoryWidget/Category::.ctor()
    IL_0196:  dup
    IL_0197:  ldstr      "User"
    IL_019c:  stfld      string Game.CreativeInventoryWidget/Category::Name
    IL_01a1:  dup
    IL_01a2:  ldloc.1
    IL_01a3:  stfld      class Game.ContainerWidget Game.CreativeInventoryWidget/Category::Panel
    IL_01a8:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.CreativeInventoryWidget/Category>::Add(!0)
    IL_01ad:  ldarg.0
    IL_01ae:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CreativeInventoryWidget/Category> Game.CreativeInventoryWidget::m_categories
    IL_01b3:  ldsfld     class [System.Runtime]System.Func`2<class Game.CreativeInventoryWidget/Category,bool> Game.CreativeInventoryWidget/'<>c'::'<>9__11_0'
    IL_01b8:  dup
    IL_01b9:  brtrue.s   IL_01d2

    IL_01bb:  pop
    IL_01bc:  ldsfld     class Game.CreativeInventoryWidget/'<>c' Game.CreativeInventoryWidget/'<>c'::'<>9'
    IL_01c1:  ldftn      instance bool Game.CreativeInventoryWidget/'<>c'::'<.ctor>b__11_0'(class Game.CreativeInventoryWidget/Category)
    IL_01c7:  newobj     instance void class [System.Runtime]System.Func`2<class Game.CreativeInventoryWidget/Category,bool>::.ctor(object,
                                                                                                                                    native int)
    IL_01cc:  dup
    IL_01cd:  stsfld     class [System.Runtime]System.Func`2<class Game.CreativeInventoryWidget/Category,bool> Game.CreativeInventoryWidget/'<>c'::'<>9__11_0'
    IL_01d2:  call       !!0 [System.Linq]System.Linq.Enumerable::First<class Game.CreativeInventoryWidget/Category>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                     class [System.Runtime]System.Func`2<!!0,bool>)
    IL_01d7:  ldc.i4     0x80
    IL_01dc:  ldc.i4     0x8c
    IL_01e1:  ldc.i4     0xff
    IL_01e6:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_01eb:  stfld      valuetype [Engine]Engine.Color Game.CreativeInventoryWidget/Category::Color
    IL_01f0:  ldarg.0
    IL_01f1:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CreativeInventoryWidget/Category> Game.CreativeInventoryWidget::m_categories
    IL_01f6:  ldsfld     class [System.Runtime]System.Func`2<class Game.CreativeInventoryWidget/Category,bool> Game.CreativeInventoryWidget/'<>c'::'<>9__11_1'
    IL_01fb:  dup
    IL_01fc:  brtrue.s   IL_0215

    IL_01fe:  pop
    IL_01ff:  ldsfld     class Game.CreativeInventoryWidget/'<>c' Game.CreativeInventoryWidget/'<>c'::'<>9'
    IL_0204:  ldftn      instance bool Game.CreativeInventoryWidget/'<>c'::'<.ctor>b__11_1'(class Game.CreativeInventoryWidget/Category)
    IL_020a:  newobj     instance void class [System.Runtime]System.Func`2<class Game.CreativeInventoryWidget/Category,bool>::.ctor(object,
                                                                                                                                    native int)
    IL_020f:  dup
    IL_0210:  stsfld     class [System.Runtime]System.Func`2<class Game.CreativeInventoryWidget/Category,bool> Game.CreativeInventoryWidget/'<>c'::'<>9__11_1'
    IL_0215:  call       !!0 [System.Linq]System.Linq.Enumerable::First<class Game.CreativeInventoryWidget/Category>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                     class [System.Runtime]System.Func`2<!!0,bool>)
    IL_021a:  ldc.i4.s   64
    IL_021c:  ldc.i4     0xa0
    IL_0221:  ldc.i4.s   64
    IL_0223:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0228:  stfld      valuetype [Engine]Engine.Color Game.CreativeInventoryWidget/Category::Color
    IL_022d:  ldarg.0
    IL_022e:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CreativeInventoryWidget/Category> Game.CreativeInventoryWidget::m_categories
    IL_0233:  ldsfld     class [System.Runtime]System.Func`2<class Game.CreativeInventoryWidget/Category,bool> Game.CreativeInventoryWidget/'<>c'::'<>9__11_2'
    IL_0238:  dup
    IL_0239:  brtrue.s   IL_0252

    IL_023b:  pop
    IL_023c:  ldsfld     class Game.CreativeInventoryWidget/'<>c' Game.CreativeInventoryWidget/'<>c'::'<>9'
    IL_0241:  ldftn      instance bool Game.CreativeInventoryWidget/'<>c'::'<.ctor>b__11_2'(class Game.CreativeInventoryWidget/Category)
    IL_0247:  newobj     instance void class [System.Runtime]System.Func`2<class Game.CreativeInventoryWidget/Category,bool>::.ctor(object,
                                                                                                                                    native int)
    IL_024c:  dup
    IL_024d:  stsfld     class [System.Runtime]System.Func`2<class Game.CreativeInventoryWidget/Category,bool> Game.CreativeInventoryWidget/'<>c'::'<>9__11_2'
    IL_0252:  call       !!0 [System.Linq]System.Linq.Enumerable::First<class Game.CreativeInventoryWidget/Category>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                     class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0257:  ldc.i4     0xff
    IL_025c:  ldc.i4     0x80
    IL_0261:  ldc.i4.s   112
    IL_0263:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0268:  stfld      valuetype [Engine]Engine.Color Game.CreativeInventoryWidget/Category::Color
    IL_026d:  ret
  } // end of method CreativeInventoryWidget::.ctor

  .method public hidebysig specialname instance class [EntitySystem]GameEntitySystem.Entity 
          get_Entity() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryWidget::m_componentCreativeInventory
    IL_0006:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_000b:  ret
  } // end of method CreativeInventoryWidget::get_Entity

  .method public hidebysig specialname instance class Game.ButtonWidget 
          get_PageDownButton() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ButtonWidget Game.CreativeInventoryWidget::m_pageDownButton
    IL_0006:  ret
  } // end of method CreativeInventoryWidget::get_PageDownButton

  .method public hidebysig specialname instance class Game.ButtonWidget 
          get_PageUpButton() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ButtonWidget Game.CreativeInventoryWidget::m_pageUpButton
    IL_0006:  ret
  } // end of method CreativeInventoryWidget::get_PageUpButton

  .method public hidebysig specialname instance class Game.LabelWidget 
          get_PageLabel() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.CreativeInventoryWidget::m_pageLabel
    IL_0006:  ret
  } // end of method CreativeInventoryWidget::get_PageLabel

  .method public hidebysig instance string 
          GetCategoryName(int32 index) cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CreativeInventoryWidget/Category> Game.CreativeInventoryWidget::m_categories
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.CreativeInventoryWidget/Category>::get_Item(int32)
    IL_000c:  ldfld      string Game.CreativeInventoryWidget/Category::Name
    IL_0011:  ret
  } // end of method CreativeInventoryWidget::GetCategoryName

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       418 (0x1a2)
    .maxstack  6
    .locals init (int32 V_0,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.CreativeInventoryWidget/Category> V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ButtonWidget Game.CreativeInventoryWidget::m_categoryLeftButton
    IL_0006:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_000b:  brfalse.s  IL_0022

    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryWidget::m_componentCreativeInventory
    IL_0013:  dup
    IL_0014:  callvirt   instance int32 Game.ComponentCreativeInventory::get_CategoryIndex()
    IL_0019:  ldc.i4.1
    IL_001a:  sub
    IL_001b:  stloc.0
    IL_001c:  ldloc.0
    IL_001d:  callvirt   instance void Game.ComponentCreativeInventory::set_CategoryIndex(int32)
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class Game.ButtonWidget Game.CreativeInventoryWidget::m_categoryRightButton
    IL_0028:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_002d:  brfalse.s  IL_0044

    IL_002f:  ldarg.0
    IL_0030:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryWidget::m_componentCreativeInventory
    IL_0035:  dup
    IL_0036:  callvirt   instance int32 Game.ComponentCreativeInventory::get_CategoryIndex()
    IL_003b:  ldc.i4.1
    IL_003c:  add
    IL_003d:  stloc.0
    IL_003e:  ldloc.0
    IL_003f:  callvirt   instance void Game.ComponentCreativeInventory::set_CategoryIndex(int32)
    IL_0044:  ldarg.0
    IL_0045:  ldfld      class Game.ButtonWidget Game.CreativeInventoryWidget::m_categoryButton
    IL_004a:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_004f:  brfalse.s  IL_0096

    IL_0051:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0056:  ldarg.0
    IL_0057:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CreativeInventoryWidget/Category> Game.CreativeInventoryWidget::m_categories
    IL_005c:  ldc.r4     56.
    IL_0061:  ldsfld     class [System.Runtime]System.Func`2<object,class Game.Widget> Game.CreativeInventoryWidget/'<>c'::'<>9__21_0'
    IL_0066:  dup
    IL_0067:  brtrue.s   IL_0080

    IL_0069:  pop
    IL_006a:  ldsfld     class Game.CreativeInventoryWidget/'<>c' Game.CreativeInventoryWidget/'<>c'::'<>9'
    IL_006f:  ldftn      instance class Game.Widget Game.CreativeInventoryWidget/'<>c'::'<Update>b__21_0'(object)
    IL_0075:  newobj     instance void class [System.Runtime]System.Func`2<object,class Game.Widget>::.ctor(object,
                                                                                                            native int)
    IL_007a:  dup
    IL_007b:  stsfld     class [System.Runtime]System.Func`2<object,class Game.Widget> Game.CreativeInventoryWidget/'<>c'::'<>9__21_0'
    IL_0080:  ldarg.0
    IL_0081:  ldftn      instance void Game.CreativeInventoryWidget::'<Update>b__21_1'(object)
    IL_0087:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_008c:  newobj     instance void Game.ListSelectionDialog::.ctor(string,
                                                                       class [System.Runtime]System.Collections.IEnumerable,
                                                                       float32,
                                                                       class [System.Runtime]System.Func`2<object,class Game.Widget>,
                                                                       class [System.Runtime]System.Action`1<object>)
    IL_0091:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_0096:  ldarg.0
    IL_0097:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryWidget::m_componentCreativeInventory
    IL_009c:  ldarg.0
    IL_009d:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryWidget::m_componentCreativeInventory
    IL_00a2:  callvirt   instance int32 Game.ComponentCreativeInventory::get_CategoryIndex()
    IL_00a7:  ldc.i4.0
    IL_00a8:  ldarg.0
    IL_00a9:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CreativeInventoryWidget/Category> Game.CreativeInventoryWidget::m_categories
    IL_00ae:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.CreativeInventoryWidget/Category>::get_Count()
    IL_00b3:  ldc.i4.1
    IL_00b4:  sub
    IL_00b5:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_00ba:  callvirt   instance void Game.ComponentCreativeInventory::set_CategoryIndex(int32)
    IL_00bf:  ldarg.0
    IL_00c0:  ldfld      class Game.ButtonWidget Game.CreativeInventoryWidget::m_categoryButton
    IL_00c5:  ldarg.0
    IL_00c6:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CreativeInventoryWidget/Category> Game.CreativeInventoryWidget::m_categories
    IL_00cb:  ldarg.0
    IL_00cc:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryWidget::m_componentCreativeInventory
    IL_00d1:  callvirt   instance int32 Game.ComponentCreativeInventory::get_CategoryIndex()
    IL_00d6:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.CreativeInventoryWidget/Category>::get_Item(int32)
    IL_00db:  ldfld      string Game.CreativeInventoryWidget/Category::Name
    IL_00e0:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_00e5:  ldarg.0
    IL_00e6:  ldfld      class Game.ButtonWidget Game.CreativeInventoryWidget::m_categoryLeftButton
    IL_00eb:  ldarg.0
    IL_00ec:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryWidget::m_componentCreativeInventory
    IL_00f1:  callvirt   instance int32 Game.ComponentCreativeInventory::get_CategoryIndex()
    IL_00f6:  ldc.i4.0
    IL_00f7:  cgt
    IL_00f9:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_00fe:  ldarg.0
    IL_00ff:  ldfld      class Game.ButtonWidget Game.CreativeInventoryWidget::m_categoryRightButton
    IL_0104:  ldarg.0
    IL_0105:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryWidget::m_componentCreativeInventory
    IL_010a:  callvirt   instance int32 Game.ComponentCreativeInventory::get_CategoryIndex()
    IL_010f:  ldarg.0
    IL_0110:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CreativeInventoryWidget/Category> Game.CreativeInventoryWidget::m_categories
    IL_0115:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.CreativeInventoryWidget/Category>::get_Count()
    IL_011a:  ldc.i4.1
    IL_011b:  sub
    IL_011c:  clt
    IL_011e:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0123:  ldarg.0
    IL_0124:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryWidget::m_componentCreativeInventory
    IL_0129:  callvirt   instance int32 Game.ComponentCreativeInventory::get_CategoryIndex()
    IL_012e:  ldarg.0
    IL_012f:  ldfld      int32 Game.CreativeInventoryWidget::m_activeCategoryIndex
    IL_0134:  beq.s      IL_01a1

    IL_0136:  ldarg.0
    IL_0137:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CreativeInventoryWidget/Category> Game.CreativeInventoryWidget::m_categories
    IL_013c:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.CreativeInventoryWidget/Category>::GetEnumerator()
    IL_0141:  stloc.1
    .try
    {
      IL_0142:  br.s       IL_0156

      IL_0144:  ldloca.s   V_1
      IL_0146:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.CreativeInventoryWidget/Category>::get_Current()
      IL_014b:  ldfld      class Game.ContainerWidget Game.CreativeInventoryWidget/Category::Panel
      IL_0150:  ldc.i4.0
      IL_0151:  callvirt   instance void Game.Widget::set_IsVisible(bool)
      IL_0156:  ldloca.s   V_1
      IL_0158:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.CreativeInventoryWidget/Category>::MoveNext()
      IL_015d:  brtrue.s   IL_0144

      IL_015f:  leave.s    IL_016f

    }  // end .try
    finally
    {
      IL_0161:  ldloca.s   V_1
      IL_0163:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.CreativeInventoryWidget/Category>
      IL_0169:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_016e:  endfinally
    }  // end handler
    IL_016f:  ldarg.0
    IL_0170:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CreativeInventoryWidget/Category> Game.CreativeInventoryWidget::m_categories
    IL_0175:  ldarg.0
    IL_0176:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryWidget::m_componentCreativeInventory
    IL_017b:  callvirt   instance int32 Game.ComponentCreativeInventory::get_CategoryIndex()
    IL_0180:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.CreativeInventoryWidget/Category>::get_Item(int32)
    IL_0185:  ldfld      class Game.ContainerWidget Game.CreativeInventoryWidget/Category::Panel
    IL_018a:  ldc.i4.1
    IL_018b:  callvirt   instance void Game.Widget::set_IsVisible(bool)
    IL_0190:  ldarg.0
    IL_0191:  ldarg.0
    IL_0192:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryWidget::m_componentCreativeInventory
    IL_0197:  callvirt   instance int32 Game.ComponentCreativeInventory::get_CategoryIndex()
    IL_019c:  stfld      int32 Game.CreativeInventoryWidget::m_activeCategoryIndex
    IL_01a1:  ret
  } // end of method CreativeInventoryWidget::Update

  .method private hidebysig instance void 
          '<Update>b__21_1'(object c) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  brfalse.s  IL_001f

    IL_0003:  ldarg.0
    IL_0004:  ldfld      class Game.ComponentCreativeInventory Game.CreativeInventoryWidget::m_componentCreativeInventory
    IL_0009:  ldarg.0
    IL_000a:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.CreativeInventoryWidget/Category> Game.CreativeInventoryWidget::m_categories
    IL_000f:  ldarg.1
    IL_0010:  castclass  Game.CreativeInventoryWidget/Category
    IL_0015:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.CreativeInventoryWidget/Category>::IndexOf(!0)
    IL_001a:  callvirt   instance void Game.ComponentCreativeInventory::set_CategoryIndex(int32)
    IL_001f:  ret
  } // end of method CreativeInventoryWidget::'<Update>b__21_1'

  .property instance class [EntitySystem]GameEntitySystem.Entity
          Entity()
  {
    .get instance class [EntitySystem]GameEntitySystem.Entity Game.CreativeInventoryWidget::get_Entity()
  } // end of property CreativeInventoryWidget::Entity
  .property instance class Game.ButtonWidget
          PageDownButton()
  {
    .get instance class Game.ButtonWidget Game.CreativeInventoryWidget::get_PageDownButton()
  } // end of property CreativeInventoryWidget::PageDownButton
  .property instance class Game.ButtonWidget
          PageUpButton()
  {
    .get instance class Game.ButtonWidget Game.CreativeInventoryWidget::get_PageUpButton()
  } // end of property CreativeInventoryWidget::PageUpButton
  .property instance class Game.LabelWidget
          PageLabel()
  {
    .get instance class Game.LabelWidget Game.CreativeInventoryWidget::get_PageLabel()
  } // end of property CreativeInventoryWidget::PageLabel
} // end of class Game.CreativeInventoryWidget