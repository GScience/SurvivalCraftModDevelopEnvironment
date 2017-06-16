.class public auto ansi beforefieldinit Game.SelectExternalContentProviderDialog
       extends Game.ListSelectionDialog
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass0_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
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

    .method assembly hidebysig instance void 
            '<.ctor>b__1'(object item) cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Runtime]System.Action`1<class Game.IExternalContentProvider> Game.SelectExternalContentProviderDialog/'<>c__DisplayClass0_0'::selectionHandler
      IL_0006:  ldarg.1
      IL_0007:  castclass  Game.IExternalContentProvider
      IL_000c:  callvirt   instance void class [System.Runtime]System.Action`1<class Game.IExternalContentProvider>::Invoke(!0)
      IL_0011:  ret
    } // end of method '<>c__DisplayClass0_0'::'<.ctor>b__1'

  } // end of class '<>c__DisplayClass0_0'

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.SelectExternalContentProviderDialog/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<object,class Game.Widget> '<>9__0_0'
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
            '<.ctor>b__0_0'(object item) cil managed
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
      IL_0020:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
      IL_0025:  ldstr      "SelectExternalContentProvider.Text"
      IL_002a:  ldc.i4.1
      IL_002b:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                            bool)
      IL_0030:  ldloc.0
      IL_0031:  callvirt   instance string Game.IExternalContentProvider::get_DisplayName()
      IL_0036:  callvirt   instance void Game.LabelWidget::set_Text(string)
      IL_003b:  dup
      IL_003c:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
      IL_0041:  ldstr      "SelectExternalContentProvider.Details"
      IL_0046:  ldc.i4.1
      IL_0047:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
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
    } // end of method '<>c'::'<.ctor>b__0_0'

  } // end of class '<>c'

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string title,
                               class [System.Runtime]System.Action`1<class Game.IExternalContentProvider> selectionHandler) cil managed
  {
    // 代码大小       79 (0x4f)
    .maxstack  7
    .locals init (class Game.SelectExternalContentProviderDialog/'<>c__DisplayClass0_0' V_0)
    IL_0000:  newobj     instance void Game.SelectExternalContentProviderDialog/'<>c__DisplayClass0_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.2
    IL_0008:  stfld      class [System.Runtime]System.Action`1<class Game.IExternalContentProvider> Game.SelectExternalContentProviderDialog/'<>c__DisplayClass0_0'::selectionHandler
    IL_000d:  ldarg.0
    IL_000e:  ldarg.1
    IL_000f:  call       valuetype [Engine]Engine.ReadOnlyList`1<class Game.IExternalContentProvider> Game.ExternalContentManager::get_Providers()
    IL_0014:  box        valuetype [Engine]Engine.ReadOnlyList`1<class Game.IExternalContentProvider>
    IL_0019:  ldc.r4     64.
    IL_001e:  ldsfld     class [System.Runtime]System.Func`2<object,class Game.Widget> Game.SelectExternalContentProviderDialog/'<>c'::'<>9__0_0'
    IL_0023:  dup
    IL_0024:  brtrue.s   IL_003d

    IL_0026:  pop
    IL_0027:  ldsfld     class Game.SelectExternalContentProviderDialog/'<>c' Game.SelectExternalContentProviderDialog/'<>c'::'<>9'
    IL_002c:  ldftn      instance class Game.Widget Game.SelectExternalContentProviderDialog/'<>c'::'<.ctor>b__0_0'(object)
    IL_0032:  newobj     instance void class [System.Runtime]System.Func`2<object,class Game.Widget>::.ctor(object,
                                                                                                            native int)
    IL_0037:  dup
    IL_0038:  stsfld     class [System.Runtime]System.Func`2<object,class Game.Widget> Game.SelectExternalContentProviderDialog/'<>c'::'<>9__0_0'
    IL_003d:  ldloc.0
    IL_003e:  ldftn      instance void Game.SelectExternalContentProviderDialog/'<>c__DisplayClass0_0'::'<.ctor>b__1'(object)
    IL_0044:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_0049:  call       instance void Game.ListSelectionDialog::.ctor(string,
                                                                       class [System.Runtime]System.Collections.IEnumerable,
                                                                       float32,
                                                                       class [System.Runtime]System.Func`2<object,class Game.Widget>,
                                                                       class [System.Runtime]System.Action`1<object>)
    IL_004e:  ret
  } // end of method SelectExternalContentProviderDialog::.ctor

} // end of class Game.SelectExternalContentProviderDialog