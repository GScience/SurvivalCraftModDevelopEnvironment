.class public auto ansi beforefieldinit Game.EditPaletteDialog
       extends Game.Dialog
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass9_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public int32 n
    .field public class Game.EditPaletteDialog '<>4__this'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass9_0'::.ctor

    .method assembly hidebysig instance void 
            '<Update>b__0'(string s) cil managed
    {
      // 代码大小       66 (0x42)
      .maxstack  6
      IL_0000:  ldarg.1
      IL_0001:  brfalse.s  IL_0041

      IL_0003:  ldarg.1
      IL_0004:  call       bool Game.WorldPalette::VerifyColorName(string)
      IL_0009:  brfalse.s  IL_0024

      IL_000b:  ldarg.0
      IL_000c:  ldfld      class Game.EditPaletteDialog Game.EditPaletteDialog/'<>c__DisplayClass9_0'::'<>4__this'
      IL_0011:  ldfld      class Game.WorldPalette Game.EditPaletteDialog::m_tmpPalette
      IL_0016:  ldfld      string[] Game.WorldPalette::Names
      IL_001b:  ldarg.0
      IL_001c:  ldfld      int32 Game.EditPaletteDialog/'<>c__DisplayClass9_0'::n
      IL_0021:  ldarg.1
      IL_0022:  stelem.ref
      IL_0023:  ret

      IL_0024:  ldarg.0
      IL_0025:  ldfld      class Game.EditPaletteDialog Game.EditPaletteDialog/'<>c__DisplayClass9_0'::'<>4__this'
      IL_002a:  ldstr      "Invalid name"
      IL_002f:  ldnull
      IL_0030:  ldstr      "OK"
      IL_0035:  ldnull
      IL_0036:  ldnull
      IL_0037:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_003c:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                                class Game.Dialog)
      IL_0041:  ret
    } // end of method '<>c__DisplayClass9_0'::'<Update>b__0'

    .method assembly hidebysig instance void 
            '<Update>b__1'(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Color> color) cil managed
    {
      // 代码大小       44 (0x2c)
      .maxstack  8
      IL_0000:  ldarga.s   color
      IL_0002:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Color>::get_HasValue()
      IL_0007:  brfalse.s  IL_002b

      IL_0009:  ldarg.0
      IL_000a:  ldfld      class Game.EditPaletteDialog Game.EditPaletteDialog/'<>c__DisplayClass9_0'::'<>4__this'
      IL_000f:  ldfld      class Game.WorldPalette Game.EditPaletteDialog::m_tmpPalette
      IL_0014:  ldfld      valuetype [Engine]Engine.Color[] Game.WorldPalette::Colors
      IL_0019:  ldarg.0
      IL_001a:  ldfld      int32 Game.EditPaletteDialog/'<>c__DisplayClass9_0'::n
      IL_001f:  ldarga.s   color
      IL_0021:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Color>::get_Value()
      IL_0026:  stelem     [Engine]Engine.Color
      IL_002b:  ret
    } // end of method '<>c__DisplayClass9_0'::'<Update>b__1'

  } // end of class '<>c__DisplayClass9_0'

  .field private class Game.ContainerWidget m_listPanel
  .field private class Game.ButtonWidget m_okButton
  .field private class Game.ButtonWidget m_cancelButton
  .field private class Game.LinkWidget[] m_labels
  .field private class Game.BevelledButtonWidget[] m_rectangles
  .field private class Game.ButtonWidget[] m_resetButtons
  .field private class Game.WorldPalette m_palette
  .field private class Game.WorldPalette m_tmpPalette
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.WorldPalette palette) cil managed
  {
    // 代码大小       718 (0x2ce)
    .maxstack  8
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0,
             int32 V_1,
             class Game.StackPanelWidget V_2,
             int32 V_3,
             class Game.LinkWidget V_4,
             class Game.BevelledButtonWidget V_5,
             class Game.ButtonWidget V_6)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   16
    IL_0003:  newarr     Game.LinkWidget
    IL_0008:  stfld      class Game.LinkWidget[] Game.EditPaletteDialog::m_labels
    IL_000d:  ldarg.0
    IL_000e:  ldc.i4.s   16
    IL_0010:  newarr     Game.BevelledButtonWidget
    IL_0015:  stfld      class Game.BevelledButtonWidget[] Game.EditPaletteDialog::m_rectangles
    IL_001a:  ldarg.0
    IL_001b:  ldc.i4.s   16
    IL_001d:  newarr     Game.ButtonWidget
    IL_0022:  stfld      class Game.ButtonWidget[] Game.EditPaletteDialog::m_resetButtons
    IL_0027:  ldarg.0
    IL_0028:  call       instance void Game.Dialog::.ctor()
    IL_002d:  ldstr      "Dialogs/EditPaletteDialog"
    IL_0032:  call       !!0 Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0037:  stloc.0
    IL_0038:  ldarg.0
    IL_0039:  ldarg.0
    IL_003a:  ldloc.0
    IL_003b:  call       void Game.WidgetsManager::LoadWidgetContents(class Game.Widget,
                                                                      object,
                                                                      class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0040:  ldarg.0
    IL_0041:  ldarg.0
    IL_0042:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0047:  ldstr      "EditPaletteDialog.ListPanel"
    IL_004c:  ldc.i4.1
    IL_004d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ContainerWidget>(string,
                                                                                         bool)
    IL_0052:  stfld      class Game.ContainerWidget Game.EditPaletteDialog::m_listPanel
    IL_0057:  ldarg.0
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_005e:  ldstr      "EditPaletteDialog.OK"
    IL_0063:  ldc.i4.1
    IL_0064:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0069:  stfld      class Game.ButtonWidget Game.EditPaletteDialog::m_okButton
    IL_006e:  ldarg.0
    IL_006f:  ldarg.0
    IL_0070:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0075:  ldstr      "EditPaletteDialog.Cancel"
    IL_007a:  ldc.i4.1
    IL_007b:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0080:  stfld      class Game.ButtonWidget Game.EditPaletteDialog::m_cancelButton
    IL_0085:  ldc.i4.0
    IL_0086:  stloc.1
    IL_0087:  br         IL_02a2

    IL_008c:  newobj     instance void Game.StackPanelWidget::.ctor()
    IL_0091:  dup
    IL_0092:  ldc.i4.0
    IL_0093:  callvirt   instance void Game.StackPanelWidget::set_Direction(valuetype Game.LayoutDirection)
    IL_0098:  dup
    IL_0099:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_009e:  newobj     instance void Game.CanvasWidget::.ctor()
    IL_00a3:  dup
    IL_00a4:  ldc.r4     32.
    IL_00a9:  ldc.r4     60.
    IL_00ae:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00b3:  callvirt   instance void Game.CanvasWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_00b8:  dup
    IL_00b9:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00be:  newobj     instance void Game.LabelWidget::.ctor()
    IL_00c3:  dup
    IL_00c4:  ldloc.1
    IL_00c5:  ldc.i4.1
    IL_00c6:  add
    IL_00c7:  stloc.3
    IL_00c8:  ldloca.s   V_3
    IL_00ca:  call       instance string [System.Runtime]System.Int32::ToString()
    IL_00cf:  ldstr      "."
    IL_00d4:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_00d9:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_00de:  dup
    IL_00df:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Gray
    IL_00e4:  callvirt   instance void Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_00e9:  dup
    IL_00ea:  ldc.i4.2
    IL_00eb:  callvirt   instance void Game.Widget::set_HorizontalAlignment(valuetype Game.WidgetAlignment)
    IL_00f0:  dup
    IL_00f1:  ldc.i4.1
    IL_00f2:  callvirt   instance void Game.Widget::set_VerticalAlignment(valuetype Game.WidgetAlignment)
    IL_00f7:  dup
    IL_00f8:  ldstr      "Fonts/Pericles24"
    IL_00fd:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Media.BitmapFont>(string)
    IL_0102:  callvirt   instance void Game.LabelWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
    IL_0107:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_010c:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_0111:  dup
    IL_0112:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0117:  newobj     instance void Game.CanvasWidget::.ctor()
    IL_011c:  dup
    IL_011d:  ldc.r4     10.
    IL_0122:  ldc.r4     0.0
    IL_0127:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_012c:  callvirt   instance void Game.CanvasWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_0131:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_0136:  dup
    IL_0137:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_013c:  ldarg.0
    IL_013d:  ldfld      class Game.LinkWidget[] Game.EditPaletteDialog::m_labels
    IL_0142:  ldloc.1
    IL_0143:  newobj     instance void Game.LinkWidget::.ctor()
    IL_0148:  dup
    IL_0149:  ldc.r4     300.
    IL_014e:  ldc.r4     -1.
    IL_0153:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0158:  callvirt   instance void Game.LinkWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_015d:  dup
    IL_015e:  ldc.i4.1
    IL_015f:  callvirt   instance void Game.Widget::set_VerticalAlignment(valuetype Game.WidgetAlignment)
    IL_0164:  dup
    IL_0165:  ldstr      "Fonts/Pericles24"
    IL_016a:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Media.BitmapFont>(string)
    IL_016f:  callvirt   instance void Game.LinkWidget::set_Font(class [Engine]Engine.Media.BitmapFont)
    IL_0174:  dup
    IL_0175:  stloc.s    V_4
    IL_0177:  stelem.ref
    IL_0178:  ldloc.s    V_4
    IL_017a:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_017f:  dup
    IL_0180:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0185:  newobj     instance void Game.CanvasWidget::.ctor()
    IL_018a:  dup
    IL_018b:  ldc.r4     10.
    IL_0190:  ldc.r4     0.0
    IL_0195:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_019a:  callvirt   instance void Game.CanvasWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_019f:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_01a4:  dup
    IL_01a5:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_01aa:  ldarg.0
    IL_01ab:  ldfld      class Game.BevelledButtonWidget[] Game.EditPaletteDialog::m_rectangles
    IL_01b0:  ldloc.1
    IL_01b1:  newobj     instance void Game.BevelledButtonWidget::.ctor()
    IL_01b6:  dup
    IL_01b7:  ldc.r4     (00 00 80 7F)
    IL_01bc:  ldc.r4     60.
    IL_01c1:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01c6:  callvirt   instance void Game.CanvasWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_01cb:  dup
    IL_01cc:  ldc.r4     1.
    IL_01d1:  callvirt   instance void Game.BevelledButtonWidget::set_BevelSize(float32)
    IL_01d6:  dup
    IL_01d7:  ldc.r4     1.
    IL_01dc:  callvirt   instance void Game.BevelledButtonWidget::set_AmbientLight(float32)
    IL_01e1:  dup
    IL_01e2:  ldc.r4     0.40000001
    IL_01e7:  callvirt   instance void Game.BevelledButtonWidget::set_DirectionalLight(float32)
    IL_01ec:  dup
    IL_01ed:  ldc.i4.1
    IL_01ee:  callvirt   instance void Game.Widget::set_VerticalAlignment(valuetype Game.WidgetAlignment)
    IL_01f3:  dup
    IL_01f4:  stloc.s    V_5
    IL_01f6:  stelem.ref
    IL_01f7:  ldloc.s    V_5
    IL_01f9:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_01fe:  dup
    IL_01ff:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0204:  newobj     instance void Game.CanvasWidget::.ctor()
    IL_0209:  dup
    IL_020a:  ldc.r4     10.
    IL_020f:  ldc.r4     0.0
    IL_0214:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0219:  callvirt   instance void Game.CanvasWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_021e:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_0223:  dup
    IL_0224:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0229:  ldarg.0
    IL_022a:  ldfld      class Game.ButtonWidget[] Game.EditPaletteDialog::m_resetButtons
    IL_022f:  ldloc.1
    IL_0230:  newobj     instance void Game.BevelledButtonWidget::.ctor()
    IL_0235:  dup
    IL_0236:  ldc.r4     160.
    IL_023b:  ldc.r4     60.
    IL_0240:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0245:  callvirt   instance void Game.CanvasWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_024a:  dup
    IL_024b:  ldc.i4.1
    IL_024c:  callvirt   instance void Game.Widget::set_VerticalAlignment(valuetype Game.WidgetAlignment)
    IL_0251:  dup
    IL_0252:  ldstr      "Reset"
    IL_0257:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_025c:  dup
    IL_025d:  stloc.s    V_6
    IL_025f:  stelem.ref
    IL_0260:  ldloc.s    V_6
    IL_0262:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_0267:  dup
    IL_0268:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_026d:  newobj     instance void Game.CanvasWidget::.ctor()
    IL_0272:  dup
    IL_0273:  ldc.r4     10.
    IL_0278:  ldc.r4     0.0
    IL_027d:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0282:  callvirt   instance void Game.CanvasWidget::set_Size(valuetype [Engine]Engine.Vector2)
    IL_0287:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_028c:  stloc.2
    IL_028d:  ldarg.0
    IL_028e:  ldfld      class Game.ContainerWidget Game.EditPaletteDialog::m_listPanel
    IL_0293:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0298:  ldloc.2
    IL_0299:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_029e:  ldloc.1
    IL_029f:  ldc.i4.1
    IL_02a0:  add
    IL_02a1:  stloc.1
    IL_02a2:  ldloc.1
    IL_02a3:  ldc.i4.s   16
    IL_02a5:  blt        IL_008c

    IL_02aa:  ldarg.0
    IL_02ab:  ldarg.1
    IL_02ac:  stfld      class Game.WorldPalette Game.EditPaletteDialog::m_palette
    IL_02b1:  ldarg.0
    IL_02b2:  newobj     instance void Game.WorldPalette::.ctor()
    IL_02b7:  stfld      class Game.WorldPalette Game.EditPaletteDialog::m_tmpPalette
    IL_02bc:  ldarg.0
    IL_02bd:  ldfld      class Game.WorldPalette Game.EditPaletteDialog::m_palette
    IL_02c2:  ldarg.0
    IL_02c3:  ldfld      class Game.WorldPalette Game.EditPaletteDialog::m_tmpPalette
    IL_02c8:  callvirt   instance void Game.WorldPalette::CopyTo(class Game.WorldPalette)
    IL_02cd:  ret
  } // end of method EditPaletteDialog::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       435 (0x1b3)
    .maxstack  6
    .locals init (int32 V_0,
             int32 V_1,
             class Game.EditPaletteDialog/'<>c__DisplayClass9_0' V_2)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br         IL_008f

    IL_0007:  ldarg.0
    IL_0008:  ldfld      class Game.LinkWidget[] Game.EditPaletteDialog::m_labels
    IL_000d:  ldloc.0
    IL_000e:  ldelem.ref
    IL_000f:  ldarg.0
    IL_0010:  ldfld      class Game.WorldPalette Game.EditPaletteDialog::m_tmpPalette
    IL_0015:  ldfld      string[] Game.WorldPalette::Names
    IL_001a:  ldloc.0
    IL_001b:  ldelem.ref
    IL_001c:  callvirt   instance void Game.LinkWidget::set_Text(string)
    IL_0021:  ldarg.0
    IL_0022:  ldfld      class Game.BevelledButtonWidget[] Game.EditPaletteDialog::m_rectangles
    IL_0027:  ldloc.0
    IL_0028:  ldelem.ref
    IL_0029:  ldarg.0
    IL_002a:  ldfld      class Game.WorldPalette Game.EditPaletteDialog::m_tmpPalette
    IL_002f:  ldfld      valuetype [Engine]Engine.Color[] Game.WorldPalette::Colors
    IL_0034:  ldloc.0
    IL_0035:  ldelem     [Engine]Engine.Color
    IL_003a:  callvirt   instance void Game.BevelledButtonWidget::set_CenterColor(valuetype [Engine]Engine.Color)
    IL_003f:  ldarg.0
    IL_0040:  ldfld      class Game.ButtonWidget[] Game.EditPaletteDialog::m_resetButtons
    IL_0045:  ldloc.0
    IL_0046:  ldelem.ref
    IL_0047:  ldarg.0
    IL_0048:  ldfld      class Game.WorldPalette Game.EditPaletteDialog::m_tmpPalette
    IL_004d:  ldfld      valuetype [Engine]Engine.Color[] Game.WorldPalette::Colors
    IL_0052:  ldloc.0
    IL_0053:  ldelem     [Engine]Engine.Color
    IL_0058:  ldsfld     valuetype [Engine]Engine.Color[] Game.WorldPalette::DefaultColors
    IL_005d:  ldloc.0
    IL_005e:  ldelem     [Engine]Engine.Color
    IL_0063:  call       bool [Engine]Engine.Color::op_Inequality(valuetype [Engine]Engine.Color,
                                                                  valuetype [Engine]Engine.Color)
    IL_0068:  brtrue.s   IL_0085

    IL_006a:  ldarg.0
    IL_006b:  ldfld      class Game.WorldPalette Game.EditPaletteDialog::m_tmpPalette
    IL_0070:  ldfld      string[] Game.WorldPalette::Names
    IL_0075:  ldloc.0
    IL_0076:  ldelem.ref
    IL_0077:  ldsfld     string[] Game.WorldPalette::DefaultNames
    IL_007c:  ldloc.0
    IL_007d:  ldelem.ref
    IL_007e:  call       bool [System.Runtime]System.String::op_Inequality(string,
                                                                           string)
    IL_0083:  br.s       IL_0086

    IL_0085:  ldc.i4.1
    IL_0086:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_008b:  ldloc.0
    IL_008c:  ldc.i4.1
    IL_008d:  add
    IL_008e:  stloc.0
    IL_008f:  ldloc.0
    IL_0090:  ldc.i4.s   16
    IL_0092:  blt        IL_0007

    IL_0097:  ldc.i4.0
    IL_0098:  stloc.1
    IL_0099:  br         IL_0166

    IL_009e:  newobj     instance void Game.EditPaletteDialog/'<>c__DisplayClass9_0'::.ctor()
    IL_00a3:  stloc.2
    IL_00a4:  ldloc.2
    IL_00a5:  ldarg.0
    IL_00a6:  stfld      class Game.EditPaletteDialog Game.EditPaletteDialog/'<>c__DisplayClass9_0'::'<>4__this'
    IL_00ab:  ldloc.2
    IL_00ac:  ldloc.1
    IL_00ad:  stfld      int32 Game.EditPaletteDialog/'<>c__DisplayClass9_0'::n
    IL_00b2:  ldarg.0
    IL_00b3:  ldfld      class Game.LinkWidget[] Game.EditPaletteDialog::m_labels
    IL_00b8:  ldloc.1
    IL_00b9:  ldelem.ref
    IL_00ba:  callvirt   instance bool Game.LinkWidget::get_IsClicked()
    IL_00bf:  brfalse.s  IL_00ec

    IL_00c1:  ldarg.0
    IL_00c2:  ldstr      "Edit Color Name"
    IL_00c7:  ldarg.0
    IL_00c8:  ldfld      class Game.LinkWidget[] Game.EditPaletteDialog::m_labels
    IL_00cd:  ldloc.1
    IL_00ce:  ldelem.ref
    IL_00cf:  callvirt   instance string Game.LinkWidget::get_Text()
    IL_00d4:  ldc.i4.s   16
    IL_00d6:  ldloc.2
    IL_00d7:  ldftn      instance void Game.EditPaletteDialog/'<>c__DisplayClass9_0'::'<Update>b__0'(string)
    IL_00dd:  newobj     instance void class [System.Runtime]System.Action`1<string>::.ctor(object,
                                                                                            native int)
    IL_00e2:  newobj     instance void Game.TextBoxDialog::.ctor(string,
                                                                 string,
                                                                 int32,
                                                                 class [System.Runtime]System.Action`1<string>)
    IL_00e7:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_00ec:  ldarg.0
    IL_00ed:  ldfld      class Game.BevelledButtonWidget[] Game.EditPaletteDialog::m_rectangles
    IL_00f2:  ldloc.1
    IL_00f3:  ldelem.ref
    IL_00f4:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_00f9:  brfalse.s  IL_0123

    IL_00fb:  ldarg.0
    IL_00fc:  ldarg.0
    IL_00fd:  ldfld      class Game.WorldPalette Game.EditPaletteDialog::m_tmpPalette
    IL_0102:  ldfld      valuetype [Engine]Engine.Color[] Game.WorldPalette::Colors
    IL_0107:  ldloc.1
    IL_0108:  ldelem     [Engine]Engine.Color
    IL_010d:  ldloc.2
    IL_010e:  ldftn      instance void Game.EditPaletteDialog/'<>c__DisplayClass9_0'::'<Update>b__1'(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Color>)
    IL_0114:  newobj     instance void class [System.Runtime]System.Action`1<valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Color>>::.ctor(object,
                                                                                                                                                                 native int)
    IL_0119:  newobj     instance void Game.EditColorDialog::.ctor(valuetype [Engine]Engine.Color,
                                                                   class [System.Runtime]System.Action`1<valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Color>>)
    IL_011e:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_0123:  ldarg.0
    IL_0124:  ldfld      class Game.ButtonWidget[] Game.EditPaletteDialog::m_resetButtons
    IL_0129:  ldloc.1
    IL_012a:  ldelem.ref
    IL_012b:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0130:  brfalse.s  IL_0162

    IL_0132:  ldarg.0
    IL_0133:  ldfld      class Game.WorldPalette Game.EditPaletteDialog::m_tmpPalette
    IL_0138:  ldfld      valuetype [Engine]Engine.Color[] Game.WorldPalette::Colors
    IL_013d:  ldloc.1
    IL_013e:  ldsfld     valuetype [Engine]Engine.Color[] Game.WorldPalette::DefaultColors
    IL_0143:  ldloc.1
    IL_0144:  ldelem     [Engine]Engine.Color
    IL_0149:  stelem     [Engine]Engine.Color
    IL_014e:  ldarg.0
    IL_014f:  ldfld      class Game.WorldPalette Game.EditPaletteDialog::m_tmpPalette
    IL_0154:  ldfld      string[] Game.WorldPalette::Names
    IL_0159:  ldloc.1
    IL_015a:  ldsfld     string[] Game.WorldPalette::DefaultNames
    IL_015f:  ldloc.1
    IL_0160:  ldelem.ref
    IL_0161:  stelem.ref
    IL_0162:  ldloc.1
    IL_0163:  ldc.i4.1
    IL_0164:  add
    IL_0165:  stloc.1
    IL_0166:  ldloc.1
    IL_0167:  ldc.i4.s   16
    IL_0169:  blt        IL_009e

    IL_016e:  ldarg.0
    IL_016f:  ldfld      class Game.ButtonWidget Game.EditPaletteDialog::m_okButton
    IL_0174:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0179:  brfalse.s  IL_0192

    IL_017b:  ldarg.0
    IL_017c:  ldfld      class Game.WorldPalette Game.EditPaletteDialog::m_tmpPalette
    IL_0181:  ldarg.0
    IL_0182:  ldfld      class Game.WorldPalette Game.EditPaletteDialog::m_palette
    IL_0187:  callvirt   instance void Game.WorldPalette::CopyTo(class Game.WorldPalette)
    IL_018c:  ldarg.0
    IL_018d:  call       instance void Game.EditPaletteDialog::Dismiss()
    IL_0192:  ldarg.0
    IL_0193:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0198:  callvirt   instance bool Game.WidgetInput::get_Cancel()
    IL_019d:  brtrue.s   IL_01ac

    IL_019f:  ldarg.0
    IL_01a0:  ldfld      class Game.ButtonWidget Game.EditPaletteDialog::m_cancelButton
    IL_01a5:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_01aa:  brfalse.s  IL_01b2

    IL_01ac:  ldarg.0
    IL_01ad:  call       instance void Game.EditPaletteDialog::Dismiss()
    IL_01b2:  ret
  } // end of method EditPaletteDialog::Update

  .method private hidebysig instance void 
          Dismiss() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_0006:  ret
  } // end of method EditPaletteDialog::Dismiss

} // end of class Game.EditPaletteDialog