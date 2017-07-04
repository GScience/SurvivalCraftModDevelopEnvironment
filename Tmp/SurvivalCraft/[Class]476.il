.class public abstract auto ansi sealed Game.ScreenResolutionManager
       extends [System.Runtime]System.Object
{
  .field private static float32 '<ApproximateScreenDpi>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       56 (0x38)
    .maxstack  3
    .locals init (class [Windows]Windows.Graphics.Display.DisplayInformation V_0)
    IL_0000:  call       class [Windows]Windows.Graphics.Display.DisplayInformation [Windows]Windows.Graphics.Display.DisplayInformation::GetForCurrentView()
    IL_0005:  stloc.0
    IL_0006:  ldc.r4     0.5
    IL_000b:  ldloc.0
    IL_000c:  callvirt   instance float32 [Windows]Windows.Graphics.Display.DisplayInformation::get_RawDpiX()
    IL_0011:  ldloc.0
    IL_0012:  callvirt   instance float32 [Windows]Windows.Graphics.Display.DisplayInformation::get_RawDpiY()
    IL_0017:  add
    IL_0018:  mul
    IL_0019:  call       void Game.ScreenResolutionManager::set_ApproximateScreenDpi(float32)
    IL_001e:  call       float32 Game.ScreenResolutionManager::get_ApproximateScreenDpi()
    IL_0023:  ldc.r4     96.
    IL_0028:  ldc.r4     800.
    IL_002d:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0032:  call       void Game.ScreenResolutionManager::set_ApproximateScreenDpi(float32)
    IL_0037:  ret
  } // end of method ScreenResolutionManager::.cctor

  .method public hidebysig specialname static 
          float32  get_ApproximateScreenDpi() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     float32 Game.ScreenResolutionManager::'<ApproximateScreenDpi>k__BackingField'
    IL_0005:  ret
  } // end of method ScreenResolutionManager::get_ApproximateScreenDpi

  .method private hidebysig specialname static 
          void  set_ApproximateScreenDpi(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     float32 Game.ScreenResolutionManager::'<ApproximateScreenDpi>k__BackingField'
    IL_0006:  ret
  } // end of method ScreenResolutionManager::set_ApproximateScreenDpi

  .method public hidebysig specialname static 
          float32  get_ApproximateScreenInches() cil managed
  {
    // 代码大小       56 (0x38)
    .maxstack  8
    IL_0000:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Window::get_ScreenSize()
    IL_0005:  ldfld      int32 [Engine]Engine.Point2::X
    IL_000a:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Window::get_ScreenSize()
    IL_000f:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0014:  mul
    IL_0015:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Window::get_ScreenSize()
    IL_001a:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_001f:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Window::get_ScreenSize()
    IL_0024:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0029:  mul
    IL_002a:  add
    IL_002b:  conv.r4
    IL_002c:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_0031:  call       float32 Game.ScreenResolutionManager::get_ApproximateScreenDpi()
    IL_0036:  div
    IL_0037:  ret
  } // end of method ScreenResolutionManager::get_ApproximateScreenInches

  .property float32 ApproximateScreenDpi()
  {
    .get float32 Game.ScreenResolutionManager::get_ApproximateScreenDpi()
    .set void Game.ScreenResolutionManager::set_ApproximateScreenDpi(float32)
  } // end of property ScreenResolutionManager::ApproximateScreenDpi
  .property float32 ApproximateScreenInches()
  {
    .get float32 Game.ScreenResolutionManager::get_ApproximateScreenInches()
  } // end of property ScreenResolutionManager::ApproximateScreenInches
} // end of class Game.ScreenResolutionManager