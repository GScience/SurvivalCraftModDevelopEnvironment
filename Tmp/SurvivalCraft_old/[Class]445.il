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
    IL_0028:  ldc.r4     450.
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
    IL_0000:  call       valuetype [Engine]Engine.Point2 Game.ScreenResolutionManager::get_ScreenResolution()
    IL_0005:  ldfld      int32 [Engine]Engine.Point2::X
    IL_000a:  call       valuetype [Engine]Engine.Point2 Game.ScreenResolutionManager::get_ScreenResolution()
    IL_000f:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0014:  mul
    IL_0015:  call       valuetype [Engine]Engine.Point2 Game.ScreenResolutionManager::get_ScreenResolution()
    IL_001a:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_001f:  call       valuetype [Engine]Engine.Point2 Game.ScreenResolutionManager::get_ScreenResolution()
    IL_0024:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0029:  mul
    IL_002a:  add
    IL_002b:  conv.r4
    IL_002c:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_0031:  call       float32 Game.ScreenResolutionManager::get_ApproximateScreenDpi()
    IL_0036:  div
    IL_0037:  ret
  } // end of method ScreenResolutionManager::get_ApproximateScreenInches

  .method public hidebysig specialname static 
          valuetype [Engine]Engine.Point2 
          get_ScreenResolution() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  call       valuetype [Engine]Engine.Point2 [Engine]Engine.Window::get_Size()
    IL_0005:  ret
  } // end of method ScreenResolutionManager::get_ScreenResolution

  .method public hidebysig specialname static 
          valuetype [Engine]Engine.Point2 
          get_DesiredFrontendResolution() cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  3
    .locals init (valuetype [Engine]Engine.Point2 V_0)
    IL_0000:  call       valuetype [Engine]Engine.Point2 Game.ScreenResolutionManager::get_ScreenResolution()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldfld      int32 [Engine]Engine.Point2::X
    IL_000c:  ldloc.0
    IL_000d:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0012:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0017:  ldloc.0
    IL_0018:  ldfld      int32 [Engine]Engine.Point2::X
    IL_001d:  ldloc.0
    IL_001e:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0023:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0028:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_002d:  ret
  } // end of method ScreenResolutionManager::get_DesiredFrontendResolution

  .method public hidebysig specialname static 
          valuetype [Engine]Engine.Point2 
          get_DesiredGameResolution() cil managed
  {
    // 代码大小       121 (0x79)
    .maxstack  3
    .locals init (valuetype [Engine]Engine.Point2 V_0)
    IL_0000:  call       valuetype [Engine]Engine.Point2 Game.ScreenResolutionManager::get_DesiredFrontendResolution()
    IL_0005:  stloc.0
    IL_0006:  call       valuetype Game.ResolutionMode Game.SettingsManager::get_ResolutionMode()
    IL_000b:  brtrue.s   IL_0027

    IL_000d:  ldloca.s   V_0
    IL_000f:  ldflda     int32 [Engine]Engine.Point2::X
    IL_0014:  dup
    IL_0015:  ldind.i4
    IL_0016:  ldc.i4.2
    IL_0017:  div
    IL_0018:  stind.i4
    IL_0019:  ldloca.s   V_0
    IL_001b:  ldflda     int32 [Engine]Engine.Point2::Y
    IL_0020:  dup
    IL_0021:  ldind.i4
    IL_0022:  ldc.i4.2
    IL_0023:  div
    IL_0024:  stind.i4
    IL_0025:  br.s       IL_0051

    IL_0027:  call       valuetype Game.ResolutionMode Game.SettingsManager::get_ResolutionMode()
    IL_002c:  ldc.i4.1
    IL_002d:  bne.un.s   IL_0051

    IL_002f:  ldloca.s   V_0
    IL_0031:  ldloc.0
    IL_0032:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0037:  ldc.i4.3
    IL_0038:  mul
    IL_0039:  ldc.i4.4
    IL_003a:  div
    IL_003b:  stfld      int32 [Engine]Engine.Point2::X
    IL_0040:  ldloca.s   V_0
    IL_0042:  ldloc.0
    IL_0043:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0048:  ldc.i4.3
    IL_0049:  mul
    IL_004a:  ldc.i4.4
    IL_004b:  div
    IL_004c:  stfld      int32 [Engine]Engine.Point2::Y
    IL_0051:  ldloc.0
    IL_0052:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0057:  ldloc.0
    IL_0058:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_005d:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0062:  ldloc.0
    IL_0063:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0068:  ldloc.0
    IL_0069:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_006e:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0073:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_0078:  ret
  } // end of method ScreenResolutionManager::get_DesiredGameResolution

  .property float32 ApproximateScreenDpi()
  {
    .get float32 Game.ScreenResolutionManager::get_ApproximateScreenDpi()
    .set void Game.ScreenResolutionManager::set_ApproximateScreenDpi(float32)
  } // end of property ScreenResolutionManager::ApproximateScreenDpi
  .property float32 ApproximateScreenInches()
  {
    .get float32 Game.ScreenResolutionManager::get_ApproximateScreenInches()
  } // end of property ScreenResolutionManager::ApproximateScreenInches
  .property valuetype [Engine]Engine.Point2
          ScreenResolution()
  {
    .get valuetype [Engine]Engine.Point2 Game.ScreenResolutionManager::get_ScreenResolution()
  } // end of property ScreenResolutionManager::ScreenResolution
  .property valuetype [Engine]Engine.Point2
          DesiredFrontendResolution()
  {
    .get valuetype [Engine]Engine.Point2 Game.ScreenResolutionManager::get_DesiredFrontendResolution()
  } // end of property ScreenResolutionManager::DesiredFrontendResolution
  .property valuetype [Engine]Engine.Point2
          DesiredGameResolution()
  {
    .get valuetype [Engine]Engine.Point2 Game.ScreenResolutionManager::get_DesiredGameResolution()
  } // end of property ScreenResolutionManager::DesiredGameResolution
} // end of class Game.ScreenResolutionManager