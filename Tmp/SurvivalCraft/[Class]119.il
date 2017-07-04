.class public auto ansi beforefieldinit Game.SelectExternalContentTypeDialog
       extends Game.ListSelectionDialog
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass0_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [System.Runtime]System.Action`1<valuetype Game.ExternalContentType> selectionHandler
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass0_0'::.ctor

    .method assembly hidebysig instance void 
            '<.ctor>b__2'(object item) cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Runtime]System.Action`1<valuetype Game.ExternalContentType> Game.SelectExternalContentTypeDialog/'<>c__DisplayClass0_0'::selectionHandler
      IL_0006:  ldarg.1
      IL_0007:  unbox.any  Game.ExternalContentType
      IL_000c:  callvirt   instance void class [System.Runtime]System.Action`1<valuetype Game.ExternalContentType>::Invoke(!0)
      IL_0011:  ret
    } // end of method '<>c__DisplayClass0_0'::'<.ctor>b__2'

  } // end of class '<>c__DisplayClass0_0'

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.SelectExternalContentTypeDialog/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<int32,bool> '<>9__0_0'
    .field public static class [System.Runtime]System.Func`2<object,class Game.Widget> '<>9__0_1'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.SelectExternalContentTypeDialog/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.SelectExternalContentTypeDialog/'<>c' Game.SelectExternalContentTypeDialog/'<>c'::'<>9'
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
            '<.ctor>b__0_0'(int32 v) cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  call       bool Game.ExternalContentManager::IsEntryTypeDownloadSupported(valuetype Game.ExternalContentType)
      IL_0006:  ret
    } // end of method '<>c'::'<.ctor>b__0_0'

    .method assembly hidebysig instance class Game.Widget 
            '<.ctor>b__0_1'(object item) cil managed
    {
      // 代码大小       88 (0x58)
      .maxstack  4
      .locals init (valuetype Game.ExternalContentType V_0,
               class [System.Xml.XDocument]System.Xml.Linq.XElement V_1)
      IL_0000:  ldarg.1
      IL_0001:  unbox.any  Game.ExternalContentType
      IL_0006:  stloc.0
      IL_0007:  ldstr      "Widgets/SelectExternalContentTypeItem"
      IL_000c:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
      IL_0011:  stloc.1
      IL_0012:  ldnull
      IL_0013:  ldloc.1
      IL_0014:  ldnull
      IL_0015:  call       class Game.Widget Game.WidgetsManager::LoadWidget(object,
                                                                             class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                             class Game.ContainerWidget)
      IL_001a:  castclass  Game.ContainerWidget
      IL_001f:  dup
      IL_0020:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
      IL_0025:  ldstr      "SelectExternalContentType.Icon"
      IL_002a:  ldc.i4.1
      IL_002b:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.RectangleWidget>(string,
                                                                                           bool)
      IL_0030:  ldloc.0
      IL_0031:  call       class Game.Subtexture Game.ExternalContentManager::GetEntryTypeIcon(valuetype Game.ExternalContentType)
      IL_0036:  callvirt   instance void Game.RectangleWidget::set_Subtexture(class Game.Subtexture)
      IL_003b:  dup
      IL_003c:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
      IL_0041:  ldstr      "SelectExternalContentType.Text"
      IL_0046:  ldc.i4.1
      IL_0047:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                       bool)
      IL_004c:  ldloc.0
      IL_004d:  call       string Game.ExternalContentManager::GetEntryTypeDescription(valuetype Game.ExternalContentType)
      IL_0052:  callvirt   instance void Game.LabelWidget::set_Text(string)
      IL_0057:  ret
    } // end of method '<>c'::'<.ctor>b__0_1'

  } // end of class '<>c'

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string title,
                               class [System.Runtime]System.Action`1<valuetype Game.ExternalContentType> selectionHandler) cil managed
  {
    // 代码大小       120 (0x78)
    .maxstack  7
    .locals init (class Game.SelectExternalContentTypeDialog/'<>c__DisplayClass0_0' V_0)
    IL_0000:  newobj     instance void Game.SelectExternalContentTypeDialog/'<>c__DisplayClass0_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.2
    IL_0008:  stfld      class [System.Runtime]System.Action`1<valuetype Game.ExternalContentType> Game.SelectExternalContentTypeDialog/'<>c__DisplayClass0_0'::selectionHandler
    IL_000d:  ldarg.0
    IL_000e:  ldarg.1
    IL_000f:  ldtoken    Game.ExternalContentType
    IL_0014:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0019:  call       class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.EnumUtils::GetEnumValues(class [System.Runtime]System.Type)
    IL_001e:  ldsfld     class [System.Runtime]System.Func`2<int32,bool> Game.SelectExternalContentTypeDialog/'<>c'::'<>9__0_0'
    IL_0023:  dup
    IL_0024:  brtrue.s   IL_003d

    IL_0026:  pop
    IL_0027:  ldsfld     class Game.SelectExternalContentTypeDialog/'<>c' Game.SelectExternalContentTypeDialog/'<>c'::'<>9'
    IL_002c:  ldftn      instance bool Game.SelectExternalContentTypeDialog/'<>c'::'<.ctor>b__0_0'(int32)
    IL_0032:  newobj     instance void class [System.Runtime]System.Func`2<int32,bool>::.ctor(object,
                                                                                              native int)
    IL_0037:  dup
    IL_0038:  stsfld     class [System.Runtime]System.Func`2<int32,bool> Game.SelectExternalContentTypeDialog/'<>c'::'<>9__0_0'
    IL_003d:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<int32>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                               class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0042:  ldc.r4     64.
    IL_0047:  ldsfld     class [System.Runtime]System.Func`2<object,class Game.Widget> Game.SelectExternalContentTypeDialog/'<>c'::'<>9__0_1'
    IL_004c:  dup
    IL_004d:  brtrue.s   IL_0066

    IL_004f:  pop
    IL_0050:  ldsfld     class Game.SelectExternalContentTypeDialog/'<>c' Game.SelectExternalContentTypeDialog/'<>c'::'<>9'
    IL_0055:  ldftn      instance class Game.Widget Game.SelectExternalContentTypeDialog/'<>c'::'<.ctor>b__0_1'(object)
    IL_005b:  newobj     instance void class [System.Runtime]System.Func`2<object,class Game.Widget>::.ctor(object,
                                                                                                            native int)
    IL_0060:  dup
    IL_0061:  stsfld     class [System.Runtime]System.Func`2<object,class Game.Widget> Game.SelectExternalContentTypeDialog/'<>c'::'<>9__0_1'
    IL_0066:  ldloc.0
    IL_0067:  ldftn      instance void Game.SelectExternalContentTypeDialog/'<>c__DisplayClass0_0'::'<.ctor>b__2'(object)
    IL_006d:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_0072:  call       instance void Game.ListSelectionDialog::.ctor(string,
                                                                       class [System.Runtime]System.Collections.IEnumerable,
                                                                       float32,
                                                                       class [System.Runtime]System.Func`2<object,class Game.Widget>,
                                                                       class [System.Runtime]System.Action`1<object>)
    IL_0077:  ret
  } // end of method SelectExternalContentTypeDialog::.ctor

} // end of class Game.SelectExternalContentTypeDialog