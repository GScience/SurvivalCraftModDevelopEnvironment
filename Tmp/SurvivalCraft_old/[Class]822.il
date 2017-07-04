.class public auto ansi beforefieldinit Game.View
       extends [System.Runtime]System.Object
       implements [System.Runtime]System.IDisposable
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c__33`1'<(Game.Camera) T>
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.View/'<>c__33`1'<!T> '<>9'
    .field public static class [System.Runtime]System.Func`2<class Game.Camera,bool> '<>9__33_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void class Game.View/'<>c__33`1'<!T>::.ctor()
      IL_0005:  stsfld     class Game.View/'<>c__33`1'<!0> class Game.View/'<>c__33`1'<!T>::'<>9'
      IL_000a:  ret
    } // end of method '<>c__33`1'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__33`1'::.ctor

    .method assembly hidebysig instance bool 
            '<FindCamera>b__33_0'(class Game.Camera c) cil managed
    {
      // 代码大小       10 (0xa)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  isinst     !T
      IL_0006:  ldnull
      IL_0007:  cgt.un
      IL_0009:  ret
    } // end of method '<>c__33`1'::'<FindCamera>b__33_0'

  } // end of class '<>c__33`1'

  .field private class [Engine]Engine.Graphics.PrimitivesRenderer2D m_primitivesRenderer
  .field private class Game.SubsystemDrawing m_subsystemDrawing
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.Camera> m_cameras
  .field private class Game.Camera m_activeCamera
  .field private class [Engine]Engine.Graphics.RenderTarget2D m_scalingRenderTarget
  .field private int32 '<ViewIndex>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.SubsystemViews '<SubsystemViews>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.PlayerData '<PlayerData>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.GameWidget '<GameWidget>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.ComponentCreature '<Target>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemViews subsystemViews,
                               class Game.PlayerData playerData,
                               int32 viewIndex) cil managed
  {
    // 代码大小       255 (0xff)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::.ctor()
    IL_0006:  stfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.View::m_primitivesRenderer
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Camera>::.ctor()
    IL_0011:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Camera> Game.View::m_cameras
    IL_0016:  ldarg.0
    IL_0017:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_001c:  ldarg.0
    IL_001d:  ldarg.3
    IL_001e:  call       instance void Game.View::set_ViewIndex(int32)
    IL_0023:  ldarg.0
    IL_0024:  ldarg.1
    IL_0025:  call       instance void Game.View::set_SubsystemViews(class Game.SubsystemViews)
    IL_002a:  ldarg.0
    IL_002b:  ldarg.2
    IL_002c:  call       instance void Game.View::set_PlayerData(class Game.PlayerData)
    IL_0031:  ldarg.0
    IL_0032:  ldarg.0
    IL_0033:  call       instance class Game.SubsystemViews Game.View::get_SubsystemViews()
    IL_0038:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemDrawing>(bool)
    IL_0043:  stfld      class Game.SubsystemDrawing Game.View::m_subsystemDrawing
    IL_0048:  ldarg.0
    IL_0049:  newobj     instance void Game.GameWidget::.ctor()
    IL_004e:  call       instance void Game.View::set_GameWidget(class Game.GameWidget)
    IL_0053:  ldarg.0
    IL_0054:  call       instance class Game.GameWidget Game.View::get_GameWidget()
    IL_0059:  callvirt   instance class Game.GameViewWidget Game.GameWidget::get_GameViewWidget()
    IL_005e:  ldarg.0
    IL_005f:  callvirt   instance void Game.GameViewWidget::set_View(class Game.View)
    IL_0064:  ldarg.0
    IL_0065:  call       instance class Game.GameWidget Game.View::get_GameWidget()
    IL_006a:  ldarg.0
    IL_006b:  call       instance valuetype Game.WidgetInputDevice Game.View::DetermineInputDevices()
    IL_0070:  newobj     instance void Game.WidgetInput::.ctor(valuetype Game.WidgetInputDevice)
    IL_0075:  callvirt   instance void Game.Widget::set_WidgetsHierarchyInput(class Game.WidgetInput)
    IL_007a:  ldarg.0
    IL_007b:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Camera> Game.View::m_cameras
    IL_0080:  ldarg.0
    IL_0081:  newobj     instance void Game.FppCamera::.ctor(class Game.View)
    IL_0086:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Camera>::Add(!0)
    IL_008b:  ldarg.0
    IL_008c:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Camera> Game.View::m_cameras
    IL_0091:  ldarg.0
    IL_0092:  newobj     instance void Game.DeathCamera::.ctor(class Game.View)
    IL_0097:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Camera>::Add(!0)
    IL_009c:  ldarg.0
    IL_009d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Camera> Game.View::m_cameras
    IL_00a2:  ldarg.0
    IL_00a3:  newobj     instance void Game.IntroCamera::.ctor(class Game.View)
    IL_00a8:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Camera>::Add(!0)
    IL_00ad:  ldarg.0
    IL_00ae:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Camera> Game.View::m_cameras
    IL_00b3:  ldarg.0
    IL_00b4:  newobj     instance void Game.TppCamera::.ctor(class Game.View)
    IL_00b9:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Camera>::Add(!0)
    IL_00be:  ldarg.0
    IL_00bf:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Camera> Game.View::m_cameras
    IL_00c4:  ldarg.0
    IL_00c5:  newobj     instance void Game.OrbitCamera::.ctor(class Game.View)
    IL_00ca:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Camera>::Add(!0)
    IL_00cf:  ldarg.0
    IL_00d0:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Camera> Game.View::m_cameras
    IL_00d5:  ldarg.0
    IL_00d6:  newobj     instance void Game.FixedCamera::.ctor(class Game.View)
    IL_00db:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Camera>::Add(!0)
    IL_00e0:  ldarg.0
    IL_00e1:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Camera> Game.View::m_cameras
    IL_00e6:  ldarg.0
    IL_00e7:  newobj     instance void Game.LoadingCamera::.ctor(class Game.View)
    IL_00ec:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Camera>::Add(!0)
    IL_00f1:  ldarg.0
    IL_00f2:  ldarg.0
    IL_00f3:  ldc.i4.1
    IL_00f4:  call       instance !!0 Game.View::FindCamera<class Game.LoadingCamera>(bool)
    IL_00f9:  stfld      class Game.Camera Game.View::m_activeCamera
    IL_00fe:  ret
  } // end of method View::.ctor

  .method public hidebysig specialname instance int32 
          get_ViewIndex() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.View::'<ViewIndex>k__BackingField'
    IL_0006:  ret
  } // end of method View::get_ViewIndex

  .method private hidebysig specialname instance void 
          set_ViewIndex(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 Game.View::'<ViewIndex>k__BackingField'
    IL_0007:  ret
  } // end of method View::set_ViewIndex

  .method public hidebysig specialname instance class Game.SubsystemViews 
          get_SubsystemViews() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemViews Game.View::'<SubsystemViews>k__BackingField'
    IL_0006:  ret
  } // end of method View::get_SubsystemViews

  .method private hidebysig specialname instance void 
          set_SubsystemViews(class Game.SubsystemViews 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.SubsystemViews Game.View::'<SubsystemViews>k__BackingField'
    IL_0007:  ret
  } // end of method View::set_SubsystemViews

  .method public hidebysig specialname instance class Game.PlayerData 
          get_PlayerData() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.PlayerData Game.View::'<PlayerData>k__BackingField'
    IL_0006:  ret
  } // end of method View::get_PlayerData

  .method private hidebysig specialname instance void 
          set_PlayerData(class Game.PlayerData 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.PlayerData Game.View::'<PlayerData>k__BackingField'
    IL_0007:  ret
  } // end of method View::set_PlayerData

  .method public hidebysig specialname instance class Game.GameWidget 
          get_GameWidget() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.GameWidget Game.View::'<GameWidget>k__BackingField'
    IL_0006:  ret
  } // end of method View::get_GameWidget

  .method private hidebysig specialname instance void 
          set_GameWidget(class Game.GameWidget 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.GameWidget Game.View::'<GameWidget>k__BackingField'
    IL_0007:  ret
  } // end of method View::set_GameWidget

  .method public hidebysig specialname instance class Game.WidgetInput 
          get_Input() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.GameWidget Game.View::get_GameWidget()
    IL_0006:  callvirt   instance class Game.WidgetInput Game.Widget::get_WidgetsHierarchyInput()
    IL_000b:  ret
  } // end of method View::get_Input

  .method public hidebysig specialname instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.Camera> 
          get_Cameras() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Camera> Game.View::m_cameras
    IL_0006:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<class Game.Camera>::.ctor(class [System.Runtime]System.Collections.Generic.IList`1<!0>)
    IL_000b:  ret
  } // end of method View::get_Cameras

  .method public hidebysig specialname instance class Game.Camera 
          get_ActiveCamera() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Camera Game.View::m_activeCamera
    IL_0006:  ret
  } // end of method View::get_ActiveCamera

  .method public hidebysig specialname instance void 
          set_ActiveCamera(class Game.Camera 'value') cil managed
  {
    // 代码大小       59 (0x3b)
    .maxstack  2
    .locals init (class Game.Camera V_0)
    IL_0000:  ldarg.1
    IL_0001:  brfalse.s  IL_000c

    IL_0003:  ldarg.1
    IL_0004:  callvirt   instance class Game.View Game.Camera::get_View()
    IL_0009:  ldarg.0
    IL_000a:  beq.s      IL_0017

    IL_000c:  ldstr      "Invalid camera."
    IL_0011:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0016:  throw

    IL_0017:  ldarg.1
    IL_0018:  ldarg.0
    IL_0019:  ldfld      class Game.Camera Game.View::m_activeCamera
    IL_001e:  beq.s      IL_003a

    IL_0020:  ldarg.0
    IL_0021:  ldfld      class Game.Camera Game.View::m_activeCamera
    IL_0026:  stloc.0
    IL_0027:  ldarg.0
    IL_0028:  ldarg.1
    IL_0029:  stfld      class Game.Camera Game.View::m_activeCamera
    IL_002e:  ldarg.0
    IL_002f:  ldfld      class Game.Camera Game.View::m_activeCamera
    IL_0034:  ldloc.0
    IL_0035:  callvirt   instance void Game.Camera::Activate(class Game.Camera)
    IL_003a:  ret
  } // end of method View::set_ActiveCamera

  .method public hidebysig specialname instance class Game.ComponentCreature 
          get_Target() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.View::'<Target>k__BackingField'
    IL_0006:  ret
  } // end of method View::get_Target

  .method public hidebysig specialname instance void 
          set_Target(class Game.ComponentCreature 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ComponentCreature Game.View::'<Target>k__BackingField'
    IL_0007:  ret
  } // end of method View::set_Target

  .method public hidebysig instance !!T  FindCamera<(Game.Camera) T>([opt] bool throwOnError) cil managed
  {
    .param [1] = bool(true)
    // 代码大小       101 (0x65)
    .maxstack  5
    .locals init (!!T V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Camera> Game.View::m_cameras
    IL_0006:  ldsfld     class [System.Runtime]System.Func`2<class Game.Camera,bool> class Game.View/'<>c__33`1'<!!T>::'<>9__33_0'
    IL_000b:  dup
    IL_000c:  brtrue.s   IL_0025

    IL_000e:  pop
    IL_000f:  ldsfld     class Game.View/'<>c__33`1'<!0> class Game.View/'<>c__33`1'<!!T>::'<>9'
    IL_0014:  ldftn      instance bool class Game.View/'<>c__33`1'<!!T>::'<FindCamera>b__33_0'(class Game.Camera)
    IL_001a:  newobj     instance void class [System.Runtime]System.Func`2<class Game.Camera,bool>::.ctor(object,
                                                                                                          native int)
    IL_001f:  dup
    IL_0020:  stsfld     class [System.Runtime]System.Func`2<class Game.Camera,bool> class Game.View/'<>c__33`1'<!!T>::'<>9__33_0'
    IL_0025:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class Game.Camera>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                    class [System.Runtime]System.Func`2<!!0,bool>)
    IL_002a:  unbox.any  !!T
    IL_002f:  stloc.0
    IL_0030:  ldloc.0
    IL_0031:  box        !!T
    IL_0036:  brtrue.s   IL_003b

    IL_0038:  ldarg.1
    IL_0039:  brtrue.s   IL_003d

    IL_003b:  ldloc.0
    IL_003c:  ret

    IL_003d:  ldstr      "Camera with type \"{0}\" not found."
    IL_0042:  ldc.i4.1
    IL_0043:  newarr     [System.Runtime]System.Object
    IL_0048:  dup
    IL_0049:  ldc.i4.0
    IL_004a:  ldtoken    !!T
    IL_004f:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0054:  callvirt   instance string [System.Runtime]System.Type::get_Name()
    IL_0059:  stelem.ref
    IL_005a:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_005f:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0064:  throw
  } // end of method View::FindCamera

  .method public hidebysig instance bool 
          IsEntityTarget(class [EntitySystem]GameEntitySystem.Entity entity) cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.ComponentCreature Game.View::get_Target()
    IL_0006:  brfalse.s  IL_0017

    IL_0008:  ldarg.0
    IL_0009:  call       instance class Game.ComponentCreature Game.View::get_Target()
    IL_000e:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0013:  ldarg.1
    IL_0014:  ceq
    IL_0016:  ret

    IL_0017:  ldc.i4.0
    IL_0018:  ret
  } // end of method View::IsEntityTarget

  .method public hidebysig instance bool 
          IsEntityFirstPersonTarget(class [EntitySystem]GameEntitySystem.Entity entity) cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance bool Game.View::IsEntityTarget(class [EntitySystem]GameEntitySystem.Entity)
    IL_0007:  brfalse.s  IL_0018

    IL_0009:  ldarg.0
    IL_000a:  call       instance class Game.Camera Game.View::get_ActiveCamera()
    IL_000f:  isinst     Game.FppCamera
    IL_0014:  ldnull
    IL_0015:  cgt.un
    IL_0017:  ret

    IL_0018:  ldc.i4.0
    IL_0019:  ret
  } // end of method View::IsEntityFirstPersonTarget

  .method public hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2> 
          get_ScalingRenderTargetSize() cil managed
  {
    // 代码大小       51 (0x33)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.View::m_scalingRenderTarget
    IL_0006:  brtrue.s   IL_0012

    IL_0008:  ldloca.s   V_0
    IL_000a:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2>
    IL_0010:  ldloc.0
    IL_0011:  ret

    IL_0012:  ldarg.0
    IL_0013:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.View::m_scalingRenderTarget
    IL_0018:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_001d:  ldarg.0
    IL_001e:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.View::m_scalingRenderTarget
    IL_0023:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
    IL_0028:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_002d:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2>::.ctor(!0)
    IL_0032:  ret
  } // end of method View::get_ScalingRenderTargetSize

  .method public hidebysig instance void 
          Draw() cil managed
  {
    // 代码大小       112 (0x70)
    .maxstack  2
    .locals init (valuetype Game.WidgetInputDevice V_0,
             class [Engine]Engine.Graphics.RenderTarget2D V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype Game.WidgetInputDevice Game.View::DetermineInputDevices()
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  call       instance class Game.GameWidget Game.View::get_GameWidget()
    IL_000d:  callvirt   instance class Game.WidgetInput Game.Widget::get_WidgetsHierarchyInput()
    IL_0012:  callvirt   instance valuetype Game.WidgetInputDevice Game.WidgetInput::get_Devices()
    IL_0017:  ldloc.0
    IL_0018:  beq.s      IL_002b

    IL_001a:  ldarg.0
    IL_001b:  call       instance class Game.GameWidget Game.View::get_GameWidget()
    IL_0020:  ldloc.0
    IL_0021:  newobj     instance void Game.WidgetInput::.ctor(valuetype Game.WidgetInputDevice)
    IL_0026:  callvirt   instance void Game.Widget::set_WidgetsHierarchyInput(class Game.WidgetInput)
    IL_002b:  ldarg.0
    IL_002c:  call       instance class Game.PlayerData Game.View::get_PlayerData()
    IL_0031:  callvirt   instance bool Game.PlayerData::get_IsReadyForPlaying()
    IL_0036:  brfalse.s  IL_006f

    IL_0038:  ldarg.0
    IL_0039:  call       instance class Game.Camera Game.View::get_ActiveCamera()
    IL_003e:  callvirt   instance void Game.Camera::Draw()
    IL_0043:  call       class [Engine]Engine.Graphics.RenderTarget2D [Engine]Engine.Graphics.Display::get_RenderTarget()
    IL_0048:  stloc.1
    IL_0049:  ldarg.0
    IL_004a:  call       instance void Game.View::SetupScalingRenderTarget()
    .try
    {
      IL_004f:  ldarg.0
      IL_0050:  ldfld      class Game.SubsystemDrawing Game.View::m_subsystemDrawing
      IL_0055:  ldarg.0
      IL_0056:  call       instance class Game.Camera Game.View::get_ActiveCamera()
      IL_005b:  callvirt   instance void Game.SubsystemDrawing::Draw(class Game.Camera)
      IL_0060:  leave.s    IL_0069

    }  // end .try
    finally
    {
      IL_0062:  ldloc.1
      IL_0063:  call       void [Engine]Engine.Graphics.Display::set_RenderTarget(class [Engine]Engine.Graphics.RenderTarget2D)
      IL_0068:  endfinally
    }  // end handler
    IL_0069:  ldarg.0
    IL_006a:  call       instance void Game.View::ApplyScalingRenderTarget()
    IL_006f:  ret
  } // end of method View::Draw

  .method public hidebysig newslot virtual final 
          instance void  Dispose() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldflda     class [Engine]Engine.Graphics.RenderTarget2D Game.View::m_scalingRenderTarget
    IL_0006:  call       void [Engine]Engine.Utilities::Dispose<class [Engine]Engine.Graphics.RenderTarget2D>(!!0&)
    IL_000b:  ret
  } // end of method View::Dispose

  .method private hidebysig instance valuetype Game.WidgetInputDevice 
          DetermineInputDevices() cil managed
  {
    // 代码大小       240 (0xf0)
    .maxstack  2
    .locals init (valuetype Game.WidgetInputDevice V_0,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.PlayerData> V_1,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> V_2,
             class Game.PlayerData V_3,
             valuetype Game.WidgetInputDevice V_4,
             class Game.PlayerData V_5)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.PlayerData Game.View::get_PlayerData()
    IL_0006:  ldarg.0
    IL_0007:  call       instance class Game.PlayerData Game.View::get_PlayerData()
    IL_000c:  callvirt   instance class Game.SubsystemPlayers Game.PlayerData::get_SubsystemPlayers()
    IL_0011:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> Game.SubsystemPlayers::get_PlayersData()
    IL_0016:  box        valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData>
    IL_001b:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class Game.PlayerData>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0020:  bne.un.s   IL_0086

    IL_0022:  ldc.i4.0
    IL_0023:  stloc.0
    IL_0024:  ldarg.0
    IL_0025:  call       instance class Game.PlayerData Game.View::get_PlayerData()
    IL_002a:  callvirt   instance class Game.SubsystemPlayers Game.PlayerData::get_SubsystemPlayers()
    IL_002f:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> Game.SubsystemPlayers::get_PlayersData()
    IL_0034:  stloc.2
    IL_0035:  ldloca.s   V_2
    IL_0037:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData>::GetEnumerator()
    IL_003c:  stloc.1
    .try
    {
      IL_003d:  br.s       IL_0059

      IL_003f:  ldloca.s   V_1
      IL_0041:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.PlayerData>::get_Current()
      IL_0046:  stloc.3
      IL_0047:  ldloc.3
      IL_0048:  ldarg.0
      IL_0049:  call       instance class Game.PlayerData Game.View::get_PlayerData()
      IL_004e:  beq.s      IL_0059

      IL_0050:  ldloc.0
      IL_0051:  ldloc.3
      IL_0052:  callvirt   instance valuetype Game.WidgetInputDevice Game.PlayerData::get_InputDevice()
      IL_0057:  or
      IL_0058:  stloc.0
      IL_0059:  ldloca.s   V_1
      IL_005b:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.PlayerData>::MoveNext()
      IL_0060:  brtrue.s   IL_003f

      IL_0062:  leave.s    IL_0072

    }  // end .try
    finally
    {
      IL_0064:  ldloca.s   V_1
      IL_0066:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.PlayerData>
      IL_006c:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0071:  endfinally
    }  // end handler
    IL_0072:  ldc.i4.s   127
    IL_0074:  ldloc.0
    IL_0075:  not
    IL_0076:  and
    IL_0077:  ldc.i4.4
    IL_0078:  or
    IL_0079:  ldarg.0
    IL_007a:  call       instance class Game.PlayerData Game.View::get_PlayerData()
    IL_007f:  callvirt   instance valuetype Game.WidgetInputDevice Game.PlayerData::get_InputDevice()
    IL_0084:  or
    IL_0085:  ret

    IL_0086:  ldc.i4.0
    IL_0087:  stloc.s    V_4
    IL_0089:  ldarg.0
    IL_008a:  call       instance class Game.PlayerData Game.View::get_PlayerData()
    IL_008f:  callvirt   instance class Game.SubsystemPlayers Game.PlayerData::get_SubsystemPlayers()
    IL_0094:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> Game.SubsystemPlayers::get_PlayersData()
    IL_0099:  stloc.2
    IL_009a:  ldloca.s   V_2
    IL_009c:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData>::GetEnumerator()
    IL_00a1:  stloc.1
    .try
    {
      IL_00a2:  br.s       IL_00c5

      IL_00a4:  ldloca.s   V_1
      IL_00a6:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.PlayerData>::get_Current()
      IL_00ab:  stloc.s    V_5
      IL_00ad:  ldloc.s    V_5
      IL_00af:  ldarg.0
      IL_00b0:  call       instance class Game.PlayerData Game.View::get_PlayerData()
      IL_00b5:  bne.un.s   IL_00b9

      IL_00b7:  leave.s    IL_00de

      IL_00b9:  ldloc.s    V_4
      IL_00bb:  ldloc.s    V_5
      IL_00bd:  callvirt   instance valuetype Game.WidgetInputDevice Game.PlayerData::get_InputDevice()
      IL_00c2:  or
      IL_00c3:  stloc.s    V_4
      IL_00c5:  ldloca.s   V_1
      IL_00c7:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.PlayerData>::MoveNext()
      IL_00cc:  brtrue.s   IL_00a4

      IL_00ce:  leave.s    IL_00de

    }  // end .try
    finally
    {
      IL_00d0:  ldloca.s   V_1
      IL_00d2:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.PlayerData>
      IL_00d8:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00dd:  endfinally
    }  // end handler
    IL_00de:  ldarg.0
    IL_00df:  call       instance class Game.PlayerData Game.View::get_PlayerData()
    IL_00e4:  callvirt   instance valuetype Game.WidgetInputDevice Game.PlayerData::get_InputDevice()
    IL_00e9:  ldloc.s    V_4
    IL_00eb:  not
    IL_00ec:  and
    IL_00ed:  ldc.i4.4
    IL_00ee:  or
    IL_00ef:  ret
  } // end of method View::DetermineInputDevices

  .method private hidebysig instance void 
          SetupScalingRenderTarget() cil managed
  {
    // 代码大小       384 (0x180)
    .maxstack  5
    .locals init (float32 V_0,
             class Game.GameViewWidget V_1,
             float32 V_2,
             float32 V_3,
             valuetype [Engine]Engine.Vector2 V_4,
             valuetype [Engine]Engine.Point2 V_5,
             valuetype [Engine]Engine.Matrix V_6,
             valuetype [Engine]Engine.Vector3 V_7,
             valuetype [Engine]Engine.Point2 V_8)
    IL_0000:  call       valuetype Game.ResolutionMode Game.SettingsManager::get_ResolutionMode()
    IL_0005:  brtrue.s   IL_000f

    IL_0007:  ldc.r4     0.5
    IL_000c:  stloc.0
    IL_000d:  br.s       IL_0025

    IL_000f:  call       valuetype Game.ResolutionMode Game.SettingsManager::get_ResolutionMode()
    IL_0014:  ldc.i4.1
    IL_0015:  bne.un.s   IL_001f

    IL_0017:  ldc.r4     0.75
    IL_001c:  stloc.0
    IL_001d:  br.s       IL_0025

    IL_001f:  ldc.r4     1.
    IL_0024:  stloc.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class Game.GameWidget Game.View::get_GameWidget()
    IL_002b:  callvirt   instance class Game.GameViewWidget Game.GameWidget::get_GameViewWidget()
    IL_0030:  stloc.1
    IL_0031:  ldloc.1
    IL_0032:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_0037:  stloc.s    V_6
    IL_0039:  ldloca.s   V_6
    IL_003b:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_0040:  stloc.s    V_7
    IL_0042:  ldloca.s   V_7
    IL_0044:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_0049:  stloc.2
    IL_004a:  ldloc.1
    IL_004b:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_0050:  stloc.s    V_6
    IL_0052:  ldloca.s   V_6
    IL_0054:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Up()
    IL_0059:  stloc.s    V_7
    IL_005b:  ldloca.s   V_7
    IL_005d:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_0062:  stloc.3
    IL_0063:  ldloca.s   V_4
    IL_0065:  ldloc.1
    IL_0066:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_006b:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0070:  ldloc.2
    IL_0071:  mul
    IL_0072:  ldloc.1
    IL_0073:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0078:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_007d:  ldloc.3
    IL_007e:  mul
    IL_007f:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0084:  ldloca.s   V_8
    IL_0086:  initobj    [Engine]Engine.Point2
    IL_008c:  ldloca.s   V_8
    IL_008e:  ldloc.s    V_4
    IL_0090:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0095:  ldloc.0
    IL_0096:  mul
    IL_0097:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_009c:  conv.i4
    IL_009d:  stfld      int32 [Engine]Engine.Point2::X
    IL_00a2:  ldloca.s   V_8
    IL_00a4:  ldloc.s    V_4
    IL_00a6:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00ab:  ldloc.0
    IL_00ac:  mul
    IL_00ad:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_00b2:  conv.i4
    IL_00b3:  stfld      int32 [Engine]Engine.Point2::Y
    IL_00b8:  ldloc.s    V_8
    IL_00ba:  stloc.s    V_5
    IL_00bc:  ldloc.0
    IL_00bd:  ldc.r4     1.
    IL_00c2:  blt.s      IL_00d9

    IL_00c4:  ldloc.1
    IL_00c5:  callvirt   instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_00ca:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_00cf:  call       bool [Engine]Engine.Color::op_Inequality(valuetype [Engine]Engine.Color,
                                                                  valuetype [Engine]Engine.Color)
    IL_00d4:  brfalse    IL_0174

    IL_00d9:  ldloc.s    V_5
    IL_00db:  ldfld      int32 [Engine]Engine.Point2::X
    IL_00e0:  ldc.i4.0
    IL_00e1:  ble        IL_0174

    IL_00e6:  ldloc.s    V_5
    IL_00e8:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_00ed:  ldc.i4.0
    IL_00ee:  ble        IL_0174

    IL_00f3:  ldarg.0
    IL_00f4:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.View::m_scalingRenderTarget
    IL_00f9:  brfalse.s  IL_0123

    IL_00fb:  ldarg.0
    IL_00fc:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.View::m_scalingRenderTarget
    IL_0101:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_0106:  ldloc.s    V_5
    IL_0108:  ldfld      int32 [Engine]Engine.Point2::X
    IL_010d:  bne.un.s   IL_0123

    IL_010f:  ldarg.0
    IL_0110:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.View::m_scalingRenderTarget
    IL_0115:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
    IL_011a:  ldloc.s    V_5
    IL_011c:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0121:  beq.s      IL_0149

    IL_0123:  ldarg.0
    IL_0124:  ldflda     class [Engine]Engine.Graphics.RenderTarget2D Game.View::m_scalingRenderTarget
    IL_0129:  call       void [Engine]Engine.Utilities::Dispose<class [Engine]Engine.Graphics.RenderTarget2D>(!!0&)
    IL_012e:  ldarg.0
    IL_012f:  ldloc.s    V_5
    IL_0131:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0136:  ldloc.s    V_5
    IL_0138:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_013d:  ldc.i4.0
    IL_013e:  ldc.i4.2
    IL_013f:  newobj     instance void [Engine]Engine.Graphics.RenderTarget2D::.ctor(int32,
                                                                                     int32,
                                                                                     valuetype [Engine]Engine.Graphics.ColorFormat,
                                                                                     valuetype [Engine]Engine.Graphics.DepthFormat)
    IL_0144:  stfld      class [Engine]Engine.Graphics.RenderTarget2D Game.View::m_scalingRenderTarget
    IL_0149:  ldarg.0
    IL_014a:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.View::m_scalingRenderTarget
    IL_014f:  call       void [Engine]Engine.Graphics.Display::set_RenderTarget(class [Engine]Engine.Graphics.RenderTarget2D)
    IL_0154:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Black
    IL_0159:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Color>::.ctor(!0)
    IL_015e:  ldc.r4     1.
    IL_0163:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_0168:  ldc.i4.0
    IL_0169:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_016e:  call       void [Engine]Engine.Graphics.Display::Clear(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Color>,
                                                                     valuetype [System.Runtime]System.Nullable`1<float32>,
                                                                     valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_0173:  ret

    IL_0174:  ldarg.0
    IL_0175:  ldflda     class [Engine]Engine.Graphics.RenderTarget2D Game.View::m_scalingRenderTarget
    IL_017a:  call       void [Engine]Engine.Utilities::Dispose<class [Engine]Engine.Graphics.RenderTarget2D>(!!0&)
    IL_017f:  ret
  } // end of method View::SetupScalingRenderTarget

  .method private hidebysig instance void 
          ApplyScalingRenderTarget() cil managed
  {
    // 代码大小       168 (0xa8)
    .maxstack  8
    .locals init (class Game.GameViewWidget V_0,
             class [Engine]Engine.Graphics.BlendState V_1,
             int32 V_2,
             valuetype [Engine]Engine.Color V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.View::m_scalingRenderTarget
    IL_0006:  brfalse    IL_00a7

    IL_000b:  ldarg.0
    IL_000c:  call       instance class Game.GameWidget Game.View::get_GameWidget()
    IL_0011:  callvirt   instance class Game.GameViewWidget Game.GameWidget::get_GameViewWidget()
    IL_0016:  stloc.0
    IL_0017:  ldloc.0
    IL_0018:  callvirt   instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_001d:  stloc.3
    IL_001e:  ldloca.s   V_3
    IL_0020:  call       instance uint8 [Engine]Engine.Color::get_A()
    IL_0025:  ldc.i4     0xff
    IL_002a:  blt.s      IL_0033

    IL_002c:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::Opaque
    IL_0031:  br.s       IL_0038

    IL_0033:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::AlphaBlend
    IL_0038:  stloc.1
    IL_0039:  ldarg.0
    IL_003a:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.View::m_primitivesRenderer
    IL_003f:  ldarg.0
    IL_0040:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.View::m_scalingRenderTarget
    IL_0045:  ldc.i4.0
    IL_0046:  ldc.i4.0
    IL_0047:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
    IL_004c:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullNoneScissor
    IL_0051:  ldloc.1
    IL_0052:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
    IL_0057:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_005c:  dup
    IL_005d:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleVertices
    IL_0062:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Count()
    IL_0067:  stloc.2
    IL_0068:  dup
    IL_0069:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_006e:  ldloc.0
    IL_006f:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Widget::get_ActualSize()
    IL_0074:  ldc.r4     0.0
    IL_0079:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_007e:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::One
    IL_0083:  ldloc.0
    IL_0084:  callvirt   instance valuetype [Engine]Engine.Color Game.Widget::get_GlobalColorTransform()
    IL_0089:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          float32,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_008e:  ldloc.0
    IL_008f:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Widget::get_GlobalTransform()
    IL_0094:  ldloc.2
    IL_0095:  ldc.i4.m1
    IL_0096:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::TransformTriangles(valuetype [Engine]Engine.Matrix,
                                                                                                   int32,
                                                                                                   int32)
    IL_009b:  ldarg.0
    IL_009c:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.View::m_primitivesRenderer
    IL_00a1:  ldc.i4.1
    IL_00a2:  callvirt   instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::Flush(bool)
    IL_00a7:  ret
  } // end of method View::ApplyScalingRenderTarget

  .property instance int32 ViewIndex()
  {
    .get instance int32 Game.View::get_ViewIndex()
    .set instance void Game.View::set_ViewIndex(int32)
  } // end of property View::ViewIndex
  .property instance class Game.SubsystemViews
          SubsystemViews()
  {
    .get instance class Game.SubsystemViews Game.View::get_SubsystemViews()
    .set instance void Game.View::set_SubsystemViews(class Game.SubsystemViews)
  } // end of property View::SubsystemViews
  .property instance class Game.PlayerData
          PlayerData()
  {
    .get instance class Game.PlayerData Game.View::get_PlayerData()
    .set instance void Game.View::set_PlayerData(class Game.PlayerData)
  } // end of property View::PlayerData
  .property instance class Game.GameWidget
          GameWidget()
  {
    .get instance class Game.GameWidget Game.View::get_GameWidget()
    .set instance void Game.View::set_GameWidget(class Game.GameWidget)
  } // end of property View::GameWidget
  .property instance class Game.WidgetInput
          Input()
  {
    .get instance class Game.WidgetInput Game.View::get_Input()
  } // end of property View::Input
  .property instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.Camera>
          Cameras()
  {
    .get instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.Camera> Game.View::get_Cameras()
  } // end of property View::Cameras
  .property instance class Game.Camera ActiveCamera()
  {
    .get instance class Game.Camera Game.View::get_ActiveCamera()
    .set instance void Game.View::set_ActiveCamera(class Game.Camera)
  } // end of property View::ActiveCamera
  .property instance class Game.ComponentCreature
          Target()
  {
    .get instance class Game.ComponentCreature Game.View::get_Target()
    .set instance void Game.View::set_Target(class Game.ComponentCreature)
  } // end of property View::Target
  .property instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2>
          ScalingRenderTargetSize()
  {
    .get instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point2> Game.View::get_ScalingRenderTargetSize()
  } // end of property View::ScalingRenderTargetSize
} // end of class Game.View