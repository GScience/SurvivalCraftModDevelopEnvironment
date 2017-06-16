.class public auto ansi beforefieldinit Game.SubsystemCamera
       extends [EntitySystem]GameEntitySystem.Subsystem
       implements Game.IDrawable
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c__12`1'<(Game.Camera) T>
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.SubsystemCamera/'<>c__12`1'<!T> '<>9'
    .field public static class [System.Runtime]System.Func`2<class Game.Camera,bool> '<>9__12_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void class Game.SubsystemCamera/'<>c__12`1'<!T>::.ctor()
      IL_0005:  stsfld     class Game.SubsystemCamera/'<>c__12`1'<!0> class Game.SubsystemCamera/'<>c__12`1'<!T>::'<>9'
      IL_000a:  ret
    } // end of method '<>c__12`1'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__12`1'::.ctor

    .method assembly hidebysig instance bool 
            '<FindCamera>b__12_0'(class Game.Camera c) cil managed
    {
      // 代码大小       10 (0xa)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  isinst     !T
      IL_0006:  ldnull
      IL_0007:  cgt.un
      IL_0009:  ret
    } // end of method '<>c__12`1'::'<FindCamera>b__12_0'

  } // end of class '<>c__12`1'

  .field private class Game.SubsystemDrawing m_subsystemDrawing
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.ComponentBody m_target
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.Camera> m_cameras
  .field private class Game.Camera m_activeCamera
  .field public static literal int32 CameraDrawOrder = int32(0xFFFFD8F0)
  .field private int32[] m_drawOrders
  .method public hidebysig specialname instance class Game.Camera 
          get_ActiveCamera() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Camera Game.SubsystemCamera::m_activeCamera
    IL_0006:  ret
  } // end of method SubsystemCamera::get_ActiveCamera

  .method public hidebysig specialname instance void 
          set_ActiveCamera(class Game.Camera 'value') cil managed
  {
    // 代码大小       55 (0x37)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.Camera Game.SubsystemCamera::m_activeCamera
    IL_0007:  beq.s      IL_0036

    IL_0009:  ldarg.0
    IL_000a:  ldfld      class Game.Camera Game.SubsystemCamera::m_activeCamera
    IL_000f:  brfalse.s  IL_001c

    IL_0011:  ldarg.0
    IL_0012:  ldfld      class Game.Camera Game.SubsystemCamera::m_activeCamera
    IL_0017:  callvirt   instance void Game.Camera::Leave()
    IL_001c:  ldarg.0
    IL_001d:  ldarg.1
    IL_001e:  stfld      class Game.Camera Game.SubsystemCamera::m_activeCamera
    IL_0023:  ldarg.0
    IL_0024:  ldfld      class Game.Camera Game.SubsystemCamera::m_activeCamera
    IL_0029:  brfalse.s  IL_0036

    IL_002b:  ldarg.0
    IL_002c:  ldfld      class Game.Camera Game.SubsystemCamera::m_activeCamera
    IL_0031:  callvirt   instance void Game.Camera::Enter()
    IL_0036:  ret
  } // end of method SubsystemCamera::set_ActiveCamera

  .method public hidebysig specialname instance int32 
          get_ActiveCameraIndex() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Camera> Game.SubsystemCamera::m_cameras
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.Camera Game.SubsystemCamera::m_activeCamera
    IL_000c:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.Camera>::IndexOf(!0)
    IL_0011:  ret
  } // end of method SubsystemCamera::get_ActiveCameraIndex

  .method public hidebysig specialname instance void 
          set_ActiveCameraIndex(int32 'value') cil managed
  {
    // 代码大小       45 (0x2d)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.0
    IL_0002:  bge.s      IL_000c

    IL_0004:  ldarg.0
    IL_0005:  ldnull
    IL_0006:  call       instance void Game.SubsystemCamera::set_ActiveCamera(class Game.Camera)
    IL_000b:  ret

    IL_000c:  ldarg.1
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Camera> Game.SubsystemCamera::m_cameras
    IL_0013:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.Camera>::get_Count()
    IL_0018:  bge.s      IL_002c

    IL_001a:  ldarg.0
    IL_001b:  ldarg.0
    IL_001c:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Camera> Game.SubsystemCamera::m_cameras
    IL_0021:  ldarg.1
    IL_0022:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.Camera>::get_Item(int32)
    IL_0027:  call       instance void Game.SubsystemCamera::set_ActiveCamera(class Game.Camera)
    IL_002c:  ret
  } // end of method SubsystemCamera::set_ActiveCameraIndex

  .method public hidebysig instance !!T  FindCamera<(Game.Camera) T>(bool throwOnError) cil managed
  {
    // 代码大小       101 (0x65)
    .maxstack  5
    .locals init (!!T V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Camera> Game.SubsystemCamera::m_cameras
    IL_0006:  ldsfld     class [System.Runtime]System.Func`2<class Game.Camera,bool> class Game.SubsystemCamera/'<>c__12`1'<!!T>::'<>9__12_0'
    IL_000b:  dup
    IL_000c:  brtrue.s   IL_0025

    IL_000e:  pop
    IL_000f:  ldsfld     class Game.SubsystemCamera/'<>c__12`1'<!0> class Game.SubsystemCamera/'<>c__12`1'<!!T>::'<>9'
    IL_0014:  ldftn      instance bool class Game.SubsystemCamera/'<>c__12`1'<!!T>::'<FindCamera>b__12_0'(class Game.Camera)
    IL_001a:  newobj     instance void class [System.Runtime]System.Func`2<class Game.Camera,bool>::.ctor(object,
                                                                                                          native int)
    IL_001f:  dup
    IL_0020:  stsfld     class [System.Runtime]System.Func`2<class Game.Camera,bool> class Game.SubsystemCamera/'<>c__12`1'<!!T>::'<>9__12_0'
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
  } // end of method SubsystemCamera::FindCamera

  .method public hidebysig specialname instance class Game.ComponentBody 
          get_Target() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentBody Game.SubsystemCamera::m_target
    IL_0006:  ret
  } // end of method SubsystemCamera::get_Target

  .method public hidebysig specialname instance void 
          set_Target(class Game.ComponentBody 'value') cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.ComponentBody Game.SubsystemCamera::m_target
    IL_0007:  ret
  } // end of method SubsystemCamera::set_Target

  .method public hidebysig specialname instance bool 
          get_CameraRequiresMovementControls() cil managed
  {
    // 代码大小       82 (0x52)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.Camera Game.SubsystemCamera::get_ActiveCamera()
    IL_0006:  brfalse.s  IL_0050

    IL_0008:  ldarg.0
    IL_0009:  call       instance class Game.Camera Game.SubsystemCamera::get_ActiveCamera()
    IL_000e:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
    IL_0013:  ldtoken    Game.DebugCamera
    IL_0018:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_001d:  beq.s      IL_004e

    IL_001f:  ldarg.0
    IL_0020:  call       instance class Game.Camera Game.SubsystemCamera::get_ActiveCamera()
    IL_0025:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
    IL_002a:  ldtoken    Game.OrbitCamera
    IL_002f:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0034:  beq.s      IL_004e

    IL_0036:  ldarg.0
    IL_0037:  call       instance class Game.Camera Game.SubsystemCamera::get_ActiveCamera()
    IL_003c:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
    IL_0041:  ldtoken    Game.FlyCamera
    IL_0046:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_004b:  ceq
    IL_004d:  ret

    IL_004e:  ldc.i4.1
    IL_004f:  ret

    IL_0050:  ldc.i4.0
    IL_0051:  ret
  } // end of method SubsystemCamera::get_CameraRequiresMovementControls

  .method public hidebysig instance bool 
          IsEntityTarget(class [EntitySystem]GameEntitySystem.Entity entity) cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.ComponentBody Game.SubsystemCamera::get_Target()
    IL_0006:  brfalse.s  IL_0017

    IL_0008:  ldarg.0
    IL_0009:  call       instance class Game.ComponentBody Game.SubsystemCamera::get_Target()
    IL_000e:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0013:  ldarg.1
    IL_0014:  ceq
    IL_0016:  ret

    IL_0017:  ldc.i4.0
    IL_0018:  ret
  } // end of method SubsystemCamera::IsEntityTarget

  .method public hidebysig instance bool 
          IsEntityControlEnabled(class [EntitySystem]GameEntitySystem.Entity entity) cil managed
  {
    // 代码大小       94 (0x5e)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.Camera Game.SubsystemCamera::get_ActiveCamera()
    IL_0006:  brfalse.s  IL_005c

    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  call       instance bool Game.SubsystemCamera::IsEntityTarget(class [EntitySystem]GameEntitySystem.Entity)
    IL_000f:  brfalse.s  IL_005a

    IL_0011:  ldarg.0
    IL_0012:  call       instance class Game.Camera Game.SubsystemCamera::get_ActiveCamera()
    IL_0017:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
    IL_001c:  ldtoken    Game.DebugCamera
    IL_0021:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0026:  beq.s      IL_005a

    IL_0028:  ldarg.0
    IL_0029:  call       instance class Game.Camera Game.SubsystemCamera::get_ActiveCamera()
    IL_002e:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
    IL_0033:  ldtoken    Game.FlyCamera
    IL_0038:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_003d:  beq.s      IL_005a

    IL_003f:  ldarg.0
    IL_0040:  call       instance class Game.Camera Game.SubsystemCamera::get_ActiveCamera()
    IL_0045:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
    IL_004a:  ldtoken    Game.IntroCamera
    IL_004f:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0054:  ceq
    IL_0056:  ldc.i4.0
    IL_0057:  ceq
    IL_0059:  ret

    IL_005a:  ldc.i4.0
    IL_005b:  ret

    IL_005c:  ldc.i4.1
    IL_005d:  ret
  } // end of method SubsystemCamera::IsEntityControlEnabled

  .method public hidebysig instance bool 
          IsEntityFirstPersonTarget(class [EntitySystem]GameEntitySystem.Entity entity) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance bool Game.SubsystemCamera::IsEntityTarget(class [EntitySystem]GameEntitySystem.Entity)
    IL_0007:  brfalse.s  IL_0029

    IL_0009:  ldarg.0
    IL_000a:  call       instance class Game.Camera Game.SubsystemCamera::get_ActiveCamera()
    IL_000f:  brfalse.s  IL_0029

    IL_0011:  ldarg.0
    IL_0012:  call       instance class Game.Camera Game.SubsystemCamera::get_ActiveCamera()
    IL_0017:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
    IL_001c:  ldtoken    Game.FppCamera
    IL_0021:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0026:  ceq
    IL_0028:  ret

    IL_0029:  ldc.i4.0
    IL_002a:  ret
  } // end of method SubsystemCamera::IsEntityFirstPersonTarget

  .method public hidebysig newslot specialname virtual final 
          instance int32[]  get_DrawOrders() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32[] Game.SubsystemCamera::m_drawOrders
    IL_0006:  ret
  } // end of method SubsystemCamera::get_DrawOrders

  .method public hidebysig newslot virtual final 
          instance void  Draw(class Game.SubsystemDrawing subsystemDrawing,
                              int32 drawOrder) cil managed
  {
    // 代码大小       122 (0x7a)
    .maxstack  4
    .locals init (float32 V_0)
    IL_0000:  call       valuetype Game.ViewAngleMode Game.SettingsManager::get_ViewAngleMode()
    IL_0005:  ldc.i4.1
    IL_0006:  bne.un.s   IL_001a

    IL_0008:  ldarg.1
    IL_0009:  ldc.r4     70.
    IL_000e:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_0013:  callvirt   instance void Game.SubsystemDrawing::set_ViewFov(float32)
    IL_0018:  br.s       IL_0044

    IL_001a:  call       valuetype Game.ViewAngleMode Game.SettingsManager::get_ViewAngleMode()
    IL_001f:  ldc.i4.2
    IL_0020:  bne.un.s   IL_0034

    IL_0022:  ldarg.1
    IL_0023:  ldc.r4     90.
    IL_0028:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_002d:  callvirt   instance void Game.SubsystemDrawing::set_ViewFov(float32)
    IL_0032:  br.s       IL_0044

    IL_0034:  ldarg.1
    IL_0035:  ldc.r4     80.
    IL_003a:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_003f:  callvirt   instance void Game.SubsystemDrawing::set_ViewFov(float32)
    IL_0044:  ldarg.0
    IL_0045:  ldfld      class Game.Camera Game.SubsystemCamera::m_activeCamera
    IL_004a:  brfalse.s  IL_0079

    IL_004c:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_0051:  ldc.r4     0.0
    IL_0056:  ldc.r4     0.1
    IL_005b:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0060:  stloc.0
    IL_0061:  ldarg.0
    IL_0062:  ldfld      class Game.Camera Game.SubsystemCamera::m_activeCamera
    IL_0067:  ldarg.0
    IL_0068:  ldfld      class Game.SubsystemDrawing Game.SubsystemCamera::m_subsystemDrawing
    IL_006d:  ldarg.0
    IL_006e:  ldfld      class Game.SubsystemAudio Game.SubsystemCamera::m_subsystemAudio
    IL_0073:  ldloc.0
    IL_0074:  callvirt   instance void Game.Camera::UpdateViewParameters(class Game.SubsystemDrawing,
                                                                         class Game.SubsystemAudio,
                                                                         float32)
    IL_0079:  ret
  } // end of method SubsystemCamera::Draw

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       156 (0x9c)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Camera> Game.SubsystemCamera::m_cameras
    IL_0006:  ldarg.0
    IL_0007:  newobj     instance void Game.FppCamera::.ctor(class Game.SubsystemCamera)
    IL_000c:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Camera>::Add(!0)
    IL_0011:  ldarg.0
    IL_0012:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Camera> Game.SubsystemCamera::m_cameras
    IL_0017:  ldarg.0
    IL_0018:  newobj     instance void Game.DeathCamera::.ctor(class Game.SubsystemCamera)
    IL_001d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Camera>::Add(!0)
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Camera> Game.SubsystemCamera::m_cameras
    IL_0028:  ldarg.0
    IL_0029:  newobj     instance void Game.IntroCamera::.ctor(class Game.SubsystemCamera)
    IL_002e:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Camera>::Add(!0)
    IL_0033:  ldarg.0
    IL_0034:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Camera> Game.SubsystemCamera::m_cameras
    IL_0039:  ldarg.0
    IL_003a:  newobj     instance void Game.TppCamera::.ctor(class Game.SubsystemCamera)
    IL_003f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Camera>::Add(!0)
    IL_0044:  ldarg.0
    IL_0045:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Camera> Game.SubsystemCamera::m_cameras
    IL_004a:  ldarg.0
    IL_004b:  newobj     instance void Game.OrbitCamera::.ctor(class Game.SubsystemCamera)
    IL_0050:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Camera>::Add(!0)
    IL_0055:  ldarg.0
    IL_0056:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Camera> Game.SubsystemCamera::m_cameras
    IL_005b:  ldarg.0
    IL_005c:  newobj     instance void Game.FixedCamera::.ctor(class Game.SubsystemCamera)
    IL_0061:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Camera>::Add(!0)
    IL_0066:  ldarg.0
    IL_0067:  ldarg.0
    IL_0068:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_006d:  ldc.i4.1
    IL_006e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemDrawing>(bool)
    IL_0073:  stfld      class Game.SubsystemDrawing Game.SubsystemCamera::m_subsystemDrawing
    IL_0078:  ldarg.0
    IL_0079:  ldarg.0
    IL_007a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_007f:  ldc.i4.1
    IL_0080:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0085:  stfld      class Game.SubsystemAudio Game.SubsystemCamera::m_subsystemAudio
    IL_008a:  ldarg.0
    IL_008b:  ldarg.1
    IL_008c:  ldstr      "ActiveCameraIndex"
    IL_0091:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<int32>(string)
    IL_0096:  call       instance void Game.SubsystemCamera::set_ActiveCameraIndex(int32)
    IL_009b:  ret
  } // end of method SubsystemCamera::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "ActiveCameraIndex"
    IL_0006:  ldarg.0
    IL_0007:  call       instance int32 Game.SubsystemCamera::get_ActiveCameraIndex()
    IL_000c:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<int32>(string,
                                                                                                         !!0)
    IL_0011:  ret
  } // end of method SubsystemCamera::Save

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Camera>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Camera> Game.SubsystemCamera::m_cameras
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.1
    IL_000d:  newarr     [System.Runtime]System.Int32
    IL_0012:  dup
    IL_0013:  ldc.i4.0
    IL_0014:  ldc.i4     0xffffd8f0
    IL_0019:  stelem.i4
    IL_001a:  stfld      int32[] Game.SubsystemCamera::m_drawOrders
    IL_001f:  ldarg.0
    IL_0020:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_0025:  ret
  } // end of method SubsystemCamera::.ctor

  .property instance class Game.Camera ActiveCamera()
  {
    .get instance class Game.Camera Game.SubsystemCamera::get_ActiveCamera()
    .set instance void Game.SubsystemCamera::set_ActiveCamera(class Game.Camera)
  } // end of property SubsystemCamera::ActiveCamera
  .property instance int32 ActiveCameraIndex()
  {
    .get instance int32 Game.SubsystemCamera::get_ActiveCameraIndex()
    .set instance void Game.SubsystemCamera::set_ActiveCameraIndex(int32)
  } // end of property SubsystemCamera::ActiveCameraIndex
  .property instance class Game.ComponentBody
          Target()
  {
    .get instance class Game.ComponentBody Game.SubsystemCamera::get_Target()
    .set instance void Game.SubsystemCamera::set_Target(class Game.ComponentBody)
  } // end of property SubsystemCamera::Target
  .property instance bool CameraRequiresMovementControls()
  {
    .get instance bool Game.SubsystemCamera::get_CameraRequiresMovementControls()
  } // end of property SubsystemCamera::CameraRequiresMovementControls
  .property instance int32[] DrawOrders()
  {
    .get instance int32[] Game.SubsystemCamera::get_DrawOrders()
  } // end of property SubsystemCamera::DrawOrders
} // end of class Game.SubsystemCamera