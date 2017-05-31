.class public auto ansi beforefieldinit Game.IndexBufferCache
       extends [System.Runtime]System.Object
       implements [System.Runtime]System.IDisposable
{
  .field private static literal int32 MaxCachedBytes = int32(0x00000000)
  .field private class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.IndexBuffer> m_usedIndexBuffers
  .field private class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.IndexBuffer> m_freeIndexBuffers
  .field private int64 '<UsedIndexBuffersBytes>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private int64 '<FreeIndexBuffersBytes>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private int64 '<IndexBufferAllocations>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance int64 
          get_UsedIndexBuffersBytes() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int64 Game.IndexBufferCache::'<UsedIndexBuffersBytes>k__BackingField'
    IL_0006:  ret
  } // end of method IndexBufferCache::get_UsedIndexBuffersBytes

  .method private hidebysig specialname instance void 
          set_UsedIndexBuffersBytes(int64 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int64 Game.IndexBufferCache::'<UsedIndexBuffersBytes>k__BackingField'
    IL_0007:  ret
  } // end of method IndexBufferCache::set_UsedIndexBuffersBytes

  .method public hidebysig specialname instance int64 
          get_FreeIndexBuffersBytes() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int64 Game.IndexBufferCache::'<FreeIndexBuffersBytes>k__BackingField'
    IL_0006:  ret
  } // end of method IndexBufferCache::get_FreeIndexBuffersBytes

  .method private hidebysig specialname instance void 
          set_FreeIndexBuffersBytes(int64 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int64 Game.IndexBufferCache::'<FreeIndexBuffersBytes>k__BackingField'
    IL_0007:  ret
  } // end of method IndexBufferCache::set_FreeIndexBuffersBytes

  .method public hidebysig specialname instance int64 
          get_IndexBufferAllocations() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int64 Game.IndexBufferCache::'<IndexBufferAllocations>k__BackingField'
    IL_0006:  ret
  } // end of method IndexBufferCache::get_IndexBufferAllocations

  .method private hidebysig specialname instance void 
          set_IndexBufferAllocations(int64 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int64 Game.IndexBufferCache::'<IndexBufferAllocations>k__BackingField'
    IL_0007:  ret
  } // end of method IndexBufferCache::set_IndexBufferAllocations

  .method public hidebysig instance class [Engine]Engine.Graphics.IndexBuffer 
          GetIndexBuffer(int32 indicesCount) cil managed
  {
    // 代码大小       191 (0xbf)
    .maxstack  4
    .locals init (class [Engine]Engine.Graphics.IndexBuffer V_0,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Engine]Engine.Graphics.IndexBuffer> V_1,
             class [Engine]Engine.Graphics.IndexBuffer V_2,
             int64 V_3)
    IL_0000:  ldnull
    IL_0001:  stloc.0
    IL_0002:  ldarg.0
    IL_0003:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.IndexBuffer> Game.IndexBufferCache::m_freeIndexBuffers
    IL_0008:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.IndexBuffer>::GetEnumerator()
    IL_000d:  stloc.1
    .try
    {
      IL_000e:  br.s       IL_0045

      IL_0010:  ldloca.s   V_1
      IL_0012:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Engine]Engine.Graphics.IndexBuffer>::get_Current()
      IL_0017:  stloc.2
      IL_0018:  ldloc.2
      IL_0019:  callvirt   instance int32 [Engine]Engine.Graphics.IndexBuffer::get_IndicesCount()
      IL_001e:  ldarg.1
      IL_001f:  blt.s      IL_0045

      IL_0021:  ldloc.2
      IL_0022:  callvirt   instance int32 [Engine]Engine.Graphics.IndexBuffer::get_IndicesCount()
      IL_0027:  conv.r4
      IL_0028:  ldarg.1
      IL_0029:  conv.r4
      IL_002a:  div
      IL_002b:  ldc.r4     1.1
      IL_0030:  bge.un.s   IL_0045

      IL_0032:  ldloc.0
      IL_0033:  brfalse.s  IL_0043

      IL_0035:  ldloc.2
      IL_0036:  callvirt   instance int32 [Engine]Engine.Graphics.IndexBuffer::get_IndicesCount()
      IL_003b:  ldloc.0
      IL_003c:  callvirt   instance int32 [Engine]Engine.Graphics.IndexBuffer::get_IndicesCount()
      IL_0041:  bge.s      IL_0045

      IL_0043:  ldloc.2
      IL_0044:  stloc.0
      IL_0045:  ldloca.s   V_1
      IL_0047:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Engine]Engine.Graphics.IndexBuffer>::MoveNext()
      IL_004c:  brtrue.s   IL_0010

      IL_004e:  leave.s    IL_005e

    }  // end .try
    finally
    {
      IL_0050:  ldloca.s   V_1
      IL_0052:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Engine]Engine.Graphics.IndexBuffer>
      IL_0058:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_005d:  endfinally
    }  // end handler
    IL_005e:  ldloc.0
    IL_005f:  brtrue.s   IL_007c

    IL_0061:  ldc.i4.0
    IL_0062:  ldarg.1
    IL_0063:  newobj     instance void [Engine]Engine.Graphics.IndexBuffer::.ctor(valuetype [Engine]Engine.Graphics.IndexFormat,
                                                                                  int32)
    IL_0068:  stloc.0
    IL_0069:  ldarg.0
    IL_006a:  call       instance int64 Game.IndexBufferCache::get_IndexBufferAllocations()
    IL_006f:  ldc.i4.1
    IL_0070:  conv.i8
    IL_0071:  add
    IL_0072:  stloc.3
    IL_0073:  ldarg.0
    IL_0074:  ldloc.3
    IL_0075:  call       instance void Game.IndexBufferCache::set_IndexBufferAllocations(int64)
    IL_007a:  br.s       IL_009d

    IL_007c:  ldarg.0
    IL_007d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.IndexBuffer> Game.IndexBufferCache::m_freeIndexBuffers
    IL_0082:  ldloc.0
    IL_0083:  callvirt   instance bool class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.IndexBuffer>::Remove(!0)
    IL_0088:  pop
    IL_0089:  ldarg.0
    IL_008a:  ldarg.0
    IL_008b:  call       instance int64 Game.IndexBufferCache::get_FreeIndexBuffersBytes()
    IL_0090:  ldarg.0
    IL_0091:  ldloc.0
    IL_0092:  call       instance int64 Game.IndexBufferCache::CalculateBufferSize(class [Engine]Engine.Graphics.IndexBuffer)
    IL_0097:  sub
    IL_0098:  call       instance void Game.IndexBufferCache::set_FreeIndexBuffersBytes(int64)
    IL_009d:  ldarg.0
    IL_009e:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.IndexBuffer> Game.IndexBufferCache::m_usedIndexBuffers
    IL_00a3:  ldloc.0
    IL_00a4:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.IndexBuffer>::Add(!0)
    IL_00a9:  ldarg.0
    IL_00aa:  ldarg.0
    IL_00ab:  call       instance int64 Game.IndexBufferCache::get_UsedIndexBuffersBytes()
    IL_00b0:  ldarg.0
    IL_00b1:  ldloc.0
    IL_00b2:  call       instance int64 Game.IndexBufferCache::CalculateBufferSize(class [Engine]Engine.Graphics.IndexBuffer)
    IL_00b7:  add
    IL_00b8:  call       instance void Game.IndexBufferCache::set_UsedIndexBuffersBytes(int64)
    IL_00bd:  ldloc.0
    IL_00be:  ret
  } // end of method IndexBufferCache::GetIndexBuffer

  .method public hidebysig instance void 
          ReturnIndexBuffer(class [Engine]Engine.Graphics.IndexBuffer indexBuffer) cil managed
  {
    // 代码大小       171 (0xab)
    .maxstack  4
    .locals init (valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Engine]Engine.Graphics.IndexBuffer> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.IndexBuffer> Game.IndexBufferCache::m_usedIndexBuffers
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance bool class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.IndexBuffer>::Contains(!0)
    IL_000c:  brtrue.s   IL_0019

    IL_000e:  ldstr      "Index buffer not used."
    IL_0013:  newobj     instance void [System.Runtime]System.Exception::.ctor(string)
    IL_0018:  throw

    IL_0019:  ldarg.0
    IL_001a:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.IndexBuffer> Game.IndexBufferCache::m_usedIndexBuffers
    IL_001f:  ldarg.1
    IL_0020:  callvirt   instance bool class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.IndexBuffer>::Remove(!0)
    IL_0025:  pop
    IL_0026:  ldarg.0
    IL_0027:  ldarg.0
    IL_0028:  call       instance int64 Game.IndexBufferCache::get_UsedIndexBuffersBytes()
    IL_002d:  ldarg.0
    IL_002e:  ldarg.1
    IL_002f:  call       instance int64 Game.IndexBufferCache::CalculateBufferSize(class [Engine]Engine.Graphics.IndexBuffer)
    IL_0034:  sub
    IL_0035:  call       instance void Game.IndexBufferCache::set_UsedIndexBuffersBytes(int64)
    IL_003a:  ldarg.0
    IL_003b:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.IndexBuffer> Game.IndexBufferCache::m_freeIndexBuffers
    IL_0040:  ldarg.1
    IL_0041:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.IndexBuffer>::Add(!0)
    IL_0046:  ldarg.0
    IL_0047:  ldarg.0
    IL_0048:  call       instance int64 Game.IndexBufferCache::get_FreeIndexBuffersBytes()
    IL_004d:  ldarg.0
    IL_004e:  ldarg.1
    IL_004f:  call       instance int64 Game.IndexBufferCache::CalculateBufferSize(class [Engine]Engine.Graphics.IndexBuffer)
    IL_0054:  add
    IL_0055:  call       instance void Game.IndexBufferCache::set_FreeIndexBuffersBytes(int64)
    IL_005a:  ldarg.0
    IL_005b:  call       instance int64 Game.IndexBufferCache::get_FreeIndexBuffersBytes()
    IL_0060:  ldc.i4.0
    IL_0061:  conv.i8
    IL_0062:  ble.s      IL_00aa

    IL_0064:  ldarg.0
    IL_0065:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.IndexBuffer> Game.IndexBufferCache::m_freeIndexBuffers
    IL_006a:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.IndexBuffer>::GetEnumerator()
    IL_006f:  stloc.0
    .try
    {
      IL_0070:  br.s       IL_007e

      IL_0072:  ldloca.s   V_0
      IL_0074:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Engine]Engine.Graphics.IndexBuffer>::get_Current()
      IL_0079:  callvirt   instance void [Engine]Engine.Graphics.GraphicsResource::Dispose()
      IL_007e:  ldloca.s   V_0
      IL_0080:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Engine]Engine.Graphics.IndexBuffer>::MoveNext()
      IL_0085:  brtrue.s   IL_0072

      IL_0087:  leave.s    IL_0097

    }  // end .try
    finally
    {
      IL_0089:  ldloca.s   V_0
      IL_008b:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Engine]Engine.Graphics.IndexBuffer>
      IL_0091:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0096:  endfinally
    }  // end handler
    IL_0097:  ldarg.0
    IL_0098:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.IndexBuffer> Game.IndexBufferCache::m_freeIndexBuffers
    IL_009d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.IndexBuffer>::Clear()
    IL_00a2:  ldarg.0
    IL_00a3:  ldc.i4.0
    IL_00a4:  conv.i8
    IL_00a5:  call       instance void Game.IndexBufferCache::set_FreeIndexBuffersBytes(int64)
    IL_00aa:  ret
  } // end of method IndexBufferCache::ReturnIndexBuffer

  .method public hidebysig instance void 
          Clear() cil managed
  {
    // 代码大小       141 (0x8d)
    .maxstack  2
    .locals init (valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Engine]Engine.Graphics.IndexBuffer> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.IndexBuffer> Game.IndexBufferCache::m_usedIndexBuffers
    IL_0006:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.IndexBuffer>::GetEnumerator()
    IL_000b:  stloc.0
    .try
    {
      IL_000c:  br.s       IL_001a

      IL_000e:  ldloca.s   V_0
      IL_0010:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Engine]Engine.Graphics.IndexBuffer>::get_Current()
      IL_0015:  callvirt   instance void [Engine]Engine.Graphics.GraphicsResource::Dispose()
      IL_001a:  ldloca.s   V_0
      IL_001c:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Engine]Engine.Graphics.IndexBuffer>::MoveNext()
      IL_0021:  brtrue.s   IL_000e

      IL_0023:  leave.s    IL_0033

    }  // end .try
    finally
    {
      IL_0025:  ldloca.s   V_0
      IL_0027:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Engine]Engine.Graphics.IndexBuffer>
      IL_002d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0032:  endfinally
    }  // end handler
    IL_0033:  ldarg.0
    IL_0034:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.IndexBuffer> Game.IndexBufferCache::m_freeIndexBuffers
    IL_0039:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.IndexBuffer>::GetEnumerator()
    IL_003e:  stloc.0
    .try
    {
      IL_003f:  br.s       IL_004d

      IL_0041:  ldloca.s   V_0
      IL_0043:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Engine]Engine.Graphics.IndexBuffer>::get_Current()
      IL_0048:  callvirt   instance void [Engine]Engine.Graphics.GraphicsResource::Dispose()
      IL_004d:  ldloca.s   V_0
      IL_004f:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Engine]Engine.Graphics.IndexBuffer>::MoveNext()
      IL_0054:  brtrue.s   IL_0041

      IL_0056:  leave.s    IL_0066

    }  // end .try
    finally
    {
      IL_0058:  ldloca.s   V_0
      IL_005a:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Engine]Engine.Graphics.IndexBuffer>
      IL_0060:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0065:  endfinally
    }  // end handler
    IL_0066:  ldarg.0
    IL_0067:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.IndexBuffer> Game.IndexBufferCache::m_freeIndexBuffers
    IL_006c:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.IndexBuffer>::Clear()
    IL_0071:  ldarg.0
    IL_0072:  ldc.i4.0
    IL_0073:  conv.i8
    IL_0074:  call       instance void Game.IndexBufferCache::set_FreeIndexBuffersBytes(int64)
    IL_0079:  ldarg.0
    IL_007a:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.IndexBuffer> Game.IndexBufferCache::m_usedIndexBuffers
    IL_007f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.IndexBuffer>::Clear()
    IL_0084:  ldarg.0
    IL_0085:  ldc.i4.0
    IL_0086:  conv.i8
    IL_0087:  call       instance void Game.IndexBufferCache::set_UsedIndexBuffersBytes(int64)
    IL_008c:  ret
  } // end of method IndexBufferCache::Clear

  .method public hidebysig newslot virtual final 
          instance void  Dispose() cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.IndexBufferCache::Clear()
    IL_0006:  ldarg.0
    IL_0007:  ldnull
    IL_0008:  stfld      class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.IndexBuffer> Game.IndexBufferCache::m_freeIndexBuffers
    IL_000d:  ldarg.0
    IL_000e:  ldnull
    IL_000f:  stfld      class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.IndexBuffer> Game.IndexBufferCache::m_usedIndexBuffers
    IL_0014:  ret
  } // end of method IndexBufferCache::Dispose

  .method private hidebysig instance int64 
          CalculateBufferSize(class [Engine]Engine.Graphics.IndexBuffer indexBuffer) cil managed
  {
    // 代码大小       10 (0xa)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance int32 [Engine]Engine.Graphics.IndexBuffer::get_IndicesCount()
    IL_0006:  ldc.i4.2
    IL_0007:  mul
    IL_0008:  conv.i8
    IL_0009:  ret
  } // end of method IndexBufferCache::CalculateBufferSize

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.IndexBuffer>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.IndexBuffer> Game.IndexBufferCache::m_usedIndexBuffers
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.IndexBuffer>::.ctor()
    IL_0011:  stfld      class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.IndexBuffer> Game.IndexBufferCache::m_freeIndexBuffers
    IL_0016:  ldarg.0
    IL_0017:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_001c:  ret
  } // end of method IndexBufferCache::.ctor

  .property instance int64 UsedIndexBuffersBytes()
  {
    .get instance int64 Game.IndexBufferCache::get_UsedIndexBuffersBytes()
    .set instance void Game.IndexBufferCache::set_UsedIndexBuffersBytes(int64)
  } // end of property IndexBufferCache::UsedIndexBuffersBytes
  .property instance int64 FreeIndexBuffersBytes()
  {
    .get instance int64 Game.IndexBufferCache::get_FreeIndexBuffersBytes()
    .set instance void Game.IndexBufferCache::set_FreeIndexBuffersBytes(int64)
  } // end of property IndexBufferCache::FreeIndexBuffersBytes
  .property instance int64 IndexBufferAllocations()
  {
    .get instance int64 Game.IndexBufferCache::get_IndexBufferAllocations()
    .set instance void Game.IndexBufferCache::set_IndexBufferAllocations(int64)
  } // end of property IndexBufferCache::IndexBufferAllocations
} // end of class Game.IndexBufferCache