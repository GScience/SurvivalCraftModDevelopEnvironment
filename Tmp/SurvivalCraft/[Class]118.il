.class public auto ansi beforefieldinit Game.SelectExternalContentProviderDialog
       extends Game.ListSelectionDialog
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass0_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public bool listingSupportRequired
    .field public class [System.Runtime]System.Action`1<class Game.IExternalContentProvider> selectionHandler
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass0_0'::.ctor

    .method assembly hidebysig instance bool 
            '<.ctor>b__0'(class Game.IExternalContentProvider p) cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      bool Game.SelectExternalContentProviderDialog/'<>c__DisplayClass0_0'::listingSupportRequired
      IL_0006:  brtrue.s   IL_000a

      IL_0008:  ldc.i4.1
      IL_0009:  ret

      IL_000a:  ldarg.1
      IL_000b:  callvirt   instance bool Game.IExternalContentProvider::get_SupportsListing()
      IL_0010:  ret
    } // end of method '<>c__DisplayClass0_0'::'<.ctor>b__0'

    .method assembly hidebysig instance void 
            '<.ctor>b__2'(object item) cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Runtime]System.Action`1<class Game.IExternalContentProvider> Game.SelectExternalContentProviderDialog/'<>c__DisplayClass0_0'::selectionHandler
      IL_0006:  ldarg.1
      IL_0007:  castclass  Game.IExternalContentProvider
      IL_000c:  callvirt   instance void class [System.Runtime]System.Action`1<class Game.IExternalContentProvider>::Invoke(!0)
      IL_0011:  ret
    } // end of method '<>c__DisplayClass0_0'::'<.ctor>b__2'

  } // end of class '<>c__DisplayClass0_0'

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.SelectExternalContentProviderDialog/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<object,class Game.Widget> '<>9__0_1'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.SelectExternalContentProviderDialog/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.SelectExternalContentProviderDialog/'<>c' Game.SelectExternalContentProviderDialog/'<>c'::'<>9'
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

    .method assembly hidebysig instance class Game.Widget 
            '<.ctor>b__0_1'(object item) cil managed
    {
      // 代码大小       117 (0x75)
      .maxstack  4
      .locals init (class Game.IExternalContentProvider V_0,
               class [System.Xml.XDocument]System.Xml.Linq.XElement V_1)
      IL_0000:  ldarg.1
      IL_0001:  castclass  Game.IExternalContentProvider
      IL_0006:  stloc.0
      IL_0007:  ldstr      "Widgets/SelectExternalContentProviderItem"
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
      IL_0025:  ldstr      "SelectExternalContentProvider.Text"
      IL_002a:  ldc.i4.1
      IL_002b:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                       bool)
      IL_0030:  ldloc.0
      IL_0031:  callvirt   instance string Game.IExternalContentProvider::get_DisplayName()
      IL_0036:  callvirt   instance void Game.LabelWidget::set_Text(string)
      IL_003b:  dup
      IL_003c:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
      IL_0041:  ldstr      "SelectExternalContentProvider.Details"
      IL_0046:  ldc.i4.1
      IL_0047:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                       bool)
      IL_004c:  ldloc.0
      IL_004d:  callvirt   instance bool Game.IExternalContentProvider::get_RequiresLogin()
      IL_0052:  brtrue.s   IL_005b

      IL_0054:  ldstr      "(no login needed)"
      IL_0059:  br.s       IL_006f

      IL_005b:  ldloc.0
      IL_005c:  callvirt   instance bool Game.IExternalContentProvider::get_IsLoggedIn()
      IL_0061:  brtrue.s   IL_006a

      IL_0063:  ldstr      "(requires login)"
      IL_0068:  br.s       IL_006f

      IL_006a:  ldstr      "(logged in)"
      IL_006f:  callvirt   instance void Game.LabelWidget::set_Text(string)
      IL_0074:  ret
    } // end of method '<>c'::'<.ctor>b__0_1'

  } // end of class '<>c'

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string title,
                               bool listingSupportRequired,
                               class [System.Runtime]System.Action`1<class Game.IExternalContentProvider> selectionHandler) cil managed
  {
    // 代码大小       103 (0x67)
    .maxstack  7
    .locals init (class Game.SelectExternalContentProviderDialog/'<>c__DisplayClass0_0' V_0)
    IL_0000:  newobj     instance void Game.SelectExternalContentProviderDialog/'<>c__DisplayClass0_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.2
    IL_0008:  stfld      bool Game.SelectExternalContentProviderDialog/'<>c__DisplayClass0_0'::listingSupportRequired
    IL_000d:  ldloc.0
    IL_000e:  ldarg.3
    IL_000f:  stfld      class [System.Runtime]System.Action`1<class Game.IExternalContentProvider> Game.SelectExternalContentProviderDialog/'<>c__DisplayClass0_0'::selectionHandler
    IL_0014:  ldarg.0
    IL_0015:  ldarg.1
    IL_0016:  call       valuetype [Engine]Engine.ReadOnlyList`1<class Game.IExternalContentProvider> Game.ExternalContentManager::get_Providers()
    IL_001b:  box        valuetype [Engine]Engine.ReadOnlyList`1<class Game.IExternalContentProvider>
    IL_0020:  ldloc.0
    IL_0021:  ldftn      instance bool Game.SelectExternalContentProviderDialog/'<>c__DisplayClass0_0'::'<.ctor>b__0'(class Game.IExternalContentProvider)
    IL_0027:  newobj     instance void class [System.Runtime]System.Func`2<class Game.IExternalContentProvider,bool>::.ctor(object,
                                                                                                                            native int)
    IL_002c:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class Game.IExternalContentProvider>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                             class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0031:  ldc.r4     64.
    IL_0036:  ldsfld     class [System.Runtime]System.Func`2<object,class Game.Widget> Game.SelectExternalContentProviderDialog/'<>c'::'<>9__0_1'
    IL_003b:  dup
    IL_003c:  brtrue.s   IL_0055

    IL_003e:  pop
    IL_003f:  ldsfld     class Game.SelectExternalContentProviderDialog/'<>c' Game.SelectExternalContentProviderDialog/'<>c'::'<>9'
    IL_0044:  ldftn      instance class Game.Widget Game.SelectExternalContentProviderDialog/'<>c'::'<.ctor>b__0_1'(object)
    IL_004a:  newobj     instance void class [System.Runtime]System.Func`2<object,class Game.Widget>::.ctor(object,
                                                                                                            native int)
    IL_004f:  dup
    IL_0050:  stsfld     class [System.Runtime]System.Func`2<object,class Game.Widget> Game.SelectExternalContentProviderDialog/'<>c'::'<>9__0_1'
    IL_0055:  ldloc.0
    IL_0056:  ldftn      instance void Game.SelectExternalContentProviderDialog/'<>c__DisplayClass0_0'::'<.ctor>b__2'(object)
    IL_005c:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_0061:  call       instance void Game.ListSelectionDialog::.ctor(string,
                                                                       class [System.Runtime]System.Collections.IEnumerable,
                                                                       float32,
                                                                       class [System.Runtime]System.Func`2<object,class Game.Widget>,
                                                                       class [System.Runtime]System.Action`1<object>)
    IL_0066:  ret
  } // end of method SelectExternalContentProviderDialog::.ctor

} // end of class Game.SelectExternalContentProviderDialog