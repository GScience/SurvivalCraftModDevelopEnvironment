.class public auto ansi beforefieldinit Game.BuildFurnitureDialog
       extends Game.Dialog
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.BuildFurnitureDialog/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<class Game.BlockMesh,int32> '<>9__22_0'
    .field public static class [System.Runtime]System.Func`2<class Game.BlockMesh,int32> '<>9__22_1'
    .field public static class [System.Runtime]System.Func`2<object,string> '<>9__23_6'
    .field public static class [System.Runtime]System.Action`1<object> '<>9__23_7'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.BuildFurnitureDialog/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.BuildFurnitureDialog/'<>c' Game.BuildFurnitureDialog/'<>c'::'<>9'
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

    .method assembly hidebysig instance int32 
            '<.ctor>b__22_0'(class Game.BlockMesh b) cil managed
    {
      // 代码大小       19 (0x13)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  brtrue.s   IL_0005

      IL_0003:  ldc.i4.0
      IL_0004:  ret

      IL_0005:  ldarg.1
      IL_0006:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
      IL_000b:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
      IL_0010:  ldc.i4.3
      IL_0011:  div
      IL_0012:  ret
    } // end of method '<>c'::'<.ctor>b__22_0'

    .method assembly hidebysig instance int32 
            '<.ctor>b__22_1'(class Game.BlockMesh b) cil managed
    {
      // 代码大小       19 (0x13)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  brtrue.s   IL_0005

      IL_0003:  ldc.i4.0
      IL_0004:  ret

      IL_0005:  ldarg.1
      IL_0006:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
      IL_000b:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
      IL_0010:  ldc.i4.3
      IL_0011:  div
      IL_0012:  ret
    } // end of method '<>c'::'<.ctor>b__22_1'

    .method assembly hidebysig instance string 
            '<Update>b__23_6'(object t) cil managed
    {
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  castclass  class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>
      IL_0006:  callvirt   instance !0 class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>::get_Item1()
      IL_000b:  ret
    } // end of method '<>c'::'<Update>b__23_6'

    .method assembly hidebysig instance void 
            '<Update>b__23_7'(object t) cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  castclass  class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>
      IL_0006:  callvirt   instance !1 class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>::get_Item2()
      IL_000b:  callvirt   instance void [System.Runtime]System.Action::Invoke()
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__23_7'

  } // end of class '<>c'

  .field private class Game.FurnitureDesign m_design
  .field private class Game.FurnitureDesign m_sourceDesign
  .field private int32 m_axis
  .field private class [System.Runtime]System.Action`1<bool> m_handler
  .field private bool m_isValid
  .field private class Game.LabelWidget m_nameLabel
  .field private class Game.LabelWidget m_statusLabel
  .field private class Game.FurnitureDesignWidget m_designWidget2d
  .field private class Game.FurnitureDesignWidget m_designWidget3d
  .field private class Game.ButtonWidget m_axisButton
  .field private class Game.ButtonWidget m_leftButton
  .field private class Game.ButtonWidget m_rightButton
  .field private class Game.ButtonWidget m_upButton
  .field private class Game.ButtonWidget m_downButton
  .field private class Game.ButtonWidget m_mirrorButton
  .field private class Game.ButtonWidget m_turnRightButton
  .field private class Game.ButtonWidget m_increaseResolutionButton
  .field private class Game.ButtonWidget m_decreaseResolutionButton
  .field private class Game.LabelWidget m_resolutionLabel
  .field private class Game.ButtonWidget m_nameButton
  .field private class Game.ButtonWidget m_buildButton
  .field private class Game.ButtonWidget m_cancelButton
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.FurnitureDesign design,
                               class Game.FurnitureDesign sourceDesign,
                               class [System.Runtime]System.Action`1<bool> 'handler') cil managed
  {
    // 代码大小       680 (0x2a8)
    .maxstack  6
    .locals init (class [System.Xml.XDocument]System.Xml.Linq.XElement V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Dialog::.ctor()
    IL_0006:  ldstr      "Dialogs/BuildFurnitureDialog"
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
    IL_0020:  ldstr      "BuildFurnitureDialog.Name"
    IL_0025:  ldc.i4.1
    IL_0026:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_002b:  stfld      class Game.LabelWidget Game.BuildFurnitureDialog::m_nameLabel
    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0037:  ldstr      "BuildFurnitureDialog.Status"
    IL_003c:  ldc.i4.1
    IL_003d:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_0042:  stfld      class Game.LabelWidget Game.BuildFurnitureDialog::m_statusLabel
    IL_0047:  ldarg.0
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_004e:  ldstr      "BuildFurnitureDialog.Design2d"
    IL_0053:  ldc.i4.1
    IL_0054:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.FurnitureDesignWidget>(string,
                                                                                               bool)
    IL_0059:  stfld      class Game.FurnitureDesignWidget Game.BuildFurnitureDialog::m_designWidget2d
    IL_005e:  ldarg.0
    IL_005f:  ldarg.0
    IL_0060:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0065:  ldstr      "BuildFurnitureDialog.Design3d"
    IL_006a:  ldc.i4.1
    IL_006b:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.FurnitureDesignWidget>(string,
                                                                                               bool)
    IL_0070:  stfld      class Game.FurnitureDesignWidget Game.BuildFurnitureDialog::m_designWidget3d
    IL_0075:  ldarg.0
    IL_0076:  ldarg.0
    IL_0077:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_007c:  ldstr      "BuildFurnitureDialog.NameButton"
    IL_0081:  ldc.i4.1
    IL_0082:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0087:  stfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_nameButton
    IL_008c:  ldarg.0
    IL_008d:  ldarg.0
    IL_008e:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0093:  ldstr      "BuildFurnitureDialog.AxisButton"
    IL_0098:  ldc.i4.1
    IL_0099:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_009e:  stfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_axisButton
    IL_00a3:  ldarg.0
    IL_00a4:  ldarg.0
    IL_00a5:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00aa:  ldstr      "BuildFurnitureDialog.LeftButton"
    IL_00af:  ldc.i4.1
    IL_00b0:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_00b5:  stfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_leftButton
    IL_00ba:  ldarg.0
    IL_00bb:  ldarg.0
    IL_00bc:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00c1:  ldstr      "BuildFurnitureDialog.RightButton"
    IL_00c6:  ldc.i4.1
    IL_00c7:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_00cc:  stfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_rightButton
    IL_00d1:  ldarg.0
    IL_00d2:  ldarg.0
    IL_00d3:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00d8:  ldstr      "BuildFurnitureDialog.UpButton"
    IL_00dd:  ldc.i4.1
    IL_00de:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_00e3:  stfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_upButton
    IL_00e8:  ldarg.0
    IL_00e9:  ldarg.0
    IL_00ea:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_00ef:  ldstr      "BuildFurnitureDialog.DownButton"
    IL_00f4:  ldc.i4.1
    IL_00f5:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_00fa:  stfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_downButton
    IL_00ff:  ldarg.0
    IL_0100:  ldarg.0
    IL_0101:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0106:  ldstr      "BuildFurnitureDialog.MirrorButton"
    IL_010b:  ldc.i4.1
    IL_010c:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0111:  stfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_mirrorButton
    IL_0116:  ldarg.0
    IL_0117:  ldarg.0
    IL_0118:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_011d:  ldstr      "BuildFurnitureDialog.TurnRightButton"
    IL_0122:  ldc.i4.1
    IL_0123:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0128:  stfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_turnRightButton
    IL_012d:  ldarg.0
    IL_012e:  ldarg.0
    IL_012f:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0134:  ldstr      "BuildFurnitureDialog.IncreaseResolutionButton"
    IL_0139:  ldc.i4.1
    IL_013a:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_013f:  stfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_increaseResolutionButton
    IL_0144:  ldarg.0
    IL_0145:  ldarg.0
    IL_0146:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_014b:  ldstr      "BuildFurnitureDialog.DecreaseResolutionButton"
    IL_0150:  ldc.i4.1
    IL_0151:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0156:  stfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_decreaseResolutionButton
    IL_015b:  ldarg.0
    IL_015c:  ldarg.0
    IL_015d:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0162:  ldstr      "BuildFurnitureDialog.ResolutionLabel"
    IL_0167:  ldc.i4.1
    IL_0168:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.LabelWidget>(string,
                                                                                     bool)
    IL_016d:  stfld      class Game.LabelWidget Game.BuildFurnitureDialog::m_resolutionLabel
    IL_0172:  ldarg.0
    IL_0173:  ldarg.0
    IL_0174:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0179:  ldstr      "BuildFurnitureDialog.CancelButton"
    IL_017e:  ldc.i4.1
    IL_017f:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_0184:  stfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_cancelButton
    IL_0189:  ldarg.0
    IL_018a:  ldarg.0
    IL_018b:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0190:  ldstr      "BuildFurnitureDialog.BuildButton"
    IL_0195:  ldc.i4.1
    IL_0196:  callvirt   instance !!0 Game.WidgetsList::Find<class Game.ButtonWidget>(string,
                                                                                      bool)
    IL_019b:  stfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_buildButton
    IL_01a0:  ldarg.0
    IL_01a1:  ldarg.3
    IL_01a2:  stfld      class [System.Runtime]System.Action`1<bool> Game.BuildFurnitureDialog::m_handler
    IL_01a7:  ldarg.0
    IL_01a8:  ldarg.1
    IL_01a9:  stfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
    IL_01ae:  ldarg.0
    IL_01af:  ldarg.2
    IL_01b0:  stfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_sourceDesign
    IL_01b5:  ldarg.0
    IL_01b6:  ldc.i4.1
    IL_01b7:  stfld      int32 Game.BuildFurnitureDialog::m_axis
    IL_01bc:  ldc.i4.0
    IL_01bd:  stloc.1
    IL_01be:  ldloc.1
    IL_01bf:  ldarg.0
    IL_01c0:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
    IL_01c5:  callvirt   instance class Game.FurnitureGeometry Game.FurnitureDesign::get_Geometry()
    IL_01ca:  ldfld      class Game.BlockMesh[] Game.FurnitureGeometry::SubsetOpaqueByFace
    IL_01cf:  ldsfld     class [System.Runtime]System.Func`2<class Game.BlockMesh,int32> Game.BuildFurnitureDialog/'<>c'::'<>9__22_0'
    IL_01d4:  dup
    IL_01d5:  brtrue.s   IL_01ee

    IL_01d7:  pop
    IL_01d8:  ldsfld     class Game.BuildFurnitureDialog/'<>c' Game.BuildFurnitureDialog/'<>c'::'<>9'
    IL_01dd:  ldftn      instance int32 Game.BuildFurnitureDialog/'<>c'::'<.ctor>b__22_0'(class Game.BlockMesh)
    IL_01e3:  newobj     instance void class [System.Runtime]System.Func`2<class Game.BlockMesh,int32>::.ctor(object,
                                                                                                              native int)
    IL_01e8:  dup
    IL_01e9:  stsfld     class [System.Runtime]System.Func`2<class Game.BlockMesh,int32> Game.BuildFurnitureDialog/'<>c'::'<>9__22_0'
    IL_01ee:  call       int32 [System.Linq]System.Linq.Enumerable::Sum<class Game.BlockMesh>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                              class [System.Runtime]System.Func`2<!!0,int32>)
    IL_01f3:  add
    IL_01f4:  stloc.1
    IL_01f5:  ldloc.1
    IL_01f6:  ldarg.0
    IL_01f7:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
    IL_01fc:  callvirt   instance class Game.FurnitureGeometry Game.FurnitureDesign::get_Geometry()
    IL_0201:  ldfld      class Game.BlockMesh[] Game.FurnitureGeometry::SubsetAlphaTestByFace
    IL_0206:  ldsfld     class [System.Runtime]System.Func`2<class Game.BlockMesh,int32> Game.BuildFurnitureDialog/'<>c'::'<>9__22_1'
    IL_020b:  dup
    IL_020c:  brtrue.s   IL_0225

    IL_020e:  pop
    IL_020f:  ldsfld     class Game.BuildFurnitureDialog/'<>c' Game.BuildFurnitureDialog/'<>c'::'<>9'
    IL_0214:  ldftn      instance int32 Game.BuildFurnitureDialog/'<>c'::'<.ctor>b__22_1'(class Game.BlockMesh)
    IL_021a:  newobj     instance void class [System.Runtime]System.Func`2<class Game.BlockMesh,int32>::.ctor(object,
                                                                                                              native int)
    IL_021f:  dup
    IL_0220:  stsfld     class [System.Runtime]System.Func`2<class Game.BlockMesh,int32> Game.BuildFurnitureDialog/'<>c'::'<>9__22_1'
    IL_0225:  call       int32 [System.Linq]System.Linq.Enumerable::Sum<class Game.BlockMesh>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                              class [System.Runtime]System.Func`2<!!0,int32>)
    IL_022a:  add
    IL_022b:  stloc.1
    IL_022c:  ldarg.0
    IL_022d:  ldloc.1
    IL_022e:  ldc.i4     0x12c
    IL_0233:  cgt
    IL_0235:  ldc.i4.0
    IL_0236:  ceq
    IL_0238:  stfld      bool Game.BuildFurnitureDialog::m_isValid
    IL_023d:  ldarg.0
    IL_023e:  ldfld      class Game.LabelWidget Game.BuildFurnitureDialog::m_statusLabel
    IL_0243:  ldstr      "Complexity {0}/{1}{2}"
    IL_0248:  ldc.i4.3
    IL_0249:  newarr     [System.Runtime]System.Object
    IL_024e:  dup
    IL_024f:  ldc.i4.0
    IL_0250:  ldloc.1
    IL_0251:  box        [System.Runtime]System.Int32
    IL_0256:  stelem.ref
    IL_0257:  dup
    IL_0258:  ldc.i4.1
    IL_0259:  ldc.i4     0x12c
    IL_025e:  box        [System.Runtime]System.Int32
    IL_0263:  stelem.ref
    IL_0264:  dup
    IL_0265:  ldc.i4.2
    IL_0266:  ldarg.0
    IL_0267:  ldfld      bool Game.BuildFurnitureDialog::m_isValid
    IL_026c:  brtrue.s   IL_0275

    IL_026e:  ldstr      " (too complex)"
    IL_0273:  br.s       IL_027a

    IL_0275:  ldstr      " (OK)"
    IL_027a:  stelem.ref
    IL_027b:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0280:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0285:  ldarg.0
    IL_0286:  ldfld      class Game.FurnitureDesignWidget Game.BuildFurnitureDialog::m_designWidget2d
    IL_028b:  ldarg.0
    IL_028c:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
    IL_0291:  callvirt   instance void Game.FurnitureDesignWidget::set_Design(class Game.FurnitureDesign)
    IL_0296:  ldarg.0
    IL_0297:  ldfld      class Game.FurnitureDesignWidget Game.BuildFurnitureDialog::m_designWidget3d
    IL_029c:  ldarg.0
    IL_029d:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
    IL_02a2:  callvirt   instance void Game.FurnitureDesignWidget::set_Design(class Game.FurnitureDesign)
    IL_02a7:  ret
  } // end of method BuildFurnitureDialog::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       931 (0x3a3)
    .maxstack  7
    .locals init (class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.LabelWidget Game.BuildFurnitureDialog::m_nameLabel
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
    IL_000c:  callvirt   instance string Game.FurnitureDesign::get_Name()
    IL_0011:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0016:  brtrue.s   IL_0025

    IL_0018:  ldarg.0
    IL_0019:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
    IL_001e:  callvirt   instance string Game.FurnitureDesign::get_Name()
    IL_0023:  br.s       IL_0030

    IL_0025:  ldarg.0
    IL_0026:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
    IL_002b:  callvirt   instance string Game.FurnitureDesign::GetDefaultName()
    IL_0030:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_0035:  ldarg.0
    IL_0036:  ldfld      class Game.FurnitureDesignWidget Game.BuildFurnitureDialog::m_designWidget2d
    IL_003b:  ldarg.0
    IL_003c:  ldfld      int32 Game.BuildFurnitureDialog::m_axis
    IL_0041:  callvirt   instance void Game.FurnitureDesignWidget::set_Mode(valuetype Game.FurnitureDesignWidget/ViewMode)
    IL_0046:  ldarg.0
    IL_0047:  ldfld      class Game.FurnitureDesignWidget Game.BuildFurnitureDialog::m_designWidget3d
    IL_004c:  ldc.i4.3
    IL_004d:  callvirt   instance void Game.FurnitureDesignWidget::set_Mode(valuetype Game.FurnitureDesignWidget/ViewMode)
    IL_0052:  ldarg.0
    IL_0053:  ldfld      class Game.FurnitureDesignWidget Game.BuildFurnitureDialog::m_designWidget2d
    IL_0058:  callvirt   instance valuetype Game.FurnitureDesignWidget/ViewMode Game.FurnitureDesignWidget::get_Mode()
    IL_005d:  brtrue.s   IL_006f

    IL_005f:  ldarg.0
    IL_0060:  ldfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_axisButton
    IL_0065:  ldstr      "Side View"
    IL_006a:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_006f:  ldarg.0
    IL_0070:  ldfld      class Game.FurnitureDesignWidget Game.BuildFurnitureDialog::m_designWidget2d
    IL_0075:  callvirt   instance valuetype Game.FurnitureDesignWidget/ViewMode Game.FurnitureDesignWidget::get_Mode()
    IL_007a:  ldc.i4.1
    IL_007b:  bne.un.s   IL_008d

    IL_007d:  ldarg.0
    IL_007e:  ldfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_axisButton
    IL_0083:  ldstr      "Top View"
    IL_0088:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_008d:  ldarg.0
    IL_008e:  ldfld      class Game.FurnitureDesignWidget Game.BuildFurnitureDialog::m_designWidget2d
    IL_0093:  callvirt   instance valuetype Game.FurnitureDesignWidget/ViewMode Game.FurnitureDesignWidget::get_Mode()
    IL_0098:  ldc.i4.2
    IL_0099:  bne.un.s   IL_00ab

    IL_009b:  ldarg.0
    IL_009c:  ldfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_axisButton
    IL_00a1:  ldstr      "Front View"
    IL_00a6:  callvirt   instance void Game.ButtonWidget::set_Text(string)
    IL_00ab:  ldarg.0
    IL_00ac:  ldfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_leftButton
    IL_00b1:  ldarg.0
    IL_00b2:  ldc.i4.0
    IL_00b3:  ldarg.0
    IL_00b4:  ldfld      int32 Game.BuildFurnitureDialog::m_axis
    IL_00b9:  call       valuetype [Engine]Engine.Point3 Game.BuildFurnitureDialog::DirectionAxisToDelta(int32,
                                                                                                         int32)
    IL_00be:  call       instance bool Game.BuildFurnitureDialog::IsShiftPossible(valuetype [Engine]Engine.Point3)
    IL_00c3:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_00c8:  ldarg.0
    IL_00c9:  ldfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_rightButton
    IL_00ce:  ldarg.0
    IL_00cf:  ldc.i4.1
    IL_00d0:  ldarg.0
    IL_00d1:  ldfld      int32 Game.BuildFurnitureDialog::m_axis
    IL_00d6:  call       valuetype [Engine]Engine.Point3 Game.BuildFurnitureDialog::DirectionAxisToDelta(int32,
                                                                                                         int32)
    IL_00db:  call       instance bool Game.BuildFurnitureDialog::IsShiftPossible(valuetype [Engine]Engine.Point3)
    IL_00e0:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_00e5:  ldarg.0
    IL_00e6:  ldfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_upButton
    IL_00eb:  ldarg.0
    IL_00ec:  ldc.i4.2
    IL_00ed:  ldarg.0
    IL_00ee:  ldfld      int32 Game.BuildFurnitureDialog::m_axis
    IL_00f3:  call       valuetype [Engine]Engine.Point3 Game.BuildFurnitureDialog::DirectionAxisToDelta(int32,
                                                                                                         int32)
    IL_00f8:  call       instance bool Game.BuildFurnitureDialog::IsShiftPossible(valuetype [Engine]Engine.Point3)
    IL_00fd:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0102:  ldarg.0
    IL_0103:  ldfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_downButton
    IL_0108:  ldarg.0
    IL_0109:  ldc.i4.3
    IL_010a:  ldarg.0
    IL_010b:  ldfld      int32 Game.BuildFurnitureDialog::m_axis
    IL_0110:  call       valuetype [Engine]Engine.Point3 Game.BuildFurnitureDialog::DirectionAxisToDelta(int32,
                                                                                                         int32)
    IL_0115:  call       instance bool Game.BuildFurnitureDialog::IsShiftPossible(valuetype [Engine]Engine.Point3)
    IL_011a:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_011f:  ldarg.0
    IL_0120:  ldfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_decreaseResolutionButton
    IL_0125:  ldarg.0
    IL_0126:  call       instance bool Game.BuildFurnitureDialog::IsDecreaseResolutionPossible()
    IL_012b:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0130:  ldarg.0
    IL_0131:  ldfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_increaseResolutionButton
    IL_0136:  ldarg.0
    IL_0137:  call       instance bool Game.BuildFurnitureDialog::IsIncreaseResolutionPossible()
    IL_013c:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0141:  ldarg.0
    IL_0142:  ldfld      class Game.LabelWidget Game.BuildFurnitureDialog::m_resolutionLabel
    IL_0147:  ldstr      "{0}"
    IL_014c:  ldc.i4.1
    IL_014d:  newarr     [System.Runtime]System.Object
    IL_0152:  dup
    IL_0153:  ldc.i4.0
    IL_0154:  ldarg.0
    IL_0155:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
    IL_015a:  callvirt   instance int32 Game.FurnitureDesign::get_Resolution()
    IL_015f:  box        [System.Runtime]System.Int32
    IL_0164:  stelem.ref
    IL_0165:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_016a:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_016f:  ldarg.0
    IL_0170:  ldfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_buildButton
    IL_0175:  ldarg.0
    IL_0176:  ldfld      bool Game.BuildFurnitureDialog::m_isValid
    IL_017b:  callvirt   instance void Game.Widget::set_IsEnabled(bool)
    IL_0180:  ldarg.0
    IL_0181:  ldfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_nameButton
    IL_0186:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_018b:  brfalse    IL_0269

    IL_0190:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>>::.ctor()
    IL_0195:  stloc.0
    IL_0196:  ldarg.0
    IL_0197:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_sourceDesign
    IL_019c:  brfalse.s  IL_01d8

    IL_019e:  ldloc.0
    IL_019f:  ldstr      "Rename Original Furniture"
    IL_01a4:  ldarg.0
    IL_01a5:  ldftn      instance void Game.BuildFurnitureDialog::'<Update>b__23_0'()
    IL_01ab:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01b0:  newobj     instance void class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>::.ctor(!0,
                                                                                                                               !1)
    IL_01b5:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>>::Add(!0)
    IL_01ba:  ldloc.0
    IL_01bb:  ldstr      "Rename Modified Furniture"
    IL_01c0:  ldarg.0
    IL_01c1:  ldftn      instance void Game.BuildFurnitureDialog::'<Update>b__23_2'()
    IL_01c7:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01cc:  newobj     instance void class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>::.ctor(!0,
                                                                                                                               !1)
    IL_01d1:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>>::Add(!0)
    IL_01d6:  br.s       IL_01f4

    IL_01d8:  ldloc.0
    IL_01d9:  ldstr      "Name Modified Furniture"
    IL_01de:  ldarg.0
    IL_01df:  ldftn      instance void Game.BuildFurnitureDialog::'<Update>b__23_4'()
    IL_01e5:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01ea:  newobj     instance void class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>::.ctor(!0,
                                                                                                                               !1)
    IL_01ef:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>>::Add(!0)
    IL_01f4:  ldloc.0
    IL_01f5:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>>::get_Count()
    IL_01fa:  ldc.i4.1
    IL_01fb:  bne.un.s   IL_0210

    IL_01fd:  ldloc.0
    IL_01fe:  ldc.i4.0
    IL_01ff:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>>::get_Item(int32)
    IL_0204:  callvirt   instance !1 class [System.Runtime]System.Tuple`2<string,class [System.Runtime]System.Action>::get_Item2()
    IL_0209:  callvirt   instance void [System.Runtime]System.Action::Invoke()
    IL_020e:  br.s       IL_0269

    IL_0210:  ldarg.0
    IL_0211:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_0216:  ldstr      "Furniture Naming"
    IL_021b:  ldloc.0
    IL_021c:  ldc.r4     64.
    IL_0221:  ldsfld     class [System.Runtime]System.Func`2<object,string> Game.BuildFurnitureDialog/'<>c'::'<>9__23_6'
    IL_0226:  dup
    IL_0227:  brtrue.s   IL_0240

    IL_0229:  pop
    IL_022a:  ldsfld     class Game.BuildFurnitureDialog/'<>c' Game.BuildFurnitureDialog/'<>c'::'<>9'
    IL_022f:  ldftn      instance string Game.BuildFurnitureDialog/'<>c'::'<Update>b__23_6'(object)
    IL_0235:  newobj     instance void class [System.Runtime]System.Func`2<object,string>::.ctor(object,
                                                                                                 native int)
    IL_023a:  dup
    IL_023b:  stsfld     class [System.Runtime]System.Func`2<object,string> Game.BuildFurnitureDialog/'<>c'::'<>9__23_6'
    IL_0240:  ldsfld     class [System.Runtime]System.Action`1<object> Game.BuildFurnitureDialog/'<>c'::'<>9__23_7'
    IL_0245:  dup
    IL_0246:  brtrue.s   IL_025f

    IL_0248:  pop
    IL_0249:  ldsfld     class Game.BuildFurnitureDialog/'<>c' Game.BuildFurnitureDialog/'<>c'::'<>9'
    IL_024e:  ldftn      instance void Game.BuildFurnitureDialog/'<>c'::'<Update>b__23_7'(object)
    IL_0254:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_0259:  dup
    IL_025a:  stsfld     class [System.Runtime]System.Action`1<object> Game.BuildFurnitureDialog/'<>c'::'<>9__23_7'
    IL_025f:  newobj     instance void Game.ListSelectionDialog::.ctor(string,
                                                                       class [System.Runtime]System.Collections.IEnumerable,
                                                                       float32,
                                                                       class [System.Runtime]System.Func`2<object,string>,
                                                                       class [System.Runtime]System.Action`1<object>)
    IL_0264:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_0269:  ldarg.0
    IL_026a:  ldfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_axisButton
    IL_026f:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0274:  brfalse.s  IL_0286

    IL_0276:  ldarg.0
    IL_0277:  ldarg.0
    IL_0278:  ldfld      int32 Game.BuildFurnitureDialog::m_axis
    IL_027d:  ldc.i4.1
    IL_027e:  add
    IL_027f:  ldc.i4.3
    IL_0280:  rem
    IL_0281:  stfld      int32 Game.BuildFurnitureDialog::m_axis
    IL_0286:  ldarg.0
    IL_0287:  ldfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_leftButton
    IL_028c:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0291:  brfalse.s  IL_02a5

    IL_0293:  ldarg.0
    IL_0294:  ldc.i4.0
    IL_0295:  ldarg.0
    IL_0296:  ldfld      int32 Game.BuildFurnitureDialog::m_axis
    IL_029b:  call       valuetype [Engine]Engine.Point3 Game.BuildFurnitureDialog::DirectionAxisToDelta(int32,
                                                                                                         int32)
    IL_02a0:  call       instance void Game.BuildFurnitureDialog::Shift(valuetype [Engine]Engine.Point3)
    IL_02a5:  ldarg.0
    IL_02a6:  ldfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_rightButton
    IL_02ab:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_02b0:  brfalse.s  IL_02c4

    IL_02b2:  ldarg.0
    IL_02b3:  ldc.i4.1
    IL_02b4:  ldarg.0
    IL_02b5:  ldfld      int32 Game.BuildFurnitureDialog::m_axis
    IL_02ba:  call       valuetype [Engine]Engine.Point3 Game.BuildFurnitureDialog::DirectionAxisToDelta(int32,
                                                                                                         int32)
    IL_02bf:  call       instance void Game.BuildFurnitureDialog::Shift(valuetype [Engine]Engine.Point3)
    IL_02c4:  ldarg.0
    IL_02c5:  ldfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_upButton
    IL_02ca:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_02cf:  brfalse.s  IL_02e3

    IL_02d1:  ldarg.0
    IL_02d2:  ldc.i4.2
    IL_02d3:  ldarg.0
    IL_02d4:  ldfld      int32 Game.BuildFurnitureDialog::m_axis
    IL_02d9:  call       valuetype [Engine]Engine.Point3 Game.BuildFurnitureDialog::DirectionAxisToDelta(int32,
                                                                                                         int32)
    IL_02de:  call       instance void Game.BuildFurnitureDialog::Shift(valuetype [Engine]Engine.Point3)
    IL_02e3:  ldarg.0
    IL_02e4:  ldfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_downButton
    IL_02e9:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_02ee:  brfalse.s  IL_0302

    IL_02f0:  ldarg.0
    IL_02f1:  ldc.i4.3
    IL_02f2:  ldarg.0
    IL_02f3:  ldfld      int32 Game.BuildFurnitureDialog::m_axis
    IL_02f8:  call       valuetype [Engine]Engine.Point3 Game.BuildFurnitureDialog::DirectionAxisToDelta(int32,
                                                                                                         int32)
    IL_02fd:  call       instance void Game.BuildFurnitureDialog::Shift(valuetype [Engine]Engine.Point3)
    IL_0302:  ldarg.0
    IL_0303:  ldfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_mirrorButton
    IL_0308:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_030d:  brfalse.s  IL_0320

    IL_030f:  ldarg.0
    IL_0310:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
    IL_0315:  ldarg.0
    IL_0316:  ldfld      int32 Game.BuildFurnitureDialog::m_axis
    IL_031b:  callvirt   instance void Game.FurnitureDesign::Mirror(int32)
    IL_0320:  ldarg.0
    IL_0321:  ldfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_turnRightButton
    IL_0326:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_032b:  brfalse.s  IL_033f

    IL_032d:  ldarg.0
    IL_032e:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
    IL_0333:  ldarg.0
    IL_0334:  ldfld      int32 Game.BuildFurnitureDialog::m_axis
    IL_0339:  ldc.i4.1
    IL_033a:  callvirt   instance void Game.FurnitureDesign::Rotate(int32,
                                                                    int32)
    IL_033f:  ldarg.0
    IL_0340:  ldfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_decreaseResolutionButton
    IL_0345:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_034a:  brfalse.s  IL_0352

    IL_034c:  ldarg.0
    IL_034d:  call       instance void Game.BuildFurnitureDialog::DecreaseResolution()
    IL_0352:  ldarg.0
    IL_0353:  ldfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_increaseResolutionButton
    IL_0358:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_035d:  brfalse.s  IL_0365

    IL_035f:  ldarg.0
    IL_0360:  call       instance void Game.BuildFurnitureDialog::IncreaseResolution()
    IL_0365:  ldarg.0
    IL_0366:  ldfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_buildButton
    IL_036b:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0370:  brfalse.s  IL_0381

    IL_0372:  ldarg.0
    IL_0373:  ldfld      bool Game.BuildFurnitureDialog::m_isValid
    IL_0378:  brfalse.s  IL_0381

    IL_037a:  ldarg.0
    IL_037b:  ldc.i4.1
    IL_037c:  call       instance void Game.BuildFurnitureDialog::Dismiss(bool)
    IL_0381:  ldarg.0
    IL_0382:  call       instance class Game.WidgetInput Game.Widget::get_Input()
    IL_0387:  callvirt   instance bool Game.WidgetInput::get_Back()
    IL_038c:  brtrue.s   IL_039b

    IL_038e:  ldarg.0
    IL_038f:  ldfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_cancelButton
    IL_0394:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0399:  brfalse.s  IL_03a2

    IL_039b:  ldarg.0
    IL_039c:  ldc.i4.0
    IL_039d:  call       instance void Game.BuildFurnitureDialog::Dismiss(bool)
    IL_03a2:  ret
  } // end of method BuildFurnitureDialog::Update

  .method private hidebysig instance bool 
          IsShiftPossible(valuetype [Engine]Engine.Point3 delta) cil managed
  {
    // 代码大小       106 (0x6a)
    .maxstack  3
    .locals init (int32 V_0,
             valuetype [Engine]Engine.Box V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
    IL_0006:  callvirt   instance int32 Game.FurnitureDesign::get_Resolution()
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
    IL_0012:  callvirt   instance valuetype [Engine]Engine.Box Game.FurnitureDesign::get_Box()
    IL_0017:  stloc.1
    IL_0018:  ldloca.s   V_1
    IL_001a:  dup
    IL_001b:  call       instance valuetype [Engine]Engine.Point3 [Engine]Engine.Box::get_Location()
    IL_0020:  ldarg.1
    IL_0021:  call       valuetype [Engine]Engine.Point3 [Engine]Engine.Point3::op_Addition(valuetype [Engine]Engine.Point3,
                                                                                            valuetype [Engine]Engine.Point3)
    IL_0026:  call       instance void [Engine]Engine.Box::set_Location(valuetype [Engine]Engine.Point3)
    IL_002b:  ldloc.1
    IL_002c:  ldfld      int32 [Engine]Engine.Box::Left
    IL_0031:  ldc.i4.0
    IL_0032:  blt.s      IL_0068

    IL_0034:  ldloc.1
    IL_0035:  ldfld      int32 [Engine]Engine.Box::Top
    IL_003a:  ldc.i4.0
    IL_003b:  blt.s      IL_0068

    IL_003d:  ldloc.1
    IL_003e:  ldfld      int32 [Engine]Engine.Box::Near
    IL_0043:  ldc.i4.0
    IL_0044:  blt.s      IL_0068

    IL_0046:  ldloca.s   V_1
    IL_0048:  call       instance int32 [Engine]Engine.Box::get_Right()
    IL_004d:  ldloc.0
    IL_004e:  bgt.s      IL_0068

    IL_0050:  ldloca.s   V_1
    IL_0052:  call       instance int32 [Engine]Engine.Box::get_Bottom()
    IL_0057:  ldloc.0
    IL_0058:  bgt.s      IL_0068

    IL_005a:  ldloca.s   V_1
    IL_005c:  call       instance int32 [Engine]Engine.Box::get_Far()
    IL_0061:  ldloc.0
    IL_0062:  cgt
    IL_0064:  ldc.i4.0
    IL_0065:  ceq
    IL_0067:  ret

    IL_0068:  ldc.i4.0
    IL_0069:  ret
  } // end of method BuildFurnitureDialog::IsShiftPossible

  .method private hidebysig instance void 
          Shift(valuetype [Engine]Engine.Point3 delta) cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance bool Game.BuildFurnitureDialog::IsShiftPossible(valuetype [Engine]Engine.Point3)
    IL_0007:  brfalse.s  IL_0015

    IL_0009:  ldarg.0
    IL_000a:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
    IL_000f:  ldarg.1
    IL_0010:  callvirt   instance void Game.FurnitureDesign::Shift(valuetype [Engine]Engine.Point3)
    IL_0015:  ret
  } // end of method BuildFurnitureDialog::Shift

  .method private hidebysig instance bool 
          IsDecreaseResolutionPossible() cil managed
  {
    // 代码大小       77 (0x4d)
    .maxstack  3
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
    IL_0006:  callvirt   instance int32 Game.FurnitureDesign::get_Resolution()
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.2
    IL_000e:  ble.s      IL_004b

    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
    IL_0016:  callvirt   instance valuetype [Engine]Engine.Box Game.FurnitureDesign::get_Box()
    IL_001b:  ldfld      int32 [Engine]Engine.Box::Width
    IL_0020:  ldarg.0
    IL_0021:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
    IL_0026:  callvirt   instance valuetype [Engine]Engine.Box Game.FurnitureDesign::get_Box()
    IL_002b:  ldfld      int32 [Engine]Engine.Box::Height
    IL_0030:  ldarg.0
    IL_0031:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
    IL_0036:  callvirt   instance valuetype [Engine]Engine.Box Game.FurnitureDesign::get_Box()
    IL_003b:  ldfld      int32 [Engine]Engine.Box::Depth
    IL_0040:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32,
                                                             int32)
    IL_0045:  stloc.1
    IL_0046:  ldloc.0
    IL_0047:  ldloc.1
    IL_0048:  cgt
    IL_004a:  ret

    IL_004b:  ldc.i4.0
    IL_004c:  ret
  } // end of method BuildFurnitureDialog::IsDecreaseResolutionPossible

  .method private hidebysig instance void 
          DecreaseResolution() cil managed
  {
    // 代码大小       146 (0x92)
    .maxstack  3
    .locals init (int32 V_0,
             valuetype [Engine]Engine.Point3 V_1,
             valuetype [Engine]Engine.Box V_2)
    IL_0000:  ldarg.0
    IL_0001:  call       instance bool Game.BuildFurnitureDialog::IsDecreaseResolutionPossible()
    IL_0006:  brfalse    IL_0091

    IL_000b:  ldarg.0
    IL_000c:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
    IL_0011:  callvirt   instance int32 Game.FurnitureDesign::get_Resolution()
    IL_0016:  stloc.0
    IL_0017:  ldsfld     valuetype [Engine]Engine.Point3 [Engine]Engine.Point3::Zero
    IL_001c:  stloc.1
    IL_001d:  ldarg.0
    IL_001e:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
    IL_0023:  callvirt   instance valuetype [Engine]Engine.Box Game.FurnitureDesign::get_Box()
    IL_0028:  stloc.2
    IL_0029:  ldloca.s   V_2
    IL_002b:  call       instance int32 [Engine]Engine.Box::get_Right()
    IL_0030:  ldloc.0
    IL_0031:  blt.s      IL_003b

    IL_0033:  ldloca.s   V_1
    IL_0035:  ldc.i4.m1
    IL_0036:  stfld      int32 [Engine]Engine.Point3::X
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
    IL_0041:  callvirt   instance valuetype [Engine]Engine.Box Game.FurnitureDesign::get_Box()
    IL_0046:  stloc.2
    IL_0047:  ldloca.s   V_2
    IL_0049:  call       instance int32 [Engine]Engine.Box::get_Bottom()
    IL_004e:  ldloc.0
    IL_004f:  blt.s      IL_0059

    IL_0051:  ldloca.s   V_1
    IL_0053:  ldc.i4.m1
    IL_0054:  stfld      int32 [Engine]Engine.Point3::Y
    IL_0059:  ldarg.0
    IL_005a:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
    IL_005f:  callvirt   instance valuetype [Engine]Engine.Box Game.FurnitureDesign::get_Box()
    IL_0064:  stloc.2
    IL_0065:  ldloca.s   V_2
    IL_0067:  call       instance int32 [Engine]Engine.Box::get_Far()
    IL_006c:  ldloc.0
    IL_006d:  blt.s      IL_0077

    IL_006f:  ldloca.s   V_1
    IL_0071:  ldc.i4.m1
    IL_0072:  stfld      int32 [Engine]Engine.Point3::Z
    IL_0077:  ldarg.0
    IL_0078:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
    IL_007d:  ldloc.1
    IL_007e:  callvirt   instance void Game.FurnitureDesign::Shift(valuetype [Engine]Engine.Point3)
    IL_0083:  ldarg.0
    IL_0084:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
    IL_0089:  ldloc.0
    IL_008a:  ldc.i4.1
    IL_008b:  sub
    IL_008c:  callvirt   instance void Game.FurnitureDesign::Resize(int32)
    IL_0091:  ret
  } // end of method BuildFurnitureDialog::DecreaseResolution

  .method private hidebysig instance bool 
          IsIncreaseResolutionPossible() cil managed
  {
    // 代码大小       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
    IL_0006:  callvirt   instance int32 Game.FurnitureDesign::get_Resolution()
    IL_000b:  ldc.i4.s   16
    IL_000d:  clt
    IL_000f:  ret
  } // end of method BuildFurnitureDialog::IsIncreaseResolutionPossible

  .method private hidebysig instance void 
          IncreaseResolution() cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance bool Game.BuildFurnitureDialog::IsIncreaseResolutionPossible()
    IL_0006:  brfalse.s  IL_0020

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
    IL_0014:  callvirt   instance int32 Game.FurnitureDesign::get_Resolution()
    IL_0019:  ldc.i4.1
    IL_001a:  add
    IL_001b:  callvirt   instance void Game.FurnitureDesign::Resize(int32)
    IL_0020:  ret
  } // end of method BuildFurnitureDialog::IncreaseResolution

  .method private hidebysig static valuetype [Engine]Engine.Point3 
          DirectionAxisToDelta(int32 direction,
                               int32 axis) cil managed
  {
    // 代码大小       173 (0xad)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  brtrue.s   IL_0029

    IL_0003:  ldarg.1
    IL_0004:  brtrue.s   IL_000f

    IL_0006:  ldc.i4.0
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4.1
    IL_0009:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_000e:  ret

    IL_000f:  ldarg.1
    IL_0010:  ldc.i4.1
    IL_0011:  bne.un.s   IL_001c

    IL_0013:  ldc.i4.1
    IL_0014:  ldc.i4.0
    IL_0015:  ldc.i4.0
    IL_0016:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_001b:  ret

    IL_001c:  ldarg.1
    IL_001d:  ldc.i4.2
    IL_001e:  bne.un.s   IL_0029

    IL_0020:  ldc.i4.1
    IL_0021:  ldc.i4.0
    IL_0022:  ldc.i4.0
    IL_0023:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0028:  ret

    IL_0029:  ldarg.0
    IL_002a:  ldc.i4.1
    IL_002b:  bne.un.s   IL_0053

    IL_002d:  ldarg.1
    IL_002e:  brtrue.s   IL_0039

    IL_0030:  ldc.i4.0
    IL_0031:  ldc.i4.0
    IL_0032:  ldc.i4.m1
    IL_0033:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0038:  ret

    IL_0039:  ldarg.1
    IL_003a:  ldc.i4.1
    IL_003b:  bne.un.s   IL_0046

    IL_003d:  ldc.i4.m1
    IL_003e:  ldc.i4.0
    IL_003f:  ldc.i4.0
    IL_0040:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0045:  ret

    IL_0046:  ldarg.1
    IL_0047:  ldc.i4.2
    IL_0048:  bne.un.s   IL_0053

    IL_004a:  ldc.i4.m1
    IL_004b:  ldc.i4.0
    IL_004c:  ldc.i4.0
    IL_004d:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0052:  ret

    IL_0053:  ldarg.0
    IL_0054:  ldc.i4.2
    IL_0055:  bne.un.s   IL_007d

    IL_0057:  ldarg.1
    IL_0058:  brtrue.s   IL_0063

    IL_005a:  ldc.i4.0
    IL_005b:  ldc.i4.1
    IL_005c:  ldc.i4.0
    IL_005d:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0062:  ret

    IL_0063:  ldarg.1
    IL_0064:  ldc.i4.1
    IL_0065:  bne.un.s   IL_0070

    IL_0067:  ldc.i4.0
    IL_0068:  ldc.i4.0
    IL_0069:  ldc.i4.1
    IL_006a:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_006f:  ret

    IL_0070:  ldarg.1
    IL_0071:  ldc.i4.2
    IL_0072:  bne.un.s   IL_007d

    IL_0074:  ldc.i4.0
    IL_0075:  ldc.i4.1
    IL_0076:  ldc.i4.0
    IL_0077:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_007c:  ret

    IL_007d:  ldarg.0
    IL_007e:  ldc.i4.3
    IL_007f:  bne.un.s   IL_00a7

    IL_0081:  ldarg.1
    IL_0082:  brtrue.s   IL_008d

    IL_0084:  ldc.i4.0
    IL_0085:  ldc.i4.m1
    IL_0086:  ldc.i4.0
    IL_0087:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_008c:  ret

    IL_008d:  ldarg.1
    IL_008e:  ldc.i4.1
    IL_008f:  bne.un.s   IL_009a

    IL_0091:  ldc.i4.0
    IL_0092:  ldc.i4.0
    IL_0093:  ldc.i4.m1
    IL_0094:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0099:  ret

    IL_009a:  ldarg.1
    IL_009b:  ldc.i4.2
    IL_009c:  bne.un.s   IL_00a7

    IL_009e:  ldc.i4.0
    IL_009f:  ldc.i4.m1
    IL_00a0:  ldc.i4.0
    IL_00a1:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_00a6:  ret

    IL_00a7:  ldsfld     valuetype [Engine]Engine.Point3 [Engine]Engine.Point3::Zero
    IL_00ac:  ret
  } // end of method BuildFurnitureDialog::DirectionAxisToDelta

  .method private hidebysig instance void 
          Dismiss(bool result) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       void Game.DialogsManager::HideDialog(class Game.Dialog)
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class [System.Runtime]System.Action`1<bool> Game.BuildFurnitureDialog::m_handler
    IL_000c:  ldarg.1
    IL_000d:  callvirt   instance void class [System.Runtime]System.Action`1<bool>::Invoke(!0)
    IL_0012:  ret
  } // end of method BuildFurnitureDialog::Dismiss

  .method private hidebysig instance void 
          '<Update>b__23_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       54 (0x36)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.0
    IL_0002:  call       instance void Game.BuildFurnitureDialog::Dismiss(bool)
    IL_0007:  ldarg.0
    IL_0008:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_000d:  ldstr      "Rename Furniture"
    IL_0012:  ldarg.0
    IL_0013:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_sourceDesign
    IL_0018:  callvirt   instance string Game.FurnitureDesign::get_Name()
    IL_001d:  ldc.i4.s   20
    IL_001f:  ldarg.0
    IL_0020:  ldftn      instance void Game.BuildFurnitureDialog::'<Update>b__23_1'(string)
    IL_0026:  newobj     instance void class [System.Runtime]System.Action`1<string>::.ctor(object,
                                                                                            native int)
    IL_002b:  newobj     instance void Game.TextBoxDialog::.ctor(string,
                                                                 string,
                                                                 int32,
                                                                 class [System.Runtime]System.Action`1<string>)
    IL_0030:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_0035:  ret
  } // end of method BuildFurnitureDialog::'<Update>b__23_0'

  .method private hidebysig instance void 
          '<Update>b__23_1'(string s) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       55 (0x37)
    .maxstack  6
    .locals init (class [System.Runtime]System.Exception V_0)
    .try
    {
      IL_0000:  ldarg.1
      IL_0001:  brfalse.s  IL_000f

      IL_0003:  ldarg.0
      IL_0004:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_sourceDesign
      IL_0009:  ldarg.1
      IL_000a:  callvirt   instance void Game.FurnitureDesign::set_Name(string)
      IL_000f:  leave.s    IL_0036

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0011:  stloc.0
      IL_0012:  ldarg.0
      IL_0013:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
      IL_0018:  ldstr      "Error"
      IL_001d:  ldloc.0
      IL_001e:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_0023:  ldstr      "OK"
      IL_0028:  ldnull
      IL_0029:  ldnull
      IL_002a:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_002f:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                                class Game.Dialog)
      IL_0034:  leave.s    IL_0036

    }  // end handler
    IL_0036:  ret
  } // end of method BuildFurnitureDialog::'<Update>b__23_1'

  .method private hidebysig instance void 
          '<Update>b__23_2'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       47 (0x2f)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_0006:  ldstr      "Name Furniture"
    IL_000b:  ldarg.0
    IL_000c:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
    IL_0011:  callvirt   instance string Game.FurnitureDesign::get_Name()
    IL_0016:  ldc.i4.s   20
    IL_0018:  ldarg.0
    IL_0019:  ldftn      instance void Game.BuildFurnitureDialog::'<Update>b__23_3'(string)
    IL_001f:  newobj     instance void class [System.Runtime]System.Action`1<string>::.ctor(object,
                                                                                            native int)
    IL_0024:  newobj     instance void Game.TextBoxDialog::.ctor(string,
                                                                 string,
                                                                 int32,
                                                                 class [System.Runtime]System.Action`1<string>)
    IL_0029:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_002e:  ret
  } // end of method BuildFurnitureDialog::'<Update>b__23_2'

  .method private hidebysig instance void 
          '<Update>b__23_3'(string s) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       55 (0x37)
    .maxstack  6
    .locals init (class [System.Runtime]System.Exception V_0)
    .try
    {
      IL_0000:  ldarg.1
      IL_0001:  brfalse.s  IL_000f

      IL_0003:  ldarg.0
      IL_0004:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
      IL_0009:  ldarg.1
      IL_000a:  callvirt   instance void Game.FurnitureDesign::set_Name(string)
      IL_000f:  leave.s    IL_0036

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0011:  stloc.0
      IL_0012:  ldarg.0
      IL_0013:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
      IL_0018:  ldstr      "Error"
      IL_001d:  ldloc.0
      IL_001e:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_0023:  ldstr      "OK"
      IL_0028:  ldnull
      IL_0029:  ldnull
      IL_002a:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_002f:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                                class Game.Dialog)
      IL_0034:  leave.s    IL_0036

    }  // end handler
    IL_0036:  ret
  } // end of method BuildFurnitureDialog::'<Update>b__23_3'

  .method private hidebysig instance void 
          '<Update>b__23_4'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       47 (0x2f)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
    IL_0006:  ldstr      "Name Furniture"
    IL_000b:  ldarg.0
    IL_000c:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
    IL_0011:  callvirt   instance string Game.FurnitureDesign::get_Name()
    IL_0016:  ldc.i4.s   20
    IL_0018:  ldarg.0
    IL_0019:  ldftn      instance void Game.BuildFurnitureDialog::'<Update>b__23_5'(string)
    IL_001f:  newobj     instance void class [System.Runtime]System.Action`1<string>::.ctor(object,
                                                                                            native int)
    IL_0024:  newobj     instance void Game.TextBoxDialog::.ctor(string,
                                                                 string,
                                                                 int32,
                                                                 class [System.Runtime]System.Action`1<string>)
    IL_0029:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_002e:  ret
  } // end of method BuildFurnitureDialog::'<Update>b__23_4'

  .method private hidebysig instance void 
          '<Update>b__23_5'(string s) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       55 (0x37)
    .maxstack  6
    .locals init (class [System.Runtime]System.Exception V_0)
    .try
    {
      IL_0000:  ldarg.1
      IL_0001:  brfalse.s  IL_000f

      IL_0003:  ldarg.0
      IL_0004:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
      IL_0009:  ldarg.1
      IL_000a:  callvirt   instance void Game.FurnitureDesign::set_Name(string)
      IL_000f:  leave.s    IL_0036

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0011:  stloc.0
      IL_0012:  ldarg.0
      IL_0013:  call       instance class Game.ContainerWidget Game.Widget::get_ParentWidget()
      IL_0018:  ldstr      "Error"
      IL_001d:  ldloc.0
      IL_001e:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_0023:  ldstr      "OK"
      IL_0028:  ldnull
      IL_0029:  ldnull
      IL_002a:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_002f:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                                class Game.Dialog)
      IL_0034:  leave.s    IL_0036

    }  // end handler
    IL_0036:  ret
  } // end of method BuildFurnitureDialog::'<Update>b__23_5'

} // end of class Game.BuildFurnitureDialog