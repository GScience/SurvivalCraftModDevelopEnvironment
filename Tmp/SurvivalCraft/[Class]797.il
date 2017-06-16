.class public abstract auto ansi sealed beforefieldinit Game.RenderTargetsPool
       extends [System.Runtime]System.Object
{
  .class auto ansi sealed nested public RenderTargetState
         extends [System.Runtime]System.Enum
  {
    .field public specialname rtspecialname int32 value__
    .field public static literal valuetype Game.RenderTargetsPool/RenderTargetState NotManaged = int32(0x00000000)
    .field public static literal valuetype Game.RenderTargetsPool/RenderTargetState Free = int32(0x00000001)
    .field public static literal valuetype Game.RenderTargetsPool/RenderTargetState Used = int32(0x00000002)
  } // end of class RenderTargetState

  .class sequential ansi sealed nested private beforefieldinit Key
         extends [System.Runtime]System.ValueType
  {
    .class sequential ansi sealed nested public beforefieldinit EqualityComparer
           extends [System.Runtime]System.ValueType
           implements class [System.Runtime]System.Collections.Generic.IEqualityComparer`1<valuetype Game.RenderTargetsPool/Key>
    {
      .pack 0
      .size 1
      .method public hidebysig newslot virtual final 
              instance bool  Equals(valuetype Game.RenderTargetsPool/Key x,
                                    valuetype Game.RenderTargetsPool/Key y) cil managed
      {
        // 代码大小       36 (0x24)
        .maxstack  8
        IL_0000:  ldarg.1
        IL_0001:  ldfld      valuetype [Engine]Engine.Point2 Game.RenderTargetsPool/Key::Size
        IL_0006:  ldarg.2
        IL_0007:  ldfld      valuetype [Engine]Engine.Point2 Game.RenderTargetsPool/Key::Size
        IL_000c:  call       bool [Engine]Engine.Point2::op_Equality(valuetype [Engine]Engine.Point2,
                                                                     valuetype [Engine]Engine.Point2)
        IL_0011:  brfalse.s  IL_0022

        IL_0013:  ldarg.1
        IL_0014:  ldfld      valuetype [Engine]Engine.Graphics.ColorFormat Game.RenderTargetsPool/Key::Format
        IL_0019:  ldarg.2
        IL_001a:  ldfld      valuetype [Engine]Engine.Graphics.ColorFormat Game.RenderTargetsPool/Key::Format
        IL_001f:  ceq
        IL_0021:  ret

        IL_0022:  ldc.i4.0
        IL_0023:  ret
      } // end of method EqualityComparer::Equals

      .method public hidebysig newslot virtual final 
              instance int32  GetHashCode(valuetype Game.RenderTargetsPool/Key key) cil managed
      {
        // 代码大小       7 (0x7)
        .maxstack  8
        IL_0000:  ldarg.1
        IL_0001:  ldfld      int32 Game.RenderTargetsPool/Key::m_hashCode
        IL_0006:  ret
      } // end of method EqualityComparer::GetHashCode

    } // end of class EqualityComparer

    .field public initonly valuetype [Engine]Engine.Point2 Size
    .field public initonly valuetype [Engine]Engine.Graphics.ColorFormat Format
    .field private initonly int32 m_hashCode
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor(valuetype [Engine]Engine.Point2 size,
                                 valuetype [Engine]Engine.Graphics.ColorFormat format) cil managed
    {
      // 代码大小       61 (0x3d)
      .maxstack  3
      .locals init (int32 V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldarg.1
      IL_0002:  stfld      valuetype [Engine]Engine.Point2 Game.RenderTargetsPool/Key::Size
      IL_0007:  ldarg.0
      IL_0008:  ldarg.2
      IL_0009:  stfld      valuetype [Engine]Engine.Graphics.ColorFormat Game.RenderTargetsPool/Key::Format
      IL_000e:  ldarg.0
      IL_000f:  ldarga.s   size
      IL_0011:  ldflda     int32 [Engine]Engine.Point2::X
      IL_0016:  call       instance int32 [System.Runtime]System.Int32::GetHashCode()
      IL_001b:  ldarga.s   size
      IL_001d:  ldflda     int32 [Engine]Engine.Point2::Y
      IL_0022:  call       instance int32 [System.Runtime]System.Int32::GetHashCode()
      IL_0027:  xor
      IL_0028:  ldarg.0
      IL_0029:  ldfld      valuetype [Engine]Engine.Graphics.ColorFormat Game.RenderTargetsPool/Key::Format
      IL_002e:  stloc.0
      IL_002f:  ldloca.s   V_0
      IL_0031:  call       instance int32 [System.Runtime]System.Int32::GetHashCode()
      IL_0036:  xor
      IL_0037:  stfld      int32 Game.RenderTargetsPool/Key::m_hashCode
      IL_003c:  ret
    } // end of method Key::.ctor

    .method public hidebysig virtual instance int32 
            GetHashCode() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.RenderTargetsPool/Key::m_hashCode
      IL_0006:  ret
    } // end of method Key::GetHashCode

    .method public hidebysig virtual instance bool 
            Equals(object obj) cil managed
    {
      // 代码大小       53 (0x35)
      .maxstack  2
      .locals init (valuetype Game.RenderTargetsPool/Key V_0)
      IL_0000:  ldarg.1
      IL_0001:  isinst     Game.RenderTargetsPool/Key
      IL_0006:  brfalse.s  IL_0033

      IL_0008:  ldarg.1
      IL_0009:  unbox.any  Game.RenderTargetsPool/Key
      IL_000e:  stloc.0
      IL_000f:  ldloc.0
      IL_0010:  ldfld      valuetype [Engine]Engine.Point2 Game.RenderTargetsPool/Key::Size
      IL_0015:  ldarg.0
      IL_0016:  ldfld      valuetype [Engine]Engine.Point2 Game.RenderTargetsPool/Key::Size
      IL_001b:  call       bool [Engine]Engine.Point2::op_Equality(valuetype [Engine]Engine.Point2,
                                                                   valuetype [Engine]Engine.Point2)
      IL_0020:  brfalse.s  IL_0031

      IL_0022:  ldloc.0
      IL_0023:  ldfld      valuetype [Engine]Engine.Graphics.ColorFormat Game.RenderTargetsPool/Key::Format
      IL_0028:  ldarg.0
      IL_0029:  ldfld      valuetype [Engine]Engine.Graphics.ColorFormat Game.RenderTargetsPool/Key::Format
      IL_002e:  ceq
      IL_0030:  ret

      IL_0031:  ldc.i4.0
      IL_0032:  ret

      IL_0033:  ldc.i4.0
      IL_0034:  ret
    } // end of method Key::Equals

  } // end of class Key

  .field private static class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.RenderTargetsPool/Key,class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.RenderTarget2D>> m_freeRenderTargets
  .field private static class [System.Collections]System.Collections.Generic.Dictionary`2<class [Engine]Engine.Graphics.RenderTarget2D,valuetype Game.RenderTargetsPool/Key> m_usedRenderTargets
  .method public hidebysig static class [Engine]Engine.Graphics.RenderTarget2D 
          GetRenderTarget(valuetype [Engine]Engine.Point2 size,
                          valuetype [Engine]Engine.Graphics.ColorFormat format) cil managed
  {
    // 代码大小       120 (0x78)
    .maxstack  4
    .locals init (valuetype Game.RenderTargetsPool/Key V_0,
             class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.RenderTarget2D> V_1,
             class [Engine]Engine.Graphics.RenderTarget2D V_2,
             class [Engine]Engine.Graphics.RenderTarget2D V_3)
    IL_0000:  ldloca.s   V_0
    IL_0002:  ldarg.0
    IL_0003:  ldarg.1
    IL_0004:  call       instance void Game.RenderTargetsPool/Key::.ctor(valuetype [Engine]Engine.Point2,
                                                                         valuetype [Engine]Engine.Graphics.ColorFormat)
    IL_0009:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.RenderTargetsPool/Key,class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.RenderTarget2D>> Game.RenderTargetsPool::m_freeRenderTargets
    IL_000e:  ldloc.0
    IL_000f:  ldloca.s   V_1
    IL_0011:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.RenderTargetsPool/Key,class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.RenderTarget2D>>::TryGetValue(!0,
                                                                                                                                                                                                                                                                      !1&)
    IL_0016:  brtrue.s   IL_002a

    IL_0018:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.RenderTarget2D>::.ctor()
    IL_001d:  stloc.1
    IL_001e:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.RenderTargetsPool/Key,class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.RenderTarget2D>> Game.RenderTargetsPool::m_freeRenderTargets
    IL_0023:  ldloc.0
    IL_0024:  ldloc.1
    IL_0025:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.RenderTargetsPool/Key,class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.RenderTarget2D>>::Add(!0,
                                                                                                                                                                                                                                                              !1)
    IL_002a:  ldloc.1
    IL_002b:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.RenderTarget2D>::get_Count()
    IL_0030:  brtrue.s   IL_004d

    IL_0032:  ldarg.0
    IL_0033:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0038:  ldarg.0
    IL_0039:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_003e:  ldarg.1
    IL_003f:  ldc.i4.0
    IL_0040:  newobj     instance void [Engine]Engine.Graphics.RenderTarget2D::.ctor(int32,
                                                                                     int32,
                                                                                     valuetype [Engine]Engine.Graphics.ColorFormat,
                                                                                     valuetype [Engine]Engine.Graphics.DepthFormat)
    IL_0045:  stloc.3
    IL_0046:  ldloc.1
    IL_0047:  ldloc.3
    IL_0048:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.RenderTarget2D>::Add(!0)
    IL_004d:  ldloc.1
    IL_004e:  ldloc.1
    IL_004f:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.RenderTarget2D>::get_Count()
    IL_0054:  ldc.i4.1
    IL_0055:  sub
    IL_0056:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.RenderTarget2D>::get_Item(int32)
    IL_005b:  stloc.2
    IL_005c:  ldloc.1
    IL_005d:  ldloc.1
    IL_005e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.RenderTarget2D>::get_Count()
    IL_0063:  ldc.i4.1
    IL_0064:  sub
    IL_0065:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.RenderTarget2D>::RemoveAt(int32)
    IL_006a:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<class [Engine]Engine.Graphics.RenderTarget2D,valuetype Game.RenderTargetsPool/Key> Game.RenderTargetsPool::m_usedRenderTargets
    IL_006f:  ldloc.2
    IL_0070:  ldloc.0
    IL_0071:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class [Engine]Engine.Graphics.RenderTarget2D,valuetype Game.RenderTargetsPool/Key>::Add(!0,
                                                                                                                                                                                                 !1)
    IL_0076:  ldloc.2
    IL_0077:  ret
  } // end of method RenderTargetsPool::GetRenderTarget

  .method public hidebysig static void  ReturnRenderTarget(class [Engine]Engine.Graphics.RenderTarget2D renderTarget) cil managed
  {
    // 代码大小       76 (0x4c)
    .maxstack  5
    .locals init (valuetype Game.RenderTargetsPool/Key V_0)
    IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<class [Engine]Engine.Graphics.RenderTarget2D,valuetype Game.RenderTargetsPool/Key> Game.RenderTargetsPool::m_usedRenderTargets
    IL_0005:  ldarg.0
    IL_0006:  ldloca.s   V_0
    IL_0008:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class [Engine]Engine.Graphics.RenderTarget2D,valuetype Game.RenderTargetsPool/Key>::TryGetValue(!0,
                                                                                                                                                                                                         !1&)
    IL_000d:  brtrue.s   IL_002e

    IL_000f:  ldstr      "Render target {0} cannot be returned, because it w"
    + "as not obtained from RenderTargetsPool."
    IL_0014:  ldc.i4.1
    IL_0015:  newarr     [System.Runtime]System.Object
    IL_001a:  dup
    IL_001b:  ldc.i4.0
    IL_001c:  ldarg.0
    IL_001d:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0022:  stelem.ref
    IL_0023:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0028:  newobj     instance void [System.Runtime]System.Exception::.ctor(string)
    IL_002d:  throw

    IL_002e:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<class [Engine]Engine.Graphics.RenderTarget2D,valuetype Game.RenderTargetsPool/Key> Game.RenderTargetsPool::m_usedRenderTargets
    IL_0033:  ldarg.0
    IL_0034:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class [Engine]Engine.Graphics.RenderTarget2D,valuetype Game.RenderTargetsPool/Key>::Remove(!0)
    IL_0039:  pop
    IL_003a:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.RenderTargetsPool/Key,class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.RenderTarget2D>> Game.RenderTargetsPool::m_freeRenderTargets
    IL_003f:  ldloc.0
    IL_0040:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.RenderTargetsPool/Key,class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.RenderTarget2D>>::get_Item(!0)
    IL_0045:  ldarg.0
    IL_0046:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.RenderTarget2D>::Add(!0)
    IL_004b:  ret
  } // end of method RenderTargetsPool::ReturnRenderTarget

  .method public hidebysig static string 
          DumpStats() cil managed
  {
    // 代码大小       425 (0x1a9)
    .maxstack  7
    .locals init (class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.RenderTargetsPool/Key,bool> V_0,
             class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.RenderTargetsPool/Key,int32> V_1,
             class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.RenderTargetsPool/Key,int32> V_2,
             string V_3,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype Game.RenderTargetsPool/Key,class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.RenderTarget2D>> V_4,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype Game.RenderTargetsPool/Key,class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.RenderTarget2D>> V_5,
             int32 V_6,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<class [Engine]Engine.Graphics.RenderTarget2D,valuetype Game.RenderTargetsPool/Key> V_7,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class [Engine]Engine.Graphics.RenderTarget2D,valuetype Game.RenderTargetsPool/Key> V_8,
             int32 V_9,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype Game.RenderTargetsPool/Key,bool> V_10,
             valuetype Game.RenderTargetsPool/Key V_11,
             int32 V_12,
             int32 V_13)
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.RenderTargetsPool/Key,bool>::.ctor()
    IL_0005:  stloc.0
    IL_0006:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.RenderTargetsPool/Key,int32>::.ctor()
    IL_000b:  stloc.1
    IL_000c:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.RenderTargetsPool/Key,class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.RenderTarget2D>> Game.RenderTargetsPool::m_freeRenderTargets
    IL_0011:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.RenderTargetsPool/Key,class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.RenderTarget2D>>::GetEnumerator()
    IL_0016:  stloc.s    V_4
    .try
    {
      IL_0018:  br.s       IL_0060

      IL_001a:  ldloca.s   V_4
      IL_001c:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype Game.RenderTargetsPool/Key,class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.RenderTarget2D>>::get_Current()
      IL_0021:  stloc.s    V_5
      IL_0023:  ldc.i4.0
      IL_0024:  stloc.s    V_6
      IL_0026:  ldloc.1
      IL_0027:  ldloca.s   V_5
      IL_0029:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype Game.RenderTargetsPool/Key,class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.RenderTarget2D>>::get_Key()
      IL_002e:  ldloca.s   V_6
      IL_0030:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.RenderTargetsPool/Key,int32>::TryGetValue(!0,
                                                                                                                                                                    !1&)
      IL_0035:  pop
      IL_0036:  ldloc.1
      IL_0037:  ldloca.s   V_5
      IL_0039:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype Game.RenderTargetsPool/Key,class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.RenderTarget2D>>::get_Key()
      IL_003e:  ldloc.s    V_6
      IL_0040:  ldloca.s   V_5
      IL_0042:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype Game.RenderTargetsPool/Key,class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.RenderTarget2D>>::get_Value()
      IL_0047:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.RenderTarget2D>::get_Count()
      IL_004c:  add
      IL_004d:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.RenderTargetsPool/Key,int32>::set_Item(!0,
                                                                                                                                                                 !1)
      IL_0052:  ldloc.0
      IL_0053:  ldloca.s   V_5
      IL_0055:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype Game.RenderTargetsPool/Key,class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.RenderTarget2D>>::get_Key()
      IL_005a:  ldc.i4.1
      IL_005b:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.RenderTargetsPool/Key,bool>::Add(!0,
                                                                                                                                                           !1)
      IL_0060:  ldloca.s   V_4
      IL_0062:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype Game.RenderTargetsPool/Key,class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.RenderTarget2D>>::MoveNext()
      IL_0067:  brtrue.s   IL_001a

      IL_0069:  leave.s    IL_0079

    }  // end .try
    finally
    {
      IL_006b:  ldloca.s   V_4
      IL_006d:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype Game.RenderTargetsPool/Key,class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.RenderTarget2D>>
      IL_0073:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0078:  endfinally
    }  // end handler
    IL_0079:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.RenderTargetsPool/Key,int32>::.ctor()
    IL_007e:  stloc.2
    IL_007f:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<class [Engine]Engine.Graphics.RenderTarget2D,valuetype Game.RenderTargetsPool/Key> Game.RenderTargetsPool::m_usedRenderTargets
    IL_0084:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<class [Engine]Engine.Graphics.RenderTarget2D,valuetype Game.RenderTargetsPool/Key>::GetEnumerator()
    IL_0089:  stloc.s    V_7
    .try
    {
      IL_008b:  br.s       IL_00c8

      IL_008d:  ldloca.s   V_7
      IL_008f:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<class [Engine]Engine.Graphics.RenderTarget2D,valuetype Game.RenderTargetsPool/Key>::get_Current()
      IL_0094:  stloc.s    V_8
      IL_0096:  ldc.i4.0
      IL_0097:  stloc.s    V_9
      IL_0099:  ldloc.2
      IL_009a:  ldloca.s   V_8
      IL_009c:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class [Engine]Engine.Graphics.RenderTarget2D,valuetype Game.RenderTargetsPool/Key>::get_Value()
      IL_00a1:  ldloca.s   V_9
      IL_00a3:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.RenderTargetsPool/Key,int32>::TryGetValue(!0,
                                                                                                                                                                    !1&)
      IL_00a8:  pop
      IL_00a9:  ldloc.2
      IL_00aa:  ldloca.s   V_8
      IL_00ac:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class [Engine]Engine.Graphics.RenderTarget2D,valuetype Game.RenderTargetsPool/Key>::get_Value()
      IL_00b1:  ldloc.s    V_9
      IL_00b3:  ldc.i4.1
      IL_00b4:  add
      IL_00b5:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.RenderTargetsPool/Key,int32>::set_Item(!0,
                                                                                                                                                                 !1)
      IL_00ba:  ldloc.0
      IL_00bb:  ldloca.s   V_8
      IL_00bd:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<class [Engine]Engine.Graphics.RenderTarget2D,valuetype Game.RenderTargetsPool/Key>::get_Value()
      IL_00c2:  ldc.i4.1
      IL_00c3:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.RenderTargetsPool/Key,bool>::Add(!0,
                                                                                                                                                           !1)
      IL_00c8:  ldloca.s   V_7
      IL_00ca:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<class [Engine]Engine.Graphics.RenderTarget2D,valuetype Game.RenderTargetsPool/Key>::MoveNext()
      IL_00cf:  brtrue.s   IL_008d

      IL_00d1:  leave.s    IL_00e1

    }  // end .try
    finally
    {
      IL_00d3:  ldloca.s   V_7
      IL_00d5:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<class [Engine]Engine.Graphics.RenderTarget2D,valuetype Game.RenderTargetsPool/Key>
      IL_00db:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00e0:  endfinally
    }  // end handler
    IL_00e1:  ldsfld     string [System.Runtime]System.String::Empty
    IL_00e6:  stloc.3
    IL_00e7:  ldloc.0
    IL_00e8:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.RenderTargetsPool/Key,bool>::get_Keys()
    IL_00ed:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<valuetype Game.RenderTargetsPool/Key,bool>::GetEnumerator()
    IL_00f2:  stloc.s    V_10
    .try
    {
      IL_00f4:  br         IL_018b

      IL_00f9:  ldloca.s   V_10
      IL_00fb:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype Game.RenderTargetsPool/Key,bool>::get_Current()
      IL_0100:  stloc.s    V_11
      IL_0102:  ldc.i4.0
      IL_0103:  stloc.s    V_12
      IL_0105:  ldc.i4.0
      IL_0106:  stloc.s    V_13
      IL_0108:  ldloc.1
      IL_0109:  ldloc.s    V_11
      IL_010b:  ldloca.s   V_12
      IL_010d:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.RenderTargetsPool/Key,int32>::TryGetValue(!0,
                                                                                                                                                                    !1&)
      IL_0112:  pop
      IL_0113:  ldloc.2
      IL_0114:  ldloc.s    V_11
      IL_0116:  ldloca.s   V_13
      IL_0118:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.RenderTargetsPool/Key,int32>::TryGetValue(!0,
                                                                                                                                                                    !1&)
      IL_011d:  pop
      IL_011e:  ldloc.3
      IL_011f:  ldstr      "{0}/{1} (free/total), type: {2}x{3}, {4}{5}"
      IL_0124:  ldc.i4.6
      IL_0125:  newarr     [System.Runtime]System.Object
      IL_012a:  dup
      IL_012b:  ldc.i4.0
      IL_012c:  ldloc.s    V_12
      IL_012e:  box        [System.Runtime]System.Int32
      IL_0133:  stelem.ref
      IL_0134:  dup
      IL_0135:  ldc.i4.1
      IL_0136:  ldloc.s    V_12
      IL_0138:  ldloc.s    V_13
      IL_013a:  add
      IL_013b:  box        [System.Runtime]System.Int32
      IL_0140:  stelem.ref
      IL_0141:  dup
      IL_0142:  ldc.i4.2
      IL_0143:  ldloc.s    V_11
      IL_0145:  ldfld      valuetype [Engine]Engine.Point2 Game.RenderTargetsPool/Key::Size
      IL_014a:  ldfld      int32 [Engine]Engine.Point2::X
      IL_014f:  box        [System.Runtime]System.Int32
      IL_0154:  stelem.ref
      IL_0155:  dup
      IL_0156:  ldc.i4.3
      IL_0157:  ldloc.s    V_11
      IL_0159:  ldfld      valuetype [Engine]Engine.Point2 Game.RenderTargetsPool/Key::Size
      IL_015e:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_0163:  box        [System.Runtime]System.Int32
      IL_0168:  stelem.ref
      IL_0169:  dup
      IL_016a:  ldc.i4.4
      IL_016b:  ldloc.s    V_11
      IL_016d:  ldfld      valuetype [Engine]Engine.Graphics.ColorFormat Game.RenderTargetsPool/Key::Format
      IL_0172:  box        [Engine]Engine.Graphics.ColorFormat
      IL_0177:  stelem.ref
      IL_0178:  dup
      IL_0179:  ldc.i4.5
      IL_017a:  call       string [System.Runtime.Extensions]System.Environment::get_NewLine()
      IL_017f:  stelem.ref
      IL_0180:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_0185:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string)
      IL_018a:  stloc.3
      IL_018b:  ldloca.s   V_10
      IL_018d:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype Game.RenderTargetsPool/Key,bool>::MoveNext()
      IL_0192:  brtrue     IL_00f9

      IL_0197:  leave.s    IL_01a7

    }  // end .try
    finally
    {
      IL_0199:  ldloca.s   V_10
      IL_019b:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype Game.RenderTargetsPool/Key,bool>
      IL_01a1:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01a6:  endfinally
    }  // end handler
    IL_01a7:  ldloc.3
    IL_01a8:  ret
  } // end of method RenderTargetsPool::DumpStats

  .method public hidebysig static valuetype Game.RenderTargetsPool/RenderTargetState 
          GetRenderTargetState(class [Engine]Engine.Graphics.RenderTarget2D renderTarget) cil managed
  {
    // 代码大小       81 (0x51)
    .maxstack  2
    .locals init (valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype Game.RenderTargetsPool/Key,class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.RenderTarget2D>> V_0,
             valuetype Game.RenderTargetsPool/RenderTargetState V_1)
    IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<class [Engine]Engine.Graphics.RenderTarget2D,valuetype Game.RenderTargetsPool/Key> Game.RenderTargetsPool::m_usedRenderTargets
    IL_0005:  ldarg.0
    IL_0006:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class [Engine]Engine.Graphics.RenderTarget2D,valuetype Game.RenderTargetsPool/Key>::ContainsKey(!0)
    IL_000b:  brfalse.s  IL_000f

    IL_000d:  ldc.i4.2
    IL_000e:  ret

    IL_000f:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.RenderTargetsPool/Key,class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.RenderTarget2D>> Game.RenderTargetsPool::m_freeRenderTargets
    IL_0014:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.RenderTargetsPool/Key,class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.RenderTarget2D>>::get_Values()
    IL_0019:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<valuetype Game.RenderTargetsPool/Key,class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.RenderTarget2D>>::GetEnumerator()
    IL_001e:  stloc.0
    .try
    {
      IL_001f:  br.s       IL_0034

      IL_0021:  ldloca.s   V_0
      IL_0023:  call       instance !1 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype Game.RenderTargetsPool/Key,class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.RenderTarget2D>>::get_Current()
      IL_0028:  ldarg.0
      IL_0029:  callvirt   instance bool class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.RenderTarget2D>::Contains(!0)
      IL_002e:  brfalse.s  IL_0034

      IL_0030:  ldc.i4.1
      IL_0031:  stloc.1
      IL_0032:  leave.s    IL_004f

      IL_0034:  ldloca.s   V_0
      IL_0036:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype Game.RenderTargetsPool/Key,class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.RenderTarget2D>>::MoveNext()
      IL_003b:  brtrue.s   IL_0021

      IL_003d:  leave.s    IL_004d

    }  // end .try
    finally
    {
      IL_003f:  ldloca.s   V_0
      IL_0041:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype Game.RenderTargetsPool/Key,class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.RenderTarget2D>>
      IL_0047:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_004c:  endfinally
    }  // end handler
    IL_004d:  ldc.i4.0
    IL_004e:  ret

    IL_004f:  ldloc.1
    IL_0050:  ret
  } // end of method RenderTargetsPool::GetRenderTargetState

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       35 (0x23)
    .maxstack  1
    .locals init (valuetype Game.RenderTargetsPool/Key/EqualityComparer V_0)
    IL_0000:  ldloca.s   V_0
    IL_0002:  initobj    Game.RenderTargetsPool/Key/EqualityComparer
    IL_0008:  ldloc.0
    IL_0009:  box        Game.RenderTargetsPool/Key/EqualityComparer
    IL_000e:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.RenderTargetsPool/Key,class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.RenderTarget2D>>::.ctor(class [System.Runtime]System.Collections.Generic.IEqualityComparer`1<!0>)
    IL_0013:  stsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.RenderTargetsPool/Key,class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.RenderTarget2D>> Game.RenderTargetsPool::m_freeRenderTargets
    IL_0018:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class [Engine]Engine.Graphics.RenderTarget2D,valuetype Game.RenderTargetsPool/Key>::.ctor()
    IL_001d:  stsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<class [Engine]Engine.Graphics.RenderTarget2D,valuetype Game.RenderTargetsPool/Key> Game.RenderTargetsPool::m_usedRenderTargets
    IL_0022:  ret
  } // end of method RenderTargetsPool::.cctor

} // end of class Game.RenderTargetsPool