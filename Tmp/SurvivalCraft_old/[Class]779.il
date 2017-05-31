.class public auto ansi beforefieldinit Game.SubsystemTime
       extends [EntitySystem]GameEntitySystem.Subsystem
{
  .class sequential ansi sealed nested private beforefieldinit DelayedExecutionRequest
         extends [System.Runtime]System.ValueType
  {
    .field public float64 RealTime
    .field public float64 GameTime
    .field public int32 FramesCount
    .field public class [System.Runtime]System.Action`1<object> Callback
    .field public object Tag
  } // end of class DelayedExecutionRequest

  .field public static literal float32 MaxGameTimeDelta = float32(0.1)
  .field private valuetype [System.Runtime]System.Nullable`1<float64> m_lastTime
  .field private int32 m_frameIndex
  .field private float64 m_realTime
  .field private float64 m_gameTime
  .field private float32 m_realTimeDelta
  .field private float32 m_gameTimeDelta
  .field private float32 m_prevRealTimeDelta
  .field private float32 m_prevGameTimeDelta
  .field private float32 m_gameTimeFactor
  .field private class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemTime/DelayedExecutionRequest> m_delayedExecutionsRequests
  .field private valuetype [System.Runtime]System.Nullable`1<float32> '<FixedTimeStep>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance int32 
          get_FrameIndex() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.SubsystemTime::m_frameIndex
    IL_0006:  ret
  } // end of method SubsystemTime::get_FrameIndex

  .method public hidebysig specialname instance float64 
          get_RealTime() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float64 Game.SubsystemTime::m_realTime
    IL_0006:  ret
  } // end of method SubsystemTime::get_RealTime

  .method public hidebysig specialname instance float32 
          get_RealTimeDelta() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.SubsystemTime::m_realTimeDelta
    IL_0006:  ret
  } // end of method SubsystemTime::get_RealTimeDelta

  .method public hidebysig specialname instance float32 
          get_PreviousRealTimeDelta() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.SubsystemTime::m_prevRealTimeDelta
    IL_0006:  ret
  } // end of method SubsystemTime::get_PreviousRealTimeDelta

  .method public hidebysig specialname instance float64 
          get_GameTime() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float64 Game.SubsystemTime::m_gameTime
    IL_0006:  ret
  } // end of method SubsystemTime::get_GameTime

  .method public hidebysig specialname instance float32 
          get_GameTimeDelta() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.SubsystemTime::m_gameTimeDelta
    IL_0006:  ret
  } // end of method SubsystemTime::get_GameTimeDelta

  .method public hidebysig specialname instance float32 
          get_PreviousGameTimeDelta() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.SubsystemTime::m_prevGameTimeDelta
    IL_0006:  ret
  } // end of method SubsystemTime::get_PreviousGameTimeDelta

  .method public hidebysig specialname instance float32 
          get_GameTimeFactor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.SubsystemTime::m_gameTimeFactor
    IL_0006:  ret
  } // end of method SubsystemTime::get_GameTimeFactor

  .method public hidebysig specialname instance void 
          set_GameTimeFactor(float32 'value') cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldc.r4     0.0
    IL_0007:  ldc.r4     256.
    IL_000c:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0011:  stfld      float32 Game.SubsystemTime::m_gameTimeFactor
    IL_0016:  ret
  } // end of method SubsystemTime::set_GameTimeFactor

  .method public hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<float32> 
          get_FixedTimeStep() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemTime::'<FixedTimeStep>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemTime::get_FixedTimeStep

  .method public hidebysig specialname instance void 
          set_FixedTimeStep(valuetype [System.Runtime]System.Nullable`1<float32> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemTime::'<FixedTimeStep>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemTime::set_FixedTimeStep

  .method public hidebysig instance void 
          NextFrame() cil managed
  {
    // 代码大小       377 (0x179)
    .maxstack  3
    .locals init (float64 V_0,
             valuetype [System.Runtime]System.Nullable`1<float32> V_1,
             int32 V_2,
             valuetype Game.SubsystemTime/DelayedExecutionRequest V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      float32 Game.SubsystemTime::m_realTimeDelta
    IL_0007:  stfld      float32 Game.SubsystemTime::m_prevRealTimeDelta
    IL_000c:  ldarg.0
    IL_000d:  ldarg.0
    IL_000e:  ldfld      float32 Game.SubsystemTime::m_gameTimeDelta
    IL_0013:  stfld      float32 Game.SubsystemTime::m_prevGameTimeDelta
    IL_0018:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
    IL_001d:  stloc.0
    IL_001e:  ldarg.0
    IL_001f:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.SubsystemTime::m_lastTime
    IL_0024:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_0029:  brfalse.s  IL_0041

    IL_002b:  ldarg.0
    IL_002c:  ldloc.0
    IL_002d:  ldarg.0
    IL_002e:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.SubsystemTime::m_lastTime
    IL_0033:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::get_Value()
    IL_0038:  sub
    IL_0039:  conv.r4
    IL_003a:  stfld      float32 Game.SubsystemTime::m_realTimeDelta
    IL_003f:  br.s       IL_004c

    IL_0041:  ldarg.0
    IL_0042:  ldc.r4     0.0
    IL_0047:  stfld      float32 Game.SubsystemTime::m_realTimeDelta
    IL_004c:  ldarg.0
    IL_004d:  ldloc.0
    IL_004e:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_0053:  stfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.SubsystemTime::m_lastTime
    IL_0058:  ldarg.0
    IL_0059:  call       instance valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemTime::get_FixedTimeStep()
    IL_005e:  stloc.1
    IL_005f:  ldloca.s   V_1
    IL_0061:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_0066:  brtrue.s   IL_0087

    IL_0068:  ldarg.0
    IL_0069:  ldarg.0
    IL_006a:  ldfld      float32 Game.SubsystemTime::m_realTimeDelta
    IL_006f:  ldarg.0
    IL_0070:  ldfld      float32 Game.SubsystemTime::m_gameTimeFactor
    IL_0075:  mul
    IL_0076:  ldc.r4     0.1
    IL_007b:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0080:  stfld      float32 Game.SubsystemTime::m_gameTimeDelta
    IL_0085:  br.s       IL_00a5

    IL_0087:  ldarg.0
    IL_0088:  ldarg.0
    IL_0089:  call       instance valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemTime::get_FixedTimeStep()
    IL_008e:  stloc.1
    IL_008f:  ldloca.s   V_1
    IL_0091:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0096:  ldc.r4     0.1
    IL_009b:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_00a0:  stfld      float32 Game.SubsystemTime::m_gameTimeDelta
    IL_00a5:  ldarg.0
    IL_00a6:  ldarg.0
    IL_00a7:  ldfld      float64 Game.SubsystemTime::m_realTime
    IL_00ac:  ldarg.0
    IL_00ad:  ldfld      float32 Game.SubsystemTime::m_realTimeDelta
    IL_00b2:  conv.r8
    IL_00b3:  add
    IL_00b4:  stfld      float64 Game.SubsystemTime::m_realTime
    IL_00b9:  ldarg.0
    IL_00ba:  ldarg.0
    IL_00bb:  ldfld      float64 Game.SubsystemTime::m_gameTime
    IL_00c0:  ldarg.0
    IL_00c1:  ldfld      float32 Game.SubsystemTime::m_gameTimeDelta
    IL_00c6:  conv.r8
    IL_00c7:  add
    IL_00c8:  stfld      float64 Game.SubsystemTime::m_gameTime
    IL_00cd:  ldarg.0
    IL_00ce:  ldarg.0
    IL_00cf:  ldfld      int32 Game.SubsystemTime::m_frameIndex
    IL_00d4:  ldc.i4.1
    IL_00d5:  add
    IL_00d6:  stfld      int32 Game.SubsystemTime::m_frameIndex
    IL_00db:  ldc.i4.0
    IL_00dc:  stloc.2
    IL_00dd:  br         IL_0167

    IL_00e2:  ldarg.0
    IL_00e3:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemTime/DelayedExecutionRequest> Game.SubsystemTime::m_delayedExecutionsRequests
    IL_00e8:  ldloc.2
    IL_00e9:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemTime/DelayedExecutionRequest>::get_Item(int32)
    IL_00ee:  stloc.3
    IL_00ef:  ldloc.3
    IL_00f0:  ldfld      float64 Game.SubsystemTime/DelayedExecutionRequest::RealTime
    IL_00f5:  ldc.r8     0.0
    IL_00fe:  blt.un.s   IL_010e

    IL_0100:  ldarg.0
    IL_0101:  call       instance float64 Game.SubsystemTime::get_RealTime()
    IL_0106:  ldloc.3
    IL_0107:  ldfld      float64 Game.SubsystemTime/DelayedExecutionRequest::RealTime
    IL_010c:  bge.s      IL_0144

    IL_010e:  ldloc.3
    IL_010f:  ldfld      float64 Game.SubsystemTime/DelayedExecutionRequest::GameTime
    IL_0114:  ldc.r8     0.0
    IL_011d:  blt.un.s   IL_012d

    IL_011f:  ldarg.0
    IL_0120:  call       instance float64 Game.SubsystemTime::get_GameTime()
    IL_0125:  ldloc.3
    IL_0126:  ldfld      float64 Game.SubsystemTime/DelayedExecutionRequest::GameTime
    IL_012b:  bge.s      IL_0144

    IL_012d:  ldloc.3
    IL_012e:  ldfld      int32 Game.SubsystemTime/DelayedExecutionRequest::FramesCount
    IL_0133:  ldc.i4.0
    IL_0134:  blt.s      IL_0163

    IL_0136:  ldarg.0
    IL_0137:  call       instance int32 Game.SubsystemTime::get_FrameIndex()
    IL_013c:  ldloc.3
    IL_013d:  ldfld      int32 Game.SubsystemTime/DelayedExecutionRequest::FramesCount
    IL_0142:  blt.s      IL_0163

    IL_0144:  ldarg.0
    IL_0145:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemTime/DelayedExecutionRequest> Game.SubsystemTime::m_delayedExecutionsRequests
    IL_014a:  ldloc.2
    IL_014b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemTime/DelayedExecutionRequest>::RemoveAt(int32)
    IL_0150:  ldloc.3
    IL_0151:  ldfld      class [System.Runtime]System.Action`1<object> Game.SubsystemTime/DelayedExecutionRequest::Callback
    IL_0156:  ldloc.3
    IL_0157:  ldfld      object Game.SubsystemTime/DelayedExecutionRequest::Tag
    IL_015c:  callvirt   instance void class [System.Runtime]System.Action`1<object>::Invoke(!0)
    IL_0161:  br.s       IL_0167

    IL_0163:  ldloc.2
    IL_0164:  ldc.i4.1
    IL_0165:  add
    IL_0166:  stloc.2
    IL_0167:  ldloc.2
    IL_0168:  ldarg.0
    IL_0169:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemTime/DelayedExecutionRequest> Game.SubsystemTime::m_delayedExecutionsRequests
    IL_016e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemTime/DelayedExecutionRequest>::get_Count()
    IL_0173:  blt        IL_00e2

    IL_0178:  ret
  } // end of method SubsystemTime::NextFrame

  .method public hidebysig instance void 
          QueueGameTimeDelayedExecution(float64 gameTime,
                                        object tag,
                                        class [System.Runtime]System.Action`1<object> callback) cil managed
  {
    // 代码大小       69 (0x45)
    .maxstack  3
    .locals init (valuetype Game.SubsystemTime/DelayedExecutionRequest V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemTime/DelayedExecutionRequest> Game.SubsystemTime::m_delayedExecutionsRequests
    IL_0006:  ldloca.s   V_0
    IL_0008:  initobj    Game.SubsystemTime/DelayedExecutionRequest
    IL_000e:  ldloca.s   V_0
    IL_0010:  ldc.r8     -1.
    IL_0019:  stfld      float64 Game.SubsystemTime/DelayedExecutionRequest::RealTime
    IL_001e:  ldloca.s   V_0
    IL_0020:  ldarg.1
    IL_0021:  stfld      float64 Game.SubsystemTime/DelayedExecutionRequest::GameTime
    IL_0026:  ldloca.s   V_0
    IL_0028:  ldc.i4.m1
    IL_0029:  stfld      int32 Game.SubsystemTime/DelayedExecutionRequest::FramesCount
    IL_002e:  ldloca.s   V_0
    IL_0030:  ldarg.3
    IL_0031:  stfld      class [System.Runtime]System.Action`1<object> Game.SubsystemTime/DelayedExecutionRequest::Callback
    IL_0036:  ldloca.s   V_0
    IL_0038:  ldarg.2
    IL_0039:  stfld      object Game.SubsystemTime/DelayedExecutionRequest::Tag
    IL_003e:  ldloc.0
    IL_003f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemTime/DelayedExecutionRequest>::Add(!0)
    IL_0044:  ret
  } // end of method SubsystemTime::QueueGameTimeDelayedExecution

  .method public hidebysig instance void 
          QueueRealTimeDelayedExecution(float64 realTime,
                                        object tag,
                                        class [System.Runtime]System.Action`1<object> callback) cil managed
  {
    // 代码大小       69 (0x45)
    .maxstack  3
    .locals init (valuetype Game.SubsystemTime/DelayedExecutionRequest V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemTime/DelayedExecutionRequest> Game.SubsystemTime::m_delayedExecutionsRequests
    IL_0006:  ldloca.s   V_0
    IL_0008:  initobj    Game.SubsystemTime/DelayedExecutionRequest
    IL_000e:  ldloca.s   V_0
    IL_0010:  ldarg.1
    IL_0011:  stfld      float64 Game.SubsystemTime/DelayedExecutionRequest::RealTime
    IL_0016:  ldloca.s   V_0
    IL_0018:  ldc.r8     -1.
    IL_0021:  stfld      float64 Game.SubsystemTime/DelayedExecutionRequest::GameTime
    IL_0026:  ldloca.s   V_0
    IL_0028:  ldc.i4.m1
    IL_0029:  stfld      int32 Game.SubsystemTime/DelayedExecutionRequest::FramesCount
    IL_002e:  ldloca.s   V_0
    IL_0030:  ldarg.3
    IL_0031:  stfld      class [System.Runtime]System.Action`1<object> Game.SubsystemTime/DelayedExecutionRequest::Callback
    IL_0036:  ldloca.s   V_0
    IL_0038:  ldarg.2
    IL_0039:  stfld      object Game.SubsystemTime/DelayedExecutionRequest::Tag
    IL_003e:  ldloc.0
    IL_003f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemTime/DelayedExecutionRequest>::Add(!0)
    IL_0044:  ret
  } // end of method SubsystemTime::QueueRealTimeDelayedExecution

  .method public hidebysig instance void 
          QueueFrameCountDelayedExecution(int32 framesCount,
                                          object tag,
                                          class [System.Runtime]System.Action`1<object> callback) cil managed
  {
    // 代码大小       77 (0x4d)
    .maxstack  3
    .locals init (valuetype Game.SubsystemTime/DelayedExecutionRequest V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemTime/DelayedExecutionRequest> Game.SubsystemTime::m_delayedExecutionsRequests
    IL_0006:  ldloca.s   V_0
    IL_0008:  initobj    Game.SubsystemTime/DelayedExecutionRequest
    IL_000e:  ldloca.s   V_0
    IL_0010:  ldc.r8     -1.
    IL_0019:  stfld      float64 Game.SubsystemTime/DelayedExecutionRequest::RealTime
    IL_001e:  ldloca.s   V_0
    IL_0020:  ldc.r8     -1.
    IL_0029:  stfld      float64 Game.SubsystemTime/DelayedExecutionRequest::GameTime
    IL_002e:  ldloca.s   V_0
    IL_0030:  ldarg.1
    IL_0031:  stfld      int32 Game.SubsystemTime/DelayedExecutionRequest::FramesCount
    IL_0036:  ldloca.s   V_0
    IL_0038:  ldarg.3
    IL_0039:  stfld      class [System.Runtime]System.Action`1<object> Game.SubsystemTime/DelayedExecutionRequest::Callback
    IL_003e:  ldloca.s   V_0
    IL_0040:  ldarg.2
    IL_0041:  stfld      object Game.SubsystemTime/DelayedExecutionRequest::Tag
    IL_0046:  ldloc.0
    IL_0047:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemTime/DelayedExecutionRequest>::Add(!0)
    IL_004c:  ret
  } // end of method SubsystemTime::QueueFrameCountDelayedExecution

  .method public hidebysig instance bool 
          PeriodicGameTimeEvent(float64 period,
                                float64 offset) cil managed
  {
    // 代码大小       39 (0x27)
    .maxstack  2
    .locals init (float64 V_0,
             float64 V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       instance float64 Game.SubsystemTime::get_GameTime()
    IL_0006:  ldarg.2
    IL_0007:  sub
    IL_0008:  stloc.0
    IL_0009:  ldloc.0
    IL_000a:  ldarg.1
    IL_000b:  div
    IL_000c:  call       float64 [Engine]Engine.MathUtils::Floor(float64)
    IL_0011:  ldarg.1
    IL_0012:  mul
    IL_0013:  stloc.1
    IL_0014:  ldloc.0
    IL_0015:  ldloc.1
    IL_0016:  blt.un.s   IL_0025

    IL_0018:  ldloc.0
    IL_0019:  ldarg.0
    IL_001a:  call       instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_001f:  conv.r8
    IL_0020:  sub
    IL_0021:  ldloc.1
    IL_0022:  clt
    IL_0024:  ret

    IL_0025:  ldc.i4.0
    IL_0026:  ret
  } // end of method SubsystemTime::PeriodicGameTimeEvent

  .method public hidebysig instance bool 
          PeriodicRealTimeEvent(float64 period,
                                float64 offset) cil managed
  {
    // 代码大小       39 (0x27)
    .maxstack  2
    .locals init (float64 V_0,
             float64 V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       instance float64 Game.SubsystemTime::get_RealTime()
    IL_0006:  ldarg.2
    IL_0007:  sub
    IL_0008:  stloc.0
    IL_0009:  ldloc.0
    IL_000a:  ldarg.1
    IL_000b:  div
    IL_000c:  call       float64 [Engine]Engine.MathUtils::Floor(float64)
    IL_0011:  ldarg.1
    IL_0012:  mul
    IL_0013:  stloc.1
    IL_0014:  ldloc.0
    IL_0015:  ldloc.1
    IL_0016:  blt.un.s   IL_0025

    IL_0018:  ldloc.0
    IL_0019:  ldarg.0
    IL_001a:  call       instance float32 Game.SubsystemTime::get_RealTimeDelta()
    IL_001f:  conv.r8
    IL_0020:  sub
    IL_0021:  ldloc.1
    IL_0022:  clt
    IL_0024:  ret

    IL_0025:  ldc.i4.0
    IL_0026:  ret
  } // end of method SubsystemTime::PeriodicRealTimeEvent

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     1.
    IL_0006:  stfld      float32 Game.SubsystemTime::m_gameTimeFactor
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemTime/DelayedExecutionRequest>::.ctor()
    IL_0011:  stfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemTime/DelayedExecutionRequest> Game.SubsystemTime::m_delayedExecutionsRequests
    IL_0016:  ldarg.0
    IL_0017:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_001c:  ret
  } // end of method SubsystemTime::.ctor

  .property instance int32 FrameIndex()
  {
    .get instance int32 Game.SubsystemTime::get_FrameIndex()
  } // end of property SubsystemTime::FrameIndex
  .property instance float64 RealTime()
  {
    .get instance float64 Game.SubsystemTime::get_RealTime()
  } // end of property SubsystemTime::RealTime
  .property instance float32 RealTimeDelta()
  {
    .get instance float32 Game.SubsystemTime::get_RealTimeDelta()
  } // end of property SubsystemTime::RealTimeDelta
  .property instance float32 PreviousRealTimeDelta()
  {
    .get instance float32 Game.SubsystemTime::get_PreviousRealTimeDelta()
  } // end of property SubsystemTime::PreviousRealTimeDelta
  .property instance float64 GameTime()
  {
    .get instance float64 Game.SubsystemTime::get_GameTime()
  } // end of property SubsystemTime::GameTime
  .property instance float32 GameTimeDelta()
  {
    .get instance float32 Game.SubsystemTime::get_GameTimeDelta()
  } // end of property SubsystemTime::GameTimeDelta
  .property instance float32 PreviousGameTimeDelta()
  {
    .get instance float32 Game.SubsystemTime::get_PreviousGameTimeDelta()
  } // end of property SubsystemTime::PreviousGameTimeDelta
  .property instance float32 GameTimeFactor()
  {
    .get instance float32 Game.SubsystemTime::get_GameTimeFactor()
    .set instance void Game.SubsystemTime::set_GameTimeFactor(float32)
  } // end of property SubsystemTime::GameTimeFactor
  .property instance valuetype [System.Runtime]System.Nullable`1<float32>
          FixedTimeStep()
  {
    .get instance valuetype [System.Runtime]System.Nullable`1<float32> Game.SubsystemTime::get_FixedTimeStep()
    .set instance void Game.SubsystemTime::set_FixedTimeStep(valuetype [System.Runtime]System.Nullable`1<float32>)
  } // end of property SubsystemTime::FixedTimeStep
} // end of class Game.SubsystemTime