.class public auto ansi beforefieldinit Game.VertexBufferCache
       extends [System.Runtime]System.Object
       implements [System.Runtime]System.IDisposable
{
  .field private static literal int32 MaxCachedBytes = int32(0x00000000)
  .field private class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.VertexBuffer> m_usedVertexBuffers
  .field private class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.VertexBuffer> m_freeVertexBuffers
  .field private class [Engine]Engine.Graphics.VertexDeclaration m_vertexDeclaration
  .field private int64 '<UsedVertexBuffersBytes>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private int64 '<FreeVertexBuffersBytes>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private int64 '<VertexBufferAllocations>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [Engine]Engine.Graphics.VertexDeclaration vertexDeclaration) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.VertexBuffer>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.VertexBuffer> Game.VertexBufferCache::m_usedVertexBuffers
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.VertexBuffer>::.ctor()
    IL_0011:  stfld      class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.VertexBuffer> Game.VertexBufferCache::m_freeVertexBuffers
    IL_0016:  ldarg.0
    IL_0017:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_001c:  ldarg.0
    IL_001d:  ldarg.1
    IL_001e:  stfld      class [Engine]Engine.Graphics.VertexDeclaration Game.VertexBufferCache::m_vertexDeclaration
    IL_0023:  ret
  } // end of method VertexBufferCache::.ctor

  .method public hidebysig specialname instance int64 
          get_UsedVertexBuffersBytes() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int64 Game.VertexBufferCache::'<UsedVertexBuffersBytes>k__BackingField'
    IL_0006:  ret
  } // end of method VertexBufferCache::get_UsedVertexBuffersBytes

  .method private hidebysig specialname instance void 
          set_UsedVertexBuffersBytes(int64 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int64 Game.VertexBufferCache::'<UsedVertexBuffersBytes>k__BackingField'
    IL_0007:  ret
  } // end of method VertexBufferCache::set_UsedVertexBuffersBytes

  .method public hidebysig specialname instance int64 
          get_FreeVertexBuffersBytes() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int64 Game.VertexBufferCache::'<FreeVertexBuffersBytes>k__BackingField'
    IL_0006:  ret
  } // end of method VertexBufferCache::get_FreeVertexBuffersBytes

  .method private hidebysig specialname instance void 
          set_FreeVertexBuffersBytes(int64 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int64 Game.VertexBufferCache::'<FreeVertexBuffersBytes>k__BackingField'
    IL_0007:  ret
  } // end of method VertexBufferCache::set_FreeVertexBuffersBytes

  .method public hidebysig specialname instance int64 
          get_VertexBufferAllocations() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int64 Game.VertexBufferCache::'<VertexBufferAllocations>k__BackingField'
    IL_0006:  ret
  } // end of method VertexBufferCache::get_VertexBufferAllocations

  .method private hidebysig specialname instance void 
          set_VertexBufferAllocations(int64 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int64 Game.VertexBufferCache::'<VertexBufferAllocations>k__BackingField'
    IL_0007:  ret
  } // end of method VertexBufferCache::set_VertexBufferAllocations

  .method public hidebysig instance class [Engine]Engine.Graphics.VertexBuffer 
          GetVertexBuffer(int32 verticesCount) cil managed
  {
    // 代码大小       196 (0xc4)
    .maxstack  4
    .locals init (class [Engine]Engine.Graphics.VertexBuffer V_0,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Engine]Engine.Graphics.VertexBuffer> V_1,
             class [Engine]Engine.Graphics.VertexBuffer V_2,
             int64 V_3)
    IL_0000:  ldnull
    IL_0001:  stloc.0
    IL_0002:  ldarg.0
    IL_0003:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.VertexBuffer> Game.VertexBufferCache::m_freeVertexBuffers
    IL_0008:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.VertexBuffer>::GetEnumerator()
    IL_000d:  stloc.1
    .try
    {
      IL_000e:  br.s       IL_0045

      IL_0010:  ldloca.s   V_1
      IL_0012:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Engine]Engine.Graphics.VertexBuffer>::get_Current()
      IL_0017:  stloc.2
      IL_0018:  ldloc.2
      IL_0019:  callvirt   instance int32 [Engine]Engine.Graphics.VertexBuffer::get_VerticesCount()
      IL_001e:  ldarg.1
      IL_001f:  blt.s      IL_0045

      IL_0021:  ldloc.2
      IL_0022:  callvirt   instance int32 [Engine]Engine.Graphics.VertexBuffer::get_VerticesCount()
      IL_0027:  conv.r4
      IL_0028:  ldarg.1
      IL_0029:  conv.r4
      IL_002a:  div
      IL_002b:  ldc.r4     1.1
      IL_0030:  bge.un.s   IL_0045

      IL_0032:  ldloc.0
      IL_0033:  brfalse.s  IL_0043

      IL_0035:  ldloc.2
      IL_0036:  callvirt   instance int32 [Engine]Engine.Graphics.VertexBuffer::get_VerticesCount()
      IL_003b:  ldloc.0
      IL_003c:  callvirt   instance int32 [Engine]Engine.Graphics.VertexBuffer::get_VerticesCount()
      IL_0041:  bge.s      IL_0045

      IL_0043:  ldloc.2
      IL_0044:  stloc.0
      IL_0045:  ldloca.s   V_1
      IL_0047:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Engine]Engine.Graphics.VertexBuffer>::MoveNext()
      IL_004c:  brtrue.s   IL_0010

      IL_004e:  leave.s    IL_005e

    }  // end .try
    finally
    {
      IL_0050:  ldloca.s   V_1
      IL_0052:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Engine]Engine.Graphics.VertexBuffer>
      IL_0058:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_005d:  endfinally
    }  // end handler
    IL_005e:  ldloc.0
    IL_005f:  brtrue.s   IL_0081

    IL_0061:  ldarg.0
    IL_0062:  ldfld      class [Engine]Engine.Graphics.VertexDeclaration Game.VertexBufferCache::m_vertexDeclaration
    IL_0067:  ldarg.1
    IL_0068:  newobj     instance void [Engine]Engine.Graphics.VertexBuffer::.ctor(class [Engine]Engine.Graphics.VertexDeclaration,
                                                                                   int32)
    IL_006d:  stloc.0
    IL_006e:  ldarg.0
    IL_006f:  call       instance int64 Game.VertexBufferCache::get_VertexBufferAllocations()
    IL_0074:  ldc.i4.1
    IL_0075:  conv.i8
    IL_0076:  add
    IL_0077:  stloc.3
    IL_0078:  ldarg.0
    IL_0079:  ldloc.3
    IL_007a:  call       instance void Game.VertexBufferCache::set_VertexBufferAllocations(int64)
    IL_007f:  br.s       IL_00a2

    IL_0081:  ldarg.0
    IL_0082:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.VertexBuffer> Game.VertexBufferCache::m_freeVertexBuffers
    IL_0087:  ldloc.0
    IL_0088:  callvirt   instance bool class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.VertexBuffer>::Remove(!0)
    IL_008d:  pop
    IL_008e:  ldarg.0
    IL_008f:  ldarg.0
    IL_0090:  call       instance int64 Game.VertexBufferCache::get_FreeVertexBuffersBytes()
    IL_0095:  ldarg.0
    IL_0096:  ldloc.0
    IL_0097:  call       instance int64 Game.VertexBufferCache::CalculateBufferSize(class [Engine]Engine.Graphics.VertexBuffer)
    IL_009c:  sub
    IL_009d:  call       instance void Game.VertexBufferCache::set_FreeVertexBuffersBytes(int64)
    IL_00a2:  ldarg.0
    IL_00a3:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.VertexBuffer> Game.VertexBufferCache::m_usedVertexBuffers
    IL_00a8:  ldloc.0
    IL_00a9:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.VertexBuffer>::Add(!0)
    IL_00ae:  ldarg.0
    IL_00af:  ldarg.0
    IL_00b0:  call       instance int64 Game.VertexBufferCache::get_UsedVertexBuffersBytes()
    IL_00b5:  ldarg.0
    IL_00b6:  ldloc.0
    IL_00b7:  call       instance int64 Game.VertexBufferCache::CalculateBufferSize(class [Engine]Engine.Graphics.VertexBuffer)
    IL_00bc:  add
    IL_00bd:  call       instance void Game.VertexBufferCache::set_UsedVertexBuffersBytes(int64)
    IL_00c2:  ldloc.0
    IL_00c3:  ret
  } // end of method VertexBufferCache::GetVertexBuffer

  .method public hidebysig instance void 
          ReturnVertexBuffer(class [Engine]Engine.Graphics.VertexBuffer vertexBuffer) cil managed
  {
    // 代码大小       171 (0xab)
    .maxstack  4
    .locals init (valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Engine]Engine.Graphics.VertexBuffer> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.VertexBuffer> Game.VertexBufferCache::m_usedVertexBuffers
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance bool class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.VertexBuffer>::Contains(!0)
    IL_000c:  brtrue.s   IL_0019

    IL_000e:  ldstr      "Vertex buffer not used."
    IL_0013:  newobj     instance void [System.Runtime]System.Exception::.ctor(string)
    IL_0018:  throw

    IL_0019:  ldarg.0
    IL_001a:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.VertexBuffer> Game.VertexBufferCache::m_usedVertexBuffers
    IL_001f:  ldarg.1
    IL_0020:  callvirt   instance bool class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.VertexBuffer>::Remove(!0)
    IL_0025:  pop
    IL_0026:  ldarg.0
    IL_0027:  ldarg.0
    IL_0028:  call       instance int64 Game.VertexBufferCache::get_UsedVertexBuffersBytes()
    IL_002d:  ldarg.0
    IL_002e:  ldarg.1
    IL_002f:  call       instance int64 Game.VertexBufferCache::CalculateBufferSize(class [Engine]Engine.Graphics.VertexBuffer)
    IL_0034:  sub
    IL_0035:  call       instance void Game.VertexBufferCache::set_UsedVertexBuffersBytes(int64)
    IL_003a:  ldarg.0
    IL_003b:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.VertexBuffer> Game.VertexBufferCache::m_freeVertexBuffers
    IL_0040:  ldarg.1
    IL_0041:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.VertexBuffer>::Add(!0)
    IL_0046:  ldarg.0
    IL_0047:  ldarg.0
    IL_0048:  call       instance int64 Game.VertexBufferCache::get_FreeVertexBuffersBytes()
    IL_004d:  ldarg.0
    IL_004e:  ldarg.1
    IL_004f:  call       instance int64 Game.VertexBufferCache::CalculateBufferSize(class [Engine]Engine.Graphics.VertexBuffer)
    IL_0054:  add
    IL_0055:  call       instance void Game.VertexBufferCache::set_FreeVertexBuffersBytes(int64)
    IL_005a:  ldarg.0
    IL_005b:  call       instance int64 Game.VertexBufferCache::get_FreeVertexBuffersBytes()
    IL_0060:  ldc.i4.0
    IL_0061:  conv.i8
    IL_0062:  ble.s      IL_00aa

    IL_0064:  ldarg.0
    IL_0065:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.VertexBuffer> Game.VertexBufferCache::m_freeVertexBuffers
    IL_006a:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.VertexBuffer>::GetEnumerator()
    IL_006f:  stloc.0
    .try
    {
      IL_0070:  br.s       IL_007e

      IL_0072:  ldloca.s   V_0
      IL_0074:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Engine]Engine.Graphics.VertexBuffer>::get_Current()
      IL_0079:  callvirt   instance void [Engine]Engine.Graphics.GraphicsResource::Dispose()
      IL_007e:  ldloca.s   V_0
      IL_0080:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Engine]Engine.Graphics.VertexBuffer>::MoveNext()
      IL_0085:  brtrue.s   IL_0072

      IL_0087:  leave.s    IL_0097

    }  // end .try
    finally
    {
      IL_0089:  ldloca.s   V_0
      IL_008b:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Engine]Engine.Graphics.VertexBuffer>
      IL_0091:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0096:  endfinally
    }  // end handler
    IL_0097:  ldarg.0
    IL_0098:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.VertexBuffer> Game.VertexBufferCache::m_freeVertexBuffers
    IL_009d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.VertexBuffer>::Clear()
    IL_00a2:  ldarg.0
    IL_00a3:  ldc.i4.0
    IL_00a4:  conv.i8
    IL_00a5:  call       instance void Game.VertexBufferCache::set_FreeVertexBuffersBytes(int64)
    IL_00aa:  ret
  } // end of method VertexBufferCache::ReturnVertexBuffer

  .method public hidebysig instance void 
          Clear() cil managed
  {
    // 代码大小       141 (0x8d)
    .maxstack  2
    .locals init (valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Engine]Engine.Graphics.VertexBuffer> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.VertexBuffer> Game.VertexBufferCache::m_usedVertexBuffers
    IL_0006:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.VertexBuffer>::GetEnumerator()
    IL_000b:  stloc.0
    .try
    {
      IL_000c:  br.s       IL_001a

      IL_000e:  ldloca.s   V_0
      IL_0010:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Engine]Engine.Graphics.VertexBuffer>::get_Current()
      IL_0015:  callvirt   instance void [Engine]Engine.Graphics.GraphicsResource::Dispose()
      IL_001a:  ldloca.s   V_0
      IL_001c:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Engine]Engine.Graphics.VertexBuffer>::MoveNext()
      IL_0021:  brtrue.s   IL_000e

      IL_0023:  leave.s    IL_0033

    }  // end .try
    finally
    {
      IL_0025:  ldloca.s   V_0
      IL_0027:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Engine]Engine.Graphics.VertexBuffer>
      IL_002d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0032:  endfinally
    }  // end handler
    IL_0033:  ldarg.0
    IL_0034:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.VertexBuffer> Game.VertexBufferCache::m_freeVertexBuffers
    IL_0039:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.VertexBuffer>::GetEnumerator()
    IL_003e:  stloc.0
    .try
    {
      IL_003f:  br.s       IL_004d

      IL_0041:  ldloca.s   V_0
      IL_0043:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Engine]Engine.Graphics.VertexBuffer>::get_Current()
      IL_0048:  callvirt   instance void [Engine]Engine.Graphics.GraphicsResource::Dispose()
      IL_004d:  ldloca.s   V_0
      IL_004f:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Engine]Engine.Graphics.VertexBuffer>::MoveNext()
      IL_0054:  brtrue.s   IL_0041

      IL_0056:  leave.s    IL_0066

    }  // end .try
    finally
    {
      IL_0058:  ldloca.s   V_0
      IL_005a:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Engine]Engine.Graphics.VertexBuffer>
      IL_0060:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0065:  endfinally
    }  // end handler
    IL_0066:  ldarg.0
    IL_0067:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.VertexBuffer> Game.VertexBufferCache::m_freeVertexBuffers
    IL_006c:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.VertexBuffer>::Clear()
    IL_0071:  ldarg.0
    IL_0072:  ldc.i4.0
    IL_0073:  conv.i8
    IL_0074:  call       instance void Game.VertexBufferCache::set_FreeVertexBuffersBytes(int64)
    IL_0079:  ldarg.0
    IL_007a:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.VertexBuffer> Game.VertexBufferCache::m_usedVertexBuffers
    IL_007f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.VertexBuffer>::Clear()
    IL_0084:  ldarg.0
    IL_0085:  ldc.i4.0
    IL_0086:  conv.i8
    IL_0087:  call       instance void Game.VertexBufferCache::set_UsedVertexBuffersBytes(int64)
    IL_008c:  ret
  } // end of method VertexBufferCache::Clear

  .method public hidebysig newslot virtual final 
          instance void  Dispose() cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.VertexBufferCache::Clear()
    IL_0006:  ldarg.0
    IL_0007:  ldnull
    IL_0008:  stfld      class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.VertexBuffer> Game.VertexBufferCache::m_freeVertexBuffers
    IL_000d:  ldarg.0
    IL_000e:  ldnull
    IL_000f:  stfld      class [System.Collections]System.Collections.Generic.List`1<class [Engine]Engine.Graphics.VertexBuffer> Game.VertexBufferCache::m_usedVertexBuffers
    IL_0014:  ret
  } // end of method VertexBufferCache::Dispose

  .method private hidebysig instance int64 
          CalculateBufferSize(class [Engine]Engine.Graphics.VertexBuffer vertexBuffer) cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance int32 [Engine]Engine.Graphics.VertexBuffer::get_VerticesCount()
    IL_0006:  conv.i8
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance class [Engine]Engine.Graphics.VertexDeclaration [Engine]Engine.Graphics.VertexBuffer::get_VertexDeclaration()
    IL_000d:  callvirt   instance int32 [Engine]Engine.Graphics.VertexDeclaration::get_VertexStride()
    IL_0012:  conv.i8
    IL_0013:  mul
    IL_0014:  ret
  } // end of method VertexBufferCache::CalculateBufferSize

  .property instance int64 UsedVertexBuffersBytes()
  {
    .get instance int64 Game.VertexBufferCache::get_UsedVertexBuffersBytes()
    .set instance void Game.VertexBufferCache::set_UsedVertexBuffersBytes(int64)
  } // end of property VertexBufferCache::UsedVertexBuffersBytes
  .property instance int64 FreeVertexBuffersBytes()
  {
    .get instance int64 Game.VertexBufferCache::get_FreeVertexBuffersBytes()
    .set instance void Game.VertexBufferCache::set_FreeVertexBuffersBytes(int64)
  } // end of property VertexBufferCache::FreeVertexBuffersBytes
  .property instance int64 VertexBufferAllocations()
  {
    .get instance int64 Game.VertexBufferCache::get_VertexBufferAllocations()
    .set instance void Game.VertexBufferCache::set_VertexBufferAllocations(int64)
  } // end of property VertexBufferCache::VertexBufferAllocations
} // end of class Game.VertexBufferCache