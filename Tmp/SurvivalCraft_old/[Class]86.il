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
  .field private class Game.ButtonWidget m_turnLeftButton
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
    // 代码大小       776 (0x308)
    .maxstack  7
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
    IL_0014:  ldnull
    IL_0015:  call       class Game.Widget Game.WidgetsManager::LoadWidget(object,
                                                                           class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                           class Game.ContainerWidget)
    IL_001a:  castclass  Game.ContainerWidget
    IL_001f:  call       instance void Game.Dialog::set_DialogWidget(class Game.ContainerWidget)
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_002b:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0030:  ldstr      "BuildFurnitureDialog.Name"
    IL_0035:  ldc.i4.1
    IL_0036:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_003b:  stfld      class Game.LabelWidget Game.BuildFurnitureDialog::m_nameLabel
    IL_0040:  ldarg.0
    IL_0041:  ldarg.0
    IL_0042:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_0047:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_004c:  ldstr      "BuildFurnitureDialog.Status"
    IL_0051:  ldc.i4.1
    IL_0052:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_0057:  stfld      class Game.LabelWidget Game.BuildFurnitureDialog::m_statusLabel
    IL_005c:  ldarg.0
    IL_005d:  ldarg.0
    IL_005e:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_0063:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0068:  ldstr      "BuildFurnitureDialog.Design2d"
    IL_006d:  ldc.i4.1
    IL_006e:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.FurnitureDesignWidget>(string,
                                                                                                    bool)
    IL_0073:  stfld      class Game.FurnitureDesignWidget Game.BuildFurnitureDialog::m_designWidget2d
    IL_0078:  ldarg.0
    IL_0079:  ldarg.0
    IL_007a:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_007f:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0084:  ldstr      "BuildFurnitureDialog.Design3d"
    IL_0089:  ldc.i4.1
    IL_008a:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.FurnitureDesignWidget>(string,
                                                                                                    bool)
    IL_008f:  stfld      class Game.FurnitureDesignWidget Game.BuildFurnitureDialog::m_designWidget3d
    IL_0094:  ldarg.0
    IL_0095:  ldarg.0
    IL_0096:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_009b:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00a0:  ldstr      "BuildFurnitureDialog.NameButton"
    IL_00a5:  ldc.i4.1
    IL_00a6:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00ab:  stfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_nameButton
    IL_00b0:  ldarg.0
    IL_00b1:  ldarg.0
    IL_00b2:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_00b7:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00bc:  ldstr      "BuildFurnitureDialog.AxisButton"
    IL_00c1:  ldc.i4.1
    IL_00c2:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00c7:  stfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_axisButton
    IL_00cc:  ldarg.0
    IL_00cd:  ldarg.0
    IL_00ce:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_00d3:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00d8:  ldstr      "BuildFurnitureDialog.LeftButton"
    IL_00dd:  ldc.i4.1
    IL_00de:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00e3:  stfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_leftButton
    IL_00e8:  ldarg.0
    IL_00e9:  ldarg.0
    IL_00ea:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_00ef:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_00f4:  ldstr      "BuildFurnitureDialog.RightButton"
    IL_00f9:  ldc.i4.1
    IL_00fa:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_00ff:  stfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_rightButton
    IL_0104:  ldarg.0
    IL_0105:  ldarg.0
    IL_0106:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_010b:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0110:  ldstr      "BuildFurnitureDialog.UpButton"
    IL_0115:  ldc.i4.1
    IL_0116:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_011b:  stfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_upButton
    IL_0120:  ldarg.0
    IL_0121:  ldarg.0
    IL_0122:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_0127:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_012c:  ldstr      "BuildFurnitureDialog.DownButton"
    IL_0131:  ldc.i4.1
    IL_0132:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0137:  stfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_downButton
    IL_013c:  ldarg.0
    IL_013d:  ldarg.0
    IL_013e:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_0143:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0148:  ldstr      "BuildFurnitureDialog.TurnLeftButton"
    IL_014d:  ldc.i4.1
    IL_014e:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_0153:  stfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_turnLeftButton
    IL_0158:  ldarg.0
    IL_0159:  ldarg.0
    IL_015a:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_015f:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0164:  ldstr      "BuildFurnitureDialog.TurnRightButton"
    IL_0169:  ldc.i4.1
    IL_016a:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_016f:  stfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_turnRightButton
    IL_0174:  ldarg.0
    IL_0175:  ldarg.0
    IL_0176:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_017b:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_0180:  ldstr      "BuildFurnitureDialog.IncreaseResolutionButton"
    IL_0185:  ldc.i4.1
    IL_0186:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_018b:  stfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_increaseResolutionButton
    IL_0190:  ldarg.0
    IL_0191:  ldarg.0
    IL_0192:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_0197:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_019c:  ldstr      "BuildFurnitureDialog.DecreaseResolutionButton"
    IL_01a1:  ldc.i4.1
    IL_01a2:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_01a7:  stfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_decreaseResolutionButton
    IL_01ac:  ldarg.0
    IL_01ad:  ldarg.0
    IL_01ae:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_01b3:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_01b8:  ldstr      "BuildFurnitureDialog.ResolutionLabel"
    IL_01bd:  ldc.i4.1
    IL_01be:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.LabelWidget>(string,
                                                                                          bool)
    IL_01c3:  stfld      class Game.LabelWidget Game.BuildFurnitureDialog::m_resolutionLabel
    IL_01c8:  ldarg.0
    IL_01c9:  ldarg.0
    IL_01ca:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_01cf:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_01d4:  ldstr      "BuildFurnitureDialog.CancelButton"
    IL_01d9:  ldc.i4.1
    IL_01da:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_01df:  stfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_cancelButton
    IL_01e4:  ldarg.0
    IL_01e5:  ldarg.0
    IL_01e6:  call       instance class Game.ContainerWidget Game.Dialog::get_DialogWidget()
    IL_01eb:  ldfld      class Game.WidgetsContainer Game.ContainerWidget::Children
    IL_01f0:  ldstr      "BuildFurnitureDialog.BuildButton"
    IL_01f5:  ldc.i4.1
    IL_01f6:  callvirt   instance !!0 Game.WidgetsContainer::Find<class Game.ButtonWidget>(string,
                                                                                           bool)
    IL_01fb:  stfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_buildButton
    IL_0200:  ldarg.0
    IL_0201:  ldarg.3
    IL_0202:  stfld      class [System.Runtime]System.Action`1<bool> Game.BuildFurnitureDialog::m_handler
    IL_0207:  ldarg.0
    IL_0208:  ldarg.1
    IL_0209:  stfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
    IL_020e:  ldarg.0
    IL_020f:  ldarg.2
    IL_0210:  stfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_sourceDesign
    IL_0215:  ldarg.0
    IL_0216:  ldc.i4.1
    IL_0217:  stfld      int32 Game.BuildFurnitureDialog::m_axis
    IL_021c:  ldc.i4.0
    IL_021d:  stloc.1
    IL_021e:  ldloc.1
    IL_021f:  ldarg.0
    IL_0220:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
    IL_0225:  callvirt   instance class Game.FurnitureGeometry Game.FurnitureDesign::get_Geometry()
    IL_022a:  ldfld      class Game.BlockMesh[] Game.FurnitureGeometry::SubsetOpaqueByFace
    IL_022f:  ldsfld     class [System.Runtime]System.Func`2<class Game.BlockMesh,int32> Game.BuildFurnitureDialog/'<>c'::'<>9__22_0'
    IL_0234:  dup
    IL_0235:  brtrue.s   IL_024e

    IL_0237:  pop
    IL_0238:  ldsfld     class Game.BuildFurnitureDialog/'<>c' Game.BuildFurnitureDialog/'<>c'::'<>9'
    IL_023d:  ldftn      instance int32 Game.BuildFurnitureDialog/'<>c'::'<.ctor>b__22_0'(class Game.BlockMesh)
    IL_0243:  newobj     instance void class [System.Runtime]System.Func`2<class Game.BlockMesh,int32>::.ctor(object,
                                                                                                              native int)
    IL_0248:  dup
    IL_0249:  stsfld     class [System.Runtime]System.Func`2<class Game.BlockMesh,int32> Game.BuildFurnitureDialog/'<>c'::'<>9__22_0'
    IL_024e:  call       int32 [System.Linq]System.Linq.Enumerable::Sum<class Game.BlockMesh>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                              class [System.Runtime]System.Func`2<!!0,int32>)
    IL_0253:  add
    IL_0254:  stloc.1
    IL_0255:  ldloc.1
    IL_0256:  ldarg.0
    IL_0257:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
    IL_025c:  callvirt   instance class Game.FurnitureGeometry Game.FurnitureDesign::get_Geometry()
    IL_0261:  ldfld      class Game.BlockMesh[] Game.FurnitureGeometry::SubsetAlphaTestByFace
    IL_0266:  ldsfld     class [System.Runtime]System.Func`2<class Game.BlockMesh,int32> Game.BuildFurnitureDialog/'<>c'::'<>9__22_1'
    IL_026b:  dup
    IL_026c:  brtrue.s   IL_0285

    IL_026e:  pop
    IL_026f:  ldsfld     class Game.BuildFurnitureDialog/'<>c' Game.BuildFurnitureDialog/'<>c'::'<>9'
    IL_0274:  ldftn      instance int32 Game.BuildFurnitureDialog/'<>c'::'<.ctor>b__22_1'(class Game.BlockMesh)
    IL_027a:  newobj     instance void class [System.Runtime]System.Func`2<class Game.BlockMesh,int32>::.ctor(object,
                                                                                                              native int)
    IL_027f:  dup
    IL_0280:  stsfld     class [System.Runtime]System.Func`2<class Game.BlockMesh,int32> Game.BuildFurnitureDialog/'<>c'::'<>9__22_1'
    IL_0285:  call       int32 [System.Linq]System.Linq.Enumerable::Sum<class Game.BlockMesh>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                              class [System.Runtime]System.Func`2<!!0,int32>)
    IL_028a:  add
    IL_028b:  stloc.1
    IL_028c:  ldarg.0
    IL_028d:  ldloc.1
    IL_028e:  ldc.i4     0x12c
    IL_0293:  cgt
    IL_0295:  ldc.i4.0
    IL_0296:  ceq
    IL_0298:  stfld      bool Game.BuildFurnitureDialog::m_isValid
    IL_029d:  ldarg.0
    IL_029e:  ldfld      class Game.LabelWidget Game.BuildFurnitureDialog::m_statusLabel
    IL_02a3:  ldstr      "Complexity {0:0}%{1}"
    IL_02a8:  ldc.i4.2
    IL_02a9:  newarr     [System.Runtime]System.Object
    IL_02ae:  dup
    IL_02af:  ldc.i4.0
    IL_02b0:  ldloc.1
    IL_02b1:  conv.r4
    IL_02b2:  ldc.r4     300.
    IL_02b7:  div
    IL_02b8:  ldc.r4     100.
    IL_02bd:  mul
    IL_02be:  box        [System.Runtime]System.Single
    IL_02c3:  stelem.ref
    IL_02c4:  dup
    IL_02c5:  ldc.i4.1
    IL_02c6:  ldarg.0
    IL_02c7:  ldfld      bool Game.BuildFurnitureDialog::m_isValid
    IL_02cc:  brtrue.s   IL_02d5

    IL_02ce:  ldstr      " (too complex)"
    IL_02d3:  br.s       IL_02da

    IL_02d5:  ldsfld     string [System.Runtime]System.String::Empty
    IL_02da:  stelem.ref
    IL_02db:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_02e0:  callvirt   instance void Game.LabelWidget::set_Text(string)
    IL_02e5:  ldarg.0
    IL_02e6:  ldfld      class Game.FurnitureDesignWidget Game.BuildFurnitureDialog::m_designWidget2d
    IL_02eb:  ldarg.0
    IL_02ec:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
    IL_02f1:  callvirt   instance void Game.FurnitureDesignWidget::set_Design(class Game.FurnitureDesign)
    IL_02f6:  ldarg.0
    IL_02f7:  ldfld      class Game.FurnitureDesignWidget Game.BuildFurnitureDialog::m_designWidget3d
    IL_02fc:  ldarg.0
    IL_02fd:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
    IL_0302:  callvirt   instance void Game.FurnitureDesignWidget::set_Design(class Game.FurnitureDesign)
    IL_0307:  ret
  } // end of method BuildFurnitureDialog::.ctor

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       925 (0x39d)
    .maxstack  6
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
    IL_018b:  brfalse    IL_0263

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
    IL_020e:  br.s       IL_0263

    IL_0210:  ldstr      "Add Furniture Set"
    IL_0215:  ldloc.0
    IL_0216:  ldc.r4     64.
    IL_021b:  ldsfld     class [System.Runtime]System.Func`2<object,string> Game.BuildFurnitureDialog/'<>c'::'<>9__23_6'
    IL_0220:  dup
    IL_0221:  brtrue.s   IL_023a

    IL_0223:  pop
    IL_0224:  ldsfld     class Game.BuildFurnitureDialog/'<>c' Game.BuildFurnitureDialog/'<>c'::'<>9'
    IL_0229:  ldftn      instance string Game.BuildFurnitureDialog/'<>c'::'<Update>b__23_6'(object)
    IL_022f:  newobj     instance void class [System.Runtime]System.Func`2<object,string>::.ctor(object,
                                                                                                 native int)
    IL_0234:  dup
    IL_0235:  stsfld     class [System.Runtime]System.Func`2<object,string> Game.BuildFurnitureDialog/'<>c'::'<>9__23_6'
    IL_023a:  ldsfld     class [System.Runtime]System.Action`1<object> Game.BuildFurnitureDialog/'<>c'::'<>9__23_7'
    IL_023f:  dup
    IL_0240:  brtrue.s   IL_0259

    IL_0242:  pop
    IL_0243:  ldsfld     class Game.BuildFurnitureDialog/'<>c' Game.BuildFurnitureDialog/'<>c'::'<>9'
    IL_0248:  ldftn      instance void Game.BuildFurnitureDialog/'<>c'::'<Update>b__23_7'(object)
    IL_024e:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_0253:  dup
    IL_0254:  stsfld     class [System.Runtime]System.Action`1<object> Game.BuildFurnitureDialog/'<>c'::'<>9__23_7'
    IL_0259:  newobj     instance void Game.ListSelectionDialog::.ctor(string,
                                                                       class [System.Runtime]System.Collections.IEnumerable,
                                                                       float32,
                                                                       class [System.Runtime]System.Func`2<object,string>,
                                                                       class [System.Runtime]System.Action`1<object>)
    IL_025e:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_0263:  ldarg.0
    IL_0264:  ldfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_axisButton
    IL_0269:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_026e:  brfalse.s  IL_0280

    IL_0270:  ldarg.0
    IL_0271:  ldarg.0
    IL_0272:  ldfld      int32 Game.BuildFurnitureDialog::m_axis
    IL_0277:  ldc.i4.1
    IL_0278:  add
    IL_0279:  ldc.i4.3
    IL_027a:  rem
    IL_027b:  stfld      int32 Game.BuildFurnitureDialog::m_axis
    IL_0280:  ldarg.0
    IL_0281:  ldfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_leftButton
    IL_0286:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_028b:  brfalse.s  IL_029f

    IL_028d:  ldarg.0
    IL_028e:  ldc.i4.0
    IL_028f:  ldarg.0
    IL_0290:  ldfld      int32 Game.BuildFurnitureDialog::m_axis
    IL_0295:  call       valuetype [Engine]Engine.Point3 Game.BuildFurnitureDialog::DirectionAxisToDelta(int32,
                                                                                                         int32)
    IL_029a:  call       instance void Game.BuildFurnitureDialog::Shift(valuetype [Engine]Engine.Point3)
    IL_029f:  ldarg.0
    IL_02a0:  ldfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_rightButton
    IL_02a5:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_02aa:  brfalse.s  IL_02be

    IL_02ac:  ldarg.0
    IL_02ad:  ldc.i4.1
    IL_02ae:  ldarg.0
    IL_02af:  ldfld      int32 Game.BuildFurnitureDialog::m_axis
    IL_02b4:  call       valuetype [Engine]Engine.Point3 Game.BuildFurnitureDialog::DirectionAxisToDelta(int32,
                                                                                                         int32)
    IL_02b9:  call       instance void Game.BuildFurnitureDialog::Shift(valuetype [Engine]Engine.Point3)
    IL_02be:  ldarg.0
    IL_02bf:  ldfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_upButton
    IL_02c4:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_02c9:  brfalse.s  IL_02dd

    IL_02cb:  ldarg.0
    IL_02cc:  ldc.i4.2
    IL_02cd:  ldarg.0
    IL_02ce:  ldfld      int32 Game.BuildFurnitureDialog::m_axis
    IL_02d3:  call       valuetype [Engine]Engine.Point3 Game.BuildFurnitureDialog::DirectionAxisToDelta(int32,
                                                                                                         int32)
    IL_02d8:  call       instance void Game.BuildFurnitureDialog::Shift(valuetype [Engine]Engine.Point3)
    IL_02dd:  ldarg.0
    IL_02de:  ldfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_downButton
    IL_02e3:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_02e8:  brfalse.s  IL_02fc

    IL_02ea:  ldarg.0
    IL_02eb:  ldc.i4.3
    IL_02ec:  ldarg.0
    IL_02ed:  ldfld      int32 Game.BuildFurnitureDialog::m_axis
    IL_02f2:  call       valuetype [Engine]Engine.Point3 Game.BuildFurnitureDialog::DirectionAxisToDelta(int32,
                                                                                                         int32)
    IL_02f7:  call       instance void Game.BuildFurnitureDialog::Shift(valuetype [Engine]Engine.Point3)
    IL_02fc:  ldarg.0
    IL_02fd:  ldfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_turnLeftButton
    IL_0302:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0307:  brfalse.s  IL_031b

    IL_0309:  ldarg.0
    IL_030a:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
    IL_030f:  ldarg.0
    IL_0310:  ldfld      int32 Game.BuildFurnitureDialog::m_axis
    IL_0315:  ldc.i4.m1
    IL_0316:  callvirt   instance void Game.FurnitureDesign::Rotate(int32,
                                                                    int32)
    IL_031b:  ldarg.0
    IL_031c:  ldfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_turnRightButton
    IL_0321:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0326:  brfalse.s  IL_033a

    IL_0328:  ldarg.0
    IL_0329:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
    IL_032e:  ldarg.0
    IL_032f:  ldfld      int32 Game.BuildFurnitureDialog::m_axis
    IL_0334:  ldc.i4.1
    IL_0335:  callvirt   instance void Game.FurnitureDesign::Rotate(int32,
                                                                    int32)
    IL_033a:  ldarg.0
    IL_033b:  ldfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_decreaseResolutionButton
    IL_0340:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0345:  brfalse.s  IL_034d

    IL_0347:  ldarg.0
    IL_0348:  call       instance void Game.BuildFurnitureDialog::DecreaseResolution()
    IL_034d:  ldarg.0
    IL_034e:  ldfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_increaseResolutionButton
    IL_0353:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0358:  brfalse.s  IL_0360

    IL_035a:  ldarg.0
    IL_035b:  call       instance void Game.BuildFurnitureDialog::IncreaseResolution()
    IL_0360:  ldarg.0
    IL_0361:  ldfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_buildButton
    IL_0366:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_036b:  brfalse.s  IL_037c

    IL_036d:  ldarg.0
    IL_036e:  ldfld      bool Game.BuildFurnitureDialog::m_isValid
    IL_0373:  brfalse.s  IL_037c

    IL_0375:  ldarg.0
    IL_0376:  ldc.i4.1
    IL_0377:  call       instance void Game.BuildFurnitureDialog::Dismiss(bool)
    IL_037c:  call       valuetype Game.InputState Game.InputManager::get_InputState()
    IL_0381:  ldfld      bool Game.InputState::Back
    IL_0386:  brtrue.s   IL_0395

    IL_0388:  ldarg.0
    IL_0389:  ldfld      class Game.ButtonWidget Game.BuildFurnitureDialog::m_cancelButton
    IL_038e:  callvirt   instance bool Game.ButtonWidget::get_IsClicked()
    IL_0393:  brfalse.s  IL_039c

    IL_0395:  ldarg.0
    IL_0396:  ldc.i4.0
    IL_0397:  call       instance void Game.BuildFurnitureDialog::Dismiss(bool)
    IL_039c:  ret
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
    // 代码大小       48 (0x30)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.0
    IL_0002:  call       instance void Game.BuildFurnitureDialog::Dismiss(bool)
    IL_0007:  ldstr      "Rename Furniture"
    IL_000c:  ldarg.0
    IL_000d:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_sourceDesign
    IL_0012:  callvirt   instance string Game.FurnitureDesign::get_Name()
    IL_0017:  ldc.i4.s   20
    IL_0019:  ldarg.0
    IL_001a:  ldftn      instance void Game.BuildFurnitureDialog::'<Update>b__23_1'(string)
    IL_0020:  newobj     instance void class [System.Runtime]System.Action`1<string>::.ctor(object,
                                                                                            native int)
    IL_0025:  newobj     instance void Game.TextBoxDialog::.ctor(string,
                                                                 string,
                                                                 int32,
                                                                 class [System.Runtime]System.Action`1<string>)
    IL_002a:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_002f:  ret
  } // end of method BuildFurnitureDialog::'<Update>b__23_0'

  .method private hidebysig instance void 
          '<Update>b__23_1'(string s) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       49 (0x31)
    .maxstack  5
    .locals init (class [System.Runtime]System.Exception V_0)
    .try
    {
      IL_0000:  ldarg.1
      IL_0001:  brfalse.s  IL_000f

      IL_0003:  ldarg.0
      IL_0004:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_sourceDesign
      IL_0009:  ldarg.1
      IL_000a:  callvirt   instance void Game.FurnitureDesign::set_Name(string)
      IL_000f:  leave.s    IL_0030

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0011:  stloc.0
      IL_0012:  ldstr      "Error"
      IL_0017:  ldloc.0
      IL_0018:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_001d:  ldstr      "OK"
      IL_0022:  ldnull
      IL_0023:  ldnull
      IL_0024:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_0029:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
      IL_002e:  leave.s    IL_0030

    }  // end handler
    IL_0030:  ret
  } // end of method BuildFurnitureDialog::'<Update>b__23_1'

  .method private hidebysig instance void 
          '<Update>b__23_2'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  8
    IL_0000:  ldstr      "Name Furniture"
    IL_0005:  ldarg.0
    IL_0006:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
    IL_000b:  callvirt   instance string Game.FurnitureDesign::get_Name()
    IL_0010:  ldc.i4.s   20
    IL_0012:  ldarg.0
    IL_0013:  ldftn      instance void Game.BuildFurnitureDialog::'<Update>b__23_3'(string)
    IL_0019:  newobj     instance void class [System.Runtime]System.Action`1<string>::.ctor(object,
                                                                                            native int)
    IL_001e:  newobj     instance void Game.TextBoxDialog::.ctor(string,
                                                                 string,
                                                                 int32,
                                                                 class [System.Runtime]System.Action`1<string>)
    IL_0023:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_0028:  ret
  } // end of method BuildFurnitureDialog::'<Update>b__23_2'

  .method private hidebysig instance void 
          '<Update>b__23_3'(string s) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       49 (0x31)
    .maxstack  5
    .locals init (class [System.Runtime]System.Exception V_0)
    .try
    {
      IL_0000:  ldarg.1
      IL_0001:  brfalse.s  IL_000f

      IL_0003:  ldarg.0
      IL_0004:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
      IL_0009:  ldarg.1
      IL_000a:  callvirt   instance void Game.FurnitureDesign::set_Name(string)
      IL_000f:  leave.s    IL_0030

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0011:  stloc.0
      IL_0012:  ldstr      "Error"
      IL_0017:  ldloc.0
      IL_0018:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_001d:  ldstr      "OK"
      IL_0022:  ldnull
      IL_0023:  ldnull
      IL_0024:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_0029:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
      IL_002e:  leave.s    IL_0030

    }  // end handler
    IL_0030:  ret
  } // end of method BuildFurnitureDialog::'<Update>b__23_3'

  .method private hidebysig instance void 
          '<Update>b__23_4'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  8
    IL_0000:  ldstr      "Name Furniture"
    IL_0005:  ldarg.0
    IL_0006:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
    IL_000b:  callvirt   instance string Game.FurnitureDesign::get_Name()
    IL_0010:  ldc.i4.s   20
    IL_0012:  ldarg.0
    IL_0013:  ldftn      instance void Game.BuildFurnitureDialog::'<Update>b__23_5'(string)
    IL_0019:  newobj     instance void class [System.Runtime]System.Action`1<string>::.ctor(object,
                                                                                            native int)
    IL_001e:  newobj     instance void Game.TextBoxDialog::.ctor(string,
                                                                 string,
                                                                 int32,
                                                                 class [System.Runtime]System.Action`1<string>)
    IL_0023:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
    IL_0028:  ret
  } // end of method BuildFurnitureDialog::'<Update>b__23_4'

  .method private hidebysig instance void 
          '<Update>b__23_5'(string s) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       49 (0x31)
    .maxstack  5
    .locals init (class [System.Runtime]System.Exception V_0)
    .try
    {
      IL_0000:  ldarg.1
      IL_0001:  brfalse.s  IL_000f

      IL_0003:  ldarg.0
      IL_0004:  ldfld      class Game.FurnitureDesign Game.BuildFurnitureDialog::m_design
      IL_0009:  ldarg.1
      IL_000a:  callvirt   instance void Game.FurnitureDesign::set_Name(string)
      IL_000f:  leave.s    IL_0030

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0011:  stloc.0
      IL_0012:  ldstr      "Error"
      IL_0017:  ldloc.0
      IL_0018:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_001d:  ldstr      "OK"
      IL_0022:  ldnull
      IL_0023:  ldnull
      IL_0024:  newobj     instance void Game.MessageDialog::.ctor(string,
                                                                   string,
                                                                   string,
                                                                   string,
                                                                   class [System.Runtime]System.Action`1<valuetype Game.MessageDialogButton>)
      IL_0029:  call       void Game.DialogsManager::ShowDialog(class Game.Dialog)
      IL_002e:  leave.s    IL_0030

    }  // end handler
    IL_0030:  ret
  } // end of method BuildFurnitureDialog::'<Update>b__23_5'

} // end of class Game.BuildFurnitureDialog